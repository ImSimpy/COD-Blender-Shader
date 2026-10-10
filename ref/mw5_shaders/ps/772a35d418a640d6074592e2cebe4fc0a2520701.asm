;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xyzw        5     NONE   float   xyzw
; TEXCOORD                 6   xyzw        6     NONE   float   xyzw
; TEXCOORD                 7   xyzw        7     NONE   float   xyzw
; TEXCOORD                 8   xyzw        8     NONE   float   xyzw
; COLOR                    3   xyz         9     NONE    uint   x   
; COLOR                    4      w        9     NONE    uint       
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
; shader hash: 07896fcd475d14b2298ad78caa58686c
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
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
; TEXCOORD                 5                 linear       
; TEXCOORD                 6                 linear       
; TEXCOORD                 7                 linear       
; TEXCOORD                 8                 linear       
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9             t1     1
;                                   texture     f32          2d     T10     t57,space2     1
;                                   texture    byte         r/o     T11     t69,space1     1
;                                   texture     u32          2d     T12     t56,space2     1
;                                   texture     f32     2darray     T13     t35,space2     1
;                                   texture     f32          1d     T14     t30,space2     1
;                                   texture     f32          3d     T15     t44,space2     1
;                                   texture     f32          3d     T16     t45,space2     1
;                                   texture     f32     2darray     T17     t47,space2     1
;                                   textureunorm_f32     2darray     T18     t85,space2     1
;                                   texture     f32          2d     T19     t83,space2     1
;                                   texture     f32          2d     T20     t86,space2     1
;                                   texture    byte         r/o     T21             t2     1
;                                   texture     f32          3d     T22     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 40, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 34, 35, 36 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 36 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 36 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 36 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 36 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 36 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = alloca [3 x float], align 4
  %66 = alloca [3 x float], align 4
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %61
  %72 = fmul fast float %70, %62
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %76 = fmul fast float %71, 2.000000e+00
  %77 = fmul fast float %76, %74
  %78 = fmul fast float %72, 2.000000e+00
  %79 = fmul fast float %78, %75
  %80 = fsub fast float 1.000000e+00, %77
  %81 = fsub fast float 1.000000e+00, %79
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %80, %83
  %87 = fmul fast float %80, %84
  %88 = fmul fast float %80, %85
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fmul fast float %81, %90
  %94 = fmul fast float %81, %91
  %95 = fmul fast float %81, %92
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = fadd fast float %93, %97
  %101 = fadd fast float %100, %86
  %102 = fadd fast float %94, %98
  %103 = fadd fast float %102, %87
  %104 = fadd fast float %95, %99
  %105 = fadd fast float %104, %88
  %106 = fmul fast float %101, %64
  %107 = fmul fast float %103, %64
  %108 = fmul fast float %105, %64
  %109 = fmul fast float %50, %47
  %110 = fmul fast float %51, %46
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %51, %45
  %113 = fmul fast float %49, %47
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %49, %46
  %116 = fmul fast float %50, %45
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %111, %48
  %119 = fmul fast float %114, %48
  %120 = fmul fast float %117, %48
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.i32 %122, 3
  %124 = and i32 %123, 3
  %125 = icmp ne i32 %124, 0
  %126 = and i32 %123, 4
  %127 = icmp ne i32 %126, 0
  %128 = and i1 %125, %127
  br i1 %128, label %129, label %140

; <label>:129                                     ; preds = %0
  %130 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %131 = fmul fast float %130, %72
  %132 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %133 = fmul fast float %132, %71
  %134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %133, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = fsub fast float 1.000000e+00, %135
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = fcmp fast olt float %136, %138
  br label %143

; <label>:140                                     ; preds = %0
  %141 = icmp eq i32 %126, 0
  %142 = and i1 %125, %141
  br label %143

; <label>:143                                     ; preds = %140, %129
  %144 = phi i1 [ %139, %129 ], [ %142, %140 ]
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %148 = fmul fast float %146, %71
  %149 = fmul fast float %147, %72
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = and i32 %151, 114688
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %153, float %148, float 0.000000e+00
  %155 = select i1 %153, float %149, float 0.000000e+00
  %156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %154, float %155, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = fmul fast float %157, 2.550000e+02
  %159 = fptoui float %158 to i32
  %160 = select i1 %153, i32 %159, i32 0
  %161 = mul i32 %28, 208
  %162 = add i32 %161, 188
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %123, 114688
  %166 = and i32 %123, 8
  %167 = icmp ne i32 %166, 0
  %168 = or i1 %144, %167
  %169 = select i1 %168, i32 %165, i32 16384
  %170 = and i32 %169, %164
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

; <label>:172                                     ; preds = %143
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %173

; <label>:173                                     ; preds = %172, %143
  %174 = and i32 %164, 512
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %200, label %176

; <label>:176                                     ; preds = %173
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %180 = fmul fast float %178, %71
  %181 = fmul fast float %179, %72
  %182 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %184 = fdiv fast float %182, %183
  %185 = fcmp fast ogt float %184, 0x3FFC71C720000000
  br i1 %185, label %186, label %192

; <label>:186                                     ; preds = %176
  %187 = fdiv fast float 0x3FFC71C720000000, %184
  %188 = fmul fast float %187, %181
  %189 = fsub fast float 1.000000e+00, %187
  %190 = fmul fast float %189, 5.000000e-01
  %191 = fadd fast float %190, %188
  br label %200

; <label>:192                                     ; preds = %176
  %193 = fcmp fast olt float %184, 0x3FFC71C720000000
  br i1 %193, label %194, label %200

; <label>:194                                     ; preds = %192
  %195 = fmul fast float %180, 5.625000e-01
  %196 = fmul fast float %195, %184
  %197 = fmul fast float %184, 2.812500e-01
  %198 = fsub fast float 5.000000e-01, %197
  %199 = fadd fast float %198, %196
  br label %200

; <label>:200                                     ; preds = %194, %192, %186, %173
  %201 = phi float [ %53, %173 ], [ %180, %186 ], [ %199, %194 ], [ %180, %192 ]
  %202 = phi float [ %54, %173 ], [ %191, %186 ], [ %181, %194 ], [ %181, %192 ]
  %203 = and i32 %164, 16
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %204, float 1.000000e+00, float %60
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = add i32 %207, 0
  %209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %209, %dx.types.Handle %68, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float %211, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fmul fast float %213, %205
  %215 = icmp eq i32 %203, 0
  br i1 %215, label %235, label %216, !dx.controlflow.hints !70

; <label>:216                                     ; preds = %200
  %217 = add i32 %161, 64
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fadd fast float %219, 1.000000e+00
  %221 = fmul fast float %220, %60
  %222 = fsub fast float %221, %219
  %223 = fsub fast float %220, %222
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fsub fast float 1.000000e+00, %221
  %226 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %227 = fsub fast float %224, %226
  %228 = fsub fast float %214, %226
  %229 = fdiv fast float %228, %227
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = fmul fast float %230, 2.000000e+00
  %232 = fsub fast float 3.000000e+00, %231
  %233 = fmul fast float %230, %230
  %234 = fmul fast float %233, %232
  br label %235

; <label>:235                                     ; preds = %216, %200
  %236 = phi float [ %234, %216 ], [ %214, %200 ]
  %237 = and i32 %164, 1024
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %271, label %239, !dx.controlflow.hints !71

