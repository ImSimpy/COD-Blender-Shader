;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 4   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xyzw        5     NONE   float   xyzw
; TEXCOORD                 6   xyzw        6     NONE   float   xyzw
; TEXCOORD                 7   xyzw        7     NONE   float   xyzw
; TEXCOORD                 8   xyzw        8     NONE   float       
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
; shader hash: 1e4d1a6998aaed09331d23d9c1f6d814
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 36 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 36 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 36 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 36 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 36 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 36 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 36 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 36 }
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
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = alloca [3 x float], align 4
  %59 = alloca [3 x float], align 4
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = fmul fast float %63, %54
  %65 = fmul fast float %63, %55
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %69 = fmul fast float %64, 2.000000e+00
  %70 = fmul fast float %69, %67
  %71 = fmul fast float %65, 2.000000e+00
  %72 = fmul fast float %71, %68
  %73 = fsub fast float 1.000000e+00, %70
  %74 = fsub fast float 1.000000e+00, %72
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %73, %76
  %80 = fmul fast float %73, %77
  %81 = fmul fast float %73, %78
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %74, %83
  %87 = fmul fast float %74, %84
  %88 = fmul fast float %74, %85
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fadd fast float %86, %90
  %94 = fadd fast float %93, %79
  %95 = fadd fast float %87, %91
  %96 = fadd fast float %95, %80
  %97 = fadd fast float %88, %92
  %98 = fadd fast float %97, %81
  %99 = fmul fast float %94, %57
  %100 = fmul fast float %96, %57
  %101 = fmul fast float %98, %57
  %102 = fmul fast float %46, %43
  %103 = fmul fast float %47, %42
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %47, %41
  %106 = fmul fast float %45, %43
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %45, %42
  %109 = fmul fast float %46, %41
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %104, %44
  %112 = fmul fast float %107, %44
  %113 = fmul fast float %110, %44
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 3
  %116 = and i32 %115, 3
  %117 = icmp ne i32 %116, 0
  %118 = and i32 %115, 4
  %119 = icmp ne i32 %118, 0
  %120 = and i1 %117, %119
  br i1 %120, label %121, label %130

; <label>:121                                     ; preds = %0
  %122 = fmul fast float %68, %65
  %123 = fmul fast float %67, %64
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %24, float %123, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = fcmp fast olt float %126, %128
  br label %133

; <label>:130                                     ; preds = %0
  %131 = icmp eq i32 %118, 0
  %132 = and i1 %117, %131
  br label %133

; <label>:133                                     ; preds = %130, %121
  %134 = phi i1 [ %129, %121 ], [ %132, %130 ]
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %136, %64
  %139 = fmul fast float %137, %65
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = and i32 %141, 114688
  %143 = icmp ne i32 %142, 0
  %144 = select i1 %143, float %138, float 0.000000e+00
  %145 = select i1 %143, float %139, float 0.000000e+00
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %25, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = fmul fast float %147, 2.550000e+02
  %149 = fptoui float %148 to i32
  %150 = select i1 %143, i32 %149, i32 0
  %151 = mul i32 %28, 208
  %152 = add i32 %151, 188
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %115, 114688
  %156 = and i32 %115, 8
  %157 = icmp ne i32 %156, 0
  %158 = or i1 %134, %157
  %159 = select i1 %158, i32 %155, i32 16384
  %160 = and i32 %159, %154
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %133
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %163

; <label>:163                                     ; preds = %162, %133
  %164 = and i32 %154, 512
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %190, label %166

; <label>:166                                     ; preds = %163
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %170 = fmul fast float %168, %64
  %171 = fmul fast float %169, %65
  %172 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %174 = fdiv fast float %172, %173
  %175 = fcmp fast ogt float %174, 0x3FFC71C720000000
  br i1 %175, label %176, label %182

; <label>:176                                     ; preds = %166
  %177 = fdiv fast float 0x3FFC71C720000000, %174
  %178 = fmul fast float %177, %171
  %179 = fsub fast float 1.000000e+00, %177
  %180 = fmul fast float %179, 5.000000e-01
  %181 = fadd fast float %180, %178
  br label %190

; <label>:182                                     ; preds = %166
  %183 = fcmp fast olt float %174, 0x3FFC71C720000000
  br i1 %183, label %184, label %190

; <label>:184                                     ; preds = %182
  %185 = fmul fast float %170, 5.625000e-01
  %186 = fmul fast float %185, %174
  %187 = fmul fast float %174, 2.812500e-01
  %188 = fsub fast float 5.000000e-01, %187
  %189 = fadd fast float %188, %186
  br label %190

; <label>:190                                     ; preds = %184, %182, %176, %163
  %191 = phi float [ %48, %163 ], [ %170, %176 ], [ %189, %184 ], [ %170, %182 ]
  %192 = phi float [ %49, %163 ], [ %181, %176 ], [ %171, %184 ], [ %171, %182 ]
  %193 = and i32 %154, 16
  %194 = icmp ne i32 %193, 0
  %195 = select i1 %194, float 1.000000e+00, float %53
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = add i32 %197, 0
  %199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %199, %dx.types.Handle %61, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float %201, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = fmul fast float %203, %195
  %205 = icmp eq i32 %193, 0
  br i1 %205, label %225, label %206, !dx.controlflow.hints !72

; <label>:206                                     ; preds = %190
  %207 = add i32 %151, 64
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fadd fast float %209, 1.000000e+00
  %211 = fmul fast float %210, %53
  %212 = fsub fast float %211, %209
  %213 = fsub fast float %210, %212
  %214 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %215 = fsub fast float 1.000000e+00, %211
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %217 = fsub fast float %214, %216
  %218 = fsub fast float %204, %216
  %219 = fdiv fast float %218, %217
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = fmul fast float %220, 2.000000e+00
  %222 = fsub fast float 3.000000e+00, %221
  %223 = fmul fast float %220, %220
  %224 = fmul fast float %223, %222
  br label %225

; <label>:225                                     ; preds = %206, %190
  %226 = phi float [ %224, %206 ], [ %204, %190 ]
  %227 = fcmp fast ogt float %226, 0.000000e+00
  br i1 %227, label %229, label %228

; <label>:228                                     ; preds = %225
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %229

; <label>:229                                     ; preds = %228, %225
  %230 = call float @dx.op.unary.f32(i32 7, float %226)  ; Saturate(value)
  %231 = fmul fast float %64, 5.000000e-01
  %232 = fmul fast float %65, 5.000000e-01
  %233 = fptosi float %231 to i32
  %234 = fptosi float %232 to i32
  %235 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %233, i32 %234, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 18
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F4C00EBA0000000
  %240 = call float @dx.op.unary.f32(i32 21, float %239)  ; Exp(value)
  %241 = fadd fast float %240, -1.000000e+00
  %242 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %243 = extractvalue %dx.types.Dimensions %242, 0
  %244 = sitofp i32 %243 to float
  %245 = extractvalue %dx.types.Dimensions %242, 1
  %246 = sitofp i32 %245 to float
  %247 = fcmp fast oge float %231, %244
  %248 = fcmp fast oge float %232, %246
  %249 = or i1 %247, %248
  %250 = select i1 %249, float 0x4197782600000000, float %241
  %251 = fsub fast float %250, %57
  %252 = fcmp fast ogt float %251, 0.000000e+00
  %253 = and i32 %150, -2
  %254 = icmp eq i32 %253, 2
  %255 = and i1 %254, %252
  %256 = xor i1 %252, true
  %257 = icmp eq i32 %150, 1
  %258 = and i1 %257, %256
  %259 = or i1 %255, %258
  %260 = and i32 %154, 262144
  %261 = icmp ne i32 %260, 0
  %262 = and i1 %261, %259
  %263 = xor i1 %259, true
  %264 = and i32 %154, 131072
  %265 = icmp ne i32 %264, 0
  %266 = and i1 %265, %263
  %267 = or i1 %262, %266
  br i1 %267, label %268, label %269

; <label>:268                                     ; preds = %229
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %269

; <label>:269                                     ; preds = %268, %229
  %270 = and i32 %154, 32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %511, label %272, !dx.controlflow.hints !73

; <label>:272                                     ; preds = %269
  %273 = add i32 %151, 80
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = add i32 %151, 96
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = add i32 %151, 112
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = extractvalue %dx.types.ResRet.f32 %285, 3
  %290 = add i32 %151, 128
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = extractvalue %dx.types.ResRet.f32 %291, 3
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 4096
  %299 = icmp ne i32 %298, 0
  %300 = fcmp fast une float %283, 0.000000e+00
  %301 = and i32 %297, 64
  %302 = icmp ne i32 %301, 0
  %303 = and i32 %297, 128
  %304 = icmp eq i32 %303, 0
  %305 = and i32 %297, 2048
  %306 = icmp eq i32 %305, 0
  %307 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %308 = extractvalue %dx.types.Dimensions %307, 0
  %309 = sitofp i32 %308 to float
  %310 = extractvalue %dx.types.Dimensions %307, 1
  %311 = sitofp i32 %310 to float
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %314 = extractvalue %dx.types.CBufRet.f32 %312, 3
  %315 = fmul fast float %313, %64
  %316 = fmul fast float %314, %65
  %317 = fmul fast float %315, %309
  %318 = fmul fast float %316, %311
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %321 = fsub fast float -0.000000e+00, %320
  %322 = fptoui float %321 to i32
  %323 = fptoui float %317 to i32
  %324 = fptoui float %318 to i32
  %325 = and i32 %322, 31
  %326 = lshr i32 %323, %325
  %327 = lshr i32 %324, %325
  %328 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %322, i32 %326, i32 %327, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = fcmp fast ogt float %329, -1.000000e+00
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %333 = select i1 %330, float %332, float 1.000000e+00
  %334 = fadd fast float %329, 1.000000e+00
  %335 = fmul fast float %333, %334
  %336 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %337 = extractvalue %dx.types.CBufRet.f32 %331, 3
  %338 = fcmp fast oge float %336, %337
  %339 = select i1 %338, float 0x4197782600000000, float %336
  br i1 %306, label %410, label %340, !dx.controlflow.hints !74

