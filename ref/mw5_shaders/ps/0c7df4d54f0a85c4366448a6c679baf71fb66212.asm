;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; SH_RED                   0   xyzw        4     NONE   float   xyzw
; SH_GREEN                 0   xyzw        5     NONE   float   xyzw
; SH_BLUE                  0   xyzw        6     NONE   float   xyzw
; SV_IsFrontFace           0   x           7    FFACE    uint   x   
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
; shader hash: 63a7a941db919c63367340c4cca1b942
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
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
;   [144 x i8] (type annotation not present)
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
; Number of inputs: 29, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24, 25, 26, 27, 28 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = icmp ne i32 %37, 0
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = alloca [12 x float], align 4
  %65 = alloca [12 x float], align 4
  %66 = alloca [3 x float], align 4
  %67 = alloca [3 x float], align 4
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = fmul fast float %71, %60
  %73 = fmul fast float %71, %61
  %74 = select i1 %38, float 1.000000e+00, float -1.000000e+00
  %75 = fmul fast float %55, %74
  %76 = fmul fast float %56, %74
  %77 = fmul fast float %57, %74
  %78 = fmul fast float %51, %74
  %79 = fmul fast float %52, %74
  %80 = fmul fast float %53, %74
  %81 = fmul fast float %56, %53
  %82 = fmul fast float %57, %52
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %57, %51
  %85 = fmul fast float %55, %53
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %55, %52
  %88 = fmul fast float %56, %51
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %54, %74
  %91 = fmul fast float %90, %83
  %92 = fmul fast float %90, %86
  %93 = fmul fast float %90, %89
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %97 = fmul fast float %95, 2.000000e+00
  %98 = fmul fast float %97, %72
  %99 = fmul fast float %96, 2.000000e+00
  %100 = fmul fast float %99, %73
  %101 = fsub fast float 1.000000e+00, %98
  %102 = fsub fast float 1.000000e+00, %100
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %101, %104
  %108 = fmul fast float %101, %105
  %109 = fmul fast float %101, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %102, %111
  %115 = fmul fast float %102, %112
  %116 = fmul fast float %102, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fadd fast float %114, %118
  %122 = fadd fast float %121, %107
  %123 = fadd fast float %115, %119
  %124 = fadd fast float %123, %108
  %125 = fadd fast float %116, %120
  %126 = fadd fast float %125, %109
  %127 = fmul fast float %122, %63
  %128 = fmul fast float %124, %63
  %129 = fmul fast float %126, %63
  %130 = fmul fast float %72, 5.000000e-01
  %131 = fmul fast float %73, 5.000000e-01
  %132 = fptosi float %130 to i32
  %133 = fptosi float %131 to i32
  %134 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %132, i32 %133, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = lshr i32 %135, 18
  %137 = uitofp i32 %136 to float
  %138 = fmul fast float %137, 0x3F4C00EBA0000000
  %139 = call float @dx.op.unary.f32(i32 21, float %138)  ; Exp(value)
  %140 = fadd fast float %139, -1.000000e+00
  %141 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %142 = extractvalue %dx.types.Dimensions %141, 0
  %143 = sitofp i32 %142 to float
  %144 = extractvalue %dx.types.Dimensions %141, 1
  %145 = sitofp i32 %144 to float
  %146 = fcmp fast oge float %130, %143
  %147 = fcmp fast oge float %131, %145
  %148 = or i1 %146, %147
  %149 = select i1 %148, float 0x4197782600000000, float %140
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %72
  %154 = fmul fast float %152, %73
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %156, 114688
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %158, float %153, float 0.000000e+00
  %160 = select i1 %158, float %154, float 0.000000e+00
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fmul fast float %162, 2.550000e+02
  %164 = fptoui float %163 to i32
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.i32 %166, 3
  %168 = and i32 %167, 3
  %169 = icmp ne i32 %168, 0
  %170 = and i32 %167, 4
  %171 = icmp ne i32 %170, 0
  %172 = and i1 %169, %171
  br i1 %172, label %173, label %184

; <label>:173                                     ; preds = %0
  %174 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %175 = fmul fast float %174, %73
  %176 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %177 = fmul fast float %176, %72
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %177, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = fsub fast float 1.000000e+00, %179
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = fcmp fast olt float %180, %182
  br label %187

; <label>:184                                     ; preds = %0
  %185 = icmp eq i32 %170, 0
  %186 = and i1 %169, %185
  br label %187

; <label>:187                                     ; preds = %184, %173
  %188 = phi i1 [ %183, %173 ], [ %186, %184 ]
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = shl i32 %190, 4
  %192 = and i32 %191, 32752
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192)  ; LegacyF16ToF32(value)
  %194 = lshr i32 %190, 7
  %195 = and i32 %194, 32752
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = lshr i32 %190, 22
  %198 = shl nuw nsw i32 %197, 5
  %199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %198)  ; LegacyF16ToF32(value)
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F70101020000000
  %205 = lshr i32 %201, 8
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F70101020000000
  %209 = lshr i32 %201, 16
  %210 = and i32 %209, 255
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F70101020000000
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 65535
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %214, 16
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 65535
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = lshr i32 %220, 16
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = fmul fast float %222, 0x3F50624DE0000000
  %226 = fmul fast float %224, 0x3F50624DE0000000
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 2
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %238, label %231

; <label>:231                                     ; preds = %187
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = add i32 %233, 0
  %235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %235, %dx.types.Handle %69, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 3
  br label %238

; <label>:238                                     ; preds = %231, %187
  %239 = phi float [ 1.000000e+00, %187 ], [ %237, %231 ]
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = or i32 %243, %241
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %859, label %246

; <label>:246                                     ; preds = %238
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = lshr i32 %248, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = fmul fast float %250, 0x3F50624DE0000000
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  %256 = lshr i32 %253, 24
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = lshr i32 %264, 22
  %266 = shl nuw nsw i32 %265, 5
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = shl i32 %264, 4
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 7
  %272 = and i32 %271, 32752
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %276 = fmul fast float %275, 1.000000e+03
  %277 = fmul fast float %225, %276
  %278 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %279 = fadd fast float %278, %216
  %280 = fmul fast float %226, %276
  %281 = call float @dx.op.unary.f32(i32 22, float %280)  ; Frc(value)
  %282 = fadd fast float %281, %218
  %283 = fmul fast float %251, %276
  %284 = call float @dx.op.unary.f32(i32 22, float %283)  ; Frc(value)
  %285 = fmul fast float %284, 0x401921FB60000000
  %286 = fadd fast float %285, %267
  %287 = call float @dx.op.unary.f32(i32 13, float %286)  ; Sin(value)
  %288 = call float @dx.op.unary.f32(i32 12, float %286)  ; Cos(value)
  %289 = fsub fast float -0.000000e+00, %287
  %290 = fadd fast float %58, -5.000000e-01
  %291 = fadd fast float %59, -5.000000e-01
  %292 = fmul fast float %260, %290
  %293 = fmul fast float %262, %291
  %294 = fadd fast float %292, 5.000000e-01
  %295 = fadd fast float %293, 5.000000e-01
  %296 = fmul fast float %270, %294
  %297 = fmul fast float %273, %295
  %298 = fmul fast float %288, %296
  %299 = call float @dx.op.tertiary.f32(i32 46, float %289, float %297, float %298)  ; FMad(a,b,c)
  %300 = fmul fast float %287, %296
  %301 = call float @dx.op.tertiary.f32(i32 46, float %288, float %297, float %300)  ; FMad(a,b,c)
  %302 = fadd fast float %279, %299
  %303 = fadd fast float %282, %301
  %304 = icmp ugt i32 %255, 1
  %305 = icmp ugt i32 %253, 33554431
  %306 = or i1 %305, %304
  br i1 %306, label %307, label %331

; <label>:307                                     ; preds = %246
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = lshr i32 %309, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %275, %311
  %313 = call float @dx.op.unary.f32(i32 22, float %312)  ; Frc(value)
  %314 = mul nuw nsw i32 %255, %256
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %313, %315
  %317 = call float @dx.op.unary.f32(i32 27, float %316)  ; Round_ni(value)
  %318 = fptoui float %317 to i32
  %319 = urem i32 %318, %255
  %320 = udiv i32 %318, %256
  %321 = call float @dx.op.unary.f32(i32 22, float %302)  ; Frc(value)
  %322 = call float @dx.op.unary.f32(i32 22, float %303)  ; Frc(value)
  %323 = uitofp i32 %319 to float
  %324 = uitofp i32 %320 to float
  %325 = fadd fast float %321, %323
  %326 = fadd fast float %322, %324
  %327 = uitofp i32 %255 to float
  %328 = uitofp i32 %256 to float
  %329 = fdiv fast float %325, %327
  %330 = fdiv fast float %326, %328
  br label %331

; <label>:331                                     ; preds = %307, %246
  %332 = phi float [ %329, %307 ], [ %302, %246 ]
  %333 = phi float [ %330, %307 ], [ %303, %246 ]
  %334 = and i32 %241, 256
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %380, label %336

; <label>:336                                     ; preds = %331
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = add i32 %338, 0
  %340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %340, %dx.types.Handle %69, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = shl i32 %344, 4
  %346 = and i32 %345, 32752
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %344, 7
  %349 = and i32 %348, 32752
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fsub fast float 1.000000e+00, %239
  %352 = call float @dx.op.binary.f32(i32 35, float %351, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %353 = bitcast float %239 to i32
  %354 = sitofp i32 %353 to float
  %355 = fadd fast float %354, 0xC1CFBF8940000000
  %356 = fmul fast float %350, %355
  %357 = fadd fast float %356, 0x41CFBF8940000000
  %358 = fptosi float %357 to i32
  %359 = bitcast i32 %358 to float
  %360 = bitcast float %352 to i32
  %361 = sitofp i32 %360 to float
  %362 = fadd fast float %361, 0xC1CFBF8940000000
  %363 = fmul fast float %362, %350
  %364 = fadd fast float %363, 0x41CFBF8940000000
  %365 = fptosi float %364 to i32
  %366 = bitcast i32 %365 to float
  %367 = fmul fast float %359, %347
  %368 = fmul fast float %366, %347
  %369 = fsub fast float %352, %367
  %370 = fadd fast float %368, %352
  %371 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %372 = call float @dx.op.unary.f32(i32 7, float %370)  ; Saturate(value)
  %373 = fsub fast float %342, %371
  %374 = fsub fast float %372, %371
  %375 = bitcast float %374 to i32
  %376 = sub nsw i32 2129859010, %375
  %377 = bitcast i32 %376 to float
  %378 = fmul fast float %377, %373
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  br label %380

; <label>:380                                     ; preds = %336, %331
  %381 = phi float [ %379, %336 ], [ %239, %331 ]
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 128
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %401, label %386

; <label>:386                                     ; preds = %380
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = add i32 %388, 0
  %390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %391 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %390, %dx.types.Handle %69, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 524288
  %396 = icmp ne i32 %395, 0
  %397 = fcmp fast ogt float %392, 0x3FE0101020000000
  %398 = select i1 %397, float 1.000000e+00, float 0.000000e+00
  %399 = select i1 %396, float %398, float %392
  %400 = fmul fast float %399, %381
  br label %401

; <label>:401                                     ; preds = %386, %380
  %402 = phi float [ %400, %386 ], [ %381, %380 ]
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 16
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %600, label %407

; <label>:407                                     ; preds = %401
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = add i32 %411, 0
  %413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %413, %dx.types.Handle %68, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = extractvalue %dx.types.ResRet.f32 %414, 1
  %417 = extractvalue %dx.types.ResRet.f32 %414, 2
  %418 = extractvalue %dx.types.ResRet.f32 %414, 3
  %419 = and i32 %409, 255
  %420 = uitofp i32 %419 to float
  %421 = lshr i32 %409, 8
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %418, %420
  %425 = fadd fast float %424, %423
  %426 = fmul fast float %425, 0x3F70101000000000
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 512
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %438, label %431

; <label>:431                                     ; preds = %407
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = add i32 %433, 0
  %435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %435, %dx.types.Handle %69, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  br label %438

; <label>:438                                     ; preds = %431, %407
  %439 = phi float [ %437, %431 ], [ 1.000000e+00, %407 ]
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 33554432
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %547, label %444

; <label>:444                                     ; preds = %438
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 65535
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %446, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = lshr i32 %456, 24
  %458 = uitofp i32 %457 to float
  %459 = fmul fast float %458, 0x3F70101020000000
  %460 = and i32 %456, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %456, 8
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = lshr i32 %456, 16
  %468 = and i32 %467, 255
  %469 = uitofp i32 %468 to float
  %470 = fmul fast float %469, 0x3F70101020000000
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = lshr i32 %472, 24
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %474, 0x3F70101020000000
  %476 = and i32 %472, 255
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %477, 0x3F70101020000000
  %479 = lshr i32 %472, 8
  %480 = and i32 %479, 255
  %481 = uitofp i32 %480 to float
  %482 = fmul fast float %481, 0x3F70101020000000
  %483 = lshr i32 %472, 16
  %484 = and i32 %483, 255
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = bitcast float %415 to i32
  %488 = ashr i32 %487, 1
  %489 = sub nsw i32 1597463174, %488
  %490 = bitcast i32 %489 to float
  %491 = fmul fast float %415, 5.000000e-01
  %492 = fmul fast float %490, %490
  %493 = fmul fast float %492, %491
  %494 = fsub fast float 1.500000e+00, %493
  %495 = fmul fast float %490, %415
  %496 = fmul fast float %495, %494
  %497 = bitcast float %416 to i32
  %498 = ashr i32 %497, 1
  %499 = sub nsw i32 1597463174, %498
  %500 = bitcast i32 %499 to float
  %501 = fmul fast float %416, 5.000000e-01
  %502 = fmul fast float %500, %500
  %503 = fmul fast float %502, %501
  %504 = fsub fast float 1.500000e+00, %503
  %505 = fmul fast float %500, %416
  %506 = fmul fast float %505, %504
  %507 = bitcast float %417 to i32
  %508 = ashr i32 %507, 1
  %509 = sub nsw i32 1597463174, %508
  %510 = bitcast i32 %509 to float
  %511 = fmul fast float %417, 5.000000e-01
  %512 = fmul fast float %510, %510
  %513 = fmul fast float %512, %511
  %514 = fsub fast float 1.500000e+00, %513
  %515 = fmul fast float %510, %417
  %516 = fmul fast float %515, %514
  %517 = fsub fast float %496, %478
  %518 = fsub fast float %506, %482
  %519 = fsub fast float %516, %486
  %520 = fmul fast float %517, %448
  %521 = fmul fast float %518, %450
  %522 = fmul fast float %519, %454
  %523 = fadd fast float %520, %462
  %524 = fadd fast float %521, %466
  %525 = fadd fast float %522, %470
  %526 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %527 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %528 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %529 = fmul fast float %526, %526
  %530 = fmul fast float %527, %527
  %531 = fmul fast float %528, %528
  %532 = fsub fast float %529, %415
  %533 = fsub fast float %530, %416
  %534 = fsub fast float %531, %417
  %535 = fmul fast float %532, %439
  %536 = fmul fast float %533, %439
  %537 = fmul fast float %534, %439
  %538 = fadd fast float %535, %415
  %539 = fadd fast float %536, %416
  %540 = fadd fast float %537, %417
  %541 = fadd fast float %459, %426
  %542 = fsub fast float %541, %475
  %543 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %544 = fsub fast float %543, %426
  %545 = fmul fast float %544, %439
  %546 = fadd fast float %545, %426
  br label %600

; <label>:547                                     ; preds = %438
  %548 = and i32 %441, 134217728
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %584, label %550

; <label>:550                                     ; preds = %547
  %551 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %552 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %553 = call float @dx.op.unary.f32(i32 24, float %212)  ; Sqrt(value)
  %554 = fadd fast float %551, -5.000000e-01
  %555 = fadd fast float %552, -5.000000e-01
  %556 = fadd fast float %553, -5.000000e-01
  %557 = fmul fast float %554, %439
  %558 = fmul fast float %555, %439
  %559 = fmul fast float %556, %439
  %560 = fadd fast float %557, 5.000000e-01
  %561 = fadd fast float %558, 5.000000e-01
  %562 = fadd fast float %559, 5.000000e-01
  %563 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %564 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %565 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %566 = fmul fast float %560, 2.000000e+00
  %567 = fsub fast float 1.000000e+00, %566
  %568 = fmul fast float %567, %563
  %569 = fadd fast float %568, %566
  %570 = fmul fast float %569, %563
  %571 = fmul fast float %561, 2.000000e+00
  %572 = fsub fast float 1.000000e+00, %571
  %573 = fmul fast float %572, %564
  %574 = fadd fast float %573, %571
  %575 = fmul fast float %574, %564
  %576 = fmul fast float %562, 2.000000e+00
  %577 = fsub fast float 1.000000e+00, %576
  %578 = fmul fast float %577, %565
  %579 = fadd fast float %578, %576
  %580 = fmul fast float %579, %565
  %581 = fmul fast float %570, %570
  %582 = fmul fast float %575, %575
  %583 = fmul fast float %580, %580
  br label %600

; <label>:584                                     ; preds = %547
  %585 = fmul fast float %204, %204
  %586 = fmul fast float %208, %208
  %587 = fmul fast float %212, %212
  %588 = fadd fast float %585, -1.000000e+00
  %589 = fadd fast float %586, -1.000000e+00
  %590 = fadd fast float %587, -1.000000e+00
  %591 = fmul fast float %439, %588
  %592 = fmul fast float %439, %589
  %593 = fmul fast float %439, %590
  %594 = fadd fast float %591, 1.000000e+00
  %595 = fadd fast float %592, 1.000000e+00
  %596 = fadd fast float %593, 1.000000e+00
  %597 = fmul fast float %594, %415
  %598 = fmul fast float %595, %416
  %599 = fmul fast float %596, %417
  br label %600

; <label>:600                                     ; preds = %584, %550, %444, %401
  %601 = phi float [ %546, %444 ], [ %426, %550 ], [ %426, %584 ], [ 0x3FA23C0BE0000000, %401 ]
  %602 = phi float [ %538, %444 ], [ %581, %550 ], [ %597, %584 ], [ 1.000000e+00, %401 ]
  %603 = phi float [ %539, %444 ], [ %582, %550 ], [ %598, %584 ], [ 1.000000e+00, %401 ]
  %604 = phi float [ %540, %444 ], [ %583, %550 ], [ %599, %584 ], [ 1.000000e+00, %401 ]
  %605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.i32 %605, 1
  %607 = and i32 %606, 1
  %608 = icmp ne i32 %607, 0
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = and i32 %610, 32
  %612 = icmp ne i32 %611, 0
  %613 = and i1 %608, %612
  %614 = select i1 %613, float 1.000000e+00, float %602
  %615 = select i1 %613, float 0x3FD3333340000000, float %603
  %616 = select i1 %613, float 0x3FD3333340000000, float %604
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 32
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %690, label %621

; <label>:621                                     ; preds = %600
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %68, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = extractvalue %dx.types.ResRet.f32 %628, 3
  %633 = and i32 %623, 255
  %634 = uitofp i32 %633 to float
  %635 = lshr i32 %623, 8
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %623, 16
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101000000000
  %642 = fmul fast float %629, %634
  %643 = fadd fast float %642, %637
  %644 = fmul fast float %643, 0x3F70101000000000
  %645 = fadd fast float %630, -5.000000e-01
  %646 = fadd fast float %632, -5.000000e-01
  %647 = fmul fast float %645, %641
  %648 = fmul fast float %646, %641
  %649 = fadd fast float %647, 5.000000e-01
  %650 = fadd fast float %648, 5.000000e-01
  %651 = fmul fast float %649, 2.000000e+00
  %652 = fadd fast float %651, -1.000000e+00
  %653 = fmul fast float %650, 2.000000e+00
  %654 = fadd fast float %653, -1.000000e+00
  %655 = fadd fast float %652, %654
  %656 = fmul fast float %655, 5.000000e-01
  %657 = fsub fast float %652, %654
  %658 = fmul fast float %657, 5.000000e-01
  %659 = call float @dx.op.unary.f32(i32 6, float %656)  ; FAbs(value)
  %660 = fsub fast float 1.000000e+00, %659
  %661 = call float @dx.op.unary.f32(i32 6, float %658)  ; FAbs(value)
  %662 = fsub fast float %660, %661
  %663 = call float @dx.op.dot3.f32(i32 55, float %656, float %658, float %662, float %656, float %658, float %662)  ; Dot3(ax,ay,az,bx,by,bz)
  %664 = call float @dx.op.unary.f32(i32 25, float %663)  ; Rsqrt(value)
  %665 = fmul fast float %656, %664
  %666 = fmul fast float %658, %664
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 67108864
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %686, label %671

; <label>:671                                     ; preds = %621
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = and i32 %673, 65535
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 65535
  %679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %678)  ; LegacyF16ToF32(value)
  %680 = lshr i32 %673, 16
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = fsub fast float %644, %681
  %683 = fmul fast float %682, %675
  %684 = fadd fast float %683, %679
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  br label %686