; <label>:239                                     ; preds = %235
  %240 = add i32 %161, 48
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = fadd fast float %55, -5.000000e-01
  %245 = fmul fast float %244, 2.000000e+00
  %246 = fmul fast float %45, %245
  %247 = fmul fast float %46, %245
  %248 = fmul fast float %246, %243
  %249 = fmul fast float %247, %243
  %250 = call float @dx.op.dot2.f32(i32 54, float %45, float %46, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %251 = call float @dx.op.unary.f32(i32 25, float %250)  ; Rsqrt(value)
  %252 = fmul fast float %248, %251
  %253 = fmul fast float %249, %251
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = fsub fast float %106, %248
  %258 = fadd fast float %257, %255
  %259 = fadd fast float %258, %252
  %260 = fsub fast float %107, %249
  %261 = fadd fast float %260, %256
  %262 = fadd fast float %261, %253
  %263 = fmul fast float %259, %242
  %264 = fmul fast float %262, %242
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %266, 0
  %268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %268, %dx.types.Handle %68, float %264, float %263, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  br label %278

; <label>:271                                     ; preds = %235
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = add i32 %273, 0
  %275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %275, %dx.types.Handle %68, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  br label %278

; <label>:278                                     ; preds = %271, %239
  %279 = phi float [ %270, %239 ], [ %277, %271 ]
  %280 = fmul fast float %279, %236
  %281 = fcmp fast ogt float %280, 0.000000e+00
  br i1 %281, label %283, label %282

; <label>:282                                     ; preds = %278
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %283

; <label>:283                                     ; preds = %282, %278
  %284 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %285 = fmul fast float %71, 5.000000e-01
  %286 = fmul fast float %72, 5.000000e-01
  %287 = fptosi float %285 to i32
  %288 = fptosi float %286 to i32
  %289 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %287, i32 %288, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = lshr i32 %290, 18
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F4C00EBA0000000
  %294 = call float @dx.op.unary.f32(i32 21, float %293)  ; Exp(value)
  %295 = fadd fast float %294, -1.000000e+00
  %296 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %297 = extractvalue %dx.types.Dimensions %296, 0
  %298 = sitofp i32 %297 to float
  %299 = extractvalue %dx.types.Dimensions %296, 1
  %300 = sitofp i32 %299 to float
  %301 = fcmp fast oge float %285, %298
  %302 = fcmp fast oge float %286, %300
  %303 = or i1 %301, %302
  %304 = select i1 %303, float 0x4197782600000000, float %295
  %305 = fsub fast float %304, %64
  %306 = fcmp fast ogt float %305, 0.000000e+00
  %307 = and i32 %160, -2
  %308 = icmp eq i32 %307, 2
  %309 = and i1 %308, %306
  %310 = xor i1 %306, true
  %311 = icmp eq i32 %160, 1
  %312 = and i1 %311, %310
  %313 = or i1 %309, %312
  %314 = and i32 %164, 262144
  %315 = icmp ne i32 %314, 0
  %316 = and i1 %315, %313
  %317 = xor i1 %313, true
  %318 = and i32 %164, 131072
  %319 = icmp ne i32 %318, 0
  %320 = and i1 %319, %317
  %321 = or i1 %316, %320
  br i1 %321, label %322, label %323

; <label>:322                                     ; preds = %283
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %323

; <label>:323                                     ; preds = %322, %283
  %324 = and i32 %164, 32
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %591, label %326, !dx.controlflow.hints !72

; <label>:326                                     ; preds = %323
  %327 = add i32 %161, 80
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = extractvalue %dx.types.ResRet.f32 %328, 3
  %333 = add i32 %161, 96
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = add i32 %161, 112
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = extractvalue %dx.types.ResRet.f32 %339, 1
  %342 = extractvalue %dx.types.ResRet.f32 %339, 2
  %343 = extractvalue %dx.types.ResRet.f32 %339, 3
  %344 = add i32 %161, 128
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = extractvalue %dx.types.ResRet.f32 %345, 2
  %349 = extractvalue %dx.types.ResRet.f32 %345, 3
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 4096
  %353 = icmp ne i32 %352, 0
  %354 = fcmp fast une float %337, 0.000000e+00
  %355 = and i32 %351, 64
  %356 = icmp ne i32 %355, 0
  %357 = and i32 %351, 128
  %358 = icmp eq i32 %357, 0
  %359 = and i32 %351, 2048
  %360 = icmp eq i32 %359, 0
  %361 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %362 = extractvalue %dx.types.Dimensions %361, 0
  %363 = sitofp i32 %362 to float
  %364 = extractvalue %dx.types.Dimensions %361, 1
  %365 = sitofp i32 %364 to float
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 3
  %369 = fmul fast float %367, %71
  %370 = fmul fast float %368, %72
  %371 = fmul fast float %369, %363
  %372 = fmul fast float %370, %365
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %375 = fsub fast float -0.000000e+00, %374
  %376 = fptoui float %375 to i32
  %377 = fptoui float %371 to i32
  %378 = fptoui float %372 to i32
  %379 = and i32 %376, 31
  %380 = lshr i32 %377, %379
  %381 = lshr i32 %378, %379
  %382 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %376, i32 %380, i32 %381, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = fcmp fast ogt float %383, -1.000000e+00
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %387 = select i1 %384, float %386, float 1.000000e+00
  %388 = fadd fast float %383, 1.000000e+00
  %389 = fmul fast float %387, %388
  %390 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %391 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %392 = fcmp fast oge float %390, %391
  %393 = select i1 %392, float 0x4197782600000000, float %390
  br i1 %360, label %476, label %394, !dx.controlflow.hints !73

; <label>:394                                     ; preds = %326
  %395 = fmul fast float %76, %367
  %396 = fmul fast float %78, %368
  %397 = fsub fast float 1.000000e+00, %395
  %398 = fsub fast float 1.000000e+00, %396
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = fmul fast float %397, %400
  %404 = fmul fast float %397, %401
  %405 = fmul fast float %397, %402
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %409 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %410 = fmul fast float %398, %407
  %411 = fmul fast float %398, %408
  %412 = fmul fast float %398, %409
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %417 = fadd fast float %410, %414
  %418 = fadd fast float %417, %403
  %419 = fadd fast float %411, %415
  %420 = fadd fast float %419, %404
  %421 = fadd fast float %412, %416
  %422 = fadd fast float %421, %405
  %423 = fmul fast float %418, %393
  %424 = fmul fast float %420, %393
  %425 = fmul fast float %422, %393
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %430 = fadd fast float %423, %427
  %431 = fadd fast float %424, %428
  %432 = fadd fast float %425, %429
  %433 = call float @dx.op.dot3.f32(i32 55, float %430, float %431, float %432, float %430, float %431, float %432)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = fsub fast float 1.000000e+00, %433
  %435 = fcmp fast olt float %434, %336
  %436 = fcmp fast ogt float %434, %335
  %437 = or i1 %435, %436
  %438 = select i1 %437, float 0.000000e+00, float %434
  %439 = fsub fast float %335, %336
  %440 = fsub fast float %438, %336
  %441 = fdiv fast float %440, %439
  %442 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %443 = fmul fast float %442, 2.000000e+00
  %444 = fsub fast float 3.000000e+00, %443
  %445 = fmul fast float %442, %442
  %446 = fmul fast float %445, %444
  %447 = fmul fast float %340, %57
  %448 = fmul fast float %341, %58
  %449 = fmul fast float %342, %59
  %450 = fsub fast float %447, %346
  %451 = fsub fast float %448, %347
  %452 = fsub fast float %449, %348
  %453 = fsub fast float %343, %349
  %454 = fmul fast float %446, %450
  %455 = fmul fast float %446, %451
  %456 = fmul fast float %446, %452
  %457 = fmul fast float %446, %453
  %458 = fadd fast float %454, %346
  %459 = fadd fast float %455, %347
  %460 = fadd fast float %456, %348
  %461 = fadd fast float %457, %349
  %462 = fmul fast float %340, %29
  %463 = fmul fast float %341, %30
  %464 = fmul fast float %342, %31
  %465 = fsub fast float %462, %346
  %466 = fsub fast float %463, %347
  %467 = fsub fast float %464, %348
  %468 = fmul fast float %446, %465
  %469 = fmul fast float %446, %466
  %470 = fmul fast float %446, %467
  %471 = fadd fast float %468, %346
  %472 = fadd fast float %469, %347
  %473 = fadd fast float %470, %348
  %474 = fmul fast float %329, %329
  %475 = fmul fast float %474, %438
  br label %579

; <label>:476                                     ; preds = %326
  %477 = and i32 %351, 256
  %478 = icmp eq i32 %477, 0
  %479 = fsub fast float %393, %64
  br i1 %478, label %540, label %480

; <label>:480                                     ; preds = %476
  %481 = fadd fast float %335, %64
  %482 = fcmp fast olt float %393, %64
  %483 = fcmp fast ogt float %393, %481
  %484 = or i1 %482, %483
  %485 = select i1 %484, float 0.000000e+00, float %479
  %486 = call float @dx.op.unary.f32(i32 83, float %393)  ; DerivCoarseX(value)
  %487 = call float @dx.op.unary.f32(i32 84, float %393)  ; DerivCoarseY(value)
  %488 = fmul fast float %486, %486
  %489 = fmul fast float %487, %487
  %490 = fadd fast float %489, %488
  %491 = call float @dx.op.unary.f32(i32 24, float %490)  ; Sqrt(value)
  %492 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %493 = fmul fast float %492, %491
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = fmul fast float %494, %336
  %496 = fdiv fast float %479, %495
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = fmul fast float %497, 2.000000e+00
  %499 = fsub fast float 3.000000e+00, %498
  %500 = fmul fast float %497, %497
  %501 = fmul fast float %500, %499
  %502 = fsub fast float %393, %481
  %503 = fadd fast float %502, %495
  %504 = fdiv fast float %503, %495
  %505 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %506 = fmul fast float %505, 2.000000e+00
  %507 = fsub fast float 3.000000e+00, %506
  %508 = fmul fast float %505, %505
  %509 = fmul fast float %508, %507
  %510 = fsub fast float %501, %509
  %511 = fmul fast float %340, %57
  %512 = fmul fast float %341, %58
  %513 = fmul fast float %342, %59
  %514 = fsub fast float %511, %346
  %515 = fsub fast float %512, %347
  %516 = fsub fast float %513, %348
  %517 = fsub fast float %343, %349
  %518 = fmul fast float %510, %514
  %519 = fmul fast float %510, %515
  %520 = fmul fast float %510, %516
  %521 = fmul fast float %510, %517
  %522 = fadd fast float %518, %346
  %523 = fadd fast float %519, %347
  %524 = fadd fast float %520, %348
  %525 = fadd fast float %521, %349
  %526 = fmul fast float %340, %29
  %527 = fmul fast float %341, %30
  %528 = fmul fast float %342, %31
  %529 = fsub fast float %526, %346
  %530 = fsub fast float %527, %347
  %531 = fsub fast float %528, %348
  %532 = fmul fast float %510, %529
  %533 = fmul fast float %510, %530
  %534 = fmul fast float %510, %531
  %535 = fadd fast float %532, %346
  %536 = fadd fast float %533, %347
  %537 = fadd fast float %534, %348
  %538 = fmul fast float %485, %329
  %539 = call float @dx.op.unary.f32(i32 6, float %538)  ; FAbs(value)
  br label %579

; <label>:540                                     ; preds = %476
  br i1 %354, label %541, label %552

; <label>:541                                     ; preds = %540
  %542 = select i1 %356, float 5.000000e+01, float 1.000000e+00
  %543 = fmul fast float %542, %329
  %544 = fmul fast float %53, 2.000000e+00
  %545 = fmul fast float %54, 2.000000e+00
  %546 = fadd fast float %544, -1.000000e+00
  %547 = fadd fast float %545, -1.000000e+00
  %548 = call float @dx.op.dot2.f32(i32 54, float %546, float %547, float %546, float %547)  ; Dot2(ax,ay,bx,by)
  %549 = fmul fast float %548, %337
  %550 = fsub fast float %479, %549
  %551 = fmul fast float %543, %550
  br label %579

; <label>:552                                     ; preds = %540
  br i1 %358, label %572, label %553

; <label>:553                                     ; preds = %552
  %554 = select i1 %356, float 0x3F947AE140000000, float 1.000000e+00
  %555 = fdiv fast float 1.000000e+00, %554
  %556 = fmul fast float %554, %330
  %557 = fmul fast float %554, %331
  %558 = fmul fast float %555, %332
  %559 = call float @dx.op.unary.f32(i32 6, float %479)  ; FAbs(value)
  %560 = fcmp fast olt float %559, %556
  br i1 %560, label %561, label %565, !dx.controlflow.hints !74

; <label>:561                                     ; preds = %553
  %562 = fmul fast float %555, %329
  %563 = fmul fast float %562, %559
  %564 = call float @dx.op.unary.f32(i32 6, float %563)  ; FAbs(value)
  br label %579

; <label>:565                                     ; preds = %553
  %566 = fcmp fast ogt float %559, %557
  br i1 %566, label %567, label %579

; <label>:567                                     ; preds = %565
  %568 = fsub fast float %559, %557
  %569 = fmul fast float %558, %568
  %570 = call float @dx.op.unary.f32(i32 6, float %569)  ; FAbs(value)
  %571 = fsub fast float 1.000000e+00, %570
  br label %579

; <label>:572                                     ; preds = %552
  %573 = select i1 %356, float 5.000000e+01, float 1.000000e+00
  %574 = fmul fast float %573, %329
  %575 = call float @dx.op.unary.f32(i32 6, float %305)  ; FAbs(value)
  %576 = select i1 %353, float %575, float 0x47EFFFFFE0000000
  %577 = call float @dx.op.binary.f32(i32 36, float %479, float %576)  ; FMin(a,b)
  %578 = fmul fast float %574, %577
  br label %579

; <label>:579                                     ; preds = %572, %567, %565, %561, %541, %480, %394
  %580 = phi float [ %475, %394 ], [ %539, %480 ], [ %551, %541 ], [ %578, %572 ], [ %564, %561 ], [ %571, %567 ], [ %559, %565 ]
  %581 = phi float [ %471, %394 ], [ %535, %480 ], [ %29, %541 ], [ %29, %572 ], [ %29, %561 ], [ %29, %567 ], [ %29, %565 ]
  %582 = phi float [ %472, %394 ], [ %536, %480 ], [ %30, %541 ], [ %30, %572 ], [ %30, %561 ], [ %30, %567 ], [ %30, %565 ]
  %583 = phi float [ %473, %394 ], [ %537, %480 ], [ %31, %541 ], [ %31, %572 ], [ %31, %561 ], [ %31, %567 ], [ %31, %565 ]
  %584 = phi float [ %458, %394 ], [ %522, %480 ], [ %57, %541 ], [ %57, %572 ], [ %57, %561 ], [ %57, %567 ], [ %57, %565 ]
  %585 = phi float [ %459, %394 ], [ %523, %480 ], [ %58, %541 ], [ %58, %572 ], [ %58, %561 ], [ %58, %567 ], [ %58, %565 ]
  %586 = phi float [ %460, %394 ], [ %524, %480 ], [ %59, %541 ], [ %59, %572 ], [ %59, %561 ], [ %59, %567 ], [ %59, %565 ]
  %587 = phi float [ %461, %394 ], [ %525, %480 ], [ 1.000000e+00, %541 ], [ 1.000000e+00, %572 ], [ 1.000000e+00, %561 ], [ 1.000000e+00, %567 ], [ 1.000000e+00, %565 ]
  %588 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %589 = fmul fast float %587, %284
  %590 = fmul fast float %589, %588
  br label %591

; <label>:591                                     ; preds = %579, %323
  %592 = phi float [ %584, %579 ], [ %57, %323 ]
  %593 = phi float [ %585, %579 ], [ %58, %323 ]
  %594 = phi float [ %586, %579 ], [ %59, %323 ]
  %595 = phi float [ %590, %579 ], [ %284, %323 ]
  %596 = phi float [ %581, %579 ], [ %29, %323 ]
  %597 = phi float [ %582, %579 ], [ %30, %323 ]
  %598 = phi float [ %583, %579 ], [ %31, %323 ]
  %599 = fmul fast float %596, %32
  %600 = fmul fast float %597, %32
  %601 = fmul fast float %598, %32
  %602 = fmul fast float %596, %52
  %603 = fmul fast float %597, %52
  %604 = fmul fast float %598, %52
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %607 = fptosi float %64 to i32
  %608 = sitofp i32 %607 to float
  %609 = fadd fast float %606, %608
  %610 = fmul fast float %609, 0x3FE3C6EF40000000
  %611 = frem fast float %71, 2.560000e+02
  %612 = frem fast float %72, 2.560000e+02
  %613 = fptoui float %611 to i32
  %614 = fptoui float %612 to i32
  %615 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %613, i32 %614, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = fadd fast float %616, %610
  %618 = call float @dx.op.unary.f32(i32 22, float %617)  ; Frc(value)
  %619 = and i32 %164, 1
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %680, label %621, !dx.controlflow.hints !75

; <label>:621                                     ; preds = %591
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 2
  %624 = extractvalue %dx.types.ResRet.f32 %622, 3
  %625 = add i32 %161, 16
  %626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = add i32 %161, 32
  %631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = and i32 %164, 2
  %636 = icmp eq i32 %635, 0
  %637 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %638 = call float @dx.op.unary.f32(i32 25, float %637)  ; Rsqrt(value)
  %639 = fmul fast float %638, %49
  %640 = fmul fast float %638, %50
  %641 = fmul fast float %638, %51
  %642 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = call float @dx.op.unary.f32(i32 25, float %642)  ; Rsqrt(value)
  %644 = fmul fast float %643, %106
  %645 = fmul fast float %643, %107
  %646 = fmul fast float %643, %108
  %647 = call float @dx.op.dot3.f32(i32 55, float %644, float %645, float %646, float %639, float %640, float %641)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = fmul fast float %647, %647
  %649 = fmul fast float %648, %623
  %650 = fadd fast float %649, %624
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  br i1 %636, label %652, label %662, !dx.controlflow.hints !76

; <label>:652                                     ; preds = %621
  %653 = extractvalue %dx.types.ResRet.f32 %622, 1
  %654 = extractvalue %dx.types.ResRet.f32 %622, 0
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 3
  %657 = fmul fast float %656, %642
  %658 = fsub fast float %654, %657
  %659 = fmul fast float %658, %653
  %660 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %661 = fmul fast float %660, %651
  br label %662

; <label>:662                                     ; preds = %652, %621
  %663 = phi float [ %661, %652 ], [ %651, %621 ]
  %664 = fsub fast float %627, %632
  %665 = fsub fast float %628, %633
  %666 = fsub fast float %629, %634
  %667 = fmul fast float %663, %664
  %668 = fmul fast float %663, %665
  %669 = fmul fast float %663, %666
  %670 = fadd fast float %667, %632
  %671 = fadd fast float %668, %633
  %672 = fadd fast float %669, %634
  %673 = fmul fast float %670, %592
  %674 = fmul fast float %671, %593
  %675 = fmul fast float %672, %594
  %676 = fmul fast float %670, %599
  %677 = fmul fast float %671, %600
  %678 = fmul fast float %672, %601
  %679 = fmul fast float %663, %595
  br label %680

; <label>:680                                     ; preds = %662, %591
  %681 = phi float [ %673, %662 ], [ %592, %591 ]
  %682 = phi float [ %674, %662 ], [ %593, %591 ]
  %683 = phi float [ %675, %662 ], [ %594, %591 ]
  %684 = phi float [ %679, %662 ], [ %595, %591 ]
  %685 = phi float [ %676, %662 ], [ %599, %591 ]
  %686 = phi float [ %677, %662 ], [ %600, %591 ]
  %687 = phi float [ %678, %662 ], [ %601, %591 ]
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %67, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = extractvalue %dx.types.ResRet.f32 %694, 1
  %697 = extractvalue %dx.types.ResRet.f32 %694, 2
  %698 = extractvalue %dx.types.ResRet.f32 %694, 3
  %699 = and i32 %693, 255
  %700 = uitofp i32 %699 to float
  %701 = lshr i32 %693, 8
  %702 = and i32 %701, 255
  %703 = uitofp i32 %702 to float
  %704 = fmul fast float %698, %700
  %705 = fadd fast float %704, %703
  %706 = fmul fast float %705, 0x3F70101000000000
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = and i32 %708, 255
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %710, 0x3F70101020000000
  %712 = lshr i32 %708, 8
  %713 = and i32 %712, 255
  %714 = uitofp i32 %713 to float
  %715 = fmul fast float %714, 0x3F70101020000000
  %716 = lshr i32 %708, 16
  %717 = and i32 %716, 255
  %718 = uitofp i32 %717 to float
  %719 = fmul fast float %718, 0x3F70101020000000
  %720 = fmul fast float %695, %681
  %721 = fmul fast float %711, %711
  %722 = fmul fast float %721, %720
  %723 = fmul fast float %696, %682
  %724 = fmul fast float %715, %715
  %725 = fmul fast float %724, %723
  %726 = fmul fast float %697, %683
  %727 = fmul fast float %719, %719
  %728 = fmul fast float %727, %726
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = add i32 %732, 0
  %734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %735 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %734, %dx.types.Handle %67, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 3
  %739 = and i32 %730, 255
  %740 = uitofp i32 %739 to float
  %741 = lshr i32 %730, 8
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = lshr i32 %730, 16
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101000000000
  %748 = fmul fast float %736, %740
  %749 = fadd fast float %748, %743
  %750 = fmul fast float %749, 0x3F70101000000000
  %751 = fadd fast float %737, -5.000000e-01
  %752 = fadd fast float %738, -5.000000e-01
  %753 = fmul fast float %751, %747
  %754 = fmul fast float %752, %747
  %755 = fadd fast float %753, 5.000000e-01
  %756 = fadd fast float %754, 5.000000e-01
  %757 = fmul fast float %755, 2.000000e+00
  %758 = fadd fast float %757, -1.000000e+00
  %759 = fmul fast float %756, 2.000000e+00
  %760 = fadd fast float %759, -1.000000e+00
  %761 = fadd fast float %758, %760
  %762 = fmul fast float %761, 5.000000e-01
  %763 = fsub fast float %758, %760
  %764 = fmul fast float %763, 5.000000e-01
  %765 = call float @dx.op.unary.f32(i32 6, float %762)  ; FAbs(value)
  %766 = fsub fast float 1.000000e+00, %765
  %767 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %768 = fsub fast float %766, %767
  %769 = call float @dx.op.dot3.f32(i32 55, float %762, float %764, float %768, float %762, float %764, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call float @dx.op.unary.f32(i32 25, float %769)  ; Rsqrt(value)
  %771 = fmul fast float %762, %770
  %772 = fmul fast float %764, %770
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %774, 0
  %776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %776, %dx.types.Handle %67, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = shl i32 %782, 4
  %784 = and i32 %783, 32752
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = lshr i32 %782, 7
  %787 = and i32 %786, 32752
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = lshr i32 %782, 22
  %790 = shl nuw nsw i32 %789, 5
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = fmul fast float %785, %778
  %793 = fmul fast float %788, %779
  %794 = fmul fast float %791, %780
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = lshr i32 %796, 22
  %798 = shl nuw nsw i32 %797, 5
  %799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %798)  ; LegacyF16ToF32(value)
  %800 = fmul fast float %799, %792
  %801 = select i1 %144, float %800, float %792
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101020000000
  %807 = lshr i32 %803, 8
  %808 = and i32 %807, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, 0x3F70101020000000
  %811 = lshr i32 %803, 16
  %812 = and i32 %811, 255
  %813 = uitofp i32 %812 to float
  %814 = fmul fast float %813, 0x3F70101020000000
  %815 = fmul fast float %806, %806
  %816 = fmul fast float %810, %810
  %817 = fmul fast float %814, %814
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = add i32 %819, 0
  %821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %821, %dx.types.Handle %68, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 2
  %826 = fmul fast float %815, %823
  %827 = fmul fast float %816, %824
  %828 = fmul fast float %817, %825
  %829 = call float @dx.op.dot2.f32(i32 54, float %771, float %772, float %771, float %772)  ; Dot2(ax,ay,bx,by)
  %830 = fsub fast float 1.000000e+00, %829
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = call float @dx.op.unary.f32(i32 24, float %831)  ; Sqrt(value)
  %833 = fmul fast float %832, %49
  %834 = fmul fast float %832, %50
  %835 = fmul fast float %832, %51
  %836 = fmul fast float %771, %45
  %837 = fmul fast float %771, %46
  %838 = fmul fast float %771, %47
  %839 = fmul fast float %118, %772
  %840 = fmul fast float %119, %772
  %841 = fmul fast float %120, %772
  %842 = fadd fast float %839, %836
  %843 = fadd fast float %842, %833
  %844 = fadd fast float %840, %837
  %845 = fadd fast float %844, %834
  %846 = fadd fast float %841, %838
  %847 = fadd fast float %846, %835
  %848 = call float @dx.op.dot3.f32(i32 55, float %843, float %845, float %847, float %843, float %845, float %847)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = call float @dx.op.unary.f32(i32 25, float %848)  ; Rsqrt(value)
  %850 = fmul fast float %843, %849
  %851 = fmul fast float %845, %849
  %852 = fmul fast float %847, %849
  %853 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = call float @dx.op.unary.f32(i32 25, float %853)  ; Rsqrt(value)
  %855 = fmul fast float %854, %106
  %856 = fmul fast float %854, %107
  %857 = fmul fast float %854, %108
  %858 = fsub fast float -0.000000e+00, %855
  %859 = fsub fast float -0.000000e+00, %856
  %860 = fsub fast float -0.000000e+00, %857
  %861 = fadd fast float %706, 0xBFB99999A0000000
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %863 = fmul fast float %862, 0x3FF1C71C80000000
  %864 = call float @dx.op.binary.f32(i32 36, float %706, float 0x3FB99999A0000000)  ; FMin(a,b)
  %865 = fsub fast float 1.000000e+00, %863
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %867 = fmul fast float %866, %722
  %868 = fmul fast float %866, %725
  %869 = fmul fast float %866, %728
  %870 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %871 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %872 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %873 = fmul fast float %863, %722
  %874 = fmul fast float %863, %725
  %875 = fmul fast float %863, %728
  %876 = fadd fast float %873, %864
  %877 = fadd fast float %874, %864
  %878 = fadd fast float %875, %864
  %879 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %880 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %881 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %882 = call float @dx.op.unary.f32(i32 7, float %750)  ; Saturate(value)
  %883 = fmul fast float %801, %685
  %884 = fmul fast float %793, %686
  %885 = fmul fast float %794, %687
  %886 = call float @dx.op.dot3.f32(i32 55, float %883, float %884, float %885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %887 = select i1 %144, float 0.000000e+00, float %883
  %888 = select i1 %144, float %886, float %884
  %889 = select i1 %144, float 0.000000e+00, float %885
  %890 = fmul fast float %602, %801
  %891 = fmul fast float %603, %793
  %892 = fmul fast float %604, %794
  %893 = call float @dx.op.dot3.f32(i32 55, float %870, float %871, float %872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 255
  %897 = uitofp i32 %896 to float
  %898 = lshr i32 %895, 8
  %899 = and i32 %898, 255
  %900 = uitofp i32 %899 to float
  %901 = fmul fast float %900, %893
  %902 = fadd fast float %901, %897
  %903 = fmul fast float %902, 0x3F70101020000000
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = and i32 %164, 8192
  %906 = icmp eq i32 %905, 0
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  br i1 %906, label %915, label %909, !dx.controlflow.hints !77

; <label>:909                                     ; preds = %680
  %910 = add i32 %161, 176
  %911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = fcmp fast oge float %912, 0.000000e+00
  %914 = select i1 %913, float %912, float %908
  br label %915

; <label>:915                                     ; preds = %909, %680
  %916 = phi float [ %914, %909 ], [ %908, %680 ]
  %917 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %287, i32 %288, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 18
  %920 = uitofp i32 %919 to float
  %921 = fmul fast float %920, 0x3F4C00EBA0000000
  %922 = call float @dx.op.unary.f32(i32 21, float %921)  ; Exp(value)
  %923 = fadd fast float %922, -1.000000e+00
  %924 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %925 = extractvalue %dx.types.Dimensions %924, 0
  %926 = sitofp i32 %925 to float
  %927 = extractvalue %dx.types.Dimensions %924, 1
  %928 = sitofp i32 %927 to float
  %929 = fcmp fast oge float %285, %926
  %930 = fcmp fast oge float %286, %928
  %931 = or i1 %929, %930
  %932 = select i1 %931, float 0x4197782600000000, float %923
  %933 = icmp eq i32 %160, 3
  %934 = fcmp fast ogt float %64, %932
  %935 = and i1 %311, %934
  %936 = or i1 %933, %935
  %937 = icmp eq i32 %160, 2
  %938 = fcmp fast ole float %64, %932
  %939 = and i1 %937, %938
  %940 = or i1 %939, %936
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %943 = fcmp fast ogt float %942, 0.000000e+00
  br i1 %943, label %944, label %951

; <label>:944                                     ; preds = %915
  %945 = fmul fast float %851, 0xBFDF454380000000
  %946 = fmul fast float %852, 0x3FDF454380000000
  %947 = fmul fast float %850, 0xBFDF454380000000
  %948 = call float @dx.op.dot4.f32(i32 56, float %41, float %42, float %43, float %44, float 0x3FD20DD760000000, float %945, float %946, float %947)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %949 = call float @dx.op.dot4.f32(i32 56, float %37, float %38, float %39, float %40, float 0x3FD20DD760000000, float %945, float %946, float %947)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %950 = call float @dx.op.dot4.f32(i32 56, float %33, float %34, float %35, float %36, float 0x3FD20DD760000000, float %945, float %946, float %947)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %951

; <label>:951                                     ; preds = %944, %915
  %952 = phi float [ %948, %944 ], [ %41, %915 ]
  %953 = phi float [ %949, %944 ], [ %42, %915 ]
  %954 = phi float [ %950, %944 ], [ %43, %915 ]
  %955 = fmul fast float %890, %952
  %956 = fmul fast float %891, %953
  %957 = fmul fast float %892, %954
  %958 = fadd fast float %955, %887
  %959 = fadd fast float %956, %888
  %960 = fadd fast float %957, %889
  %961 = fmul fast float %958, %684
  %962 = fmul fast float %959, %684
  %963 = fmul fast float %960, %684
  %964 = call float @dx.op.dot3.f32(i32 55, float %850, float %851, float %852, float %858, float %859, float %860)  ; Dot3(ax,ay,az,bx,by,bz)
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  br i1 %943, label %966, label %1069

; <label>:966                                     ; preds = %951
  %967 = fsub fast float -0.000000e+00, %36
  %968 = fsub fast float %967, %40
  %969 = fsub fast float %968, %44
  %970 = fsub fast float -0.000000e+00, %34
  %971 = fsub fast float %970, %38
  %972 = fsub fast float %971, %42
  %973 = fadd fast float %39, %35
  %974 = fadd fast float %973, %43
  %975 = call float @dx.op.dot3.f32(i32 55, float %969, float %972, float %974, float %969, float %972, float %974)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = call float @dx.op.unary.f32(i32 25, float %975)  ; Rsqrt(value)
  %977 = fmul fast float %976, %969
  %978 = fmul fast float %976, %972
  %979 = fmul fast float %976, %974
  %980 = fmul fast float %978, 0xBFD4D8D7C0000000
  %981 = fmul fast float %979, 0x3FD4D8D7C0000000
  %982 = fmul fast float %977, 0xBFD4D8D7C0000000
  %983 = call float @dx.op.dot4.f32(i32 56, float %41, float %42, float %43, float %44, float 0x3FD20DD760000000, float %980, float %981, float %982)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %984 = call float @dx.op.dot4.f32(i32 56, float %37, float %38, float %39, float %40, float 0x3FD20DD760000000, float %980, float %981, float %982)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %985 = call float @dx.op.dot4.f32(i32 56, float %33, float %34, float %35, float %36, float 0x3FD20DD760000000, float %980, float %981, float %982)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %986 = fmul fast float %983, 0x4003333340000000
  %987 = fmul fast float %41, 0x3FE5AA35A0000000
  %988 = fsub fast float %986, %987
  %989 = fmul fast float %984, 0x4003333340000000
  %990 = fmul fast float %37, 0x3FE5AA35A0000000
  %991 = fsub fast float %989, %990
  %992 = fmul fast float %985, 0x4003333340000000
  %993 = fmul fast float %33, 0x3FE5AA35A0000000
  %994 = fsub fast float %992, %993
  %995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %988)  ; FMax(a,b)
  %996 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %991)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %994)  ; FMax(a,b)
  %998 = fsub fast float %977, %855
  %999 = fsub fast float %978, %856
  %1000 = fsub fast float %979, %857
  %1001 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float %998, float %999, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.unary.f32(i32 25, float %1001)  ; Rsqrt(value)
  %1003 = fmul fast float %1002, %998
  %1004 = fmul fast float %1002, %999
  %1005 = fmul fast float %1002, %1000
  %1006 = call float @dx.op.dot3.f32(i32 55, float %850, float %851, float %852, float %977, float %978, float %979)  ; Dot3(ax,ay,az,bx,by,bz)
  %1007 = call float @dx.op.unary.f32(i32 6, float %1006)  ; FAbs(value)
  %1008 = call float @dx.op.dot3.f32(i32 55, float %850, float %851, float %852, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = fmul fast float %1008, %1008
  %1010 = call float @dx.op.dot3.f32(i32 55, float %858, float %859, float %860, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = call float @dx.op.unary.f32(i32 6, float %1010)  ; FAbs(value)
  %1012 = fsub fast float 1.000000e+00, %882
  %1013 = call float @dx.op.binary.f32(i32 35, float %1012, float 0x3F847AE140000000)  ; FMax(a,b)
  %1014 = fmul fast float %1013, %1013
  %1015 = fmul fast float %1014, %1014
  %1016 = fsub fast float 1.000000e+00, %1015
  %1017 = fmul fast float %965, %965
  %1018 = fmul fast float %1017, %1016
  %1019 = fadd fast float %1018, %1015
  %1020 = bitcast float %1019 to i32
  %1021 = ashr i32 %1020, 1
  %1022 = add nsw i32 %1021, 532487669
  %1023 = bitcast i32 %1022 to float
  %1024 = fadd fast float %1023, %965
  %1025 = fmul fast float %1015, %1009
  %1026 = fsub fast float 1.000000e+00, %1009
  %1027 = fadd fast float %1026, %1025
  %1028 = fmul fast float %1007, %1007
  %1029 = fmul fast float %1028, %1016
  %1030 = fadd fast float %1029, %1015
  %1031 = bitcast float %1030 to i32
  %1032 = ashr i32 %1031, 1
  %1033 = add nsw i32 %1032, 532487669
  %1034 = bitcast i32 %1033 to float
  %1035 = fadd fast float %1034, %1007
  %1036 = fmul fast float %1027, %1027
  %1037 = fmul fast float %1036, %1024
  %1038 = fmul fast float %1037, %1035
  %1039 = fdiv fast float 1.000000e+00, %1038
  %1040 = fmul fast float %1015, %1039
  %1041 = fsub fast float 1.000000e+00, %1011
  %1042 = bitcast float %1041 to i32
  %1043 = sitofp i32 %1042 to float
  %1044 = fmul fast float %1043, 5.000000e+00
  %1045 = fadd fast float %1044, 0xC1EFBF8940000000
  %1046 = fptosi float %1045 to i32
  %1047 = bitcast i32 %1046 to float
  %1048 = fsub fast float 1.000000e+00, %879
  %1049 = fsub fast float 1.000000e+00, %880
  %1050 = fsub fast float 1.000000e+00, %881
  %1051 = fmul fast float %1047, %1048
  %1052 = fmul fast float %1047, %1049
  %1053 = fmul fast float %1047, %1050
  %1054 = fadd fast float %1051, %879
  %1055 = fadd fast float %1052, %880
  %1056 = fadd fast float %1053, %881
  %1057 = fmul fast float %1040, %995
  %1058 = fmul fast float %1057, %1054
  %1059 = fmul fast float %1040, %996
  %1060 = fmul fast float %1059, %1055
  %1061 = fmul fast float %1040, %997
  %1062 = fmul fast float %1061, %1056
  %1063 = call float @dx.op.binary.f32(i32 35, float %1058, float 0.000000e+00)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 35, float %1060, float 0.000000e+00)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 35, float %1062, float 0.000000e+00)  ; FMax(a,b)
  %1066 = fadd fast float %1063, %961
  %1067 = fadd fast float %1064, %962
  %1068 = fadd fast float %1065, %963
  br label %1069