; <label>:340                                     ; preds = %272
  %341 = fmul fast float %69, %313
  %342 = fmul fast float %71, %314
  %343 = fsub fast float 1.000000e+00, %341
  %344 = fsub fast float 1.000000e+00, %342
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = fmul fast float %343, %346
  %350 = fmul fast float %343, %347
  %351 = fmul fast float %343, %348
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %356 = fmul fast float %344, %353
  %357 = fmul fast float %344, %354
  %358 = fmul fast float %344, %355
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = fadd fast float %356, %360
  %364 = fadd fast float %363, %349
  %365 = fadd fast float %357, %361
  %366 = fadd fast float %365, %350
  %367 = fadd fast float %358, %362
  %368 = fadd fast float %367, %351
  %369 = fmul fast float %364, %339
  %370 = fmul fast float %366, %339
  %371 = fmul fast float %368, %339
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = fadd fast float %369, %373
  %377 = fadd fast float %370, %374
  %378 = fadd fast float %371, %375
  %379 = call float @dx.op.dot3.f32(i32 55, float %376, float %377, float %378, float %376, float %377, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = fsub fast float 1.000000e+00, %379
  %381 = fcmp fast olt float %380, %282
  %382 = fcmp fast ogt float %380, %281
  %383 = or i1 %381, %382
  %384 = select i1 %383, float 0.000000e+00, float %380
  %385 = fsub fast float %281, %282
  %386 = fsub fast float %384, %282
  %387 = fdiv fast float %386, %385
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %389 = fmul fast float %388, 2.000000e+00
  %390 = fsub fast float 3.000000e+00, %389
  %391 = fmul fast float %388, %388
  %392 = fmul fast float %391, %390
  %393 = fmul fast float %286, %50
  %394 = fmul fast float %287, %51
  %395 = fmul fast float %288, %52
  %396 = fsub fast float %393, %292
  %397 = fsub fast float %394, %293
  %398 = fsub fast float %395, %294
  %399 = fsub fast float %289, %295
  %400 = fmul fast float %392, %396
  %401 = fmul fast float %392, %397
  %402 = fmul fast float %392, %398
  %403 = fmul fast float %392, %399
  %404 = fadd fast float %400, %292
  %405 = fadd fast float %401, %293
  %406 = fadd fast float %402, %294
  %407 = fadd fast float %403, %295
  %408 = fmul fast float %275, %275
  %409 = fmul fast float %408, %384
  br label %501

; <label>:410                                     ; preds = %272
  %411 = and i32 %297, 256
  %412 = icmp eq i32 %411, 0
  %413 = fsub fast float %339, %57
  br i1 %412, label %462, label %414

; <label>:414                                     ; preds = %410
  %415 = fadd fast float %281, %57
  %416 = fcmp fast olt float %339, %57
  %417 = fcmp fast ogt float %339, %415
  %418 = or i1 %416, %417
  %419 = select i1 %418, float 0.000000e+00, float %413
  %420 = call float @dx.op.unary.f32(i32 83, float %339)  ; DerivCoarseX(value)
  %421 = call float @dx.op.unary.f32(i32 84, float %339)  ; DerivCoarseY(value)
  %422 = fmul fast float %420, %420
  %423 = fmul fast float %421, %421
  %424 = fadd fast float %423, %422
  %425 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %426 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %427 = fmul fast float %426, %425
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, %282
  %430 = fdiv fast float %413, %429
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = fmul fast float %431, 2.000000e+00
  %433 = fsub fast float 3.000000e+00, %432
  %434 = fmul fast float %431, %431
  %435 = fmul fast float %434, %433
  %436 = fsub fast float %339, %415
  %437 = fadd fast float %436, %429
  %438 = fdiv fast float %437, %429
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %440 = fmul fast float %439, 2.000000e+00
  %441 = fsub fast float 3.000000e+00, %440
  %442 = fmul fast float %439, %439
  %443 = fmul fast float %442, %441
  %444 = fsub fast float %435, %443
  %445 = fmul fast float %286, %50
  %446 = fmul fast float %287, %51
  %447 = fmul fast float %288, %52
  %448 = fsub fast float %445, %292
  %449 = fsub fast float %446, %293
  %450 = fsub fast float %447, %294
  %451 = fsub fast float %289, %295
  %452 = fmul fast float %444, %448
  %453 = fmul fast float %444, %449
  %454 = fmul fast float %444, %450
  %455 = fmul fast float %444, %451
  %456 = fadd fast float %452, %292
  %457 = fadd fast float %453, %293
  %458 = fadd fast float %454, %294
  %459 = fadd fast float %455, %295
  %460 = fmul fast float %419, %275
  %461 = call float @dx.op.unary.f32(i32 6, float %460)  ; FAbs(value)
  br label %501

; <label>:462                                     ; preds = %410
  br i1 %300, label %463, label %474

; <label>:463                                     ; preds = %462
  %464 = select i1 %302, float 5.000000e+01, float 1.000000e+00
  %465 = fmul fast float %464, %275
  %466 = fmul fast float %48, 2.000000e+00
  %467 = fmul fast float %49, 2.000000e+00
  %468 = fadd fast float %466, -1.000000e+00
  %469 = fadd fast float %467, -1.000000e+00
  %470 = call float @dx.op.dot2.f32(i32 54, float %468, float %469, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  %471 = fmul fast float %470, %283
  %472 = fsub fast float %413, %471
  %473 = fmul fast float %465, %472
  br label %501

; <label>:474                                     ; preds = %462
  br i1 %304, label %494, label %475

; <label>:475                                     ; preds = %474
  %476 = select i1 %302, float 0x3F947AE140000000, float 1.000000e+00
  %477 = fdiv fast float 1.000000e+00, %476
  %478 = fmul fast float %476, %276
  %479 = fmul fast float %476, %277
  %480 = fmul fast float %477, %278
  %481 = call float @dx.op.unary.f32(i32 6, float %413)  ; FAbs(value)
  %482 = fcmp fast olt float %481, %478
  br i1 %482, label %483, label %487, !dx.controlflow.hints !75

; <label>:483                                     ; preds = %475
  %484 = fmul fast float %477, %275
  %485 = fmul fast float %484, %481
  %486 = call float @dx.op.unary.f32(i32 6, float %485)  ; FAbs(value)
  br label %501

; <label>:487                                     ; preds = %475
  %488 = fcmp fast ogt float %481, %479
  br i1 %488, label %489, label %501

; <label>:489                                     ; preds = %487
  %490 = fsub fast float %481, %479
  %491 = fmul fast float %480, %490
  %492 = call float @dx.op.unary.f32(i32 6, float %491)  ; FAbs(value)
  %493 = fsub fast float 1.000000e+00, %492
  br label %501

; <label>:494                                     ; preds = %474
  %495 = select i1 %302, float 5.000000e+01, float 1.000000e+00
  %496 = fmul fast float %495, %275
  %497 = call float @dx.op.unary.f32(i32 6, float %251)  ; FAbs(value)
  %498 = select i1 %299, float %497, float 0x47EFFFFFE0000000
  %499 = call float @dx.op.binary.f32(i32 36, float %413, float %498)  ; FMin(a,b)
  %500 = fmul fast float %496, %499
  br label %501

; <label>:501                                     ; preds = %494, %489, %487, %483, %463, %414, %340
  %502 = phi float [ %409, %340 ], [ %461, %414 ], [ %473, %463 ], [ %500, %494 ], [ %486, %483 ], [ %493, %489 ], [ %481, %487 ]
  %503 = phi float [ %404, %340 ], [ %456, %414 ], [ %50, %463 ], [ %50, %494 ], [ %50, %483 ], [ %50, %489 ], [ %50, %487 ]
  %504 = phi float [ %405, %340 ], [ %457, %414 ], [ %51, %463 ], [ %51, %494 ], [ %51, %483 ], [ %51, %489 ], [ %51, %487 ]
  %505 = phi float [ %406, %340 ], [ %458, %414 ], [ %52, %463 ], [ %52, %494 ], [ %52, %483 ], [ %52, %489 ], [ %52, %487 ]
  %506 = phi float [ %407, %340 ], [ %459, %414 ], [ 1.000000e+00, %463 ], [ 1.000000e+00, %494 ], [ 1.000000e+00, %483 ], [ 1.000000e+00, %489 ], [ 1.000000e+00, %487 ]
  %507 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %508 = fmul fast float %507, %53
  %509 = fmul fast float %506, %230
  %510 = fmul fast float %509, %507
  br label %511

; <label>:511                                     ; preds = %501, %269
  %512 = phi float [ %503, %501 ], [ %50, %269 ]
  %513 = phi float [ %504, %501 ], [ %51, %269 ]
  %514 = phi float [ %505, %501 ], [ %52, %269 ]
  %515 = phi float [ %510, %501 ], [ %230, %269 ]
  %516 = phi float [ %508, %501 ], [ %53, %269 ]
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %519 = fptosi float %57 to i32
  %520 = sitofp i32 %519 to float
  %521 = fadd fast float %518, %520
  %522 = fmul fast float %521, 0x3FE3C6EF40000000
  %523 = frem fast float %64, 2.560000e+02
  %524 = frem fast float %65, 2.560000e+02
  %525 = fptoui float %523 to i32
  %526 = fptoui float %524 to i32
  %527 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %525, i32 %526, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = fadd fast float %528, %522
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = and i32 %154, 1
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %590, label %533, !dx.controlflow.hints !76

; <label>:533                                     ; preds = %511
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 2
  %536 = extractvalue %dx.types.ResRet.f32 %534, 3
  %537 = add i32 %151, 16
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = add i32 %151, 32
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = and i32 %154, 2
  %548 = icmp eq i32 %547, 0
  %549 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = call float @dx.op.unary.f32(i32 25, float %549)  ; Rsqrt(value)
  %551 = fmul fast float %550, %45
  %552 = fmul fast float %550, %46
  %553 = fmul fast float %550, %47
  %554 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %555 = call float @dx.op.unary.f32(i32 25, float %554)  ; Rsqrt(value)
  %556 = fmul fast float %555, %99
  %557 = fmul fast float %555, %100
  %558 = fmul fast float %555, %101
  %559 = call float @dx.op.dot3.f32(i32 55, float %556, float %557, float %558, float %551, float %552, float %553)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = fmul fast float %559, %559
  %561 = fmul fast float %560, %535
  %562 = fadd fast float %561, %536
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  br i1 %548, label %564, label %574, !dx.controlflow.hints !77

; <label>:564                                     ; preds = %533
  %565 = extractvalue %dx.types.ResRet.f32 %534, 1
  %566 = extractvalue %dx.types.ResRet.f32 %534, 0
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 3
  %569 = fmul fast float %568, %554
  %570 = fsub fast float %566, %569
  %571 = fmul fast float %570, %565
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = fmul fast float %572, %563
  br label %574

; <label>:574                                     ; preds = %564, %533
  %575 = phi float [ %573, %564 ], [ %563, %533 ]
  %576 = fsub fast float %539, %544
  %577 = fsub fast float %540, %545
  %578 = fsub fast float %541, %546
  %579 = fmul fast float %575, %576
  %580 = fmul fast float %575, %577
  %581 = fmul fast float %575, %578
  %582 = fadd fast float %579, %544
  %583 = fadd fast float %580, %545
  %584 = fadd fast float %581, %546
  %585 = fmul fast float %582, %512
  %586 = fmul fast float %583, %513
  %587 = fmul fast float %584, %514
  %588 = fmul fast float %575, %515
  %589 = fmul fast float %575, %516
  br label %590

; <label>:590                                     ; preds = %574, %511
  %591 = phi float [ %585, %574 ], [ %512, %511 ]
  %592 = phi float [ %586, %574 ], [ %513, %511 ]
  %593 = phi float [ %587, %574 ], [ %514, %511 ]
  %594 = phi float [ %588, %574 ], [ %515, %511 ]
  %595 = phi float [ %589, %574 ], [ %516, %511 ]
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = add i32 %597, 0
  %599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %599, %dx.types.Handle %60, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = extractvalue %dx.types.ResRet.f32 %602, 3
  %607 = and i32 %601, 255
  %608 = uitofp i32 %607 to float
  %609 = lshr i32 %601, 8
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %606, %608
  %613 = fadd fast float %612, %611
  %614 = fmul fast float %613, 0x3F70101000000000
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = lshr i32 %616, 8
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = lshr i32 %616, 16
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = fmul fast float %603, %591
  %629 = fmul fast float %619, %619
  %630 = fmul fast float %629, %628
  %631 = fmul fast float %604, %592
  %632 = fmul fast float %623, %623
  %633 = fmul fast float %632, %631
  %634 = fmul fast float %605, %593
  %635 = fmul fast float %627, %627
  %636 = fmul fast float %635, %634
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = add i32 %640, 0
  %642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %643 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %642, %dx.types.Handle %60, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = extractvalue %dx.types.ResRet.f32 %643, 1
  %646 = extractvalue %dx.types.ResRet.f32 %643, 3
  %647 = and i32 %638, 255
  %648 = uitofp i32 %647 to float
  %649 = lshr i32 %638, 8
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = lshr i32 %638, 16
  %653 = and i32 %652, 255
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, 0x3F70101000000000
  %656 = fmul fast float %644, %648
  %657 = fadd fast float %656, %651
  %658 = fmul fast float %657, 0x3F70101000000000
  %659 = fadd fast float %645, -5.000000e-01
  %660 = fadd fast float %646, -5.000000e-01
  %661 = fmul fast float %659, %655
  %662 = fmul fast float %660, %655
  %663 = fadd fast float %661, 5.000000e-01
  %664 = fadd fast float %662, 5.000000e-01
  %665 = fmul fast float %663, 2.000000e+00
  %666 = fadd fast float %665, -1.000000e+00
  %667 = fmul fast float %664, 2.000000e+00
  %668 = fadd fast float %667, -1.000000e+00
  %669 = fadd fast float %666, %668
  %670 = fmul fast float %669, 5.000000e-01
  %671 = fsub fast float %666, %668
  %672 = fmul fast float %671, 5.000000e-01
  %673 = call float @dx.op.unary.f32(i32 6, float %670)  ; FAbs(value)
  %674 = fsub fast float 1.000000e+00, %673
  %675 = call float @dx.op.unary.f32(i32 6, float %672)  ; FAbs(value)
  %676 = fsub fast float %674, %675
  %677 = call float @dx.op.dot3.f32(i32 55, float %670, float %672, float %676, float %670, float %672, float %676)  ; Dot3(ax,ay,az,bx,by,bz)
  %678 = call float @dx.op.unary.f32(i32 25, float %677)  ; Rsqrt(value)
  %679 = fmul fast float %670, %678
  %680 = fmul fast float %672, %678
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = fmul fast float %684, 0x3F70101020000000
  %686 = lshr i32 %682, 8
  %687 = and i32 %686, 255
  %688 = uitofp i32 %687 to float
  %689 = fmul fast float %688, 0x3F70101020000000
  %690 = lshr i32 %682, 16
  %691 = and i32 %690, 255
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %692, 0x3F70101020000000
  %694 = fmul fast float %685, %685
  %695 = fmul fast float %689, %689
  %696 = fmul fast float %693, %693
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %61, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = fmul fast float %694, %702
  %706 = fmul fast float %695, %703
  %707 = fmul fast float %696, %704
  %708 = call float @dx.op.dot2.f32(i32 54, float %679, float %680, float %679, float %680)  ; Dot2(ax,ay,bx,by)
  %709 = fsub fast float 1.000000e+00, %708
  %710 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %711 = call float @dx.op.unary.f32(i32 24, float %710)  ; Sqrt(value)
  %712 = fmul fast float %711, %45
  %713 = fmul fast float %711, %46
  %714 = fmul fast float %711, %47
  %715 = fmul fast float %679, %41
  %716 = fmul fast float %679, %42
  %717 = fmul fast float %679, %43
  %718 = fmul fast float %111, %680
  %719 = fmul fast float %112, %680
  %720 = fmul fast float %113, %680
  %721 = fadd fast float %718, %715
  %722 = fadd fast float %721, %712
  %723 = fadd fast float %719, %716
  %724 = fadd fast float %723, %713
  %725 = fadd fast float %720, %717
  %726 = fadd fast float %725, %714
  %727 = call float @dx.op.dot3.f32(i32 55, float %722, float %724, float %726, float %722, float %724, float %726)  ; Dot3(ax,ay,az,bx,by,bz)
  %728 = call float @dx.op.unary.f32(i32 25, float %727)  ; Rsqrt(value)
  %729 = fmul fast float %722, %728
  %730 = fmul fast float %724, %728
  %731 = fmul fast float %726, %728
  %732 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = call float @dx.op.unary.f32(i32 25, float %732)  ; Rsqrt(value)
  %734 = fmul fast float %733, %99
  %735 = fmul fast float %733, %100
  %736 = fmul fast float %733, %101
  %737 = fsub fast float -0.000000e+00, %734
  %738 = fsub fast float -0.000000e+00, %735
  %739 = fsub fast float -0.000000e+00, %736
  %740 = fadd fast float %614, 0xBFB99999A0000000
  %741 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %742 = fmul fast float %741, 0x3FF1C71C80000000
  %743 = call float @dx.op.binary.f32(i32 36, float %614, float 0x3FB99999A0000000)  ; FMin(a,b)
  %744 = fsub fast float 1.000000e+00, %742
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %746 = fmul fast float %745, %630
  %747 = fmul fast float %745, %633
  %748 = fmul fast float %745, %636
  %749 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %750 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %751 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %752 = fmul fast float %742, %630
  %753 = fmul fast float %742, %633
  %754 = fmul fast float %742, %636
  %755 = fadd fast float %752, %743
  %756 = fadd fast float %753, %743
  %757 = fadd fast float %754, %743
  %758 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %759 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %760 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %761 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %762 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 255
  %766 = uitofp i32 %765 to float
  %767 = lshr i32 %764, 8
  %768 = and i32 %767, 255
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, %762
  %771 = fadd fast float %770, %766
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = and i32 %154, 8192
  %775 = icmp eq i32 %774, 0
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  br i1 %775, label %784, label %778, !dx.controlflow.hints !78

; <label>:778                                     ; preds = %590
  %779 = add i32 %151, 176
  %780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = fcmp fast oge float %781, 0.000000e+00
  %783 = select i1 %782, float %781, float %777
  br label %790

; <label>:784                                     ; preds = %590
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = bitcast i32 %786 to float
  %788 = fcmp fast oge float %787, 0.000000e+00
  %789 = select i1 %788, float %787, float %777
  br label %790

; <label>:790                                     ; preds = %784, %778
  %791 = phi float [ %783, %778 ], [ %789, %784 ]
  %792 = fsub fast float 1.000000e+00, %705
  %793 = fmul fast float %792, %595
  %794 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %233, i32 %234, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = lshr i32 %795, 18
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F4C00EBA0000000
  %799 = call float @dx.op.unary.f32(i32 21, float %798)  ; Exp(value)
  %800 = fadd fast float %799, -1.000000e+00
  %801 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %802 = extractvalue %dx.types.Dimensions %801, 0
  %803 = sitofp i32 %802 to float
  %804 = extractvalue %dx.types.Dimensions %801, 1
  %805 = sitofp i32 %804 to float
  %806 = fcmp fast oge float %231, %803
  %807 = fcmp fast oge float %232, %805
  %808 = or i1 %806, %807
  %809 = select i1 %808, float 0x4197782600000000, float %800
  %810 = icmp eq i32 %150, 3
  %811 = fcmp fast ogt float %57, %809
  %812 = and i1 %257, %811
  %813 = or i1 %810, %812
  %814 = icmp eq i32 %150, 2
  %815 = fcmp fast ole float %57, %809
  %816 = and i1 %814, %815
  %817 = or i1 %816, %813
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 3
  %820 = fcmp fast ogt float %819, 0.000000e+00
  br i1 %820, label %821, label %828

; <label>:821                                     ; preds = %790
  %822 = fmul fast float %730, 0xBFDF454380000000
  %823 = fmul fast float %731, 0x3FDF454380000000
  %824 = fmul fast float %729, 0xBFDF454380000000
  %825 = call float @dx.op.dot4.f32(i32 56, float %37, float %38, float %39, float %40, float 0x3FD20DD760000000, float %822, float %823, float %824)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %826 = call float @dx.op.dot4.f32(i32 56, float %33, float %34, float %35, float %36, float 0x3FD20DD760000000, float %822, float %823, float %824)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %827 = call float @dx.op.dot4.f32(i32 56, float %29, float %30, float %31, float %32, float 0x3FD20DD760000000, float %822, float %823, float %824)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %828

; <label>:828                                     ; preds = %821, %790
  %829 = phi float [ %825, %821 ], [ %37, %790 ]
  %830 = phi float [ %826, %821 ], [ %38, %790 ]
  %831 = phi float [ %827, %821 ], [ %39, %790 ]
  %832 = call float @dx.op.dot3.f32(i32 55, float %729, float %730, float %731, float %737, float %738, float %739)  ; Dot3(ax,ay,az,bx,by,bz)
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  br i1 %820, label %834, label %934

; <label>:834                                     ; preds = %828
  %835 = fsub fast float -0.000000e+00, %32
  %836 = fsub fast float %835, %36
  %837 = fsub fast float %836, %40
  %838 = fsub fast float -0.000000e+00, %30
  %839 = fsub fast float %838, %34
  %840 = fsub fast float %839, %38
  %841 = fadd fast float %35, %31
  %842 = fadd fast float %841, %39
  %843 = call float @dx.op.dot3.f32(i32 55, float %837, float %840, float %842, float %837, float %840, float %842)  ; Dot3(ax,ay,az,bx,by,bz)
  %844 = call float @dx.op.unary.f32(i32 25, float %843)  ; Rsqrt(value)
  %845 = fmul fast float %844, %837
  %846 = fmul fast float %844, %840
  %847 = fmul fast float %844, %842
  %848 = fmul fast float %846, 0xBFD4D8D7C0000000
  %849 = fmul fast float %847, 0x3FD4D8D7C0000000
  %850 = fmul fast float %845, 0xBFD4D8D7C0000000
  %851 = call float @dx.op.dot4.f32(i32 56, float %37, float %38, float %39, float %40, float 0x3FD20DD760000000, float %848, float %849, float %850)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %852 = call float @dx.op.dot4.f32(i32 56, float %33, float %34, float %35, float %36, float 0x3FD20DD760000000, float %848, float %849, float %850)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %853 = call float @dx.op.dot4.f32(i32 56, float %29, float %30, float %31, float %32, float 0x3FD20DD760000000, float %848, float %849, float %850)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %854 = fmul fast float %851, 0x4003333340000000
  %855 = fmul fast float %37, 0x3FE5AA35A0000000
  %856 = fsub fast float %854, %855
  %857 = fmul fast float %852, 0x4003333340000000
  %858 = fmul fast float %33, 0x3FE5AA35A0000000
  %859 = fsub fast float %857, %858
  %860 = fmul fast float %853, 0x4003333340000000
  %861 = fmul fast float %29, 0x3FE5AA35A0000000
  %862 = fsub fast float %860, %861
  %863 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %856)  ; FMax(a,b)
  %864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %859)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %862)  ; FMax(a,b)
  %866 = fsub fast float %845, %734
  %867 = fsub fast float %846, %735
  %868 = fsub fast float %847, %736
  %869 = call float @dx.op.dot3.f32(i32 55, float %866, float %867, float %868, float %866, float %867, float %868)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = call float @dx.op.unary.f32(i32 25, float %869)  ; Rsqrt(value)
  %871 = fmul fast float %870, %866
  %872 = fmul fast float %870, %867
  %873 = fmul fast float %870, %868
  %874 = call float @dx.op.dot3.f32(i32 55, float %729, float %730, float %731, float %845, float %846, float %847)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = call float @dx.op.unary.f32(i32 6, float %874)  ; FAbs(value)
  %876 = call float @dx.op.dot3.f32(i32 55, float %729, float %730, float %731, float %871, float %872, float %873)  ; Dot3(ax,ay,az,bx,by,bz)
  %877 = fmul fast float %876, %876
  %878 = call float @dx.op.dot3.f32(i32 55, float %737, float %738, float %739, float %871, float %872, float %873)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = call float @dx.op.unary.f32(i32 6, float %878)  ; FAbs(value)
  %880 = fsub fast float 1.000000e+00, %761
  %881 = call float @dx.op.binary.f32(i32 35, float %880, float 0x3F847AE140000000)  ; FMax(a,b)
  %882 = fmul fast float %881, %881
  %883 = fmul fast float %882, %882
  %884 = fsub fast float 1.000000e+00, %883
  %885 = fmul fast float %833, %833
  %886 = fmul fast float %885, %884
  %887 = fadd fast float %886, %883
  %888 = bitcast float %887 to i32
  %889 = ashr i32 %888, 1
  %890 = add nsw i32 %889, 532487669
  %891 = bitcast i32 %890 to float
  %892 = fadd fast float %891, %833
  %893 = fmul fast float %883, %877
  %894 = fsub fast float 1.000000e+00, %877
  %895 = fadd fast float %894, %893
  %896 = fmul fast float %875, %875
  %897 = fmul fast float %896, %884
  %898 = fadd fast float %897, %883
  %899 = bitcast float %898 to i32
  %900 = ashr i32 %899, 1
  %901 = add nsw i32 %900, 532487669
  %902 = bitcast i32 %901 to float
  %903 = fadd fast float %902, %875
  %904 = fmul fast float %895, %895
  %905 = fmul fast float %904, %892
  %906 = fmul fast float %905, %903
  %907 = fdiv fast float 1.000000e+00, %906
  %908 = fmul fast float %883, %907
  %909 = fsub fast float 1.000000e+00, %879
  %910 = bitcast float %909 to i32
  %911 = sitofp i32 %910 to float
  %912 = fmul fast float %911, 5.000000e+00
  %913 = fadd fast float %912, 0xC1EFBF8940000000
  %914 = fptosi float %913 to i32
  %915 = bitcast i32 %914 to float
  %916 = fsub fast float 1.000000e+00, %758
  %917 = fsub fast float 1.000000e+00, %759
  %918 = fsub fast float 1.000000e+00, %760
  %919 = fmul fast float %915, %916
  %920 = fmul fast float %915, %917
  %921 = fmul fast float %915, %918
  %922 = fadd fast float %919, %758
  %923 = fadd fast float %920, %759
  %924 = fadd fast float %921, %760
  %925 = fmul fast float %908, %863
  %926 = fmul fast float %925, %922
  %927 = fmul fast float %908, %864
  %928 = fmul fast float %927, %923
  %929 = fmul fast float %908, %865
  %930 = fmul fast float %929, %924
  %931 = call float @dx.op.binary.f32(i32 35, float %926, float 0.000000e+00)  ; FMax(a,b)
  %932 = call float @dx.op.binary.f32(i32 35, float %928, float 0.000000e+00)  ; FMax(a,b)
  %933 = call float @dx.op.binary.f32(i32 35, float %930, float 0.000000e+00)  ; FMax(a,b)
  br label %934

; <label>:934                                     ; preds = %834, %828
  %935 = phi float [ %931, %834 ], [ 0.000000e+00, %828 ]
  %936 = phi float [ %932, %834 ], [ 0.000000e+00, %828 ]
  %937 = phi float [ %933, %834 ], [ 0.000000e+00, %828 ]
  %938 = fmul fast float %833, 9.843750e-01
  %939 = fmul fast float %761, 9.843750e-01
  %940 = fadd fast float %938, 7.812500e-03
  %941 = fadd fast float %939, 7.812500e-03
  %942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %24, float %940, float %941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 2
  %944 = extractvalue %dx.types.ResRet.f32 %942, 3
  %945 = fmul fast float %943, %758
  %946 = fmul fast float %943, %759
  %947 = fmul fast float %943, %760
  %948 = fadd fast float %945, %944
  %949 = fadd fast float %946, %944
  %950 = fadd fast float %947, %944
  %951 = call float @dx.op.binary.f32(i32 35, float %949, float %950)  ; FMax(a,b)
  %952 = call float @dx.op.binary.f32(i32 35, float %948, float %951)  ; FMax(a,b)
  %953 = fsub fast float 1.000000e+00, %952
  %954 = call float @dx.op.dot3.f32(i32 55, float %734, float %735, float %736, float %729, float %730, float %731)  ; Dot3(ax,ay,az,bx,by,bz)
  %955 = fmul fast float %954, 2.000000e+00
  %956 = fmul fast float %955, %729
  %957 = fmul fast float %955, %730
  %958 = fmul fast float %955, %731
  %959 = fsub fast float %734, %956
  %960 = fsub fast float %735, %957
  %961 = fsub fast float %736, %958
  br i1 %820, label %962, label %969

; <label>:962                                     ; preds = %934
  %963 = fmul fast float %960, 0xBFDF454380000000
  %964 = fmul fast float %961, 0x3FDF454380000000
  %965 = fmul fast float %959, 0xBFDF454380000000
  %966 = call float @dx.op.dot4.f32(i32 56, float %37, float %38, float %39, float %40, float 0x3FD20DD760000000, float %963, float %964, float %965)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %967 = call float @dx.op.dot4.f32(i32 56, float %33, float %34, float %35, float %36, float 0x3FD20DD760000000, float %963, float %964, float %965)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %968 = call float @dx.op.dot4.f32(i32 56, float %29, float %30, float %31, float %32, float 0x3FD20DD760000000, float %963, float %964, float %965)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %969