; <label>:686                                     ; preds = %671, %621
  %687 = phi float [ %685, %671 ], [ %644, %621 ]
  %688 = call float @dx.op.dot2.f32(i32 54, float %665, float %666, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %689 = call float @dx.op.dot2.f32(i32 54, float %665, float %666, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %690

; <label>:690                                     ; preds = %686, %600
  %691 = phi float [ %687, %686 ], [ 0x3FD6666660000000, %600 ]
  %692 = phi float [ %688, %686 ], [ 0.000000e+00, %600 ]
  %693 = phi float [ %689, %686 ], [ 0.000000e+00, %600 ]
  %694 = phi float [ %631, %686 ], [ 1.000000e+00, %600 ]
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = lshr i32 %696, 22
  %698 = shl nuw nsw i32 %697, 5
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 64
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %736, label %704

; <label>:704                                     ; preds = %690
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %706, 0
  %708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 131072
  %712 = icmp eq i32 %711, 0
  %713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %708, %dx.types.Handle %68, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = fmul fast float %714, %193
  %718 = fmul fast float %715, %196
  %719 = fmul fast float %716, %199
  br i1 %712, label %726, label %720

; <label>:720                                     ; preds = %704
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = fmul fast float %722, %717
  %724 = fmul fast float %722, %718
  %725 = fmul fast float %722, %719
  br label %726

; <label>:726                                     ; preds = %720, %704
  %727 = phi float [ %723, %720 ], [ %717, %704 ]
  %728 = phi float [ %724, %720 ], [ %718, %704 ]
  %729 = phi float [ %725, %720 ], [ %719, %704 ]
  %730 = fmul fast float %727, %699
  %731 = select i1 %188, float %730, float %727
  %732 = call float @dx.op.dot3.f32(i32 55, float %731, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = select i1 %188, float 0.000000e+00, float %727
  %734 = select i1 %188, float %732, float %728
  %735 = select i1 %188, float 0.000000e+00, float %729
  br label %736

; <label>:736                                     ; preds = %726, %690
  %737 = phi float [ %733, %726 ], [ 0.000000e+00, %690 ]
  %738 = phi float [ %734, %726 ], [ 0.000000e+00, %690 ]
  %739 = phi float [ %735, %726 ], [ 0.000000e+00, %690 ]
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 1024
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %772, label %744

; <label>:744                                     ; preds = %736
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = lshr i32 %746, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = lshr i32 %746, 16
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, 0x3F70101020000000
  %758 = fmul fast float %749, %749
  %759 = fmul fast float %753, %753
  %760 = fmul fast float %757, %757
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %762, 0
  %764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %764, %dx.types.Handle %69, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  %769 = fmul fast float %758, %766
  %770 = fmul fast float %759, %767
  %771 = fmul fast float %760, %768
  br label %772

; <label>:772                                     ; preds = %744, %736
  %773 = phi float [ %769, %744 ], [ 0.000000e+00, %736 ]
  %774 = phi float [ %770, %744 ], [ 0.000000e+00, %736 ]
  %775 = phi float [ %771, %744 ], [ 0.000000e+00, %736 ]
  %776 = fcmp fast ogt float %773, 0.000000e+00
  %777 = fcmp fast ogt float %774, 0.000000e+00
  %778 = fcmp fast ogt float %775, 0.000000e+00
  %779 = call float @dx.op.unary.f32(i32 23, float %773)  ; Log(value)
  %780 = call float @dx.op.unary.f32(i32 23, float %774)  ; Log(value)
  %781 = call float @dx.op.unary.f32(i32 23, float %775)  ; Log(value)
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = lshr i32 %783, 7
  %785 = and i32 %784, 32752
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = fmul fast float %779, 0xBFE62E4300000000
  %788 = fmul fast float %787, %786
  %789 = fmul fast float %780, 0xBFE62E4300000000
  %790 = fmul fast float %789, %786
  %791 = fmul fast float %781, 0xBFE62E4300000000
  %792 = fmul fast float %791, %786
  %793 = select i1 %776, float %788, float 1.270000e+02
  %794 = select i1 %777, float %790, float 1.270000e+02
  %795 = select i1 %778, float %792, float 1.270000e+02
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 10240
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %842, label %800

; <label>:800                                     ; preds = %772
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %69, float %332, float %333, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 1
  %807 = extractvalue %dx.types.ResRet.f32 %805, 3
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 1048576
  %811 = icmp ne i32 %810, 0
  %812 = and i32 %809, 8192
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %828, label %814

; <label>:814                                     ; preds = %800
  %815 = extractvalue %dx.types.ResRet.f32 %805, 2
  %816 = select i1 %811, float %815, float %806
  %817 = extractvalue %dx.types.ResRet.f32 %805, 0
  %818 = select i1 %811, float %817, float %806
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = lshr i32 %820, 16
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F80101020000000
  %825 = fmul fast float %824, %818
  %826 = fmul fast float %824, %806
  %827 = fmul fast float %824, %816
  br label %828

; <label>:828                                     ; preds = %814, %800
  %829 = phi float [ %825, %814 ], [ 0.000000e+00, %800 ]
  %830 = phi float [ %826, %814 ], [ 0.000000e+00, %800 ]
  %831 = phi float [ %827, %814 ], [ 0.000000e+00, %800 ]
  %832 = and i32 %809, 2048
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %842, label %834

; <label>:834                                     ; preds = %828
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = shl i32 %836, 4
  %838 = and i32 %837, 32752
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = fmul fast float %839, %807
  %841 = call float @dx.op.binary.f32(i32 35, float %840, float 0x3F70101020000000)  ; FMax(a,b)
  br label %842

; <label>:842                                     ; preds = %834, %828, %772
  %843 = phi float [ %829, %834 ], [ %829, %828 ], [ 0.000000e+00, %772 ]
  %844 = phi float [ %830, %834 ], [ %830, %828 ], [ 0.000000e+00, %772 ]
  %845 = phi float [ %831, %834 ], [ %831, %828 ], [ 0.000000e+00, %772 ]
  %846 = phi float [ %841, %834 ], [ 0x3F70101020000000, %828 ], [ 0x3F70101020000000, %772 ]
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = lshr i32 %848, 8
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = call float @dx.op.dot3.f32(i32 55, float %614, float %615, float %616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = fmul fast float %853, %854
  %856 = fadd fast float %855, %850
  %857 = fmul fast float %856, 0x3F70101020000000
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  br label %859

; <label>:859                                     ; preds = %842, %238
  %860 = phi float [ 0.000000e+00, %238 ], [ %692, %842 ]
  %861 = phi float [ 0.000000e+00, %238 ], [ %693, %842 ]
  %862 = phi float [ 0.000000e+00, %238 ], [ %614, %842 ]
  %863 = phi float [ 0.000000e+00, %238 ], [ %615, %842 ]
  %864 = phi float [ 0.000000e+00, %238 ], [ %616, %842 ]
  %865 = phi float [ 0.000000e+00, %238 ], [ %843, %842 ]
  %866 = phi float [ 0.000000e+00, %238 ], [ %844, %842 ]
  %867 = phi float [ 0.000000e+00, %238 ], [ %845, %842 ]
  %868 = phi float [ 0.000000e+00, %238 ], [ %737, %842 ]
  %869 = phi float [ 0.000000e+00, %238 ], [ %738, %842 ]
  %870 = phi float [ 0.000000e+00, %238 ], [ %739, %842 ]
  %871 = phi float [ 0.000000e+00, %238 ], [ %793, %842 ]
  %872 = phi float [ 0.000000e+00, %238 ], [ %794, %842 ]
  %873 = phi float [ 0.000000e+00, %238 ], [ %795, %842 ]
  %874 = phi float [ 0.000000e+00, %238 ], [ %601, %842 ]
  %875 = phi float [ 0.000000e+00, %238 ], [ %402, %842 ]
  %876 = phi float [ 0.000000e+00, %238 ], [ %691, %842 ]
  %877 = phi float [ 0.000000e+00, %238 ], [ %694, %842 ]
  %878 = phi float [ 0.000000e+00, %238 ], [ %846, %842 ]
  %879 = phi float [ 0.000000e+00, %238 ], [ %858, %842 ]
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 0
  %882 = call float @dx.op.dot2.f32(i32 54, float %860, float %861, float %860, float %861)  ; Dot2(ax,ay,bx,by)
  %883 = fmul fast float %882, 0x3FE3333340000000
  %884 = fsub fast float 1.000000e+00, %883
  %885 = call float @dx.op.dot3.f32(i32 55, float %860, float %861, float %884, float %860, float %861, float %884)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = call float @dx.op.unary.f32(i32 25, float %885)  ; Rsqrt(value)
  %887 = fmul fast float %886, %860
  %888 = fmul fast float %886, %861
  %889 = fmul fast float %884, %886
  %890 = fmul fast float %889, %75
  %891 = fmul fast float %889, %76
  %892 = fmul fast float %889, %77
  %893 = fmul fast float %887, %78
  %894 = fmul fast float %887, %79
  %895 = fmul fast float %887, %80
  %896 = fadd fast float %890, %893
  %897 = fadd fast float %891, %894
  %898 = fadd fast float %892, %895
  %899 = fmul fast float %888, %91
  %900 = fmul fast float %888, %92
  %901 = fmul fast float %888, %93
  %902 = fadd fast float %896, %899
  %903 = fadd fast float %897, %900
  %904 = fadd fast float %898, %901
  %905 = call float @dx.op.dot3.f32(i32 55, float %902, float %903, float %904, float %902, float %903, float %904)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.unary.f32(i32 25, float %905)  ; Rsqrt(value)
  %907 = fmul fast float %902, %906
  %908 = fmul fast float %903, %906
  %909 = fmul fast float %904, %906
  %910 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %911 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %912 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %913 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %914 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %915 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %916 = fadd fast float %910, %127
  %917 = fadd fast float %911, %128
  %918 = fadd fast float %912, %129
  %919 = fadd fast float %913, %127
  %920 = fadd fast float %914, %128
  %921 = fadd fast float %915, %129
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %925 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %929 = fmul fast float %923, %72
  %930 = fmul fast float %929, %927
  %931 = fmul fast float %924, %73
  %932 = fmul fast float %931, %928
  %933 = fptoui float %930 to i32
  %934 = fptoui float %932 to i32
  %935 = fadd fast float %923, -1.000000e+00
  %936 = fadd fast float %924, -1.000000e+00
  %937 = fptoui float %935 to i32
  %938 = fptoui float %936 to i32
  %939 = call i32 @dx.op.binary.i32(i32 40, i32 %933, i32 %937)  ; UMin(a,b)
  %940 = call i32 @dx.op.binary.i32(i32 40, i32 %934, i32 %938)  ; UMin(a,b)
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %944 = fmul fast float %942, %63
  %945 = fsub fast float %944, %943
  %946 = fadd fast float %925, -1.000000e+00
  %947 = call float @dx.op.binary.f32(i32 36, float %945, float %946)  ; FMin(a,b)
  %948 = fptoui float %947 to i32
  %949 = fptoui float %923 to i32
  %950 = fptoui float %924 to i32
  %951 = mul i32 %948, %950
  %952 = add i32 %951, %940
  %953 = mul i32 %952, %949
  %954 = add i32 %953, %939
  %955 = shl i32 %954, 2
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = and i32 %957, 1023
  %959 = lshr i32 %957, 10
  %960 = icmp eq i32 %958, 0
  br i1 %960, label %1464, label %961

; <label>:961                                     ; preds = %859
  %962 = and i32 %957, 1023
  br label %963

; <label>:963                                     ; preds = %1095, %961
  %964 = phi i32 [ %1045, %1095 ], [ 0, %961 ]
  %965 = phi float [ %1096, %1095 ], [ 0.000000e+00, %961 ]
  %966 = phi float [ %1097, %1095 ], [ %881, %961 ]
  %967 = phi float [ %1098, %1095 ], [ %879, %961 ]
  %968 = phi float [ %1099, %1095 ], [ %871, %961 ]
  %969 = phi float [ %1100, %1095 ], [ %872, %961 ]
  %970 = phi float [ %1101, %1095 ], [ %873, %961 ]
  %971 = phi float [ %1102, %1095 ], [ 0.000000e+00, %961 ]
  %972 = phi float [ %1103, %1095 ], [ 0.000000e+00, %961 ]
  %973 = phi float [ %1104, %1095 ], [ %865, %961 ]
  %974 = phi float [ %1105, %1095 ], [ %866, %961 ]
  %975 = phi float [ %1106, %1095 ], [ %867, %961 ]
  %976 = phi float [ %1107, %1095 ], [ %868, %961 ]
  %977 = phi float [ %1108, %1095 ], [ %869, %961 ]
  %978 = phi float [ %1109, %1095 ], [ %870, %961 ]
  %979 = phi float [ %1110, %1095 ], [ %907, %961 ]
  %980 = phi float [ %1111, %1095 ], [ %908, %961 ]
  %981 = phi float [ %1112, %1095 ], [ %909, %961 ]
  %982 = phi float [ %1113, %1095 ], [ %877, %961 ]
  %983 = phi float [ %1114, %1095 ], [ %876, %961 ]
  %984 = phi float [ %1115, %1095 ], [ 0.000000e+00, %961 ]
  %985 = phi float [ %1116, %1095 ], [ %874, %961 ]
  %986 = phi float [ %1117, %1095 ], [ %862, %961 ]
  %987 = phi float [ %1118, %1095 ], [ %863, %961 ]
  %988 = phi float [ %1119, %1095 ], [ %864, %961 ]
  %989 = add nuw nsw i32 %964, %959
  %990 = shl i32 %989, 2
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = shl i32 %992, 8
  %994 = or i32 %993, 48
  %995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = extractvalue %dx.types.ResRet.f32 %995, 3
  %1000 = or i32 %993, 64
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = extractvalue %dx.types.ResRet.i32 %1001, 1
  %1004 = or i32 %993, 80
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 3
  %1008 = or i32 %993, 96
  %1009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1009, 2
  %1013 = extractvalue %dx.types.ResRet.f32 %1009, 3
  %1014 = or i32 %993, 112
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1017 = or i32 %993, 128
  %1018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.ResRet.f32 %1018, 2
  %1022 = extractvalue %dx.types.ResRet.f32 %1018, 3
  %1023 = or i32 %993, 144
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = extractvalue %dx.types.ResRet.f32 %1024, 3
  %1029 = or i32 %993, 160
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1035 = or i32 %993, 192
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = or i32 %993, 208
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = or i32 %993, 248
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = add nuw nsw i32 %964, 1
  %1046 = bitcast float %999 to i32
  %1047 = and i32 %1046, 512
  %1048 = icmp eq i32 %1047, 0
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = call float @dx.op.dot4.f32(i32 56, float %1050, float %1051, float %1052, float %1053, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1055 = or i32 %993, 16
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = extractvalue %dx.types.ResRet.f32 %1056, 3
  %1061 = call float @dx.op.dot4.f32(i32 56, float %1057, float %1058, float %1059, float %1060, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1062 = or i32 %993, 32
  %1063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = extractvalue %dx.types.ResRet.f32 %1063, 3
  %1068 = call float @dx.op.dot4.f32(i32 56, float %1064, float %1065, float %1066, float %1067, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1069 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 6, float %1069)  ; FAbs(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1061)  ; Round_ni(value)
  %1072 = call float @dx.op.unary.f32(i32 6, float %1071)  ; FAbs(value)
  %1073 = call float @dx.op.unary.f32(i32 6, float %1068)  ; FAbs(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1073)  ; Round_ni(value)
  %1075 = fadd fast float %1072, %1070
  %1076 = fadd fast float %1075, %1074
  %1077 = fcmp fast oeq float %1076, 0.000000e+00
  %1078 = call float @dx.op.dot4.f32(i32 56, float %1050, float %1051, float %1052, float %1053, float %916, float %917, float %918, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1079 = call float @dx.op.dot4.f32(i32 56, float %1057, float %1058, float %1059, float %1060, float %916, float %917, float %918, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1080 = call float @dx.op.dot4.f32(i32 56, float %1050, float %1051, float %1052, float %1053, float %919, float %920, float %921, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1081 = call float @dx.op.dot4.f32(i32 56, float %1057, float %1058, float %1059, float %1060, float %919, float %920, float %921, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1082 = fsub fast float %1078, %1054
  %1083 = fsub fast float %1080, %1054
  %1084 = fsub fast float %1079, %1061
  %1085 = fsub fast float %1081, %1061
  %1086 = call float @dx.op.dot3.f32(i32 55, float %996, float %997, float %998, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 2
  %1089 = fadd fast float %1088, %1086
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1092 = fcmp fast ogt float %1090, %1091
  %1093 = and i1 %1077, %1092
  %1094 = and i1 %1048, %1093
  br i1 %1094, label %1121, label %1095

; <label>:1095                                    ; preds = %1450, %1202, %1121, %963
  %1096 = phi float [ %965, %1121 ], [ %1205, %1202 ], [ %1205, %1450 ], [ %965, %963 ]
  %1097 = phi float [ %966, %1121 ], [ %966, %1202 ], [ %1426, %1450 ], [ %966, %963 ]
  %1098 = phi float [ %967, %1121 ], [ %967, %1202 ], [ %1424, %1450 ], [ %967, %963 ]
  %1099 = phi float [ %968, %1121 ], [ %968, %1202 ], [ %1402, %1450 ], [ %968, %963 ]
  %1100 = phi float [ %969, %1121 ], [ %969, %1202 ], [ %1403, %1450 ], [ %969, %963 ]
  %1101 = phi float [ %970, %1121 ], [ %970, %1202 ], [ %1404, %1450 ], [ %970, %963 ]
  %1102 = phi float [ %971, %1121 ], [ %971, %1202 ], [ %1329, %1450 ], [ %971, %963 ]
  %1103 = phi float [ %972, %1121 ], [ %972, %1202 ], [ %1327, %1450 ], [ %972, %963 ]
  %1104 = phi float [ %973, %1121 ], [ %973, %1202 ], [ %1372, %1450 ], [ %973, %963 ]
  %1105 = phi float [ %974, %1121 ], [ %974, %1202 ], [ %1373, %1450 ], [ %974, %963 ]
  %1106 = phi float [ %975, %1121 ], [ %975, %1202 ], [ %1374, %1450 ], [ %975, %963 ]
  %1107 = phi float [ %976, %1121 ], [ %976, %1202 ], [ %1460, %1450 ], [ %976, %963 ]
  %1108 = phi float [ %977, %1121 ], [ %977, %1202 ], [ %1461, %1450 ], [ %977, %963 ]
  %1109 = phi float [ %978, %1121 ], [ %978, %1202 ], [ %1462, %1450 ], [ %978, %963 ]
  %1110 = phi float [ %979, %1121 ], [ %979, %1202 ], [ %1308, %1450 ], [ %979, %963 ]
  %1111 = phi float [ %980, %1121 ], [ %980, %1202 ], [ %1309, %1450 ], [ %980, %963 ]
  %1112 = phi float [ %981, %1121 ], [ %981, %1202 ], [ %1310, %1450 ], [ %981, %963 ]
  %1113 = phi float [ %982, %1121 ], [ %982, %1202 ], [ %1382, %1450 ], [ %982, %963 ]
  %1114 = phi float [ %983, %1121 ], [ %983, %1202 ], [ %1379, %1450 ], [ %983, %963 ]
  %1115 = phi float [ %984, %1121 ], [ %984, %1202 ], [ %1376, %1450 ], [ %984, %963 ]
  %1116 = phi float [ %985, %1121 ], [ %985, %1202 ], [ %1325, %1450 ], [ %985, %963 ]
  %1117 = phi float [ %986, %1121 ], [ %986, %1202 ], [ %1320, %1450 ], [ %986, %963 ]
  %1118 = phi float [ %987, %1121 ], [ %987, %1202 ], [ %1321, %1450 ], [ %987, %963 ]
  %1119 = phi float [ %988, %1121 ], [ %988, %1202 ], [ %1322, %1450 ], [ %988, %963 ]
  %1120 = icmp eq i32 %1045, %962
  br i1 %1120, label %1463, label %963

; <label>:1121                                    ; preds = %963
  %1122 = extractvalue %dx.types.ResRet.f32 %1015, 3
  %1123 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1127 = extractvalue %dx.types.ResRet.i32 %1001, 3
  %1128 = extractvalue %dx.types.ResRet.i32 %1001, 2
  %1129 = add i32 %1127, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1130, %dx.types.Handle %1131, float %1054, float %1061, float undef, float undef, i32 0, i32 0, i32 undef, float %1082, float %1084, float undef, float %1083, float %1085, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = fmul fast float %1133, %1126
  %1135 = fadd fast float %1134, %1125
  %1136 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1137 = fmul fast float %1054, %1010
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %1061, float %1137)  ; FMad(a,b,c)
  %1139 = fadd fast float %1138, %1124
  %1140 = fmul fast float %1054, %1012
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %1061, float %1140)  ; FMad(a,b,c)
  %1142 = fadd fast float %1141, %1123
  %1143 = fmul fast float %1082, %1010
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %1084, float %1143)  ; FMad(a,b,c)
  %1145 = fmul fast float %1082, %1012
  %1146 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %1084, float %1145)  ; FMad(a,b,c)
  %1147 = fmul fast float %1083, %1010
  %1148 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %1085, float %1147)  ; FMad(a,b,c)
  %1149 = fmul fast float %1083, %1012
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1013, float %1085, float %1149)  ; FMad(a,b,c)
  %1151 = add i32 %1128, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1151, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1152, %dx.types.Handle %1131, float %1139, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float %1144, float %1146, float undef, float %1148, float %1150, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = and i32 %1046, 1024
  %1156 = icmp ne i32 %1155, 0
  %1157 = fcmp fast ogt float %1154, 0x3FE0101020000000
  %1158 = uitofp i1 %1157 to float
  %1159 = select i1 %1156, float %1158, float %1154
  %1160 = and i32 %1046, 8192
  %1161 = icmp ne i32 %1160, 0
  %1162 = select i1 %1161, float %1122, float 1.000000e+00
  %1163 = fmul fast float %1054, 2.000000e+00
  %1164 = fadd fast float %1163, -1.000000e+00
  %1165 = call float @dx.op.unary.f32(i32 6, float %1164)  ; FAbs(value)
  %1166 = fmul fast float %1165, %1043
  %1167 = fsub fast float %1166, %1043
  %1168 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1169 = fmul fast float %1061, 2.000000e+00
  %1170 = fadd fast float %1169, -1.000000e+00
  %1171 = call float @dx.op.unary.f32(i32 6, float %1170)  ; FAbs(value)
  %1172 = fmul fast float %1171, %1044
  %1173 = fsub fast float %1172, %1044
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fmul fast float %1073, %1006
  %1176 = fsub fast float %1175, %1006
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1178 = fmul fast float %1136, %1162
  %1179 = fmul fast float %1178, %1133
  %1180 = fmul fast float %1179, %1168
  %1181 = fmul fast float %1180, %1159
  %1182 = fmul fast float %1181, %1174
  %1183 = fmul fast float %1182, %1177
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1187 = fsub fast float %1090, %1186
  %1188 = fmul fast float %1187, %1185
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1190 = fmul fast float %1183, %1007
  %1191 = fadd fast float %1183, %1007
  %1192 = fmul fast float %1191, %1016
  %1193 = fsub fast float %1192, %1016
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = and i32 %1046, 128
  %1196 = icmp ne i32 %1195, 0
  %1197 = select i1 %1196, float %1194, float %1190
  %1198 = fmul fast float %1197, %1189
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = fcmp fast ugt float %1198, %1200
  br i1 %1201, label %1202, label %1095

; <label>:1202                                    ; preds = %1121
  %1203 = select i1 %1161, float %1198, float 0.000000e+00
  %1204 = fadd fast float %1203, %965
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  br i1 %1161, label %1095, label %1206

; <label>:1206                                    ; preds = %1202
  %1207 = and i32 %1046, 4
  %1208 = and i32 %1046, 8
  %1209 = add i32 %1002, 0
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1209, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1212 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1210, %dx.types.Handle %1211, float %1139, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float %1144, float %1146, float undef, float %1148, float %1150, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = extractvalue %dx.types.ResRet.f32 %1212, 3
  %1217 = bitcast float %1028 to i32
  %1218 = and i32 %1217, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = lshr i32 %1217, 8
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = fmul fast float %1216, %1219
  %1224 = fadd fast float %1223, %1222
  %1225 = fmul fast float %1224, 0x3F70101000000000
  %1226 = add i32 %1003, 0
  %1227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1226, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1227, %dx.types.Handle %1211, float %1139, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float %1144, float %1146, float undef, float %1148, float %1150, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = bitcast float %1022 to i32
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = lshr i32 %1233, 8
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = lshr i32 %1233, 16
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101000000000
  %1243 = fmul fast float %1229, %1235
  %1244 = fadd fast float %1243, %1238
  %1245 = fmul fast float %1244, 0x3F70101000000000
  %1246 = fadd fast float %1230, -5.000000e-01
  %1247 = fadd fast float %1232, -5.000000e-01
  %1248 = fmul fast float %1246, %1242
  %1249 = fmul fast float %1247, %1242
  %1250 = fadd fast float %1248, 5.000000e-01
  %1251 = fadd fast float %1249, 5.000000e-01
  %1252 = fmul fast float %1213, %1031
  %1253 = fmul fast float %1214, %1032
  %1254 = fmul fast float %1215, %1033
  %1255 = fmul fast float %1250, 2.000000e+00
  %1256 = fadd fast float %1255, -1.000000e+00
  %1257 = fmul fast float %1251, 2.000000e+00
  %1258 = fadd fast float %1257, -1.000000e+00
  %1259 = fadd fast float %1256, %1258
  %1260 = fmul fast float %1259, 5.000000e-01
  %1261 = fsub fast float %1256, %1258
  %1262 = fmul fast float %1261, 5.000000e-01
  %1263 = call float @dx.op.unary.f32(i32 6, float %1260)  ; FAbs(value)
  %1264 = fsub fast float 1.000000e+00, %1263
  %1265 = call float @dx.op.unary.f32(i32 6, float %1262)  ; FAbs(value)
  %1266 = fsub fast float %1264, %1265
  %1267 = call float @dx.op.dot3.f32(i32 55, float %1260, float %1262, float %1266, float %1260, float %1262, float %1266)  ; Dot3(ax,ay,az,bx,by,bz)
  %1268 = call float @dx.op.unary.f32(i32 25, float %1267)  ; Rsqrt(value)
  %1269 = fmul fast float %1260, %1268
  %1270 = fmul fast float %1262, %1268
  %1271 = fmul fast float %1268, %1266
  %1272 = fmul fast float %1271, %996
  %1273 = fmul fast float %1271, %997
  %1274 = fmul fast float %1271, %998
  %1275 = fmul fast float %1269, %1019
  %1276 = fmul fast float %1269, %1020
  %1277 = fmul fast float %1269, %1021
  %1278 = fadd fast float %1275, %1272
  %1279 = fadd fast float %1276, %1273
  %1280 = fadd fast float %1277, %1274
  %1281 = fmul fast float %1270, %1025
  %1282 = fmul fast float %1270, %1026
  %1283 = fmul fast float %1270, %1027
  %1284 = fadd fast float %1278, %1281
  %1285 = fadd fast float %1279, %1282
  %1286 = fadd fast float %1280, %1283
  %1287 = call float @dx.op.dot3.f32(i32 55, float %1284, float %1285, float %1286, float %1284, float %1285, float %1286)  ; Dot3(ax,ay,az,bx,by,bz)
  %1288 = call float @dx.op.unary.f32(i32 25, float %1287)  ; Rsqrt(value)
  %1289 = fmul fast float %1284, %1288
  %1290 = fmul fast float %1285, %1288
  %1291 = fmul fast float %1286, %1288
  %1292 = icmp ne i32 %1208, 0
  %1293 = select i1 %1292, float 1.000000e+00, float 0.000000e+00
  %1294 = fmul fast float %1198, %1293
  %1295 = and i32 %1046, 1
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1297, label %1301

; <label>:1297                                    ; preds = %1206
  %1298 = fsub fast float %1289, %979
  %1299 = fsub fast float %1290, %980
  %1300 = fsub fast float %1291, %981
  br label %1301

; <label>:1301                                    ; preds = %1297, %1206
  %1302 = phi float [ %1298, %1297 ], [ %1289, %1206 ]
  %1303 = phi float [ %1299, %1297 ], [ %1290, %1206 ]
  %1304 = phi float [ %1300, %1297 ], [ %1291, %1206 ]
  %1305 = fmul float %1304, %1294
  %1306 = fmul float %1303, %1294
  %1307 = fmul float %1302, %1294
  %1308 = fadd fast float %1307, %979
  %1309 = fadd fast float %1306, %980
  %1310 = fadd fast float %1305, %981
  %1311 = icmp ne i32 %1207, 0
  %1312 = select i1 %1311, float 1.000000e+00, float 0.000000e+00
  %1313 = fmul fast float %1198, %1312
  %1314 = fsub fast float %1252, %986
  %1315 = fsub fast float %1253, %987
  %1316 = fsub fast float %1254, %988
  %1317 = fmul fast float %1314, %1313
  %1318 = fmul fast float %1315, %1313
  %1319 = fmul fast float %1316, %1313
  %1320 = fadd fast float %1317, %986
  %1321 = fadd fast float %1318, %987
  %1322 = fadd fast float %1319, %988
  %1323 = fsub fast float %1225, %985
  %1324 = fmul fast float %1323, %1313
  %1325 = fadd fast float %1324, %985
  %1326 = fmul fast float %1313, %972
  %1327 = fsub fast float %972, %1326
  %1328 = fmul fast float %1313, %971
  %1329 = fsub fast float %971, %1328
  %1330 = bitcast float %1040 to i32
  %1331 = lshr i32 %1330, 16
  %1332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1331)  ; LegacyF16ToF32(value)
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 1
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1337, label %1362

; <label>:1337                                    ; preds = %1301
  %1338 = fadd fast float %1225, 0xBFB99999A0000000
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fmul fast float %1339, 0x3FF1C71C80000000
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fmul fast float %1342, %1252
  %1344 = fmul fast float %1342, %1253
  %1345 = fmul fast float %1342, %1254
  %1346 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1347 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1348 = call float @dx.op.unary.f32(i32 7, float %1345)  ; Saturate(value)
  %1349 = call float @dx.op.binary.f32(i32 35, float %1347, float %1348)  ; FMax(a,b)
  %1350 = call float @dx.op.binary.f32(i32 35, float %1346, float %1349)  ; FMax(a,b)
  %1351 = fcmp fast ogt float %1350, 0.000000e+00
  %1352 = bitcast float %1350 to i32
  %1353 = sub nsw i32 2129859010, %1352
  %1354 = bitcast i32 %1353 to float
  %1355 = select i1 %1351, float %1354, float 0.000000e+00
  %1356 = fmul fast float %1346, %1332
  %1357 = fmul fast float %1347, %1332
  %1358 = fmul fast float %1348, %1332
  %1359 = fmul fast float %1356, %1355
  %1360 = fmul fast float %1357, %1355
  %1361 = fmul fast float %1358, %1355
  br label %1362

; <label>:1362                                    ; preds = %1337, %1301
  %1363 = phi float [ %1332, %1301 ], [ %1359, %1337 ]
  %1364 = phi float [ %1332, %1301 ], [ %1360, %1337 ]
  %1365 = phi float [ %1332, %1301 ], [ %1361, %1337 ]
  %1366 = fsub fast float %1363, %973
  %1367 = fsub fast float %1364, %974
  %1368 = fsub fast float %1365, %975
  %1369 = fmul fast float %1366, %1313
  %1370 = fmul fast float %1367, %1313
  %1371 = fmul fast float %1368, %1313
  %1372 = fadd fast float %1369, %973
  %1373 = fadd fast float %1370, %974
  %1374 = fadd fast float %1371, %975
  %1375 = fadd fast float %1198, %984
  %1376 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1377 = fsub fast float %1245, %983
  %1378 = fmul fast float %1377, %1294
  %1379 = fadd fast float %1378, %983
  %1380 = fsub fast float %1231, %982
  %1381 = fmul fast float %1380, %1294
  %1382 = fadd fast float %1381, %982
  br i1 %1296, label %1391, label %1383

; <label>:1383                                    ; preds = %1362
  %1384 = and i32 %1046, 32768
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1401, label %1386

; <label>:1386                                    ; preds = %1383
  %1387 = fmul fast float %1294, 1.270000e+02
  %1388 = fadd fast float %1387, %968
  %1389 = fadd fast float %1387, %969
  %1390 = fadd fast float %1387, %970
  br label %1401

; <label>:1391                                    ; preds = %1362
  %1392 = fsub fast float 1.270000e+02, %968
  %1393 = fsub fast float 1.270000e+02, %969
  %1394 = fsub fast float 1.270000e+02, %970
  %1395 = fmul fast float %1294, %1392
  %1396 = fmul fast float %1294, %1393
  %1397 = fmul fast float %1294, %1394
  %1398 = fadd fast float %1395, %968
  %1399 = fadd fast float %1396, %969
  %1400 = fadd fast float %1397, %970
  br label %1401

; <label>:1401                                    ; preds = %1391, %1386, %1383
  %1402 = phi float [ %1388, %1386 ], [ %968, %1383 ], [ %1398, %1391 ]
  %1403 = phi float [ %1389, %1386 ], [ %969, %1383 ], [ %1399, %1391 ]
  %1404 = phi float [ %1390, %1386 ], [ %970, %1383 ], [ %1400, %1391 ]
  %1405 = call float @dx.op.dot3.f32(i32 55, float %1252, float %1253, float %1254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.CBufRet.f32 %1406, 1
  %1409 = fmul fast float %1408, %1405
  %1410 = fadd fast float %1409, %1407
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = bitcast float %1034 to i32
  %1413 = and i32 %1412, 65535
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = lshr i32 %1412, 16
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = fcmp fast oge float %1414, 0.000000e+00
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1420 = select i1 %1417, float %1414, float %1419
  %1421 = fadd fast float %1420, %1416
  %1422 = fsub fast float %1411, %967
  %1423 = fmul fast float %1422, %1198
  %1424 = fadd fast float %1423, %967
  %1425 = fmul fast float %1421, %1198
  %1426 = call float @dx.op.binary.f32(i32 35, float %966, float %1425)  ; FMax(a,b)
  %1427 = and i32 %1046, 16
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1450, label %1429

; <label>:1429                                    ; preds = %1401
  %1430 = add i32 %1037, 0
  %1431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1430, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1432 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1431, %dx.types.Handle %1211, float %1139, float %1142, float undef, float undef, i32 0, i32 0, i32 undef, float %1144, float %1146, float undef, float %1148, float %1150, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1433 = extractvalue %dx.types.ResRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.ResRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.ResRet.f32 %1432, 2
  %1436 = and i32 %1330, 65535
  %1437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1436)  ; LegacyF16ToF32(value)
  %1438 = fmul fast float %1433, %1031
  %1439 = fmul fast float %1434, %1032
  %1440 = fmul fast float %1435, %1033
  %1441 = and i32 %1046, 16384
  %1442 = icmp ne i32 %1441, 0
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 0
  %1445 = select i1 %1442, float %1444, float 1.000000e+00
  %1446 = fmul fast float %1445, %1437
  %1447 = fmul fast float %1438, %1446
  %1448 = fmul fast float %1439, %1446
  %1449 = fmul fast float %1440, %1446
  br label %1450

; <label>:1450                                    ; preds = %1429, %1401
  %1451 = phi float [ %1447, %1429 ], [ 0.000000e+00, %1401 ]
  %1452 = phi float [ %1448, %1429 ], [ 0.000000e+00, %1401 ]
  %1453 = phi float [ %1449, %1429 ], [ 0.000000e+00, %1401 ]
  %1454 = fsub fast float %1451, %976
  %1455 = fsub fast float %1452, %977
  %1456 = fsub fast float %1453, %978
  %1457 = fmul fast float %1454, %1198
  %1458 = fmul fast float %1455, %1198
  %1459 = fmul fast float %1456, %1198
  %1460 = fadd fast float %1457, %976
  %1461 = fadd fast float %1458, %977
  %1462 = fadd fast float %1459, %978
  br label %1095

; <label>:1463                                    ; preds = %1095
  br label %1464

; <label>:1464                                    ; preds = %1463, %859
  %1465 = phi float [ 0.000000e+00, %859 ], [ %1096, %1463 ]
  %1466 = phi float [ %881, %859 ], [ %1097, %1463 ]
  %1467 = phi float [ %879, %859 ], [ %1098, %1463 ]
  %1468 = phi float [ %871, %859 ], [ %1099, %1463 ]
  %1469 = phi float [ %872, %859 ], [ %1100, %1463 ]
  %1470 = phi float [ %873, %859 ], [ %1101, %1463 ]
  %1471 = phi float [ 0.000000e+00, %859 ], [ %1102, %1463 ]
  %1472 = phi float [ 0.000000e+00, %859 ], [ %1103, %1463 ]
  %1473 = phi float [ %865, %859 ], [ %1104, %1463 ]
  %1474 = phi float [ %866, %859 ], [ %1105, %1463 ]
  %1475 = phi float [ %867, %859 ], [ %1106, %1463 ]
  %1476 = phi float [ %868, %859 ], [ %1107, %1463 ]
  %1477 = phi float [ %869, %859 ], [ %1108, %1463 ]
  %1478 = phi float [ %870, %859 ], [ %1109, %1463 ]
  %1479 = phi float [ %907, %859 ], [ %1110, %1463 ]
  %1480 = phi float [ %908, %859 ], [ %1111, %1463 ]
  %1481 = phi float [ %909, %859 ], [ %1112, %1463 ]
  %1482 = phi float [ %877, %859 ], [ %1113, %1463 ]
  %1483 = phi float [ %876, %859 ], [ %1114, %1463 ]
  %1484 = phi float [ 0.000000e+00, %859 ], [ %1115, %1463 ]
  %1485 = phi float [ %874, %859 ], [ %1116, %1463 ]
  %1486 = phi float [ %862, %859 ], [ %1117, %1463 ]
  %1487 = phi float [ %863, %859 ], [ %1118, %1463 ]
  %1488 = phi float [ %864, %859 ], [ %1119, %1463 ]
  %1489 = call float @dx.op.dot3.f32(i32 55, float %1479, float %1480, float %1481, float %1479, float %1480, float %1481)  ; Dot3(ax,ay,az,bx,by,bz)
  %1490 = call float @dx.op.unary.f32(i32 25, float %1489)  ; Rsqrt(value)
  %1491 = fmul fast float %1490, %1479
  %1492 = fmul fast float %1490, %1480
  %1493 = fmul fast float %1490, %1481
  %1494 = fadd fast float %1484, %875
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1492, float %1493, float %1491, float %1492, float %1493)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = call float @dx.op.unary.f32(i32 25, float %1496)  ; Rsqrt(value)
  %1498 = fmul fast float %1497, %1491
  %1499 = fmul fast float %1497, %1492
  %1500 = fmul fast float %1497, %1493
  %1501 = fadd fast float %1485, 0xBFB99999A0000000
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1503 = fmul fast float %1502, 0x3FF1C71C80000000
  %1504 = call float @dx.op.binary.f32(i32 36, float %1485, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1505 = fsub fast float 1.000000e+00, %1503
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = fmul fast float %1506, %1486
  %1508 = fmul fast float %1506, %1487
  %1509 = fmul fast float %1506, %1488
  %1510 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1512 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1513 = fmul fast float %1503, %1486
  %1514 = fmul fast float %1503, %1487
  %1515 = fmul fast float %1503, %1488
  %1516 = fadd fast float %1513, %1504
  %1517 = fadd fast float %1514, %1504
  %1518 = fadd fast float %1515, %1504
  %1519 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 1
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1541, label %1527

; <label>:1527                                    ; preds = %1464
  %1528 = call float @dx.op.binary.f32(i32 35, float %1511, float %1512)  ; FMax(a,b)
  %1529 = call float @dx.op.binary.f32(i32 35, float %1510, float %1528)  ; FMax(a,b)
  %1530 = fcmp fast ogt float %1529, 0.000000e+00
  %1531 = bitcast float %1529 to i32
  %1532 = sub nsw i32 2129859010, %1531
  %1533 = bitcast i32 %1532 to float
  %1534 = select i1 %1530, float %1533, float 0.000000e+00
  %1535 = fmul fast float %1510, %1473
  %1536 = fmul fast float %1511, %1474
  %1537 = fmul fast float %1512, %1475
  %1538 = fmul fast float %1535, %1534
  %1539 = fmul fast float %1536, %1534
  %1540 = fmul fast float %1537, %1534
  br label %1541

; <label>:1541                                    ; preds = %1527, %1464
  %1542 = phi float [ %1538, %1527 ], [ %1473, %1464 ]
  %1543 = phi float [ %1539, %1527 ], [ %1474, %1464 ]
  %1544 = phi float [ %1540, %1527 ], [ %1475, %1464 ]
  %1545 = call float @dx.op.binary.f32(i32 36, float %1468, float 1.270000e+02)  ; FMin(a,b)
  %1546 = call float @dx.op.binary.f32(i32 36, float %1469, float 1.270000e+02)  ; FMin(a,b)
  %1547 = call float @dx.op.binary.f32(i32 36, float %1470, float 1.270000e+02)  ; FMin(a,b)
  %1548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.i32 %1548, 3
  %1550 = and i32 %1549, 8
  %1551 = icmp ne i32 %1550, 0
  %1552 = call float @dx.op.binary.f32(i32 35, float %1510, float %1486)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1511, float %1486)  ; FMax(a,b)
  %1554 = call float @dx.op.binary.f32(i32 35, float %1512, float %1486)  ; FMax(a,b)
  %1555 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1556 = select i1 %188, float %1486, float %1510
  %1557 = select i1 %188, float %1555, float %1511
  %1558 = select i1 %188, float 1.000000e+00, float %1512
  %1559 = select i1 %1551, float %1552, float %1556
  %1560 = select i1 %1551, float %1553, float %1557
  %1561 = select i1 %1551, float %1554, float %1558
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1543, float %1544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = select i1 %188, float %1562, float %1542
  %1564 = select i1 %188, float %1562, float %1543
  %1565 = select i1 %188, float %1562, float %1544
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %1567, 0
  %1569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1569, %dx.types.Handle %69, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = extractvalue %dx.types.ResRet.f32 %1570, 3
  %1575 = fmul fast float %1571, 2.000000e+00
  %1576 = fadd fast float %1575, -1.000000e+00
  %1577 = fmul fast float %1572, 2.000000e+00
  %1578 = fadd fast float %1577, -1.000000e+00
  %1579 = fmul fast float %1576, %78
  %1580 = fmul fast float %1576, %79
  %1581 = fmul fast float %1576, %80
  %1582 = fmul fast float %1578, %91
  %1583 = fmul fast float %1578, %92
  %1584 = fmul fast float %1578, %93
  %1585 = fadd fast float %1579, %1582
  %1586 = fadd fast float %1580, %1583
  %1587 = fadd fast float %1581, %1584
  %1588 = call float @dx.op.dot3.f32(i32 55, float %1585, float %1586, float %1587, float %1585, float %1586, float %1587)  ; Dot3(ax,ay,az,bx,by,bz)
  %1589 = call float @dx.op.unary.f32(i32 25, float %1588)  ; Rsqrt(value)
  %1590 = fmul fast float %1585, %1589
  %1591 = fmul fast float %1586, %1589
  %1592 = fmul fast float %1587, %1589
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = bitcast i32 %1594 to float
  %1596 = fmul fast float %1595, %1573
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1598 = extractvalue %dx.types.ResRet.i32 %1593, 1
  %1599 = bitcast i32 %1598 to float
  %1600 = fmul fast float %1599, %1574
  %1601 = fmul fast float %1600, %1498
  %1602 = fmul fast float %1600, %1499
  %1603 = fmul fast float %1600, %1500
  %1604 = fadd fast float %1601, %1590
  %1605 = fadd fast float %1602, %1591
  %1606 = fadd fast float %1603, %1592
  %1607 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1605, float %1606, float %1604, float %1605, float %1606)  ; Dot3(ax,ay,az,bx,by,bz)
  %1608 = call float @dx.op.unary.f32(i32 25, float %1607)  ; Rsqrt(value)
  %1609 = fmul fast float %1604, %1608
  %1610 = fmul fast float %1605, %1608
  %1611 = fmul fast float %1606, %1608
  %1612 = and i32 %164, 3
  %1613 = select i1 %158, i32 %1612, i32 0
  %1614 = icmp eq i32 %1613, 1
  br i1 %1614, label %1615, label %1691

; <label>:1615                                    ; preds = %1541
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1619 = fadd fast float %1617, %127
  %1620 = fadd fast float %1618, %128
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 0
  %1623 = extractvalue %dx.types.CBufRet.f32 %1621, 1
  %1624 = fsub fast float %1619, %1622
  %1625 = fsub fast float %1620, %1623
  %1626 = fmul fast float %1624, %1624
  %1627 = fmul fast float %1625, %1625
  %1628 = fadd fast float %1626, %1627
  %1629 = call float @dx.op.unary.f32(i32 24, float %1628)  ; Sqrt(value)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1631 = fcmp fast olt float %1629, %1630
  br i1 %1631, label %1632, label %1685

; <label>:1632                                    ; preds = %1615
  %1633 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1634 = fadd fast float %1633, %129
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1645 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1646 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1647 = fadd fast float %1644, %1619
  %1648 = fadd fast float %1645, %1620
  %1649 = fadd fast float %1634, %1646
  %1650 = fmul fast float %1647, %1636
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1648, float %1638, float %1650)  ; FMad(a,b,c)
  %1652 = call float @dx.op.tertiary.f32(i32 46, float %1649, float %1640, float %1651)  ; FMad(a,b,c)
  %1653 = fmul fast float %1647, %1641
  %1654 = call float @dx.op.tertiary.f32(i32 46, float %1648, float %1642, float %1653)  ; FMad(a,b,c)
  %1655 = call float @dx.op.tertiary.f32(i32 46, float %1649, float %1643, float %1654)  ; FMad(a,b,c)
  %1656 = fsub fast float %1652, %1644
  %1657 = fsub fast float %1655, %1645
  %1658 = fsub fast float %1656, %1622
  %1659 = fadd fast float %1658, %1630
  %1660 = fsub fast float %1657, %1623
  %1661 = fadd fast float %1660, %1630
  %1662 = extractvalue %dx.types.CBufRet.f32 %1621, 3
  %1663 = fmul fast float %1659, %1662
  %1664 = fmul fast float %1661, %1662
  %1665 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1666 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1667 = fsub fast float 1.000000e+00, %1665
  %1668 = fsub fast float 1.000000e+00, %1666
  %1669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %1667, float %1668, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = fcmp fast ugt float %1670, 0.000000e+00
  br i1 %1671, label %1672, label %1685

; <label>:1672                                    ; preds = %1632
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1675 = fmul fast float %1674, %1670
  %1676 = extractvalue %dx.types.CBufRet.f32 %1673, 3
  %1677 = fadd fast float %1676, %1675
  %1678 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1679 = fadd fast float %1677, %1646
  %1680 = fmul fast float %1652, %1640
  %1681 = call float @dx.op.tertiary.f32(i32 46, float %1655, float %1643, float %1680)  ; FMad(a,b,c)
  %1682 = call float @dx.op.tertiary.f32(i32 46, float %1679, float %1678, float %1681)  ; FMad(a,b,c)
  %1683 = fsub fast float %1682, %1646
  %1684 = fsub fast float %1683, %1633
  br label %1685

; <label>:1685                                    ; preds = %1672, %1632, %1615
  %1686 = phi i1 [ true, %1672 ], [ false, %1632 ], [ false, %1615 ]
  %1687 = phi float [ %1684, %1672 ], [ -1.310720e+05, %1632 ], [ -1.310720e+05, %1615 ]
  %1688 = fsub fast float %1687, %129
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1690 = select i1 %1686, float %1689, float 1.000000e+00
  br label %1691

; <label>:1691                                    ; preds = %1685, %1541
  %1692 = phi float [ %1690, %1685 ], [ 0.000000e+00, %1541 ]
  %1693 = icmp eq i32 %1613, 3
  %1694 = select i1 %1693, float 1.000000e+00, float %1692
  %1695 = call float @dx.op.binary.f32(i32 35, float %1465, float %1694)  ; FMax(a,b)
  %1696 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1697 = fcmp fast une float %1696, 0.000000e+00
  %1698 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1699 = call float @dx.op.unary.f32(i32 25, float %1698)  ; Rsqrt(value)
  br i1 %1697, label %1707, label %1700

; <label>:1700                                    ; preds = %1691
  %1701 = fmul fast float %1699, %127
  %1702 = fmul fast float %1699, %128
  %1703 = fmul fast float %1699, %129
  %1704 = fsub fast float -0.000000e+00, %1701
  %1705 = fsub fast float -0.000000e+00, %1702
  %1706 = fsub fast float -0.000000e+00, %1703
  br label %1875

; <label>:1707                                    ; preds = %1691
  %1708 = fmul fast float %127, %1699
  %1709 = fsub fast float -0.000000e+00, %1708
  %1710 = fmul fast float %128, %1699
  %1711 = fsub fast float -0.000000e+00, %1710
  %1712 = fmul fast float %129, %1699
  %1713 = fsub fast float -0.000000e+00, %1712
  %1714 = call float @dx.op.dot3.f32(i32 55, float %1709, float %1711, float %1713, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %1715 = fmul fast float %1696, 2.500000e+00
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fmul fast float %1696, 0x4013FFFFE0000000
  %1718 = fadd fast float %1717, 0xBFFFFFFFE0000000
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = fmul fast float %1696, 0x4004000020000000
  %1721 = fadd fast float %1720, 0xBFF8000040000000
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1724 = fmul fast float %1501, 1.000000e+01
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1726 = fmul fast float %1725, 2.000000e+00
  %1727 = fsub fast float 3.000000e+00, %1726
  %1728 = fmul fast float %1725, %1725
  %1729 = fmul fast float %1728, %1727
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fsub fast float 0x3FE3333340000000, %1522
  %1732 = fmul fast float %1731, 0x400AAAAAA0000000
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1734 = fmul fast float %1730, %1733
  %1735 = fmul fast float %1559, 0x3FEA2B8620000000
  %1736 = fmul fast float %1560, 0x3FEA2B8620000000
  %1737 = fmul fast float %1561, 0x3FEA2B8620000000
  %1738 = fadd fast float %1735, 0x3FC81DFBA0000000
  %1739 = fmul fast float %1738, %1559
  %1740 = fadd fast float %1739, 0x3F910E6020000000
  %1741 = fadd fast float %1736, 0x3FC81DFBA0000000
  %1742 = fmul fast float %1741, %1560
  %1743 = fadd fast float %1742, 0x3F910E6020000000
  %1744 = fadd fast float %1737, 0x3FC81DFBA0000000
  %1745 = fmul fast float %1744, %1561
  %1746 = fadd fast float %1745, 0x3F910E6020000000
  %1747 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1748 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  %1749 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1750 = fsub fast float %1747, %1559
  %1751 = fsub fast float %1748, %1560
  %1752 = fsub fast float %1749, %1561
  %1753 = fmul fast float %1750, %1723
  %1754 = fmul fast float %1753, %1734
  %1755 = fmul fast float %1751, %1723
  %1756 = fmul fast float %1755, %1734
  %1757 = fmul fast float %1752, %1723
  %1758 = fmul fast float %1757, %1734
  %1759 = fadd fast float %1754, %1559
  %1760 = fadd fast float %1756, %1560
  %1761 = fadd fast float %1758, %1561
  %1762 = fmul fast float %1482, %1482
  %1763 = fmul fast float %1762, %1762
  %1764 = fadd fast float %1719, 1.000000e+00
  %1765 = fsub fast float %1764, %1734
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1767 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1768 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1769 = fsub fast float 1.000000e+00, %1763
  %1770 = call float @dx.op.binary.f32(i32 36, float %1766, float %1769)  ; FMin(a,b)
  %1771 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1772 = call float @dx.op.binary.f32(i32 35, float %1770, float %1771)  ; FMax(a,b)
  %1773 = fadd fast float %1768, 0xBFE4CCCCC0000000
  %1774 = fmul fast float %1773, 0x4006DB6DA0000000
  %1775 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1776 = fmul fast float %1775, 2.000000e+00
  %1777 = fsub fast float 3.000000e+00, %1776
  %1778 = bitcast float %1519 to i32
  %1779 = ashr i32 %1778, 1
  %1780 = add nsw i32 %1779, 532487669
  %1781 = bitcast i32 %1780 to float
  %1782 = fsub fast float 1.000000e+00, %1781
  %1783 = bitcast float %1782 to i32
  %1784 = sub nsw i32 2129859010, %1783
  %1785 = bitcast i32 %1784 to float
  %1786 = fmul fast float %1785, 2.000000e+00
  %1787 = bitcast float %1520 to i32
  %1788 = ashr i32 %1787, 1
  %1789 = add nsw i32 %1788, 532487669
  %1790 = bitcast i32 %1789 to float
  %1791 = fsub fast float 1.000000e+00, %1790
  %1792 = bitcast float %1791 to i32
  %1793 = sub nsw i32 2129859010, %1792
  %1794 = bitcast i32 %1793 to float
  %1795 = fmul fast float %1794, 2.000000e+00
  %1796 = bitcast float %1521 to i32
  %1797 = ashr i32 %1796, 1
  %1798 = add nsw i32 %1797, 532487669
  %1799 = bitcast i32 %1798 to float
  %1800 = fsub fast float 1.000000e+00, %1799
  %1801 = bitcast float %1800 to i32
  %1802 = sub nsw i32 2129859010, %1801
  %1803 = bitcast i32 %1802 to float
  %1804 = fmul fast float %1803, 2.000000e+00
  %1805 = fsub fast float 0x4002A9FBE0000000, %1786
  %1806 = fadd fast float %1786, 0x3FD54FDF00000000
  %1807 = bitcast float %1806 to i32
  %1808 = sub nsw i32 2129859010, %1807
  %1809 = bitcast i32 %1808 to float
  %1810 = fmul fast float %1809, %1805
  %1811 = fmul fast float %1810, %1810
  %1812 = fsub fast float 0x4002A9FBE0000000, %1795
  %1813 = fadd fast float %1795, 0x3FD54FDF00000000
  %1814 = bitcast float %1813 to i32
  %1815 = sub nsw i32 2129859010, %1814
  %1816 = bitcast i32 %1815 to float
  %1817 = fmul fast float %1816, %1812
  %1818 = fmul fast float %1817, %1817
  %1819 = fsub fast float 0x4002A9FBE0000000, %1804
  %1820 = fadd fast float %1804, 0x3FD54FDF00000000
  %1821 = bitcast float %1820 to i32
  %1822 = sub nsw i32 2129859010, %1821
  %1823 = bitcast i32 %1822 to float
  %1824 = fmul fast float %1823, %1819
  %1825 = fmul fast float %1824, %1824
  %1826 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1811)  ; FMax(a,b)
  %1827 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1818)  ; FMax(a,b)
  %1828 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1825)  ; FMax(a,b)
  %1829 = fsub fast float 1.000000e+00, %1714
  %1830 = fadd fast float %1829, %1730
  %1831 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1832 = fsub fast float 1.000000e+00, %1694
  %1833 = fmul fast float %1772, %1832
  %1834 = fmul fast float %1775, %1775
  %1835 = fmul fast float %1834, %1833
  %1836 = fmul fast float %1835, %1777
  %1837 = fmul fast float %1832, 0xBFE99999A0000000
  %1838 = fmul fast float %1837, %1723
  %1839 = fmul fast float %1838, %1734
  %1840 = fadd fast float %1839, 1.000000e+00
  %1841 = fadd fast float %1522, -1.000000e+00
  %1842 = fmul fast float %1840, %1841
  %1843 = fadd fast float %1842, 1.000000e+00
  %1844 = fsub fast float %1826, %1519
  %1845 = fsub fast float %1827, %1520
  %1846 = fsub fast float %1828, %1521
  %1847 = fmul fast float %1836, %1844
  %1848 = fmul fast float %1836, %1845
  %1849 = fmul fast float %1836, %1846
  %1850 = fadd fast float %1847, %1519
  %1851 = fadd fast float %1848, %1520
  %1852 = fadd fast float %1849, %1521
  %1853 = fsub fast float %75, %1498
  %1854 = fsub fast float %76, %1499
  %1855 = fsub fast float %77, %1500
  %1856 = fmul fast float %1836, %1853
  %1857 = fmul fast float %1836, %1854
  %1858 = fmul fast float %1836, %1855
  %1859 = fadd fast float %1856, %1498
  %1860 = fadd fast float %1857, %1499
  %1861 = fadd fast float %1858, %1500
  %1862 = fmul fast float %1836, %1831
  %1863 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1864 = fsub fast float 1.000000e+00, %1863
  %1865 = fmul fast float %1862, %1864
  %1866 = fadd fast float %1865, %1863
  %1867 = fsub fast float 1.000000e+00, %1482
  %1868 = fmul fast float %1836, %1867
  %1869 = fadd fast float %1868, %1482
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1859, float %1860, float %1861, float %1859, float %1860, float %1861)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = call float @dx.op.unary.f32(i32 25, float %1870)  ; Rsqrt(value)
  %1872 = fmul fast float %1859, %1871
  %1873 = fmul fast float %1860, %1871
  %1874 = fmul fast float %1861, %1871
  br label %1875