; <label>:1069                                    ; preds = %966, %951
  %1070 = phi float [ %1066, %966 ], [ %961, %951 ]
  %1071 = phi float [ %1067, %966 ], [ %962, %951 ]
  %1072 = phi float [ %1068, %966 ], [ %963, %951 ]
  %1073 = fmul fast float %965, 9.843750e-01
  %1074 = fmul fast float %882, 9.843750e-01
  %1075 = fadd fast float %1073, 7.812500e-03
  %1076 = fadd fast float %1074, 7.812500e-03
  %1077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %1075, float %1076, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 3
  %1080 = fmul fast float %1078, %879
  %1081 = fmul fast float %1078, %880
  %1082 = fmul fast float %1078, %881
  %1083 = fadd fast float %1080, %1079
  %1084 = fadd fast float %1081, %1079
  %1085 = fadd fast float %1082, %1079
  %1086 = call float @dx.op.binary.f32(i32 35, float %1084, float %1085)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1083, float %1086)  ; FMax(a,b)
  %1088 = fsub fast float 1.000000e+00, %1087
  %1089 = call float @dx.op.dot3.f32(i32 55, float %855, float %856, float %857, float %850, float %851, float %852)  ; Dot3(ax,ay,az,bx,by,bz)
  %1090 = fmul fast float %1089, 2.000000e+00
  %1091 = fmul fast float %1090, %850
  %1092 = fmul fast float %1090, %851
  %1093 = fmul fast float %1090, %852
  %1094 = fsub fast float %855, %1091
  %1095 = fsub fast float %856, %1092
  %1096 = fsub fast float %857, %1093
  br i1 %943, label %1097, label %1104

; <label>:1097                                    ; preds = %1069
  %1098 = fmul fast float %1095, 0xBFDF454380000000
  %1099 = fmul fast float %1096, 0x3FDF454380000000
  %1100 = fmul fast float %1094, 0xBFDF454380000000
  %1101 = call float @dx.op.dot4.f32(i32 56, float %41, float %42, float %43, float %44, float 0x3FD20DD760000000, float %1098, float %1099, float %1100)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1102 = call float @dx.op.dot4.f32(i32 56, float %37, float %38, float %39, float %40, float 0x3FD20DD760000000, float %1098, float %1099, float %1100)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1103 = call float @dx.op.dot4.f32(i32 56, float %33, float %34, float %35, float %36, float 0x3FD20DD760000000, float %1098, float %1099, float %1100)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1104

; <label>:1104                                    ; preds = %1097, %1069
  %1105 = phi float [ %1101, %1097 ], [ %41, %1069 ]
  %1106 = phi float [ %1102, %1097 ], [ %42, %1069 ]
  %1107 = phi float [ %1103, %1097 ], [ %43, %1069 ]
  %1108 = call float @dx.op.dot3.f32(i32 55, float %1105, float %1106, float %1107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1112 = fmul fast float %1110, %71
  %1113 = fmul fast float %1111, %72
  %1114 = fptoui float %1112 to i32
  %1115 = fptoui float %1113 to i32
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1119 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1120 = fadd fast float %64, -4.000000e+00
  %1121 = call float @dx.op.binary.f32(i32 35, float %1120, float 0.000000e+00)  ; FMax(a,b)
  %1122 = fadd fast float %1121, %1117
  %1123 = fmul fast float %1122, %1118
  %1124 = call float @dx.op.unary.f32(i32 23, float %1123)  ; Log(value)
  %1125 = fmul fast float %1124, %1119
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1128 = fmul fast float %1125, %1127
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.i32 %1130, 1
  %1132 = add i32 %1131, -1
  %1133 = uitofp i32 %1131 to float
  %1134 = fmul fast float %1133, %1129
  %1135 = fptoui float %1134 to i32
  %1136 = call i32 @dx.op.binary.i32(i32 40, i32 %1135, i32 %1132)  ; UMin(a,b)
  %1137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.i32 %1137, 2
  %1139 = extractvalue %dx.types.CBufRet.i32 %1137, 3
  %1140 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1115, i32 %1138, i32 %1114)  ; UMad(a,b,c)
  %1141 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1136, i32 %1139, i32 %1140)  ; UMad(a,b,c)
  %1142 = call float @dx.op.binary.f32(i32 35, float %64, float 0.000000e+00)  ; FMax(a,b)
  %1143 = fptoui float %1142 to i32
  %1144 = lshr i32 %1143, 5
  %1145 = call i32 @dx.op.binary.i32(i32 40, i32 %1144, i32 8191)  ; UMin(a,b)
  %1146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.i32 %1146, 2
  %1148 = add nsw i32 %1147, -1
  %1149 = call i32 @dx.op.binary.i32(i32 37, i32 %1148, i32 0)  ; IMax(a,b)
  %1150 = shl i32 %1145, 2
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = lshr i32 %1152, 16
  %1154 = and i32 %1152, 65535
  %1155 = lshr i32 %1152, 21
  %1156 = lshr i32 %1154, 5
  %1157 = call i32 @dx.op.binary.i32(i32 40, i32 %1156, i32 %1149)  ; UMin(a,b)
  %1158 = icmp ugt i32 %1155, %1157
  br i1 %1158, label %1521, label %1159

; <label>:1159                                    ; preds = %1104
  br label %1160

; <label>:1160                                    ; preds = %1513, %1159
  %1161 = phi float [ %1514, %1513 ], [ 0.000000e+00, %1159 ]
  %1162 = phi float [ %1515, %1513 ], [ 0.000000e+00, %1159 ]
  %1163 = phi float [ %1516, %1513 ], [ 0.000000e+00, %1159 ]
  %1164 = phi float [ %1517, %1513 ], [ 1.000000e+00, %1159 ]
  %1165 = phi i32 [ %1518, %1513 ], [ %1155, %1159 ]
  %1166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.i32 %1166, 2
  %1168 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1141, i32 %1167, i32 %1165)  ; UMad(a,b,c)
  %1169 = shl i32 %1168, 2
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = shl i32 %1165, 5
  %1173 = sub nsw i32 %1153, %1172
  %1174 = call i32 @dx.op.binary.i32(i32 37, i32 %1173, i32 0)  ; IMax(a,b)
  %1175 = call i32 @dx.op.binary.i32(i32 38, i32 %1174, i32 31)  ; IMin(a,b)
  %1176 = sub nsw i32 1, %1153
  %1177 = add nsw i32 %1176, %1154
  %1178 = call i32 @dx.op.binary.i32(i32 37, i32 %1177, i32 0)  ; IMax(a,b)
  %1179 = call i32 @dx.op.binary.i32(i32 38, i32 %1178, i32 32)  ; IMin(a,b)
  %1180 = and i32 %1179, 31
  %1181 = shl i32 -1, %1180
  %1182 = xor i32 %1181, -1
  %1183 = and i32 %1175, 31
  %1184 = shl i32 %1182, %1183
  %1185 = icmp eq i32 %1179, 32
  %1186 = select i1 %1185, i32 -1, i32 %1184
  %1187 = and i32 %1186, %1171
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1513, label %1189

; <label>:1189                                    ; preds = %1160
  br label %1190

; <label>:1190                                    ; preds = %1296, %1189
  %1191 = phi float [ %1297, %1296 ], [ %1161, %1189 ]
  %1192 = phi float [ %1298, %1296 ], [ %1162, %1189 ]
  %1193 = phi float [ %1299, %1296 ], [ %1163, %1189 ]
  %1194 = phi float [ %1300, %1296 ], [ %1164, %1189 ]
  %1195 = phi i32 [ %1200, %1296 ], [ %1187, %1189 ]
  %1196 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1195)  ; FirstbitLo(value)
  %1197 = add i32 %1196, %1172
  %1198 = and i32 %1196, 31
  %1199 = shl i32 1, %1198
  %1200 = xor i32 %1199, %1195
  %1201 = mul i32 %1197, 72
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = add i32 %1201, 12
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = add i32 %1201, 16
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = add i32 %1201, 28
  %1215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = add i32 %1201, 32
  %1218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = add i32 %1201, 48
  %1224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = add i32 %1201, 56
  %1228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = add i32 %1201, 64
  %1232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = mul i32 %1197, 60
  %1236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = add i32 %1235, 12
  %1241 = add i32 %1235, 48
  %1242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = and i32 %1208, 32767
  %1247 = bitcast float %1203 to i32
  %1248 = icmp eq i32 %1247, -1
  %1249 = bitcast float %1204 to i32
  %1250 = and i32 %1208, 32768
  %1251 = icmp ne i32 %1250, 0
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1256 = fsub fast float %1237, %1253
  %1257 = fsub fast float %1238, %1254
  %1258 = fsub fast float %1239, %1255
  %1259 = fsub fast float %106, %1256
  %1260 = fsub fast float %107, %1257
  %1261 = fsub fast float %108, %1258
  %1262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1259, float %1260, float %1261, float %1263, float %1264, float %1265)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = add i32 %1235, 24
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.ResRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.ResRet.f32 %1268, 2
  %1272 = call float @dx.op.dot3.f32(i32 55, float %1259, float %1260, float %1261, float %1269, float %1270, float %1271)  ; Dot3(ax,ay,az,bx,by,bz)
  %1273 = add i32 %1235, 36
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = call float @dx.op.dot3.f32(i32 55, float %1259, float %1260, float %1261, float %1275, float %1276, float %1277)  ; Dot3(ax,ay,az,bx,by,bz)
  %1279 = call float @dx.op.unary.f32(i32 6, float %1266)  ; FAbs(value)
  %1280 = call float @dx.op.unary.f32(i32 6, float %1272)  ; FAbs(value)
  %1281 = call float @dx.op.unary.f32(i32 6, float %1278)  ; FAbs(value)
  %1282 = fsub fast float %1243, %1279
  %1283 = fsub fast float %1244, %1280
  %1284 = fsub fast float %1245, %1281
  %1285 = fmul fast float %1282, %1211
  %1286 = fmul fast float %1283, %1212
  %1287 = fmul fast float %1284, %1213
  %1288 = call float @dx.op.binary.f32(i32 36, float %1286, float %1287)  ; FMin(a,b)
  %1289 = call float @dx.op.binary.f32(i32 36, float %1285, float %1288)  ; FMin(a,b)
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = call float @dx.op.binary.f32(i32 36, float %1194, float %1290)  ; FMin(a,b)
  %1292 = uitofp i1 %1251 to float
  %1293 = fsub fast float 1.000000e+00, %1292
  %1294 = fmul fast float %1291, %1293
  %1295 = fcmp fast ogt float %1294, 0.000000e+00
  br i1 %1295, label %1302, label %1296

; <label>:1296                                    ; preds = %1444, %1190
  %1297 = phi float [ %1508, %1444 ], [ %1191, %1190 ]
  %1298 = phi float [ %1509, %1444 ], [ %1192, %1190 ]
  %1299 = phi float [ %1510, %1444 ], [ %1193, %1190 ]
  %1300 = phi float [ %1511, %1444 ], [ %1194, %1190 ]
  %1301 = icmp eq i32 %1195, %1199
  br i1 %1301, label %1512, label %1190

; <label>:1302                                    ; preds = %1190
  br i1 %1248, label %1360, label %1303

; <label>:1303                                    ; preds = %1302
  %1304 = fsub fast float -0.000000e+00, %1263
  %1305 = fsub fast float -0.000000e+00, %1264
  %1306 = fsub fast float -0.000000e+00, %1265
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1095, float %1096, float %1304, float %1305, float %1306)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = fsub fast float -0.000000e+00, %1307
  %1309 = call float @dx.op.dot3.f32(i32 55, float %1259, float %1260, float %1261, float %1304, float %1305, float %1306)  ; Dot3(ax,ay,az,bx,by,bz)
  %1310 = fadd fast float %1309, %1226
  %1311 = fadd fast float %1225, %1309
  %1312 = fsub fast float -0.000000e+00, %1311
  %1313 = fcmp ogt float %1307, -0.000000e+00
  %1314 = select i1 %1313, float %1312, float %1310
  %1315 = call float @dx.op.unary.f32(i32 6, float %1308)  ; FAbs(value)
  %1316 = fdiv fast float 1.000000e+00, %1315
  %1317 = fmul fast float %1314, %1316
  %1318 = call float @dx.op.binary.f32(i32 35, float %1317, float 0.000000e+00)  ; FMax(a,b)
  %1319 = fsub fast float -0.000000e+00, %1269
  %1320 = fsub fast float -0.000000e+00, %1270
  %1321 = fsub fast float -0.000000e+00, %1271
  %1322 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1095, float %1096, float %1319, float %1320, float %1321)  ; Dot3(ax,ay,az,bx,by,bz)
  %1323 = fsub fast float -0.000000e+00, %1322
  %1324 = call float @dx.op.dot3.f32(i32 55, float %1259, float %1260, float %1261, float %1319, float %1320, float %1321)  ; Dot3(ax,ay,az,bx,by,bz)
  %1325 = fadd fast float %1324, %1230
  %1326 = fadd fast float %1229, %1324
  %1327 = fsub fast float -0.000000e+00, %1326
  %1328 = fcmp ogt float %1322, -0.000000e+00
  %1329 = select i1 %1328, float %1327, float %1325
  %1330 = call float @dx.op.unary.f32(i32 6, float %1323)  ; FAbs(value)
  %1331 = fdiv fast float 1.000000e+00, %1330
  %1332 = fmul fast float %1329, %1331
  %1333 = call float @dx.op.binary.f32(i32 35, float %1332, float 0.000000e+00)  ; FMax(a,b)
  %1334 = fsub fast float -0.000000e+00, %1275
  %1335 = fsub fast float -0.000000e+00, %1276
  %1336 = fsub fast float -0.000000e+00, %1277
  %1337 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1095, float %1096, float %1334, float %1335, float %1336)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = fsub fast float -0.000000e+00, %1337
  %1339 = call float @dx.op.dot3.f32(i32 55, float %1259, float %1260, float %1261, float %1334, float %1335, float %1336)  ; Dot3(ax,ay,az,bx,by,bz)
  %1340 = fadd fast float %1339, %1234
  %1341 = fadd fast float %1233, %1339
  %1342 = fsub fast float -0.000000e+00, %1341
  %1343 = fcmp ogt float %1337, -0.000000e+00
  %1344 = select i1 %1343, float %1342, float %1340
  %1345 = call float @dx.op.unary.f32(i32 6, float %1338)  ; FAbs(value)
  %1346 = fdiv fast float 1.000000e+00, %1345
  %1347 = fmul fast float %1344, %1346
  %1348 = call float @dx.op.binary.f32(i32 35, float %1347, float 0.000000e+00)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 36, float %1333, float %1348)  ; FMin(a,b)
  %1350 = call float @dx.op.binary.f32(i32 36, float %1318, float %1349)  ; FMin(a,b)
  %1351 = fmul fast float %1350, %1094
  %1352 = fmul fast float %1350, %1095
  %1353 = fmul fast float %1350, %1096
  %1354 = fadd fast float %1351, %106
  %1355 = fadd fast float %1352, %107
  %1356 = fadd fast float %1353, %108
  %1357 = fsub fast float %1354, %1203
  %1358 = fsub fast float %1355, %1204
  %1359 = fsub fast float %1356, %1205
  br label %1367

; <label>:1360                                    ; preds = %1302
  %1361 = fmul fast float %1094, 8.096000e+03
  %1362 = fmul fast float %1095, 8.096000e+03
  %1363 = fmul fast float %1096, 8.096000e+03
  %1364 = fadd fast float %1361, %106
  %1365 = fadd fast float %1362, %107
  %1366 = fadd fast float %1363, %108
  br label %1367

; <label>:1367                                    ; preds = %1360, %1303
  %1368 = phi float [ %1094, %1360 ], [ %1357, %1303 ]
  %1369 = phi float [ %1095, %1360 ], [ %1358, %1303 ]
  %1370 = phi float [ %1096, %1360 ], [ %1359, %1303 ]
  %1371 = phi float [ %1364, %1360 ], [ %1354, %1303 ]
  %1372 = phi float [ %1365, %1360 ], [ %1355, %1303 ]
  %1373 = phi float [ %1366, %1360 ], [ %1356, %1303 ]
  %1374 = fcmp fast olt float %1222, 1.000000e+00
  br i1 %1374, label %1375, label %1406, !dx.controlflow.hints !78

; <label>:1375                                    ; preds = %1367
  %1376 = fmul fast float %1370, %1220
  %1377 = fmul fast float %1369, %1221
  %1378 = fsub fast float %1376, %1377
  %1379 = fmul fast float %1368, %1221
  %1380 = fmul fast float %1370, %1219
  %1381 = fsub fast float %1379, %1380
  %1382 = fmul fast float %1369, %1219
  %1383 = fmul fast float %1368, %1220
  %1384 = fsub fast float %1382, %1383
  %1385 = fmul fast float %1378, 2.000000e+00
  %1386 = fmul fast float %1381, 2.000000e+00
  %1387 = fmul fast float %1384, 2.000000e+00
  %1388 = fmul fast float %1385, %1222
  %1389 = fmul fast float %1386, %1222
  %1390 = fmul fast float %1387, %1222
  %1391 = fmul fast float %1387, %1220
  %1392 = fmul fast float %1386, %1221
  %1393 = fmul fast float %1385, %1221
  %1394 = fmul fast float %1387, %1219
  %1395 = fmul fast float %1386, %1219
  %1396 = fmul fast float %1385, %1220
  %1397 = fadd fast float %1391, %1368
  %1398 = fadd fast float %1397, %1388
  %1399 = fsub fast float %1398, %1392
  %1400 = fsub fast float %1369, %1394
  %1401 = fadd fast float %1400, %1389
  %1402 = fadd fast float %1401, %1393
  %1403 = fadd fast float %1390, %1370
  %1404 = fsub fast float %1403, %1396
  %1405 = fadd fast float %1404, %1395
  br label %1406

; <label>:1406                                    ; preds = %1375, %1367
  %1407 = phi float [ %1399, %1375 ], [ %1368, %1367 ]
  %1408 = phi float [ %1402, %1375 ], [ %1369, %1367 ]
  %1409 = phi float [ %1405, %1375 ], [ %1370, %1367 ]
  br i1 %1248, label %1441, label %1410

; <label>:1410                                    ; preds = %1406
  %1411 = fmul fast float %882, 0x400187C840000000
  %1412 = fadd fast float %1411, 0xC00EFC2120000000
  %1413 = fmul fast float %1412, %882
  %1414 = fadd fast float %1413, 0x3FE5D16340000000
  %1415 = fmul fast float %1414, %882
  %1416 = fadd fast float %1415, 1.000000e+00
  %1417 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1418 = fsub fast float %1371, %106
  %1419 = fsub fast float %1372, %107
  %1420 = fsub fast float %1373, %108
  %1421 = fsub fast float %1371, %1203
  %1422 = fsub fast float %1372, %1204
  %1423 = fsub fast float %1373, %1205
  %1424 = call float @dx.op.dot3.f32(i32 55, float %1418, float %1419, float %1420, float %1418, float %1419, float %1420)  ; Dot3(ax,ay,az,bx,by,bz)
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1421, float %1422, float %1423, float %1421, float %1422, float %1423)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = fadd fast float %1425, 0x3EE4F8B580000000
  %1427 = fdiv fast float %1424, %1426
  %1428 = bitcast float %1427 to i32
  %1429 = ashr i32 %1428, 1
  %1430 = add nsw i32 %1429, 532487669
  %1431 = bitcast i32 %1430 to float
  %1432 = fmul fast float %1431, %1417
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = fmul fast float %1433, 0x4009981AE0000000
  %1435 = fsub fast float 0x40111BBD80000000, %1434
  %1436 = fmul fast float %1435, %1433
  %1437 = fadd fast float %1436, 0xC0009F6020000000
  %1438 = fmul fast float %1437, %1433
  %1439 = fadd fast float %1438, 1.000000e+00
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  br label %1444

; <label>:1441                                    ; preds = %1406
  %1442 = icmp ne i32 %1249, -1
  %1443 = zext i1 %1442 to i32
  br label %1444