; <label>:969                                     ; preds = %962, %934
  %970 = phi float [ %966, %962 ], [ %37, %934 ]
  %971 = phi float [ %967, %962 ], [ %38, %934 ]
  %972 = phi float [ %968, %962 ], [ %39, %934 ]
  %973 = call float @dx.op.dot3.f32(i32 55, float %970, float %971, float %972, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 3
  %977 = fmul fast float %975, %64
  %978 = fmul fast float %976, %65
  %979 = fptoui float %977 to i32
  %980 = fptoui float %978 to i32
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %985 = fadd fast float %57, -4.000000e+00
  %986 = call float @dx.op.binary.f32(i32 35, float %985, float 0.000000e+00)  ; FMax(a,b)
  %987 = fadd fast float %986, %982
  %988 = fmul fast float %987, %983
  %989 = call float @dx.op.unary.f32(i32 23, float %988)  ; Log(value)
  %990 = fmul fast float %989, %984
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %993 = fmul fast float %990, %992
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.i32 %995, 1
  %997 = add i32 %996, -1
  %998 = uitofp i32 %996 to float
  %999 = fmul fast float %998, %994
  %1000 = fptoui float %999 to i32
  %1001 = call i32 @dx.op.binary.i32(i32 40, i32 %1000, i32 %997)  ; UMin(a,b)
  %1002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.i32 %1002, 2
  %1004 = extractvalue %dx.types.CBufRet.i32 %1002, 3
  %1005 = call i32 @dx.op.tertiary.i32(i32 49, i32 %980, i32 %1003, i32 %979)  ; UMad(a,b,c)
  %1006 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1001, i32 %1004, i32 %1005)  ; UMad(a,b,c)
  %1007 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %1008 = fptoui float %1007 to i32
  %1009 = lshr i32 %1008, 5
  %1010 = call i32 @dx.op.binary.i32(i32 40, i32 %1009, i32 8191)  ; UMin(a,b)
  %1011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.i32 %1011, 2
  %1013 = add nsw i32 %1012, -1
  %1014 = call i32 @dx.op.binary.i32(i32 37, i32 %1013, i32 0)  ; IMax(a,b)
  %1015 = shl i32 %1010, 2
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = lshr i32 %1017, 16
  %1019 = and i32 %1017, 65535
  %1020 = lshr i32 %1017, 21
  %1021 = lshr i32 %1019, 5
  %1022 = call i32 @dx.op.binary.i32(i32 40, i32 %1021, i32 %1014)  ; UMin(a,b)
  %1023 = icmp ugt i32 %1020, %1022
  br i1 %1023, label %1386, label %1024

; <label>:1024                                    ; preds = %969
  br label %1025

; <label>:1025                                    ; preds = %1378, %1024
  %1026 = phi float [ %1379, %1378 ], [ 0.000000e+00, %1024 ]
  %1027 = phi float [ %1380, %1378 ], [ 0.000000e+00, %1024 ]
  %1028 = phi float [ %1381, %1378 ], [ 0.000000e+00, %1024 ]
  %1029 = phi float [ %1382, %1378 ], [ 1.000000e+00, %1024 ]
  %1030 = phi i32 [ %1383, %1378 ], [ %1020, %1024 ]
  %1031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.i32 %1031, 2
  %1033 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1006, i32 %1032, i32 %1030)  ; UMad(a,b,c)
  %1034 = shl i32 %1033, 2
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = shl i32 %1030, 5
  %1038 = sub nsw i32 %1018, %1037
  %1039 = call i32 @dx.op.binary.i32(i32 37, i32 %1038, i32 0)  ; IMax(a,b)
  %1040 = call i32 @dx.op.binary.i32(i32 38, i32 %1039, i32 31)  ; IMin(a,b)
  %1041 = sub nsw i32 1, %1018
  %1042 = add nsw i32 %1041, %1019
  %1043 = call i32 @dx.op.binary.i32(i32 37, i32 %1042, i32 0)  ; IMax(a,b)
  %1044 = call i32 @dx.op.binary.i32(i32 38, i32 %1043, i32 32)  ; IMin(a,b)
  %1045 = and i32 %1044, 31
  %1046 = shl i32 -1, %1045
  %1047 = xor i32 %1046, -1
  %1048 = and i32 %1040, 31
  %1049 = shl i32 %1047, %1048
  %1050 = icmp eq i32 %1044, 32
  %1051 = select i1 %1050, i32 -1, i32 %1049
  %1052 = and i32 %1051, %1036
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1378, label %1054

; <label>:1054                                    ; preds = %1025
  br label %1055

; <label>:1055                                    ; preds = %1161, %1054
  %1056 = phi float [ %1162, %1161 ], [ %1026, %1054 ]
  %1057 = phi float [ %1163, %1161 ], [ %1027, %1054 ]
  %1058 = phi float [ %1164, %1161 ], [ %1028, %1054 ]
  %1059 = phi float [ %1165, %1161 ], [ %1029, %1054 ]
  %1060 = phi i32 [ %1065, %1161 ], [ %1052, %1054 ]
  %1061 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1060)  ; FirstbitLo(value)
  %1062 = add i32 %1061, %1037
  %1063 = and i32 %1061, 31
  %1064 = shl i32 1, %1063
  %1065 = xor i32 %1064, %1060
  %1066 = mul i32 %1062, 72
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.f32 %1067, 2
  %1071 = add i32 %1066, 12
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1066, 16
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = add i32 %1066, 28
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = add i32 %1066, 32
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = add i32 %1066, 48
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = add i32 %1066, 56
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = add i32 %1066, 64
  %1097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 1
  %1100 = mul i32 %1062, 60
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1105 = add i32 %1100, 12
  %1106 = add i32 %1100, 48
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = and i32 %1073, 32767
  %1112 = bitcast float %1068 to i32
  %1113 = icmp eq i32 %1112, -1
  %1114 = bitcast float %1069 to i32
  %1115 = and i32 %1073, 32768
  %1116 = icmp ne i32 %1115, 0
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = fsub fast float %1102, %1118
  %1122 = fsub fast float %1103, %1119
  %1123 = fsub fast float %1104, %1120
  %1124 = fsub fast float %99, %1121
  %1125 = fsub fast float %100, %1122
  %1126 = fsub fast float %101, %1123
  %1127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.ResRet.f32 %1127, 1
  %1130 = extractvalue %dx.types.ResRet.f32 %1127, 2
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float %1128, float %1129, float %1130)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = add i32 %1100, 24
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float %1134, float %1135, float %1136)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = add i32 %1100, 36
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float %1140, float %1141, float %1142)  ; Dot3(ax,ay,az,bx,by,bz)
  %1144 = call float @dx.op.unary.f32(i32 6, float %1131)  ; FAbs(value)
  %1145 = call float @dx.op.unary.f32(i32 6, float %1137)  ; FAbs(value)
  %1146 = call float @dx.op.unary.f32(i32 6, float %1143)  ; FAbs(value)
  %1147 = fsub fast float %1108, %1144
  %1148 = fsub fast float %1109, %1145
  %1149 = fsub fast float %1110, %1146
  %1150 = fmul fast float %1147, %1076
  %1151 = fmul fast float %1148, %1077
  %1152 = fmul fast float %1149, %1078
  %1153 = call float @dx.op.binary.f32(i32 36, float %1151, float %1152)  ; FMin(a,b)
  %1154 = call float @dx.op.binary.f32(i32 36, float %1150, float %1153)  ; FMin(a,b)
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = call float @dx.op.binary.f32(i32 36, float %1059, float %1155)  ; FMin(a,b)
  %1157 = uitofp i1 %1116 to float
  %1158 = fsub fast float 1.000000e+00, %1157
  %1159 = fmul fast float %1156, %1158
  %1160 = fcmp fast ogt float %1159, 0.000000e+00
  br i1 %1160, label %1167, label %1161

; <label>:1161                                    ; preds = %1309, %1055
  %1162 = phi float [ %1373, %1309 ], [ %1056, %1055 ]
  %1163 = phi float [ %1374, %1309 ], [ %1057, %1055 ]
  %1164 = phi float [ %1375, %1309 ], [ %1058, %1055 ]
  %1165 = phi float [ %1376, %1309 ], [ %1059, %1055 ]
  %1166 = icmp eq i32 %1060, %1064
  br i1 %1166, label %1377, label %1055

; <label>:1167                                    ; preds = %1055
  br i1 %1113, label %1225, label %1168

; <label>:1168                                    ; preds = %1167
  %1169 = fsub fast float -0.000000e+00, %1128
  %1170 = fsub fast float -0.000000e+00, %1129
  %1171 = fsub fast float -0.000000e+00, %1130
  %1172 = call float @dx.op.dot3.f32(i32 55, float %959, float %960, float %961, float %1169, float %1170, float %1171)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = fsub fast float -0.000000e+00, %1172
  %1174 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float %1169, float %1170, float %1171)  ; Dot3(ax,ay,az,bx,by,bz)
  %1175 = fadd fast float %1174, %1091
  %1176 = fadd fast float %1090, %1174
  %1177 = fsub fast float -0.000000e+00, %1176
  %1178 = fcmp ogt float %1172, -0.000000e+00
  %1179 = select i1 %1178, float %1177, float %1175
  %1180 = call float @dx.op.unary.f32(i32 6, float %1173)  ; FAbs(value)
  %1181 = fdiv fast float 1.000000e+00, %1180
  %1182 = fmul fast float %1179, %1181
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float 0.000000e+00)  ; FMax(a,b)
  %1184 = fsub fast float -0.000000e+00, %1134
  %1185 = fsub fast float -0.000000e+00, %1135
  %1186 = fsub fast float -0.000000e+00, %1136
  %1187 = call float @dx.op.dot3.f32(i32 55, float %959, float %960, float %961, float %1184, float %1185, float %1186)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = fsub fast float -0.000000e+00, %1187
  %1189 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float %1184, float %1185, float %1186)  ; Dot3(ax,ay,az,bx,by,bz)
  %1190 = fadd fast float %1189, %1095
  %1191 = fadd fast float %1094, %1189
  %1192 = fsub fast float -0.000000e+00, %1191
  %1193 = fcmp ogt float %1187, -0.000000e+00
  %1194 = select i1 %1193, float %1192, float %1190
  %1195 = call float @dx.op.unary.f32(i32 6, float %1188)  ; FAbs(value)
  %1196 = fdiv fast float 1.000000e+00, %1195
  %1197 = fmul fast float %1194, %1196
  %1198 = call float @dx.op.binary.f32(i32 35, float %1197, float 0.000000e+00)  ; FMax(a,b)
  %1199 = fsub fast float -0.000000e+00, %1140
  %1200 = fsub fast float -0.000000e+00, %1141
  %1201 = fsub fast float -0.000000e+00, %1142
  %1202 = call float @dx.op.dot3.f32(i32 55, float %959, float %960, float %961, float %1199, float %1200, float %1201)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = fsub fast float -0.000000e+00, %1202
  %1204 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float %1199, float %1200, float %1201)  ; Dot3(ax,ay,az,bx,by,bz)
  %1205 = fadd fast float %1204, %1099
  %1206 = fadd fast float %1098, %1204
  %1207 = fsub fast float -0.000000e+00, %1206
  %1208 = fcmp ogt float %1202, -0.000000e+00
  %1209 = select i1 %1208, float %1207, float %1205
  %1210 = call float @dx.op.unary.f32(i32 6, float %1203)  ; FAbs(value)
  %1211 = fdiv fast float 1.000000e+00, %1210
  %1212 = fmul fast float %1209, %1211
  %1213 = call float @dx.op.binary.f32(i32 35, float %1212, float 0.000000e+00)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 36, float %1198, float %1213)  ; FMin(a,b)
  %1215 = call float @dx.op.binary.f32(i32 36, float %1183, float %1214)  ; FMin(a,b)
  %1216 = fmul fast float %1215, %959
  %1217 = fmul fast float %1215, %960
  %1218 = fmul fast float %1215, %961
  %1219 = fadd fast float %1216, %99
  %1220 = fadd fast float %1217, %100
  %1221 = fadd fast float %1218, %101
  %1222 = fsub fast float %1219, %1068
  %1223 = fsub fast float %1220, %1069
  %1224 = fsub fast float %1221, %1070
  br label %1232

; <label>:1225                                    ; preds = %1167
  %1226 = fmul fast float %959, 8.096000e+03
  %1227 = fmul fast float %960, 8.096000e+03
  %1228 = fmul fast float %961, 8.096000e+03
  %1229 = fadd fast float %1226, %99
  %1230 = fadd fast float %1227, %100
  %1231 = fadd fast float %1228, %101
  br label %1232

; <label>:1232                                    ; preds = %1225, %1168
  %1233 = phi float [ %959, %1225 ], [ %1222, %1168 ]
  %1234 = phi float [ %960, %1225 ], [ %1223, %1168 ]
  %1235 = phi float [ %961, %1225 ], [ %1224, %1168 ]
  %1236 = phi float [ %1229, %1225 ], [ %1219, %1168 ]
  %1237 = phi float [ %1230, %1225 ], [ %1220, %1168 ]
  %1238 = phi float [ %1231, %1225 ], [ %1221, %1168 ]
  %1239 = fcmp fast olt float %1087, 1.000000e+00
  br i1 %1239, label %1240, label %1271, !dx.controlflow.hints !79

; <label>:1240                                    ; preds = %1232
  %1241 = fmul fast float %1235, %1085
  %1242 = fmul fast float %1234, %1086
  %1243 = fsub fast float %1241, %1242
  %1244 = fmul fast float %1233, %1086
  %1245 = fmul fast float %1235, %1084
  %1246 = fsub fast float %1244, %1245
  %1247 = fmul fast float %1234, %1084
  %1248 = fmul fast float %1233, %1085
  %1249 = fsub fast float %1247, %1248
  %1250 = fmul fast float %1243, 2.000000e+00
  %1251 = fmul fast float %1246, 2.000000e+00
  %1252 = fmul fast float %1249, 2.000000e+00
  %1253 = fmul fast float %1250, %1087
  %1254 = fmul fast float %1251, %1087
  %1255 = fmul fast float %1252, %1087
  %1256 = fmul fast float %1252, %1085
  %1257 = fmul fast float %1251, %1086
  %1258 = fmul fast float %1250, %1086
  %1259 = fmul fast float %1252, %1084
  %1260 = fmul fast float %1251, %1084
  %1261 = fmul fast float %1250, %1085
  %1262 = fadd fast float %1256, %1233
  %1263 = fadd fast float %1262, %1253
  %1264 = fsub fast float %1263, %1257
  %1265 = fsub fast float %1234, %1259
  %1266 = fadd fast float %1265, %1254
  %1267 = fadd fast float %1266, %1258
  %1268 = fadd fast float %1255, %1235
  %1269 = fsub fast float %1268, %1261
  %1270 = fadd fast float %1269, %1260
  br label %1271

; <label>:1271                                    ; preds = %1240, %1232
  %1272 = phi float [ %1264, %1240 ], [ %1233, %1232 ]
  %1273 = phi float [ %1267, %1240 ], [ %1234, %1232 ]
  %1274 = phi float [ %1270, %1240 ], [ %1235, %1232 ]
  br i1 %1113, label %1306, label %1275

; <label>:1275                                    ; preds = %1271
  %1276 = fmul fast float %761, 0x400187C840000000
  %1277 = fadd fast float %1276, 0xC00EFC2120000000
  %1278 = fmul fast float %1277, %761
  %1279 = fadd fast float %1278, 0x3FE5D16340000000
  %1280 = fmul fast float %1279, %761
  %1281 = fadd fast float %1280, 1.000000e+00
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1283 = fsub fast float %1236, %99
  %1284 = fsub fast float %1237, %100
  %1285 = fsub fast float %1238, %101
  %1286 = fsub fast float %1236, %1068
  %1287 = fsub fast float %1237, %1069
  %1288 = fsub fast float %1238, %1070
  %1289 = call float @dx.op.dot3.f32(i32 55, float %1283, float %1284, float %1285, float %1283, float %1284, float %1285)  ; Dot3(ax,ay,az,bx,by,bz)
  %1290 = call float @dx.op.dot3.f32(i32 55, float %1286, float %1287, float %1288, float %1286, float %1287, float %1288)  ; Dot3(ax,ay,az,bx,by,bz)
  %1291 = fadd fast float %1290, 0x3EE4F8B580000000
  %1292 = fdiv fast float %1289, %1291
  %1293 = bitcast float %1292 to i32
  %1294 = ashr i32 %1293, 1
  %1295 = add nsw i32 %1294, 532487669
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1296, %1282
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = fmul fast float %1298, 0x4009981AE0000000
  %1300 = fsub fast float 0x40111BBD80000000, %1299
  %1301 = fmul fast float %1300, %1298
  %1302 = fadd fast float %1301, 0xC0009F6020000000
  %1303 = fmul fast float %1302, %1298
  %1304 = fadd fast float %1303, 1.000000e+00
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  br label %1309

; <label>:1306                                    ; preds = %1271
  %1307 = icmp ne i32 %1114, -1
  %1308 = zext i1 %1307 to i32
  br label %1309

; <label>:1309                                    ; preds = %1306, %1275
  %1310 = phi float [ %761, %1306 ], [ %1305, %1275 ]
  %1311 = phi i32 [ %1308, %1306 ], [ 0, %1275 ]
  %1312 = fmul float %1310, 5.000000e+00
  %1313 = fsub float 5.000000e+00, %1312
  %1314 = icmp ne i32 %1311, 0
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1317 = fadd fast float %1316, %1313
  %1318 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1317)  ; FMax(a,b)
  %1319 = call float @dx.op.unary.f32(i32 6, float %1272)  ; FAbs(value)
  %1320 = call float @dx.op.unary.f32(i32 6, float %1273)  ; FAbs(value)
  %1321 = fadd fast float %1320, %1319
  %1322 = call float @dx.op.unary.f32(i32 6, float %1274)  ; FAbs(value)
  %1323 = fadd fast float %1321, %1322
  %1324 = fcmp fast oeq float %1323, 0.000000e+00
  %1325 = fdiv fast float 1.000000e+00, %1323
  %1326 = select i1 %1324, float 1.000000e+00, float %1325
  %1327 = fmul fast float %1326, %1272
  %1328 = fmul fast float %1326, %1273
  %1329 = call float @dx.op.unary.f32(i32 6, float %1328)  ; FAbs(value)
  %1330 = call float @dx.op.unary.f32(i32 6, float %1327)  ; FAbs(value)
  %1331 = fsub fast float 1.000000e+00, %1329
  %1332 = fsub fast float 1.000000e+00, %1330
  %1333 = fcmp fast oge float %1327, 0.000000e+00
  %1334 = fcmp fast oge float %1328, 0.000000e+00
  %1335 = select i1 %1333, float 1.000000e+00, float -1.000000e+00
  %1336 = select i1 %1334, float 1.000000e+00, float -1.000000e+00
  %1337 = fcmp fast ole float %1274, 0.000000e+00
  %1338 = fmul fast float %1335, %1331
  %1339 = fmul fast float %1336, %1332
  %1340 = select i1 %1337, float %1338, float %1327
  %1341 = select i1 %1337, float %1339, float %1328
  %1342 = fmul fast float %1340, 5.000000e-01
  %1343 = fmul fast float %1341, 5.000000e-01
  %1344 = fadd fast float %1342, 5.000000e-01
  %1345 = fadd fast float %1343, 5.000000e-01
  %1346 = uitofp i32 %1111 to float
  %1347 = call float @dx.op.binary.f32(i32 36, float %1318, float 3.000000e+00)  ; FMin(a,b)
  %1348 = fadd fast float %1347, 2.000000e+00
  %1349 = call float @dx.op.unary.f32(i32 21, float %1348)  ; Exp(value)
  %1350 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1351 = fmul fast float %1350, %1349
  %1352 = fmul fast float %1351, 2.000000e+00
  %1353 = fsub fast float 1.000000e+00, %1352
  %1354 = fmul fast float %1344, %1353
  %1355 = fmul fast float %1345, %1353
  %1356 = fadd fast float %1354, %1351
  %1357 = fadd fast float %1355, %1351
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %23, float %1356, float %1357, float %1346, float undef, i32 0, i32 0, i32 undef, float %1318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1364 = fmul fast float %1363, %1081
  %1365 = call float @dx.op.binary.f32(i32 36, float %973, float %1364)  ; FMin(a,b)
  %1366 = select i1 %1314, float %1365, float %1364
  %1367 = fmul fast float %1359, %1159
  %1368 = fmul fast float %1367, %1366
  %1369 = fmul fast float %1360, %1159
  %1370 = fmul fast float %1369, %1366
  %1371 = fmul fast float %1361, %1159
  %1372 = fmul fast float %1371, %1366
  %1373 = fadd fast float %1368, %1056
  %1374 = fadd fast float %1370, %1057
  %1375 = fadd fast float %1372, %1058
  %1376 = fsub fast float %1059, %1159
  br label %1161

; <label>:1377                                    ; preds = %1161
  br label %1378

; <label>:1378                                    ; preds = %1377, %1025
  %1379 = phi float [ %1026, %1025 ], [ %1162, %1377 ]
  %1380 = phi float [ %1027, %1025 ], [ %1163, %1377 ]
  %1381 = phi float [ %1028, %1025 ], [ %1164, %1377 ]
  %1382 = phi float [ %1029, %1025 ], [ %1165, %1377 ]
  %1383 = add i32 %1030, 1
  %1384 = icmp ugt i32 %1383, %1022
  br i1 %1384, label %1385, label %1025, !llvm.loop !80