; <label>:1875                                    ; preds = %1707, %1700
  %1876 = phi float [ %1706, %1700 ], [ %1713, %1707 ]
  %1877 = phi float [ %1705, %1700 ], [ %1711, %1707 ]
  %1878 = phi float [ %1704, %1700 ], [ %1709, %1707 ]
  %1879 = phi float [ %1703, %1700 ], [ %1712, %1707 ]
  %1880 = phi float [ %1702, %1700 ], [ %1710, %1707 ]
  %1881 = phi float [ %1701, %1700 ], [ %1708, %1707 ]
  %1882 = phi float [ %1519, %1700 ], [ %1850, %1707 ]
  %1883 = phi float [ %1520, %1700 ], [ %1851, %1707 ]
  %1884 = phi float [ %1521, %1700 ], [ %1852, %1707 ]
  %1885 = phi float [ %1559, %1700 ], [ %1759, %1707 ]
  %1886 = phi float [ %1560, %1700 ], [ %1760, %1707 ]
  %1887 = phi float [ %1561, %1700 ], [ %1761, %1707 ]
  %1888 = phi float [ %1498, %1700 ], [ %1872, %1707 ]
  %1889 = phi float [ %1499, %1700 ], [ %1873, %1707 ]
  %1890 = phi float [ %1500, %1700 ], [ %1874, %1707 ]
  %1891 = phi float [ %1522, %1700 ], [ %1866, %1707 ]
  %1892 = phi float [ %1482, %1700 ], [ %1869, %1707 ]
  %1893 = fsub fast float -0.000000e+00, %1890
  %1894 = fsub fast float -0.000000e+00, %1889
  %1895 = fsub fast float -0.000000e+00, %1888
  %1896 = select i1 %188, float 0.000000e+00, float %1884
  %1897 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1889, float %1890, float %1878, float %1877, float %1876)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = call float @dx.op.dot3.f32(i32 55, float %1881, float %1880, float %1879, float %1888, float %1889, float %1890)  ; Dot3(ax,ay,az,bx,by,bz)
  %1900 = fmul fast float %1899, 2.000000e+00
  %1901 = fmul fast float %1900, %1888
  %1902 = fmul fast float %1900, %1889
  %1903 = fmul fast float %1900, %1890
  %1904 = fsub fast float %1881, %1901
  %1905 = fsub fast float %1880, %1902
  %1906 = fsub fast float %1879, %1903
  %1907 = fmul fast float %1880, %1611
  %1908 = fmul fast float %1879, %1610
  %1909 = fsub fast float %1907, %1908
  %1910 = fmul fast float %1879, %1609
  %1911 = fmul fast float %1881, %1611
  %1912 = fsub fast float %1910, %1911
  %1913 = fmul fast float %1881, %1610
  %1914 = fmul fast float %1880, %1609
  %1915 = fsub fast float %1913, %1914
  %1916 = fmul fast float %1912, %1611
  %1917 = fmul fast float %1915, %1610
  %1918 = fmul fast float %1915, %1609
  %1919 = fmul fast float %1909, %1611
  %1920 = fmul fast float %1909, %1610
  %1921 = fmul fast float %1912, %1609
  %1922 = fsub fast float %1895, %1917
  %1923 = fadd fast float %1922, %1916
  %1924 = fsub fast float %1894, %1919
  %1925 = fadd fast float %1924, %1918
  %1926 = fsub fast float %1893, %1921
  %1927 = fadd fast float %1926, %1920
  %1928 = fmul fast float %1923, %1597
  %1929 = fmul fast float %1925, %1597
  %1930 = fmul fast float %1927, %1597
  %1931 = fadd fast float %1928, %1888
  %1932 = fadd fast float %1929, %1889
  %1933 = fadd fast float %1930, %1890
  %1934 = call float @dx.op.dot3.f32(i32 55, float %1931, float %1932, float %1933, float %1931, float %1932, float %1933)  ; Dot3(ax,ay,az,bx,by,bz)
  %1935 = call float @dx.op.unary.f32(i32 25, float %1934)  ; Rsqrt(value)
  %1936 = fmul fast float %1931, %1935
  %1937 = fmul fast float %1932, %1935
  %1938 = fmul fast float %1933, %1935
  %1939 = call float @dx.op.dot3.f32(i32 55, float %1881, float %1880, float %1879, float %1936, float %1937, float %1938)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = fmul fast float %1939, 2.000000e+00
  %1941 = fmul fast float %1936, %1940
  %1942 = fmul fast float %1937, %1940
  %1943 = fmul fast float %1938, %1940
  %1944 = fsub fast float %1881, %1941
  %1945 = fsub fast float %1880, %1942
  %1946 = fsub fast float %1879, %1943
  %1947 = call float @dx.op.binary.f32(i32 36, float %1892, float 1.000000e+00)  ; FMin(a,b)
  %1948 = fsub fast float 1.000000e+00, %1892
  %1949 = bitcast float %1948 to i32
  %1950 = sub nsw i32 2129859010, %1949
  %1951 = bitcast i32 %1950 to float
  %1952 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %47)  ; FMax(a,b)
  %1953 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = fcmp fast oeq float %1953, 0.000000e+00
  %1955 = fcmp fast oeq float %1952, 0.000000e+00
  %1956 = or i1 %1955, %1954
  br i1 %1956, label %1986, label %1957

; <label>:1957                                    ; preds = %1875
  %1958 = fsub fast float -0.000000e+00, %50
  %1959 = fsub fast float -0.000000e+00, %48
  %1960 = call float @dx.op.unary.f32(i32 24, float %1953)  ; Sqrt(value)
  %1961 = fdiv fast float %1960, %1952
  %1962 = fcmp fast ogt float %1961, 0x3FFB6F8900000000
  %1963 = select i1 %1962, float 0x3FFB6F8900000000, float %1961
  %1964 = fmul fast float %1963, 0x3FE8A23460000000
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1963, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1967 = fmul fast float %1965, %1952
  %1968 = fmul fast float %1966, 0x3FF279A740000000
  %1969 = fadd fast float %1968, -1.000000e+00
  %1970 = call float @dx.op.dot3.f32(i32 55, float %1958, float %1959, float %49, float %1958, float %1959, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %1971 = call float @dx.op.unary.f32(i32 25, float %1970)  ; Rsqrt(value)
  %1972 = fmul fast float %1971, %1958
  %1973 = fmul fast float %1971, %1959
  %1974 = fmul fast float %1971, %49
  %1975 = fmul fast float %1969, %1969
  %1976 = fsub fast float 1.000000e+00, %1975
  %1977 = fmul fast float %1966, 0x40005F8BE0000000
  %1978 = fsub fast float 0x400C5BF8A0000000, %1977
  %1979 = fdiv fast float %1967, %1978
  %1980 = fmul fast float %1979, 0x3FEE31C3C0000000
  %1981 = fmul fast float %1980, %1976
  %1982 = fmul fast float %1966, 0x3FDACB7480000000
  %1983 = fadd fast float %1982, 0xBFD7347680000000
  %1984 = fmul fast float %1983, %1979
  %1985 = fmul fast float %1984, %1976
  br label %1986

; <label>:1986                                    ; preds = %1957, %1875
  %1987 = phi float [ %1972, %1957 ], [ 0.000000e+00, %1875 ]
  %1988 = phi float [ %1973, %1957 ], [ 0.000000e+00, %1875 ]
  %1989 = phi float [ %1974, %1957 ], [ 0.000000e+00, %1875 ]
  %1990 = phi float [ %1981, %1957 ], [ 0.000000e+00, %1875 ]
  %1991 = phi float [ %1985, %1957 ], [ 0.000000e+00, %1875 ]
  %1992 = call float @dx.op.dot3.f32(i32 55, float %1987, float %1988, float %1989, float %1888, float %1889, float %1890)  ; Dot3(ax,ay,az,bx,by,bz)
  %1993 = fmul fast float %1992, 0x3FDF454380000000
  %1994 = fmul fast float %1992, %1992
  %1995 = fmul fast float %1994, 0x3FEE471020000000
  %1996 = fadd fast float %1995, 0xBFD42F6020000000
  %1997 = fmul fast float %1952, 0x3FD20DD760000000
  %1998 = fmul fast float %1996, %1991
  %1999 = fadd fast float %1998, %1997
  %2000 = fmul fast float %1993, %1990
  %2001 = fadd fast float %1999, %2000
  %2002 = fsub fast float %1999, %2000
  %2003 = call float @dx.op.dot3.f32(i32 55, float %1987, float %1988, float %1989, float %1944, float %1945, float %1946)  ; Dot3(ax,ay,az,bx,by,bz)
  %2004 = fmul fast float %2003, 0x3FDF454380000000
  %2005 = fmul fast float %2003, %2003
  %2006 = fmul fast float %2005, 0x3FEE471020000000
  %2007 = fadd fast float %2006, 0xBFD42F6020000000
  %2008 = call float @dx.op.dot3.f32(i32 55, float %1952, float %1990, float %1991, float 0x3FD20DD760000000, float %2004, float %2007)  ; Dot3(ax,ay,az,bx,by,bz)
  %2009 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %43)  ; FMax(a,b)
  %2010 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %2011 = fcmp fast oeq float %2010, 0.000000e+00
  %2012 = fcmp fast oeq float %2009, 0.000000e+00
  %2013 = or i1 %2012, %2011
  br i1 %2013, label %2043, label %2014

; <label>:2014                                    ; preds = %1986
  %2015 = fsub fast float -0.000000e+00, %46
  %2016 = fsub fast float -0.000000e+00, %44
  %2017 = call float @dx.op.unary.f32(i32 24, float %2010)  ; Sqrt(value)
  %2018 = fdiv fast float %2017, %2009
  %2019 = fcmp fast ogt float %2018, 0x3FFB6F8900000000
  %2020 = select i1 %2019, float 0x3FFB6F8900000000, float %2018
  %2021 = fmul fast float %2020, 0x3FE8A23460000000
  %2022 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2023 = call float @dx.op.binary.f32(i32 35, float %2020, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2024 = fmul fast float %2022, %2009
  %2025 = fmul fast float %2023, 0x3FF279A740000000
  %2026 = fadd fast float %2025, -1.000000e+00
  %2027 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2016, float %45, float %2015, float %2016, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %2028 = call float @dx.op.unary.f32(i32 25, float %2027)  ; Rsqrt(value)
  %2029 = fmul fast float %2028, %2015
  %2030 = fmul fast float %2028, %2016
  %2031 = fmul fast float %2028, %45
  %2032 = fmul fast float %2026, %2026
  %2033 = fsub fast float 1.000000e+00, %2032
  %2034 = fmul fast float %2023, 0x40005F8BE0000000
  %2035 = fsub fast float 0x400C5BF8A0000000, %2034
  %2036 = fdiv fast float %2024, %2035
  %2037 = fmul fast float %2036, 0x3FEE31C3C0000000
  %2038 = fmul fast float %2037, %2033
  %2039 = fmul fast float %2023, 0x3FDACB7480000000
  %2040 = fadd fast float %2039, 0xBFD7347680000000
  %2041 = fmul fast float %2040, %2036
  %2042 = fmul fast float %2041, %2033
  br label %2043

; <label>:2043                                    ; preds = %2014, %1986
  %2044 = phi float [ %2029, %2014 ], [ 0.000000e+00, %1986 ]
  %2045 = phi float [ %2030, %2014 ], [ 0.000000e+00, %1986 ]
  %2046 = phi float [ %2031, %2014 ], [ 0.000000e+00, %1986 ]
  %2047 = phi float [ %2038, %2014 ], [ 0.000000e+00, %1986 ]
  %2048 = phi float [ %2042, %2014 ], [ 0.000000e+00, %1986 ]
  %2049 = call float @dx.op.dot3.f32(i32 55, float %2044, float %2045, float %2046, float %1888, float %1889, float %1890)  ; Dot3(ax,ay,az,bx,by,bz)
  %2050 = fmul fast float %2049, 0x3FDF454380000000
  %2051 = fmul fast float %2049, %2049
  %2052 = fmul fast float %2051, 0x3FEE471020000000
  %2053 = fadd fast float %2052, 0xBFD42F6020000000
  %2054 = fmul fast float %2009, 0x3FD20DD760000000
  %2055 = fmul fast float %2053, %2048
  %2056 = fadd fast float %2055, %2054
  %2057 = fmul fast float %2050, %2047
  %2058 = fadd fast float %2056, %2057
  %2059 = fsub fast float %2056, %2057
  %2060 = call float @dx.op.dot3.f32(i32 55, float %2044, float %2045, float %2046, float %1944, float %1945, float %1946)  ; Dot3(ax,ay,az,bx,by,bz)
  %2061 = fmul fast float %2060, 0x3FDF454380000000
  %2062 = fmul fast float %2060, %2060
  %2063 = fmul fast float %2062, 0x3FEE471020000000
  %2064 = fadd fast float %2063, 0xBFD42F6020000000
  %2065 = call float @dx.op.dot3.f32(i32 55, float %2009, float %2047, float %2048, float 0x3FD20DD760000000, float %2061, float %2064)  ; Dot3(ax,ay,az,bx,by,bz)
  %2066 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %39)  ; FMax(a,b)
  %2067 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float %40, float %41, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %2068 = fcmp fast oeq float %2067, 0.000000e+00
  %2069 = fcmp fast oeq float %2066, 0.000000e+00
  %2070 = or i1 %2069, %2068
  br i1 %2070, label %2100, label %2071

; <label>:2071                                    ; preds = %2043
  %2072 = fsub fast float -0.000000e+00, %42
  %2073 = fsub fast float -0.000000e+00, %40
  %2074 = call float @dx.op.unary.f32(i32 24, float %2067)  ; Sqrt(value)
  %2075 = fdiv fast float %2074, %2066
  %2076 = fcmp fast ogt float %2075, 0x3FFB6F8900000000
  %2077 = select i1 %2076, float 0x3FFB6F8900000000, float %2075
  %2078 = fmul fast float %2077, 0x3FE8A23460000000
  %2079 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2080 = call float @dx.op.binary.f32(i32 35, float %2077, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2081 = fmul fast float %2079, %2066
  %2082 = fmul fast float %2080, 0x3FF279A740000000
  %2083 = fadd fast float %2082, -1.000000e+00
  %2084 = call float @dx.op.dot3.f32(i32 55, float %2072, float %2073, float %41, float %2072, float %2073, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %2085 = call float @dx.op.unary.f32(i32 25, float %2084)  ; Rsqrt(value)
  %2086 = fmul fast float %2085, %2072
  %2087 = fmul fast float %2085, %2073
  %2088 = fmul fast float %2085, %41
  %2089 = fmul fast float %2083, %2083
  %2090 = fsub fast float 1.000000e+00, %2089
  %2091 = fmul fast float %2080, 0x40005F8BE0000000
  %2092 = fsub fast float 0x400C5BF8A0000000, %2091
  %2093 = fdiv fast float %2081, %2092
  %2094 = fmul fast float %2093, 0x3FEE31C3C0000000
  %2095 = fmul fast float %2094, %2090
  %2096 = fmul fast float %2080, 0x3FDACB7480000000
  %2097 = fadd fast float %2096, 0xBFD7347680000000
  %2098 = fmul fast float %2097, %2093
  %2099 = fmul fast float %2098, %2090
  br label %2100

; <label>:2100                                    ; preds = %2071, %2043
  %2101 = phi float [ %2086, %2071 ], [ 0.000000e+00, %2043 ]
  %2102 = phi float [ %2087, %2071 ], [ 0.000000e+00, %2043 ]
  %2103 = phi float [ %2088, %2071 ], [ 0.000000e+00, %2043 ]
  %2104 = phi float [ %2095, %2071 ], [ 0.000000e+00, %2043 ]
  %2105 = phi float [ %2099, %2071 ], [ 0.000000e+00, %2043 ]
  %2106 = call float @dx.op.dot3.f32(i32 55, float %2101, float %2102, float %2103, float %1888, float %1889, float %1890)  ; Dot3(ax,ay,az,bx,by,bz)
  %2107 = fmul fast float %2106, 0x3FDF454380000000
  %2108 = fmul fast float %2106, %2106
  %2109 = fmul fast float %2108, 0x3FEE471020000000
  %2110 = fadd fast float %2109, 0xBFD42F6020000000
  %2111 = fmul fast float %2066, 0x3FD20DD760000000
  %2112 = fmul fast float %2110, %2105
  %2113 = fadd fast float %2112, %2111
  %2114 = fmul fast float %2107, %2104
  %2115 = fadd fast float %2113, %2114
  %2116 = fsub fast float %2113, %2114
  %2117 = call float @dx.op.dot3.f32(i32 55, float %2101, float %2102, float %2103, float %1944, float %1945, float %1946)  ; Dot3(ax,ay,az,bx,by,bz)
  %2118 = fmul fast float %2117, 0x3FDF454380000000
  %2119 = fmul fast float %2117, %2117
  %2120 = fmul fast float %2119, 0x3FEE471020000000
  %2121 = fadd fast float %2120, 0xBFD42F6020000000
  %2122 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2104, float %2105, float 0x3FD20DD760000000, float %2118, float %2121)  ; Dot3(ax,ay,az,bx,by,bz)
  %2123 = call float @dx.op.binary.f32(i32 35, float %2001, float 0.000000e+00)  ; FMax(a,b)
  %2124 = call float @dx.op.binary.f32(i32 35, float %2058, float 0.000000e+00)  ; FMax(a,b)
  %2125 = call float @dx.op.binary.f32(i32 35, float %2115, float 0.000000e+00)  ; FMax(a,b)
  %2126 = call float @dx.op.binary.f32(i32 35, float %2002, float 0.000000e+00)  ; FMax(a,b)
  %2127 = call float @dx.op.binary.f32(i32 35, float %2059, float 0.000000e+00)  ; FMax(a,b)
  %2128 = call float @dx.op.binary.f32(i32 35, float %2116, float 0.000000e+00)  ; FMax(a,b)
  %2129 = call float @dx.op.binary.f32(i32 35, float %2008, float 0.000000e+00)  ; FMax(a,b)
  %2130 = call float @dx.op.binary.f32(i32 35, float %2065, float 0.000000e+00)  ; FMax(a,b)
  %2131 = call float @dx.op.binary.f32(i32 35, float %2122, float 0.000000e+00)  ; FMax(a,b)
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 0
  %2134 = call float @dx.op.binary.f32(i32 36, float %1885, float %2133)  ; FMin(a,b)
  %2135 = fsub fast float 1.000000e+00, %1947
  %2136 = fmul fast float %2134, %2135
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = bitcast float %2137 to i32
  %2139 = sub nsw i32 2129859010, %2138
  %2140 = bitcast i32 %2139 to float
  %2141 = call float @dx.op.binary.f32(i32 36, float %1886, float %2133)  ; FMin(a,b)
  %2142 = fmul fast float %2141, %2135
  %2143 = fsub fast float 1.000000e+00, %2142
  %2144 = bitcast float %2143 to i32
  %2145 = sub nsw i32 2129859010, %2144
  %2146 = bitcast i32 %2145 to float
  %2147 = call float @dx.op.binary.f32(i32 36, float %1887, float %2133)  ; FMin(a,b)
  %2148 = fmul fast float %2147, %2135
  %2149 = fsub fast float 1.000000e+00, %2148
  %2150 = bitcast float %2149 to i32
  %2151 = sub nsw i32 2129859010, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2123, %1947
  %2154 = fmul fast float %2153, %2140
  %2155 = fmul fast float %2124, %1947
  %2156 = fmul fast float %2155, %2146
  %2157 = fmul fast float %2125, %1947
  %2158 = fmul fast float %2157, %2152
  %2159 = call float @dx.op.binary.f32(i32 36, float %1882, float %2133)  ; FMin(a,b)
  %2160 = fmul fast float %2159, %2135
  %2161 = fsub fast float 1.000000e+00, %2160
  %2162 = bitcast float %2161 to i32
  %2163 = sub nsw i32 2129859010, %2162
  %2164 = bitcast i32 %2163 to float
  %2165 = call float @dx.op.binary.f32(i32 36, float %1883, float %2133)  ; FMin(a,b)
  %2166 = fmul fast float %2165, %2135
  %2167 = fsub fast float 1.000000e+00, %2166
  %2168 = bitcast float %2167 to i32
  %2169 = sub nsw i32 2129859010, %2168
  %2170 = bitcast i32 %2169 to float
  %2171 = call float @dx.op.binary.f32(i32 36, float %1896, float %2133)  ; FMin(a,b)
  %2172 = fmul fast float %2171, %2135
  %2173 = fsub fast float 1.000000e+00, %2172
  %2174 = bitcast float %2173 to i32
  %2175 = sub nsw i32 2129859010, %2174
  %2176 = bitcast i32 %2175 to float
  %2177 = fmul fast float %2129, %1947
  %2178 = fmul fast float %2177, %2164
  %2179 = fmul fast float %2130, %1947
  %2180 = fmul fast float %2179, %2170
  %2181 = fmul fast float %2131, %1947
  %2182 = fmul fast float %2181, %2176
  %2183 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2156, float %2158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2184 = select i1 %188, float 0.000000e+00, float %2154
  %2185 = select i1 %188, float %2183, float %2156
  %2186 = select i1 %188, float 0.000000e+00, float %2158
  %2187 = call float @dx.op.dot3.f32(i32 55, float %2126, float %2127, float %2128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2188 = select i1 %188, float 0.000000e+00, float %2126
  %2189 = select i1 %188, float %2187, float %2127
  %2190 = select i1 %188, float 0.000000e+00, float %2128
  %2191 = call float @dx.op.dot3.f32(i32 55, float %2178, float %2180, float %2182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2192 = select i1 %188, float 0.000000e+00, float %2178
  %2193 = select i1 %188, float %2191, float %2180
  %2194 = select i1 %188, float 0.000000e+00, float %2182
  %2195 = fmul fast float %878, %878
  %2196 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2197 = fmul fast float %1898, 9.843750e-01
  %2198 = fmul fast float %1891, 9.843750e-01
  %2199 = fadd fast float %2197, 7.812500e-03
  %2200 = fadd fast float %2198, 7.812500e-03
  %2201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %2199, float %2200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2202 = extractvalue %dx.types.ResRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.ResRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.ResRet.f32 %2201, 2
  %2205 = extractvalue %dx.types.ResRet.f32 %2201, 3
  %2206 = fsub fast float 1.000000e+00, %2196
  %2207 = fsub fast float %2204, %2202
  %2208 = fsub fast float %2205, %2203
  %2209 = fmul fast float %2207, %2206
  %2210 = fmul fast float %2208, %2206
  %2211 = fadd fast float %2209, %2202
  %2212 = fadd fast float %2210, %2203
  %2213 = fmul fast float %2211, %1882
  %2214 = fmul fast float %2211, %1883
  %2215 = fmul fast float %2211, %1896
  %2216 = fadd fast float %2213, %2212
  %2217 = fadd fast float %2214, %2212
  %2218 = fadd fast float %2215, %2212
  %2219 = fcmp fast ogt float %1472, 0.000000e+00
  br i1 %2219, label %2220, label %2246

; <label>:2220                                    ; preds = %2100
  %2221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1472, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.ResRet.f32 %2221, 1
  %2224 = extractvalue %dx.types.ResRet.f32 %2221, 2
  %2225 = fadd fast float %2222, -5.000000e-01
  %2226 = fadd fast float %2223, -5.000000e-01
  %2227 = fadd fast float %2224, -5.000000e-01
  %2228 = fsub fast float 1.000000e+00, %1882
  %2229 = fsub fast float 1.000000e+00, %1883
  %2230 = fsub fast float 1.000000e+00, %1896
  %2231 = fmul fast float %1882, 4.000000e+00
  %2232 = fmul fast float %2231, %2228
  %2233 = fmul fast float %2232, %2225
  %2234 = fmul fast float %1883, 4.000000e+00
  %2235 = fmul fast float %2234, %2229
  %2236 = fmul fast float %2235, %2226
  %2237 = fmul fast float %1896, 4.000000e+00
  %2238 = fmul fast float %2237, %2230
  %2239 = fmul fast float %2238, %2227
  %2240 = fadd fast float %2233, %2216
  %2241 = fadd fast float %2236, %2217
  %2242 = fadd fast float %2239, %2218
  %2243 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2244 = call float @dx.op.unary.f32(i32 7, float %2241)  ; Saturate(value)
  %2245 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  br label %2246

; <label>:2246                                    ; preds = %2220, %2100
  %2247 = phi float [ %2243, %2220 ], [ %2216, %2100 ]
  %2248 = phi float [ %2244, %2220 ], [ %2217, %2100 ]
  %2249 = phi float [ %2245, %2220 ], [ %2218, %2100 ]
  %2250 = call float @dx.op.binary.f32(i32 35, float %2248, float %2249)  ; FMax(a,b)
  %2251 = call float @dx.op.binary.f32(i32 35, float %2247, float %2250)  ; FMax(a,b)
  %2252 = fsub fast float 1.000000e+00, %2251
  %2253 = call float @dx.op.dot3.f32(i32 55, float %1885, float %1886, float %1887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = fcmp fast ogt float %2253, 0x3E7FF19E20000000
  %2255 = fdiv fast float 1.000000e+00, %2253
  %2256 = select i1 %2254, float %2255, float 0.000000e+00
  %2257 = fmul fast float %2256, %1885
  %2258 = fmul fast float %2256, %1886
  %2259 = fmul fast float %2256, %1887
  %2260 = fadd fast float %2257, -1.000000e+00
  %2261 = fadd fast float %2258, -1.000000e+00
  %2262 = fadd fast float %2259, -1.000000e+00
  %2263 = fmul fast float %2260, 5.000000e-01
  %2264 = fmul fast float %2261, 5.000000e-01
  %2265 = fmul fast float %2262, 5.000000e-01
  %2266 = fadd fast float %2263, 1.000000e+00
  %2267 = fadd fast float %2264, 1.000000e+00
  %2268 = fadd fast float %2265, 1.000000e+00
  %2269 = call float @dx.op.binary.f32(i32 35, float %1898, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2270 = fdiv fast float %878, %2269
  %2271 = fcmp fast olt float %1545, 1.270000e+02
  %2272 = fcmp fast olt float %1546, 1.270000e+02
  %2273 = fcmp fast olt float %1547, 1.270000e+02
  %2274 = fmul fast float %1545, 0xBFF7154760000000
  %2275 = fmul fast float %2274, %2270
  %2276 = fmul fast float %1546, 0xBFF7154760000000
  %2277 = fmul fast float %2276, %2270
  %2278 = fmul fast float %1547, 0xBFF7154760000000
  %2279 = fmul fast float %2278, %2270
  %2280 = call float @dx.op.unary.f32(i32 21, float %2275)  ; Exp(value)
  %2281 = call float @dx.op.unary.f32(i32 21, float %2277)  ; Exp(value)
  %2282 = call float @dx.op.unary.f32(i32 21, float %2279)  ; Exp(value)
  %2283 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2284 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2285 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2286 = select i1 %2271, float %2283, float 0.000000e+00
  %2287 = select i1 %2272, float %2284, float 0.000000e+00
  %2288 = select i1 %2273, float %2285, float 0.000000e+00
  %2289 = fmul fast float %2286, %2252
  %2290 = fmul fast float %2287, %2252
  %2291 = fmul fast float %2288, %2252
  %2292 = fadd fast float %2289, -1.000000e+00
  %2293 = fadd fast float %2290, -1.000000e+00
  %2294 = fadd fast float %2291, -1.000000e+00
  %2295 = fmul fast float %2292, %1495
  %2296 = fmul fast float %2293, %1495
  %2297 = fmul fast float %2294, %1495
  %2298 = fmul fast float %2247, %2192
  %2299 = fmul fast float %2248, %2193
  %2300 = fmul fast float %2249, %2194
  %2301 = fsub fast float 1.000000e+00, %1898
  %2302 = bitcast float %2301 to i32
  %2303 = sitofp i32 %2302 to float
  %2304 = fmul fast float %2303, 5.000000e+00
  %2305 = fadd fast float %2304, 0xC1EFBF8940000000
  %2306 = fptosi float %2305 to i32
  %2307 = bitcast i32 %2306 to float
  %2308 = fmul fast float %2307, %1471
  %2309 = fmul fast float %2184, %2308
  %2310 = fmul fast float %2309, %2252
  %2311 = fmul fast float %2310, %2266
  %2312 = fmul fast float %2185, %2308
  %2313 = fmul fast float %2312, %2252
  %2314 = fmul fast float %2313, %2267
  %2315 = fmul fast float %2186, %2308
  %2316 = fmul fast float %2315, %2252
  %2317 = fmul fast float %2316, %2268
  %2318 = fadd fast float %2298, %1476
  %2319 = fadd fast float %2318, %2311
  %2320 = fmul fast float %2319, %1495
  %2321 = fadd fast float %2299, %1477
  %2322 = fadd fast float %2321, %2314
  %2323 = fmul fast float %2322, %1495
  %2324 = fadd fast float %2300, %1478
  %2325 = fadd fast float %2324, %2317
  %2326 = fmul fast float %2325, %1495
  %2327 = fmul fast float %1883, 0x4012D0A400000000
  %2328 = fadd fast float %2297, 1.000000e+00
  %2329 = fadd fast float %2296, 1.000000e+00
  %2330 = fadd fast float %2295, 1.000000e+00
  %2331 = fmul fast float %2252, %2186
  %2332 = fmul fast float %2252, %2185
  %2333 = fmul fast float %2252, %2184
  %2334 = fsub fast float 1.000000e+00, %1891
  %2335 = fmul fast float %2334, %1495
  %2336 = fsub fast float 1.000000e+00, %2335
  %2337 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2338 = fsub fast float 1.000000e+00, %2337
  %2339 = fadd fast float %2327, 0x3FDB6377A0000000
  %2340 = fmul fast float %2338, %2339
  %2341 = call float @dx.op.dot3.f32(i32 55, float %1563, float %1564, float %1565, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2342 = fadd fast float %2340, %2341
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2344 = call float @dx.op.binary.f32(i32 35, float %2343, float 0x3F847AE140000000)  ; FMax(a,b)
  %2345 = fmul fast float %2344, %2344
  %2346 = fmul fast float %2345, %2345
  %2347 = fmul fast float %2346, 0xC00A935000000000
  %2348 = call float @dx.op.unary.f32(i32 21, float %2347)  ; Exp(value)
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %2330, %2188
  %2351 = fmul fast float %2350, %2349
  %2352 = fmul fast float %2329, %2189
  %2353 = fmul fast float %2352, %2349
  %2354 = fmul fast float %2328, %2190
  %2355 = fmul fast float %2354, %2349
  %2356 = fadd fast float %2351, %2333
  %2357 = fmul fast float %2356, %1495
  %2358 = fadd fast float %2353, %2332
  %2359 = fmul fast float %2358, %1495
  %2360 = fadd fast float %2355, %2331
  %2361 = fmul fast float %2360, %1495
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 3
  %2364 = fcmp fast oeq float %2363, 0.000000e+00
  br i1 %2364, label %3508, label %2365

; <label>:2365                                    ; preds = %2246
  %2366 = extractvalue %dx.types.CBufRet.f32 %2362, 0
  %2367 = extractvalue %dx.types.CBufRet.f32 %2362, 1
  %2368 = extractvalue %dx.types.CBufRet.f32 %2362, 2
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.CBufRet.f32 %2369, 2
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.CBufRet.f32 %2373, 1
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = select i1 %188, float %2374, float %2370
  %2378 = select i1 %188, float %2376, float %2371
  %2379 = select i1 %188, float %2375, float %2372
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 2
  %2382 = fmul fast float %2381, %75
  %2383 = fmul fast float %2381, %76
  %2384 = fmul fast float %2381, %77
  %2385 = fadd fast float %2382, %127
  %2386 = fadd fast float %2383, %128
  %2387 = fadd fast float %2384, %129
  %2388 = fcmp fast olt float %2363, 0.000000e+00
  br i1 %2388, label %3013, label %2389

; <label>:2389                                    ; preds = %2365
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.CBufRet.f32 %2390, 1
  %2393 = extractvalue %dx.types.CBufRet.f32 %2390, 2
  %2394 = extractvalue %dx.types.CBufRet.f32 %2390, 3
  %2395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.CBufRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.CBufRet.f32 %2395, 2
  %2399 = extractvalue %dx.types.CBufRet.f32 %2395, 3
  %2400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.f32 %2400, 0
  %2402 = extractvalue %dx.types.CBufRet.f32 %2400, 1
  %2403 = extractvalue %dx.types.CBufRet.f32 %2400, 2
  %2404 = extractvalue %dx.types.CBufRet.f32 %2400, 3
  %2405 = fmul fast float %2391, %2385
  %2406 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %2392, float %2405)  ; FMad(a,b,c)
  %2407 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %2393, float %2406)  ; FMad(a,b,c)
  %2408 = fadd fast float %2407, %2394
  %2409 = fmul fast float %2396, %2385
  %2410 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %2397, float %2409)  ; FMad(a,b,c)
  %2411 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %2398, float %2410)  ; FMad(a,b,c)
  %2412 = fadd fast float %2411, %2399
  %2413 = fmul fast float %2401, %2385
  %2414 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %2402, float %2413)  ; FMad(a,b,c)
  %2415 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %2403, float %2414)  ; FMad(a,b,c)
  %2416 = fadd fast float %2415, %2404
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2420 = extractvalue %dx.types.CBufRet.f32 %2417, 3
  %2421 = fmul fast float %2420, %2408
  %2422 = fmul fast float %2420, %2412
  %2423 = fadd fast float %2421, %2418
  %2424 = fadd fast float %2422, %2419
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2428 = extractvalue %dx.types.CBufRet.f32 %2425, 3
  %2429 = fmul fast float %2428, %2408
  %2430 = fmul fast float %2428, %2412
  %2431 = fadd fast float %2429, %2426
  %2432 = fadd fast float %2430, %2427
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 1
  %2435 = fsub fast float %2434, %2416
  %2436 = extractvalue %dx.types.CBufRet.f32 %2433, 2
  %2437 = fmul fast float %2435, %2436
  %2438 = fsub fast float 1.000000e+00, %2437
  %2439 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 2
  %2443 = fadd fast float %2442, %2440
  %2444 = fcmp fast ogt float %2443, 0.000000e+00
  br i1 %2444, label %2445, label %2469