; <label>:1444                                    ; preds = %1441, %1410
  %1445 = phi float [ %882, %1441 ], [ %1440, %1410 ]
  %1446 = phi i32 [ %1443, %1441 ], [ 0, %1410 ]
  %1447 = fmul float %1445, 5.000000e+00
  %1448 = fsub float 5.000000e+00, %1447
  %1449 = icmp ne i32 %1446, 0
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 3
  %1452 = fadd fast float %1451, %1448
  %1453 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1452)  ; FMax(a,b)
  %1454 = call float @dx.op.unary.f32(i32 6, float %1407)  ; FAbs(value)
  %1455 = call float @dx.op.unary.f32(i32 6, float %1408)  ; FAbs(value)
  %1456 = fadd fast float %1455, %1454
  %1457 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1458 = fadd fast float %1456, %1457
  %1459 = fcmp fast oeq float %1458, 0.000000e+00
  %1460 = fdiv fast float 1.000000e+00, %1458
  %1461 = select i1 %1459, float 1.000000e+00, float %1460
  %1462 = fmul fast float %1461, %1407
  %1463 = fmul fast float %1461, %1408
  %1464 = call float @dx.op.unary.f32(i32 6, float %1463)  ; FAbs(value)
  %1465 = call float @dx.op.unary.f32(i32 6, float %1462)  ; FAbs(value)
  %1466 = fsub fast float 1.000000e+00, %1464
  %1467 = fsub fast float 1.000000e+00, %1465
  %1468 = fcmp fast oge float %1462, 0.000000e+00
  %1469 = fcmp fast oge float %1463, 0.000000e+00
  %1470 = select i1 %1468, float 1.000000e+00, float -1.000000e+00
  %1471 = select i1 %1469, float 1.000000e+00, float -1.000000e+00
  %1472 = fcmp fast ole float %1409, 0.000000e+00
  %1473 = fmul fast float %1470, %1466
  %1474 = fmul fast float %1471, %1467
  %1475 = select i1 %1472, float %1473, float %1462
  %1476 = select i1 %1472, float %1474, float %1463
  %1477 = fmul fast float %1475, 5.000000e-01
  %1478 = fmul fast float %1476, 5.000000e-01
  %1479 = fadd fast float %1477, 5.000000e-01
  %1480 = fadd fast float %1478, 5.000000e-01
  %1481 = uitofp i32 %1246 to float
  %1482 = call float @dx.op.binary.f32(i32 36, float %1453, float 3.000000e+00)  ; FMin(a,b)
  %1483 = fadd fast float %1482, 2.000000e+00
  %1484 = call float @dx.op.unary.f32(i32 21, float %1483)  ; Exp(value)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1450, 1
  %1486 = fmul fast float %1485, %1484
  %1487 = fmul fast float %1486, 2.000000e+00
  %1488 = fsub fast float 1.000000e+00, %1487
  %1489 = fmul fast float %1479, %1488
  %1490 = fmul fast float %1480, %1488
  %1491 = fadd fast float %1489, %1486
  %1492 = fadd fast float %1490, %1486
  %1493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %23, float %1491, float %1492, float %1481, float undef, i32 0, i32 0, i32 undef, float %1453)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1494 = extractvalue %dx.types.ResRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.ResRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.ResRet.f32 %1493, 2
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 3
  %1499 = fmul fast float %1498, %1216
  %1500 = call float @dx.op.binary.f32(i32 36, float %1108, float %1499)  ; FMin(a,b)
  %1501 = select i1 %1449, float %1500, float %1499
  %1502 = fmul fast float %1494, %1294
  %1503 = fmul fast float %1502, %1501
  %1504 = fmul fast float %1495, %1294
  %1505 = fmul fast float %1504, %1501
  %1506 = fmul fast float %1496, %1294
  %1507 = fmul fast float %1506, %1501
  %1508 = fadd fast float %1503, %1191
  %1509 = fadd fast float %1505, %1192
  %1510 = fadd fast float %1507, %1193
  %1511 = fsub fast float %1194, %1294
  br label %1296

; <label>:1512                                    ; preds = %1296
  br label %1513

; <label>:1513                                    ; preds = %1512, %1160
  %1514 = phi float [ %1161, %1160 ], [ %1297, %1512 ]
  %1515 = phi float [ %1162, %1160 ], [ %1298, %1512 ]
  %1516 = phi float [ %1163, %1160 ], [ %1299, %1512 ]
  %1517 = phi float [ %1164, %1160 ], [ %1300, %1512 ]
  %1518 = add i32 %1165, 1
  %1519 = icmp ugt i32 %1518, %1157
  br i1 %1519, label %1520, label %1160, !llvm.loop !79

; <label>:1520                                    ; preds = %1513
  br label %1521

; <label>:1521                                    ; preds = %1520, %1104
  %1522 = phi float [ 0.000000e+00, %1104 ], [ %1514, %1520 ]
  %1523 = phi float [ 0.000000e+00, %1104 ], [ %1515, %1520 ]
  %1524 = phi float [ 0.000000e+00, %1104 ], [ %1516, %1520 ]
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1522, float %1523, float %1524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = select i1 %144, float 0.000000e+00, float %1522
  %1527 = select i1 %144, float %1525, float %1523
  %1528 = select i1 %144, float 0.000000e+00, float %1524
  %1529 = fmul fast float %1526, %1083
  %1530 = fmul fast float %1527, %1084
  %1531 = fmul fast float %1528, %1085
  %1532 = call float @dx.op.binary.f32(i32 35, float %1529, float 0.000000e+00)  ; FMax(a,b)
  %1533 = call float @dx.op.binary.f32(i32 35, float %1530, float 0.000000e+00)  ; FMax(a,b)
  %1534 = call float @dx.op.binary.f32(i32 35, float %1531, float 0.000000e+00)  ; FMax(a,b)
  %1535 = fadd fast float %1532, %1070
  %1536 = fadd fast float %1533, %1071
  %1537 = fadd fast float %1534, %1072
  %1538 = fmul fast float %1535, %684
  %1539 = fmul fast float %1536, %684
  %1540 = fmul fast float %1537, %684
  %1541 = fadd fast float %826, -1.000000e+00
  %1542 = fadd fast float %827, -1.000000e+00
  %1543 = fadd fast float %828, -1.000000e+00
  %1544 = fmul fast float %1541, %684
  %1545 = fmul fast float %1542, %684
  %1546 = fmul fast float %1543, %684
  %1547 = fadd fast float %1544, 1.000000e+00
  %1548 = fadd fast float %1545, 1.000000e+00
  %1549 = fadd fast float %1546, 1.000000e+00
  %1550 = call float @dx.op.dot3.f32(i32 55, float %1547, float %1548, float %1549, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1551 = fsub fast float 1.000000e+00, %1550
  %1552 = fmul fast float %916, %904
  %1553 = fsub fast float -0.000000e+00, %904
  %1554 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 3
  %1557 = fmul fast float %1556, %1554
  %1558 = fadd fast float %1557, %1552
  %1559 = and i32 %164, 1048576
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1645, label %1561, !dx.controlflow.hints !81

; <label>:1561                                    ; preds = %1521
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 2
  %1564 = extractvalue %dx.types.CBufRet.f32 %1562, 3
  %1565 = fmul fast float %1563, %71
  %1566 = fmul fast float %1564, %72
  %1567 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1568 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1569 = select i1 %940, i32 2, i32 0
  %1570 = or i32 %1569, 1
  %1571 = uitofp i32 %1570 to float
  %1572 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %1567, float %1568, float %1571, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = extractvalue %dx.types.ResRet.f32 %1572, 3
  %1577 = add nuw nsw i32 %1569, 2
  %1578 = uitofp i32 %1577 to float
  %1579 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %1567, float %1568, float %1578, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = extractvalue %dx.types.ResRet.f32 %1579, 3
  %1584 = call float @dx.op.binary.f32(i32 35, float %1574, float %1575)  ; FMax(a,b)
  %1585 = call float @dx.op.binary.f32(i32 35, float %1573, float %1584)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float %1585, float %1576)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 36, float %1581, float %1582)  ; FMin(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1580, float %1587)  ; FMin(a,b)
  %1589 = call float @dx.op.binary.f32(i32 36, float %1588, float %1583)  ; FMin(a,b)
  %1590 = fmul fast float %1586, 2.550000e+02
  %1591 = fadd fast float %1590, 0x3F70101020000000
  %1592 = fptoui float %1591 to i32
  %1593 = fmul fast float %1589, 2.550000e+02
  %1594 = fadd fast float %1593, 0x3F70101020000000
  %1595 = fptoui float %1594 to i32
  %1596 = icmp ult i32 %1592, %1595
  br i1 %1596, label %1597, label %1638

; <label>:1597                                    ; preds = %1561
  %1598 = fcmp fast ogt float %63, 9.843750e-01
  %1599 = select i1 %1598, float -4.000000e+00, float %1120
  %1600 = call float @dx.op.binary.f32(i32 35, float %1599, float 0.000000e+00)  ; FMax(a,b)
  %1601 = fadd fast float %1117, %1600
  %1602 = fmul fast float %1601, %1118
  %1603 = call float @dx.op.unary.f32(i32 23, float %1602)  ; Log(value)
  %1604 = fmul fast float %1119, %1603
  %1605 = fmul fast float %1604, %1127
  %1606 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1607 = uitofp i32 %1592 to float
  %1608 = uitofp i32 %1595 to float
  %1609 = fadd fast float %1607, 5.000000e-01
  %1610 = fadd fast float %1608, 5.000000e-01
  %1611 = fmul fast float %1127, %1609
  %1612 = fmul fast float %1127, %1610
  %1613 = fadd fast float %1611, 0x3F0FFB4800000000
  %1614 = fadd fast float %1612, 0xBF0FFB4800000000
  %1615 = call float @dx.op.binary.f32(i32 35, float %1606, float %1613)  ; FMax(a,b)
  %1616 = call float @dx.op.binary.f32(i32 36, float %1615, float %1614)  ; FMin(a,b)
  %1617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1618 = extractvalue %dx.types.CBufRet.f32 %1617, 1
  %1619 = extractvalue %dx.types.CBufRet.f32 %1617, 2
  %1620 = extractvalue %dx.types.CBufRet.f32 %1617, 0
  %1621 = select i1 %940, float %1620, float 0.000000e+00
  %1622 = fmul fast float %1618, %1616
  %1623 = fadd fast float %1621, %1622
  %1624 = fadd fast float %1621, %1619
  %1625 = fsub fast float %1618, %1619
  %1626 = fadd fast float %1625, %1621
  %1627 = call float @dx.op.binary.f32(i32 35, float %1623, float %1624)  ; FMax(a,b)
  %1628 = call float @dx.op.binary.f32(i32 36, float %1627, float %1626)  ; FMin(a,b)
  %1629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %23, float %1567, float %1568, float %1628, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1635 = fmul fast float %1634, %1630
  %1636 = fmul fast float %1634, %1631
  %1637 = fmul fast float %1634, %1632
  br label %1638

; <label>:1638                                    ; preds = %1597, %1561
  %1639 = phi float [ %1635, %1597 ], [ 1.000000e+00, %1561 ]
  %1640 = phi float [ %1636, %1597 ], [ 1.000000e+00, %1561 ]
  %1641 = phi float [ %1637, %1597 ], [ 1.000000e+00, %1561 ]
  %1642 = fmul fast float %1639, %1538
  %1643 = fmul fast float %1640, %1539
  %1644 = fmul fast float %1641, %1540
  br label %1645

; <label>:1645                                    ; preds = %1638, %1521
  %1646 = phi float [ %1642, %1638 ], [ %1538, %1521 ]
  %1647 = phi float [ %1643, %1638 ], [ %1539, %1521 ]
  %1648 = phi float [ %1644, %1638 ], [ %1540, %1521 ]
  %1649 = and i32 %164, 2097152
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1655, label %1651, !dx.controlflow.hints !82

; <label>:1651                                    ; preds = %1645
  %1652 = add i32 %161, 192
  %1653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  br label %1658

; <label>:1655                                    ; preds = %1645
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 3
  br label %1658

; <label>:1658                                    ; preds = %1655, %1651
  %1659 = phi float [ %1654, %1651 ], [ %1657, %1655 ]
  %1660 = fmul fast float %870, %684
  %1661 = fmul fast float %1660, %952
  %1662 = fmul fast float %1661, %1088
  %1663 = fmul fast float %871, %684
  %1664 = fmul fast float %1663, %953
  %1665 = fmul fast float %1664, %1088
  %1666 = fmul fast float %872, %684
  %1667 = fmul fast float %1666, %954
  %1668 = fmul fast float %1667, %1088
  br i1 %935, label %1669, label %1802

; <label>:1669                                    ; preds = %1658
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 2
  %1672 = extractvalue %dx.types.CBufRet.f32 %1670, 3
  %1673 = fmul fast float %1671, %71
  %1674 = fmul fast float %1672, %72
  %1675 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1676 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1677 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %1675, float %1676, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.ResRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.ResRet.f32 %1677, 2
  %1681 = extractvalue %dx.types.ResRet.f32 %1677, 3
  %1682 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %1675, float %1676, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1683 = extractvalue %dx.types.ResRet.f32 %1682, 0
  %1684 = extractvalue %dx.types.ResRet.f32 %1682, 1
  %1685 = extractvalue %dx.types.ResRet.f32 %1682, 2
  %1686 = extractvalue %dx.types.ResRet.f32 %1682, 3
  %1687 = call float @dx.op.binary.f32(i32 35, float %1679, float %1680)  ; FMax(a,b)
  %1688 = call float @dx.op.binary.f32(i32 35, float %1678, float %1687)  ; FMax(a,b)
  %1689 = call float @dx.op.binary.f32(i32 35, float %1688, float %1681)  ; FMax(a,b)
  %1690 = call float @dx.op.binary.f32(i32 36, float %1684, float %1685)  ; FMin(a,b)
  %1691 = call float @dx.op.binary.f32(i32 36, float %1683, float %1690)  ; FMin(a,b)
  %1692 = call float @dx.op.binary.f32(i32 36, float %1691, float %1686)  ; FMin(a,b)
  %1693 = fmul fast float %1689, 2.550000e+02
  %1694 = fadd fast float %1693, 0x3F70101020000000
  %1695 = fptoui float %1694 to i32
  %1696 = fmul fast float %1692, 2.550000e+02
  %1697 = fadd fast float %1696, 0x3F70101020000000
  %1698 = fptoui float %1697 to i32
  %1699 = icmp ult i32 %1695, %1698
  br i1 %1699, label %1700, label %1744

; <label>:1700                                    ; preds = %1669
  %1701 = fcmp fast ogt float %63, 9.843750e-01
  %1702 = select i1 %1701, float -4.000000e+00, float %1120
  %1703 = call float @dx.op.binary.f32(i32 35, float %1702, float 0.000000e+00)  ; FMax(a,b)
  %1704 = fadd fast float %1117, %1703
  %1705 = fmul fast float %1704, %1118
  %1706 = call float @dx.op.unary.f32(i32 23, float %1705)  ; Log(value)
  %1707 = fmul fast float %1119, %1706
  %1708 = fmul fast float %1707, %1127
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = uitofp i32 %1695 to float
  %1711 = uitofp i32 %1698 to float
  %1712 = fadd fast float %1710, 5.000000e-01
  %1713 = fadd fast float %1711, 5.000000e-01
  %1714 = fmul fast float %1127, %1712
  %1715 = fmul fast float %1127, %1713
  %1716 = fadd fast float %1714, 0x3F0FFB4800000000
  %1717 = fadd fast float %1715, 0xBF0FFB4800000000
  %1718 = call float @dx.op.binary.f32(i32 35, float %1709, float %1716)  ; FMax(a,b)
  %1719 = call float @dx.op.binary.f32(i32 36, float %1718, float %1717)  ; FMin(a,b)
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 1
  %1722 = extractvalue %dx.types.CBufRet.f32 %1720, 2
  %1723 = extractvalue %dx.types.CBufRet.f32 %1720, 0
  %1724 = fmul fast float %1721, %1719
  %1725 = fadd fast float %1723, %1724
  %1726 = fadd fast float %1723, %1722
  %1727 = fsub fast float %1721, %1722
  %1728 = fadd fast float %1727, %1723
  %1729 = call float @dx.op.binary.f32(i32 35, float %1725, float %1726)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 36, float %1729, float %1728)  ; FMin(a,b)
  %1731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %1675, float %1676, float %1730, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1732 = extractvalue %dx.types.ResRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.ResRet.f32 %1731, 1
  %1734 = extractvalue %dx.types.ResRet.f32 %1731, 2
  %1735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %1675, float %1676, float %1730, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.ResRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.ResRet.f32 %1735, 2
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1741 = fmul fast float %1740, %1736
  %1742 = fmul fast float %1740, %1737
  %1743 = fmul fast float %1740, %1738
  br label %1744