; <label>:1385                                    ; preds = %1378
  br label %1386

; <label>:1386                                    ; preds = %1385, %969
  %1387 = phi float [ 0.000000e+00, %969 ], [ %1379, %1385 ]
  %1388 = phi float [ 0.000000e+00, %969 ], [ %1380, %1385 ]
  %1389 = phi float [ 0.000000e+00, %969 ], [ %1381, %1385 ]
  %1390 = call float @dx.op.dot3.f32(i32 55, float %1387, float %1388, float %1389, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1391 = select i1 %134, float 0.000000e+00, float %1387
  %1392 = select i1 %134, float %1390, float %1388
  %1393 = select i1 %134, float 0.000000e+00, float %1389
  %1394 = fmul fast float %1391, %948
  %1395 = fmul fast float %1392, %949
  %1396 = fmul fast float %1393, %950
  %1397 = call float @dx.op.binary.f32(i32 35, float %1394, float 0.000000e+00)  ; FMax(a,b)
  %1398 = call float @dx.op.binary.f32(i32 35, float %1395, float 0.000000e+00)  ; FMax(a,b)
  %1399 = call float @dx.op.binary.f32(i32 35, float %1396, float 0.000000e+00)  ; FMax(a,b)
  %1400 = fadd fast float %1397, %935
  %1401 = fadd fast float %1398, %936
  %1402 = fadd fast float %1399, %937
  %1403 = fmul fast float %1400, %594
  %1404 = fmul fast float %1401, %594
  %1405 = fmul fast float %1402, %594
  %1406 = fadd fast float %705, -1.000000e+00
  %1407 = fadd fast float %706, -1.000000e+00
  %1408 = fadd fast float %707, -1.000000e+00
  %1409 = fmul fast float %1406, %594
  %1410 = fmul fast float %1407, %594
  %1411 = fmul fast float %1408, %594
  %1412 = fadd fast float %1409, 1.000000e+00
  %1413 = fadd fast float %1410, 1.000000e+00
  %1414 = fadd fast float %1411, 1.000000e+00
  %1415 = call float @dx.op.dot3.f32(i32 55, float %1412, float %1413, float %1414, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1416 = fsub fast float 1.000000e+00, %1415
  %1417 = fmul fast float %791, %773
  %1418 = fsub fast float 1.000000e+00, %793
  %1419 = fsub fast float %1418, %773
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 3
  %1423 = fmul fast float %1422, %1420
  %1424 = fadd fast float %1423, %1417
  %1425 = and i32 %154, 1048576
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1511, label %1427, !dx.controlflow.hints !82

; <label>:1427                                    ; preds = %1386
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 2
  %1430 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1431 = fmul fast float %1429, %64
  %1432 = fmul fast float %1430, %65
  %1433 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1434 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1435 = select i1 %817, i32 2, i32 0
  %1436 = or i32 %1435, 1
  %1437 = uitofp i32 %1436 to float
  %1438 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %1433, float %1434, float %1437, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = extractvalue %dx.types.ResRet.f32 %1438, 3
  %1443 = add nuw nsw i32 %1435, 2
  %1444 = uitofp i32 %1443 to float
  %1445 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %1433, float %1434, float %1444, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = extractvalue %dx.types.ResRet.f32 %1445, 3
  %1450 = call float @dx.op.binary.f32(i32 35, float %1440, float %1441)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 35, float %1439, float %1450)  ; FMax(a,b)
  %1452 = call float @dx.op.binary.f32(i32 35, float %1451, float %1442)  ; FMax(a,b)
  %1453 = call float @dx.op.binary.f32(i32 36, float %1447, float %1448)  ; FMin(a,b)
  %1454 = call float @dx.op.binary.f32(i32 36, float %1446, float %1453)  ; FMin(a,b)
  %1455 = call float @dx.op.binary.f32(i32 36, float %1454, float %1449)  ; FMin(a,b)
  %1456 = fmul fast float %1452, 2.550000e+02
  %1457 = fadd fast float %1456, 0x3F70101020000000
  %1458 = fptoui float %1457 to i32
  %1459 = fmul fast float %1455, 2.550000e+02
  %1460 = fadd fast float %1459, 0x3F70101020000000
  %1461 = fptoui float %1460 to i32
  %1462 = icmp ult i32 %1458, %1461
  br i1 %1462, label %1463, label %1504

; <label>:1463                                    ; preds = %1427
  %1464 = fcmp fast ogt float %56, 9.843750e-01
  %1465 = select i1 %1464, float -4.000000e+00, float %985
  %1466 = call float @dx.op.binary.f32(i32 35, float %1465, float 0.000000e+00)  ; FMax(a,b)
  %1467 = fadd fast float %982, %1466
  %1468 = fmul fast float %1467, %983
  %1469 = call float @dx.op.unary.f32(i32 23, float %1468)  ; Log(value)
  %1470 = fmul fast float %984, %1469
  %1471 = fmul fast float %1470, %992
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = uitofp i32 %1458 to float
  %1474 = uitofp i32 %1461 to float
  %1475 = fadd fast float %1473, 5.000000e-01
  %1476 = fadd fast float %1474, 5.000000e-01
  %1477 = fmul fast float %992, %1475
  %1478 = fmul fast float %992, %1476
  %1479 = fadd fast float %1477, 0x3F0FFB4800000000
  %1480 = fadd fast float %1478, 0xBF0FFB4800000000
  %1481 = call float @dx.op.binary.f32(i32 35, float %1472, float %1479)  ; FMax(a,b)
  %1482 = call float @dx.op.binary.f32(i32 36, float %1481, float %1480)  ; FMin(a,b)
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 1
  %1485 = extractvalue %dx.types.CBufRet.f32 %1483, 2
  %1486 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1487 = select i1 %817, float %1486, float 0.000000e+00
  %1488 = fmul fast float %1484, %1482
  %1489 = fadd fast float %1487, %1488
  %1490 = fadd fast float %1487, %1485
  %1491 = fsub fast float %1484, %1485
  %1492 = fadd fast float %1491, %1487
  %1493 = call float @dx.op.binary.f32(i32 35, float %1489, float %1490)  ; FMax(a,b)
  %1494 = call float @dx.op.binary.f32(i32 36, float %1493, float %1492)  ; FMin(a,b)
  %1495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %23, float %1433, float %1434, float %1494, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.ResRet.f32 %1495, 1
  %1498 = extractvalue %dx.types.ResRet.f32 %1495, 2
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 1
  %1501 = fmul fast float %1500, %1496
  %1502 = fmul fast float %1500, %1497
  %1503 = fmul fast float %1500, %1498
  br label %1504

; <label>:1504                                    ; preds = %1463, %1427
  %1505 = phi float [ %1501, %1463 ], [ 1.000000e+00, %1427 ]
  %1506 = phi float [ %1502, %1463 ], [ 1.000000e+00, %1427 ]
  %1507 = phi float [ %1503, %1463 ], [ 1.000000e+00, %1427 ]
  %1508 = fmul fast float %1505, %1403
  %1509 = fmul fast float %1506, %1404
  %1510 = fmul fast float %1507, %1405
  br label %1511

; <label>:1511                                    ; preds = %1504, %1386
  %1512 = phi float [ %1508, %1504 ], [ %1403, %1386 ]
  %1513 = phi float [ %1509, %1504 ], [ %1404, %1386 ]
  %1514 = phi float [ %1510, %1504 ], [ %1405, %1386 ]
  %1515 = and i32 %154, 2097152
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1521, label %1517, !dx.controlflow.hints !83

; <label>:1517                                    ; preds = %1511
  %1518 = add i32 %151, 192
  %1519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 0
  br label %1524

; <label>:1521                                    ; preds = %1511
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  br label %1524

; <label>:1524                                    ; preds = %1521, %1517
  %1525 = phi float [ %1520, %1517 ], [ %1523, %1521 ]
  %1526 = fmul fast float %749, %594
  %1527 = fmul fast float %1526, %829
  %1528 = fmul fast float %1527, %953
  %1529 = fmul fast float %750, %594
  %1530 = fmul fast float %1529, %830
  %1531 = fmul fast float %1530, %953
  %1532 = fmul fast float %751, %594
  %1533 = fmul fast float %1532, %831
  %1534 = fmul fast float %1533, %953
  br i1 %812, label %1535, label %1668

; <label>:1535                                    ; preds = %1524
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 2
  %1538 = extractvalue %dx.types.CBufRet.f32 %1536, 3
  %1539 = fmul fast float %1537, %64
  %1540 = fmul fast float %1538, %65
  %1541 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1542 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1543 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %1541, float %1542, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.f32 %1543, 1
  %1546 = extractvalue %dx.types.ResRet.f32 %1543, 2
  %1547 = extractvalue %dx.types.ResRet.f32 %1543, 3
  %1548 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %1541, float %1542, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.ResRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.ResRet.f32 %1548, 2
  %1552 = extractvalue %dx.types.ResRet.f32 %1548, 3
  %1553 = call float @dx.op.binary.f32(i32 35, float %1545, float %1546)  ; FMax(a,b)
  %1554 = call float @dx.op.binary.f32(i32 35, float %1544, float %1553)  ; FMax(a,b)
  %1555 = call float @dx.op.binary.f32(i32 35, float %1554, float %1547)  ; FMax(a,b)
  %1556 = call float @dx.op.binary.f32(i32 36, float %1550, float %1551)  ; FMin(a,b)
  %1557 = call float @dx.op.binary.f32(i32 36, float %1549, float %1556)  ; FMin(a,b)
  %1558 = call float @dx.op.binary.f32(i32 36, float %1557, float %1552)  ; FMin(a,b)
  %1559 = fmul fast float %1555, 2.550000e+02
  %1560 = fadd fast float %1559, 0x3F70101020000000
  %1561 = fptoui float %1560 to i32
  %1562 = fmul fast float %1558, 2.550000e+02
  %1563 = fadd fast float %1562, 0x3F70101020000000
  %1564 = fptoui float %1563 to i32
  %1565 = icmp ult i32 %1561, %1564
  br i1 %1565, label %1566, label %1610

; <label>:1566                                    ; preds = %1535
  %1567 = fcmp fast ogt float %56, 9.843750e-01
  %1568 = select i1 %1567, float -4.000000e+00, float %985
  %1569 = call float @dx.op.binary.f32(i32 35, float %1568, float 0.000000e+00)  ; FMax(a,b)
  %1570 = fadd fast float %982, %1569
  %1571 = fmul fast float %1570, %983
  %1572 = call float @dx.op.unary.f32(i32 23, float %1571)  ; Log(value)
  %1573 = fmul fast float %984, %1572
  %1574 = fmul fast float %1573, %992
  %1575 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1576 = uitofp i32 %1561 to float
  %1577 = uitofp i32 %1564 to float
  %1578 = fadd fast float %1576, 5.000000e-01
  %1579 = fadd fast float %1577, 5.000000e-01
  %1580 = fmul fast float %992, %1578
  %1581 = fmul fast float %992, %1579
  %1582 = fadd fast float %1580, 0x3F0FFB4800000000
  %1583 = fadd fast float %1581, 0xBF0FFB4800000000
  %1584 = call float @dx.op.binary.f32(i32 35, float %1575, float %1582)  ; FMax(a,b)
  %1585 = call float @dx.op.binary.f32(i32 36, float %1584, float %1583)  ; FMin(a,b)
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 1
  %1588 = extractvalue %dx.types.CBufRet.f32 %1586, 2
  %1589 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1590 = fmul fast float %1587, %1585
  %1591 = fadd fast float %1589, %1590
  %1592 = fadd fast float %1589, %1588
  %1593 = fsub fast float %1587, %1588
  %1594 = fadd fast float %1593, %1589
  %1595 = call float @dx.op.binary.f32(i32 35, float %1591, float %1592)  ; FMax(a,b)
  %1596 = call float @dx.op.binary.f32(i32 36, float %1595, float %1594)  ; FMin(a,b)
  %1597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %1541, float %1542, float %1596, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.ResRet.f32 %1597, 1
  %1600 = extractvalue %dx.types.ResRet.f32 %1597, 2
  %1601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %1541, float %1542, float %1596, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.ResRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.ResRet.f32 %1601, 2
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 1
  %1607 = fmul fast float %1606, %1602
  %1608 = fmul fast float %1606, %1603
  %1609 = fmul fast float %1606, %1604
  br label %1610

; <label>:1610                                    ; preds = %1566, %1535
  %1611 = phi float [ %1598, %1566 ], [ 1.000000e+00, %1535 ]
  %1612 = phi float [ %1599, %1566 ], [ 1.000000e+00, %1535 ]
  %1613 = phi float [ %1600, %1566 ], [ 1.000000e+00, %1535 ]
  %1614 = phi float [ %1607, %1566 ], [ 0.000000e+00, %1535 ]
  %1615 = phi float [ %1608, %1566 ], [ 0.000000e+00, %1535 ]
  %1616 = phi float [ %1609, %1566 ], [ 0.000000e+00, %1535 ]
  %1617 = fmul fast float %1614, %1416
  %1618 = fmul fast float %1615, %1416
  %1619 = fmul fast float %1616, %1416
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1611, float %1612, float %1613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1617, float %1618, float %1619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = select i1 %134, float %1620, float %1611
  %1623 = select i1 %134, float %1620, float %1612
  %1624 = select i1 %134, float 1.000000e+00, float %1613
  %1625 = select i1 %134, float %1621, float %1617
  %1626 = select i1 %134, float 0.000000e+00, float %1618
  %1627 = select i1 %134, float 0.000000e+00, float %1619
  %1628 = fmul fast float %1622, %1528
  %1629 = fmul fast float %1623, %1531
  %1630 = fmul fast float %1624, %1534
  %1631 = fadd fast float %1628, %1625
  %1632 = fadd fast float %1629, %1626
  %1633 = fadd fast float %1627, %1630
  %1634 = fmul fast float %1622, %1512
  %1635 = fmul fast float %1623, %1513
  %1636 = fmul fast float %1624, %1514
  %1637 = fmul fast float %69, %1537
  %1638 = fmul fast float %71, %1538
  %1639 = fsub fast float 1.000000e+00, %1637
  %1640 = fsub fast float 1.000000e+00, %1638
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1645 = fmul fast float %1639, %1642
  %1646 = fmul fast float %1639, %1643
  %1647 = fmul fast float %1639, %1644
  %1648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.f32 %1648, 0
  %1650 = extractvalue %dx.types.CBufRet.f32 %1648, 1
  %1651 = extractvalue %dx.types.CBufRet.f32 %1648, 2
  %1652 = fmul fast float %1640, %1649
  %1653 = fmul fast float %1640, %1650
  %1654 = fmul fast float %1640, %1651
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.CBufRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.CBufRet.f32 %1655, 2
  %1659 = fadd fast float %1652, %1656
  %1660 = fadd fast float %1659, %1645
  %1661 = fadd fast float %1653, %1657
  %1662 = fadd fast float %1661, %1646
  %1663 = fadd fast float %1654, %1658
  %1664 = fadd fast float %1663, %1647
  %1665 = fmul fast float %1660, %809
  %1666 = fmul fast float %1662, %809
  %1667 = fmul fast float %1664, %809
  br label %1668

; <label>:1668                                    ; preds = %1610, %1524
  %1669 = phi float [ %1665, %1610 ], [ %99, %1524 ]
  %1670 = phi float [ %1666, %1610 ], [ %100, %1524 ]
  %1671 = phi float [ %1667, %1610 ], [ %101, %1524 ]
  %1672 = phi float [ %809, %1610 ], [ %57, %1524 ]
  %1673 = phi float [ %1631, %1610 ], [ %1528, %1524 ]
  %1674 = phi float [ %1632, %1610 ], [ %1531, %1524 ]
  %1675 = phi float [ %1633, %1610 ], [ %1534, %1524 ]
  %1676 = phi float [ %1634, %1610 ], [ %1512, %1524 ]
  %1677 = phi float [ %1635, %1610 ], [ %1513, %1524 ]
  %1678 = phi float [ %1636, %1610 ], [ %1514, %1524 ]
  %1679 = phi float [ %1611, %1610 ], [ 1.000000e+00, %1524 ]
  br i1 %817, label %2835, label %1680

; <label>:1680                                    ; preds = %1668
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = extractvalue %dx.types.CBufRet.f32 %1681, 1
  %1684 = extractvalue %dx.types.CBufRet.f32 %1681, 2
  %1685 = extractvalue %dx.types.CBufRet.f32 %1681, 3
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1690 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1694 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1695 = extractvalue %dx.types.CBufRet.f32 %1691, 3
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 3
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 3
  %1705 = extractvalue %dx.types.CBufRet.f32 %1703, 0
  %1706 = extractvalue %dx.types.CBufRet.f32 %1703, 1
  %1707 = extractvalue %dx.types.CBufRet.f32 %1703, 2
  %1708 = fcmp fast olt float %1707, -5.000000e-01
  %1709 = call float @dx.op.dot3.f32(i32 55, float %1669, float %1670, float %1671, float %1669, float %1670, float %1671)  ; Dot3(ax,ay,az,bx,by,bz)
  %1710 = call float @dx.op.unary.f32(i32 25, float %1709)  ; Rsqrt(value)
  %1711 = fmul fast float %1710, %1709
  %1712 = fmul fast float %1710, %1669
  %1713 = fmul fast float %1710, %1670
  %1714 = fmul fast float %1710, %1671
  %1715 = fadd fast float %1711, %1685
  %1716 = call float @dx.op.dot3.f32(i32 55, float %1712, float %1713, float %1714, float %1682, float %1683, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.i32 %1717, 1
  %1719 = and i32 %1718, 1
  %1720 = icmp ne i32 %1719, 0
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1723 = fcmp fast ogt float %1722, 0.000000e+00
  %1724 = and i1 %1720, %1723
  br i1 %1724, label %1725, label %2131, !dx.controlflow.hints !84

; <label>:1725                                    ; preds = %1680
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 3
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 2
  %1732 = fsub fast float %1729, %1731
  %1733 = and i32 %1718, 2
  %1734 = extractvalue %dx.types.CBufRet.i32 %1717, 0
  %1735 = call i32 @dx.op.binary.i32(i32 40, i32 %1734, i32 3)  ; UMin(a,b)
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.CBufRet.f32 %1736, 1
  %1739 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1740 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1741 = fsub fast float %1737, %1739
  %1742 = fsub fast float %1738, %1740
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 0
  %1745 = fcmp fast ogt float %1744, 0.000000e+00
  %1746 = fsub fast float -0.000000e+00, %1741
  %1747 = fsub fast float -0.000000e+00, %1742
  %1748 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1712, float %1713)  ; Dot2(ax,ay,bx,by)
  %1749 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1746, float %1747)  ; Dot2(ax,ay,bx,by)
  %1750 = fmul fast float %1749, 2.000000e+00
  %1751 = call float @dx.op.dot2.f32(i32 54, float %1746, float %1747, float %1746, float %1747)  ; Dot2(ax,ay,bx,by)
  %1752 = fmul fast float %1744, %1744
  %1753 = fsub fast float %1751, %1752
  %1754 = fmul fast float %1750, %1750
  %1755 = fmul fast float %1748, 4.000000e+00
  %1756 = fmul fast float %1755, %1753
  %1757 = fsub fast float %1754, %1756
  %1758 = fcmp fast ogt float %1757, 0.000000e+00
  br i1 %1758, label %1759, label %1774

; <label>:1759                                    ; preds = %1725
  %1760 = fcmp fast ogt float %1750, 0.000000e+00
  %1761 = call float @dx.op.unary.f32(i32 24, float %1757)  ; Sqrt(value)
  %1762 = fsub fast float -0.000000e+00, %1761
  %1763 = select i1 %1760, float %1761, float %1762
  %1764 = fadd fast float %1763, %1750
  %1765 = fmul float %1764, -5.000000e-01
  %1766 = fdiv fast float %1765, %1748
  %1767 = call float @dx.op.binary.f32(i32 35, float %1766, float 0.000000e+00)  ; FMax(a,b)
  %1768 = call float @dx.op.binary.f32(i32 36, float %1711, float %1767)  ; FMin(a,b)
  %1769 = fdiv fast float %1753, %1765
  %1770 = call float @dx.op.binary.f32(i32 35, float %1769, float 0.000000e+00)  ; FMax(a,b)
  %1771 = call float @dx.op.binary.f32(i32 36, float %1711, float %1770)  ; FMin(a,b)
  %1772 = call float @dx.op.binary.f32(i32 36, float %1768, float %1771)  ; FMin(a,b)
  %1773 = call float @dx.op.binary.f32(i32 35, float %1768, float %1771)  ; FMax(a,b)
  br label %1774