; <label>:2445                                    ; preds = %2389
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.CBufRet.f32 %2446, 1
  %2449 = fsub fast float %2431, %2447
  %2450 = fsub fast float %2432, %2448
  %2451 = fcmp fast olt float %2449, 0.000000e+00
  %2452 = fcmp fast olt float %2450, 0.000000e+00
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.CBufRet.f32 %2453, 2
  %2457 = extractvalue %dx.types.CBufRet.f32 %2453, 3
  %2458 = select i1 %2451, float %2454, float %2456
  %2459 = select i1 %2452, float %2455, float %2457
  %2460 = fmul fast float %2458, %2449
  %2461 = fmul fast float %2459, %2450
  %2462 = call float @dx.op.unary.f32(i32 6, float %2460)  ; FAbs(value)
  %2463 = call float @dx.op.unary.f32(i32 6, float %2461)  ; FAbs(value)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %2465 = call float @dx.op.binary.f32(i32 35, float %2462, float %2463)  ; FMax(a,b)
  %2466 = fsub fast float %2464, %2465
  %2467 = call float @dx.op.unary.f32(i32 7, float %2466)  ; Saturate(value)
  %2468 = fmul fast float %2467, %2439
  br label %2469

; <label>:2469                                    ; preds = %2445, %2389
  %2470 = phi float [ %2468, %2445 ], [ 0.000000e+00, %2389 ]
  %2471 = extractvalue %dx.types.CBufRet.f32 %2417, 2
  %2472 = extractvalue %dx.types.CBufRet.f32 %2441, 1
  %2473 = fadd fast float %2472, %2471
  %2474 = fcmp fast ogt float %2473, 0.000000e+00
  %2475 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  br i1 %2474, label %2476, label %2499

; <label>:2476                                    ; preds = %2469
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.CBufRet.f32 %2477, 1
  %2480 = fsub fast float %2423, %2478
  %2481 = fsub fast float %2424, %2479
  %2482 = fcmp fast olt float %2480, 0.000000e+00
  %2483 = fcmp fast olt float %2481, 0.000000e+00
  %2484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.CBufRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.CBufRet.f32 %2484, 2
  %2488 = extractvalue %dx.types.CBufRet.f32 %2484, 3
  %2489 = select i1 %2482, float %2485, float %2487
  %2490 = select i1 %2483, float %2486, float %2488
  %2491 = fmul fast float %2489, %2480
  %2492 = fmul fast float %2490, %2481
  %2493 = call float @dx.op.unary.f32(i32 6, float %2491)  ; FAbs(value)
  %2494 = call float @dx.op.unary.f32(i32 6, float %2492)  ; FAbs(value)
  %2495 = call float @dx.op.binary.f32(i32 35, float %2493, float %2494)  ; FMax(a,b)
  %2496 = fsub fast float %2475, %2495
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  %2498 = fmul fast float %2497, %2439
  br label %2499

; <label>:2499                                    ; preds = %2476, %2469
  %2500 = phi float [ %2498, %2476 ], [ 0.000000e+00, %2469 ]
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 1
  %2503 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  %2504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.CBufRet.f32 %2504, 1
  %2507 = fsub fast float %2408, %2505
  %2508 = fsub fast float %2412, %2506
  %2509 = fcmp fast olt float %2507, 0.000000e+00
  %2510 = fcmp fast olt float %2508, 0.000000e+00
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.CBufRet.f32 %2511, 1
  %2514 = extractvalue %dx.types.CBufRet.f32 %2511, 2
  %2515 = extractvalue %dx.types.CBufRet.f32 %2511, 3
  %2516 = select i1 %2509, float %2512, float %2514
  %2517 = select i1 %2510, float %2513, float %2515
  %2518 = fmul fast float %2516, %2507
  %2519 = fmul fast float %2517, %2508
  %2520 = call float @dx.op.unary.f32(i32 6, float %2518)  ; FAbs(value)
  %2521 = call float @dx.op.unary.f32(i32 6, float %2519)  ; FAbs(value)
  %2522 = call float @dx.op.binary.f32(i32 35, float %2520, float %2521)  ; FMax(a,b)
  %2523 = fsub fast float %2475, %2522
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  %2525 = call float @dx.op.binary.f32(i32 36, float %2524, float %2503)  ; FMin(a,b)
  %2526 = fmul fast float %2525, %2439
  %2527 = fsub fast float %2500, %2526
  %2528 = fsub fast float %2470, %2500
  %2529 = fsub fast float %2528, %2526
  %2530 = call float @dx.op.binary.f32(i32 35, float %2500, float %2470)  ; FMax(a,b)
  %2531 = call float @dx.op.binary.f32(i32 35, float %2526, float %2530)  ; FMax(a,b)
  %2532 = fcmp fast olt float %2531, 1.000000e+00
  br i1 %2532, label %2533, label %2931, !dx.controlflow.hints !72

; <label>:2533                                    ; preds = %2499
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = fcmp fast une float %2535, 0.000000e+00
  br i1 %2536, label %2537, label %2931, !dx.controlflow.hints !73

; <label>:2537                                    ; preds = %2533
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.CBufRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2542 = extractvalue %dx.types.CBufRet.f32 %2538, 3
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2547 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.CBufRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.CBufRet.f32 %2548, 2
  %2552 = extractvalue %dx.types.CBufRet.f32 %2548, 3
  %2553 = fmul fast float %2539, %2385
  %2554 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %2540, float %2553)  ; FMad(a,b,c)
  %2555 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %2541, float %2554)  ; FMad(a,b,c)
  %2556 = fadd fast float %2555, %2542
  %2557 = fmul fast float %2544, %2385
  %2558 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %2545, float %2557)  ; FMad(a,b,c)
  %2559 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %2546, float %2558)  ; FMad(a,b,c)
  %2560 = fadd fast float %2559, %2547
  %2561 = fmul fast float %2549, %2385
  %2562 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %2550, float %2561)  ; FMad(a,b,c)
  %2563 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %2551, float %2562)  ; FMad(a,b,c)
  %2564 = fadd fast float %2563, %2552
  %2565 = fcmp fast oge float %2556, 1.000000e+00
  %2566 = fcmp fast oge float %2560, 1.000000e+00
  %2567 = or i1 %2565, %2566
  %2568 = fcmp fast olt float %2556, 0.000000e+00
  %2569 = fcmp fast olt float %2560, 0.000000e+00
  %2570 = or i1 %2568, %2569
  %2571 = or i1 %2567, %2570
  br i1 %2571, label %2931, label %2572, !dx.controlflow.hints !74

; <label>:2572                                    ; preds = %2537
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.CBufRet.f32 %2573, 1
  %2576 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.i32 %2577, 2
  %2579 = uitofp i32 %2578 to float
  %2580 = extractvalue %dx.types.CBufRet.i32 %2577, 3
  %2581 = uitofp i32 %2580 to float
  %2582 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2583 = fmul fast float %2582, 2.000000e+00
  %2584 = fsub fast float %2556, %2574
  %2585 = fsub fast float %2560, %2575
  %2586 = fmul fast float %2583, %2584
  %2587 = fmul fast float %2583, %2585
  %2588 = fdiv fast float 1.000000e+00, %2368
  %2589 = fmul fast float %2587, %2588
  %2590 = call float @dx.op.unary.f32(i32 6, float %2589)  ; FAbs(value)
  %2591 = fmul fast float %2576, %2387
  %2592 = fmul fast float %2591, %2583
  %2593 = call float @dx.op.unary.f32(i32 6, float %2592)  ; FAbs(value)
  %2594 = call float @dx.op.unary.f32(i32 6, float %2586)  ; FAbs(value)
  %2595 = call float @dx.op.binary.f32(i32 35, float %2593, float %2590)  ; FMax(a,b)
  %2596 = call float @dx.op.binary.f32(i32 35, float %2594, float %2595)  ; FMax(a,b)
  %2597 = fmul fast float %2596, 2.000000e+00
  %2598 = call float @dx.op.unary.f32(i32 23, float %2597)  ; Log(value)
  %2599 = call float @dx.op.binary.f32(i32 35, float %2598, float %2579)  ; FMax(a,b)
  %2600 = call float @dx.op.unary.f32(i32 22, float %2599)  ; Frc(value)
  %2601 = fadd fast float %2600, 0xBFEA666660000000
  %2602 = fmul fast float %2601, 8.000000e+00
  %2603 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  %2604 = call float @dx.op.unary.f32(i32 27, float %2599)  ; Round_ni(value)
  %2605 = fadd fast float %2604, %2603
  %2606 = call float @dx.op.binary.f32(i32 36, float %2605, float %2581)  ; FMin(a,b)
  %2607 = call float @dx.op.unary.f32(i32 27, float %2606)  ; Round_ni(value)
  %2608 = fsub fast float -0.000000e+00, %2607
  %2609 = call float @dx.op.unary.f32(i32 21, float %2608)  ; Exp(value)
  %2610 = fmul fast float %2609, %2583
  %2611 = fmul fast float %2610, %2556
  %2612 = fmul fast float %2610, %2560
  %2613 = fmul fast float %2611, 2.500000e-01
  %2614 = fmul fast float %2612, 2.500000e-01
  %2615 = fadd fast float %2613, 5.000000e-01
  %2616 = fadd fast float %2614, 5.000000e-01
  %2617 = fsub fast float %2581, %2579
  %2618 = fptoui float %2617 to i32
  %2619 = add i32 %2618, 320
  %2620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %2619)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.f32 %2620, 0
  %2622 = extractvalue %dx.types.CBufRet.f32 %2620, 1
  %2623 = fcmp fast une float %2606, %2581
  %2624 = fsub fast float %2556, %2621
  %2625 = fsub fast float %2560, %2622
  %2626 = call float @dx.op.unary.f32(i32 6, float %2624)  ; FAbs(value)
  %2627 = call float @dx.op.unary.f32(i32 6, float %2625)  ; FAbs(value)
  %2628 = fmul fast float %2626, %2610
  %2629 = fmul fast float %2627, %2610
  %2630 = fcmp fast olt float %2628, 1.000000e+00
  %2631 = fcmp fast olt float %2629, 1.000000e+00
  %2632 = and i1 %2630, %2631
  %2633 = or i1 %2623, %2632
  br i1 %2633, label %2634, label %2931, !dx.controlflow.hints !75

; <label>:2634                                    ; preds = %2572
  %2635 = fmul fast float %2612, 5.000000e-01
  %2636 = fmul fast float %2611, 5.000000e-01
  %2637 = fadd fast float %2635, 5.000000e-01
  %2638 = fadd fast float %2636, 5.000000e-01
  %2639 = sitofp i32 %2578 to float
  %2640 = fsub fast float %2606, %2639
  %2641 = call float @dx.op.unary.f32(i32 27, float %2640)  ; Round_ni(value)
  %2642 = call float @dx.op.unary.f32(i32 22, float %2606)  ; Frc(value)
  %2643 = call float @dx.op.unary.f32(i32 22, float %2638)  ; Frc(value)
  %2644 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2643, float %2644, float %2641, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = extractvalue %dx.types.ResRet.f32 %2645, 1
  %2648 = extractvalue %dx.types.ResRet.f32 %2645, 2
  %2649 = extractvalue %dx.types.ResRet.f32 %2645, 3
  %2650 = fcmp fast ogt float %2642, 0.000000e+00
  br i1 %2650, label %2651, label %2672, !dx.controlflow.hints !76

; <label>:2651                                    ; preds = %2634
  %2652 = fadd fast float %2641, 1.000000e+00
  %2653 = call float @dx.op.unary.f32(i32 22, float %2615)  ; Frc(value)
  %2654 = call float @dx.op.unary.f32(i32 22, float %2616)  ; Frc(value)
  %2655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %30, float %2653, float %2654, float %2652, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2656 = extractvalue %dx.types.ResRet.f32 %2655, 0
  %2657 = extractvalue %dx.types.ResRet.f32 %2655, 1
  %2658 = extractvalue %dx.types.ResRet.f32 %2655, 2
  %2659 = extractvalue %dx.types.ResRet.f32 %2655, 3
  %2660 = fsub fast float %2656, %2646
  %2661 = fsub fast float %2657, %2647
  %2662 = fsub fast float %2658, %2648
  %2663 = fsub fast float %2659, %2649
  %2664 = fmul fast float %2660, %2642
  %2665 = fmul fast float %2661, %2642
  %2666 = fmul fast float %2662, %2642
  %2667 = fmul fast float %2663, %2642
  %2668 = fadd fast float %2664, %2646
  %2669 = fadd fast float %2665, %2647
  %2670 = fadd fast float %2666, %2648
  %2671 = fadd fast float %2667, %2649
  br label %2672

; <label>:2672                                    ; preds = %2651, %2634
  %2673 = phi float [ %2668, %2651 ], [ %2646, %2634 ]
  %2674 = phi float [ %2669, %2651 ], [ %2647, %2634 ]
  %2675 = phi float [ %2670, %2651 ], [ %2648, %2634 ]
  %2676 = phi float [ %2671, %2651 ], [ %2649, %2634 ]
  %2677 = fadd fast float %2673, -5.000000e-01
  %2678 = fadd fast float %2675, -5.000000e-01
  %2679 = fmul fast float %2677, 0xBFD5555560000000
  %2680 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2678, float %2679)  ; FMad(a,b,c)
  %2681 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2674, float 0.000000e+00)  ; FMad(a,b,c)
  %2682 = fadd fast float %2681, %2676
  %2683 = fmul fast float %2677, -7.500000e-01
  %2684 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2678, float %2683)  ; FMad(a,b,c)
  %2685 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2674, float 0.000000e+00)  ; FMad(a,b,c)
  %2686 = fadd fast float %2685, %2676
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2692 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2693 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  %2694 = fsub fast float %2690, %2680
  %2695 = fsub fast float %2691, %2682
  %2696 = fsub fast float %2692, %2684
  %2697 = fsub fast float %2693, %2686
  %2698 = fmul fast float %2694, %2688
  %2699 = fmul fast float %2695, %2688
  %2700 = fmul fast float %2696, %2688
  %2701 = fmul fast float %2697, %2688
  %2702 = fadd fast float %2698, %2680
  %2703 = fadd fast float %2699, %2682
  %2704 = fadd fast float %2700, %2684
  %2705 = fadd fast float %2701, %2686
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = and i32 %2707, 536870911
  %2709 = uitofp i32 %2708 to float
  %2710 = fmul fast float %2709, %2556
  %2711 = fmul fast float %2709, %2560
  %2712 = fptoui float %2710 to i32
  %2713 = fptoui float %2711 to i32
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = and i32 %2715, 31
  %2717 = lshr i32 %2712, %2716
  %2718 = lshr i32 %2713, %2716
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %2720, 31
  %2722 = shl i32 1, %2721
  %2723 = call i32 @dx.op.binary.i32(i32 40, i32 %2722, i32 4)  ; UMin(a,b)
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.i32 %2724, 1
  %2727 = icmp eq i32 %2723, 0
  br i1 %2727, label %2769, label %2728

; <label>:2728                                    ; preds = %2672
  br label %2729

; <label>:2729                                    ; preds = %2757, %2728
  %2730 = phi i32 [ %2760, %2757 ], [ 0, %2728 ]
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = lshr i32 %2732, 16
  %2734 = and i32 %2733, 31
  %2735 = shl i32 %2718, %2734
  %2736 = add i32 %2735, %2717
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 31
  %2740 = shl i32 %2736, %2739
  %2741 = add i32 %2740, %2730
  %2742 = shl i32 %2741, 2
  %2743 = add i32 %2742, 32
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = icmp slt i32 %2745, 0
  %2747 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2730
  %2748 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2730
  %2749 = bitcast float* %2747 to i32*
  %2750 = bitcast float* %2748 to i32*
  br i1 %2746, label %2751, label %2757

; <label>:2751                                    ; preds = %2729
  %2752 = and i32 %2745, 1073741823
  %2753 = add nuw nsw i32 %2752, 20
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = extractvalue %dx.types.ResRet.i32 %2754, 1
  br label %2757

; <label>:2757                                    ; preds = %2751, %2729
  %2758 = phi i32 [ %2755, %2751 ], [ %2725, %2729 ]
  %2759 = phi i32 [ %2756, %2751 ], [ %2726, %2729 ]
  store i32 %2758, i32* %2749, align 4
  store i32 %2759, i32* %2750, align 4
  %2760 = add nuw i32 %2730, 1
  %2761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.i32 %2761, 2
  %2763 = icmp eq i32 %2762, 0
  %2764 = icmp ugt i32 %2745, -1073741825
  %2765 = and i1 %2764, %2763
  %2766 = icmp ult i32 %2760, %2723
  %2767 = and i1 %2765, %2766
  br i1 %2767, label %2729, label %2768

; <label>:2768                                    ; preds = %2757
  br label %2769

; <label>:2769                                    ; preds = %2768, %2672
  %2770 = phi i32 [ 0, %2672 ], [ %2760, %2768 ]
  %2771 = extractvalue %dx.types.CBufRet.f32 %2534, 2
  %2772 = fptoui float %2771 to i32
  %2773 = icmp eq i32 %2772, 0
  br i1 %2773, label %2825, label %2774

; <label>:2774                                    ; preds = %2769
  br label %2775

; <label>:2775                                    ; preds = %2820, %2774
  %2776 = phi i32 [ %2821, %2820 ], [ %2770, %2774 ]
  %2777 = phi i32 [ %2822, %2820 ], [ 0, %2774 ]
  %2778 = lshr i32 %2777, 2
  %2779 = and i32 %2777, 3
  %2780 = add nuw nsw i32 %2778, 83
  %2781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %2780)  ; CBufferLoadLegacy(handle,regIndex)
  %2782 = extractvalue %dx.types.CBufRet.i32 %2781, 0
  %2783 = extractvalue %dx.types.CBufRet.i32 %2781, 1
  %2784 = extractvalue %dx.types.CBufRet.i32 %2781, 2
  %2785 = extractvalue %dx.types.CBufRet.i32 %2781, 3
  %2786 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %2782, i32* %2786, align 4
  %2787 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %2783, i32* %2787, align 4
  %2788 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %2784, i32* %2788, align 4
  %2789 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %2785, i32* %2789, align 4
  %2790 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %2779
  %2791 = load i32, i32* %2790, align 4, !tbaa !77, !noalias !81
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = lshr i32 %2793, 16
  %2795 = and i32 %2794, 31
  %2796 = shl i32 %2718, %2795
  %2797 = add i32 %2796, %2717
  %2798 = shl i32 %2797, 2
  %2799 = add i32 %2798, %2791
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = icmp eq i32 %2801, 0
  br i1 %2802, label %2820, label %2803

; <label>:2803                                    ; preds = %2775
  %2804 = icmp slt i32 %2801, 0
  %2805 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2776
  %2806 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2776
  %2807 = bitcast float* %2805 to i32*
  %2808 = bitcast float* %2806 to i32*
  br i1 %2804, label %2809, label %2816

; <label>:2809                                    ; preds = %2803
  %2810 = and i32 %2801, 1073741823
  %2811 = add i32 %2791, 20
  %2812 = add i32 %2811, %2810
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = extractvalue %dx.types.ResRet.i32 %2813, 1
  br label %2816

; <label>:2816                                    ; preds = %2809, %2803
  %2817 = phi i32 [ %2814, %2809 ], [ %2725, %2803 ]
  %2818 = phi i32 [ %2815, %2809 ], [ %2726, %2803 ]
  store i32 %2817, i32* %2807, align 4
  store i32 %2818, i32* %2808, align 4
  %2819 = add i32 %2776, 1
  br label %2820

; <label>:2820                                    ; preds = %2816, %2775
  %2821 = phi i32 [ %2776, %2775 ], [ %2819, %2816 ]
  %2822 = add nuw i32 %2777, 1
  %2823 = icmp eq i32 %2822, %2772
  br i1 %2823, label %2824, label %2775

; <label>:2824                                    ; preds = %2820
  br label %2825

; <label>:2825                                    ; preds = %2824, %2769
  %2826 = phi i32 [ %2770, %2769 ], [ %2821, %2824 ]
  %2827 = icmp eq i32 %2826, 1
  %2828 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 0
  %2829 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 0
  br i1 %2827, label %2830, label %2833

; <label>:2830                                    ; preds = %2825
  %2831 = load float, float* %2828, align 4
  %2832 = load float, float* %2829, align 4
  br label %2860

; <label>:2833                                    ; preds = %2825
  %2834 = load float, float* %2828, align 4
  %2835 = load float, float* %2829, align 4
  %2836 = fdiv fast float 1.000000e+00, %2835
  %2837 = fsub fast float %2834, %2836
  %2838 = icmp ugt i32 %2826, 1
  br i1 %2838, label %2839, label %2855

; <label>:2839                                    ; preds = %2833
  br label %2840

; <label>:2840                                    ; preds = %2840, %2839
  %2841 = phi float [ %2850, %2840 ], [ %2837, %2839 ]
  %2842 = phi float [ %2851, %2840 ], [ %2834, %2839 ]
  %2843 = phi i32 [ %2852, %2840 ], [ 1, %2839 ]
  %2844 = getelementptr [12 x float], [12 x float]* %64, i32 0, i32 %2843
  %2845 = load float, float* %2844, align 4
  %2846 = getelementptr [12 x float], [12 x float]* %65, i32 0, i32 %2843
  %2847 = load float, float* %2846, align 4
  %2848 = fdiv fast float 1.000000e+00, %2847
  %2849 = fsub fast float %2845, %2848
  %2850 = call float @dx.op.binary.f32(i32 36, float %2841, float %2849)  ; FMin(a,b)
  %2851 = call float @dx.op.binary.f32(i32 35, float %2842, float %2845)  ; FMax(a,b)
  %2852 = add nuw i32 %2843, 1
  %2853 = icmp eq i32 %2852, %2826
  br i1 %2853, label %2854, label %2840

; <label>:2854                                    ; preds = %2840
  br label %2855

; <label>:2855                                    ; preds = %2854, %2833
  %2856 = phi float [ %2837, %2833 ], [ %2850, %2854 ]
  %2857 = phi float [ %2834, %2833 ], [ %2851, %2854 ]
  %2858 = fsub fast float %2857, %2856
  %2859 = fdiv fast float 1.000000e+00, %2858
  br label %2860

; <label>:2860                                    ; preds = %2855, %2830
  %2861 = phi float [ %2831, %2830 ], [ %2857, %2855 ]
  %2862 = phi float [ %2832, %2830 ], [ %2859, %2855 ]
  %2863 = fadd fast float %2564, %2861
  %2864 = fmul fast float %2863, %2862
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = fmul fast float %2865, 2.000000e+00
  %2867 = fsub fast float 1.000000e+00, %2866
  %2868 = fmul fast float %2702, %2702
  %2869 = fsub fast float %2703, %2868
  %2870 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2869)  ; FMax(a,b)
  %2871 = fdiv fast float 1.000000e+00, %2870
  %2872 = fmul fast float %2703, %2702
  %2873 = fsub fast float %2704, %2872
  %2874 = fsub fast float %2867, %2702
  %2875 = fmul fast float %2867, %2867
  %2876 = fsub fast float %2875, %2703
  %2877 = fmul fast float %2871, %2873
  %2878 = fmul fast float %2877, %2874
  %2879 = fsub fast float %2876, %2878
  %2880 = fmul fast float %2703, %2703
  %2881 = fsub fast float %2705, %2880
  %2882 = fmul fast float %2873, %2873
  %2883 = fmul fast float %2882, %2871
  %2884 = fsub fast float %2881, %2883
  %2885 = fdiv fast float %2879, %2884
  %2886 = fmul fast float %2885, %2873
  %2887 = fsub fast float %2874, %2886
  %2888 = fmul fast float %2887, %2871
  %2889 = fmul fast float %2888, %2702
  %2890 = fsub fast float 1.000000e+00, %2889
  %2891 = fmul fast float %2885, %2703
  %2892 = fsub fast float %2890, %2891
  %2893 = fmul fast float %2888, %2888
  %2894 = fmul fast float %2885, 4.000000e+00
  %2895 = fmul fast float %2894, %2892
  %2896 = fsub fast float %2893, %2895
  %2897 = call float @dx.op.unary.f32(i32 24, float %2896)  ; Sqrt(value)
  %2898 = fcmp fast oge float %2888, 0.000000e+00
  %2899 = fsub fast float -0.000000e+00, %2897
  %2900 = select i1 %2898, float %2899, float %2897
  %2901 = fsub fast float %2900, %2888
  %2902 = fdiv fast float %2901, %2885
  %2903 = fdiv fast float %2892, %2901
  %2904 = fmul fast float %2902, 5.000000e-01
  %2905 = fmul fast float %2903, 2.000000e+00
  %2906 = select i1 %2898, float %2904, float %2905
  %2907 = select i1 %2898, float %2905, float %2904
  %2908 = call float @dx.op.binary.f32(i32 35, float %2906, float %2907)  ; FMax(a,b)
  %2909 = call float @dx.op.binary.f32(i32 36, float %2906, float %2907)  ; FMin(a,b)
  %2910 = fcmp fast ogt float %2867, %2908
  %2911 = fsub fast float %2867, %2909
  %2912 = fsub fast float %2867, %2908
  %2913 = fsub fast float %2908, %2909
  %2914 = select i1 %2910, float %2912, float %2913
  %2915 = fmul float %2911, %2914
  %2916 = select i1 %2910, float %2909, float %2867
  %2917 = fcmp fast ogt float %2867, %2909
  %2918 = fmul fast float %2916, %2908
  %2919 = fadd fast float %2916, %2908
  %2920 = fmul fast float %2919, %2702
  %2921 = fadd fast float %2918, %2703
  %2922 = fsub fast float %2921, %2920
  %2923 = fdiv fast float %2922, %2915
  %2924 = select i1 %2917, float %2923, float 0.000000e+00
  %2925 = fsub fast float 1.000000e+00, %2924
  %2926 = select i1 %2910, float %2925, float %2924
  %2927 = call float @dx.op.unary.f32(i32 7, float %2926)  ; Saturate(value)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2687, 3
  %2929 = fmul fast float %2928, %2927
  %2930 = fsub fast float 1.000000e+00, %2929
  br label %2931