; <label>:1744                                    ; preds = %1700, %1669
  %1745 = phi float [ %1732, %1700 ], [ 1.000000e+00, %1669 ]
  %1746 = phi float [ %1733, %1700 ], [ 1.000000e+00, %1669 ]
  %1747 = phi float [ %1734, %1700 ], [ 1.000000e+00, %1669 ]
  %1748 = phi float [ %1741, %1700 ], [ 0.000000e+00, %1669 ]
  %1749 = phi float [ %1742, %1700 ], [ 0.000000e+00, %1669 ]
  %1750 = phi float [ %1743, %1700 ], [ 0.000000e+00, %1669 ]
  %1751 = fmul fast float %1748, %1551
  %1752 = fmul fast float %1749, %1551
  %1753 = fmul fast float %1750, %1551
  %1754 = call float @dx.op.dot3.f32(i32 55, float %1745, float %1746, float %1747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1755 = call float @dx.op.dot3.f32(i32 55, float %1751, float %1752, float %1753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1756 = select i1 %144, float %1754, float %1745
  %1757 = select i1 %144, float %1754, float %1746
  %1758 = select i1 %144, float 1.000000e+00, float %1747
  %1759 = select i1 %144, float %1755, float %1751
  %1760 = select i1 %144, float 0.000000e+00, float %1752
  %1761 = select i1 %144, float 0.000000e+00, float %1753
  %1762 = fmul fast float %1756, %1662
  %1763 = fmul fast float %1757, %1665
  %1764 = fmul fast float %1758, %1668
  %1765 = fadd fast float %1762, %1759
  %1766 = fadd fast float %1763, %1760
  %1767 = fadd fast float %1761, %1764
  %1768 = fmul fast float %1756, %1646
  %1769 = fmul fast float %1757, %1647
  %1770 = fmul fast float %1758, %1648
  %1771 = fmul fast float %76, %1671
  %1772 = fmul fast float %78, %1672
  %1773 = fsub fast float 1.000000e+00, %1771
  %1774 = fsub fast float 1.000000e+00, %1772
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1779 = fmul fast float %1773, %1776
  %1780 = fmul fast float %1773, %1777
  %1781 = fmul fast float %1773, %1778
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1786 = fmul fast float %1774, %1783
  %1787 = fmul fast float %1774, %1784
  %1788 = fmul fast float %1774, %1785
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1789, 2
  %1793 = fadd fast float %1786, %1790
  %1794 = fadd fast float %1793, %1779
  %1795 = fadd fast float %1787, %1791
  %1796 = fadd fast float %1795, %1780
  %1797 = fadd fast float %1788, %1792
  %1798 = fadd fast float %1797, %1781
  %1799 = fmul fast float %1794, %932
  %1800 = fmul fast float %1796, %932
  %1801 = fmul fast float %1798, %932
  br label %1802

; <label>:1802                                    ; preds = %1744, %1658
  %1803 = phi float [ %1799, %1744 ], [ %106, %1658 ]
  %1804 = phi float [ %1800, %1744 ], [ %107, %1658 ]
  %1805 = phi float [ %1801, %1744 ], [ %108, %1658 ]
  %1806 = phi float [ %932, %1744 ], [ %64, %1658 ]
  %1807 = phi float [ %1765, %1744 ], [ %1662, %1658 ]
  %1808 = phi float [ %1766, %1744 ], [ %1665, %1658 ]
  %1809 = phi float [ %1767, %1744 ], [ %1668, %1658 ]
  %1810 = phi float [ %1768, %1744 ], [ %1646, %1658 ]
  %1811 = phi float [ %1769, %1744 ], [ %1647, %1658 ]
  %1812 = phi float [ %1770, %1744 ], [ %1648, %1658 ]
  %1813 = phi float [ %1745, %1744 ], [ 1.000000e+00, %1658 ]
  br i1 %940, label %2969, label %1814

; <label>:1814                                    ; preds = %1802
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1819 = extractvalue %dx.types.CBufRet.f32 %1815, 3
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 0
  %1822 = extractvalue %dx.types.CBufRet.f32 %1820, 1
  %1823 = extractvalue %dx.types.CBufRet.f32 %1820, 2
  %1824 = extractvalue %dx.types.CBufRet.f32 %1820, 3
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = extractvalue %dx.types.CBufRet.f32 %1825, 1
  %1828 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1829 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1833 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1834 = extractvalue %dx.types.CBufRet.f32 %1830, 3
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 3
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 3
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1840 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1841 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1842 = fcmp fast olt float %1841, -5.000000e-01
  %1843 = call float @dx.op.dot3.f32(i32 55, float %1803, float %1804, float %1805, float %1803, float %1804, float %1805)  ; Dot3(ax,ay,az,bx,by,bz)
  %1844 = call float @dx.op.unary.f32(i32 25, float %1843)  ; Rsqrt(value)
  %1845 = fmul fast float %1844, %1843
  %1846 = fmul fast float %1844, %1803
  %1847 = fmul fast float %1844, %1804
  %1848 = fmul fast float %1844, %1805
  %1849 = fadd fast float %1845, %1819
  %1850 = call float @dx.op.dot3.f32(i32 55, float %1846, float %1847, float %1848, float %1816, float %1817, float %1818)  ; Dot3(ax,ay,az,bx,by,bz)
  %1851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.i32 %1851, 1
  %1853 = and i32 %1852, 1
  %1854 = icmp ne i32 %1853, 0
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 2
  %1857 = fcmp fast ogt float %1856, 0.000000e+00
  %1858 = and i1 %1854, %1857
  br i1 %1858, label %1859, label %2265, !dx.controlflow.hints !83

; <label>:1859                                    ; preds = %1814
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 3
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 2
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1866 = fsub fast float %1863, %1865
  %1867 = and i32 %1852, 2
  %1868 = extractvalue %dx.types.CBufRet.i32 %1851, 0
  %1869 = call i32 @dx.op.binary.i32(i32 40, i32 %1868, i32 3)  ; UMin(a,b)
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1875 = fsub fast float %1871, %1873
  %1876 = fsub fast float %1872, %1874
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = fcmp fast ogt float %1878, 0.000000e+00
  %1880 = fsub fast float -0.000000e+00, %1875
  %1881 = fsub fast float -0.000000e+00, %1876
  %1882 = call float @dx.op.dot2.f32(i32 54, float %1846, float %1847, float %1846, float %1847)  ; Dot2(ax,ay,bx,by)
  %1883 = call float @dx.op.dot2.f32(i32 54, float %1846, float %1847, float %1880, float %1881)  ; Dot2(ax,ay,bx,by)
  %1884 = fmul fast float %1883, 2.000000e+00
  %1885 = call float @dx.op.dot2.f32(i32 54, float %1880, float %1881, float %1880, float %1881)  ; Dot2(ax,ay,bx,by)
  %1886 = fmul fast float %1878, %1878
  %1887 = fsub fast float %1885, %1886
  %1888 = fmul fast float %1884, %1884
  %1889 = fmul fast float %1882, 4.000000e+00
  %1890 = fmul fast float %1889, %1887
  %1891 = fsub fast float %1888, %1890
  %1892 = fcmp fast ogt float %1891, 0.000000e+00
  br i1 %1892, label %1893, label %1908

; <label>:1893                                    ; preds = %1859
  %1894 = fcmp fast ogt float %1884, 0.000000e+00
  %1895 = call float @dx.op.unary.f32(i32 24, float %1891)  ; Sqrt(value)
  %1896 = fsub fast float -0.000000e+00, %1895
  %1897 = select i1 %1894, float %1895, float %1896
  %1898 = fadd fast float %1897, %1884
  %1899 = fmul float %1898, -5.000000e-01
  %1900 = fdiv fast float %1899, %1882
  %1901 = call float @dx.op.binary.f32(i32 35, float %1900, float 0.000000e+00)  ; FMax(a,b)
  %1902 = call float @dx.op.binary.f32(i32 36, float %1845, float %1901)  ; FMin(a,b)
  %1903 = fdiv fast float %1887, %1899
  %1904 = call float @dx.op.binary.f32(i32 35, float %1903, float 0.000000e+00)  ; FMax(a,b)
  %1905 = call float @dx.op.binary.f32(i32 36, float %1845, float %1904)  ; FMin(a,b)
  %1906 = call float @dx.op.binary.f32(i32 36, float %1902, float %1905)  ; FMin(a,b)
  %1907 = call float @dx.op.binary.f32(i32 35, float %1902, float %1905)  ; FMax(a,b)
  br label %1908

; <label>:1908                                    ; preds = %1893, %1859
  %1909 = phi float [ %1907, %1893 ], [ -1.000000e+00, %1859 ]
  %1910 = phi float [ %1906, %1893 ], [ -1.000000e+00, %1859 ]
  %1911 = phi i1 [ true, %1893 ], [ false, %1859 ]
  %1912 = and i1 %1879, %1911
  br i1 %1912, label %1913, label %1915

; <label>:1913                                    ; preds = %1908
  %1914 = fcmp fast oeq float %1910, %1909
  br i1 %1914, label %2218, label %1916

; <label>:1915                                    ; preds = %1908
  br i1 %1879, label %2218, label %1916

; <label>:1916                                    ; preds = %1915, %1913
  %1917 = phi float [ %1845, %1915 ], [ %1909, %1913 ]
  %1918 = phi float [ 0.000000e+00, %1915 ], [ %1910, %1913 ]
  %1919 = icmp ne i32 %1867, 0
  %1920 = fmul fast float %1917, %1848
  %1921 = fadd fast float %1920, %1861
  %1922 = fmul fast float %1921, %1917
  %1923 = select i1 %1919, float 0.000000e+00, float %1922
  %1924 = fcmp fast oeq float %1848, 0.000000e+00
  %1925 = fdiv fast float %1866, %1848
  %1926 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1925)  ; FMax(a,b)
  %1927 = select i1 %1924, float %1917, float %1926
  %1928 = call float @dx.op.binary.f32(i32 36, float %1917, float %1927)  ; FMin(a,b)
  %1929 = fcmp fast ogt float %1848, 0.000000e+00
  %1930 = fcmp fast olt float %1866, 0.000000e+00
  br i1 %1929, label %1931, label %1988

; <label>:1931                                    ; preds = %1916
  %1932 = icmp eq i32 %1867, 0
  br i1 %1930, label %1933, label %1977

; <label>:1933                                    ; preds = %1931
  %1934 = select i1 %1932, float %1917, float 0.000000e+00
  %1935 = fsub fast float -0.000000e+00, %1934
  %1936 = call float @dx.op.unary.f32(i32 6, float %1935)  ; FAbs(value)
  %1937 = fmul fast float %1934, %1848
  %1938 = fadd fast float %1937, %1861
  %1939 = fmul fast float %1936, %1938
  %1940 = fsub fast float %1923, %1939
  %1941 = fsub fast float %1917, %1936
  %1942 = select i1 %1932, float %1941, float 0.000000e+00
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.CBufRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.CBufRet.f32 %1943, 2
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1947, 2
  %1951 = extractvalue %dx.types.CBufRet.f32 %1947, 3
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 3
  %1954 = call float @dx.op.binary.f32(i32 36, float %1940, float %1953)  ; FMin(a,b)
  %1955 = fmul fast float %1951, %1942
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = fsub fast float %1948, %1944
  %1958 = fsub fast float %1949, %1945
  %1959 = fsub fast float %1950, %1946
  %1960 = fmul fast float %1956, %1957
  %1961 = fmul fast float %1956, %1958
  %1962 = fmul fast float %1956, %1959
  %1963 = fadd fast float %1960, %1944
  %1964 = fadd fast float %1961, %1945
  %1965 = fadd fast float %1962, %1946
  %1966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.CBufRet.f32 %1966, 1
  %1969 = fadd fast float %1968, %1967
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1966, 2
  %1972 = extractvalue %dx.types.CBufRet.f32 %1966, 3
  %1973 = fadd fast float %1972, %1971
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = fmul fast float %1970, %1954
  %1976 = fmul fast float %1975, %1974
  br label %2218

; <label>:1977                                    ; preds = %1931
  br i1 %1932, label %1978, label %1999

; <label>:1978                                    ; preds = %1977
  %1979 = call float @dx.op.binary.f32(i32 36, float %1928, float %1918)  ; FMin(a,b)
  %1980 = fsub fast float %1928, %1979
  %1981 = fsub fast float %1980, %1917
  %1982 = call float @dx.op.unary.f32(i32 6, float %1981)  ; FAbs(value)
  %1983 = fadd fast float %1980, %1917
  %1984 = fmul fast float %1983, %1848
  %1985 = fadd fast float %1984, %1861
  %1986 = fmul fast float %1985, %1982
  %1987 = fsub fast float %1923, %1986
  br label %1999

; <label>:1988                                    ; preds = %1916
  br i1 %1930, label %1989, label %1999

; <label>:1989                                    ; preds = %1988
  %1990 = call float @dx.op.binary.f32(i32 35, float %1918, float %1928)  ; FMax(a,b)
  %1991 = icmp eq i32 %1867, 0
  %1992 = select i1 %1991, float %1928, float 0.000000e+00
  %1993 = fsub fast float -0.000000e+00, %1992
  %1994 = call float @dx.op.unary.f32(i32 6, float %1993)  ; FAbs(value)
  %1995 = fmul fast float %1992, %1848
  %1996 = fadd fast float %1995, %1861
  %1997 = fmul fast float %1994, %1996
  %1998 = fsub fast float %1923, %1997
  br label %1999

; <label>:1999                                    ; preds = %1989, %1988, %1978, %1977
  %2000 = phi float [ %1918, %1977 ], [ %1918, %1978 ], [ %1990, %1989 ], [ %1918, %1988 ]
  %2001 = phi float [ 0.000000e+00, %1977 ], [ %1982, %1978 ], [ %1994, %1989 ], [ 0.000000e+00, %1988 ]
  %2002 = phi float [ %1923, %1977 ], [ %1987, %1978 ], [ %1998, %1989 ], [ %1923, %1988 ]
  %2003 = phi float [ %1928, %1977 ], [ %1928, %1978 ], [ %1917, %1989 ], [ %1917, %1988 ]
  %2004 = getelementptr inbounds [3 x float], [3 x float]* %65, i32 0, i32 0
  store float -1.000000e+00, float* %2004, align 4, !tbaa !84, !noalias !88
  %2005 = getelementptr inbounds [3 x float], [3 x float]* %65, i32 0, i32 1
  store float -1.000000e+00, float* %2005, align 4, !tbaa !84, !noalias !88
  %2006 = getelementptr inbounds [3 x float], [3 x float]* %65, i32 0, i32 2
  store float -1.000000e+00, float* %2006, align 4, !tbaa !84, !noalias !88
  %2007 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 0
  store float -1.000000e+00, float* %2007, align 4, !tbaa !84, !noalias !88
  %2008 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 1
  store float -1.000000e+00, float* %2008, align 4, !tbaa !84, !noalias !88
  %2009 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 2
  store float -1.000000e+00, float* %2009, align 4, !tbaa !84, !noalias !88
  %2010 = icmp sgt i32 %1869, 0
  br i1 %2010, label %2011, label %2072

; <label>:2011                                    ; preds = %1999
  br label %2012

; <label>:2012                                    ; preds = %2061, %2011
  %2013 = phi i32 [ %2062, %2061 ], [ 0, %2011 ]
  %2014 = phi i32 [ %2063, %2061 ], [ 0, %2011 ]
  %2015 = add nuw i32 %2014, 171
  %2016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %2015)  ; CBufferLoadLegacy(handle,regIndex)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.CBufRet.f32 %2016, 1
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2022 = fsub fast float %2017, %2020
  %2023 = fsub fast float %2018, %2021
  %2024 = extractvalue %dx.types.CBufRet.f32 %2016, 2
  %2025 = fsub fast float -0.000000e+00, %2022
  %2026 = fsub fast float -0.000000e+00, %2023
  %2027 = call float @dx.op.dot2.f32(i32 54, float %1846, float %1847, float %2025, float %2026)  ; Dot2(ax,ay,bx,by)
  %2028 = fmul fast float %2027, 2.000000e+00
  %2029 = call float @dx.op.dot2.f32(i32 54, float %2025, float %2026, float %2025, float %2026)  ; Dot2(ax,ay,bx,by)
  %2030 = fmul fast float %2024, %2024
  %2031 = fsub fast float %2029, %2030
  %2032 = fmul fast float %2028, %2028
  %2033 = fmul fast float %1889, %2031
  %2034 = fsub fast float %2032, %2033
  %2035 = fcmp fast ogt float %2034, 0.000000e+00
  br i1 %2035, label %2036, label %2051

; <label>:2036                                    ; preds = %2012
  %2037 = fcmp fast ogt float %2028, 0.000000e+00
  %2038 = call float @dx.op.unary.f32(i32 24, float %2034)  ; Sqrt(value)
  %2039 = fsub fast float -0.000000e+00, %2038
  %2040 = select i1 %2037, float %2038, float %2039
  %2041 = fadd fast float %2040, %2028
  %2042 = fmul float %2041, -5.000000e-01
  %2043 = fdiv fast float %2042, %1882
  %2044 = call float @dx.op.binary.f32(i32 35, float %2043, float 0.000000e+00)  ; FMax(a,b)
  %2045 = call float @dx.op.binary.f32(i32 36, float %1917, float %2044)  ; FMin(a,b)
  %2046 = fdiv fast float %2031, %2042
  %2047 = call float @dx.op.binary.f32(i32 35, float %2046, float 0.000000e+00)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 36, float %1917, float %2047)  ; FMin(a,b)
  %2049 = call float @dx.op.binary.f32(i32 36, float %2045, float %2048)  ; FMin(a,b)
  %2050 = call float @dx.op.binary.f32(i32 35, float %2045, float %2048)  ; FMax(a,b)
  br label %2051

; <label>:2051                                    ; preds = %2036, %2012
  %2052 = phi float [ %2050, %2036 ], [ -1.000000e+00, %2012 ]
  %2053 = phi float [ %2049, %2036 ], [ -1.000000e+00, %2012 ]
  %2054 = phi i1 [ true, %2036 ], [ false, %2012 ]
  br i1 %2054, label %2055, label %2061

; <label>:2055                                    ; preds = %2051
  %2056 = call float @dx.op.binary.f32(i32 35, float %2000, float %2053)  ; FMax(a,b)
  %2057 = getelementptr inbounds [3 x float], [3 x float]* %65, i32 0, i32 %2014
  store float %2056, float* %2057, align 4, !tbaa !84, !noalias !88
  %2058 = call float @dx.op.binary.f32(i32 35, float %2000, float %2052)  ; FMax(a,b)
  %2059 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %2014
  store float %2058, float* %2059, align 4, !tbaa !84, !noalias !88
  %2060 = add nsw i32 %2013, 1
  br label %2061

; <label>:2061                                    ; preds = %2055, %2051
  %2062 = phi i32 [ %2060, %2055 ], [ %2013, %2051 ]
  %2063 = add nuw nsw i32 %2014, 1
  %2064 = icmp eq i32 %2063, %1869
  br i1 %2064, label %2065, label %2012

; <label>:2065                                    ; preds = %2061
  %2066 = load float, float* %2006, align 4, !tbaa !84, !alias.scope !104, !noalias !107
  %2067 = load float, float* %2005, align 4, !tbaa !84, !alias.scope !110, !noalias !111
  %2068 = load float, float* %2004, align 4, !tbaa !84, !alias.scope !112, !noalias !113
  %2069 = load float, float* %2009, align 4, !tbaa !84, !alias.scope !114, !noalias !117
  %2070 = load float, float* %2008, align 4, !tbaa !84, !alias.scope !120, !noalias !121
  %2071 = load float, float* %2007, align 4, !tbaa !84, !alias.scope !122, !noalias !123
  br label %2072

; <label>:2072                                    ; preds = %2065, %1999
  %2073 = phi float [ -1.000000e+00, %1999 ], [ %2071, %2065 ]
  %2074 = phi float [ -1.000000e+00, %1999 ], [ %2070, %2065 ]
  %2075 = phi float [ -1.000000e+00, %1999 ], [ %2069, %2065 ]
  %2076 = phi float [ -1.000000e+00, %1999 ], [ %2068, %2065 ]
  %2077 = phi float [ -1.000000e+00, %1999 ], [ %2067, %2065 ]
  %2078 = phi float [ -1.000000e+00, %1999 ], [ %2066, %2065 ]
  %2079 = phi i32 [ 0, %1999 ], [ %2062, %2065 ]
  %2080 = call float @dx.op.binary.f32(i32 36, float %2077, float %2078)  ; FMin(a,b)
  %2081 = call float @dx.op.binary.f32(i32 36, float %2076, float %2080)  ; FMin(a,b)
  %2082 = call float @dx.op.binary.f32(i32 35, float %2076, float %2077)  ; FMax(a,b)
  %2083 = call float @dx.op.binary.f32(i32 36, float %2082, float %2078)  ; FMin(a,b)
  %2084 = call float @dx.op.binary.f32(i32 36, float %2076, float %2077)  ; FMin(a,b)
  %2085 = call float @dx.op.binary.f32(i32 35, float %2084, float %2083)  ; FMax(a,b)
  %2086 = call float @dx.op.binary.f32(i32 35, float %2077, float %2078)  ; FMax(a,b)
  %2087 = call float @dx.op.binary.f32(i32 35, float %2076, float %2086)  ; FMax(a,b)
  store float %2081, float* %2004, align 4, !tbaa !84, !alias.scope !112, !noalias !113
  store float %2085, float* %2005, align 4, !tbaa !84, !alias.scope !110, !noalias !111
  store float %2087, float* %2006, align 4, !tbaa !84, !alias.scope !104, !noalias !107
  %2088 = call float @dx.op.binary.f32(i32 36, float %2074, float %2075)  ; FMin(a,b)
  %2089 = call float @dx.op.binary.f32(i32 36, float %2073, float %2088)  ; FMin(a,b)
  %2090 = call float @dx.op.binary.f32(i32 35, float %2073, float %2074)  ; FMax(a,b)
  %2091 = call float @dx.op.binary.f32(i32 36, float %2090, float %2075)  ; FMin(a,b)
  %2092 = call float @dx.op.binary.f32(i32 36, float %2073, float %2074)  ; FMin(a,b)
  %2093 = call float @dx.op.binary.f32(i32 35, float %2092, float %2091)  ; FMax(a,b)
  %2094 = call float @dx.op.binary.f32(i32 35, float %2074, float %2075)  ; FMax(a,b)
  %2095 = call float @dx.op.binary.f32(i32 35, float %2073, float %2094)  ; FMax(a,b)
  store float %2089, float* %2007, align 4, !tbaa !84, !alias.scope !122, !noalias !123
  store float %2093, float* %2008, align 4, !tbaa !84, !alias.scope !120, !noalias !121
  store float %2095, float* %2009, align 4, !tbaa !84, !alias.scope !114, !noalias !117
  %2096 = sub nsw i32 3, %2079
  %2097 = icmp sgt i32 %2096, 2
  br i1 %2097, label %2098, label %2136

; <label>:2098                                    ; preds = %2072
  %2099 = icmp eq i32 %1867, 0
  %2100 = fsub fast float %1917, %2001
  %2101 = select i1 %2099, float %2100, float %2001
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.CBufRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.CBufRet.f32 %2102, 2
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2110 = extractvalue %dx.types.CBufRet.f32 %2106, 3
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 3
  %2113 = call float @dx.op.binary.f32(i32 36, float %2002, float %2112)  ; FMin(a,b)
  %2114 = fmul fast float %2110, %2101
  %2115 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2116 = fsub fast float %2107, %2103
  %2117 = fsub fast float %2108, %2104
  %2118 = fsub fast float %2109, %2105
  %2119 = fmul fast float %2115, %2116
  %2120 = fmul fast float %2115, %2117
  %2121 = fmul fast float %2115, %2118
  %2122 = fadd fast float %2119, %2103
  %2123 = fadd fast float %2120, %2104
  %2124 = fadd fast float %2121, %2105
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.CBufRet.f32 %2125, 1
  %2128 = fadd fast float %2127, %2126
  %2129 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %2131 = extractvalue %dx.types.CBufRet.f32 %2125, 3
  %2132 = fadd fast float %2131, %2130
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = fmul fast float %2129, %2113
  %2135 = fmul fast float %2134, %2133
  br label %2218

; <label>:2136                                    ; preds = %2072
  %2137 = getelementptr inbounds [3 x float], [3 x float]* %65, i32 0, i32 %2096
  %2138 = load float, float* %2137, align 4, !tbaa !84, !noalias !88
  %2139 = fcmp fast olt float %2138, %2003
  %2140 = icmp sgt i32 %2079, 0
  %2141 = and i1 %2140, %2139
  br i1 %2141, label %2142, label %2179

; <label>:2142                                    ; preds = %2136
  br label %2143

; <label>:2143                                    ; preds = %2172, %2142
  %2144 = phi float [ %2173, %2172 ], [ %2001, %2142 ]
  %2145 = phi float [ %2174, %2172 ], [ %2002, %2142 ]
  %2146 = phi float [ %2154, %2172 ], [ %2138, %2142 ]
  %2147 = phi i32 [ %2151, %2172 ], [ %2096, %2142 ]
  %2148 = getelementptr inbounds [3 x float], [3 x float]* %66, i32 0, i32 %2147
  %2149 = load float, float* %2148, align 4, !tbaa !84, !noalias !88
  %2150 = icmp slt i32 %2147, 2
  %2151 = add nsw i32 %2147, 1
  %2152 = getelementptr inbounds [3 x float], [3 x float]* %65, i32 0, i32 %2151
  %2153 = load float, float* %2152, align 4, !tbaa !84, !noalias !88
  %2154 = select i1 %2150, float %2153, float %1917
  %2155 = call float @dx.op.binary.f32(i32 36, float %2154, float %2149)  ; FMin(a,b)
  %2156 = call float @dx.op.binary.f32(i32 36, float %2003, float %2155)  ; FMin(a,b)
  %2157 = icmp eq i32 %1867, 0
  %2158 = fadd fast float %2156, %2146
  %2159 = fmul fast float %2158, %1848
  %2160 = fadd fast float %2159, %1861
  br i1 %2157, label %2166, label %2161

; <label>:2161                                    ; preds = %2143
  %2162 = fsub fast float %2156, %2146
  %2163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2162)  ; FMax(a,b)
  %2164 = fmul fast float %2163, %2160
  %2165 = fadd fast float %2164, %2145
  br label %2172