; <label>:1774                                    ; preds = %1759, %1725
  %1775 = phi float [ %1773, %1759 ], [ -1.000000e+00, %1725 ]
  %1776 = phi float [ %1772, %1759 ], [ -1.000000e+00, %1725 ]
  %1777 = phi i1 [ true, %1759 ], [ false, %1725 ]
  %1778 = and i1 %1745, %1777
  br i1 %1778, label %1779, label %1781

; <label>:1779                                    ; preds = %1774
  %1780 = fcmp fast oeq float %1776, %1775
  br i1 %1780, label %2084, label %1782

; <label>:1781                                    ; preds = %1774
  br i1 %1745, label %2084, label %1782

; <label>:1782                                    ; preds = %1781, %1779
  %1783 = phi float [ %1711, %1781 ], [ %1775, %1779 ]
  %1784 = phi float [ 0.000000e+00, %1781 ], [ %1776, %1779 ]
  %1785 = icmp ne i32 %1733, 0
  %1786 = fmul fast float %1783, %1714
  %1787 = fadd fast float %1786, %1727
  %1788 = fmul fast float %1787, %1783
  %1789 = select i1 %1785, float 0.000000e+00, float %1788
  %1790 = fcmp fast oeq float %1714, 0.000000e+00
  %1791 = fdiv fast float %1732, %1714
  %1792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1791)  ; FMax(a,b)
  %1793 = select i1 %1790, float %1783, float %1792
  %1794 = call float @dx.op.binary.f32(i32 36, float %1783, float %1793)  ; FMin(a,b)
  %1795 = fcmp fast ogt float %1714, 0.000000e+00
  %1796 = fcmp fast olt float %1732, 0.000000e+00
  br i1 %1795, label %1797, label %1854

; <label>:1797                                    ; preds = %1782
  %1798 = icmp eq i32 %1733, 0
  br i1 %1796, label %1799, label %1843

; <label>:1799                                    ; preds = %1797
  %1800 = select i1 %1798, float %1783, float 0.000000e+00
  %1801 = fsub fast float -0.000000e+00, %1800
  %1802 = call float @dx.op.unary.f32(i32 6, float %1801)  ; FAbs(value)
  %1803 = fmul fast float %1800, %1714
  %1804 = fadd fast float %1803, %1727
  %1805 = fmul fast float %1802, %1804
  %1806 = fsub fast float %1789, %1805
  %1807 = fsub fast float %1783, %1802
  %1808 = select i1 %1798, float %1807, float 0.000000e+00
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = extractvalue %dx.types.CBufRet.f32 %1813, 1
  %1816 = extractvalue %dx.types.CBufRet.f32 %1813, 2
  %1817 = extractvalue %dx.types.CBufRet.f32 %1813, 3
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1820 = call float @dx.op.binary.f32(i32 36, float %1806, float %1819)  ; FMin(a,b)
  %1821 = fmul fast float %1817, %1808
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  %1823 = fsub fast float %1814, %1810
  %1824 = fsub fast float %1815, %1811
  %1825 = fsub fast float %1816, %1812
  %1826 = fmul fast float %1822, %1823
  %1827 = fmul fast float %1822, %1824
  %1828 = fmul fast float %1822, %1825
  %1829 = fadd fast float %1826, %1810
  %1830 = fadd fast float %1827, %1811
  %1831 = fadd fast float %1828, %1812
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1835 = fadd fast float %1834, %1833
  %1836 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1838 = extractvalue %dx.types.CBufRet.f32 %1832, 3
  %1839 = fadd fast float %1838, %1837
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1841 = fmul fast float %1836, %1820
  %1842 = fmul fast float %1841, %1840
  br label %2084

; <label>:1843                                    ; preds = %1797
  br i1 %1798, label %1844, label %1865

; <label>:1844                                    ; preds = %1843
  %1845 = call float @dx.op.binary.f32(i32 36, float %1794, float %1784)  ; FMin(a,b)
  %1846 = fsub fast float %1794, %1845
  %1847 = fsub fast float %1846, %1783
  %1848 = call float @dx.op.unary.f32(i32 6, float %1847)  ; FAbs(value)
  %1849 = fadd fast float %1846, %1783
  %1850 = fmul fast float %1849, %1714
  %1851 = fadd fast float %1850, %1727
  %1852 = fmul fast float %1851, %1848
  %1853 = fsub fast float %1789, %1852
  br label %1865

; <label>:1854                                    ; preds = %1782
  br i1 %1796, label %1855, label %1865

; <label>:1855                                    ; preds = %1854
  %1856 = call float @dx.op.binary.f32(i32 35, float %1784, float %1794)  ; FMax(a,b)
  %1857 = icmp eq i32 %1733, 0
  %1858 = select i1 %1857, float %1794, float 0.000000e+00
  %1859 = fsub fast float -0.000000e+00, %1858
  %1860 = call float @dx.op.unary.f32(i32 6, float %1859)  ; FAbs(value)
  %1861 = fmul fast float %1858, %1714
  %1862 = fadd fast float %1861, %1727
  %1863 = fmul fast float %1860, %1862
  %1864 = fsub fast float %1789, %1863
  br label %1865

; <label>:1865                                    ; preds = %1855, %1854, %1844, %1843
  %1866 = phi float [ %1784, %1843 ], [ %1784, %1844 ], [ %1856, %1855 ], [ %1784, %1854 ]
  %1867 = phi float [ 0.000000e+00, %1843 ], [ %1848, %1844 ], [ %1860, %1855 ], [ 0.000000e+00, %1854 ]
  %1868 = phi float [ %1789, %1843 ], [ %1853, %1844 ], [ %1864, %1855 ], [ %1789, %1854 ]
  %1869 = phi float [ %1794, %1843 ], [ %1794, %1844 ], [ %1783, %1855 ], [ %1783, %1854 ]
  %1870 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 0
  store float -1.000000e+00, float* %1870, align 4, !tbaa !85, !noalias !89
  %1871 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 1
  store float -1.000000e+00, float* %1871, align 4, !tbaa !85, !noalias !89
  %1872 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 2
  store float -1.000000e+00, float* %1872, align 4, !tbaa !85, !noalias !89
  %1873 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 0
  store float -1.000000e+00, float* %1873, align 4, !tbaa !85, !noalias !89
  %1874 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 1
  store float -1.000000e+00, float* %1874, align 4, !tbaa !85, !noalias !89
  %1875 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 2
  store float -1.000000e+00, float* %1875, align 4, !tbaa !85, !noalias !89
  %1876 = icmp sgt i32 %1735, 0
  br i1 %1876, label %1877, label %1938

; <label>:1877                                    ; preds = %1865
  br label %1878

; <label>:1878                                    ; preds = %1927, %1877
  %1879 = phi i32 [ %1928, %1927 ], [ 0, %1877 ]
  %1880 = phi i32 [ %1929, %1927 ], [ 0, %1877 ]
  %1881 = add nuw i32 %1880, 171
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 %1881)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1888 = fsub fast float %1883, %1886
  %1889 = fsub fast float %1884, %1887
  %1890 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1891 = fsub fast float -0.000000e+00, %1888
  %1892 = fsub fast float -0.000000e+00, %1889
  %1893 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1891, float %1892)  ; Dot2(ax,ay,bx,by)
  %1894 = fmul fast float %1893, 2.000000e+00
  %1895 = call float @dx.op.dot2.f32(i32 54, float %1891, float %1892, float %1891, float %1892)  ; Dot2(ax,ay,bx,by)
  %1896 = fmul fast float %1890, %1890
  %1897 = fsub fast float %1895, %1896
  %1898 = fmul fast float %1894, %1894
  %1899 = fmul fast float %1755, %1897
  %1900 = fsub fast float %1898, %1899
  %1901 = fcmp fast ogt float %1900, 0.000000e+00
  br i1 %1901, label %1902, label %1917

; <label>:1902                                    ; preds = %1878
  %1903 = fcmp fast ogt float %1894, 0.000000e+00
  %1904 = call float @dx.op.unary.f32(i32 24, float %1900)  ; Sqrt(value)
  %1905 = fsub fast float -0.000000e+00, %1904
  %1906 = select i1 %1903, float %1904, float %1905
  %1907 = fadd fast float %1906, %1894
  %1908 = fmul float %1907, -5.000000e-01
  %1909 = fdiv fast float %1908, %1748
  %1910 = call float @dx.op.binary.f32(i32 35, float %1909, float 0.000000e+00)  ; FMax(a,b)
  %1911 = call float @dx.op.binary.f32(i32 36, float %1783, float %1910)  ; FMin(a,b)
  %1912 = fdiv fast float %1897, %1908
  %1913 = call float @dx.op.binary.f32(i32 35, float %1912, float 0.000000e+00)  ; FMax(a,b)
  %1914 = call float @dx.op.binary.f32(i32 36, float %1783, float %1913)  ; FMin(a,b)
  %1915 = call float @dx.op.binary.f32(i32 36, float %1911, float %1914)  ; FMin(a,b)
  %1916 = call float @dx.op.binary.f32(i32 35, float %1911, float %1914)  ; FMax(a,b)
  br label %1917

; <label>:1917                                    ; preds = %1902, %1878
  %1918 = phi float [ %1916, %1902 ], [ -1.000000e+00, %1878 ]
  %1919 = phi float [ %1915, %1902 ], [ -1.000000e+00, %1878 ]
  %1920 = phi i1 [ true, %1902 ], [ false, %1878 ]
  br i1 %1920, label %1921, label %1927

; <label>:1921                                    ; preds = %1917
  %1922 = call float @dx.op.binary.f32(i32 35, float %1866, float %1919)  ; FMax(a,b)
  %1923 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %1880
  store float %1922, float* %1923, align 4, !tbaa !85, !noalias !89
  %1924 = call float @dx.op.binary.f32(i32 35, float %1866, float %1918)  ; FMax(a,b)
  %1925 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %1880
  store float %1924, float* %1925, align 4, !tbaa !85, !noalias !89
  %1926 = add nsw i32 %1879, 1
  br label %1927

; <label>:1927                                    ; preds = %1921, %1917
  %1928 = phi i32 [ %1926, %1921 ], [ %1879, %1917 ]
  %1929 = add nuw nsw i32 %1880, 1
  %1930 = icmp eq i32 %1929, %1735
  br i1 %1930, label %1931, label %1878

; <label>:1931                                    ; preds = %1927
  %1932 = load float, float* %1872, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %1933 = load float, float* %1871, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  %1934 = load float, float* %1870, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  %1935 = load float, float* %1875, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %1936 = load float, float* %1874, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  %1937 = load float, float* %1873, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  br label %1938

; <label>:1938                                    ; preds = %1931, %1865
  %1939 = phi float [ -1.000000e+00, %1865 ], [ %1937, %1931 ]
  %1940 = phi float [ -1.000000e+00, %1865 ], [ %1936, %1931 ]
  %1941 = phi float [ -1.000000e+00, %1865 ], [ %1935, %1931 ]
  %1942 = phi float [ -1.000000e+00, %1865 ], [ %1934, %1931 ]
  %1943 = phi float [ -1.000000e+00, %1865 ], [ %1933, %1931 ]
  %1944 = phi float [ -1.000000e+00, %1865 ], [ %1932, %1931 ]
  %1945 = phi i32 [ 0, %1865 ], [ %1928, %1931 ]
  %1946 = call float @dx.op.binary.f32(i32 36, float %1943, float %1944)  ; FMin(a,b)
  %1947 = call float @dx.op.binary.f32(i32 36, float %1942, float %1946)  ; FMin(a,b)
  %1948 = call float @dx.op.binary.f32(i32 35, float %1942, float %1943)  ; FMax(a,b)
  %1949 = call float @dx.op.binary.f32(i32 36, float %1948, float %1944)  ; FMin(a,b)
  %1950 = call float @dx.op.binary.f32(i32 36, float %1942, float %1943)  ; FMin(a,b)
  %1951 = call float @dx.op.binary.f32(i32 35, float %1950, float %1949)  ; FMax(a,b)
  %1952 = call float @dx.op.binary.f32(i32 35, float %1943, float %1944)  ; FMax(a,b)
  %1953 = call float @dx.op.binary.f32(i32 35, float %1942, float %1952)  ; FMax(a,b)
  store float %1947, float* %1870, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  store float %1951, float* %1871, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  store float %1953, float* %1872, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %1954 = call float @dx.op.binary.f32(i32 36, float %1940, float %1941)  ; FMin(a,b)
  %1955 = call float @dx.op.binary.f32(i32 36, float %1939, float %1954)  ; FMin(a,b)
  %1956 = call float @dx.op.binary.f32(i32 35, float %1939, float %1940)  ; FMax(a,b)
  %1957 = call float @dx.op.binary.f32(i32 36, float %1956, float %1941)  ; FMin(a,b)
  %1958 = call float @dx.op.binary.f32(i32 36, float %1939, float %1940)  ; FMin(a,b)
  %1959 = call float @dx.op.binary.f32(i32 35, float %1958, float %1957)  ; FMax(a,b)
  %1960 = call float @dx.op.binary.f32(i32 35, float %1940, float %1941)  ; FMax(a,b)
  %1961 = call float @dx.op.binary.f32(i32 35, float %1939, float %1960)  ; FMax(a,b)
  store float %1955, float* %1873, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  store float %1959, float* %1874, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  store float %1961, float* %1875, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %1962 = sub nsw i32 3, %1945
  %1963 = icmp sgt i32 %1962, 2
  br i1 %1963, label %1964, label %2002

; <label>:1964                                    ; preds = %1938
  %1965 = icmp eq i32 %1733, 0
  %1966 = fsub fast float %1783, %1867
  %1967 = select i1 %1965, float %1966, float %1867
  %1968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1969 = extractvalue %dx.types.CBufRet.f32 %1968, 0
  %1970 = extractvalue %dx.types.CBufRet.f32 %1968, 1
  %1971 = extractvalue %dx.types.CBufRet.f32 %1968, 2
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.CBufRet.f32 %1972, 2
  %1976 = extractvalue %dx.types.CBufRet.f32 %1972, 3
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 3
  %1979 = call float @dx.op.binary.f32(i32 36, float %1868, float %1978)  ; FMin(a,b)
  %1980 = fmul fast float %1976, %1967
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1982 = fsub fast float %1973, %1969
  %1983 = fsub fast float %1974, %1970
  %1984 = fsub fast float %1975, %1971
  %1985 = fmul fast float %1981, %1982
  %1986 = fmul fast float %1981, %1983
  %1987 = fmul fast float %1981, %1984
  %1988 = fadd fast float %1985, %1969
  %1989 = fadd fast float %1986, %1970
  %1990 = fadd fast float %1987, %1971
  %1991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1992 = extractvalue %dx.types.CBufRet.f32 %1991, 0
  %1993 = extractvalue %dx.types.CBufRet.f32 %1991, 1
  %1994 = fadd fast float %1993, %1992
  %1995 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1991, 2
  %1997 = extractvalue %dx.types.CBufRet.f32 %1991, 3
  %1998 = fadd fast float %1997, %1996
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fmul fast float %1995, %1979
  %2001 = fmul fast float %2000, %1999
  br label %2084

; <label>:2002                                    ; preds = %1938
  %2003 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %1962
  %2004 = load float, float* %2003, align 4, !tbaa !85, !noalias !89
  %2005 = fcmp fast olt float %2004, %1869
  %2006 = icmp sgt i32 %1945, 0
  %2007 = and i1 %2006, %2005
  br i1 %2007, label %2008, label %2045

; <label>:2008                                    ; preds = %2002
  br label %2009

; <label>:2009                                    ; preds = %2038, %2008
  %2010 = phi float [ %2039, %2038 ], [ %1867, %2008 ]
  %2011 = phi float [ %2040, %2038 ], [ %1868, %2008 ]
  %2012 = phi float [ %2020, %2038 ], [ %2004, %2008 ]
  %2013 = phi i32 [ %2017, %2038 ], [ %1962, %2008 ]
  %2014 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %2013
  %2015 = load float, float* %2014, align 4, !tbaa !85, !noalias !89
  %2016 = icmp slt i32 %2013, 2
  %2017 = add nsw i32 %2013, 1
  %2018 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %2017
  %2019 = load float, float* %2018, align 4, !tbaa !85, !noalias !89
  %2020 = select i1 %2016, float %2019, float %1783
  %2021 = call float @dx.op.binary.f32(i32 36, float %2020, float %2015)  ; FMin(a,b)
  %2022 = call float @dx.op.binary.f32(i32 36, float %1869, float %2021)  ; FMin(a,b)
  %2023 = icmp eq i32 %1733, 0
  %2024 = fadd fast float %2022, %2012
  %2025 = fmul fast float %2024, %1714
  %2026 = fadd fast float %2025, %1727
  br i1 %2023, label %2032, label %2027

; <label>:2027                                    ; preds = %2009
  %2028 = fsub fast float %2022, %2012
  %2029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2028)  ; FMax(a,b)
  %2030 = fmul fast float %2029, %2026
  %2031 = fadd fast float %2030, %2011
  br label %2038

; <label>:2032                                    ; preds = %2009
  %2033 = fsub fast float %2012, %2022
  %2034 = call float @dx.op.unary.f32(i32 6, float %2033)  ; FAbs(value)
  %2035 = fadd fast float %2034, %2010
  %2036 = fmul fast float %2034, %2026
  %2037 = fsub fast float %2011, %2036
  br label %2038

; <label>:2038                                    ; preds = %2032, %2027
  %2039 = phi float [ %2029, %2027 ], [ %2035, %2032 ]
  %2040 = phi float [ %2031, %2027 ], [ %2037, %2032 ]
  %2041 = fcmp fast olt float %2020, %1869
  %2042 = icmp slt i32 %2017, 3
  %2043 = and i1 %2042, %2041
  br i1 %2043, label %2009, label %2044

; <label>:2044                                    ; preds = %2038
  br label %2045

; <label>:2045                                    ; preds = %2044, %2002
  %2046 = phi float [ %1867, %2002 ], [ %2039, %2044 ]
  %2047 = phi float [ %1868, %2002 ], [ %2040, %2044 ]
  %2048 = fsub fast float %1783, %2046
  %2049 = select i1 %1785, float %2046, float %2048
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.CBufRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.CBufRet.f32 %2050, 2
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.CBufRet.f32 %2054, 2
  %2058 = extractvalue %dx.types.CBufRet.f32 %2054, 3
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2061 = call float @dx.op.binary.f32(i32 36, float %2047, float %2060)  ; FMin(a,b)
  %2062 = fmul fast float %2058, %2049
  %2063 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2064 = fsub fast float %2055, %2051
  %2065 = fsub fast float %2056, %2052
  %2066 = fsub fast float %2057, %2053
  %2067 = fmul fast float %2063, %2064
  %2068 = fmul fast float %2063, %2065
  %2069 = fmul fast float %2063, %2066
  %2070 = fadd fast float %2067, %2051
  %2071 = fadd fast float %2068, %2052
  %2072 = fadd fast float %2069, %2053
  %2073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.CBufRet.f32 %2073, 1
  %2076 = fadd fast float %2075, %2074
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2073, 2
  %2079 = extractvalue %dx.types.CBufRet.f32 %2073, 3
  %2080 = fadd fast float %2079, %2078
  %2081 = call float @dx.op.unary.f32(i32 7, float %2080)  ; Saturate(value)
  %2082 = fmul fast float %2077, %2061
  %2083 = fmul fast float %2082, %2081
  br label %2084