; <label>:2931                                    ; preds = %2860, %2572, %2537, %2533, %2499
  %2932 = phi float [ 1.000000e+00, %2499 ], [ %2930, %2860 ], [ 1.000000e+00, %2537 ], [ 1.000000e+00, %2572 ], [ 1.000000e+00, %2533 ]
  %2933 = fcmp fast ogt float %2529, 0.000000e+00
  br i1 %2933, label %2934, label %2940, !dx.controlflow.hints !90

; <label>:2934                                    ; preds = %2931
  %2935 = fadd fast float %2442, %2416
  %2936 = call float @dx.op.binary.f32(i32 35, float %2935, float 0.000000e+00)  ; FMax(a,b)
  %2937 = fadd fast float %2936, 0x3F10000000000000
  %2938 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %33, float %2431, float %2432, float undef, float undef, i32 0, i32 0, i32 undef, float %2937)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2939 = extractvalue %dx.types.ResRet.f32 %2938, 0
  br label %2940

; <label>:2940                                    ; preds = %2934, %2931
  %2941 = phi float [ %2939, %2934 ], [ 1.000000e+00, %2931 ]
  %2942 = fcmp fast ogt float %2527, 0.000000e+00
  br i1 %2942, label %2943, label %2949, !dx.controlflow.hints !91

; <label>:2943                                    ; preds = %2940
  %2944 = fadd fast float %2472, %2416
  %2945 = call float @dx.op.binary.f32(i32 35, float %2944, float 0.000000e+00)  ; FMax(a,b)
  %2946 = fadd fast float %2945, 0x3F10000000000000
  %2947 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %33, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float %2946)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  br label %2949

; <label>:2949                                    ; preds = %2943, %2940
  %2950 = phi float [ %2948, %2943 ], [ 1.000000e+00, %2940 ]
  %2951 = fcmp fast ogt float %2526, 0.000000e+00
  br i1 %2951, label %2952, label %2959, !dx.controlflow.hints !92

; <label>:2952                                    ; preds = %2949
  %2953 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2954 = fadd fast float %2953, %2416
  %2955 = call float @dx.op.binary.f32(i32 35, float %2954, float 0.000000e+00)  ; FMax(a,b)
  %2956 = fadd fast float %2955, 0x3F10000000000000
  %2957 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %33, float %2408, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float %2956)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  br label %2959

; <label>:2959                                    ; preds = %2952, %2949
  %2960 = phi float [ %2958, %2952 ], [ 1.000000e+00, %2949 ]
  %2961 = fsub fast float %2941, %2932
  %2962 = fmul fast float %2961, %2470
  %2963 = fadd fast float %2962, %2932
  %2964 = fsub fast float %2950, %2963
  %2965 = fmul fast float %2964, %2500
  %2966 = fadd fast float %2965, %2963
  %2967 = fsub fast float %2960, %2966
  %2968 = fmul fast float %2967, %2526
  %2969 = fadd fast float %2968, %2966
  %2970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2971 = extractvalue %dx.types.CBufRet.f32 %2970, 2
  %2972 = fcmp fast ogt float %2971, 0.000000e+00
  br i1 %2972, label %2973, label %3013, !dx.controlflow.hints !93

; <label>:2973                                    ; preds = %2959
  %2974 = fcmp fast ugt float %2971, 0.000000e+00
  br i1 %2974, label %2975, label %3010

; <label>:2975                                    ; preds = %2973
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.CBufRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.CBufRet.f32 %2976, 2
  %2980 = extractvalue %dx.types.CBufRet.f32 %2976, 3
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.CBufRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.CBufRet.f32 %2981, 2
  %2985 = extractvalue %dx.types.CBufRet.f32 %2981, 3
  %2986 = extractvalue %dx.types.CBufRet.f32 %2970, 0
  %2987 = extractvalue %dx.types.CBufRet.f32 %2970, 1
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.CBufRet.f32 %2988, 1
  %2991 = extractvalue %dx.types.CBufRet.f32 %2988, 2
  %2992 = fadd fast float %2989, %2385
  %2993 = fadd fast float %2990, %2386
  %2994 = fadd fast float %2991, %2387
  %2995 = fmul fast float %2992, %2977
  %2996 = call float @dx.op.tertiary.f32(i32 46, float %2978, float %2993, float %2995)  ; FMad(a,b,c)
  %2997 = call float @dx.op.tertiary.f32(i32 46, float %2979, float %2994, float %2996)  ; FMad(a,b,c)
  %2998 = fadd fast float %2997, %2980
  %2999 = fmul fast float %2992, %2982
  %3000 = call float @dx.op.tertiary.f32(i32 46, float %2983, float %2993, float %2999)  ; FMad(a,b,c)
  %3001 = call float @dx.op.tertiary.f32(i32 46, float %2984, float %2994, float %3000)  ; FMad(a,b,c)
  %3002 = fadd fast float %3001, %2985
  %3003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %28, float %2998, float %3002, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = fmul fast float %3004, %2987
  %3006 = fadd fast float %3005, %2986
  %3007 = call float @dx.op.unary.f32(i32 7, float %3006)  ; Saturate(value)
  %3008 = fmul fast float %3007, %2971
  %3009 = fsub fast float 1.000000e+00, %3008
  br label %3010

; <label>:3010                                    ; preds = %2975, %2973
  %3011 = phi float [ %3009, %2975 ], [ 1.000000e+00, %2973 ]
  %3012 = fmul fast float %3011, %2969
  br label %3013

; <label>:3013                                    ; preds = %3010, %2959, %2365
  %3014 = phi float [ 1.000000e+00, %2365 ], [ %3012, %3010 ], [ %2969, %2959 ]
  %3015 = call float @dx.op.binary.f32(i32 36, float %3014, float %3014)  ; FMin(a,b)
  %3016 = call float @dx.op.binary.f32(i32 36, float %3014, float %3015)  ; FMin(a,b)
  %3017 = fcmp fast ogt float %3016, 0.000000e+00
  br i1 %3017, label %3018, label %3179, !dx.controlflow.hints !94

; <label>:3018                                    ; preds = %3013
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 0
  %3021 = extractvalue %dx.types.CBufRet.f32 %3019, 1
  %3022 = extractvalue %dx.types.CBufRet.f32 %3019, 2
  %3023 = extractvalue %dx.types.CBufRet.f32 %3019, 3
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3026 = extractvalue %dx.types.CBufRet.f32 %3024, 1
  %3027 = extractvalue %dx.types.CBufRet.f32 %3024, 2
  %3028 = extractvalue %dx.types.CBufRet.f32 %3024, 3
  %3029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3030 = extractvalue %dx.types.CBufRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.CBufRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.CBufRet.f32 %3029, 2
  %3033 = extractvalue %dx.types.CBufRet.f32 %3029, 3
  %3034 = fmul fast float %3020, %2385
  %3035 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %3021, float %3034)  ; FMad(a,b,c)
  %3036 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %3022, float %3035)  ; FMad(a,b,c)
  %3037 = fadd fast float %3036, %3023
  %3038 = fmul fast float %3025, %2385
  %3039 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %3026, float %3038)  ; FMad(a,b,c)
  %3040 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %3027, float %3039)  ; FMad(a,b,c)
  %3041 = fadd fast float %3040, %3028
  %3042 = fmul fast float %3030, %2385
  %3043 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %3031, float %3042)  ; FMad(a,b,c)
  %3044 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %3032, float %3043)  ; FMad(a,b,c)
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3047 = extractvalue %dx.types.CBufRet.f32 %3045, 1
  %3048 = extractvalue %dx.types.CBufRet.f32 %3045, 3
  %3049 = fmul fast float %3048, %3037
  %3050 = fmul fast float %3048, %3041
  %3051 = fadd fast float %3049, %3046
  %3052 = fadd fast float %3050, %3047
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 0
  %3055 = extractvalue %dx.types.CBufRet.f32 %3053, 1
  %3056 = fsub fast float %3051, %3054
  %3057 = fsub fast float %3052, %3055
  %3058 = fcmp fast olt float %3056, 0.000000e+00
  %3059 = fcmp fast olt float %3057, 0.000000e+00
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.CBufRet.f32 %3060, 1
  %3063 = extractvalue %dx.types.CBufRet.f32 %3060, 2
  %3064 = extractvalue %dx.types.CBufRet.f32 %3060, 3
  %3065 = select i1 %3058, float %3061, float %3063
  %3066 = select i1 %3059, float %3062, float %3064
  %3067 = fmul fast float %3065, %3056
  %3068 = fmul fast float %3066, %3057
  %3069 = call float @dx.op.unary.f32(i32 6, float %3067)  ; FAbs(value)
  %3070 = call float @dx.op.unary.f32(i32 6, float %3068)  ; FAbs(value)
  %3071 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %3072 = call float @dx.op.binary.f32(i32 35, float %3069, float %3070)  ; FMax(a,b)
  %3073 = fsub fast float %3071, %3072
  %3074 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3075 = fcmp fast ogt float %3074, 0.000000e+00
  br i1 %3075, label %3076, label %3117, !dx.controlflow.hints !95

; <label>:3076                                    ; preds = %3018
  %3077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %3051, float %3052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3078 = extractvalue %dx.types.ResRet.f32 %3077, 1
  %3079 = fcmp fast ogt float %3078, 0.000000e+00
  br i1 %3079, label %3080, label %3112

; <label>:3080                                    ; preds = %3076
  %3081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %31, float %3051, float %3052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3082 = extractvalue %dx.types.ResRet.f32 %3081, 0
  %3083 = extractvalue %dx.types.ResRet.f32 %3081, 1
  %3084 = extractvalue %dx.types.ResRet.f32 %3081, 2
  %3085 = extractvalue %dx.types.ResRet.f32 %3081, 3
  %3086 = fsub fast float 1.000000e+00, %3033
  %3087 = fsub fast float %3086, %3044
  %3088 = fmul fast float %3087, 0x400921FB60000000
  %3089 = fadd fast float %3088, 0x3FF921FB60000000
  %3090 = call float @dx.op.unary.f32(i32 13, float %3089)  ; Sin(value)
  %3091 = fadd fast float %3090, -1.000000e+00
  %3092 = fmul fast float %3091, 0x3FD45F3060000000
  %3093 = fmul fast float %3087, 0x401921FB60000000
  %3094 = fadd fast float %3093, 0x400921FB60000000
  %3095 = call float @dx.op.unary.f32(i32 13, float %3094)  ; Sin(value)
  %3096 = fadd fast float %3095, 0x3E7777A5C0000000
  %3097 = fmul fast float %3096, 0x3FC45F3060000000
  %3098 = fmul fast float %3087, 0x4022D97C80000000
  %3099 = fadd fast float %3098, 0x4012D97C80000000
  %3100 = call float @dx.op.unary.f32(i32 13, float %3099)  ; Sin(value)
  %3101 = fadd fast float %3100, 1.000000e+00
  %3102 = fmul fast float %3101, 0x3FBB2995E0000000
  %3103 = fmul fast float %3087, 0x402921FB60000000
  %3104 = fadd fast float %3103, 0x401921FB60000000
  %3105 = call float @dx.op.unary.f32(i32 13, float %3104)  ; Sin(value)
  %3106 = fadd fast float %3105, 0xBE8777A5C0000000
  %3107 = fmul fast float %3106, 0x3FB45F3060000000
  %3108 = call float @dx.op.dot4.f32(i32 56, float %3082, float %3083, float %3084, float %3085, float %3092, float %3097, float %3102, float %3107)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3109 = fmul fast float %3108, 0xBFF7154760000000
  %3110 = call float @dx.op.unary.f32(i32 21, float %3109)  ; Exp(value)
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  br label %3112

; <label>:3112                                    ; preds = %3080, %3076
  %3113 = phi float [ %3111, %3080 ], [ 1.000000e+00, %3076 ]
  %3114 = fadd fast float %3113, -1.000000e+00
  %3115 = fmul fast float %3114, %3074
  %3116 = fadd fast float %3115, 1.000000e+00
  br label %3117

; <label>:3117                                    ; preds = %3112, %3018
  %3118 = phi float [ %3116, %3112 ], [ 1.000000e+00, %3018 ]
  %3119 = fmul fast float %3118, %3014
  %3120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3121 = extractvalue %dx.types.CBufRet.f32 %3120, 0
  %3122 = extractvalue %dx.types.CBufRet.f32 %3120, 1
  %3123 = extractvalue %dx.types.CBufRet.f32 %3120, 2
  %3124 = fadd fast float %3121, %127
  %3125 = fadd fast float %3122, %128
  %3126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3127 = extractvalue %dx.types.CBufRet.f32 %3126, 1
  %3128 = fsub fast float -0.000000e+00, %3124
  %3129 = fsub fast float -0.000000e+00, %3125
  %3130 = fsub fast float -0.000000e+00, %129
  %3131 = fsub fast float %3130, %3123
  %3132 = fadd fast float %3131, %3127
  %3133 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3128, float %3129, float %3132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3134 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2366, float %2367, float %2368)  ; Dot3(ax,ay,az,bx,by,bz)
  %3135 = fdiv fast float 1.000000e+00, %3134
  %3136 = fmul fast float %3135, %3133
  %3137 = fmul fast float %2366, %3136
  %3138 = fmul fast float %2367, %3136
  %3139 = fadd fast float %3137, %3124
  %3140 = fadd fast float %3138, %3125
  %3141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3142 = extractvalue %dx.types.CBufRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.CBufRet.f32 %3141, 1
  %3144 = fsub fast float %3139, %3142
  %3145 = fsub fast float %3140, %3143
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 2
  %3148 = extractvalue %dx.types.CBufRet.f32 %3146, 3
  %3149 = fmul fast float %3144, %3147
  %3150 = fmul fast float %3145, %3148
  %3151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.i32 %3151, 3
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3159, label %3154

; <label>:3154                                    ; preds = %3117
  %3155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %3149, float %3150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.ResRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.ResRet.f32 %3155, 2
  br label %3164

; <label>:3159                                    ; preds = %3117
  %3160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %31, float %3149, float %3150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.ResRet.f32 %3160, 1
  %3163 = extractvalue %dx.types.ResRet.f32 %3160, 2
  br label %3164

; <label>:3164                                    ; preds = %3159, %3154
  %3165 = phi float [ %3156, %3154 ], [ %3161, %3159 ]
  %3166 = phi float [ %3157, %3154 ], [ %3162, %3159 ]
  %3167 = phi float [ %3158, %3154 ], [ %3163, %3159 ]
  %3168 = extractvalue %dx.types.CBufRet.f32 %3126, 2
  %3169 = fmul fast float %3168, %3165
  %3170 = extractvalue %dx.types.CBufRet.f32 %3126, 0
  %3171 = fsub fast float %3136, %3170
  %3172 = fsub fast float %3171, %3169
  %3173 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3172)  ; FMax(a,b)
  %3174 = fmul fast float %3173, %3166
  %3175 = call float @dx.op.binary.f32(i32 36, float %3167, float %3174)  ; FMin(a,b)
  %3176 = fmul fast float %3175, 0xBFF7154760000000
  %3177 = call float @dx.op.unary.f32(i32 21, float %3176)  ; Exp(value)
  %3178 = fmul fast float %3119, %3177
  br label %3179

; <label>:3179                                    ; preds = %3164, %3013
  %3180 = phi float [ %3178, %3164 ], [ %3014, %3013 ]
  %3181 = call float @dx.op.binary.f32(i32 36, float %3180, float %3180)  ; FMin(a,b)
  %3182 = call float @dx.op.binary.f32(i32 36, float %3180, float %3181)  ; FMin(a,b)
  %3183 = fcmp fast ogt float %3182, 0.000000e+00
  br i1 %3183, label %3184, label %3508, !dx.controlflow.hints !96