; <label>:2166                                    ; preds = %2143
  %2167 = fsub fast float %2146, %2156
  %2168 = call float @dx.op.unary.f32(i32 6, float %2167)  ; FAbs(value)
  %2169 = fadd fast float %2168, %2144
  %2170 = fmul fast float %2168, %2160
  %2171 = fsub fast float %2145, %2170
  br label %2172

; <label>:2172                                    ; preds = %2166, %2161
  %2173 = phi float [ %2163, %2161 ], [ %2169, %2166 ]
  %2174 = phi float [ %2165, %2161 ], [ %2171, %2166 ]
  %2175 = fcmp fast olt float %2154, %2003
  %2176 = icmp slt i32 %2151, 3
  %2177 = and i1 %2176, %2175
  br i1 %2177, label %2143, label %2178

; <label>:2178                                    ; preds = %2172
  br label %2179

; <label>:2179                                    ; preds = %2178, %2136
  %2180 = phi float [ %2001, %2136 ], [ %2173, %2178 ]
  %2181 = phi float [ %2002, %2136 ], [ %2174, %2178 ]
  %2182 = fsub fast float %1917, %2180
  %2183 = select i1 %1919, float %2180, float %2182
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2187 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2191 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2192 = extractvalue %dx.types.CBufRet.f32 %2188, 3
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2195 = call float @dx.op.binary.f32(i32 36, float %2181, float %2194)  ; FMin(a,b)
  %2196 = fmul fast float %2192, %2183
  %2197 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2198 = fsub fast float %2189, %2185
  %2199 = fsub fast float %2190, %2186
  %2200 = fsub fast float %2191, %2187
  %2201 = fmul fast float %2197, %2198
  %2202 = fmul fast float %2197, %2199
  %2203 = fmul fast float %2197, %2200
  %2204 = fadd fast float %2201, %2185
  %2205 = fadd fast float %2202, %2186
  %2206 = fadd fast float %2203, %2187
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.CBufRet.f32 %2207, 1
  %2210 = fadd fast float %2209, %2208
  %2211 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2212 = extractvalue %dx.types.CBufRet.f32 %2207, 2
  %2213 = extractvalue %dx.types.CBufRet.f32 %2207, 3
  %2214 = fadd fast float %2213, %2212
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2216 = fmul fast float %2211, %2195
  %2217 = fmul fast float %2216, %2215
  br label %2218

; <label>:2218                                    ; preds = %2179, %2098, %1933, %1915, %1913
  %2219 = phi float [ %1942, %1933 ], [ %2101, %2098 ], [ %2183, %2179 ], [ 0.000000e+00, %1913 ], [ 0.000000e+00, %1915 ]
  %2220 = phi float [ %1976, %1933 ], [ %2135, %2098 ], [ %2217, %2179 ], [ 0.000000e+00, %1913 ], [ 0.000000e+00, %1915 ]
  %2221 = phi float [ %1963, %1933 ], [ %2122, %2098 ], [ %2204, %2179 ], [ 0.000000e+00, %1913 ], [ 0.000000e+00, %1915 ]
  %2222 = phi float [ %1964, %1933 ], [ %2123, %2098 ], [ %2205, %2179 ], [ 0.000000e+00, %1913 ], [ 0.000000e+00, %1915 ]
  %2223 = phi float [ %1965, %1933 ], [ %2124, %2098 ], [ %2206, %2179 ], [ 0.000000e+00, %1913 ], [ 0.000000e+00, %1915 ]
  %2224 = fmul fast float %1856, %2220
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 2
  %2227 = fsub fast float %1863, %2226
  %2228 = fcmp fast olt float %2224, -2.000000e+01
  %2229 = call float @dx.op.unary.f32(i32 21, float %2224)  ; Exp(value)
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 2
  %2232 = extractvalue %dx.types.CBufRet.f32 %2230, 3
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 2
  %2235 = fmul fast float %2232, %2227
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = fmul fast float %1848, 5.000000e-01
  %2239 = fadd fast float %2238, 5.000000e-01
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2237)  ; FMax(a,b)
  %2243 = fdiv fast float %2241, %2242
  %2244 = fsub fast float %2227, %1805
  %2245 = call float @dx.op.unary.f32(i32 6, float %2244)  ; FAbs(value)
  %2246 = fmul fast float %2245, %2231
  %2247 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2248 = fsub fast float 1.000000e+00, %2246
  %2249 = fmul fast float %2248, %2247
  %2250 = fadd fast float %2249, %2246
  %2251 = fmul fast float %2234, %2227
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = fsub fast float 1.000000e+00, %2250
  %2254 = fmul fast float %2253, %2252
  %2255 = fadd fast float %2254, %2250
  %2256 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2257 = fadd fast float %2229, -1.000000e+00
  %2258 = select i1 %2228, float -1.000000e+00, float %2257
  %2259 = fmul fast float %2256, %2258
  %2260 = fadd fast float %2259, 1.000000e+00
  %2261 = fsub fast float -0.000000e+00, %2259
  %2262 = fmul fast float %2221, %2261
  %2263 = fmul fast float %2222, %2261
  %2264 = fmul fast float %2223, %2261
  br label %2265

; <label>:2265                                    ; preds = %2218, %1814
  %2266 = phi float [ %2219, %2218 ], [ 0.000000e+00, %1814 ]
  %2267 = phi float [ %2260, %2218 ], [ 1.000000e+00, %1814 ]
  %2268 = phi float [ %2262, %2218 ], [ 0.000000e+00, %1814 ]
  %2269 = phi float [ %2263, %2218 ], [ 0.000000e+00, %1814 ]
  %2270 = phi float [ %2264, %2218 ], [ 0.000000e+00, %1814 ]
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 1
  %2273 = fsub fast float 1.000000e+00, %2267
  %2274 = fmul fast float %2273, %1849
  %2275 = fmul fast float %2274, %2272
  %2276 = fsub fast float %1849, %2275
  br i1 %1842, label %2277, label %2306, !dx.controlflow.hints !124

; <label>:2277                                    ; preds = %2265
  %2278 = fmul fast float %1850, %1839
  %2279 = fadd fast float %2278, %1840
  %2280 = call float @dx.op.unary.f32(i32 7, float %2279)  ; Saturate(value)
  %2281 = fmul fast float %1821, %2276
  %2282 = fsub fast float -0.000000e+00, %2281
  %2283 = fmul fast float %1822, %2276
  %2284 = fsub fast float -0.000000e+00, %2283
  %2285 = call float @dx.op.unary.f32(i32 21, float %2282)  ; Exp(value)
  %2286 = call float @dx.op.unary.f32(i32 21, float %2284)  ; Exp(value)
  %2287 = call float @dx.op.binary.f32(i32 35, float %1829, float %2285)  ; FMax(a,b)
  %2288 = call float @dx.op.binary.f32(i32 35, float %1829, float %2286)  ; FMax(a,b)
  %2289 = fsub fast float %2288, %2287
  %2290 = fmul fast float %2289, %2280
  %2291 = fadd fast float %2290, %2287
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2293 = fsub fast float %1826, %1831
  %2294 = fsub fast float %1827, %1832
  %2295 = fsub fast float %1828, %1833
  %2296 = fmul fast float %2280, %2293
  %2297 = fmul fast float %2280, %2294
  %2298 = fmul fast float %2280, %2295
  %2299 = fadd fast float %2296, %1831
  %2300 = fadd fast float %2297, %1832
  %2301 = fadd fast float %2298, %1833
  %2302 = fsub fast float 1.000000e+00, %2292
  %2303 = fmul fast float %2302, %2299
  %2304 = fmul fast float %2302, %2300
  %2305 = fmul fast float %2302, %2301
  br label %2365

; <label>:2306                                    ; preds = %2265
  %2307 = fmul fast float %2276, %1838
  %2308 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2309 = fsub fast float 2.000000e+00, %2308
  %2310 = fmul fast float %2308, 9.921875e-01
  %2311 = fmul fast float %2310, %2309
  %2312 = fadd fast float %2311, 3.906250e-03
  %2313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %2312, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  %2315 = fsub fast float %2308, %2314
  %2316 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2315)  ; FMax(a,b)
  %2317 = fmul fast float %1824, %1805
  %2318 = call float @dx.op.unary.f32(i32 6, float %2317)  ; FAbs(value)
  %2319 = fcmp fast ogt float %2318, 0x3EB0C6F7A0000000
  br i1 %2319, label %2320, label %2326, !dx.controlflow.hints !125

; <label>:2320                                    ; preds = %2306
  %2321 = fmul fast float %2317, 0xBFF7154760000000
  %2322 = call float @dx.op.unary.f32(i32 21, float %2321)  ; Exp(value)
  %2323 = fsub fast float 1.000000e+00, %2322
  %2324 = fdiv fast float %2323, %2317
  %2325 = fmul fast float %2324, %1834
  br label %2326

; <label>:2326                                    ; preds = %2320, %2306
  %2327 = phi float [ %2325, %2320 ], [ %1834, %2306 ]
  %2328 = fadd fast float %2327, %1836
  %2329 = fmul fast float %2328, %2316
  %2330 = fmul fast float %1821, %2329
  %2331 = fsub fast float -0.000000e+00, %2330
  %2332 = fmul fast float %1822, %2329
  %2333 = fsub fast float -0.000000e+00, %2332
  %2334 = fmul fast float %1823, %2329
  %2335 = fsub fast float -0.000000e+00, %2334
  %2336 = call float @dx.op.unary.f32(i32 21, float %2331)  ; Exp(value)
  %2337 = call float @dx.op.unary.f32(i32 21, float %2333)  ; Exp(value)
  %2338 = call float @dx.op.unary.f32(i32 21, float %2335)  ; Exp(value)
  %2339 = fmul fast float %1850, %1850
  %2340 = fadd fast float %2339, 1.000000e+00
  %2341 = fmul fast float %2340, 0x3FAE8EC8A0000000
  %2342 = fmul fast float %2341, %1831
  %2343 = fmul fast float %2341, %1832
  %2344 = fmul fast float %2341, %1833
  %2345 = fmul fast float %1850, %1829
  %2346 = fsub fast float 1.000000e+00, %2345
  %2347 = fmul fast float %1829, %1829
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = fmul fast float %2348, 0x3FB45F3060000000
  %2350 = fmul fast float %2346, %2346
  %2351 = fdiv fast float 1.000000e+00, %2350
  %2352 = fmul fast float %2349, %2351
  %2353 = fmul fast float %2352, %1826
  %2354 = fmul fast float %2352, %1827
  %2355 = fmul fast float %2352, %1828
  %2356 = fadd fast float %2353, %2342
  %2357 = fadd fast float %2354, %2343
  %2358 = fadd fast float %2355, %2344
  %2359 = fsub fast float 1.000000e+00, %2336
  %2360 = fsub fast float 1.000000e+00, %2337
  %2361 = fsub fast float 1.000000e+00, %2338
  %2362 = fmul fast float %2356, %2359
  %2363 = fmul fast float %2357, %2360
  %2364 = fmul fast float %2358, %2361
  br label %2365

; <label>:2365                                    ; preds = %2326, %2277
  %2366 = phi float [ %2303, %2277 ], [ %2362, %2326 ]
  %2367 = phi float [ %2304, %2277 ], [ %2363, %2326 ]
  %2368 = phi float [ %2305, %2277 ], [ %2364, %2326 ]
  %2369 = phi float [ %2292, %2277 ], [ %2336, %2326 ]
  %2370 = phi float [ %2292, %2277 ], [ %2337, %2326 ]
  %2371 = phi float [ %2292, %2277 ], [ %2338, %2326 ]
  br i1 %1858, label %2372, label %2570, !dx.controlflow.hints !126

; <label>:2372                                    ; preds = %2365
  %2373 = extractvalue %dx.types.CBufRet.f32 %2271, 0
  %2374 = fmul fast float %2373, %2273
  %2375 = fsub fast float %2268, %2366
  %2376 = fsub fast float %2269, %2367
  %2377 = fsub fast float %2270, %2368
  %2378 = fmul fast float %2374, %2375
  %2379 = fmul fast float %2374, %2376
  %2380 = fmul fast float %2374, %2377
  %2381 = fadd fast float %2378, %2366
  %2382 = fadd fast float %2379, %2367
  %2383 = fadd fast float %2380, %2368
  %2384 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2369)  ; FMax(a,b)
  %2385 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2370)  ; FMax(a,b)
  %2386 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2371)  ; FMax(a,b)
  %2387 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2267)  ; FMax(a,b)
  %2388 = call float @dx.op.binary.f32(i32 35, float %2266, float %2276)  ; FMax(a,b)
  %2389 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2388)  ; FMax(a,b)
  %2390 = fdiv fast float %2266, %2389
  %2391 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2392 = fdiv fast float %2276, %2389
  %2393 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2394 = fcmp fast une float %2387, 1.000000e+00
  br i1 %2394, label %2395, label %2408, !dx.controlflow.hints !127

; <label>:2395                                    ; preds = %2372
  %2396 = call float @dx.op.unary.f32(i32 23, float %2387)  ; Log(value)
  %2397 = fmul fast float %2396, 0x3FE62E4300000000
  %2398 = fmul fast float %2268, %2397
  %2399 = fsub fast float -0.000000e+00, %2398
  %2400 = fmul fast float %2269, %2397
  %2401 = fsub fast float -0.000000e+00, %2400
  %2402 = fmul fast float %2270, %2397
  %2403 = fsub fast float -0.000000e+00, %2402
  %2404 = fsub fast float 1.000000e+00, %2387
  %2405 = fdiv fast float %2399, %2404
  %2406 = fdiv fast float %2401, %2404
  %2407 = fdiv fast float %2403, %2404
  br label %2408

; <label>:2408                                    ; preds = %2395, %2372
  %2409 = phi float [ %2405, %2395 ], [ %2268, %2372 ]
  %2410 = phi float [ %2406, %2395 ], [ %2269, %2372 ]
  %2411 = phi float [ %2407, %2395 ], [ %2270, %2372 ]
  %2412 = phi float [ %2397, %2395 ], [ 0.000000e+00, %2372 ]
  %2413 = fcmp fast une float %2384, 1.000000e+00
  br i1 %2413, label %2414, label %2421, !dx.controlflow.hints !128

; <label>:2414                                    ; preds = %2408
  %2415 = call float @dx.op.unary.f32(i32 23, float %2384)  ; Log(value)
  %2416 = fmul fast float %2415, 0x3FE62E4300000000
  %2417 = fmul fast float %2381, %2416
  %2418 = fsub fast float -0.000000e+00, %2417
  %2419 = fsub fast float 1.000000e+00, %2384
  %2420 = fdiv fast float %2418, %2419
  br label %2421

; <label>:2421                                    ; preds = %2414, %2408
  %2422 = phi float [ %2420, %2414 ], [ %2381, %2408 ]
  %2423 = phi float [ %2416, %2414 ], [ 0.000000e+00, %2408 ]
  %2424 = fcmp fast une float %2385, 1.000000e+00
  br i1 %2424, label %2425, label %2432, !dx.controlflow.hints !128

; <label>:2425                                    ; preds = %2421
  %2426 = call float @dx.op.unary.f32(i32 23, float %2385)  ; Log(value)
  %2427 = fmul fast float %2426, 0x3FE62E4300000000
  %2428 = fmul fast float %2382, %2427
  %2429 = fsub fast float -0.000000e+00, %2428
  %2430 = fsub fast float 1.000000e+00, %2385
  %2431 = fdiv fast float %2429, %2430
  br label %2432

; <label>:2432                                    ; preds = %2425, %2421
  %2433 = phi float [ %2431, %2425 ], [ %2382, %2421 ]
  %2434 = phi float [ %2427, %2425 ], [ 0.000000e+00, %2421 ]
  %2435 = fcmp fast une float %2386, 1.000000e+00
  br i1 %2435, label %2436, label %2443, !dx.controlflow.hints !128

; <label>:2436                                    ; preds = %2432
  %2437 = call float @dx.op.unary.f32(i32 23, float %2386)  ; Log(value)
  %2438 = fmul fast float %2437, 0x3FE62E4300000000
  %2439 = fmul fast float %2383, %2438
  %2440 = fsub fast float -0.000000e+00, %2439
  %2441 = fsub fast float 1.000000e+00, %2386
  %2442 = fdiv fast float %2440, %2441
  br label %2443

; <label>:2443                                    ; preds = %2436, %2432
  %2444 = phi float [ %2442, %2436 ], [ %2383, %2432 ]
  %2445 = phi float [ %2438, %2436 ], [ 0.000000e+00, %2432 ]
  %2446 = fmul fast float %2409, %2393
  %2447 = fmul fast float %2410, %2393
  %2448 = fmul fast float %2411, %2393
  %2449 = fmul fast float %2412, %2393
  %2450 = fmul fast float %2422, %2391
  %2451 = fmul fast float %2433, %2391
  %2452 = fmul fast float %2444, %2391
  %2453 = fmul fast float %2423, %2391
  %2454 = fmul fast float %2434, %2391
  %2455 = fmul fast float %2445, %2391
  %2456 = fadd fast float %2450, %2446
  %2457 = fadd fast float %2451, %2447
  %2458 = fadd fast float %2452, %2448
  %2459 = fadd fast float %2453, %2449
  %2460 = fadd fast float %2454, %2449
  %2461 = fadd fast float %2455, %2449
  %2462 = fcmp fast une float %2459, 0.000000e+00
  br i1 %2462, label %2463, label %2470, !dx.controlflow.hints !129

; <label>:2463                                    ; preds = %2443
  %2464 = fmul fast float %2459, 0x3FF7154760000000
  %2465 = call float @dx.op.unary.f32(i32 21, float %2464)  ; Exp(value)
  %2466 = fsub fast float 1.000000e+00, %2465
  %2467 = fmul fast float %2456, %2466
  %2468 = fsub fast float -0.000000e+00, %2467
  %2469 = fdiv fast float %2468, %2459
  br label %2470

; <label>:2470                                    ; preds = %2463, %2443
  %2471 = phi float [ %2465, %2463 ], [ 1.000000e+00, %2443 ]
  %2472 = phi float [ %2469, %2463 ], [ %2456, %2443 ]
  %2473 = fcmp fast une float %2460, 0.000000e+00
  br i1 %2473, label %2474, label %2481, !dx.controlflow.hints !129

; <label>:2474                                    ; preds = %2470
  %2475 = fmul fast float %2460, 0x3FF7154760000000
  %2476 = call float @dx.op.unary.f32(i32 21, float %2475)  ; Exp(value)
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = fmul fast float %2457, %2477
  %2479 = fsub fast float -0.000000e+00, %2478
  %2480 = fdiv fast float %2479, %2460
  br label %2481

; <label>:2481                                    ; preds = %2474, %2470
  %2482 = phi float [ %2476, %2474 ], [ 1.000000e+00, %2470 ]
  %2483 = phi float [ %2480, %2474 ], [ %2457, %2470 ]
  %2484 = fcmp fast une float %2461, 0.000000e+00
  br i1 %2484, label %2485, label %2492, !dx.controlflow.hints !129

; <label>:2485                                    ; preds = %2481
  %2486 = fmul fast float %2461, 0x3FF7154760000000
  %2487 = call float @dx.op.unary.f32(i32 21, float %2486)  ; Exp(value)
  %2488 = fsub fast float 1.000000e+00, %2487
  %2489 = fmul fast float %2458, %2488
  %2490 = fsub fast float -0.000000e+00, %2489
  %2491 = fdiv fast float %2490, %2461
  br label %2492

; <label>:2492                                    ; preds = %2485, %2481
  %2493 = phi float [ %2487, %2485 ], [ 1.000000e+00, %2481 ]
  %2494 = phi float [ %2491, %2485 ], [ %2458, %2481 ]
  %2495 = fcmp fast ogt float %2391, %2393
  br i1 %2495, label %2496, label %2516

; <label>:2496                                    ; preds = %2492
  %2497 = fsub fast float 1.000000e+00, %2393
  %2498 = fmul fast float %2409, %2497
  %2499 = fmul fast float %2410, %2497
  %2500 = fmul fast float %2411, %2497
  %2501 = fmul fast float %2412, %2497
  %2502 = fcmp fast une float %2501, 0.000000e+00
  br i1 %2502, label %2503, label %2554, !dx.controlflow.hints !130

; <label>:2503                                    ; preds = %2496
  %2504 = fmul fast float %2501, 0x3FF7154760000000
  %2505 = call float @dx.op.unary.f32(i32 21, float %2504)  ; Exp(value)
  %2506 = fsub fast float 1.000000e+00, %2505
  %2507 = fmul fast float %2498, %2506
  %2508 = fsub fast float -0.000000e+00, %2507
  %2509 = fmul fast float %2499, %2506
  %2510 = fsub fast float -0.000000e+00, %2509
  %2511 = fmul fast float %2500, %2506
  %2512 = fsub fast float -0.000000e+00, %2511
  %2513 = fdiv fast float %2508, %2501
  %2514 = fdiv fast float %2510, %2501
  %2515 = fdiv fast float %2512, %2501
  br label %2554

; <label>:2516                                    ; preds = %2492
  %2517 = fsub fast float 1.000000e+00, %2391
  %2518 = fmul fast float %2422, %2517
  %2519 = fmul fast float %2433, %2517
  %2520 = fmul fast float %2444, %2517
  %2521 = fmul fast float %2423, %2517
  %2522 = fmul fast float %2434, %2517
  %2523 = fmul fast float %2445, %2517
  %2524 = fcmp fast une float %2521, 0.000000e+00
  br i1 %2524, label %2525, label %2532, !dx.controlflow.hints !129