; <label>:2084                                    ; preds = %2045, %1964, %1799, %1781, %1779
  %2085 = phi float [ %1808, %1799 ], [ %1967, %1964 ], [ %2049, %2045 ], [ 0.000000e+00, %1779 ], [ 0.000000e+00, %1781 ]
  %2086 = phi float [ %1842, %1799 ], [ %2001, %1964 ], [ %2083, %2045 ], [ 0.000000e+00, %1779 ], [ 0.000000e+00, %1781 ]
  %2087 = phi float [ %1829, %1799 ], [ %1988, %1964 ], [ %2070, %2045 ], [ 0.000000e+00, %1779 ], [ 0.000000e+00, %1781 ]
  %2088 = phi float [ %1830, %1799 ], [ %1989, %1964 ], [ %2071, %2045 ], [ 0.000000e+00, %1779 ], [ 0.000000e+00, %1781 ]
  %2089 = phi float [ %1831, %1799 ], [ %1990, %1964 ], [ %2072, %2045 ], [ 0.000000e+00, %1779 ], [ 0.000000e+00, %1781 ]
  %2090 = fmul fast float %1722, %2086
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2091, 2
  %2093 = fsub fast float %1729, %2092
  %2094 = fcmp fast olt float %2090, -2.000000e+01
  %2095 = call float @dx.op.unary.f32(i32 21, float %2090)  ; Exp(value)
  %2096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2096, 2
  %2098 = extractvalue %dx.types.CBufRet.f32 %2096, 3
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 2
  %2101 = fmul fast float %2098, %2093
  %2102 = call float @dx.op.unary.f32(i32 7, float %2101)  ; Saturate(value)
  %2103 = fsub fast float 1.000000e+00, %2102
  %2104 = fmul fast float %1714, 5.000000e-01
  %2105 = fadd fast float %2104, 5.000000e-01
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  %2107 = fsub fast float 1.000000e+00, %2106
  %2108 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2103)  ; FMax(a,b)
  %2109 = fdiv fast float %2107, %2108
  %2110 = fsub fast float %2093, %1671
  %2111 = call float @dx.op.unary.f32(i32 6, float %2110)  ; FAbs(value)
  %2112 = fmul fast float %2111, %2097
  %2113 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2114 = fsub fast float 1.000000e+00, %2112
  %2115 = fmul fast float %2114, %2113
  %2116 = fadd fast float %2115, %2112
  %2117 = fmul fast float %2100, %2093
  %2118 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2119 = fsub fast float 1.000000e+00, %2116
  %2120 = fmul fast float %2119, %2118
  %2121 = fadd fast float %2120, %2116
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = fadd fast float %2095, -1.000000e+00
  %2124 = select i1 %2094, float -1.000000e+00, float %2123
  %2125 = fmul fast float %2122, %2124
  %2126 = fadd fast float %2125, 1.000000e+00
  %2127 = fsub fast float -0.000000e+00, %2125
  %2128 = fmul fast float %2087, %2127
  %2129 = fmul fast float %2088, %2127
  %2130 = fmul fast float %2089, %2127
  br label %2131

; <label>:2131                                    ; preds = %2084, %1680
  %2132 = phi float [ %2085, %2084 ], [ 0.000000e+00, %1680 ]
  %2133 = phi float [ %2126, %2084 ], [ 1.000000e+00, %1680 ]
  %2134 = phi float [ %2128, %2084 ], [ 0.000000e+00, %1680 ]
  %2135 = phi float [ %2129, %2084 ], [ 0.000000e+00, %1680 ]
  %2136 = phi float [ %2130, %2084 ], [ 0.000000e+00, %1680 ]
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2139 = fsub fast float 1.000000e+00, %2133
  %2140 = fmul fast float %2139, %1715
  %2141 = fmul fast float %2140, %2138
  %2142 = fsub fast float %1715, %2141
  br i1 %1708, label %2143, label %2172, !dx.controlflow.hints !125

; <label>:2143                                    ; preds = %2131
  %2144 = fmul fast float %1716, %1705
  %2145 = fadd fast float %2144, %1706
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fmul fast float %1687, %2142
  %2148 = fsub fast float -0.000000e+00, %2147
  %2149 = fmul fast float %1688, %2142
  %2150 = fsub fast float -0.000000e+00, %2149
  %2151 = call float @dx.op.unary.f32(i32 21, float %2148)  ; Exp(value)
  %2152 = call float @dx.op.unary.f32(i32 21, float %2150)  ; Exp(value)
  %2153 = call float @dx.op.binary.f32(i32 35, float %1695, float %2151)  ; FMax(a,b)
  %2154 = call float @dx.op.binary.f32(i32 35, float %1695, float %2152)  ; FMax(a,b)
  %2155 = fsub fast float %2154, %2153
  %2156 = fmul fast float %2155, %2146
  %2157 = fadd fast float %2156, %2153
  %2158 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2159 = fsub fast float %1692, %1697
  %2160 = fsub fast float %1693, %1698
  %2161 = fsub fast float %1694, %1699
  %2162 = fmul fast float %2146, %2159
  %2163 = fmul fast float %2146, %2160
  %2164 = fmul fast float %2146, %2161
  %2165 = fadd fast float %2162, %1697
  %2166 = fadd fast float %2163, %1698
  %2167 = fadd fast float %2164, %1699
  %2168 = fsub fast float 1.000000e+00, %2158
  %2169 = fmul fast float %2168, %2165
  %2170 = fmul fast float %2168, %2166
  %2171 = fmul fast float %2168, %2167
  br label %2231

; <label>:2172                                    ; preds = %2131
  %2173 = fmul fast float %2142, %1704
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fsub fast float 2.000000e+00, %2174
  %2176 = fmul fast float %2174, 9.921875e-01
  %2177 = fmul fast float %2176, %2175
  %2178 = fadd fast float %2177, 3.906250e-03
  %2179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %24, float %2178, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  %2181 = fsub fast float %2174, %2180
  %2182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2181)  ; FMax(a,b)
  %2183 = fmul fast float %1690, %1671
  %2184 = call float @dx.op.unary.f32(i32 6, float %2183)  ; FAbs(value)
  %2185 = fcmp fast ogt float %2184, 0x3EB0C6F7A0000000
  br i1 %2185, label %2186, label %2192, !dx.controlflow.hints !126

; <label>:2186                                    ; preds = %2172
  %2187 = fmul fast float %2183, 0xBFF7154760000000
  %2188 = call float @dx.op.unary.f32(i32 21, float %2187)  ; Exp(value)
  %2189 = fsub fast float 1.000000e+00, %2188
  %2190 = fdiv fast float %2189, %2183
  %2191 = fmul fast float %2190, %1700
  br label %2192

; <label>:2192                                    ; preds = %2186, %2172
  %2193 = phi float [ %2191, %2186 ], [ %1700, %2172 ]
  %2194 = fadd fast float %2193, %1702
  %2195 = fmul fast float %2194, %2182
  %2196 = fmul fast float %1687, %2195
  %2197 = fsub fast float -0.000000e+00, %2196
  %2198 = fmul fast float %1688, %2195
  %2199 = fsub fast float -0.000000e+00, %2198
  %2200 = fmul fast float %1689, %2195
  %2201 = fsub fast float -0.000000e+00, %2200
  %2202 = call float @dx.op.unary.f32(i32 21, float %2197)  ; Exp(value)
  %2203 = call float @dx.op.unary.f32(i32 21, float %2199)  ; Exp(value)
  %2204 = call float @dx.op.unary.f32(i32 21, float %2201)  ; Exp(value)
  %2205 = fmul fast float %1716, %1716
  %2206 = fadd fast float %2205, 1.000000e+00
  %2207 = fmul fast float %2206, 0x3FAE8EC8A0000000
  %2208 = fmul fast float %2207, %1697
  %2209 = fmul fast float %2207, %1698
  %2210 = fmul fast float %2207, %1699
  %2211 = fmul fast float %1716, %1695
  %2212 = fsub fast float 1.000000e+00, %2211
  %2213 = fmul fast float %1695, %1695
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = fmul fast float %2214, 0x3FB45F3060000000
  %2216 = fmul fast float %2212, %2212
  %2217 = fdiv fast float 1.000000e+00, %2216
  %2218 = fmul fast float %2215, %2217
  %2219 = fmul fast float %2218, %1692
  %2220 = fmul fast float %2218, %1693
  %2221 = fmul fast float %2218, %1694
  %2222 = fadd fast float %2219, %2208
  %2223 = fadd fast float %2220, %2209
  %2224 = fadd fast float %2221, %2210
  %2225 = fsub fast float 1.000000e+00, %2202
  %2226 = fsub fast float 1.000000e+00, %2203
  %2227 = fsub fast float 1.000000e+00, %2204
  %2228 = fmul fast float %2222, %2225
  %2229 = fmul fast float %2223, %2226
  %2230 = fmul fast float %2224, %2227
  br label %2231

; <label>:2231                                    ; preds = %2192, %2143
  %2232 = phi float [ %2169, %2143 ], [ %2228, %2192 ]
  %2233 = phi float [ %2170, %2143 ], [ %2229, %2192 ]
  %2234 = phi float [ %2171, %2143 ], [ %2230, %2192 ]
  %2235 = phi float [ %2158, %2143 ], [ %2202, %2192 ]
  %2236 = phi float [ %2158, %2143 ], [ %2203, %2192 ]
  %2237 = phi float [ %2158, %2143 ], [ %2204, %2192 ]
  br i1 %1724, label %2238, label %2436, !dx.controlflow.hints !127

; <label>:2238                                    ; preds = %2231
  %2239 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2240 = fmul fast float %2239, %2139
  %2241 = fsub fast float %2134, %2232
  %2242 = fsub fast float %2135, %2233
  %2243 = fsub fast float %2136, %2234
  %2244 = fmul fast float %2240, %2241
  %2245 = fmul fast float %2240, %2242
  %2246 = fmul fast float %2240, %2243
  %2247 = fadd fast float %2244, %2232
  %2248 = fadd fast float %2245, %2233
  %2249 = fadd fast float %2246, %2234
  %2250 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2235)  ; FMax(a,b)
  %2251 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2236)  ; FMax(a,b)
  %2252 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2237)  ; FMax(a,b)
  %2253 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2133)  ; FMax(a,b)
  %2254 = call float @dx.op.binary.f32(i32 35, float %2132, float %2142)  ; FMax(a,b)
  %2255 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2254)  ; FMax(a,b)
  %2256 = fdiv fast float %2132, %2255
  %2257 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2258 = fdiv fast float %2142, %2255
  %2259 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2260 = fcmp fast une float %2253, 1.000000e+00
  br i1 %2260, label %2261, label %2274, !dx.controlflow.hints !128

; <label>:2261                                    ; preds = %2238
  %2262 = call float @dx.op.unary.f32(i32 23, float %2253)  ; Log(value)
  %2263 = fmul fast float %2262, 0x3FE62E4300000000
  %2264 = fmul fast float %2134, %2263
  %2265 = fsub fast float -0.000000e+00, %2264
  %2266 = fmul fast float %2135, %2263
  %2267 = fsub fast float -0.000000e+00, %2266
  %2268 = fmul fast float %2136, %2263
  %2269 = fsub fast float -0.000000e+00, %2268
  %2270 = fsub fast float 1.000000e+00, %2253
  %2271 = fdiv fast float %2265, %2270
  %2272 = fdiv fast float %2267, %2270
  %2273 = fdiv fast float %2269, %2270
  br label %2274

; <label>:2274                                    ; preds = %2261, %2238
  %2275 = phi float [ %2271, %2261 ], [ %2134, %2238 ]
  %2276 = phi float [ %2272, %2261 ], [ %2135, %2238 ]
  %2277 = phi float [ %2273, %2261 ], [ %2136, %2238 ]
  %2278 = phi float [ %2263, %2261 ], [ 0.000000e+00, %2238 ]
  %2279 = fcmp fast une float %2250, 1.000000e+00
  br i1 %2279, label %2280, label %2287, !dx.controlflow.hints !129

; <label>:2280                                    ; preds = %2274
  %2281 = call float @dx.op.unary.f32(i32 23, float %2250)  ; Log(value)
  %2282 = fmul fast float %2281, 0x3FE62E4300000000
  %2283 = fmul fast float %2247, %2282
  %2284 = fsub fast float -0.000000e+00, %2283
  %2285 = fsub fast float 1.000000e+00, %2250
  %2286 = fdiv fast float %2284, %2285
  br label %2287

; <label>:2287                                    ; preds = %2280, %2274
  %2288 = phi float [ %2286, %2280 ], [ %2247, %2274 ]
  %2289 = phi float [ %2282, %2280 ], [ 0.000000e+00, %2274 ]
  %2290 = fcmp fast une float %2251, 1.000000e+00
  br i1 %2290, label %2291, label %2298, !dx.controlflow.hints !129

; <label>:2291                                    ; preds = %2287
  %2292 = call float @dx.op.unary.f32(i32 23, float %2251)  ; Log(value)
  %2293 = fmul fast float %2292, 0x3FE62E4300000000
  %2294 = fmul fast float %2248, %2293
  %2295 = fsub fast float -0.000000e+00, %2294
  %2296 = fsub fast float 1.000000e+00, %2251
  %2297 = fdiv fast float %2295, %2296
  br label %2298

; <label>:2298                                    ; preds = %2291, %2287
  %2299 = phi float [ %2297, %2291 ], [ %2248, %2287 ]
  %2300 = phi float [ %2293, %2291 ], [ 0.000000e+00, %2287 ]
  %2301 = fcmp fast une float %2252, 1.000000e+00
  br i1 %2301, label %2302, label %2309, !dx.controlflow.hints !129

; <label>:2302                                    ; preds = %2298
  %2303 = call float @dx.op.unary.f32(i32 23, float %2252)  ; Log(value)
  %2304 = fmul fast float %2303, 0x3FE62E4300000000
  %2305 = fmul fast float %2249, %2304
  %2306 = fsub fast float -0.000000e+00, %2305
  %2307 = fsub fast float 1.000000e+00, %2252
  %2308 = fdiv fast float %2306, %2307
  br label %2309

; <label>:2309                                    ; preds = %2302, %2298
  %2310 = phi float [ %2308, %2302 ], [ %2249, %2298 ]
  %2311 = phi float [ %2304, %2302 ], [ 0.000000e+00, %2298 ]
  %2312 = fmul fast float %2275, %2259
  %2313 = fmul fast float %2276, %2259
  %2314 = fmul fast float %2277, %2259
  %2315 = fmul fast float %2278, %2259
  %2316 = fmul fast float %2288, %2257
  %2317 = fmul fast float %2299, %2257
  %2318 = fmul fast float %2310, %2257
  %2319 = fmul fast float %2289, %2257
  %2320 = fmul fast float %2300, %2257
  %2321 = fmul fast float %2311, %2257
  %2322 = fadd fast float %2316, %2312
  %2323 = fadd fast float %2317, %2313
  %2324 = fadd fast float %2318, %2314
  %2325 = fadd fast float %2319, %2315
  %2326 = fadd fast float %2320, %2315
  %2327 = fadd fast float %2321, %2315
  %2328 = fcmp fast une float %2325, 0.000000e+00
  br i1 %2328, label %2329, label %2336, !dx.controlflow.hints !130

; <label>:2329                                    ; preds = %2309
  %2330 = fmul fast float %2325, 0x3FF7154760000000
  %2331 = call float @dx.op.unary.f32(i32 21, float %2330)  ; Exp(value)
  %2332 = fsub fast float 1.000000e+00, %2331
  %2333 = fmul fast float %2322, %2332
  %2334 = fsub fast float -0.000000e+00, %2333
  %2335 = fdiv fast float %2334, %2325
  br label %2336

; <label>:2336                                    ; preds = %2329, %2309
  %2337 = phi float [ %2331, %2329 ], [ 1.000000e+00, %2309 ]
  %2338 = phi float [ %2335, %2329 ], [ %2322, %2309 ]
  %2339 = fcmp fast une float %2326, 0.000000e+00
  br i1 %2339, label %2340, label %2347, !dx.controlflow.hints !130

; <label>:2340                                    ; preds = %2336
  %2341 = fmul fast float %2326, 0x3FF7154760000000
  %2342 = call float @dx.op.unary.f32(i32 21, float %2341)  ; Exp(value)
  %2343 = fsub fast float 1.000000e+00, %2342
  %2344 = fmul fast float %2323, %2343
  %2345 = fsub fast float -0.000000e+00, %2344
  %2346 = fdiv fast float %2345, %2326
  br label %2347

; <label>:2347                                    ; preds = %2340, %2336
  %2348 = phi float [ %2342, %2340 ], [ 1.000000e+00, %2336 ]
  %2349 = phi float [ %2346, %2340 ], [ %2323, %2336 ]
  %2350 = fcmp fast une float %2327, 0.000000e+00
  br i1 %2350, label %2351, label %2358, !dx.controlflow.hints !130

; <label>:2351                                    ; preds = %2347
  %2352 = fmul fast float %2327, 0x3FF7154760000000
  %2353 = call float @dx.op.unary.f32(i32 21, float %2352)  ; Exp(value)
  %2354 = fsub fast float 1.000000e+00, %2353
  %2355 = fmul fast float %2324, %2354
  %2356 = fsub fast float -0.000000e+00, %2355
  %2357 = fdiv fast float %2356, %2327
  br label %2358

; <label>:2358                                    ; preds = %2351, %2347
  %2359 = phi float [ %2353, %2351 ], [ 1.000000e+00, %2347 ]
  %2360 = phi float [ %2357, %2351 ], [ %2324, %2347 ]
  %2361 = fcmp fast ogt float %2257, %2259
  br i1 %2361, label %2362, label %2382

; <label>:2362                                    ; preds = %2358
  %2363 = fsub fast float 1.000000e+00, %2259
  %2364 = fmul fast float %2275, %2363
  %2365 = fmul fast float %2276, %2363
  %2366 = fmul fast float %2277, %2363
  %2367 = fmul fast float %2278, %2363
  %2368 = fcmp fast une float %2367, 0.000000e+00
  br i1 %2368, label %2369, label %2420, !dx.controlflow.hints !131

; <label>:2369                                    ; preds = %2362
  %2370 = fmul fast float %2367, 0x3FF7154760000000
  %2371 = call float @dx.op.unary.f32(i32 21, float %2370)  ; Exp(value)
  %2372 = fsub fast float 1.000000e+00, %2371
  %2373 = fmul fast float %2364, %2372
  %2374 = fsub fast float -0.000000e+00, %2373
  %2375 = fmul fast float %2365, %2372
  %2376 = fsub fast float -0.000000e+00, %2375
  %2377 = fmul fast float %2366, %2372
  %2378 = fsub fast float -0.000000e+00, %2377
  %2379 = fdiv fast float %2374, %2367
  %2380 = fdiv fast float %2376, %2367
  %2381 = fdiv fast float %2378, %2367
  br label %2420

; <label>:2382                                    ; preds = %2358
  %2383 = fsub fast float 1.000000e+00, %2257
  %2384 = fmul fast float %2288, %2383
  %2385 = fmul fast float %2299, %2383
  %2386 = fmul fast float %2310, %2383
  %2387 = fmul fast float %2289, %2383
  %2388 = fmul fast float %2300, %2383
  %2389 = fmul fast float %2311, %2383
  %2390 = fcmp fast une float %2387, 0.000000e+00
  br i1 %2390, label %2391, label %2398, !dx.controlflow.hints !130

; <label>:2391                                    ; preds = %2382
  %2392 = fmul fast float %2387, 0x3FF7154760000000
  %2393 = call float @dx.op.unary.f32(i32 21, float %2392)  ; Exp(value)
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2384, %2394
  %2396 = fsub fast float -0.000000e+00, %2395
  %2397 = fdiv fast float %2396, %2387
  br label %2398

; <label>:2398                                    ; preds = %2391, %2382
  %2399 = phi float [ %2397, %2391 ], [ %2384, %2382 ]
  %2400 = phi float [ %2393, %2391 ], [ 1.000000e+00, %2382 ]
  %2401 = fcmp fast une float %2388, 0.000000e+00
  br i1 %2401, label %2402, label %2409, !dx.controlflow.hints !130

; <label>:2402                                    ; preds = %2398
  %2403 = fmul fast float %2388, 0x3FF7154760000000
  %2404 = call float @dx.op.unary.f32(i32 21, float %2403)  ; Exp(value)
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = fmul fast float %2385, %2405
  %2407 = fsub fast float -0.000000e+00, %2406
  %2408 = fdiv fast float %2407, %2388
  br label %2409