; <label>:3184                                    ; preds = %3179
  %3185 = fmul fast float %3180, %2377
  %3186 = fmul fast float %3180, %2378
  %3187 = fmul fast float %3180, %2379
  %3188 = fsub fast float %2366, %1881
  %3189 = fsub fast float %2367, %1880
  %3190 = fsub fast float %2368, %1879
  %3191 = call float @dx.op.dot3.f32(i32 55, float %3188, float %3189, float %3190, float %3188, float %3189, float %3190)  ; Dot3(ax,ay,az,bx,by,bz)
  %3192 = call float @dx.op.unary.f32(i32 25, float %3191)  ; Rsqrt(value)
  %3193 = fmul fast float %3192, %3188
  %3194 = fmul fast float %3192, %3189
  %3195 = fmul fast float %3192, %3190
  %3196 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2367, float %2368, float %1888, float %1889, float %1890)  ; Dot3(ax,ay,az,bx,by,bz)
  %3197 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1877, float %1876, float %3193, float %3194, float %3195)  ; Dot3(ax,ay,az,bx,by,bz)
  %3198 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  %3199 = fmul fast float %3198, %3198
  %3200 = fmul fast float %3199, %1951
  %3201 = call float @dx.op.unary.f32(i32 7, float %3200)  ; Saturate(value)
  %3202 = fmul fast float %3201, %3198
  %3203 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1889, float %1890, float %3193, float %3194, float %3195)  ; Dot3(ax,ay,az,bx,by,bz)
  %3204 = fmul fast float %3203, %3203
  %3205 = call float @dx.op.unary.f32(i32 6, float %3196)  ; FAbs(value)
  %3206 = call float @dx.op.binary.f32(i32 35, float %2334, float 0x3F847AE140000000)  ; FMax(a,b)
  %3207 = fmul fast float %3206, %3206
  %3208 = fmul fast float %3207, %3207
  %3209 = fsub fast float 1.000000e+00, %3208
  %3210 = fmul fast float %1898, %1898
  %3211 = fmul fast float %3210, %3209
  %3212 = fadd fast float %3211, %3208
  %3213 = bitcast float %3212 to i32
  %3214 = ashr i32 %3213, 1
  %3215 = add nsw i32 %3214, 532487669
  %3216 = bitcast i32 %3215 to float
  %3217 = fadd fast float %3216, %1898
  %3218 = call float @dx.op.dot3.f32(i32 55, float %1609, float %1610, float %1611, float %3193, float %3194, float %3195)  ; Dot3(ax,ay,az,bx,by,bz)
  %3219 = fsub fast float 1.000000e+00, %1597
  %3220 = call float @dx.op.binary.f32(i32 35, float %3219, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3221 = fmul fast float %3220, %3220
  %3222 = fmul fast float %3221, %3208
  %3223 = fmul fast float %3218, %3218
  %3224 = fsub fast float 1.000000e+00, %3204
  %3225 = fsub fast float %3224, %3223
  %3226 = fdiv fast float %3223, %3222
  %3227 = fadd fast float %3226, %3204
  %3228 = fdiv fast float %3225, %3208
  %3229 = fadd fast float %3227, %3228
  %3230 = fmul fast float %3205, %3205
  %3231 = fmul fast float %3230, %3209
  %3232 = fadd fast float %3231, %3208
  %3233 = bitcast float %3232 to i32
  %3234 = ashr i32 %3233, 1
  %3235 = add nsw i32 %3234, 532487669
  %3236 = bitcast i32 %3235 to float
  %3237 = fadd fast float %3236, %3205
  %3238 = fmul fast float %3208, %3220
  %3239 = fmul fast float %3229, %3229
  %3240 = fmul fast float %3239, %3238
  %3241 = fmul fast float %3240, %3217
  %3242 = fmul fast float %3241, %3237
  %3243 = fdiv fast float 0x3FF0A00000000000, %3242
  %3244 = fmul fast float %2196, 0x3FF9999980000000
  %3245 = fsub fast float 5.000000e+00, %3244
  %3246 = call float @dx.op.unary.f32(i32 6, float %3197)  ; FAbs(value)
  %3247 = fsub fast float 1.000000e+00, %3246
  %3248 = fmul fast float %2196, 0x41D9660740000000
  %3249 = fadd fast float %3248, 0xC1EFBF8940000000
  %3250 = bitcast float %3247 to i32
  %3251 = sitofp i32 %3250 to float
  %3252 = fmul fast float %3251, %3245
  %3253 = fadd fast float %3249, %3252
  %3254 = fptosi float %3253 to i32
  %3255 = bitcast i32 %3254 to float
  %3256 = fsub fast float 1.000000e+00, %1882
  %3257 = fsub fast float 1.000000e+00, %1883
  %3258 = fsub fast float 1.000000e+00, %1896
  %3259 = fmul fast float %3255, %3256
  %3260 = fmul fast float %3255, %3257
  %3261 = fmul fast float %3255, %3258
  %3262 = fadd fast float %3259, %1882
  %3263 = fadd fast float %3260, %1883
  %3264 = fadd fast float %3261, %1896
  br i1 %2219, label %3265, label %3288

; <label>:3265                                    ; preds = %3184
  %3266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1472, float %3246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3270 = fadd fast float %3267, -5.000000e-01
  %3271 = fadd fast float %3268, -5.000000e-01
  %3272 = fadd fast float %3269, -5.000000e-01
  %3273 = fmul fast float %1882, 4.000000e+00
  %3274 = fmul fast float %3273, %3256
  %3275 = fmul fast float %3274, %3270
  %3276 = fmul fast float %1883, 4.000000e+00
  %3277 = fmul fast float %3276, %3257
  %3278 = fmul fast float %3277, %3271
  %3279 = fmul fast float %1896, 4.000000e+00
  %3280 = fmul fast float %3279, %3258
  %3281 = fmul fast float %3280, %3272
  %3282 = fadd fast float %3275, %3262
  %3283 = fadd fast float %3278, %3263
  %3284 = fadd fast float %3281, %3264
  %3285 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3286 = call float @dx.op.unary.f32(i32 7, float %3283)  ; Saturate(value)
  %3287 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  br label %3288

; <label>:3288                                    ; preds = %3265, %3184
  %3289 = phi float [ %3285, %3265 ], [ %3262, %3184 ]
  %3290 = phi float [ %3286, %3265 ], [ %3263, %3184 ]
  %3291 = phi float [ %3287, %3265 ], [ %3264, %3184 ]
  %3292 = fmul fast float %3196, 9.843750e-01
  %3293 = fadd fast float %3292, 7.812500e-03
  %3294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %3293, float %2200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3295 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3296 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3297 = extractvalue %dx.types.ResRet.f32 %3294, 2
  %3298 = extractvalue %dx.types.ResRet.f32 %3294, 3
  %3299 = fsub fast float %3297, %3295
  %3300 = fsub fast float %3298, %3296
  %3301 = fmul fast float %3299, %2206
  %3302 = fmul fast float %3300, %2206
  %3303 = fadd fast float %3301, %3295
  %3304 = fadd fast float %3302, %3296
  %3305 = fmul fast float %3303, %1882
  %3306 = fmul fast float %3303, %1883
  %3307 = fmul fast float %3303, %1896
  %3308 = fadd fast float %3305, %3304
  %3309 = fadd fast float %3306, %3304
  %3310 = fadd fast float %3307, %3304
  br i1 %2219, label %3311, label %3334

; <label>:3311                                    ; preds = %3288
  %3312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1472, float %3196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3316 = fadd fast float %3313, -5.000000e-01
  %3317 = fadd fast float %3314, -5.000000e-01
  %3318 = fadd fast float %3315, -5.000000e-01
  %3319 = fmul fast float %1882, 4.000000e+00
  %3320 = fmul fast float %3319, %3256
  %3321 = fmul fast float %3320, %3316
  %3322 = fmul fast float %1883, 4.000000e+00
  %3323 = fmul fast float %3322, %3257
  %3324 = fmul fast float %3323, %3317
  %3325 = fmul fast float %1896, 4.000000e+00
  %3326 = fmul fast float %3325, %3258
  %3327 = fmul fast float %3326, %3318
  %3328 = fadd fast float %3321, %3308
  %3329 = fadd fast float %3324, %3309
  %3330 = fadd fast float %3327, %3310
  %3331 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  %3332 = call float @dx.op.unary.f32(i32 7, float %3329)  ; Saturate(value)
  %3333 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  br label %3334

; <label>:3334                                    ; preds = %3311, %3288
  %3335 = phi float [ %3331, %3311 ], [ %3308, %3288 ]
  %3336 = phi float [ %3332, %3311 ], [ %3309, %3288 ]
  %3337 = phi float [ %3333, %3311 ], [ %3310, %3288 ]
  %3338 = call float @dx.op.binary.f32(i32 35, float %3336, float %3337)  ; FMax(a,b)
  %3339 = call float @dx.op.binary.f32(i32 35, float %3335, float %3338)  ; FMax(a,b)
  %3340 = fsub fast float 1.000000e+00, %3339
  %3341 = call float @dx.op.binary.f32(i32 35, float %3205, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3342 = fdiv fast float %878, %3341
  %3343 = fmul fast float %2274, %3342
  %3344 = fmul fast float %2276, %3342
  %3345 = fmul fast float %2278, %3342
  %3346 = call float @dx.op.unary.f32(i32 21, float %3343)  ; Exp(value)
  %3347 = call float @dx.op.unary.f32(i32 21, float %3344)  ; Exp(value)
  %3348 = call float @dx.op.unary.f32(i32 21, float %3345)  ; Exp(value)
  %3349 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  %3350 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3351 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3352 = select i1 %2271, float %3349, float 0.000000e+00
  %3353 = select i1 %2272, float %3350, float 0.000000e+00
  %3354 = select i1 %2273, float %3351, float 0.000000e+00
  %3355 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2367, float %2368, float %1895, float %1894, float %1893)  ; Dot3(ax,ay,az,bx,by,bz)
  %3356 = call float @dx.op.unary.f32(i32 7, float %3355)  ; Saturate(value)
  %3357 = fmul fast float %3356, 9.843750e-01
  %3358 = fadd fast float %3357, 7.812500e-03
  %3359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %3358, float %2200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3360 = extractvalue %dx.types.ResRet.f32 %3359, 0
  %3361 = extractvalue %dx.types.ResRet.f32 %3359, 1
  %3362 = extractvalue %dx.types.ResRet.f32 %3359, 2
  %3363 = extractvalue %dx.types.ResRet.f32 %3359, 3
  %3364 = fsub fast float %3362, %3360
  %3365 = fsub fast float %3363, %3361
  %3366 = fmul fast float %3364, %2206
  %3367 = fmul fast float %3365, %2206
  %3368 = fadd fast float %3366, %3360
  %3369 = fadd fast float %3367, %3361
  %3370 = fmul fast float %3368, %1882
  %3371 = fmul fast float %3368, %1883
  %3372 = fmul fast float %3368, %1896
  %3373 = fadd fast float %3370, %3369
  %3374 = fadd fast float %3371, %3369
  %3375 = fadd fast float %3372, %3369
  br i1 %2219, label %3376, label %3399

; <label>:3376                                    ; preds = %3334
  %3377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1472, float %3356, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = fadd fast float %3378, -5.000000e-01
  %3382 = fadd fast float %3379, -5.000000e-01
  %3383 = fadd fast float %3380, -5.000000e-01
  %3384 = fmul fast float %1882, 4.000000e+00
  %3385 = fmul fast float %3384, %3256
  %3386 = fmul fast float %3385, %3381
  %3387 = fmul fast float %1883, 4.000000e+00
  %3388 = fmul fast float %3387, %3257
  %3389 = fmul fast float %3388, %3382
  %3390 = fmul fast float %1896, 4.000000e+00
  %3391 = fmul fast float %3390, %3258
  %3392 = fmul fast float %3391, %3383
  %3393 = fadd fast float %3386, %3373
  %3394 = fadd fast float %3389, %3374
  %3395 = fadd fast float %3392, %3375
  %3396 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3397 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3398 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  br label %3399

; <label>:3399                                    ; preds = %3376, %3334
  %3400 = phi float [ %3396, %3376 ], [ %3373, %3334 ]
  %3401 = phi float [ %3397, %3376 ], [ %3374, %3334 ]
  %3402 = phi float [ %3398, %3376 ], [ %3375, %3334 ]
  %3403 = call float @dx.op.binary.f32(i32 35, float %3401, float %3402)  ; FMax(a,b)
  %3404 = call float @dx.op.binary.f32(i32 35, float %3400, float %3403)  ; FMax(a,b)
  %3405 = fsub fast float 1.000000e+00, %3404
  %3406 = fmul fast float %2334, %2339
  %3407 = fadd fast float %2341, %3406
  %3408 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3409 = fsub fast float %2366, %1904
  %3410 = fsub fast float %2367, %1905
  %3411 = fsub fast float %2368, %1906
  %3412 = call float @dx.op.dot3.f32(i32 55, float %3409, float %3410, float %3411, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %3413 = call float @dx.op.unary.f32(i32 25, float %3412)  ; Rsqrt(value)
  %3414 = fmul fast float %3413, %3409
  %3415 = fmul fast float %3413, %3410
  %3416 = fmul fast float %3413, %3411
  %3417 = call float @dx.op.dot3.f32(i32 55, float %1895, float %1894, float %1893, float %3414, float %3415, float %3416)  ; Dot3(ax,ay,az,bx,by,bz)
  %3418 = fmul fast float %3417, %3417
  %3419 = call float @dx.op.unary.f32(i32 6, float %3356)  ; FAbs(value)
  %3420 = call float @dx.op.binary.f32(i32 35, float %3408, float 0x3F847AE140000000)  ; FMax(a,b)
  %3421 = fmul fast float %3420, %3420
  %3422 = fmul fast float %3421, %3421
  %3423 = fsub fast float 1.000000e+00, %3422
  %3424 = fmul fast float %3210, %3423
  %3425 = fadd fast float %3424, %3422
  %3426 = bitcast float %3425 to i32
  %3427 = ashr i32 %3426, 1
  %3428 = add nsw i32 %3427, 532487669
  %3429 = bitcast i32 %3428 to float
  %3430 = fadd fast float %3429, %1898
  %3431 = call float @dx.op.dot3.f32(i32 55, float %1609, float %1610, float %1611, float %3414, float %3415, float %3416)  ; Dot3(ax,ay,az,bx,by,bz)
  %3432 = fmul fast float %3221, %3422
  %3433 = fmul fast float %3431, %3431
  %3434 = fsub fast float 1.000000e+00, %3418
  %3435 = fsub fast float %3434, %3433
  %3436 = fdiv fast float %3433, %3432
  %3437 = fadd fast float %3436, %3418
  %3438 = fdiv fast float %3435, %3422
  %3439 = fadd fast float %3437, %3438
  %3440 = fmul fast float %3419, %3419
  %3441 = fmul fast float %3440, %3423
  %3442 = fadd fast float %3441, %3422
  %3443 = bitcast float %3442 to i32
  %3444 = ashr i32 %3443, 1
  %3445 = add nsw i32 %3444, 532487669
  %3446 = bitcast i32 %3445 to float
  %3447 = fadd fast float %3446, %3419
  %3448 = fmul fast float %3422, %3220
  %3449 = fmul fast float %3439, %3439
  %3450 = fmul fast float %3449, %3448
  %3451 = fmul fast float %3450, %3430
  %3452 = fmul fast float %3451, %3447
  %3453 = fdiv fast float 0x3FF0A00000000000, %3452
  %3454 = fmul fast float %3356, %3352
  %3455 = fmul fast float %3356, %3353
  %3456 = fmul fast float %3356, %3354
  %3457 = fmul fast float %3454, %3405
  %3458 = fmul fast float %3457, %3453
  %3459 = fmul fast float %3455, %3405
  %3460 = fmul fast float %3459, %3453
  %3461 = fmul fast float %3456, %3405
  %3462 = fmul fast float %3461, %3453
  %3463 = fmul fast float %3289, %3243
  %3464 = fmul fast float %3290, %3243
  %3465 = fmul fast float %3291, %3243
  %3466 = fsub fast float 1.000000e+00, %3197
  %3467 = bitcast float %3466 to i32
  %3468 = sitofp i32 %3467 to float
  %3469 = fmul fast float %3468, 5.000000e+00
  %3470 = fadd fast float %3469, 0xC1EFBF8940000000
  %3471 = fptosi float %3470 to i32
  %3472 = bitcast i32 %3471 to float
  %3473 = fmul fast float %3472, %1471
  %3474 = fmul fast float %3340, %3473
  %3475 = fmul fast float %3474, %2266
  %3476 = fmul fast float %3474, %2267
  %3477 = fmul fast float %3474, %2268
  %3478 = fadd fast float %3475, %3463
  %3479 = fadd fast float %3476, %3464
  %3480 = fadd fast float %3477, %3465
  %3481 = fmul fast float %3478, %3202
  %3482 = fmul fast float %3479, %3202
  %3483 = fmul fast float %3480, %3202
  %3484 = fmul fast float %3202, %3185
  %3485 = fmul fast float %3484, %3340
  %3486 = fmul fast float %3202, %3186
  %3487 = fmul fast float %3486, %3340
  %3488 = fmul fast float %3202, %3187
  %3489 = fmul fast float %3488, %3340
  %3490 = fadd fast float %3481, %3458
  %3491 = fadd fast float %3482, %3460
  %3492 = fadd fast float %3483, %3462
  %3493 = fmul fast float %3490, %3185
  %3494 = fmul fast float %3491, %3186
  %3495 = fmul fast float %3492, %3187
  %3496 = fadd fast float %3485, %2356
  %3497 = fmul fast float %3496, %1495
  %3498 = fadd fast float %3487, %2358
  %3499 = fmul fast float %3498, %1495
  %3500 = fadd fast float %3489, %2360
  %3501 = fmul fast float %3500, %1495
  %3502 = fadd fast float %3493, %2319
  %3503 = fmul fast float %3502, %1495
  %3504 = fadd fast float %3494, %2322
  %3505 = fmul fast float %3504, %1495
  %3506 = fadd fast float %3495, %2325
  %3507 = fmul fast float %3506, %1495
  br label %3508

; <label>:3508                                    ; preds = %3399, %3179, %2246
  %3509 = phi float [ %2320, %2246 ], [ %2320, %3179 ], [ %3503, %3399 ]
  %3510 = phi float [ %2323, %2246 ], [ %2323, %3179 ], [ %3505, %3399 ]
  %3511 = phi float [ %2326, %2246 ], [ %2326, %3179 ], [ %3507, %3399 ]
  %3512 = phi float [ %2357, %2246 ], [ %2357, %3179 ], [ %3497, %3399 ]
  %3513 = phi float [ %2359, %2246 ], [ %2359, %3179 ], [ %3499, %3399 ]
  %3514 = phi float [ %2361, %2246 ], [ %2361, %3179 ], [ %3501, %3399 ]
  %3515 = fmul fast float %1495, %2295
  %3516 = fsub fast float -0.000000e+00, %3515
  %3517 = fmul fast float %1495, %2296
  %3518 = fsub fast float -0.000000e+00, %3517
  %3519 = fmul fast float %1495, %2297
  %3520 = fsub fast float -0.000000e+00, %3519
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = fmul fast float %3522, %2301
  %3524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3525 = extractvalue %dx.types.CBufRet.f32 %3524, 3
  %3526 = fsub fast float 1.000000e+00, %1467
  %3527 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3528 = fadd fast float %3514, %1466
  %3529 = fmul fast float %3528, %1467
  %3530 = fmul fast float %3527, %3525
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 3
  %3533 = fmul fast float %3512, %1885
  %3534 = fmul fast float %3513, %1886
  %3535 = fmul fast float %3514, %1887
  %3536 = fcmp fast ogt float %63, %149
  %3537 = and i1 %3536, %1614
  %3538 = or i1 %1693, %3537
  %3539 = icmp eq i32 %1613, 2
  %3540 = fcmp fast ole float %63, %149
  %3541 = and i1 %3540, %3539
  %3542 = or i1 %3541, %3538
  br i1 %3537, label %3543, label %3802

; <label>:3543                                    ; preds = %3508
  %3544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3545 = extractvalue %dx.types.CBufRet.f32 %3544, 2
  %3546 = extractvalue %dx.types.CBufRet.f32 %3544, 3
  %3547 = fmul fast float %3545, %72
  %3548 = fmul fast float %3546, %73
  %3549 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3550 = call float @dx.op.unary.f32(i32 7, float %3548)  ; Saturate(value)
  %3551 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3549, float %3550, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  %3553 = extractvalue %dx.types.ResRet.f32 %3551, 1
  %3554 = extractvalue %dx.types.ResRet.f32 %3551, 2
  %3555 = extractvalue %dx.types.ResRet.f32 %3551, 3
  %3556 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %3549, float %3550, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3558 = extractvalue %dx.types.ResRet.f32 %3556, 1
  %3559 = extractvalue %dx.types.ResRet.f32 %3556, 2
  %3560 = extractvalue %dx.types.ResRet.f32 %3556, 3
  %3561 = call float @dx.op.binary.f32(i32 35, float %3553, float %3554)  ; FMax(a,b)
  %3562 = call float @dx.op.binary.f32(i32 35, float %3552, float %3561)  ; FMax(a,b)
  %3563 = call float @dx.op.binary.f32(i32 35, float %3562, float %3555)  ; FMax(a,b)
  %3564 = call float @dx.op.binary.f32(i32 36, float %3558, float %3559)  ; FMin(a,b)
  %3565 = call float @dx.op.binary.f32(i32 36, float %3557, float %3564)  ; FMin(a,b)
  %3566 = call float @dx.op.binary.f32(i32 36, float %3565, float %3560)  ; FMin(a,b)
  %3567 = fmul fast float %3563, 2.550000e+02
  %3568 = fadd fast float %3567, 0x3F70101020000000
  %3569 = fptoui float %3568 to i32
  %3570 = fmul fast float %3566, 2.550000e+02
  %3571 = fadd fast float %3570, 0x3F70101020000000
  %3572 = fptoui float %3571 to i32
  %3573 = icmp ult i32 %3569, %3572
  br i1 %3573, label %3574, label %3742

; <label>:3574                                    ; preds = %3543
  %3575 = fcmp fast ogt float %62, 9.843750e-01
  %3576 = fadd fast float %63, -4.000000e+00
  %3577 = select i1 %3575, float -4.000000e+00, float %3576
  %3578 = call float @dx.op.binary.f32(i32 35, float %3577, float 0.000000e+00)  ; FMax(a,b)
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 0
  %3581 = fadd fast float %3580, %3578
  %3582 = extractvalue %dx.types.CBufRet.f32 %3579, 2
  %3583 = fmul fast float %3581, %3582
  %3584 = call float @dx.op.unary.f32(i32 23, float %3583)  ; Log(value)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3579, 3
  %3586 = fmul fast float %3585, %3584
  %3587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3588 = extractvalue %dx.types.CBufRet.f32 %3587, 2
  %3589 = fmul fast float %3586, %3588
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = uitofp i32 %3569 to float
  %3592 = uitofp i32 %3572 to float
  %3593 = fadd fast float %3591, 5.000000e-01
  %3594 = fadd fast float %3592, 5.000000e-01
  %3595 = fmul fast float %3588, %3593
  %3596 = fmul fast float %3588, %3594
  %3597 = fadd fast float %3595, 0x3F0FFB4800000000
  %3598 = fadd fast float %3596, 0xBF0FFB4800000000
  %3599 = call float @dx.op.binary.f32(i32 35, float %3590, float %3597)  ; FMax(a,b)
  %3600 = call float @dx.op.binary.f32(i32 36, float %3599, float %3598)  ; FMin(a,b)
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3604 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3605 = fmul fast float %3602, %3600
  %3606 = fadd fast float %3604, %3605
  %3607 = fadd fast float %3604, %3603
  %3608 = fsub fast float %3602, %3603
  %3609 = fadd fast float %3608, %3604
  %3610 = call float @dx.op.binary.f32(i32 35, float %3606, float %3607)  ; FMax(a,b)
  %3611 = call float @dx.op.binary.f32(i32 36, float %3610, float %3609)  ; FMin(a,b)
  %3612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %3549, float %3550, float %3611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.i32 %3616, 0
  %3618 = extractvalue %dx.types.CBufRet.i32 %3616, 1
  %3619 = uitofp i32 %3617 to float
  %3620 = uitofp i32 %3618 to float
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3624 = fmul fast float %3619, %3549
  %3625 = fmul fast float %3620, %3550
  %3626 = fadd fast float %3624, -5.000000e-01
  %3627 = fadd fast float %3625, -5.000000e-01
  %3628 = call float @dx.op.unary.f32(i32 22, float %3626)  ; Frc(value)
  %3629 = call float @dx.op.unary.f32(i32 22, float %3627)  ; Frc(value)
  %3630 = fmul fast float %3628, %3628
  %3631 = fmul fast float %3630, %3628
  %3632 = fsub fast float 3.000000e+00, %3628
  %3633 = fmul fast float %3630, %3632
  %3634 = fmul fast float %3628, 3.000000e+00
  %3635 = fmul fast float %3631, 3.000000e+00
  %3636 = fmul fast float %3630, 6.000000e+00
  %3637 = fsub fast float %3635, %3636
  %3638 = fadd fast float %3637, 4.000000e+00
  %3639 = fmul fast float %3638, 0x3FC5555560000000
  %3640 = fmul fast float %3631, -3.000000e+00
  %3641 = fadd fast float %3630, %3628
  %3642 = fmul fast float %3641, 3.000000e+00
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fadd fast float %3643, %3642
  %3645 = fmul fast float %3631, 0x3FC5555560000000
  %3646 = fmul fast float %3629, %3629
  %3647 = fmul fast float %3646, %3629
  %3648 = fsub fast float 3.000000e+00, %3629
  %3649 = fmul fast float %3646, %3648
  %3650 = fmul fast float %3629, 3.000000e+00
  %3651 = fmul fast float %3647, 3.000000e+00
  %3652 = fmul fast float %3646, 6.000000e+00
  %3653 = fsub fast float %3651, %3652
  %3654 = fadd fast float %3653, 4.000000e+00
  %3655 = fmul fast float %3654, 0x3FC5555560000000
  %3656 = fmul fast float %3647, -3.000000e+00
  %3657 = fadd fast float %3646, %3629
  %3658 = fmul fast float %3657, 3.000000e+00
  %3659 = fadd fast float %3656, 1.000000e+00
  %3660 = fadd fast float %3659, %3658
  %3661 = fmul fast float %3647, 0x3FC5555560000000
  %3662 = fadd fast float %3628, 1.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3634
  %3664 = fadd fast float %3663, %3633
  %3665 = fadd fast float %3664, %3638
  %3666 = fmul fast float %3665, 0x3FC5555560000000
  %3667 = fdiv fast float %3639, %3666
  %3668 = fsub fast float %3662, %3667
  %3669 = fsub fast float 1.000000e+00, %3628
  %3670 = fadd fast float %3644, %3631
  %3671 = fmul fast float %3670, 0x3FC5555560000000
  %3672 = fdiv fast float %3645, %3671
  %3673 = fadd fast float %3669, %3672
  %3674 = fadd fast float %3629, 1.000000e+00
  %3675 = fsub fast float 1.000000e+00, %3650
  %3676 = fadd fast float %3675, %3649
  %3677 = fadd fast float %3676, %3654
  %3678 = fmul fast float %3677, 0x3FC5555560000000
  %3679 = fdiv fast float %3655, %3678
  %3680 = fsub fast float %3674, %3679
  %3681 = fsub fast float 1.000000e+00, %3629
  %3682 = fadd fast float %3660, %3647
  %3683 = fmul fast float %3682, 0x3FC5555560000000
  %3684 = fdiv fast float %3661, %3683
  %3685 = fadd fast float %3684, %3681
  %3686 = fmul fast float %3668, %3622
  %3687 = fsub fast float %3549, %3686
  %3688 = fmul fast float %3673, %3622
  %3689 = fadd fast float %3688, %3549
  %3690 = fmul fast float %3685, %3623
  %3691 = fadd fast float %3690, %3550
  %3692 = fmul fast float %3680, %3623
  %3693 = fsub fast float %3550, %3692
  %3694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3687, float %3693, float %3611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3695 = extractvalue %dx.types.ResRet.f32 %3694, 0
  %3696 = extractvalue %dx.types.ResRet.f32 %3694, 1
  %3697 = extractvalue %dx.types.ResRet.f32 %3694, 2
  %3698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3689, float %3693, float %3611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3700 = extractvalue %dx.types.ResRet.f32 %3698, 1
  %3701 = extractvalue %dx.types.ResRet.f32 %3698, 2
  %3702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3687, float %3691, float %3611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.ResRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3702, 2
  %3706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3689, float %3691, float %3611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = fsub fast float %3703, %3695
  %3711 = fsub fast float %3704, %3696
  %3712 = fsub fast float %3705, %3697
  %3713 = fmul fast float %3710, %3683
  %3714 = fmul fast float %3711, %3683
  %3715 = fmul fast float %3712, %3683
  %3716 = fadd fast float %3713, %3695
  %3717 = fadd fast float %3714, %3696
  %3718 = fadd fast float %3715, %3697
  %3719 = fsub fast float %3707, %3699
  %3720 = fsub fast float %3708, %3700
  %3721 = fsub fast float %3709, %3701
  %3722 = fmul fast float %3719, %3683
  %3723 = fmul fast float %3720, %3683
  %3724 = fmul fast float %3721, %3683
  %3725 = fsub fast float %3699, %3716
  %3726 = fadd fast float %3725, %3722
  %3727 = fsub fast float %3700, %3717
  %3728 = fadd fast float %3727, %3723
  %3729 = fsub fast float %3701, %3718
  %3730 = fadd fast float %3729, %3724
  %3731 = fmul fast float %3726, %3671
  %3732 = fmul fast float %3728, %3671
  %3733 = fmul fast float %3730, %3671
  %3734 = fadd fast float %3731, %3716
  %3735 = fadd fast float %3732, %3717
  %3736 = fadd fast float %3733, %3718
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 1
  %3739 = fmul fast float %3734, %3738
  %3740 = fmul fast float %3735, %3738
  %3741 = fmul fast float %3736, %3738
  br label %3742

; <label>:3742                                    ; preds = %3574, %3543
  %3743 = phi float [ %3613, %3574 ], [ 1.000000e+00, %3543 ]
  %3744 = phi float [ %3614, %3574 ], [ 1.000000e+00, %3543 ]
  %3745 = phi float [ %3615, %3574 ], [ 1.000000e+00, %3543 ]
  %3746 = phi float [ %3739, %3574 ], [ 0.000000e+00, %3543 ]
  %3747 = phi float [ %3740, %3574 ], [ 0.000000e+00, %3543 ]
  %3748 = phi float [ %3741, %3574 ], [ 0.000000e+00, %3543 ]
  %3749 = fmul fast float %3746, %3516
  %3750 = fmul fast float %3747, %3518
  %3751 = fmul fast float %3748, %3520
  %3752 = call float @dx.op.dot3.f32(i32 55, float %3743, float %3744, float %3745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3753 = call float @dx.op.dot3.f32(i32 55, float %3749, float %3750, float %3751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = select i1 %188, float %3752, float %3743
  %3755 = select i1 %188, float %3752, float %3744
  %3756 = select i1 %188, float 1.000000e+00, float %3745
  %3757 = select i1 %188, float %3753, float %3749
  %3758 = select i1 %188, float 0.000000e+00, float %3750
  %3759 = select i1 %188, float 0.000000e+00, float %3751
  %3760 = fmul fast float %3754, %3533
  %3761 = fmul fast float %3755, %3534
  %3762 = fmul fast float %3756, %3535
  %3763 = fadd fast float %3760, %3757
  %3764 = fadd fast float %3761, %3758
  %3765 = fadd fast float %3759, %3762
  %3766 = fmul fast float %3754, %3509
  %3767 = fmul fast float %3755, %3510
  %3768 = fmul fast float %3756, %3511
  %3769 = fmul fast float %72, 2.000000e+00
  %3770 = fmul fast float %3769, %3545
  %3771 = fmul fast float %73, 2.000000e+00
  %3772 = fmul fast float %3771, %3546
  %3773 = fsub fast float 1.000000e+00, %3770
  %3774 = fsub fast float 1.000000e+00, %3772
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3779 = fmul fast float %3773, %3776
  %3780 = fmul fast float %3773, %3777
  %3781 = fmul fast float %3773, %3778
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3785 = extractvalue %dx.types.CBufRet.f32 %3782, 2
  %3786 = fmul fast float %3774, %3783
  %3787 = fmul fast float %3774, %3784
  %3788 = fmul fast float %3774, %3785
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.CBufRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.CBufRet.f32 %3789, 2
  %3793 = fadd fast float %3786, %3790
  %3794 = fadd fast float %3793, %3779
  %3795 = fadd fast float %3787, %3791
  %3796 = fadd fast float %3795, %3780
  %3797 = fadd fast float %3788, %3792
  %3798 = fadd fast float %3797, %3781
  %3799 = fmul fast float %3794, %149
  %3800 = fmul fast float %3796, %149
  %3801 = fmul fast float %3798, %149
  br label %3802

; <label>:3802                                    ; preds = %3742, %3508
  %3803 = phi float [ %3799, %3742 ], [ %127, %3508 ]
  %3804 = phi float [ %3800, %3742 ], [ %128, %3508 ]
  %3805 = phi float [ %3801, %3742 ], [ %129, %3508 ]
  %3806 = phi float [ %149, %3742 ], [ %63, %3508 ]
  %3807 = phi float [ %3763, %3742 ], [ %3533, %3508 ]
  %3808 = phi float [ %3764, %3742 ], [ %3534, %3508 ]
  %3809 = phi float [ %3765, %3742 ], [ %3535, %3508 ]
  %3810 = phi float [ %3766, %3742 ], [ %3509, %3508 ]
  %3811 = phi float [ %3767, %3742 ], [ %3510, %3508 ]
  %3812 = phi float [ %3768, %3742 ], [ %3511, %3508 ]
  %3813 = phi float [ %3743, %3742 ], [ 1.000000e+00, %3508 ]
  br i1 %3542, label %4968, label %3814

; <label>:3814                                    ; preds = %3802
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.CBufRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.CBufRet.f32 %3815, 2
  %3819 = extractvalue %dx.types.CBufRet.f32 %3815, 3
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.CBufRet.f32 %3820, 1
  %3823 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3824 = extractvalue %dx.types.CBufRet.f32 %3820, 3
  %3825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %3826 = extractvalue %dx.types.CBufRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.CBufRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.CBufRet.f32 %3825, 2
  %3829 = extractvalue %dx.types.CBufRet.f32 %3825, 3
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3834 = extractvalue %dx.types.CBufRet.f32 %3830, 3
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 3
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3839 = extractvalue %dx.types.CBufRet.f32 %3837, 0
  %3840 = extractvalue %dx.types.CBufRet.f32 %3837, 1
  %3841 = extractvalue %dx.types.CBufRet.f32 %3837, 2
  %3842 = fcmp fast olt float %3841, -5.000000e-01
  %3843 = call float @dx.op.dot3.f32(i32 55, float %3803, float %3804, float %3805, float %3803, float %3804, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3844 = call float @dx.op.unary.f32(i32 25, float %3843)  ; Rsqrt(value)
  %3845 = fmul fast float %3844, %3843
  %3846 = fmul fast float %3844, %3803
  %3847 = fmul fast float %3844, %3804
  %3848 = fmul fast float %3844, %3805
  %3849 = fadd fast float %3845, %3819
  %3850 = call float @dx.op.dot3.f32(i32 55, float %3846, float %3847, float %3848, float %3816, float %3817, float %3818)  ; Dot3(ax,ay,az,bx,by,bz)
  %3851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.i32 %3851, 1
  %3853 = and i32 %3852, 1
  %3854 = icmp ne i32 %3853, 0
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 2
  %3857 = fcmp fast ogt float %3856, 0.000000e+00
  %3858 = and i1 %3854, %3857
  br i1 %3858, label %3859, label %4265, !dx.controlflow.hints !97

; <label>:3859                                    ; preds = %3814
  %3860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %3861 = extractvalue %dx.types.CBufRet.f32 %3860, 3
  %3862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.f32 %3862, 2
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3866 = fsub fast float %3863, %3865
  %3867 = and i32 %3852, 2
  %3868 = extractvalue %dx.types.CBufRet.i32 %3851, 0
  %3869 = call i32 @dx.op.binary.i32(i32 40, i32 %3868, i32 3)  ; UMin(a,b)
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.CBufRet.f32 %3864, 0
  %3874 = extractvalue %dx.types.CBufRet.f32 %3864, 1
  %3875 = fsub fast float %3871, %3873
  %3876 = fsub fast float %3872, %3874
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 0
  %3879 = fcmp fast ogt float %3878, 0.000000e+00
  %3880 = fsub fast float -0.000000e+00, %3875
  %3881 = fsub fast float -0.000000e+00, %3876
  %3882 = call float @dx.op.dot2.f32(i32 54, float %3846, float %3847, float %3846, float %3847)  ; Dot2(ax,ay,bx,by)
  %3883 = call float @dx.op.dot2.f32(i32 54, float %3846, float %3847, float %3880, float %3881)  ; Dot2(ax,ay,bx,by)
  %3884 = fmul fast float %3883, 2.000000e+00
  %3885 = call float @dx.op.dot2.f32(i32 54, float %3880, float %3881, float %3880, float %3881)  ; Dot2(ax,ay,bx,by)
  %3886 = fmul fast float %3878, %3878
  %3887 = fsub fast float %3885, %3886
  %3888 = fmul fast float %3884, %3884
  %3889 = fmul fast float %3882, 4.000000e+00
  %3890 = fmul fast float %3889, %3887
  %3891 = fsub fast float %3888, %3890
  %3892 = fcmp fast ogt float %3891, 0.000000e+00
  br i1 %3892, label %3893, label %3908

; <label>:3893                                    ; preds = %3859
  %3894 = fcmp fast ogt float %3884, 0.000000e+00
  %3895 = call float @dx.op.unary.f32(i32 24, float %3891)  ; Sqrt(value)
  %3896 = fsub fast float -0.000000e+00, %3895
  %3897 = select i1 %3894, float %3895, float %3896
  %3898 = fadd fast float %3897, %3884
  %3899 = fmul float %3898, -5.000000e-01
  %3900 = fdiv fast float %3899, %3882
  %3901 = call float @dx.op.binary.f32(i32 35, float %3900, float 0.000000e+00)  ; FMax(a,b)
  %3902 = call float @dx.op.binary.f32(i32 36, float %3845, float %3901)  ; FMin(a,b)
  %3903 = fdiv fast float %3887, %3899
  %3904 = call float @dx.op.binary.f32(i32 35, float %3903, float 0.000000e+00)  ; FMax(a,b)
  %3905 = call float @dx.op.binary.f32(i32 36, float %3845, float %3904)  ; FMin(a,b)
  %3906 = call float @dx.op.binary.f32(i32 36, float %3902, float %3905)  ; FMin(a,b)
  %3907 = call float @dx.op.binary.f32(i32 35, float %3902, float %3905)  ; FMax(a,b)
  br label %3908

; <label>:3908                                    ; preds = %3893, %3859
  %3909 = phi float [ %3907, %3893 ], [ -1.000000e+00, %3859 ]
  %3910 = phi float [ %3906, %3893 ], [ -1.000000e+00, %3859 ]
  %3911 = phi i1 [ true, %3893 ], [ false, %3859 ]
  %3912 = and i1 %3879, %3911
  br i1 %3912, label %3913, label %3915

; <label>:3913                                    ; preds = %3908
  %3914 = fcmp fast oeq float %3910, %3909
  br i1 %3914, label %4218, label %3916

; <label>:3915                                    ; preds = %3908
  br i1 %3879, label %4218, label %3916

; <label>:3916                                    ; preds = %3915, %3913
  %3917 = phi float [ %3845, %3915 ], [ %3909, %3913 ]
  %3918 = phi float [ 0.000000e+00, %3915 ], [ %3910, %3913 ]
  %3919 = icmp ne i32 %3867, 0
  %3920 = fmul fast float %3917, %3848
  %3921 = fadd fast float %3920, %3861
  %3922 = fmul fast float %3921, %3917
  %3923 = select i1 %3919, float 0.000000e+00, float %3922
  %3924 = fcmp fast oeq float %3848, 0.000000e+00
  %3925 = fdiv fast float %3866, %3848
  %3926 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3925)  ; FMax(a,b)
  %3927 = select i1 %3924, float %3917, float %3926
  %3928 = call float @dx.op.binary.f32(i32 36, float %3917, float %3927)  ; FMin(a,b)
  %3929 = fcmp fast ogt float %3848, 0.000000e+00
  %3930 = fcmp fast olt float %3866, 0.000000e+00
  br i1 %3929, label %3931, label %3988

; <label>:3931                                    ; preds = %3916
  %3932 = icmp eq i32 %3867, 0
  br i1 %3930, label %3933, label %3977

; <label>:3933                                    ; preds = %3931
  %3934 = select i1 %3932, float %3917, float 0.000000e+00
  %3935 = fsub fast float -0.000000e+00, %3934
  %3936 = call float @dx.op.unary.f32(i32 6, float %3935)  ; FAbs(value)
  %3937 = fmul fast float %3934, %3848
  %3938 = fadd fast float %3937, %3861
  %3939 = fmul fast float %3936, %3938
  %3940 = fsub fast float %3923, %3939
  %3941 = fsub fast float %3917, %3936
  %3942 = select i1 %3932, float %3941, float 0.000000e+00
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.CBufRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.CBufRet.f32 %3943, 2
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.CBufRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.CBufRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.CBufRet.f32 %3947, 3
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 3
  %3954 = call float @dx.op.binary.f32(i32 36, float %3940, float %3953)  ; FMin(a,b)
  %3955 = fmul fast float %3951, %3942
  %3956 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3957 = fsub fast float %3948, %3944
  %3958 = fsub fast float %3949, %3945
  %3959 = fsub fast float %3950, %3946
  %3960 = fmul fast float %3956, %3957
  %3961 = fmul fast float %3956, %3958
  %3962 = fmul fast float %3956, %3959
  %3963 = fadd fast float %3960, %3944
  %3964 = fadd fast float %3961, %3945
  %3965 = fadd fast float %3962, %3946
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.CBufRet.f32 %3966, 1
  %3969 = fadd fast float %3968, %3967
  %3970 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3966, 2
  %3972 = extractvalue %dx.types.CBufRet.f32 %3966, 3
  %3973 = fadd fast float %3972, %3971
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fmul fast float %3970, %3954
  %3976 = fmul fast float %3975, %3974
  br label %4218

; <label>:3977                                    ; preds = %3931
  br i1 %3932, label %3978, label %3999

; <label>:3978                                    ; preds = %3977
  %3979 = call float @dx.op.binary.f32(i32 36, float %3928, float %3918)  ; FMin(a,b)
  %3980 = fsub fast float %3928, %3979
  %3981 = fsub fast float %3980, %3917
  %3982 = call float @dx.op.unary.f32(i32 6, float %3981)  ; FAbs(value)
  %3983 = fadd fast float %3980, %3917
  %3984 = fmul fast float %3983, %3848
  %3985 = fadd fast float %3984, %3861
  %3986 = fmul fast float %3985, %3982
  %3987 = fsub fast float %3923, %3986
  br label %3999

; <label>:3988                                    ; preds = %3916
  br i1 %3930, label %3989, label %3999

; <label>:3989                                    ; preds = %3988
  %3990 = call float @dx.op.binary.f32(i32 35, float %3918, float %3928)  ; FMax(a,b)
  %3991 = icmp eq i32 %3867, 0
  %3992 = select i1 %3991, float %3928, float 0.000000e+00
  %3993 = fsub fast float -0.000000e+00, %3992
  %3994 = call float @dx.op.unary.f32(i32 6, float %3993)  ; FAbs(value)
  %3995 = fmul fast float %3992, %3848
  %3996 = fadd fast float %3995, %3861
  %3997 = fmul fast float %3994, %3996
  %3998 = fsub fast float %3923, %3997
  br label %3999

; <label>:3999                                    ; preds = %3989, %3988, %3978, %3977
  %4000 = phi float [ %3918, %3977 ], [ %3918, %3978 ], [ %3990, %3989 ], [ %3918, %3988 ]
  %4001 = phi float [ 0.000000e+00, %3977 ], [ %3982, %3978 ], [ %3994, %3989 ], [ 0.000000e+00, %3988 ]
  %4002 = phi float [ %3923, %3977 ], [ %3987, %3978 ], [ %3998, %3989 ], [ %3923, %3988 ]
  %4003 = phi float [ %3928, %3977 ], [ %3928, %3978 ], [ %3917, %3989 ], [ %3917, %3988 ]
  %4004 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 0
  store float -1.000000e+00, float* %4004, align 4, !tbaa !98, !noalias !100
  %4005 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 1
  store float -1.000000e+00, float* %4005, align 4, !tbaa !98, !noalias !100
  %4006 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 2
  store float -1.000000e+00, float* %4006, align 4, !tbaa !98, !noalias !100
  %4007 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 0
  store float -1.000000e+00, float* %4007, align 4, !tbaa !98, !noalias !100
  %4008 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 1
  store float -1.000000e+00, float* %4008, align 4, !tbaa !98, !noalias !100
  %4009 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 2
  store float -1.000000e+00, float* %4009, align 4, !tbaa !98, !noalias !100
  %4010 = icmp sgt i32 %3869, 0
  br i1 %4010, label %4011, label %4072

; <label>:4011                                    ; preds = %3999
  br label %4012

; <label>:4012                                    ; preds = %4061, %4011
  %4013 = phi i32 [ %4062, %4061 ], [ 0, %4011 ]
  %4014 = phi i32 [ %4063, %4061 ], [ 0, %4011 ]
  %4015 = add nuw i32 %4014, 171
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %4015)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.CBufRet.f32 %4019, 1
  %4022 = fsub fast float %4017, %4020
  %4023 = fsub fast float %4018, %4021
  %4024 = extractvalue %dx.types.CBufRet.f32 %4016, 2
  %4025 = fsub fast float -0.000000e+00, %4022
  %4026 = fsub fast float -0.000000e+00, %4023
  %4027 = call float @dx.op.dot2.f32(i32 54, float %3846, float %3847, float %4025, float %4026)  ; Dot2(ax,ay,bx,by)
  %4028 = fmul fast float %4027, 2.000000e+00
  %4029 = call float @dx.op.dot2.f32(i32 54, float %4025, float %4026, float %4025, float %4026)  ; Dot2(ax,ay,bx,by)
  %4030 = fmul fast float %4024, %4024
  %4031 = fsub fast float %4029, %4030
  %4032 = fmul fast float %4028, %4028
  %4033 = fmul fast float %3889, %4031
  %4034 = fsub fast float %4032, %4033
  %4035 = fcmp fast ogt float %4034, 0.000000e+00
  br i1 %4035, label %4036, label %4051

; <label>:4036                                    ; preds = %4012
  %4037 = fcmp fast ogt float %4028, 0.000000e+00
  %4038 = call float @dx.op.unary.f32(i32 24, float %4034)  ; Sqrt(value)
  %4039 = fsub fast float -0.000000e+00, %4038
  %4040 = select i1 %4037, float %4038, float %4039
  %4041 = fadd fast float %4040, %4028
  %4042 = fmul float %4041, -5.000000e-01
  %4043 = fdiv fast float %4042, %3882
  %4044 = call float @dx.op.binary.f32(i32 35, float %4043, float 0.000000e+00)  ; FMax(a,b)
  %4045 = call float @dx.op.binary.f32(i32 36, float %3917, float %4044)  ; FMin(a,b)
  %4046 = fdiv fast float %4031, %4042
  %4047 = call float @dx.op.binary.f32(i32 35, float %4046, float 0.000000e+00)  ; FMax(a,b)
  %4048 = call float @dx.op.binary.f32(i32 36, float %3917, float %4047)  ; FMin(a,b)
  %4049 = call float @dx.op.binary.f32(i32 36, float %4045, float %4048)  ; FMin(a,b)
  %4050 = call float @dx.op.binary.f32(i32 35, float %4045, float %4048)  ; FMax(a,b)
  br label %4051

; <label>:4051                                    ; preds = %4036, %4012
  %4052 = phi float [ %4050, %4036 ], [ -1.000000e+00, %4012 ]
  %4053 = phi float [ %4049, %4036 ], [ -1.000000e+00, %4012 ]
  %4054 = phi i1 [ true, %4036 ], [ false, %4012 ]
  br i1 %4054, label %4055, label %4061

; <label>:4055                                    ; preds = %4051
  %4056 = call float @dx.op.binary.f32(i32 35, float %4000, float %4053)  ; FMax(a,b)
  %4057 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4014
  store float %4056, float* %4057, align 4, !tbaa !98, !noalias !100
  %4058 = call float @dx.op.binary.f32(i32 35, float %4000, float %4052)  ; FMax(a,b)
  %4059 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 %4014
  store float %4058, float* %4059, align 4, !tbaa !98, !noalias !100
  %4060 = add nsw i32 %4013, 1
  br label %4061

; <label>:4061                                    ; preds = %4055, %4051
  %4062 = phi i32 [ %4060, %4055 ], [ %4013, %4051 ]
  %4063 = add nuw nsw i32 %4014, 1
  %4064 = icmp eq i32 %4063, %3869
  br i1 %4064, label %4065, label %4012

; <label>:4065                                    ; preds = %4061
  %4066 = load float, float* %4006, align 4, !tbaa !98, !alias.scope !116, !noalias !119
  %4067 = load float, float* %4005, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  %4068 = load float, float* %4004, align 4, !tbaa !98, !alias.scope !124, !noalias !125
  %4069 = load float, float* %4009, align 4, !tbaa !98, !alias.scope !126, !noalias !129
  %4070 = load float, float* %4008, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  %4071 = load float, float* %4007, align 4, !tbaa !98, !alias.scope !134, !noalias !135
  br label %4072

; <label>:4072                                    ; preds = %4065, %3999
  %4073 = phi float [ -1.000000e+00, %3999 ], [ %4071, %4065 ]
  %4074 = phi float [ -1.000000e+00, %3999 ], [ %4070, %4065 ]
  %4075 = phi float [ -1.000000e+00, %3999 ], [ %4069, %4065 ]
  %4076 = phi float [ -1.000000e+00, %3999 ], [ %4068, %4065 ]
  %4077 = phi float [ -1.000000e+00, %3999 ], [ %4067, %4065 ]
  %4078 = phi float [ -1.000000e+00, %3999 ], [ %4066, %4065 ]
  %4079 = phi i32 [ 0, %3999 ], [ %4062, %4065 ]
  %4080 = call float @dx.op.binary.f32(i32 36, float %4077, float %4078)  ; FMin(a,b)
  %4081 = call float @dx.op.binary.f32(i32 36, float %4076, float %4080)  ; FMin(a,b)
  %4082 = call float @dx.op.binary.f32(i32 35, float %4076, float %4077)  ; FMax(a,b)
  %4083 = call float @dx.op.binary.f32(i32 36, float %4082, float %4078)  ; FMin(a,b)
  %4084 = call float @dx.op.binary.f32(i32 36, float %4076, float %4077)  ; FMin(a,b)
  %4085 = call float @dx.op.binary.f32(i32 35, float %4084, float %4083)  ; FMax(a,b)
  %4086 = call float @dx.op.binary.f32(i32 35, float %4077, float %4078)  ; FMax(a,b)
  %4087 = call float @dx.op.binary.f32(i32 35, float %4076, float %4086)  ; FMax(a,b)
  store float %4081, float* %4004, align 4, !tbaa !98, !alias.scope !124, !noalias !125
  store float %4085, float* %4005, align 4, !tbaa !98, !alias.scope !122, !noalias !123
  store float %4087, float* %4006, align 4, !tbaa !98, !alias.scope !116, !noalias !119
  %4088 = call float @dx.op.binary.f32(i32 36, float %4074, float %4075)  ; FMin(a,b)
  %4089 = call float @dx.op.binary.f32(i32 36, float %4073, float %4088)  ; FMin(a,b)
  %4090 = call float @dx.op.binary.f32(i32 35, float %4073, float %4074)  ; FMax(a,b)
  %4091 = call float @dx.op.binary.f32(i32 36, float %4090, float %4075)  ; FMin(a,b)
  %4092 = call float @dx.op.binary.f32(i32 36, float %4073, float %4074)  ; FMin(a,b)
  %4093 = call float @dx.op.binary.f32(i32 35, float %4092, float %4091)  ; FMax(a,b)
  %4094 = call float @dx.op.binary.f32(i32 35, float %4074, float %4075)  ; FMax(a,b)
  %4095 = call float @dx.op.binary.f32(i32 35, float %4073, float %4094)  ; FMax(a,b)
  store float %4089, float* %4007, align 4, !tbaa !98, !alias.scope !134, !noalias !135
  store float %4093, float* %4008, align 4, !tbaa !98, !alias.scope !132, !noalias !133
  store float %4095, float* %4009, align 4, !tbaa !98, !alias.scope !126, !noalias !129
  %4096 = sub nsw i32 3, %4079
  %4097 = icmp sgt i32 %4096, 2
  br i1 %4097, label %4098, label %4136

; <label>:4098                                    ; preds = %4072
  %4099 = icmp eq i32 %3867, 0
  %4100 = fsub fast float %3917, %4001
  %4101 = select i1 %4099, float %4100, float %4001
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4105 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4113 = call float @dx.op.binary.f32(i32 36, float %4002, float %4112)  ; FMin(a,b)
  %4114 = fmul fast float %4110, %4101
  %4115 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4116 = fsub fast float %4107, %4103
  %4117 = fsub fast float %4108, %4104
  %4118 = fsub fast float %4109, %4105
  %4119 = fmul fast float %4115, %4116
  %4120 = fmul fast float %4115, %4117
  %4121 = fmul fast float %4115, %4118
  %4122 = fadd fast float %4119, %4103
  %4123 = fadd fast float %4120, %4104
  %4124 = fadd fast float %4121, %4105
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4128 = fadd fast float %4127, %4126
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4131 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4132 = fadd fast float %4131, %4130
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4134 = fmul fast float %4129, %4113
  %4135 = fmul fast float %4134, %4133
  br label %4218

; <label>:4136                                    ; preds = %4072
  %4137 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4096
  %4138 = load float, float* %4137, align 4, !tbaa !98, !noalias !100
  %4139 = fcmp fast olt float %4138, %4003
  %4140 = icmp sgt i32 %4079, 0
  %4141 = and i1 %4140, %4139
  br i1 %4141, label %4142, label %4179

; <label>:4142                                    ; preds = %4136
  br label %4143

; <label>:4143                                    ; preds = %4172, %4142
  %4144 = phi float [ %4173, %4172 ], [ %4001, %4142 ]
  %4145 = phi float [ %4174, %4172 ], [ %4002, %4142 ]
  %4146 = phi float [ %4154, %4172 ], [ %4138, %4142 ]
  %4147 = phi i32 [ %4151, %4172 ], [ %4096, %4142 ]
  %4148 = getelementptr inbounds [3 x float], [3 x float]* %67, i32 0, i32 %4147
  %4149 = load float, float* %4148, align 4, !tbaa !98, !noalias !100
  %4150 = icmp slt i32 %4147, 2
  %4151 = add nsw i32 %4147, 1
  %4152 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %4151
  %4153 = load float, float* %4152, align 4, !tbaa !98, !noalias !100
  %4154 = select i1 %4150, float %4153, float %3917
  %4155 = call float @dx.op.binary.f32(i32 36, float %4154, float %4149)  ; FMin(a,b)
  %4156 = call float @dx.op.binary.f32(i32 36, float %4003, float %4155)  ; FMin(a,b)
  %4157 = icmp eq i32 %3867, 0
  %4158 = fadd fast float %4156, %4146
  %4159 = fmul fast float %4158, %3848
  %4160 = fadd fast float %4159, %3861
  br i1 %4157, label %4166, label %4161

; <label>:4161                                    ; preds = %4143
  %4162 = fsub fast float %4156, %4146
  %4163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4162)  ; FMax(a,b)
  %4164 = fmul fast float %4163, %4160
  %4165 = fadd fast float %4164, %4145
  br label %4172

; <label>:4166                                    ; preds = %4143
  %4167 = fsub fast float %4146, %4156
  %4168 = call float @dx.op.unary.f32(i32 6, float %4167)  ; FAbs(value)
  %4169 = fadd fast float %4168, %4144
  %4170 = fmul fast float %4168, %4160
  %4171 = fsub fast float %4145, %4170
  br label %4172

; <label>:4172                                    ; preds = %4166, %4161
  %4173 = phi float [ %4163, %4161 ], [ %4169, %4166 ]
  %4174 = phi float [ %4165, %4161 ], [ %4171, %4166 ]
  %4175 = fcmp fast olt float %4154, %4003
  %4176 = icmp slt i32 %4151, 3
  %4177 = and i1 %4176, %4175
  br i1 %4177, label %4143, label %4178

; <label>:4178                                    ; preds = %4172
  br label %4179

; <label>:4179                                    ; preds = %4178, %4136
  %4180 = phi float [ %4001, %4136 ], [ %4173, %4178 ]
  %4181 = phi float [ %4002, %4136 ], [ %4174, %4178 ]
  %4182 = fsub fast float %3917, %4180
  %4183 = select i1 %3919, float %4180, float %4182
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4184, 2
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4192 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4195 = call float @dx.op.binary.f32(i32 36, float %4181, float %4194)  ; FMin(a,b)
  %4196 = fmul fast float %4192, %4183
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = fsub fast float %4189, %4185
  %4199 = fsub fast float %4190, %4186
  %4200 = fsub fast float %4191, %4187
  %4201 = fmul fast float %4197, %4198
  %4202 = fmul fast float %4197, %4199
  %4203 = fmul fast float %4197, %4200
  %4204 = fadd fast float %4201, %4185
  %4205 = fadd fast float %4202, %4186
  %4206 = fadd fast float %4203, %4187
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.CBufRet.f32 %4207, 1
  %4210 = fadd fast float %4209, %4208
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4207, 2
  %4213 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4214 = fadd fast float %4213, %4212
  %4215 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4216 = fmul fast float %4211, %4195
  %4217 = fmul fast float %4216, %4215
  br label %4218

; <label>:4218                                    ; preds = %4179, %4098, %3933, %3915, %3913
  %4219 = phi float [ %3942, %3933 ], [ %4101, %4098 ], [ %4183, %4179 ], [ 0.000000e+00, %3913 ], [ 0.000000e+00, %3915 ]
  %4220 = phi float [ %3976, %3933 ], [ %4135, %4098 ], [ %4217, %4179 ], [ 0.000000e+00, %3913 ], [ 0.000000e+00, %3915 ]
  %4221 = phi float [ %3963, %3933 ], [ %4122, %4098 ], [ %4204, %4179 ], [ 0.000000e+00, %3913 ], [ 0.000000e+00, %3915 ]
  %4222 = phi float [ %3964, %3933 ], [ %4123, %4098 ], [ %4205, %4179 ], [ 0.000000e+00, %3913 ], [ 0.000000e+00, %3915 ]
  %4223 = phi float [ %3965, %3933 ], [ %4124, %4098 ], [ %4206, %4179 ], [ 0.000000e+00, %3913 ], [ 0.000000e+00, %3915 ]
  %4224 = fmul fast float %3856, %4220
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 2
  %4227 = fsub fast float %3863, %4226
  %4228 = fcmp fast olt float %4224, -2.000000e+01
  %4229 = call float @dx.op.unary.f32(i32 21, float %4224)  ; Exp(value)
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 2
  %4232 = extractvalue %dx.types.CBufRet.f32 %4230, 3
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4235 = fmul fast float %4232, %4227
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = fsub fast float 1.000000e+00, %4236
  %4238 = fmul fast float %3848, 5.000000e-01
  %4239 = fadd fast float %4238, 5.000000e-01
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = fsub fast float 1.000000e+00, %4240
  %4242 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4237)  ; FMax(a,b)
  %4243 = fdiv fast float %4241, %4242
  %4244 = fsub fast float %4227, %3805
  %4245 = call float @dx.op.unary.f32(i32 6, float %4244)  ; FAbs(value)
  %4246 = fmul fast float %4245, %4231
  %4247 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4248 = fsub fast float 1.000000e+00, %4246
  %4249 = fmul fast float %4248, %4247
  %4250 = fadd fast float %4249, %4246
  %4251 = fmul fast float %4234, %4227
  %4252 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4253 = fsub fast float 1.000000e+00, %4250
  %4254 = fmul fast float %4253, %4252
  %4255 = fadd fast float %4254, %4250
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fadd fast float %4229, -1.000000e+00
  %4258 = select i1 %4228, float -1.000000e+00, float %4257
  %4259 = fmul fast float %4256, %4258
  %4260 = fadd fast float %4259, 1.000000e+00
  %4261 = fsub fast float -0.000000e+00, %4259
  %4262 = fmul fast float %4221, %4261
  %4263 = fmul fast float %4222, %4261
  %4264 = fmul fast float %4223, %4261
  br label %4265

; <label>:4265                                    ; preds = %4218, %3814
  %4266 = phi float [ %4219, %4218 ], [ 0.000000e+00, %3814 ]
  %4267 = phi float [ %4260, %4218 ], [ 1.000000e+00, %3814 ]
  %4268 = phi float [ %4262, %4218 ], [ 0.000000e+00, %3814 ]
  %4269 = phi float [ %4263, %4218 ], [ 0.000000e+00, %3814 ]
  %4270 = phi float [ %4264, %4218 ], [ 0.000000e+00, %3814 ]
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4273 = fsub fast float 1.000000e+00, %4267
  %4274 = fmul fast float %4273, %3849
  %4275 = fmul fast float %4274, %4272
  %4276 = fsub fast float %3849, %4275
  br i1 %3842, label %4277, label %4306, !dx.controlflow.hints !136

; <label>:4277                                    ; preds = %4265
  %4278 = fmul fast float %3850, %3839
  %4279 = fadd fast float %4278, %3840
  %4280 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4281 = fmul fast float %3821, %4276
  %4282 = fsub fast float -0.000000e+00, %4281
  %4283 = fmul fast float %3822, %4276
  %4284 = fsub fast float -0.000000e+00, %4283
  %4285 = call float @dx.op.unary.f32(i32 21, float %4282)  ; Exp(value)
  %4286 = call float @dx.op.unary.f32(i32 21, float %4284)  ; Exp(value)
  %4287 = call float @dx.op.binary.f32(i32 35, float %3829, float %4285)  ; FMax(a,b)
  %4288 = call float @dx.op.binary.f32(i32 35, float %3829, float %4286)  ; FMax(a,b)
  %4289 = fsub fast float %4288, %4287
  %4290 = fmul fast float %4289, %4280
  %4291 = fadd fast float %4290, %4287
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = fsub fast float %3826, %3831
  %4294 = fsub fast float %3827, %3832
  %4295 = fsub fast float %3828, %3833
  %4296 = fmul fast float %4280, %4293
  %4297 = fmul fast float %4280, %4294
  %4298 = fmul fast float %4280, %4295
  %4299 = fadd fast float %4296, %3831
  %4300 = fadd fast float %4297, %3832
  %4301 = fadd fast float %4298, %3833
  %4302 = fsub fast float 1.000000e+00, %4292
  %4303 = fmul fast float %4302, %4299
  %4304 = fmul fast float %4302, %4300
  %4305 = fmul fast float %4302, %4301
  br label %4365

; <label>:4306                                    ; preds = %4265
  %4307 = fmul fast float %4276, %3838
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fsub fast float 2.000000e+00, %4308
  %4310 = fmul fast float %4308, 9.921875e-01
  %4311 = fmul fast float %4310, %4309
  %4312 = fadd fast float %4311, 3.906250e-03
  %4313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %31, float %4312, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = fsub fast float %4308, %4314
  %4316 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4315)  ; FMax(a,b)
  %4317 = fmul fast float %3824, %3805
  %4318 = call float @dx.op.unary.f32(i32 6, float %4317)  ; FAbs(value)
  %4319 = fcmp fast ogt float %4318, 0x3EB0C6F7A0000000
  br i1 %4319, label %4320, label %4326, !dx.controlflow.hints !137