; <label>:2525                                    ; preds = %2516
  %2526 = fmul fast float %2521, 0x3FF7154760000000
  %2527 = call float @dx.op.unary.f32(i32 21, float %2526)  ; Exp(value)
  %2528 = fsub fast float 1.000000e+00, %2527
  %2529 = fmul fast float %2518, %2528
  %2530 = fsub fast float -0.000000e+00, %2529
  %2531 = fdiv fast float %2530, %2521
  br label %2532

; <label>:2532                                    ; preds = %2525, %2516
  %2533 = phi float [ %2531, %2525 ], [ %2518, %2516 ]
  %2534 = phi float [ %2527, %2525 ], [ 1.000000e+00, %2516 ]
  %2535 = fcmp fast une float %2522, 0.000000e+00
  br i1 %2535, label %2536, label %2543, !dx.controlflow.hints !129

; <label>:2536                                    ; preds = %2532
  %2537 = fmul fast float %2522, 0x3FF7154760000000
  %2538 = call float @dx.op.unary.f32(i32 21, float %2537)  ; Exp(value)
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2519, %2539
  %2541 = fsub fast float -0.000000e+00, %2540
  %2542 = fdiv fast float %2541, %2522
  br label %2543

; <label>:2543                                    ; preds = %2536, %2532
  %2544 = phi float [ %2542, %2536 ], [ %2519, %2532 ]
  %2545 = phi float [ %2538, %2536 ], [ 1.000000e+00, %2532 ]
  %2546 = fcmp fast une float %2523, 0.000000e+00
  br i1 %2546, label %2547, label %2554, !dx.controlflow.hints !129

; <label>:2547                                    ; preds = %2543
  %2548 = fmul fast float %2523, 0x3FF7154760000000
  %2549 = call float @dx.op.unary.f32(i32 21, float %2548)  ; Exp(value)
  %2550 = fsub fast float 1.000000e+00, %2549
  %2551 = fmul fast float %2520, %2550
  %2552 = fsub fast float -0.000000e+00, %2551
  %2553 = fdiv fast float %2552, %2523
  br label %2554

; <label>:2554                                    ; preds = %2547, %2543, %2503, %2496
  %2555 = phi float [ %2553, %2547 ], [ %2515, %2503 ], [ %2500, %2496 ], [ %2520, %2543 ]
  %2556 = phi float [ %2544, %2547 ], [ %2514, %2503 ], [ %2499, %2496 ], [ %2544, %2543 ]
  %2557 = phi float [ %2533, %2547 ], [ %2513, %2503 ], [ %2498, %2496 ], [ %2533, %2543 ]
  %2558 = phi float [ %2549, %2547 ], [ %2505, %2503 ], [ 1.000000e+00, %2496 ], [ 1.000000e+00, %2543 ]
  %2559 = phi float [ %2545, %2547 ], [ %2505, %2503 ], [ 1.000000e+00, %2496 ], [ %2545, %2543 ]
  %2560 = phi float [ %2534, %2547 ], [ %2505, %2503 ], [ 1.000000e+00, %2496 ], [ %2534, %2543 ]
  %2561 = fmul fast float %2560, %2472
  %2562 = fmul fast float %2559, %2483
  %2563 = fmul fast float %2558, %2494
  %2564 = fadd fast float %2561, %2557
  %2565 = fadd fast float %2562, %2556
  %2566 = fadd fast float %2563, %2555
  %2567 = fmul fast float %2560, %2471
  %2568 = fmul fast float %2559, %2482
  %2569 = fmul fast float %2558, %2493
  br label %2570

; <label>:2570                                    ; preds = %2554, %2365
  %2571 = phi float [ %2569, %2554 ], [ %2371, %2365 ]
  %2572 = phi float [ %2568, %2554 ], [ %2370, %2365 ]
  %2573 = phi float [ %2567, %2554 ], [ %2369, %2365 ]
  %2574 = phi float [ %2566, %2554 ], [ %2368, %2365 ]
  %2575 = phi float [ %2565, %2554 ], [ %2367, %2365 ]
  %2576 = phi float [ %2564, %2554 ], [ %2366, %2365 ]
  %2577 = fmul fast float %2576, %1551
  %2578 = fmul fast float %2575, %1551
  %2579 = fmul fast float %2574, %1551
  %2580 = fmul fast float %2573, %1813
  %2581 = call float @dx.op.dot3.f32(i32 55, float %2573, float %2572, float %2571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2582 = call float @dx.op.dot3.f32(i32 55, float %2577, float %2578, float %2579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2583 = select i1 %144, float %2581, float %2573
  %2584 = select i1 %144, float %2581, float %2572
  %2585 = select i1 %144, float 1.000000e+00, float %2571
  %2586 = select i1 %144, float %2582, float %2577
  %2587 = select i1 %144, float 0.000000e+00, float %2578
  %2588 = select i1 %144, float 0.000000e+00, float %2579
  %2589 = fmul fast float %2583, %1807
  %2590 = fmul fast float %2584, %1808
  %2591 = fmul fast float %2585, %1809
  %2592 = fadd fast float %2589, %2586
  %2593 = fadd fast float %2590, %2587
  %2594 = fadd fast float %2588, %2591
  %2595 = fmul fast float %2583, %1810
  %2596 = fmul fast float %2584, %1811
  %2597 = fmul fast float %2585, %1812
  %2598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.i32 %2598, 0
  %2600 = icmp eq i32 %2599, 0
  br i1 %2600, label %2969, label %2601, !dx.controlflow.hints !131

; <label>:2601                                    ; preds = %2570
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 2
  %2604 = extractvalue %dx.types.CBufRet.f32 %2602, 3
  %2605 = fmul fast float %2603, %71
  %2606 = fmul fast float %2604, %72
  %2607 = fmul fast float %2605, 2.000000e+00
  %2608 = fmul fast float %2606, 2.000000e+00
  %2609 = fsub fast float 1.000000e+00, %2607
  %2610 = fsub fast float 1.000000e+00, %2608
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.CBufRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2615 = fmul fast float %2609, %2612
  %2616 = fmul fast float %2609, %2613
  %2617 = fmul fast float %2609, %2614
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.CBufRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.CBufRet.f32 %2618, 2
  %2622 = fmul fast float %2610, %2619
  %2623 = fmul fast float %2610, %2620
  %2624 = fmul fast float %2610, %2621
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = extractvalue %dx.types.CBufRet.f32 %2625, 1
  %2628 = extractvalue %dx.types.CBufRet.f32 %2625, 2
  %2629 = fadd fast float %2622, %2626
  %2630 = fadd fast float %2629, %2615
  %2631 = fadd fast float %2623, %2627
  %2632 = fadd fast float %2631, %2616
  %2633 = fadd fast float %2624, %2628
  %2634 = fadd fast float %2633, %2617
  %2635 = fmul fast float %2630, %1806
  %2636 = fmul fast float %2632, %1806
  %2637 = fmul fast float %2634, %1806
  %2638 = fmul fast float %2635, %2635
  %2639 = fmul fast float %2636, %2636
  %2640 = fadd fast float %2638, %2639
  %2641 = fmul fast float %2637, %2637
  %2642 = fadd fast float %2640, %2641
  %2643 = call float @dx.op.unary.f32(i32 24, float %2642)  ; Sqrt(value)
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 0
  %2646 = fsub fast float %2643, %2645
  %2647 = extractvalue %dx.types.CBufRet.f32 %2644, 2
  %2648 = fmul fast float %2646, %2647
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = fadd fast float %2649, -5.000000e-01
  %2651 = fmul fast float %2650, 2.000000e+00
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 2
  %2654 = call float @dx.op.binary.f32(i32 36, float %2653, float %2651)  ; FMin(a,b)
  %2655 = fsub fast float -0.000000e+00, %2653
  %2656 = fcmp fast ogt float %2654, %2655
  br i1 %2656, label %2657, label %2969, !dx.controlflow.hints !132

; <label>:2657                                    ; preds = %2601
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 3
  %2660 = fcmp fast ogt float %2659, 0.000000e+00
  br i1 %2660, label %2661, label %2736, !dx.controlflow.hints !133

; <label>:2661                                    ; preds = %2657
  %2662 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %2663 = extractvalue %dx.types.Dimensions %2662, 0
  %2664 = sitofp i32 %2663 to float
  %2665 = extractvalue %dx.types.Dimensions %2662, 1
  %2666 = sitofp i32 %2665 to float
  %2667 = fmul fast float %2605, %2664
  %2668 = fmul fast float %2606, %2666
  %2669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.f32 %2669, 1
  %2671 = fsub fast float -0.000000e+00, %2670
  %2672 = fptoui float %2671 to i32
  %2673 = fptoui float %2667 to i32
  %2674 = fptoui float %2668 to i32
  %2675 = and i32 %2672, 31
  %2676 = lshr i32 %2673, %2675
  %2677 = lshr i32 %2674, %2675
  %2678 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %2672, i32 %2676, i32 %2677, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = fcmp fast olt float %2679, -1.000000e+00
  %2681 = fcmp fast ogt float %2679, -1.000000e+00
  %2682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2682, 1
  %2684 = select i1 %2681, float %2683, float 1.000000e+00
  %2685 = fadd fast float %2679, 1.000000e+00
  %2686 = fmul fast float %2684, %2685
  %2687 = call float @dx.op.unary.f32(i32 6, float %2686)  ; FAbs(value)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2682, 3
  %2689 = fcmp fast oge float %2687, %2688
  %2690 = select i1 %2689, float 0x4197782600000000, float %2687
  %2691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %2692 = extractvalue %dx.types.CBufRet.f32 %2691, 0
  %2693 = extractvalue %dx.types.CBufRet.f32 %2691, 1
  %2694 = extractvalue %dx.types.CBufRet.f32 %2691, 2
  %2695 = select i1 %2680, float %2692, float %2612
  %2696 = select i1 %2680, float %2693, float %2613
  %2697 = select i1 %2680, float %2694, float %2614
  %2698 = fmul fast float %2695, %2609
  %2699 = fmul fast float %2696, %2609
  %2700 = fmul fast float %2697, %2609
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.CBufRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.CBufRet.f32 %2701, 2
  %2705 = select i1 %2680, float %2702, float %2619
  %2706 = select i1 %2680, float %2703, float %2620
  %2707 = select i1 %2680, float %2704, float %2621
  %2708 = fmul fast float %2705, %2610
  %2709 = fmul fast float %2706, %2610
  %2710 = fmul fast float %2707, %2610
  %2711 = fadd fast float %2708, %2698
  %2712 = fadd fast float %2709, %2699
  %2713 = fadd fast float %2710, %2700
  %2714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %2715 = extractvalue %dx.types.CBufRet.f32 %2714, 0
  %2716 = extractvalue %dx.types.CBufRet.f32 %2714, 1
  %2717 = extractvalue %dx.types.CBufRet.f32 %2714, 2
  %2718 = select i1 %2680, float %2715, float %2626
  %2719 = select i1 %2680, float %2716, float %2627
  %2720 = select i1 %2680, float %2717, float %2628
  %2721 = fadd fast float %2711, %2718
  %2722 = fadd fast float %2712, %2719
  %2723 = fadd fast float %2713, %2720
  %2724 = fmul fast float %2721, %2690
  %2725 = fmul fast float %2722, %2690
  %2726 = fmul fast float %2723, %2690
  %2727 = fmul fast float %2724, %2724
  %2728 = fmul fast float %2725, %2725
  %2729 = fadd fast float %2727, %2728
  %2730 = fmul fast float %2726, %2726
  %2731 = fadd fast float %2729, %2730
  %2732 = call float @dx.op.unary.f32(i32 24, float %2731)  ; Sqrt(value)
  %2733 = fsub fast float %2732, %2645
  %2734 = fmul fast float %2733, %2647
  %2735 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  br label %2736

; <label>:2736                                    ; preds = %2661, %2657
  %2737 = phi float [ %2735, %2661 ], [ 1.000000e+00, %2657 ]
  %2738 = fmul fast float %2654, 5.000000e-01
  %2739 = fadd fast float %2738, 5.000000e-01
  %2740 = call float @dx.op.unary.f32(i32 22, float %2739)  ; Frc(value)
  %2741 = call float @dx.op.unary.f32(i32 27, float %2740)  ; Round_ni(value)
  %2742 = call float @dx.op.unary.f32(i32 22, float %2740)  ; Frc(value)
  %2743 = fmul fast float %2742, 2.000000e+00
  %2744 = fadd fast float %2743, -1.000000e+00
  %2745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %24, float %2605, float %2606, float %2741, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2746 = extractvalue %dx.types.ResRet.f32 %2745, 0
  %2747 = extractvalue %dx.types.ResRet.f32 %2745, 1
  %2748 = extractvalue %dx.types.ResRet.f32 %2745, 2
  %2749 = extractvalue %dx.types.ResRet.f32 %2745, 3
  %2750 = fadd fast float %2746, -5.000000e-01
  %2751 = fadd fast float %2748, -5.000000e-01
  %2752 = fmul fast float %2750, 0xBFD5555560000000
  %2753 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2751, float %2752)  ; FMad(a,b,c)
  %2754 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2747, float 0.000000e+00)  ; FMad(a,b,c)
  %2755 = fadd fast float %2754, %2749
  %2756 = fmul fast float %2750, -7.500000e-01
  %2757 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2751, float %2756)  ; FMad(a,b,c)
  %2758 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2747, float 0.000000e+00)  ; FMad(a,b,c)
  %2759 = fadd fast float %2758, %2749
  %2760 = call float @dx.op.binary.f32(i32 35, float %2753, float -1.000000e+00)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 35, float %2755, float -1.000000e+00)  ; FMax(a,b)
  %2762 = call float @dx.op.binary.f32(i32 35, float %2757, float -1.000000e+00)  ; FMax(a,b)
  %2763 = call float @dx.op.binary.f32(i32 35, float %2759, float -1.000000e+00)  ; FMax(a,b)
  %2764 = call float @dx.op.binary.f32(i32 36, float %2760, float 1.000000e+00)  ; FMin(a,b)
  %2765 = call float @dx.op.binary.f32(i32 36, float %2761, float 1.000000e+00)  ; FMin(a,b)
  %2766 = call float @dx.op.binary.f32(i32 36, float %2762, float 1.000000e+00)  ; FMin(a,b)
  %2767 = call float @dx.op.binary.f32(i32 36, float %2763, float 1.000000e+00)  ; FMin(a,b)
  %2768 = fcmp fast olt float %2764, 0x3FEFFF8020000000
  br i1 %2768, label %2769, label %2884, !dx.controlflow.hints !134

; <label>:2769                                    ; preds = %2736
  %2770 = extractvalue %dx.types.CBufRet.f32 %2652, 3
  %2771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.CBufRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.CBufRet.f32 %2771, 2
  %2775 = extractvalue %dx.types.CBufRet.f32 %2771, 3
  %2776 = fsub fast float %2772, %2764
  %2777 = fsub fast float %2773, %2765
  %2778 = fsub fast float %2774, %2766
  %2779 = fsub fast float %2775, %2767
  %2780 = fmul fast float %2776, %2770
  %2781 = fmul fast float %2777, %2770
  %2782 = fmul fast float %2778, %2770
  %2783 = fmul fast float %2779, %2770
  %2784 = fadd fast float %2780, %2764
  %2785 = fadd fast float %2781, %2765
  %2786 = fsub fast float -0.000000e+00, %2785
  %2787 = fadd fast float %2782, %2766
  %2788 = fadd fast float %2783, %2767
  %2789 = fmul fast float %2784, %2784
  %2790 = fsub fast float %2785, %2789
  %2791 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2790)  ; FMax(a,b)
  %2792 = fdiv fast float 1.000000e+00, %2791
  %2793 = fmul fast float %2785, %2784
  %2794 = fsub fast float %2787, %2793
  %2795 = fsub fast float %2744, %2784
  %2796 = fmul fast float %2744, %2744
  %2797 = fsub fast float %2796, %2785
  %2798 = fmul fast float %2795, %2792
  %2799 = fmul fast float %2798, %2794
  %2800 = fsub fast float %2797, %2799
  %2801 = fmul fast float %2785, %2785
  %2802 = fsub fast float %2788, %2801
  %2803 = fmul fast float %2794, %2794
  %2804 = fmul fast float %2803, %2792
  %2805 = fsub fast float %2802, %2804
  %2806 = fdiv fast float %2800, %2805
  %2807 = fmul fast float %2794, %2806
  %2808 = fsub fast float %2795, %2807
  %2809 = fmul fast float %2808, %2792
  %2810 = fmul fast float %2809, %2784
  %2811 = fsub fast float 1.000000e+00, %2810
  %2812 = fmul fast float %2785, %2806
  %2813 = fsub fast float %2811, %2812
  %2814 = fmul fast float %2809, %2809
  %2815 = fmul fast float %2806, 4.000000e+00
  %2816 = fmul fast float %2815, %2813
  %2817 = fsub fast float %2814, %2816
  %2818 = call float @dx.op.unary.f32(i32 24, float %2817)  ; Sqrt(value)
  %2819 = fcmp fast oge float %2809, 0.000000e+00
  %2820 = fsub fast float -0.000000e+00, %2818
  %2821 = select i1 %2819, float %2820, float %2818
  %2822 = fsub fast float %2821, %2809
  %2823 = fdiv fast float %2822, %2806
  %2824 = fdiv fast float %2813, %2822
  %2825 = fmul fast float %2823, 5.000000e-01
  %2826 = fmul fast float %2824, 2.000000e+00
  %2827 = select i1 %2819, float %2825, float %2826
  %2828 = select i1 %2819, float %2826, float %2825
  %2829 = call float @dx.op.binary.f32(i32 35, float %2827, float %2828)  ; FMax(a,b)
  %2830 = call float @dx.op.binary.f32(i32 36, float %2827, float %2828)  ; FMin(a,b)
  %2831 = fcmp fast ogt float %2744, %2830
  br i1 %2831, label %2832, label %2842

; <label>:2832                                    ; preds = %2769
  %2833 = fsub fast float %2744, %2830
  %2834 = fsub fast float %2829, %2830
  %2835 = fmul fast float %2833, %2834
  %2836 = fmul fast float %2829, %2744
  %2837 = fadd fast float %2829, %2744
  %2838 = fmul fast float %2837, %2784
  %2839 = fadd fast float %2836, %2785
  %2840 = fsub fast float %2839, %2838
  %2841 = fdiv fast float %2840, %2835
  br label %2842

; <label>:2842                                    ; preds = %2832, %2769
  %2843 = phi float [ %2841, %2832 ], [ 0.000000e+00, %2769 ]
  %2844 = fcmp fast ogt float %2744, %2829
  %2845 = fsub fast float %2744, %2829
  br i1 %2844, label %2846, label %2856

; <label>:2846                                    ; preds = %2842
  %2847 = fsub fast float %2829, %2830
  %2848 = fmul fast float %2847, %2845
  %2849 = fmul fast float %2830, %2744
  %2850 = fadd fast float %2830, %2744
  %2851 = fmul fast float %2850, %2784
  %2852 = fsub fast float %2786, %2849
  %2853 = fadd fast float %2852, %2851
  %2854 = fdiv fast float %2853, %2848
  %2855 = fadd fast float %2854, %2843
  br label %2856

; <label>:2856                                    ; preds = %2846, %2842
  %2857 = phi float [ %2855, %2846 ], [ %2843, %2842 ]
  %2858 = fsub fast float %2744, %2830
  %2859 = fmul fast float %2858, %2845
  %2860 = fmul fast float %2830, %2829
  %2861 = fadd fast float %2830, %2829
  %2862 = fmul fast float %2861, %2784
  %2863 = fadd fast float %2860, %2785
  %2864 = fsub fast float %2863, %2862
  %2865 = fdiv fast float %2864, %2859
  %2866 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2867 = fcmp fast oeq float %1659, 0.000000e+00
  %2868 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2869 = fcmp fast oeq float %2868, 0.000000e+00
  %2870 = or i1 %2867, %2869
  %2871 = fmul fast float %2868, 2.000000e+00
  %2872 = fadd fast float %2653, %2654
  %2873 = fdiv fast float %2872, %2871
  %2874 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2875 = fmul fast float %2874, 2.000000e+00
  %2876 = fsub fast float 3.000000e+00, %2875
  %2877 = fmul fast float %2874, %2874
  %2878 = fmul fast float %2877, %2876
  %2879 = select i1 %2870, float 1.000000e+00, float %2878
  %2880 = fmul fast float %2865, %1659
  %2881 = fadd fast float %2866, %2880
  %2882 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2883 = fmul fast float %2879, %2882
  br label %2884

; <label>:2884                                    ; preds = %2856, %2736
  %2885 = phi float [ %2883, %2856 ], [ 0.000000e+00, %2736 ]
  %2886 = fsub fast float 1.000000e+00, %2885
  %2887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %24, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.i32 %2889, 2
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2897, label %2892

; <label>:2892                                    ; preds = %2884
  %2893 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2894 = fadd fast float %2888, -1.000000e+00
  %2895 = fmul fast float %2893, %2894
  %2896 = fadd fast float %2895, 1.000000e+00
  br label %2897

; <label>:2897                                    ; preds = %2892, %2884
  %2898 = phi float [ %2896, %2892 ], [ %2886, %2884 ]
  br i1 %2660, label %2899, label %2917