; <label>:2409                                    ; preds = %2402, %2398
  %2410 = phi float [ %2408, %2402 ], [ %2385, %2398 ]
  %2411 = phi float [ %2404, %2402 ], [ 1.000000e+00, %2398 ]
  %2412 = fcmp fast une float %2389, 0.000000e+00
  br i1 %2412, label %2413, label %2420, !dx.controlflow.hints !130

; <label>:2413                                    ; preds = %2409
  %2414 = fmul fast float %2389, 0x3FF7154760000000
  %2415 = call float @dx.op.unary.f32(i32 21, float %2414)  ; Exp(value)
  %2416 = fsub fast float 1.000000e+00, %2415
  %2417 = fmul fast float %2386, %2416
  %2418 = fsub fast float -0.000000e+00, %2417
  %2419 = fdiv fast float %2418, %2389
  br label %2420

; <label>:2420                                    ; preds = %2413, %2409, %2369, %2362
  %2421 = phi float [ %2419, %2413 ], [ %2381, %2369 ], [ %2366, %2362 ], [ %2386, %2409 ]
  %2422 = phi float [ %2410, %2413 ], [ %2380, %2369 ], [ %2365, %2362 ], [ %2410, %2409 ]
  %2423 = phi float [ %2399, %2413 ], [ %2379, %2369 ], [ %2364, %2362 ], [ %2399, %2409 ]
  %2424 = phi float [ %2415, %2413 ], [ %2371, %2369 ], [ 1.000000e+00, %2362 ], [ 1.000000e+00, %2409 ]
  %2425 = phi float [ %2411, %2413 ], [ %2371, %2369 ], [ 1.000000e+00, %2362 ], [ %2411, %2409 ]
  %2426 = phi float [ %2400, %2413 ], [ %2371, %2369 ], [ 1.000000e+00, %2362 ], [ %2400, %2409 ]
  %2427 = fmul fast float %2426, %2338
  %2428 = fmul fast float %2425, %2349
  %2429 = fmul fast float %2424, %2360
  %2430 = fadd fast float %2427, %2423
  %2431 = fadd fast float %2428, %2422
  %2432 = fadd fast float %2429, %2421
  %2433 = fmul fast float %2426, %2337
  %2434 = fmul fast float %2425, %2348
  %2435 = fmul fast float %2424, %2359
  br label %2436

; <label>:2436                                    ; preds = %2420, %2231
  %2437 = phi float [ %2435, %2420 ], [ %2237, %2231 ]
  %2438 = phi float [ %2434, %2420 ], [ %2236, %2231 ]
  %2439 = phi float [ %2433, %2420 ], [ %2235, %2231 ]
  %2440 = phi float [ %2432, %2420 ], [ %2234, %2231 ]
  %2441 = phi float [ %2431, %2420 ], [ %2233, %2231 ]
  %2442 = phi float [ %2430, %2420 ], [ %2232, %2231 ]
  %2443 = fmul fast float %2442, %1416
  %2444 = fmul fast float %2441, %1416
  %2445 = fmul fast float %2440, %1416
  %2446 = fmul fast float %2439, %1679
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2439, float %2438, float %2437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2443, float %2444, float %2445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = select i1 %134, float %2447, float %2439
  %2450 = select i1 %134, float %2447, float %2438
  %2451 = select i1 %134, float 1.000000e+00, float %2437
  %2452 = select i1 %134, float %2448, float %2443
  %2453 = select i1 %134, float 0.000000e+00, float %2444
  %2454 = select i1 %134, float 0.000000e+00, float %2445
  %2455 = fmul fast float %2449, %1673
  %2456 = fmul fast float %2450, %1674
  %2457 = fmul fast float %2451, %1675
  %2458 = fadd fast float %2455, %2452
  %2459 = fadd fast float %2456, %2453
  %2460 = fadd fast float %2454, %2457
  %2461 = fmul fast float %2449, %1676
  %2462 = fmul fast float %2450, %1677
  %2463 = fmul fast float %2451, %1678
  %2464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.i32 %2464, 0
  %2466 = icmp eq i32 %2465, 0
  br i1 %2466, label %2835, label %2467, !dx.controlflow.hints !132

; <label>:2467                                    ; preds = %2436
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 2
  %2470 = extractvalue %dx.types.CBufRet.f32 %2468, 3
  %2471 = fmul fast float %2469, %64
  %2472 = fmul fast float %2470, %65
  %2473 = fmul fast float %2471, 2.000000e+00
  %2474 = fmul fast float %2472, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2473
  %2476 = fsub fast float 1.000000e+00, %2474
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.CBufRet.f32 %2477, 1
  %2480 = extractvalue %dx.types.CBufRet.f32 %2477, 2
  %2481 = fmul fast float %2475, %2478
  %2482 = fmul fast float %2475, %2479
  %2483 = fmul fast float %2475, %2480
  %2484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.CBufRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.CBufRet.f32 %2484, 2
  %2488 = fmul fast float %2476, %2485
  %2489 = fmul fast float %2476, %2486
  %2490 = fmul fast float %2476, %2487
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.CBufRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.CBufRet.f32 %2491, 2
  %2495 = fadd fast float %2488, %2492
  %2496 = fadd fast float %2495, %2481
  %2497 = fadd fast float %2489, %2493
  %2498 = fadd fast float %2497, %2482
  %2499 = fadd fast float %2490, %2494
  %2500 = fadd fast float %2499, %2483
  %2501 = fmul fast float %2496, %1672
  %2502 = fmul fast float %2498, %1672
  %2503 = fmul fast float %2500, %1672
  %2504 = fmul fast float %2501, %2501
  %2505 = fmul fast float %2502, %2502
  %2506 = fadd fast float %2504, %2505
  %2507 = fmul fast float %2503, %2503
  %2508 = fadd fast float %2506, %2507
  %2509 = call float @dx.op.unary.f32(i32 24, float %2508)  ; Sqrt(value)
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fsub fast float %2509, %2511
  %2513 = extractvalue %dx.types.CBufRet.f32 %2510, 2
  %2514 = fmul fast float %2512, %2513
  %2515 = call float @dx.op.unary.f32(i32 7, float %2514)  ; Saturate(value)
  %2516 = fadd fast float %2515, -5.000000e-01
  %2517 = fmul fast float %2516, 2.000000e+00
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 2
  %2520 = call float @dx.op.binary.f32(i32 36, float %2519, float %2517)  ; FMin(a,b)
  %2521 = fsub fast float -0.000000e+00, %2519
  %2522 = fcmp fast ogt float %2520, %2521
  br i1 %2522, label %2523, label %2835, !dx.controlflow.hints !133

; <label>:2523                                    ; preds = %2467
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 3
  %2526 = fcmp fast ogt float %2525, 0.000000e+00
  br i1 %2526, label %2527, label %2602, !dx.controlflow.hints !134

; <label>:2527                                    ; preds = %2523
  %2528 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %2529 = extractvalue %dx.types.Dimensions %2528, 0
  %2530 = sitofp i32 %2529 to float
  %2531 = extractvalue %dx.types.Dimensions %2528, 1
  %2532 = sitofp i32 %2531 to float
  %2533 = fmul fast float %2471, %2530
  %2534 = fmul fast float %2472, %2532
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 1
  %2537 = fsub fast float -0.000000e+00, %2536
  %2538 = fptoui float %2537 to i32
  %2539 = fptoui float %2533 to i32
  %2540 = fptoui float %2534 to i32
  %2541 = and i32 %2538, 31
  %2542 = lshr i32 %2539, %2541
  %2543 = lshr i32 %2540, %2541
  %2544 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %2538, i32 %2542, i32 %2543, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2545 = extractvalue %dx.types.ResRet.f32 %2544, 0
  %2546 = fcmp fast olt float %2545, -1.000000e+00
  %2547 = fcmp fast ogt float %2545, -1.000000e+00
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 1
  %2550 = select i1 %2547, float %2549, float 1.000000e+00
  %2551 = fadd fast float %2545, 1.000000e+00
  %2552 = fmul fast float %2550, %2551
  %2553 = call float @dx.op.unary.f32(i32 6, float %2552)  ; FAbs(value)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2548, 3
  %2555 = fcmp fast oge float %2553, %2554
  %2556 = select i1 %2555, float 0x4197782600000000, float %2553
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = extractvalue %dx.types.CBufRet.f32 %2557, 2
  %2561 = select i1 %2546, float %2558, float %2478
  %2562 = select i1 %2546, float %2559, float %2479
  %2563 = select i1 %2546, float %2560, float %2480
  %2564 = fmul fast float %2561, %2475
  %2565 = fmul fast float %2562, %2475
  %2566 = fmul fast float %2563, %2475
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 0
  %2569 = extractvalue %dx.types.CBufRet.f32 %2567, 1
  %2570 = extractvalue %dx.types.CBufRet.f32 %2567, 2
  %2571 = select i1 %2546, float %2568, float %2485
  %2572 = select i1 %2546, float %2569, float %2486
  %2573 = select i1 %2546, float %2570, float %2487
  %2574 = fmul fast float %2571, %2476
  %2575 = fmul fast float %2572, %2476
  %2576 = fmul fast float %2573, %2476
  %2577 = fadd fast float %2574, %2564
  %2578 = fadd fast float %2575, %2565
  %2579 = fadd fast float %2576, %2566
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.CBufRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2584 = select i1 %2546, float %2581, float %2492
  %2585 = select i1 %2546, float %2582, float %2493
  %2586 = select i1 %2546, float %2583, float %2494
  %2587 = fadd fast float %2577, %2584
  %2588 = fadd fast float %2578, %2585
  %2589 = fadd fast float %2579, %2586
  %2590 = fmul fast float %2587, %2556
  %2591 = fmul fast float %2588, %2556
  %2592 = fmul fast float %2589, %2556
  %2593 = fmul fast float %2590, %2590
  %2594 = fmul fast float %2591, %2591
  %2595 = fadd fast float %2593, %2594
  %2596 = fmul fast float %2592, %2592
  %2597 = fadd fast float %2595, %2596
  %2598 = call float @dx.op.unary.f32(i32 24, float %2597)  ; Sqrt(value)
  %2599 = fsub fast float %2598, %2511
  %2600 = fmul fast float %2599, %2513
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  br label %2602

; <label>:2602                                    ; preds = %2527, %2523
  %2603 = phi float [ %2601, %2527 ], [ 1.000000e+00, %2523 ]
  %2604 = fmul fast float %2520, 5.000000e-01
  %2605 = fadd fast float %2604, 5.000000e-01
  %2606 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2607 = call float @dx.op.unary.f32(i32 27, float %2606)  ; Round_ni(value)
  %2608 = call float @dx.op.unary.f32(i32 22, float %2606)  ; Frc(value)
  %2609 = fmul fast float %2608, 2.000000e+00
  %2610 = fadd fast float %2609, -1.000000e+00
  %2611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %24, float %2471, float %2472, float %2607, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.ResRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.ResRet.f32 %2611, 2
  %2615 = extractvalue %dx.types.ResRet.f32 %2611, 3
  %2616 = fadd fast float %2612, -5.000000e-01
  %2617 = fadd fast float %2614, -5.000000e-01
  %2618 = fmul fast float %2616, 0xBFD5555560000000
  %2619 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2617, float %2618)  ; FMad(a,b,c)
  %2620 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2613, float 0.000000e+00)  ; FMad(a,b,c)
  %2621 = fadd fast float %2620, %2615
  %2622 = fmul fast float %2616, -7.500000e-01
  %2623 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2617, float %2622)  ; FMad(a,b,c)
  %2624 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2613, float 0.000000e+00)  ; FMad(a,b,c)
  %2625 = fadd fast float %2624, %2615
  %2626 = call float @dx.op.binary.f32(i32 35, float %2619, float -1.000000e+00)  ; FMax(a,b)
  %2627 = call float @dx.op.binary.f32(i32 35, float %2621, float -1.000000e+00)  ; FMax(a,b)
  %2628 = call float @dx.op.binary.f32(i32 35, float %2623, float -1.000000e+00)  ; FMax(a,b)
  %2629 = call float @dx.op.binary.f32(i32 35, float %2625, float -1.000000e+00)  ; FMax(a,b)
  %2630 = call float @dx.op.binary.f32(i32 36, float %2626, float 1.000000e+00)  ; FMin(a,b)
  %2631 = call float @dx.op.binary.f32(i32 36, float %2627, float 1.000000e+00)  ; FMin(a,b)
  %2632 = call float @dx.op.binary.f32(i32 36, float %2628, float 1.000000e+00)  ; FMin(a,b)
  %2633 = call float @dx.op.binary.f32(i32 36, float %2629, float 1.000000e+00)  ; FMin(a,b)
  %2634 = fcmp fast olt float %2630, 0x3FEFFF8020000000
  br i1 %2634, label %2635, label %2750, !dx.controlflow.hints !135

; <label>:2635                                    ; preds = %2602
  %2636 = extractvalue %dx.types.CBufRet.f32 %2518, 3
  %2637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2638 = extractvalue %dx.types.CBufRet.f32 %2637, 0
  %2639 = extractvalue %dx.types.CBufRet.f32 %2637, 1
  %2640 = extractvalue %dx.types.CBufRet.f32 %2637, 2
  %2641 = extractvalue %dx.types.CBufRet.f32 %2637, 3
  %2642 = fsub fast float %2638, %2630
  %2643 = fsub fast float %2639, %2631
  %2644 = fsub fast float %2640, %2632
  %2645 = fsub fast float %2641, %2633
  %2646 = fmul fast float %2642, %2636
  %2647 = fmul fast float %2643, %2636
  %2648 = fmul fast float %2644, %2636
  %2649 = fmul fast float %2645, %2636
  %2650 = fadd fast float %2646, %2630
  %2651 = fadd fast float %2647, %2631
  %2652 = fsub fast float -0.000000e+00, %2651
  %2653 = fadd fast float %2648, %2632
  %2654 = fadd fast float %2649, %2633
  %2655 = fmul fast float %2650, %2650
  %2656 = fsub fast float %2651, %2655
  %2657 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2656)  ; FMax(a,b)
  %2658 = fdiv fast float 1.000000e+00, %2657
  %2659 = fmul fast float %2651, %2650
  %2660 = fsub fast float %2653, %2659
  %2661 = fsub fast float %2610, %2650
  %2662 = fmul fast float %2610, %2610
  %2663 = fsub fast float %2662, %2651
  %2664 = fmul fast float %2661, %2658
  %2665 = fmul fast float %2664, %2660
  %2666 = fsub fast float %2663, %2665
  %2667 = fmul fast float %2651, %2651
  %2668 = fsub fast float %2654, %2667
  %2669 = fmul fast float %2660, %2660
  %2670 = fmul fast float %2669, %2658
  %2671 = fsub fast float %2668, %2670
  %2672 = fdiv fast float %2666, %2671
  %2673 = fmul fast float %2660, %2672
  %2674 = fsub fast float %2661, %2673
  %2675 = fmul fast float %2674, %2658
  %2676 = fmul fast float %2675, %2650
  %2677 = fsub fast float 1.000000e+00, %2676
  %2678 = fmul fast float %2651, %2672
  %2679 = fsub fast float %2677, %2678
  %2680 = fmul fast float %2675, %2675
  %2681 = fmul fast float %2672, 4.000000e+00
  %2682 = fmul fast float %2681, %2679
  %2683 = fsub fast float %2680, %2682
  %2684 = call float @dx.op.unary.f32(i32 24, float %2683)  ; Sqrt(value)
  %2685 = fcmp fast oge float %2675, 0.000000e+00
  %2686 = fsub fast float -0.000000e+00, %2684
  %2687 = select i1 %2685, float %2686, float %2684
  %2688 = fsub fast float %2687, %2675
  %2689 = fdiv fast float %2688, %2672
  %2690 = fdiv fast float %2679, %2688
  %2691 = fmul fast float %2689, 5.000000e-01
  %2692 = fmul fast float %2690, 2.000000e+00
  %2693 = select i1 %2685, float %2691, float %2692
  %2694 = select i1 %2685, float %2692, float %2691
  %2695 = call float @dx.op.binary.f32(i32 35, float %2693, float %2694)  ; FMax(a,b)
  %2696 = call float @dx.op.binary.f32(i32 36, float %2693, float %2694)  ; FMin(a,b)
  %2697 = fcmp fast ogt float %2610, %2696
  br i1 %2697, label %2698, label %2708

; <label>:2698                                    ; preds = %2635
  %2699 = fsub fast float %2610, %2696
  %2700 = fsub fast float %2695, %2696
  %2701 = fmul fast float %2699, %2700
  %2702 = fmul fast float %2695, %2610
  %2703 = fadd fast float %2695, %2610
  %2704 = fmul fast float %2703, %2650
  %2705 = fadd fast float %2702, %2651
  %2706 = fsub fast float %2705, %2704
  %2707 = fdiv fast float %2706, %2701
  br label %2708

; <label>:2708                                    ; preds = %2698, %2635
  %2709 = phi float [ %2707, %2698 ], [ 0.000000e+00, %2635 ]
  %2710 = fcmp fast ogt float %2610, %2695
  %2711 = fsub fast float %2610, %2695
  br i1 %2710, label %2712, label %2722

; <label>:2712                                    ; preds = %2708
  %2713 = fsub fast float %2695, %2696
  %2714 = fmul fast float %2713, %2711
  %2715 = fmul fast float %2696, %2610
  %2716 = fadd fast float %2696, %2610
  %2717 = fmul fast float %2716, %2650
  %2718 = fsub fast float %2652, %2715
  %2719 = fadd fast float %2718, %2717
  %2720 = fdiv fast float %2719, %2714
  %2721 = fadd fast float %2720, %2709
  br label %2722

; <label>:2722                                    ; preds = %2712, %2708
  %2723 = phi float [ %2721, %2712 ], [ %2709, %2708 ]
  %2724 = fsub fast float %2610, %2696
  %2725 = fmul fast float %2724, %2711
  %2726 = fmul fast float %2696, %2695
  %2727 = fadd fast float %2696, %2695
  %2728 = fmul fast float %2727, %2650
  %2729 = fadd fast float %2726, %2651
  %2730 = fsub fast float %2729, %2728
  %2731 = fdiv fast float %2730, %2725
  %2732 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2733 = fcmp fast oeq float %1525, 0.000000e+00
  %2734 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2735 = fcmp fast oeq float %2734, 0.000000e+00
  %2736 = or i1 %2733, %2735
  %2737 = fmul fast float %2734, 2.000000e+00
  %2738 = fadd fast float %2519, %2520
  %2739 = fdiv fast float %2738, %2737
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = fmul fast float %2740, 2.000000e+00
  %2742 = fsub fast float 3.000000e+00, %2741
  %2743 = fmul fast float %2740, %2740
  %2744 = fmul fast float %2743, %2742
  %2745 = select i1 %2736, float 1.000000e+00, float %2744
  %2746 = fmul fast float %2731, %1525
  %2747 = fadd fast float %2732, %2746
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = fmul fast float %2745, %2748
  br label %2750

; <label>:2750                                    ; preds = %2722, %2602
  %2751 = phi float [ %2749, %2722 ], [ 0.000000e+00, %2602 ]
  %2752 = fsub fast float 1.000000e+00, %2751
  %2753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %24, float %2471, float %2472, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2754 = extractvalue %dx.types.ResRet.f32 %2753, 0
  %2755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.i32 %2755, 2
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2763, label %2758

; <label>:2758                                    ; preds = %2750
  %2759 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2760 = fadd fast float %2754, -1.000000e+00
  %2761 = fmul fast float %2759, %2760
  %2762 = fadd fast float %2761, 1.000000e+00
  br label %2763

; <label>:2763                                    ; preds = %2758, %2750
  %2764 = phi float [ %2762, %2758 ], [ %2752, %2750 ]
  br i1 %2526, label %2765, label %2783

; <label>:2765                                    ; preds = %2763
  %2766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2766, 1
  %2768 = fsub fast float %2603, %2767
  %2769 = call float @dx.op.unary.f32(i32 7, float %2768)  ; Saturate(value)
  %2770 = fsub fast float %2603, %2525
  %2771 = call float @dx.op.unary.f32(i32 7, float %2770)  ; Saturate(value)
  %2772 = fsub fast float %2769, %2771
  %2773 = fsub fast float %2605, %2771
  %2774 = fdiv fast float %2773, %2772
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fmul fast float %2775, 2.000000e+00
  %2777 = fsub fast float 3.000000e+00, %2776
  %2778 = fsub fast float %2754, %2764
  %2779 = fmul fast float %2775, %2775
  %2780 = fmul fast float %2779, %2778
  %2781 = fmul fast float %2780, %2777
  %2782 = fadd fast float %2781, %2764
  br label %2783