; <label>:4320                                    ; preds = %4306
  %4321 = fmul fast float %4317, 0xBFF7154760000000
  %4322 = call float @dx.op.unary.f32(i32 21, float %4321)  ; Exp(value)
  %4323 = fsub fast float 1.000000e+00, %4322
  %4324 = fdiv fast float %4323, %4317
  %4325 = fmul fast float %4324, %3834
  br label %4326

; <label>:4326                                    ; preds = %4320, %4306
  %4327 = phi float [ %4325, %4320 ], [ %3834, %4306 ]
  %4328 = fadd fast float %4327, %3836
  %4329 = fmul fast float %4328, %4316
  %4330 = fmul fast float %3821, %4329
  %4331 = fsub fast float -0.000000e+00, %4330
  %4332 = fmul fast float %3822, %4329
  %4333 = fsub fast float -0.000000e+00, %4332
  %4334 = fmul fast float %3823, %4329
  %4335 = fsub fast float -0.000000e+00, %4334
  %4336 = call float @dx.op.unary.f32(i32 21, float %4331)  ; Exp(value)
  %4337 = call float @dx.op.unary.f32(i32 21, float %4333)  ; Exp(value)
  %4338 = call float @dx.op.unary.f32(i32 21, float %4335)  ; Exp(value)
  %4339 = fmul fast float %3850, %3850
  %4340 = fadd fast float %4339, 1.000000e+00
  %4341 = fmul fast float %4340, 0x3FAE8EC8A0000000
  %4342 = fmul fast float %4341, %3831
  %4343 = fmul fast float %4341, %3832
  %4344 = fmul fast float %4341, %3833
  %4345 = fmul fast float %3850, %3829
  %4346 = fsub fast float 1.000000e+00, %4345
  %4347 = fmul fast float %3829, %3829
  %4348 = fsub fast float 1.000000e+00, %4347
  %4349 = fmul fast float %4348, 0x3FB45F3060000000
  %4350 = fmul fast float %4346, %4346
  %4351 = fdiv fast float 1.000000e+00, %4350
  %4352 = fmul fast float %4349, %4351
  %4353 = fmul fast float %4352, %3826
  %4354 = fmul fast float %4352, %3827
  %4355 = fmul fast float %4352, %3828
  %4356 = fadd fast float %4353, %4342
  %4357 = fadd fast float %4354, %4343
  %4358 = fadd fast float %4355, %4344
  %4359 = fsub fast float 1.000000e+00, %4336
  %4360 = fsub fast float 1.000000e+00, %4337
  %4361 = fsub fast float 1.000000e+00, %4338
  %4362 = fmul fast float %4356, %4359
  %4363 = fmul fast float %4357, %4360
  %4364 = fmul fast float %4358, %4361
  br label %4365

; <label>:4365                                    ; preds = %4326, %4277
  %4366 = phi float [ %4303, %4277 ], [ %4362, %4326 ]
  %4367 = phi float [ %4304, %4277 ], [ %4363, %4326 ]
  %4368 = phi float [ %4305, %4277 ], [ %4364, %4326 ]
  %4369 = phi float [ %4292, %4277 ], [ %4336, %4326 ]
  %4370 = phi float [ %4292, %4277 ], [ %4337, %4326 ]
  %4371 = phi float [ %4292, %4277 ], [ %4338, %4326 ]
  br i1 %3858, label %4372, label %4570, !dx.controlflow.hints !138

; <label>:4372                                    ; preds = %4365
  %4373 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4374 = fmul fast float %4373, %4273
  %4375 = fsub fast float %4268, %4366
  %4376 = fsub fast float %4269, %4367
  %4377 = fsub fast float %4270, %4368
  %4378 = fmul fast float %4374, %4375
  %4379 = fmul fast float %4374, %4376
  %4380 = fmul fast float %4374, %4377
  %4381 = fadd fast float %4378, %4366
  %4382 = fadd fast float %4379, %4367
  %4383 = fadd fast float %4380, %4368
  %4384 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4369)  ; FMax(a,b)
  %4385 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4370)  ; FMax(a,b)
  %4386 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4371)  ; FMax(a,b)
  %4387 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4267)  ; FMax(a,b)
  %4388 = call float @dx.op.binary.f32(i32 35, float %4266, float %4276)  ; FMax(a,b)
  %4389 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4388)  ; FMax(a,b)
  %4390 = fdiv fast float %4266, %4389
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = fdiv fast float %4276, %4389
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = fcmp fast une float %4387, 1.000000e+00
  br i1 %4394, label %4395, label %4408, !dx.controlflow.hints !139

; <label>:4395                                    ; preds = %4372
  %4396 = call float @dx.op.unary.f32(i32 23, float %4387)  ; Log(value)
  %4397 = fmul fast float %4396, 0x3FE62E4300000000
  %4398 = fmul fast float %4268, %4397
  %4399 = fsub fast float -0.000000e+00, %4398
  %4400 = fmul fast float %4269, %4397
  %4401 = fsub fast float -0.000000e+00, %4400
  %4402 = fmul fast float %4270, %4397
  %4403 = fsub fast float -0.000000e+00, %4402
  %4404 = fsub fast float 1.000000e+00, %4387
  %4405 = fdiv fast float %4399, %4404
  %4406 = fdiv fast float %4401, %4404
  %4407 = fdiv fast float %4403, %4404
  br label %4408

; <label>:4408                                    ; preds = %4395, %4372
  %4409 = phi float [ %4405, %4395 ], [ %4268, %4372 ]
  %4410 = phi float [ %4406, %4395 ], [ %4269, %4372 ]
  %4411 = phi float [ %4407, %4395 ], [ %4270, %4372 ]
  %4412 = phi float [ %4397, %4395 ], [ 0.000000e+00, %4372 ]
  %4413 = fcmp fast une float %4384, 1.000000e+00
  br i1 %4413, label %4414, label %4421, !dx.controlflow.hints !140

; <label>:4414                                    ; preds = %4408
  %4415 = call float @dx.op.unary.f32(i32 23, float %4384)  ; Log(value)
  %4416 = fmul fast float %4415, 0x3FE62E4300000000
  %4417 = fmul fast float %4381, %4416
  %4418 = fsub fast float -0.000000e+00, %4417
  %4419 = fsub fast float 1.000000e+00, %4384
  %4420 = fdiv fast float %4418, %4419
  br label %4421

; <label>:4421                                    ; preds = %4414, %4408
  %4422 = phi float [ %4420, %4414 ], [ %4381, %4408 ]
  %4423 = phi float [ %4416, %4414 ], [ 0.000000e+00, %4408 ]
  %4424 = fcmp fast une float %4385, 1.000000e+00
  br i1 %4424, label %4425, label %4432, !dx.controlflow.hints !140

; <label>:4425                                    ; preds = %4421
  %4426 = call float @dx.op.unary.f32(i32 23, float %4385)  ; Log(value)
  %4427 = fmul fast float %4426, 0x3FE62E4300000000
  %4428 = fmul fast float %4382, %4427
  %4429 = fsub fast float -0.000000e+00, %4428
  %4430 = fsub fast float 1.000000e+00, %4385
  %4431 = fdiv fast float %4429, %4430
  br label %4432

; <label>:4432                                    ; preds = %4425, %4421
  %4433 = phi float [ %4431, %4425 ], [ %4382, %4421 ]
  %4434 = phi float [ %4427, %4425 ], [ 0.000000e+00, %4421 ]
  %4435 = fcmp fast une float %4386, 1.000000e+00
  br i1 %4435, label %4436, label %4443, !dx.controlflow.hints !140

; <label>:4436                                    ; preds = %4432
  %4437 = call float @dx.op.unary.f32(i32 23, float %4386)  ; Log(value)
  %4438 = fmul fast float %4437, 0x3FE62E4300000000
  %4439 = fmul fast float %4383, %4438
  %4440 = fsub fast float -0.000000e+00, %4439
  %4441 = fsub fast float 1.000000e+00, %4386
  %4442 = fdiv fast float %4440, %4441
  br label %4443

; <label>:4443                                    ; preds = %4436, %4432
  %4444 = phi float [ %4442, %4436 ], [ %4383, %4432 ]
  %4445 = phi float [ %4438, %4436 ], [ 0.000000e+00, %4432 ]
  %4446 = fmul fast float %4409, %4393
  %4447 = fmul fast float %4410, %4393
  %4448 = fmul fast float %4411, %4393
  %4449 = fmul fast float %4412, %4393
  %4450 = fmul fast float %4422, %4391
  %4451 = fmul fast float %4433, %4391
  %4452 = fmul fast float %4444, %4391
  %4453 = fmul fast float %4423, %4391
  %4454 = fmul fast float %4434, %4391
  %4455 = fmul fast float %4445, %4391
  %4456 = fadd fast float %4450, %4446
  %4457 = fadd fast float %4451, %4447
  %4458 = fadd fast float %4452, %4448
  %4459 = fadd fast float %4453, %4449
  %4460 = fadd fast float %4454, %4449
  %4461 = fadd fast float %4455, %4449
  %4462 = fcmp fast une float %4459, 0.000000e+00
  br i1 %4462, label %4463, label %4470, !dx.controlflow.hints !141

; <label>:4463                                    ; preds = %4443
  %4464 = fmul fast float %4459, 0x3FF7154760000000
  %4465 = call float @dx.op.unary.f32(i32 21, float %4464)  ; Exp(value)
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = fmul fast float %4456, %4466
  %4468 = fsub fast float -0.000000e+00, %4467
  %4469 = fdiv fast float %4468, %4459
  br label %4470

; <label>:4470                                    ; preds = %4463, %4443
  %4471 = phi float [ %4465, %4463 ], [ 1.000000e+00, %4443 ]
  %4472 = phi float [ %4469, %4463 ], [ %4456, %4443 ]
  %4473 = fcmp fast une float %4460, 0.000000e+00
  br i1 %4473, label %4474, label %4481, !dx.controlflow.hints !141

; <label>:4474                                    ; preds = %4470
  %4475 = fmul fast float %4460, 0x3FF7154760000000
  %4476 = call float @dx.op.unary.f32(i32 21, float %4475)  ; Exp(value)
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = fmul fast float %4457, %4477
  %4479 = fsub fast float -0.000000e+00, %4478
  %4480 = fdiv fast float %4479, %4460
  br label %4481

; <label>:4481                                    ; preds = %4474, %4470
  %4482 = phi float [ %4476, %4474 ], [ 1.000000e+00, %4470 ]
  %4483 = phi float [ %4480, %4474 ], [ %4457, %4470 ]
  %4484 = fcmp fast une float %4461, 0.000000e+00
  br i1 %4484, label %4485, label %4492, !dx.controlflow.hints !141

; <label>:4485                                    ; preds = %4481
  %4486 = fmul fast float %4461, 0x3FF7154760000000
  %4487 = call float @dx.op.unary.f32(i32 21, float %4486)  ; Exp(value)
  %4488 = fsub fast float 1.000000e+00, %4487
  %4489 = fmul fast float %4458, %4488
  %4490 = fsub fast float -0.000000e+00, %4489
  %4491 = fdiv fast float %4490, %4461
  br label %4492

; <label>:4492                                    ; preds = %4485, %4481
  %4493 = phi float [ %4487, %4485 ], [ 1.000000e+00, %4481 ]
  %4494 = phi float [ %4491, %4485 ], [ %4458, %4481 ]
  %4495 = fcmp fast ogt float %4391, %4393
  br i1 %4495, label %4496, label %4516

; <label>:4496                                    ; preds = %4492
  %4497 = fsub fast float 1.000000e+00, %4393
  %4498 = fmul fast float %4409, %4497
  %4499 = fmul fast float %4410, %4497
  %4500 = fmul fast float %4411, %4497
  %4501 = fmul fast float %4412, %4497
  %4502 = fcmp fast une float %4501, 0.000000e+00
  br i1 %4502, label %4503, label %4554, !dx.controlflow.hints !142

; <label>:4503                                    ; preds = %4496
  %4504 = fmul fast float %4501, 0x3FF7154760000000
  %4505 = call float @dx.op.unary.f32(i32 21, float %4504)  ; Exp(value)
  %4506 = fsub fast float 1.000000e+00, %4505
  %4507 = fmul fast float %4498, %4506
  %4508 = fsub fast float -0.000000e+00, %4507
  %4509 = fmul fast float %4499, %4506
  %4510 = fsub fast float -0.000000e+00, %4509
  %4511 = fmul fast float %4500, %4506
  %4512 = fsub fast float -0.000000e+00, %4511
  %4513 = fdiv fast float %4508, %4501
  %4514 = fdiv fast float %4510, %4501
  %4515 = fdiv fast float %4512, %4501
  br label %4554

; <label>:4516                                    ; preds = %4492
  %4517 = fsub fast float 1.000000e+00, %4391
  %4518 = fmul fast float %4422, %4517
  %4519 = fmul fast float %4433, %4517
  %4520 = fmul fast float %4444, %4517
  %4521 = fmul fast float %4423, %4517
  %4522 = fmul fast float %4434, %4517
  %4523 = fmul fast float %4445, %4517
  %4524 = fcmp fast une float %4521, 0.000000e+00
  br i1 %4524, label %4525, label %4532, !dx.controlflow.hints !141

; <label>:4525                                    ; preds = %4516
  %4526 = fmul fast float %4521, 0x3FF7154760000000
  %4527 = call float @dx.op.unary.f32(i32 21, float %4526)  ; Exp(value)
  %4528 = fsub fast float 1.000000e+00, %4527
  %4529 = fmul fast float %4518, %4528
  %4530 = fsub fast float -0.000000e+00, %4529
  %4531 = fdiv fast float %4530, %4521
  br label %4532

; <label>:4532                                    ; preds = %4525, %4516
  %4533 = phi float [ %4531, %4525 ], [ %4518, %4516 ]
  %4534 = phi float [ %4527, %4525 ], [ 1.000000e+00, %4516 ]
  %4535 = fcmp fast une float %4522, 0.000000e+00
  br i1 %4535, label %4536, label %4543, !dx.controlflow.hints !141

; <label>:4536                                    ; preds = %4532
  %4537 = fmul fast float %4522, 0x3FF7154760000000
  %4538 = call float @dx.op.unary.f32(i32 21, float %4537)  ; Exp(value)
  %4539 = fsub fast float 1.000000e+00, %4538
  %4540 = fmul fast float %4519, %4539
  %4541 = fsub fast float -0.000000e+00, %4540
  %4542 = fdiv fast float %4541, %4522
  br label %4543

; <label>:4543                                    ; preds = %4536, %4532
  %4544 = phi float [ %4542, %4536 ], [ %4519, %4532 ]
  %4545 = phi float [ %4538, %4536 ], [ 1.000000e+00, %4532 ]
  %4546 = fcmp fast une float %4523, 0.000000e+00
  br i1 %4546, label %4547, label %4554, !dx.controlflow.hints !141

; <label>:4547                                    ; preds = %4543
  %4548 = fmul fast float %4523, 0x3FF7154760000000
  %4549 = call float @dx.op.unary.f32(i32 21, float %4548)  ; Exp(value)
  %4550 = fsub fast float 1.000000e+00, %4549
  %4551 = fmul fast float %4520, %4550
  %4552 = fsub fast float -0.000000e+00, %4551
  %4553 = fdiv fast float %4552, %4523
  br label %4554

; <label>:4554                                    ; preds = %4547, %4543, %4503, %4496
  %4555 = phi float [ %4553, %4547 ], [ %4515, %4503 ], [ %4500, %4496 ], [ %4520, %4543 ]
  %4556 = phi float [ %4544, %4547 ], [ %4514, %4503 ], [ %4499, %4496 ], [ %4544, %4543 ]
  %4557 = phi float [ %4533, %4547 ], [ %4513, %4503 ], [ %4498, %4496 ], [ %4533, %4543 ]
  %4558 = phi float [ %4549, %4547 ], [ %4505, %4503 ], [ 1.000000e+00, %4496 ], [ 1.000000e+00, %4543 ]
  %4559 = phi float [ %4545, %4547 ], [ %4505, %4503 ], [ 1.000000e+00, %4496 ], [ %4545, %4543 ]
  %4560 = phi float [ %4534, %4547 ], [ %4505, %4503 ], [ 1.000000e+00, %4496 ], [ %4534, %4543 ]
  %4561 = fmul fast float %4560, %4472
  %4562 = fmul fast float %4559, %4483
  %4563 = fmul fast float %4558, %4494
  %4564 = fadd fast float %4561, %4557
  %4565 = fadd fast float %4562, %4556
  %4566 = fadd fast float %4563, %4555
  %4567 = fmul fast float %4560, %4471
  %4568 = fmul fast float %4559, %4482
  %4569 = fmul fast float %4558, %4493
  br label %4570

; <label>:4570                                    ; preds = %4554, %4365
  %4571 = phi float [ %4569, %4554 ], [ %4371, %4365 ]
  %4572 = phi float [ %4568, %4554 ], [ %4370, %4365 ]
  %4573 = phi float [ %4567, %4554 ], [ %4369, %4365 ]
  %4574 = phi float [ %4566, %4554 ], [ %4368, %4365 ]
  %4575 = phi float [ %4565, %4554 ], [ %4367, %4365 ]
  %4576 = phi float [ %4564, %4554 ], [ %4366, %4365 ]
  %4577 = fmul fast float %4576, %3516
  %4578 = fmul fast float %4575, %3518
  %4579 = fmul fast float %4574, %3520
  %4580 = fmul fast float %4573, %3813
  %4581 = call float @dx.op.dot3.f32(i32 55, float %4573, float %4572, float %4571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = select i1 %188, float %4581, float %4573
  %4584 = select i1 %188, float %4581, float %4572
  %4585 = select i1 %188, float 1.000000e+00, float %4571
  %4586 = select i1 %188, float %4582, float %4577
  %4587 = select i1 %188, float 0.000000e+00, float %4578
  %4588 = select i1 %188, float 0.000000e+00, float %4579
  %4589 = fmul fast float %4583, %3807
  %4590 = fmul fast float %4584, %3808
  %4591 = fmul fast float %4585, %3809
  %4592 = fadd fast float %4589, %4586
  %4593 = fadd fast float %4590, %4587
  %4594 = fadd fast float %4588, %4591
  %4595 = fmul fast float %4583, %3810
  %4596 = fmul fast float %4584, %3811
  %4597 = fmul fast float %4585, %3812
  %4598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.i32 %4598, 0
  %4600 = icmp eq i32 %4599, 0
  br i1 %4600, label %4968, label %4601, !dx.controlflow.hints !143

; <label>:4601                                    ; preds = %4570
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 2
  %4604 = extractvalue %dx.types.CBufRet.f32 %4602, 3
  %4605 = fmul fast float %4603, %72
  %4606 = fmul fast float %4604, %73
  %4607 = fmul fast float %4605, 2.000000e+00
  %4608 = fmul fast float %4606, 2.000000e+00
  %4609 = fsub fast float 1.000000e+00, %4607
  %4610 = fsub fast float 1.000000e+00, %4608
  %4611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.CBufRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.CBufRet.f32 %4611, 2
  %4615 = fmul fast float %4609, %4612
  %4616 = fmul fast float %4609, %4613
  %4617 = fmul fast float %4609, %4614
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4622 = fmul fast float %4610, %4619
  %4623 = fmul fast float %4610, %4620
  %4624 = fmul fast float %4610, %4621
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4629 = fadd fast float %4622, %4626
  %4630 = fadd fast float %4629, %4615
  %4631 = fadd fast float %4623, %4627
  %4632 = fadd fast float %4631, %4616
  %4633 = fadd fast float %4624, %4628
  %4634 = fadd fast float %4633, %4617
  %4635 = fmul fast float %4630, %3806
  %4636 = fmul fast float %4632, %3806
  %4637 = fmul fast float %4634, %3806
  %4638 = fmul fast float %4635, %4635
  %4639 = fmul fast float %4636, %4636
  %4640 = fadd fast float %4638, %4639
  %4641 = fmul fast float %4637, %4637
  %4642 = fadd fast float %4640, %4641
  %4643 = call float @dx.op.unary.f32(i32 24, float %4642)  ; Sqrt(value)
  %4644 = extractvalue %dx.types.CBufRet.f32 %3531, 0
  %4645 = fsub fast float %4643, %4644
  %4646 = extractvalue %dx.types.CBufRet.f32 %3531, 2
  %4647 = fmul fast float %4645, %4646
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = fadd fast float %4648, -5.000000e-01
  %4650 = fmul fast float %4649, 2.000000e+00
  %4651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.f32 %4651, 2
  %4653 = call float @dx.op.binary.f32(i32 36, float %4652, float %4650)  ; FMin(a,b)
  %4654 = fsub fast float -0.000000e+00, %4652
  %4655 = fcmp fast ogt float %4653, %4654
  br i1 %4655, label %4656, label %4968, !dx.controlflow.hints !144

; <label>:4656                                    ; preds = %4601
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 3
  %4659 = fcmp fast ogt float %4658, 0.000000e+00
  br i1 %4659, label %4660, label %4735, !dx.controlflow.hints !145

; <label>:4660                                    ; preds = %4656
  %4661 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %4662 = extractvalue %dx.types.Dimensions %4661, 0
  %4663 = sitofp i32 %4662 to float
  %4664 = extractvalue %dx.types.Dimensions %4661, 1
  %4665 = sitofp i32 %4664 to float
  %4666 = fmul fast float %4605, %4663
  %4667 = fmul fast float %4606, %4665
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4670 = fsub fast float -0.000000e+00, %4669
  %4671 = fptoui float %4670 to i32
  %4672 = fptoui float %4666 to i32
  %4673 = fptoui float %4667 to i32
  %4674 = and i32 %4671, 31
  %4675 = lshr i32 %4672, %4674
  %4676 = lshr i32 %4673, %4674
  %4677 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %4671, i32 %4675, i32 %4676, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = fcmp fast olt float %4678, -1.000000e+00
  %4680 = fcmp fast ogt float %4678, -1.000000e+00
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 1
  %4683 = select i1 %4680, float %4682, float 1.000000e+00
  %4684 = fadd fast float %4678, 1.000000e+00
  %4685 = fmul fast float %4683, %4684
  %4686 = call float @dx.op.unary.f32(i32 6, float %4685)  ; FAbs(value)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4681, 3
  %4688 = fcmp fast oge float %4686, %4687
  %4689 = select i1 %4688, float 0x4197782600000000, float %4686
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.CBufRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.CBufRet.f32 %4690, 2
  %4694 = select i1 %4679, float %4691, float %4612
  %4695 = select i1 %4679, float %4692, float %4613
  %4696 = select i1 %4679, float %4693, float %4614
  %4697 = fmul fast float %4694, %4609
  %4698 = fmul fast float %4695, %4609
  %4699 = fmul fast float %4696, %4609
  %4700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %4701 = extractvalue %dx.types.CBufRet.f32 %4700, 0
  %4702 = extractvalue %dx.types.CBufRet.f32 %4700, 1
  %4703 = extractvalue %dx.types.CBufRet.f32 %4700, 2
  %4704 = select i1 %4679, float %4701, float %4619
  %4705 = select i1 %4679, float %4702, float %4620
  %4706 = select i1 %4679, float %4703, float %4621
  %4707 = fmul fast float %4704, %4610
  %4708 = fmul fast float %4705, %4610
  %4709 = fmul fast float %4706, %4610
  %4710 = fadd fast float %4707, %4697
  %4711 = fadd fast float %4708, %4698
  %4712 = fadd fast float %4709, %4699
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.CBufRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.CBufRet.f32 %4713, 2
  %4717 = select i1 %4679, float %4714, float %4626
  %4718 = select i1 %4679, float %4715, float %4627
  %4719 = select i1 %4679, float %4716, float %4628
  %4720 = fadd fast float %4710, %4717
  %4721 = fadd fast float %4711, %4718
  %4722 = fadd fast float %4712, %4719
  %4723 = fmul fast float %4720, %4689
  %4724 = fmul fast float %4721, %4689
  %4725 = fmul fast float %4722, %4689
  %4726 = fmul fast float %4723, %4723
  %4727 = fmul fast float %4724, %4724
  %4728 = fadd fast float %4726, %4727
  %4729 = fmul fast float %4725, %4725
  %4730 = fadd fast float %4728, %4729
  %4731 = call float @dx.op.unary.f32(i32 24, float %4730)  ; Sqrt(value)
  %4732 = fsub fast float %4731, %4644
  %4733 = fmul fast float %4732, %4646
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  br label %4735

; <label>:4735                                    ; preds = %4660, %4656
  %4736 = phi float [ %4734, %4660 ], [ 1.000000e+00, %4656 ]
  %4737 = fmul fast float %4653, 5.000000e-01
  %4738 = fadd fast float %4737, 5.000000e-01
  %4739 = call float @dx.op.unary.f32(i32 22, float %4738)  ; Frc(value)
  %4740 = call float @dx.op.unary.f32(i32 27, float %4739)  ; Round_ni(value)
  %4741 = call float @dx.op.unary.f32(i32 22, float %4739)  ; Frc(value)
  %4742 = fmul fast float %4741, 2.000000e+00
  %4743 = fadd fast float %4742, -1.000000e+00
  %4744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %4605, float %4606, float %4740, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4745 = extractvalue %dx.types.ResRet.f32 %4744, 0
  %4746 = extractvalue %dx.types.ResRet.f32 %4744, 1
  %4747 = extractvalue %dx.types.ResRet.f32 %4744, 2
  %4748 = extractvalue %dx.types.ResRet.f32 %4744, 3
  %4749 = fadd fast float %4745, -5.000000e-01
  %4750 = fadd fast float %4747, -5.000000e-01
  %4751 = fmul fast float %4749, 0xBFD5555560000000
  %4752 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4750, float %4751)  ; FMad(a,b,c)
  %4753 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4746, float 0.000000e+00)  ; FMad(a,b,c)
  %4754 = fadd fast float %4753, %4748
  %4755 = fmul fast float %4749, -7.500000e-01
  %4756 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4750, float %4755)  ; FMad(a,b,c)
  %4757 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4746, float 0.000000e+00)  ; FMad(a,b,c)
  %4758 = fadd fast float %4757, %4748
  %4759 = call float @dx.op.binary.f32(i32 35, float %4752, float -1.000000e+00)  ; FMax(a,b)
  %4760 = call float @dx.op.binary.f32(i32 35, float %4754, float -1.000000e+00)  ; FMax(a,b)
  %4761 = call float @dx.op.binary.f32(i32 35, float %4756, float -1.000000e+00)  ; FMax(a,b)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4758, float -1.000000e+00)  ; FMax(a,b)
  %4763 = call float @dx.op.binary.f32(i32 36, float %4759, float 1.000000e+00)  ; FMin(a,b)
  %4764 = call float @dx.op.binary.f32(i32 36, float %4760, float 1.000000e+00)  ; FMin(a,b)
  %4765 = call float @dx.op.binary.f32(i32 36, float %4761, float 1.000000e+00)  ; FMin(a,b)
  %4766 = call float @dx.op.binary.f32(i32 36, float %4762, float 1.000000e+00)  ; FMin(a,b)
  %4767 = fcmp fast olt float %4763, 0x3FEFFF8020000000
  br i1 %4767, label %4768, label %4883, !dx.controlflow.hints !146