; <label>:2899                                    ; preds = %2897
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 1
  %2902 = fsub fast float %2737, %2901
  %2903 = call float @dx.op.unary.f32(i32 7, float %2902)  ; Saturate(value)
  %2904 = fsub fast float %2737, %2659
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2906 = fsub fast float %2903, %2905
  %2907 = fsub fast float %2739, %2905
  %2908 = fdiv fast float %2907, %2906
  %2909 = call float @dx.op.unary.f32(i32 7, float %2908)  ; Saturate(value)
  %2910 = fmul fast float %2909, 2.000000e+00
  %2911 = fsub fast float 3.000000e+00, %2910
  %2912 = fsub fast float %2888, %2898
  %2913 = fmul fast float %2909, %2909
  %2914 = fmul fast float %2913, %2912
  %2915 = fmul fast float %2914, %2911
  %2916 = fadd fast float %2915, %2898
  br label %2917

; <label>:2917                                    ; preds = %2899, %2897
  %2918 = phi float [ %2916, %2899 ], [ %2898, %2897 ]
  %2919 = call float @dx.op.binary.f32(i32 35, float %2888, float %2918)  ; FMax(a,b)
  %2920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.i32 %2920, 2
  %2922 = and i32 %2921, 1
  %2923 = icmp eq i32 %2922, 0
  %2924 = fcmp fast une float %2919, 1.000000e+00
  %2925 = and i1 %2924, %2923
  br i1 %2925, label %2926, label %2945

; <label>:2926                                    ; preds = %2917
  %2927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %2605, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.ResRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.ResRet.f32 %2927, 2
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 1
  %2933 = fmul fast float %2932, %2928
  %2934 = fmul fast float %2932, %2929
  %2935 = fmul fast float %2932, %2930
  %2936 = fcmp fast ogt float %2888, 0x3FEFFF2E40000000
  %2937 = fsub fast float 1.000000e+00, %2919
  %2938 = fsub fast float 1.000000e+00, %2888
  %2939 = fdiv fast float %2937, %2938
  %2940 = call float @dx.op.unary.f32(i32 7, float %2939)  ; Saturate(value)
  %2941 = select i1 %2936, float 0.000000e+00, float %2940
  %2942 = fmul fast float %2933, %2941
  %2943 = fmul fast float %2934, %2941
  %2944 = fmul fast float %2935, %2941
  br label %2945

; <label>:2945                                    ; preds = %2926, %2917
  %2946 = phi float [ 0.000000e+00, %2917 ], [ %2942, %2926 ]
  %2947 = phi float [ 0.000000e+00, %2917 ], [ %2943, %2926 ]
  %2948 = phi float [ 0.000000e+00, %2917 ], [ %2944, %2926 ]
  %2949 = fmul fast float %2946, %1551
  %2950 = fmul fast float %2947, %1551
  %2951 = fmul fast float %2948, %1551
  %2952 = fmul fast float %2919, %2580
  %2953 = call float @dx.op.dot3.f32(i32 55, float %2919, float %2919, float %2919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2951, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = select i1 %144, float %2953, float %2919
  %2956 = select i1 %144, float 1.000000e+00, float %2919
  %2957 = select i1 %144, float %2954, float %2949
  %2958 = select i1 %144, float 0.000000e+00, float %2950
  %2959 = select i1 %144, float 0.000000e+00, float %2951
  %2960 = fmul fast float %2955, %2592
  %2961 = fmul fast float %2955, %2593
  %2962 = fmul fast float %2956, %2594
  %2963 = fadd fast float %2960, %2957
  %2964 = fadd fast float %2961, %2958
  %2965 = fadd fast float %2959, %2962
  %2966 = fmul fast float %2955, %2595
  %2967 = fmul fast float %2955, %2596
  %2968 = fmul fast float %2956, %2597
  br label %2969

; <label>:2969                                    ; preds = %2945, %2601, %2570, %1802
  %2970 = phi float [ %1807, %1802 ], [ %2592, %2570 ], [ %2963, %2945 ], [ %2592, %2601 ]
  %2971 = phi float [ %1808, %1802 ], [ %2593, %2570 ], [ %2964, %2945 ], [ %2593, %2601 ]
  %2972 = phi float [ %1809, %1802 ], [ %2594, %2570 ], [ %2965, %2945 ], [ %2594, %2601 ]
  %2973 = phi float [ %1810, %1802 ], [ %2595, %2570 ], [ %2966, %2945 ], [ %2595, %2601 ]
  %2974 = phi float [ %1811, %1802 ], [ %2596, %2570 ], [ %2967, %2945 ], [ %2596, %2601 ]
  %2975 = phi float [ %1812, %1802 ], [ %2597, %2570 ], [ %2968, %2945 ], [ %2597, %2601 ]
  %2976 = phi float [ %1813, %1802 ], [ %2580, %2570 ], [ %2952, %2945 ], [ %2580, %2601 ]
  %2977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.f32 %2977, 2
  %2979 = extractvalue %dx.types.CBufRet.f32 %2977, 3
  %2980 = fmul fast float %2978, %71
  %2981 = fmul fast float %2979, %72
  %2982 = call float @dx.op.unary.f32(i32 7, float %2980)  ; Saturate(value)
  %2983 = call float @dx.op.unary.f32(i32 7, float %2981)  ; Saturate(value)
  %2984 = select i1 %940, i32 2, i32 0
  %2985 = or i32 %2984, 1
  %2986 = uitofp i32 %2985 to float
  %2987 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %2982, float %2983, float %2986, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 0
  %2989 = extractvalue %dx.types.ResRet.f32 %2987, 1
  %2990 = extractvalue %dx.types.ResRet.f32 %2987, 2
  %2991 = extractvalue %dx.types.ResRet.f32 %2987, 3
  %2992 = add nuw nsw i32 %2984, 2
  %2993 = uitofp i32 %2992 to float
  %2994 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %2982, float %2983, float %2993, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.ResRet.f32 %2994, 2
  %2998 = extractvalue %dx.types.ResRet.f32 %2994, 3
  %2999 = call float @dx.op.binary.f32(i32 35, float %2989, float %2990)  ; FMax(a,b)
  %3000 = call float @dx.op.binary.f32(i32 35, float %2988, float %2999)  ; FMax(a,b)
  %3001 = call float @dx.op.binary.f32(i32 35, float %3000, float %2991)  ; FMax(a,b)
  %3002 = call float @dx.op.binary.f32(i32 36, float %2996, float %2997)  ; FMin(a,b)
  %3003 = call float @dx.op.binary.f32(i32 36, float %2995, float %3002)  ; FMin(a,b)
  %3004 = call float @dx.op.binary.f32(i32 36, float %3003, float %2998)  ; FMin(a,b)
  %3005 = fmul fast float %3001, 2.550000e+02
  %3006 = fadd fast float %3005, 0x3F70101020000000
  %3007 = fptoui float %3006 to i32
  %3008 = fmul fast float %3004, 2.550000e+02
  %3009 = fadd fast float %3008, 0x3F70101020000000
  %3010 = fptoui float %3009 to i32
  %3011 = icmp ult i32 %3007, %3010
  br i1 %3011, label %3012, label %3058

; <label>:3012                                    ; preds = %2969
  %3013 = fcmp fast ogt float %63, 9.843750e-01
  %3014 = fadd fast float %1806, -4.000000e+00
  %3015 = select i1 %3013, float -4.000000e+00, float %3014
  %3016 = call float @dx.op.binary.f32(i32 35, float %3015, float 0.000000e+00)  ; FMax(a,b)
  %3017 = fadd fast float %1117, %3016
  %3018 = fmul fast float %3017, %1118
  %3019 = call float @dx.op.unary.f32(i32 23, float %3018)  ; Log(value)
  %3020 = fmul fast float %1119, %3019
  %3021 = fmul fast float %3020, %1127
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = uitofp i32 %3007 to float
  %3024 = uitofp i32 %3010 to float
  %3025 = fadd fast float %3023, 5.000000e-01
  %3026 = fadd fast float %3024, 5.000000e-01
  %3027 = fmul fast float %1127, %3025
  %3028 = fmul fast float %1127, %3026
  %3029 = fadd fast float %3027, 0x3F0FFB4800000000
  %3030 = fadd fast float %3028, 0xBF0FFB4800000000
  %3031 = call float @dx.op.binary.f32(i32 35, float %3022, float %3029)  ; FMax(a,b)
  %3032 = call float @dx.op.binary.f32(i32 36, float %3031, float %3030)  ; FMin(a,b)
  %3033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3034 = extractvalue %dx.types.CBufRet.f32 %3033, 1
  %3035 = extractvalue %dx.types.CBufRet.f32 %3033, 2
  %3036 = extractvalue %dx.types.CBufRet.f32 %3033, 0
  %3037 = select i1 %940, float %3036, float 0.000000e+00
  %3038 = fmul fast float %3034, %3032
  %3039 = fadd fast float %3037, %3038
  %3040 = fadd fast float %3037, %3035
  %3041 = fsub fast float %3034, %3035
  %3042 = fadd fast float %3041, %3037
  %3043 = call float @dx.op.binary.f32(i32 35, float %3039, float %3040)  ; FMax(a,b)
  %3044 = call float @dx.op.binary.f32(i32 36, float %3043, float %3042)  ; FMin(a,b)
  %3045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %2982, float %2983, float %3044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3046 = extractvalue %dx.types.ResRet.f32 %3045, 0
  %3047 = extractvalue %dx.types.ResRet.f32 %3045, 1
  %3048 = extractvalue %dx.types.ResRet.f32 %3045, 2
  %3049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %2982, float %2983, float %3044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 1
  %3052 = extractvalue %dx.types.ResRet.f32 %3049, 2
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 1
  %3055 = fmul fast float %3054, %3050
  %3056 = fmul fast float %3054, %3051
  %3057 = fmul fast float %3054, %3052
  br label %3058

; <label>:3058                                    ; preds = %3012, %2969
  %3059 = phi float [ %3046, %3012 ], [ 1.000000e+00, %2969 ]
  %3060 = phi float [ %3047, %3012 ], [ 1.000000e+00, %2969 ]
  %3061 = phi float [ %3048, %3012 ], [ 1.000000e+00, %2969 ]
  %3062 = phi float [ %3055, %3012 ], [ 0.000000e+00, %2969 ]
  %3063 = phi float [ %3056, %3012 ], [ 0.000000e+00, %2969 ]
  %3064 = phi float [ %3057, %3012 ], [ 0.000000e+00, %2969 ]
  %3065 = fmul fast float %3062, %1551
  %3066 = fmul fast float %3063, %1551
  %3067 = fmul fast float %3064, %1551
  %3068 = fmul fast float %3059, %2976
  %3069 = call float @dx.op.dot3.f32(i32 55, float %3059, float %3060, float %3061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3070 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3071 = select i1 %144, float %3069, float %3059
  %3072 = select i1 %144, float %3069, float %3060
  %3073 = select i1 %144, float 1.000000e+00, float %3061
  %3074 = select i1 %144, float %3070, float %3065
  %3075 = select i1 %144, float 0.000000e+00, float %3066
  %3076 = select i1 %144, float 0.000000e+00, float %3067
  %3077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.i32 %3077, 3
  %3079 = and i32 %3078, 3
  %3080 = icmp ne i32 %3079, 0
  %3081 = and i32 %3078, 4
  %3082 = icmp ne i32 %3081, 0
  %3083 = and i1 %3080, %3082
  %3084 = and i1 %144, %3083
  br i1 %3084, label %3085, label %3091

; <label>:3085                                    ; preds = %3058
  %3086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.f32 %3086, 1
  %3088 = fadd fast float %3068, -1.000000e+00
  %3089 = fmul fast float %3087, %3088
  %3090 = fadd fast float %3089, 1.000000e+00
  br label %3091

; <label>:3091                                    ; preds = %3085, %3058
  %3092 = phi float [ %3090, %3085 ], [ %3068, %3058 ]
  %3093 = fadd fast float %2973, %2970
  %3094 = fmul fast float %3071, %3093
  %3095 = fadd fast float %3094, %3074
  %3096 = fadd fast float %2974, %2971
  %3097 = fmul fast float %3072, %3096
  %3098 = fadd fast float %3097, %3075
  %3099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3100 = extractvalue %dx.types.CBufRet.f32 %3099, 0
  br i1 %144, label %3101, label %3122

; <label>:3101                                    ; preds = %3091
  %3102 = fadd fast float %3095, %3098
  %3103 = fmul fast float %3100, %3102
  %3104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3105 = extractvalue %dx.types.CBufRet.f32 %3104, 3
  %3106 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %3107 = fsub fast float %1558, %3106
  %3108 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %3109 = fmul fast float %3107, %3108
  %3110 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3111 = fsub fast float %3110, %3105
  %3112 = fmul fast float %3111, %3092
  %3113 = fadd fast float %3112, %3105
  %3114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3115 = extractvalue %dx.types.CBufRet.f32 %3114, 0
  %3116 = fsub fast float %3113, %3115
  %3117 = fmul fast float %3116, 1.000000e+01
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3119 = fmul fast float %3118, %1550
  %3120 = fadd fast float %3119, %1551
  %3121 = fmul fast float %3120, %3113
  br label %3134

; <label>:3122                                    ; preds = %3091
  %3123 = fadd fast float %2975, %2972
  %3124 = fmul fast float %3073, %3123
  %3125 = fadd fast float %3124, %3076
  %3126 = fmul fast float %3100, %3095
  %3127 = fmul fast float %3100, %3098
  %3128 = fmul fast float %3100, %3125
  %3129 = call float @dx.op.binary.f32(i32 35, float %3127, float %3128)  ; FMax(a,b)
  %3130 = call float @dx.op.binary.f32(i32 35, float %3126, float %3129)  ; FMax(a,b)
  %3131 = call float @dx.op.binary.f32(i32 35, float %3130, float %1551)  ; FMax(a,b)
  %3132 = fcmp fast ugt float %3131, 0x3F10000000000000
  br i1 %3132, label %3134, label %3133

; <label>:3133                                    ; preds = %3122
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3134

; <label>:3134                                    ; preds = %3133, %3122, %3101
  %3135 = phi float [ %3103, %3101 ], [ %3126, %3133 ], [ %3126, %3122 ]
  %3136 = phi float [ %3121, %3101 ], [ %3127, %3133 ], [ %3127, %3122 ]
  %3137 = phi float [ %3120, %3101 ], [ %3128, %3133 ], [ %3128, %3122 ]
  %3138 = phi float [ %3120, %3101 ], [ %1551, %3133 ], [ %1551, %3122 ]
  %3139 = fadd fast float %618, 0x3FE3C6EF40000000
  %3140 = call float @dx.op.unary.f32(i32 22, float %3139)  ; Frc(value)
  %3141 = call float @dx.op.unary.f32(i32 23, float %3135)  ; Log(value)
  %3142 = fadd fast float %3141, -7.000000e+00
  %3143 = call float @dx.op.unary.f32(i32 21, float %3142)  ; Exp(value)
  %3144 = fmul fast float %3140, 2.000000e+00
  %3145 = fadd fast float %3144, -1.000000e+00
  %3146 = fmul fast float %3143, %3145
  %3147 = fcmp fast ogt float %3135, 0.000000e+00
  %3148 = select i1 %3147, float %3146, float 0.000000e+00
  %3149 = fadd fast float %3148, %3135
  %3150 = fadd fast float %618, 0x3FF3C6EF40000000
  %3151 = call float @dx.op.unary.f32(i32 22, float %3150)  ; Frc(value)
  %3152 = call float @dx.op.unary.f32(i32 23, float %3136)  ; Log(value)
  %3153 = fadd fast float %3152, -7.000000e+00
  %3154 = call float @dx.op.unary.f32(i32 21, float %3153)  ; Exp(value)
  %3155 = fmul fast float %3151, 2.000000e+00
  %3156 = fadd fast float %3155, -1.000000e+00
  %3157 = fmul fast float %3154, %3156
  %3158 = fcmp fast ogt float %3136, 0.000000e+00
  %3159 = select i1 %3158, float %3157, float 0.000000e+00
  %3160 = fadd fast float %3159, %3136
  %3161 = fadd fast float %618, 0x3FFDAA66E0000000
  %3162 = call float @dx.op.unary.f32(i32 22, float %3161)  ; Frc(value)
  %3163 = call float @dx.op.unary.f32(i32 23, float %3137)  ; Log(value)
  %3164 = fadd fast float %3163, -6.000000e+00
  %3165 = call float @dx.op.unary.f32(i32 21, float %3164)  ; Exp(value)
  %3166 = fmul fast float %3162, 2.000000e+00
  %3167 = fadd fast float %3166, -1.000000e+00
  %3168 = fmul fast float %3165, %3167
  %3169 = fcmp fast ogt float %3137, 0.000000e+00
  %3170 = select i1 %3169, float %3168, float 0.000000e+00
  %3171 = fadd fast float %3170, %3137
  %3172 = select i1 %144, float %3136, float %3160
  %3173 = select i1 %144, float %3137, float %3171
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3174 = call float @dx.op.binary.f32(i32 36, float %3149, float 3.225500e+04)  ; FMin(a,b)
  %3175 = call float @dx.op.binary.f32(i32 36, float %3172, float 3.225500e+04)  ; FMin(a,b)
  %3176 = call float @dx.op.binary.f32(i32 36, float %3173, float 3.225500e+04)  ; FMin(a,b)
  %3177 = call float @dx.op.binary.f32(i32 36, float %3138, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3174)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3175)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3176)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3177)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3138)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3138)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3138)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3138)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!40}
!dx.entryPoints = !{!41}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !32, !35}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!23 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!24 = !{i32 16, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!25 = !{i32 17, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!26 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !27}
!27 = !{i32 0, i32 14}
!28 = !{i32 19, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!29 = !{i32 20, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!31 = !{i32 22, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!32 = !{!33, !34}
!33 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!34 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!35 = !{!36, !37, !38, !39}
!36 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!37 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!38 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!39 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!40 = !{[42 x i32] [i32 40, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 7, i32 255, i32 0, i32 0, i32 0]}
!41 = !{void ()* @ps_main, !"ps_main", !42, !4, !69}
!42 = !{!43, !65, null}
!43 = !{!44, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !64}
!44 = !{i32 0, !"SV_Position", i8 9, i8 3, !45, i8 4, i32 1, i8 4, i32 0, i8 0, !46}
!45 = !{i32 0}
!46 = !{i32 3, i32 15}
!47 = !{i32 1, !"COLOR", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 1, i8 0, !46}
!48 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 2, i8 0, !46}
!49 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 3, i8 0, !46}
!50 = !{i32 3}
!51 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 4, i8 0, !46}
!52 = !{i32 4}
!53 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 5, i8 0, !46}
!54 = !{i32 5}
!55 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 6, i8 0, !46}
!56 = !{i32 6}
!57 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 7, i8 0, !46}
!58 = !{i32 7}
!59 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 8, i8 0, !46}
!60 = !{i32 8}
!61 = !{i32 9, !"COLOR", i8 5, i8 0, !50, i8 1, i32 1, i8 3, i32 9, i8 0, !62}
!62 = !{i32 3, i32 1}
!63 = !{i32 10, !"COLOR", i8 5, i8 0, !52, i8 1, i32 1, i8 1, i32 9, i8 3, null}
!64 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !45, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66, !67}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !45, i8 0, i32 1, i8 4, i32 0, i8 0, !46}
!67 = !{i32 1, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 1, i8 0, !46}
!68 = !{i32 1}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = !{!85, !85, i64 0}
!85 = !{!"float", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C/C++ TBAA"}
!88 = !{!89, !91, !93, !94, !96, !97, !98, !100, !101, !102}
!89 = distinct !{!89, !90, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!90 = distinct !{!90, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!91 = distinct !{!91, !92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!92 = distinct !{!92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!93 = distinct !{!93, !92, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!94 = distinct !{!94, !95, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!95 = distinct !{!95, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!96 = distinct !{!96, !95, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!97 = distinct !{!97, !95, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!98 = distinct !{!98, !99, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!99 = distinct !{!99, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!100 = distinct !{!100, !99, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!101 = distinct !{!101, !99, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!102 = distinct !{!102, !103, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!103 = distinct !{!103, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"\01?sort@@YAXAIAM00@Z: %c"}
!106 = distinct !{!106, !"\01?sort@@YAXAIAM00@Z"}
!107 = !{!108, !109, !89, !91, !93, !94, !96, !97, !98, !100, !101, !102}
!108 = distinct !{!108, !106, !"\01?sort@@YAXAIAM00@Z: %a"}
!109 = distinct !{!109, !106, !"\01?sort@@YAXAIAM00@Z: %b"}
!110 = !{!109}
!111 = !{!108, !105, !89, !91, !93, !94, !96, !97, !98, !100, !101, !102}
!112 = !{!108}
!113 = !{!109, !105, !89, !91, !93, !94, !96, !97, !98, !100, !101, !102}
!114 = !{!115}
!115 = distinct !{!115, !116, !"\01?sort@@YAXAIAM00@Z: %c"}
!116 = distinct !{!116, !"\01?sort@@YAXAIAM00@Z"}
!117 = !{!118, !119, !89, !91, !93, !94, !96, !97, !98, !100, !101, !102}
!118 = distinct !{!118, !116, !"\01?sort@@YAXAIAM00@Z: %a"}
!119 = distinct !{!119, !116, !"\01?sort@@YAXAIAM00@Z: %b"}
!120 = !{!119}
!121 = !{!118, !115, !89, !91, !93, !94, !96, !97, !98, !100, !101, !102}
!122 = !{!118}
!123 = !{!119, !115, !89, !91, !93, !94, !96, !97, !98, !100, !101, !102}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 2}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}