; <label>:2783                                    ; preds = %2765, %2763
  %2784 = phi float [ %2782, %2765 ], [ %2764, %2763 ]
  %2785 = call float @dx.op.binary.f32(i32 35, float %2754, float %2784)  ; FMax(a,b)
  %2786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.i32 %2786, 2
  %2788 = and i32 %2787, 1
  %2789 = icmp eq i32 %2788, 0
  %2790 = fcmp fast une float %2785, 1.000000e+00
  %2791 = and i1 %2790, %2789
  br i1 %2791, label %2792, label %2811

; <label>:2792                                    ; preds = %2783
  %2793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %2471, float %2472, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.ResRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.ResRet.f32 %2793, 2
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 1
  %2799 = fmul fast float %2798, %2794
  %2800 = fmul fast float %2798, %2795
  %2801 = fmul fast float %2798, %2796
  %2802 = fcmp fast ogt float %2754, 0x3FEFFF2E40000000
  %2803 = fsub fast float 1.000000e+00, %2785
  %2804 = fsub fast float 1.000000e+00, %2754
  %2805 = fdiv fast float %2803, %2804
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2807 = select i1 %2802, float 0.000000e+00, float %2806
  %2808 = fmul fast float %2799, %2807
  %2809 = fmul fast float %2800, %2807
  %2810 = fmul fast float %2801, %2807
  br label %2811

; <label>:2811                                    ; preds = %2792, %2783
  %2812 = phi float [ 0.000000e+00, %2783 ], [ %2808, %2792 ]
  %2813 = phi float [ 0.000000e+00, %2783 ], [ %2809, %2792 ]
  %2814 = phi float [ 0.000000e+00, %2783 ], [ %2810, %2792 ]
  %2815 = fmul fast float %2812, %1416
  %2816 = fmul fast float %2813, %1416
  %2817 = fmul fast float %2814, %1416
  %2818 = fmul fast float %2785, %2446
  %2819 = call float @dx.op.dot3.f32(i32 55, float %2785, float %2785, float %2785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2820 = call float @dx.op.dot3.f32(i32 55, float %2815, float %2816, float %2817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2821 = select i1 %134, float %2819, float %2785
  %2822 = select i1 %134, float 1.000000e+00, float %2785
  %2823 = select i1 %134, float %2820, float %2815
  %2824 = select i1 %134, float 0.000000e+00, float %2816
  %2825 = select i1 %134, float 0.000000e+00, float %2817
  %2826 = fmul fast float %2821, %2458
  %2827 = fmul fast float %2821, %2459
  %2828 = fmul fast float %2822, %2460
  %2829 = fadd fast float %2826, %2823
  %2830 = fadd fast float %2827, %2824
  %2831 = fadd fast float %2825, %2828
  %2832 = fmul fast float %2821, %2461
  %2833 = fmul fast float %2821, %2462
  %2834 = fmul fast float %2822, %2463
  br label %2835

; <label>:2835                                    ; preds = %2811, %2467, %2436, %1668
  %2836 = phi float [ %1673, %1668 ], [ %2458, %2436 ], [ %2829, %2811 ], [ %2458, %2467 ]
  %2837 = phi float [ %1674, %1668 ], [ %2459, %2436 ], [ %2830, %2811 ], [ %2459, %2467 ]
  %2838 = phi float [ %1675, %1668 ], [ %2460, %2436 ], [ %2831, %2811 ], [ %2460, %2467 ]
  %2839 = phi float [ %1676, %1668 ], [ %2461, %2436 ], [ %2832, %2811 ], [ %2461, %2467 ]
  %2840 = phi float [ %1677, %1668 ], [ %2462, %2436 ], [ %2833, %2811 ], [ %2462, %2467 ]
  %2841 = phi float [ %1678, %1668 ], [ %2463, %2436 ], [ %2834, %2811 ], [ %2463, %2467 ]
  %2842 = phi float [ %1679, %1668 ], [ %2446, %2436 ], [ %2818, %2811 ], [ %2446, %2467 ]
  %2843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.f32 %2843, 2
  %2845 = extractvalue %dx.types.CBufRet.f32 %2843, 3
  %2846 = fmul fast float %2844, %64
  %2847 = fmul fast float %2845, %65
  %2848 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2849 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  %2850 = select i1 %817, i32 2, i32 0
  %2851 = or i32 %2850, 1
  %2852 = uitofp i32 %2851 to float
  %2853 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %2848, float %2849, float %2852, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2854 = extractvalue %dx.types.ResRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.ResRet.f32 %2853, 1
  %2856 = extractvalue %dx.types.ResRet.f32 %2853, 2
  %2857 = extractvalue %dx.types.ResRet.f32 %2853, 3
  %2858 = add nuw nsw i32 %2850, 2
  %2859 = uitofp i32 %2858 to float
  %2860 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %24, float %2848, float %2849, float %2859, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2861 = extractvalue %dx.types.ResRet.f32 %2860, 0
  %2862 = extractvalue %dx.types.ResRet.f32 %2860, 1
  %2863 = extractvalue %dx.types.ResRet.f32 %2860, 2
  %2864 = extractvalue %dx.types.ResRet.f32 %2860, 3
  %2865 = call float @dx.op.binary.f32(i32 35, float %2855, float %2856)  ; FMax(a,b)
  %2866 = call float @dx.op.binary.f32(i32 35, float %2854, float %2865)  ; FMax(a,b)
  %2867 = call float @dx.op.binary.f32(i32 35, float %2866, float %2857)  ; FMax(a,b)
  %2868 = call float @dx.op.binary.f32(i32 36, float %2862, float %2863)  ; FMin(a,b)
  %2869 = call float @dx.op.binary.f32(i32 36, float %2861, float %2868)  ; FMin(a,b)
  %2870 = call float @dx.op.binary.f32(i32 36, float %2869, float %2864)  ; FMin(a,b)
  %2871 = fmul fast float %2867, 2.550000e+02
  %2872 = fadd fast float %2871, 0x3F70101020000000
  %2873 = fptoui float %2872 to i32
  %2874 = fmul fast float %2870, 2.550000e+02
  %2875 = fadd fast float %2874, 0x3F70101020000000
  %2876 = fptoui float %2875 to i32
  %2877 = icmp ult i32 %2873, %2876
  br i1 %2877, label %2878, label %2924

; <label>:2878                                    ; preds = %2835
  %2879 = fcmp fast ogt float %56, 9.843750e-01
  %2880 = fadd fast float %1672, -4.000000e+00
  %2881 = select i1 %2879, float -4.000000e+00, float %2880
  %2882 = call float @dx.op.binary.f32(i32 35, float %2881, float 0.000000e+00)  ; FMax(a,b)
  %2883 = fadd fast float %982, %2882
  %2884 = fmul fast float %2883, %983
  %2885 = call float @dx.op.unary.f32(i32 23, float %2884)  ; Log(value)
  %2886 = fmul fast float %984, %2885
  %2887 = fmul fast float %2886, %992
  %2888 = call float @dx.op.unary.f32(i32 7, float %2887)  ; Saturate(value)
  %2889 = uitofp i32 %2873 to float
  %2890 = uitofp i32 %2876 to float
  %2891 = fadd fast float %2889, 5.000000e-01
  %2892 = fadd fast float %2890, 5.000000e-01
  %2893 = fmul fast float %992, %2891
  %2894 = fmul fast float %992, %2892
  %2895 = fadd fast float %2893, 0x3F0FFB4800000000
  %2896 = fadd fast float %2894, 0xBF0FFB4800000000
  %2897 = call float @dx.op.binary.f32(i32 35, float %2888, float %2895)  ; FMax(a,b)
  %2898 = call float @dx.op.binary.f32(i32 36, float %2897, float %2896)  ; FMin(a,b)
  %2899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.f32 %2899, 1
  %2901 = extractvalue %dx.types.CBufRet.f32 %2899, 2
  %2902 = extractvalue %dx.types.CBufRet.f32 %2899, 0
  %2903 = select i1 %817, float %2902, float 0.000000e+00
  %2904 = fmul fast float %2900, %2898
  %2905 = fadd fast float %2903, %2904
  %2906 = fadd fast float %2903, %2901
  %2907 = fsub fast float %2900, %2901
  %2908 = fadd fast float %2907, %2903
  %2909 = call float @dx.op.binary.f32(i32 35, float %2905, float %2906)  ; FMax(a,b)
  %2910 = call float @dx.op.binary.f32(i32 36, float %2909, float %2908)  ; FMin(a,b)
  %2911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %23, float %2848, float %2849, float %2910, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.ResRet.f32 %2911, 2
  %2915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %23, float %2848, float %2849, float %2910, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  %2917 = extractvalue %dx.types.ResRet.f32 %2915, 1
  %2918 = extractvalue %dx.types.ResRet.f32 %2915, 2
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 1
  %2921 = fmul fast float %2920, %2916
  %2922 = fmul fast float %2920, %2917
  %2923 = fmul fast float %2920, %2918
  br label %2924

; <label>:2924                                    ; preds = %2878, %2835
  %2925 = phi float [ %2912, %2878 ], [ 1.000000e+00, %2835 ]
  %2926 = phi float [ %2913, %2878 ], [ 1.000000e+00, %2835 ]
  %2927 = phi float [ %2914, %2878 ], [ 1.000000e+00, %2835 ]
  %2928 = phi float [ %2921, %2878 ], [ 0.000000e+00, %2835 ]
  %2929 = phi float [ %2922, %2878 ], [ 0.000000e+00, %2835 ]
  %2930 = phi float [ %2923, %2878 ], [ 0.000000e+00, %2835 ]
  %2931 = fmul fast float %2928, %1416
  %2932 = fmul fast float %2929, %1416
  %2933 = fmul fast float %2930, %1416
  %2934 = fmul fast float %2925, %2842
  %2935 = call float @dx.op.dot3.f32(i32 55, float %2925, float %2926, float %2927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2936 = call float @dx.op.dot3.f32(i32 55, float %2931, float %2932, float %2933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2937 = select i1 %134, float %2935, float %2925
  %2938 = select i1 %134, float %2935, float %2926
  %2939 = select i1 %134, float 1.000000e+00, float %2927
  %2940 = select i1 %134, float %2936, float %2931
  %2941 = select i1 %134, float 0.000000e+00, float %2932
  %2942 = select i1 %134, float 0.000000e+00, float %2933
  %2943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2944 = extractvalue %dx.types.CBufRet.i32 %2943, 3
  %2945 = and i32 %2944, 3
  %2946 = icmp ne i32 %2945, 0
  %2947 = and i32 %2944, 4
  %2948 = icmp ne i32 %2947, 0
  %2949 = and i1 %2946, %2948
  %2950 = and i1 %134, %2949
  br i1 %2950, label %2951, label %2957

; <label>:2951                                    ; preds = %2924
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2954 = fadd fast float %2934, -1.000000e+00
  %2955 = fmul fast float %2953, %2954
  %2956 = fadd fast float %2955, 1.000000e+00
  br label %2957

; <label>:2957                                    ; preds = %2951, %2924
  %2958 = phi float [ %2956, %2951 ], [ %2934, %2924 ]
  %2959 = fadd fast float %2839, %2836
  %2960 = fmul fast float %2937, %2959
  %2961 = fadd fast float %2960, %2940
  %2962 = fadd fast float %2840, %2837
  %2963 = fmul fast float %2938, %2962
  %2964 = fadd fast float %2963, %2941
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  br i1 %134, label %2967, label %2989

; <label>:2967                                    ; preds = %2957
  %2968 = fadd fast float %2961, %2964
  %2969 = fmul fast float %2966, %2968
  %2970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2971 = extractvalue %dx.types.CBufRet.f32 %2970, 3
  %2972 = extractvalue %dx.types.CBufRet.f32 %1421, 1
  %2973 = fsub fast float %1424, %2972
  %2974 = extractvalue %dx.types.CBufRet.f32 %1421, 2
  %2975 = fmul fast float %2973, %2974
  %2976 = call float @dx.op.unary.f32(i32 7, float %2975)  ; Saturate(value)
  %2977 = fsub fast float %2976, %2971
  %2978 = fmul fast float %2977, %2958
  %2979 = fadd fast float %2978, %2971
  %2980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2981 = extractvalue %dx.types.CBufRet.f32 %2980, 0
  %2982 = fsub fast float %2979, %2981
  %2983 = fmul fast float %2982, 1.000000e+01
  %2984 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2985 = fsub fast float %793, %1416
  %2986 = fmul fast float %2984, %2985
  %2987 = fadd fast float %2986, %1416
  %2988 = fmul fast float %2987, %2979
  br label %3001

; <label>:2989                                    ; preds = %2957
  %2990 = fadd fast float %2841, %2838
  %2991 = fmul fast float %2939, %2990
  %2992 = fadd fast float %2991, %2942
  %2993 = fmul fast float %2966, %2961
  %2994 = fmul fast float %2966, %2964
  %2995 = fmul fast float %2966, %2992
  %2996 = call float @dx.op.binary.f32(i32 35, float %2994, float %2995)  ; FMax(a,b)
  %2997 = call float @dx.op.binary.f32(i32 35, float %2993, float %2996)  ; FMax(a,b)
  %2998 = call float @dx.op.binary.f32(i32 35, float %2997, float %1416)  ; FMax(a,b)
  %2999 = fcmp fast ugt float %2998, 0x3F10000000000000
  br i1 %2999, label %3001, label %3000

; <label>:3000                                    ; preds = %2989
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3001

; <label>:3001                                    ; preds = %3000, %2989, %2967
  %3002 = phi float [ %2969, %2967 ], [ %2993, %3000 ], [ %2993, %2989 ]
  %3003 = phi float [ %2988, %2967 ], [ %2994, %3000 ], [ %2994, %2989 ]
  %3004 = phi float [ %2987, %2967 ], [ %2995, %3000 ], [ %2995, %2989 ]
  %3005 = phi float [ %2987, %2967 ], [ %1416, %3000 ], [ %1416, %2989 ]
  %3006 = fadd fast float %530, 0x3FE3C6EF40000000
  %3007 = call float @dx.op.unary.f32(i32 22, float %3006)  ; Frc(value)
  %3008 = call float @dx.op.unary.f32(i32 23, float %3002)  ; Log(value)
  %3009 = fadd fast float %3008, -7.000000e+00
  %3010 = call float @dx.op.unary.f32(i32 21, float %3009)  ; Exp(value)
  %3011 = fmul fast float %3007, 2.000000e+00
  %3012 = fadd fast float %3011, -1.000000e+00
  %3013 = fmul fast float %3010, %3012
  %3014 = fcmp fast ogt float %3002, 0.000000e+00
  %3015 = select i1 %3014, float %3013, float 0.000000e+00
  %3016 = fadd fast float %3015, %3002
  %3017 = fadd fast float %530, 0x3FF3C6EF40000000
  %3018 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3019 = call float @dx.op.unary.f32(i32 23, float %3003)  ; Log(value)
  %3020 = fadd fast float %3019, -7.000000e+00
  %3021 = call float @dx.op.unary.f32(i32 21, float %3020)  ; Exp(value)
  %3022 = fmul fast float %3018, 2.000000e+00
  %3023 = fadd fast float %3022, -1.000000e+00
  %3024 = fmul fast float %3021, %3023
  %3025 = fcmp fast ogt float %3003, 0.000000e+00
  %3026 = select i1 %3025, float %3024, float 0.000000e+00
  %3027 = fadd fast float %3026, %3003
  %3028 = fadd fast float %530, 0x3FFDAA66E0000000
  %3029 = call float @dx.op.unary.f32(i32 22, float %3028)  ; Frc(value)
  %3030 = call float @dx.op.unary.f32(i32 23, float %3004)  ; Log(value)
  %3031 = fadd fast float %3030, -6.000000e+00
  %3032 = call float @dx.op.unary.f32(i32 21, float %3031)  ; Exp(value)
  %3033 = fmul fast float %3029, 2.000000e+00
  %3034 = fadd fast float %3033, -1.000000e+00
  %3035 = fmul fast float %3032, %3034
  %3036 = fcmp fast ogt float %3004, 0.000000e+00
  %3037 = select i1 %3036, float %3035, float 0.000000e+00
  %3038 = fadd fast float %3037, %3004
  %3039 = select i1 %134, float %3003, float %3027
  %3040 = select i1 %134, float %3004, float %3038
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3041 = call float @dx.op.binary.f32(i32 36, float %3016, float 3.225500e+04)  ; FMin(a,b)
  %3042 = call float @dx.op.binary.f32(i32 36, float %3039, float 3.225500e+04)  ; FMin(a,b)
  %3043 = call float @dx.op.binary.f32(i32 36, float %3040, float 3.225500e+04)  ; FMin(a,b)
  %3044 = call float @dx.op.binary.f32(i32 36, float %3005, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3041)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3042)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3043)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3044)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3005)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3005)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3005)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3005)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!40 = !{[42 x i32] [i32 40, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!41 = !{void ()* @ps_main, !"ps_main", !42, !4, !71}
!42 = !{!43, !67, null}
!43 = !{!44, !47, !48, !50, !53, !55, !57, !59, !61, !63, !65, !66}
!44 = !{i32 0, !"SV_Position", i8 9, i8 3, !45, i8 4, i32 1, i8 4, i32 0, i8 0, !46}
!45 = !{i32 0}
!46 = !{i32 3, i32 15}
!47 = !{i32 1, !"COLOR", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 1, i8 0, !46}
!48 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 2, i8 0, !49}
!49 = !{i32 3, i32 3}
!50 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 3, i8 0, !52}
!51 = !{i32 3}
!52 = !{i32 3, i32 7}
!53 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 4, i8 0, !46}
!54 = !{i32 4}
!55 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 5, i8 0, !46}
!56 = !{i32 5}
!57 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 6, i8 0, !46}
!58 = !{i32 6}
!59 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 7, i8 0, !46}
!60 = !{i32 7}
!61 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!62 = !{i32 8}
!63 = !{i32 9, !"COLOR", i8 5, i8 0, !51, i8 1, i32 1, i8 3, i32 9, i8 0, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 10, !"COLOR", i8 5, i8 0, !54, i8 1, i32 1, i8 1, i32 9, i8 3, null}
!66 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !45, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68, !69}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !45, i8 0, i32 1, i8 4, i32 0, i8 0, !46}
!69 = !{i32 1, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 1, i8 0, !46}
!70 = !{i32 1}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = !{!86, !86, i64 0}
!86 = !{!"float", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!90 = distinct !{!90, !91, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!91 = distinct !{!91, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!92 = distinct !{!92, !93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!93 = distinct !{!93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!94 = distinct !{!94, !93, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!95 = distinct !{!95, !96, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!96 = distinct !{!96, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!97 = distinct !{!97, !96, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!98 = distinct !{!98, !96, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!99 = distinct !{!99, !100, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!100 = distinct !{!100, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!101 = distinct !{!101, !100, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!102 = distinct !{!102, !100, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!103 = distinct !{!103, !104, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!104 = distinct !{!104, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"\01?sort@@YAXAIAM00@Z: %c"}
!107 = distinct !{!107, !"\01?sort@@YAXAIAM00@Z"}
!108 = !{!109, !110, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!109 = distinct !{!109, !107, !"\01?sort@@YAXAIAM00@Z: %a"}
!110 = distinct !{!110, !107, !"\01?sort@@YAXAIAM00@Z: %b"}
!111 = !{!110}
!112 = !{!109, !106, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!113 = !{!109}
!114 = !{!110, !106, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!115 = !{!116}
!116 = distinct !{!116, !117, !"\01?sort@@YAXAIAM00@Z: %c"}
!117 = distinct !{!117, !"\01?sort@@YAXAIAM00@Z"}
!118 = !{!119, !120, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!119 = distinct !{!119, !117, !"\01?sort@@YAXAIAM00@Z: %a"}
!120 = distinct !{!120, !117, !"\01?sort@@YAXAIAM00@Z: %b"}
!121 = !{!120}
!122 = !{!119, !116, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!123 = !{!119}
!124 = !{!120, !116, !90, !92, !94, !95, !97, !98, !99, !101, !102, !103}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 2}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}