; <label>:4768                                    ; preds = %4735
  %4769 = extractvalue %dx.types.CBufRet.f32 %4651, 3
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.CBufRet.f32 %4770, 1
  %4773 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4774 = extractvalue %dx.types.CBufRet.f32 %4770, 3
  %4775 = fsub fast float %4771, %4763
  %4776 = fsub fast float %4772, %4764
  %4777 = fsub fast float %4773, %4765
  %4778 = fsub fast float %4774, %4766
  %4779 = fmul fast float %4775, %4769
  %4780 = fmul fast float %4776, %4769
  %4781 = fmul fast float %4777, %4769
  %4782 = fmul fast float %4778, %4769
  %4783 = fadd fast float %4779, %4763
  %4784 = fadd fast float %4780, %4764
  %4785 = fsub fast float -0.000000e+00, %4784
  %4786 = fadd fast float %4781, %4765
  %4787 = fadd fast float %4782, %4766
  %4788 = fmul fast float %4783, %4783
  %4789 = fsub fast float %4784, %4788
  %4790 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4789)  ; FMax(a,b)
  %4791 = fdiv fast float 1.000000e+00, %4790
  %4792 = fmul fast float %4784, %4783
  %4793 = fsub fast float %4786, %4792
  %4794 = fsub fast float %4743, %4783
  %4795 = fmul fast float %4743, %4743
  %4796 = fsub fast float %4795, %4784
  %4797 = fmul fast float %4794, %4791
  %4798 = fmul fast float %4797, %4793
  %4799 = fsub fast float %4796, %4798
  %4800 = fmul fast float %4784, %4784
  %4801 = fsub fast float %4787, %4800
  %4802 = fmul fast float %4793, %4793
  %4803 = fmul fast float %4802, %4791
  %4804 = fsub fast float %4801, %4803
  %4805 = fdiv fast float %4799, %4804
  %4806 = fmul fast float %4793, %4805
  %4807 = fsub fast float %4794, %4806
  %4808 = fmul fast float %4807, %4791
  %4809 = fmul fast float %4808, %4783
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = fmul fast float %4784, %4805
  %4812 = fsub fast float %4810, %4811
  %4813 = fmul fast float %4808, %4808
  %4814 = fmul fast float %4805, 4.000000e+00
  %4815 = fmul fast float %4814, %4812
  %4816 = fsub fast float %4813, %4815
  %4817 = call float @dx.op.unary.f32(i32 24, float %4816)  ; Sqrt(value)
  %4818 = fcmp fast oge float %4808, 0.000000e+00
  %4819 = fsub fast float -0.000000e+00, %4817
  %4820 = select i1 %4818, float %4819, float %4817
  %4821 = fsub fast float %4820, %4808
  %4822 = fdiv fast float %4821, %4805
  %4823 = fdiv fast float %4812, %4821
  %4824 = fmul fast float %4822, 5.000000e-01
  %4825 = fmul fast float %4823, 2.000000e+00
  %4826 = select i1 %4818, float %4824, float %4825
  %4827 = select i1 %4818, float %4825, float %4824
  %4828 = call float @dx.op.binary.f32(i32 35, float %4826, float %4827)  ; FMax(a,b)
  %4829 = call float @dx.op.binary.f32(i32 36, float %4826, float %4827)  ; FMin(a,b)
  %4830 = fcmp fast ogt float %4743, %4829
  br i1 %4830, label %4831, label %4841

; <label>:4831                                    ; preds = %4768
  %4832 = fsub fast float %4743, %4829
  %4833 = fsub fast float %4828, %4829
  %4834 = fmul fast float %4832, %4833
  %4835 = fmul fast float %4828, %4743
  %4836 = fadd fast float %4828, %4743
  %4837 = fmul fast float %4836, %4783
  %4838 = fadd fast float %4835, %4784
  %4839 = fsub fast float %4838, %4837
  %4840 = fdiv fast float %4839, %4834
  br label %4841

; <label>:4841                                    ; preds = %4831, %4768
  %4842 = phi float [ %4840, %4831 ], [ 0.000000e+00, %4768 ]
  %4843 = fcmp fast ogt float %4743, %4828
  %4844 = fsub fast float %4743, %4828
  br i1 %4843, label %4845, label %4855

; <label>:4845                                    ; preds = %4841
  %4846 = fsub fast float %4828, %4829
  %4847 = fmul fast float %4846, %4844
  %4848 = fmul fast float %4829, %4743
  %4849 = fadd fast float %4829, %4743
  %4850 = fmul fast float %4849, %4783
  %4851 = fsub fast float %4785, %4848
  %4852 = fadd fast float %4851, %4850
  %4853 = fdiv fast float %4852, %4847
  %4854 = fadd fast float %4853, %4842
  br label %4855

; <label>:4855                                    ; preds = %4845, %4841
  %4856 = phi float [ %4854, %4845 ], [ %4842, %4841 ]
  %4857 = fsub fast float %4743, %4829
  %4858 = fmul fast float %4857, %4844
  %4859 = fmul fast float %4829, %4828
  %4860 = fadd fast float %4829, %4828
  %4861 = fmul fast float %4860, %4783
  %4862 = fadd fast float %4859, %4784
  %4863 = fsub fast float %4862, %4861
  %4864 = fdiv fast float %4863, %4858
  %4865 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4866 = fcmp fast oeq float %3532, 0.000000e+00
  %4867 = extractvalue %dx.types.CBufRet.f32 %4651, 0
  %4868 = fcmp fast oeq float %4867, 0.000000e+00
  %4869 = or i1 %4866, %4868
  %4870 = fmul fast float %4867, 2.000000e+00
  %4871 = fadd fast float %4652, %4653
  %4872 = fdiv fast float %4871, %4870
  %4873 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4874 = fmul fast float %4873, 2.000000e+00
  %4875 = fsub fast float 3.000000e+00, %4874
  %4876 = fmul fast float %4873, %4873
  %4877 = fmul fast float %4876, %4875
  %4878 = select i1 %4869, float 1.000000e+00, float %4877
  %4879 = fmul fast float %4864, %3532
  %4880 = fadd fast float %4865, %4879
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fmul fast float %4878, %4881
  br label %4883

; <label>:4883                                    ; preds = %4855, %4735
  %4884 = phi float [ %4882, %4855 ], [ 0.000000e+00, %4735 ]
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %4605, float %4606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4887 = extractvalue %dx.types.ResRet.f32 %4886, 0
  %4888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.i32 %4888, 2
  %4890 = icmp eq i32 %4889, 0
  br i1 %4890, label %4896, label %4891

; <label>:4891                                    ; preds = %4883
  %4892 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4893 = fadd fast float %4887, -1.000000e+00
  %4894 = fmul fast float %4892, %4893
  %4895 = fadd fast float %4894, 1.000000e+00
  br label %4896

; <label>:4896                                    ; preds = %4891, %4883
  %4897 = phi float [ %4895, %4891 ], [ %4885, %4883 ]
  br i1 %4659, label %4898, label %4916

; <label>:4898                                    ; preds = %4896
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4901 = fsub fast float %4736, %4900
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fsub fast float %4736, %4658
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fsub fast float %4902, %4904
  %4906 = fsub fast float %4738, %4904
  %4907 = fdiv fast float %4906, %4905
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4908, 2.000000e+00
  %4910 = fsub fast float 3.000000e+00, %4909
  %4911 = fsub fast float %4887, %4897
  %4912 = fmul fast float %4908, %4908
  %4913 = fmul fast float %4912, %4911
  %4914 = fmul fast float %4913, %4910
  %4915 = fadd fast float %4914, %4897
  br label %4916

; <label>:4916                                    ; preds = %4898, %4896
  %4917 = phi float [ %4915, %4898 ], [ %4897, %4896 ]
  %4918 = call float @dx.op.binary.f32(i32 35, float %4887, float %4917)  ; FMax(a,b)
  %4919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.i32 %4919, 2
  %4921 = and i32 %4920, 1
  %4922 = icmp eq i32 %4921, 0
  %4923 = fcmp fast une float %4918, 1.000000e+00
  %4924 = and i1 %4923, %4922
  br i1 %4924, label %4925, label %4944

; <label>:4925                                    ; preds = %4916
  %4926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %31, float %4605, float %4606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4927 = extractvalue %dx.types.ResRet.f32 %4926, 0
  %4928 = extractvalue %dx.types.ResRet.f32 %4926, 1
  %4929 = extractvalue %dx.types.ResRet.f32 %4926, 2
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %4932 = fmul fast float %4931, %4927
  %4933 = fmul fast float %4931, %4928
  %4934 = fmul fast float %4931, %4929
  %4935 = fcmp fast ogt float %4887, 0x3FEFFF2E40000000
  %4936 = fsub fast float 1.000000e+00, %4918
  %4937 = fsub fast float 1.000000e+00, %4887
  %4938 = fdiv fast float %4936, %4937
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = select i1 %4935, float 0.000000e+00, float %4939
  %4941 = fmul fast float %4932, %4940
  %4942 = fmul fast float %4933, %4940
  %4943 = fmul fast float %4934, %4940
  br label %4944

; <label>:4944                                    ; preds = %4925, %4916
  %4945 = phi float [ 0.000000e+00, %4916 ], [ %4941, %4925 ]
  %4946 = phi float [ 0.000000e+00, %4916 ], [ %4942, %4925 ]
  %4947 = phi float [ 0.000000e+00, %4916 ], [ %4943, %4925 ]
  %4948 = fmul fast float %4945, %3516
  %4949 = fmul fast float %4946, %3518
  %4950 = fmul fast float %4947, %3520
  %4951 = fmul fast float %4918, %4580
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4918, float %4918, float %4918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = select i1 %188, float %4952, float %4918
  %4955 = select i1 %188, float 1.000000e+00, float %4918
  %4956 = select i1 %188, float %4953, float %4948
  %4957 = select i1 %188, float 0.000000e+00, float %4949
  %4958 = select i1 %188, float 0.000000e+00, float %4950
  %4959 = fmul fast float %4954, %4592
  %4960 = fmul fast float %4954, %4593
  %4961 = fmul fast float %4955, %4594
  %4962 = fadd fast float %4959, %4956
  %4963 = fadd fast float %4960, %4957
  %4964 = fadd fast float %4958, %4961
  %4965 = fmul fast float %4954, %4595
  %4966 = fmul fast float %4954, %4596
  %4967 = fmul fast float %4955, %4597
  br label %4968

; <label>:4968                                    ; preds = %4944, %4601, %4570, %3802
  %4969 = phi float [ %3807, %3802 ], [ %4592, %4570 ], [ %4962, %4944 ], [ %4592, %4601 ]
  %4970 = phi float [ %3808, %3802 ], [ %4593, %4570 ], [ %4963, %4944 ], [ %4593, %4601 ]
  %4971 = phi float [ %3809, %3802 ], [ %4594, %4570 ], [ %4964, %4944 ], [ %4594, %4601 ]
  %4972 = phi float [ %3810, %3802 ], [ %4595, %4570 ], [ %4965, %4944 ], [ %4595, %4601 ]
  %4973 = phi float [ %3811, %3802 ], [ %4596, %4570 ], [ %4966, %4944 ], [ %4596, %4601 ]
  %4974 = phi float [ %3812, %3802 ], [ %4597, %4570 ], [ %4967, %4944 ], [ %4597, %4601 ]
  %4975 = phi float [ %3813, %3802 ], [ %4580, %4570 ], [ %4951, %4944 ], [ %4580, %4601 ]
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 2
  %4978 = extractvalue %dx.types.CBufRet.f32 %4976, 3
  %4979 = fmul fast float %4977, %72
  %4980 = fmul fast float %4978, %73
  %4981 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4983 = select i1 %3542, i32 2, i32 0
  %4984 = or i32 %4983, 1
  %4985 = uitofp i32 %4984 to float
  %4986 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4981, float %4982, float %4985, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4987 = extractvalue %dx.types.ResRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.ResRet.f32 %4986, 1
  %4989 = extractvalue %dx.types.ResRet.f32 %4986, 2
  %4990 = extractvalue %dx.types.ResRet.f32 %4986, 3
  %4991 = add nuw nsw i32 %4983, 2
  %4992 = uitofp i32 %4991 to float
  %4993 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %31, float %4981, float %4982, float %4992, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4994 = extractvalue %dx.types.ResRet.f32 %4993, 0
  %4995 = extractvalue %dx.types.ResRet.f32 %4993, 1
  %4996 = extractvalue %dx.types.ResRet.f32 %4993, 2
  %4997 = extractvalue %dx.types.ResRet.f32 %4993, 3
  %4998 = call float @dx.op.binary.f32(i32 35, float %4988, float %4989)  ; FMax(a,b)
  %4999 = call float @dx.op.binary.f32(i32 35, float %4987, float %4998)  ; FMax(a,b)
  %5000 = call float @dx.op.binary.f32(i32 35, float %4999, float %4990)  ; FMax(a,b)
  %5001 = call float @dx.op.binary.f32(i32 36, float %4995, float %4996)  ; FMin(a,b)
  %5002 = call float @dx.op.binary.f32(i32 36, float %4994, float %5001)  ; FMin(a,b)
  %5003 = call float @dx.op.binary.f32(i32 36, float %5002, float %4997)  ; FMin(a,b)
  %5004 = fmul fast float %5000, 2.550000e+02
  %5005 = fadd fast float %5004, 0x3F70101020000000
  %5006 = fptoui float %5005 to i32
  %5007 = fmul fast float %5003, 2.550000e+02
  %5008 = fadd fast float %5007, 0x3F70101020000000
  %5009 = fptoui float %5008 to i32
  %5010 = icmp ult i32 %5006, %5009
  br i1 %5010, label %5011, label %5180

; <label>:5011                                    ; preds = %4968
  %5012 = fcmp fast ogt float %62, 9.843750e-01
  %5013 = fadd fast float %3806, -4.000000e+00
  %5014 = select i1 %5012, float -4.000000e+00, float %5013
  %5015 = call float @dx.op.binary.f32(i32 35, float %5014, float 0.000000e+00)  ; FMax(a,b)
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = fadd fast float %5017, %5015
  %5019 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5020 = fmul fast float %5018, %5019
  %5021 = call float @dx.op.unary.f32(i32 23, float %5020)  ; Log(value)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5016, 3
  %5023 = fmul fast float %5022, %5021
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 2
  %5026 = fmul fast float %5023, %5025
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = uitofp i32 %5006 to float
  %5029 = uitofp i32 %5009 to float
  %5030 = fadd fast float %5028, 5.000000e-01
  %5031 = fadd fast float %5029, 5.000000e-01
  %5032 = fmul fast float %5025, %5030
  %5033 = fmul fast float %5025, %5031
  %5034 = fadd fast float %5032, 0x3F0FFB4800000000
  %5035 = fadd fast float %5033, 0xBF0FFB4800000000
  %5036 = call float @dx.op.binary.f32(i32 35, float %5027, float %5034)  ; FMax(a,b)
  %5037 = call float @dx.op.binary.f32(i32 36, float %5036, float %5035)  ; FMin(a,b)
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5042 = select i1 %3542, float %5041, float 0.000000e+00
  %5043 = fmul fast float %5039, %5037
  %5044 = fadd fast float %5042, %5043
  %5045 = fadd fast float %5042, %5040
  %5046 = fsub fast float %5039, %5040
  %5047 = fadd fast float %5046, %5042
  %5048 = call float @dx.op.binary.f32(i32 35, float %5044, float %5045)  ; FMax(a,b)
  %5049 = call float @dx.op.binary.f32(i32 36, float %5048, float %5047)  ; FMin(a,b)
  %5050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %29, float %4981, float %4982, float %5049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5051 = extractvalue %dx.types.ResRet.f32 %5050, 0
  %5052 = extractvalue %dx.types.ResRet.f32 %5050, 1
  %5053 = extractvalue %dx.types.ResRet.f32 %5050, 2
  %5054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.i32 %5054, 0
  %5056 = extractvalue %dx.types.CBufRet.i32 %5054, 1
  %5057 = uitofp i32 %5055 to float
  %5058 = uitofp i32 %5056 to float
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.CBufRet.f32 %5059, 1
  %5062 = fmul fast float %5057, %4981
  %5063 = fmul fast float %5058, %4982
  %5064 = fadd fast float %5062, -5.000000e-01
  %5065 = fadd fast float %5063, -5.000000e-01
  %5066 = call float @dx.op.unary.f32(i32 22, float %5064)  ; Frc(value)
  %5067 = call float @dx.op.unary.f32(i32 22, float %5065)  ; Frc(value)
  %5068 = fmul fast float %5066, %5066
  %5069 = fmul fast float %5068, %5066
  %5070 = fsub fast float 3.000000e+00, %5066
  %5071 = fmul fast float %5068, %5070
  %5072 = fmul fast float %5066, 3.000000e+00
  %5073 = fmul fast float %5069, 3.000000e+00
  %5074 = fmul fast float %5068, 6.000000e+00
  %5075 = fsub fast float %5073, %5074
  %5076 = fadd fast float %5075, 4.000000e+00
  %5077 = fmul fast float %5076, 0x3FC5555560000000
  %5078 = fmul fast float %5069, -3.000000e+00
  %5079 = fadd fast float %5068, %5066
  %5080 = fmul fast float %5079, 3.000000e+00
  %5081 = fadd fast float %5078, 1.000000e+00
  %5082 = fadd fast float %5081, %5080
  %5083 = fmul fast float %5069, 0x3FC5555560000000
  %5084 = fmul fast float %5067, %5067
  %5085 = fmul fast float %5084, %5067
  %5086 = fsub fast float 3.000000e+00, %5067
  %5087 = fmul fast float %5084, %5086
  %5088 = fmul fast float %5067, 3.000000e+00
  %5089 = fmul fast float %5085, 3.000000e+00
  %5090 = fmul fast float %5084, 6.000000e+00
  %5091 = fsub fast float %5089, %5090
  %5092 = fadd fast float %5091, 4.000000e+00
  %5093 = fmul fast float %5092, 0x3FC5555560000000
  %5094 = fmul fast float %5085, -3.000000e+00
  %5095 = fadd fast float %5084, %5067
  %5096 = fmul fast float %5095, 3.000000e+00
  %5097 = fadd fast float %5094, 1.000000e+00
  %5098 = fadd fast float %5097, %5096
  %5099 = fmul fast float %5085, 0x3FC5555560000000
  %5100 = fadd fast float %5066, 1.000000e+00
  %5101 = fsub fast float 1.000000e+00, %5072
  %5102 = fadd fast float %5101, %5071
  %5103 = fadd fast float %5102, %5076
  %5104 = fmul fast float %5103, 0x3FC5555560000000
  %5105 = fdiv fast float %5077, %5104
  %5106 = fsub fast float %5100, %5105
  %5107 = fsub fast float 1.000000e+00, %5066
  %5108 = fadd fast float %5082, %5069
  %5109 = fmul fast float %5108, 0x3FC5555560000000
  %5110 = fdiv fast float %5083, %5109
  %5111 = fadd fast float %5107, %5110
  %5112 = fadd fast float %5067, 1.000000e+00
  %5113 = fsub fast float 1.000000e+00, %5088
  %5114 = fadd fast float %5113, %5087
  %5115 = fadd fast float %5114, %5092
  %5116 = fmul fast float %5115, 0x3FC5555560000000
  %5117 = fdiv fast float %5093, %5116
  %5118 = fsub fast float %5112, %5117
  %5119 = fsub fast float 1.000000e+00, %5067
  %5120 = fadd fast float %5098, %5085
  %5121 = fmul fast float %5120, 0x3FC5555560000000
  %5122 = fdiv fast float %5099, %5121
  %5123 = fadd fast float %5122, %5119
  %5124 = fmul fast float %5106, %5060
  %5125 = fsub fast float %4981, %5124
  %5126 = fmul fast float %5111, %5060
  %5127 = fadd fast float %5126, %4981
  %5128 = fmul fast float %5123, %5061
  %5129 = fadd fast float %5128, %4982
  %5130 = fmul fast float %5118, %5061
  %5131 = fsub fast float %4982, %5130
  %5132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5125, float %5131, float %5049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5133 = extractvalue %dx.types.ResRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.ResRet.f32 %5132, 1
  %5135 = extractvalue %dx.types.ResRet.f32 %5132, 2
  %5136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5127, float %5131, float %5049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5137 = extractvalue %dx.types.ResRet.f32 %5136, 0
  %5138 = extractvalue %dx.types.ResRet.f32 %5136, 1
  %5139 = extractvalue %dx.types.ResRet.f32 %5136, 2
  %5140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5125, float %5129, float %5049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.ResRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.ResRet.f32 %5140, 2
  %5144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %5127, float %5129, float %5049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5145 = extractvalue %dx.types.ResRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.ResRet.f32 %5144, 1
  %5147 = extractvalue %dx.types.ResRet.f32 %5144, 2
  %5148 = fsub fast float %5141, %5133
  %5149 = fsub fast float %5142, %5134
  %5150 = fsub fast float %5143, %5135
  %5151 = fmul fast float %5148, %5121
  %5152 = fmul fast float %5149, %5121
  %5153 = fmul fast float %5150, %5121
  %5154 = fadd fast float %5151, %5133
  %5155 = fadd fast float %5152, %5134
  %5156 = fadd fast float %5153, %5135
  %5157 = fsub fast float %5145, %5137
  %5158 = fsub fast float %5146, %5138
  %5159 = fsub fast float %5147, %5139
  %5160 = fmul fast float %5157, %5121
  %5161 = fmul fast float %5158, %5121
  %5162 = fmul fast float %5159, %5121
  %5163 = fsub fast float %5137, %5154
  %5164 = fadd fast float %5163, %5160
  %5165 = fsub fast float %5138, %5155
  %5166 = fadd fast float %5165, %5161
  %5167 = fsub fast float %5139, %5156
  %5168 = fadd fast float %5167, %5162
  %5169 = fmul fast float %5164, %5109
  %5170 = fmul fast float %5166, %5109
  %5171 = fmul fast float %5168, %5109
  %5172 = fadd fast float %5169, %5154
  %5173 = fadd fast float %5170, %5155
  %5174 = fadd fast float %5171, %5156
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 1
  %5177 = fmul fast float %5172, %5176
  %5178 = fmul fast float %5173, %5176
  %5179 = fmul fast float %5174, %5176
  br label %5180

; <label>:5180                                    ; preds = %5011, %4968
  %5181 = phi float [ %5051, %5011 ], [ 1.000000e+00, %4968 ]
  %5182 = phi float [ %5052, %5011 ], [ 1.000000e+00, %4968 ]
  %5183 = phi float [ %5053, %5011 ], [ 1.000000e+00, %4968 ]
  %5184 = phi float [ %5177, %5011 ], [ 0.000000e+00, %4968 ]
  %5185 = phi float [ %5178, %5011 ], [ 0.000000e+00, %4968 ]
  %5186 = phi float [ %5179, %5011 ], [ 0.000000e+00, %4968 ]
  %5187 = fmul fast float %5184, %3516
  %5188 = fmul fast float %5185, %3518
  %5189 = fmul fast float %5186, %3520
  %5190 = fmul fast float %5181, %4975
  %5191 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5182, float %5183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = select i1 %188, float %5191, float %5181
  %5194 = select i1 %188, float %5191, float %5182
  %5195 = select i1 %188, float 1.000000e+00, float %5183
  %5196 = select i1 %188, float %5192, float %5187
  %5197 = select i1 %188, float 0.000000e+00, float %5188
  %5198 = select i1 %188, float 0.000000e+00, float %5189
  %5199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.i32 %5199, 3
  %5201 = and i32 %5200, 3
  %5202 = icmp ne i32 %5201, 0
  %5203 = and i32 %5200, 4
  %5204 = icmp ne i32 %5203, 0
  %5205 = and i1 %5202, %5204
  %5206 = and i1 %188, %5205
  br i1 %5206, label %5207, label %5213

; <label>:5207                                    ; preds = %5180
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 1
  %5210 = fadd fast float %5190, -1.000000e+00
  %5211 = fmul fast float %5209, %5210
  %5212 = fadd fast float %5211, 1.000000e+00
  br label %5213

; <label>:5213                                    ; preds = %5207, %5180
  %5214 = phi float [ %5212, %5207 ], [ %5190, %5180 ]
  %5215 = fadd fast float %4972, %4969
  %5216 = fmul fast float %5193, %5215
  %5217 = fadd fast float %5216, %5196
  %5218 = fadd fast float %4973, %4970
  %5219 = fmul fast float %5194, %5218
  %5220 = fadd fast float %5219, %5197
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 0
  br i1 %188, label %5223, label %5238

; <label>:5223                                    ; preds = %5213
  %5224 = fadd fast float %5217, %5220
  %5225 = fmul fast float %5222, %5224
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5228 = extractvalue %dx.types.CBufRet.f32 %3524, 1
  %5229 = fsub fast float %3529, %3523
  %5230 = fadd fast float %5229, %3530
  %5231 = fsub fast float %5230, %5228
  %5232 = extractvalue %dx.types.CBufRet.f32 %3524, 2
  %5233 = fmul fast float %5231, %5232
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fsub fast float %5234, %5227
  %5236 = fmul fast float %5235, %5214
  %5237 = fadd fast float %5236, %5227
  br label %5263

; <label>:5238                                    ; preds = %5213
  %5239 = fadd fast float %4974, %4971
  %5240 = fmul fast float %5195, %5239
  %5241 = fadd fast float %5240, %5198
  %5242 = fmul fast float %5222, %5217
  %5243 = fmul fast float %5222, %5220
  %5244 = fmul fast float %5222, %5241
  %5245 = call float @dx.op.binary.f32(i32 35, float %5243, float %5244)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5242, float %5245)  ; FMax(a,b)
  %5247 = call float @dx.op.binary.f32(i32 35, float %3518, float %3520)  ; FMax(a,b)
  %5248 = call float @dx.op.binary.f32(i32 35, float %3516, float %5247)  ; FMax(a,b)
  %5249 = call float @dx.op.binary.f32(i32 35, float %5246, float %5248)  ; FMax(a,b)
  %5250 = fcmp fast ugt float %5249, 0x3F10000000000000
  br i1 %5250, label %5252, label %5251

; <label>:5251                                    ; preds = %5238
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5252

; <label>:5252                                    ; preds = %5251, %5238
  %5253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.i32 %5253, 0
  %5255 = and i32 %5254, 32
  %5256 = icmp eq i32 %5255, 0
  br i1 %5256, label %5263, label %5257

; <label>:5257                                    ; preds = %5252
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 0
  %5260 = fmul fast float %5259, 0x3FE99999A0000000
  %5261 = fadd fast float %5259, %5242
  %5262 = fadd fast float %5260, %5244
  br label %5263

; <label>:5263                                    ; preds = %5257, %5252, %5223
  %5264 = phi float [ 1.000000e+00, %5223 ], [ %3518, %5257 ], [ %3518, %5252 ]
  %5265 = phi float [ 1.000000e+00, %5223 ], [ %3520, %5257 ], [ %3520, %5252 ]
  %5266 = phi float [ %5225, %5223 ], [ %5261, %5257 ], [ %5242, %5252 ]
  %5267 = phi float [ %5237, %5223 ], [ %5243, %5257 ], [ %5243, %5252 ]
  %5268 = phi float [ 1.000000e+00, %5223 ], [ %5262, %5257 ], [ %5244, %5252 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5269 = call float @dx.op.binary.f32(i32 36, float %5266, float 3.225500e+04)  ; FMin(a,b)
  %5270 = call float @dx.op.binary.f32(i32 36, float %5267, float 3.225500e+04)  ; FMin(a,b)
  %5271 = call float @dx.op.binary.f32(i32 36, float %5268, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5269)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5270)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5271)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5272 = call float @dx.op.binary.f32(i32 36, float %3516, float 3.225500e+04)  ; FMin(a,b)
  %5273 = call float @dx.op.binary.f32(i32 36, float %5264, float 3.225500e+04)  ; FMin(a,b)
  %5274 = call float @dx.op.binary.f32(i32 36, float %5265, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %5272)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %5273)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %5274)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!41 = !{!42, !43, !44, !45, !46, !47, !48}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!49 = !{[31 x i32] [i32 29, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !71}
!51 = !{!52, !67, null}
!52 = !{!53, !56, !58, !60, !61, !62, !63, !64, !66}
!53 = !{i32 0, !"SV_Position", i8 9, i8 3, !54, i8 4, i32 1, i8 4, i32 0, i8 0, !55}
!54 = !{i32 0}
!55 = !{i32 3, i32 15}
!56 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 1, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 2, !"NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 2, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 3, !"TANGENT", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 3, i8 0, !55}
!61 = !{i32 4, !"SH_RED", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 4, i8 0, !55}
!62 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 5, i8 0, !55}
!63 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 6, i8 0, !55}
!64 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !54, i8 1, i32 1, i8 1, i32 7, i8 0, !65}
!65 = !{i32 3, i32 1}
!66 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !54, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68, !69}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!69 = !{i32 1, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 1, i8 0, !55}
!70 = !{i32 1}
!71 = !{i32 0, i64 16}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = !{!78, !78, i64 0}
!78 = !{!"int", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!82, !84, !86, !88}
!82 = distinct !{!82, !83, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!83 = distinct !{!83, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!84 = distinct !{!84, !85, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!85 = distinct !{!85, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!86 = distinct !{!86, !87, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!87 = distinct !{!87, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!88 = distinct !{!88, !89, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!89 = distinct !{!89, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !79, i64 0}
!100 = !{!101, !103, !105, !106, !108, !109, !110, !112, !113, !114}
!101 = distinct !{!101, !102, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!102 = distinct !{!102, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!103 = distinct !{!103, !104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!104 = distinct !{!104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!105 = distinct !{!105, !104, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!106 = distinct !{!106, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!107 = distinct !{!107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!108 = distinct !{!108, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!109 = distinct !{!109, !107, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!110 = distinct !{!110, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!111 = distinct !{!111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!112 = distinct !{!112, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!113 = distinct !{!113, !111, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

