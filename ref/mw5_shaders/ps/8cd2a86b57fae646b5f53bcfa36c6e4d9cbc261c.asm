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
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float       
; QUAD_POSITION            0   xyzw        7     NONE   float   xyzw
; COLOR                    3   xyz         8     NONE    uint   x z 
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
; shader hash: c11423dc8d297e52832b73d055750d51
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
; TEXCOORD                 5               centroid       
; TEXCOORD                 8                 linear       
; QUAD_POSITION            0        nointerpolation       
; COLOR                    3        nointerpolation       
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32     2darray      T3     t78,space2     1
;                                   texture     f32          2d      T4     t77,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture    byte         r/o      T7      t3,space1     1
;                                   texture    byte         r/o      T8      t4,space1     1
;                                   texture    byte         r/o      T9      t5,space1     1
;                                   texture    byte         r/o     T10      t6,space1     1
;                                   texture     f32          2d     T11             t0     1
;                                   texture     f32          2d     T12     t57,space2     1
;                                   texture    byte         r/o     T13     t69,space1     1
;                                   texture     u32          2d     T14     t56,space2     1
;                                   texture     f32     2darray     T15     t35,space2     1
;                                   texture     f32          1d     T16     t30,space2     1
;                                   texture     f32          3d     T17     t44,space2     1
;                                   texture     f32          3d     T18     t45,space2     1
;                                   texture     f32     2darray     T19     t47,space2     1
;                                   textureunorm_f32     2darray     T20     t85,space2     1
;                                   texture     f32          2d     T21     t83,space2     1
;                                   texture     f32          2d     T22     t86,space2     1
;                                   texture    byte         r/o     T23             t1     1
;                                   texture     f32          3d     T24     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 78, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = alloca [3 x float], align 4
  %56 = alloca [3 x float], align 4
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = fmul fast float %60, %51
  %62 = fmul fast float %60, %52
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fmul fast float %61, 2.000000e+00
  %67 = fmul fast float %66, %64
  %68 = fmul fast float %62, 2.000000e+00
  %69 = fmul fast float %68, %65
  %70 = fsub fast float 1.000000e+00, %67
  %71 = fsub fast float 1.000000e+00, %69
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fmul fast float %70, %73
  %77 = fmul fast float %70, %74
  %78 = fmul fast float %70, %75
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fmul fast float %71, %80
  %84 = fmul fast float %71, %81
  %85 = fmul fast float %71, %82
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fadd fast float %83, %87
  %91 = fadd fast float %90, %76
  %92 = fadd fast float %84, %88
  %93 = fadd fast float %92, %77
  %94 = fadd fast float %85, %89
  %95 = fadd fast float %94, %78
  %96 = fmul fast float %91, %54
  %97 = fmul fast float %93, %54
  %98 = fmul fast float %95, %54
  %99 = fmul fast float %43, %40
  %100 = fmul fast float %44, %39
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %44, %38
  %103 = fmul fast float %42, %40
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %42, %39
  %106 = fmul fast float %43, %38
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %101, %41
  %109 = fmul fast float %104, %41
  %110 = fmul fast float %107, %41
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 3
  %113 = and i32 %112, 3
  %114 = icmp ne i32 %113, 0
  %115 = and i32 %112, 4
  %116 = icmp ne i32 %115, 0
  %117 = and i1 %114, %116
  br i1 %117, label %118, label %127

; <label>:118                                     ; preds = %0
  %119 = fmul fast float %65, %62
  %120 = fmul fast float %64, %61
  %121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %120, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = fsub fast float 1.000000e+00, %122
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = fcmp fast olt float %123, %125
  br label %130

; <label>:127                                     ; preds = %0
  %128 = icmp eq i32 %115, 0
  %129 = and i1 %114, %128
  br label %130

; <label>:130                                     ; preds = %127, %118
  %131 = phi i1 [ %126, %118 ], [ %129, %127 ]
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %135 = fmul fast float %133, %61
  %136 = fmul fast float %134, %62
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = and i32 %138, 114688
  %140 = icmp ne i32 %139, 0
  %141 = select i1 %140, float %135, float 0.000000e+00
  %142 = select i1 %140, float %136, float 0.000000e+00
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fmul fast float %144, 2.550000e+02
  %146 = fptoui float %145 to i32
  %147 = select i1 %140, i32 %146, i32 0
  %148 = mul i32 %30, 208
  %149 = add i32 %148, 188
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = and i32 %112, 114688
  %153 = and i32 %112, 8
  %154 = icmp ne i32 %153, 0
  %155 = or i1 %131, %154
  %156 = select i1 %155, i32 %152, i32 16384
  %157 = and i32 %156, %151
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

; <label>:159                                     ; preds = %130
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %160

; <label>:160                                     ; preds = %159, %130
  %161 = and i32 %151, 512
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %187, label %163

; <label>:163                                     ; preds = %160
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %167 = fmul fast float %165, %61
  %168 = fmul fast float %166, %62
  %169 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %171 = fdiv fast float %169, %170
  %172 = fcmp fast ogt float %171, 0x3FFC71C720000000
  br i1 %172, label %173, label %179

; <label>:173                                     ; preds = %163
  %174 = fdiv fast float 0x3FFC71C720000000, %171
  %175 = fmul fast float %174, %168
  %176 = fsub fast float 1.000000e+00, %174
  %177 = fmul fast float %176, 5.000000e-01
  %178 = fadd fast float %177, %175
  br label %187

; <label>:179                                     ; preds = %163
  %180 = fcmp fast olt float %171, 0x3FFC71C720000000
  br i1 %180, label %181, label %187

; <label>:181                                     ; preds = %179
  %182 = fmul fast float %167, 5.625000e-01
  %183 = fmul fast float %182, %171
  %184 = fmul fast float %171, 2.812500e-01
  %185 = fsub fast float 5.000000e-01, %184
  %186 = fadd fast float %185, %183
  br label %187

; <label>:187                                     ; preds = %181, %179, %173, %160
  %188 = phi float [ %45, %160 ], [ %167, %173 ], [ %186, %181 ], [ %167, %179 ]
  %189 = phi float [ %46, %160 ], [ %178, %173 ], [ %168, %181 ], [ %168, %179 ]
  %190 = add i32 %31, 72
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = extractvalue %dx.types.ResRet.i32 %191, 1
  %194 = bitcast i32 %192 to float
  %195 = bitcast i32 %193 to float
  %196 = fmul fast float %194, %45
  %197 = fmul fast float %195, %46
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = and i32 %151, 16
  %201 = icmp ne i32 %200, 0
  %202 = select i1 %201, float 1.000000e+00, float %50
  %203 = add i32 %31, 112
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = add i32 %205, 0
  %207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %207, %dx.types.Handle %58, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float %209, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fmul fast float %211, %202
  %213 = icmp eq i32 %200, 0
  br i1 %213, label %233, label %214, !dx.controlflow.hints !70

; <label>:214                                     ; preds = %187
  %215 = add i32 %148, 64
  %216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fadd fast float %217, 1.000000e+00
  %219 = fmul fast float %218, %50
  %220 = fsub fast float %219, %217
  %221 = fsub fast float %218, %220
  %222 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %223 = fsub fast float 1.000000e+00, %219
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fsub fast float %222, %224
  %226 = fsub fast float %212, %224
  %227 = fdiv fast float %226, %225
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = fmul fast float %228, 2.000000e+00
  %230 = fsub fast float 3.000000e+00, %229
  %231 = fmul fast float %228, %228
  %232 = fmul fast float %231, %230
  br label %233

; <label>:233                                     ; preds = %214, %187
  %234 = phi float [ %232, %214 ], [ %212, %187 ]
  %235 = fcmp fast ogt float %234, 0.000000e+00
  br i1 %235, label %237, label %236

; <label>:236                                     ; preds = %233
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %237

; <label>:237                                     ; preds = %236, %233
  %238 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %239 = fmul fast float %61, 5.000000e-01
  %240 = fmul fast float %62, 5.000000e-01
  %241 = fptosi float %239 to i32
  %242 = fptosi float %240 to i32
  %243 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %241, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = lshr i32 %244, 18
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F4C00EBA0000000
  %248 = call float @dx.op.unary.f32(i32 21, float %247)  ; Exp(value)
  %249 = fadd fast float %248, -1.000000e+00
  %250 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %251 = extractvalue %dx.types.Dimensions %250, 0
  %252 = sitofp i32 %251 to float
  %253 = extractvalue %dx.types.Dimensions %250, 1
  %254 = sitofp i32 %253 to float
  %255 = fcmp fast oge float %239, %252
  %256 = fcmp fast oge float %240, %254
  %257 = or i1 %255, %256
  %258 = select i1 %257, float 0x4197782600000000, float %249
  %259 = fsub fast float %258, %54
  %260 = fcmp fast ogt float %259, 0.000000e+00
  %261 = and i32 %147, -2
  %262 = icmp eq i32 %261, 2
  %263 = and i1 %262, %260
  %264 = xor i1 %260, true
  %265 = icmp eq i32 %147, 1
  %266 = and i1 %265, %264
  %267 = or i1 %263, %266
  %268 = and i32 %151, 262144
  %269 = icmp ne i32 %268, 0
  %270 = and i1 %269, %267
  %271 = xor i1 %267, true
  %272 = and i32 %151, 131072
  %273 = icmp ne i32 %272, 0
  %274 = and i1 %273, %271
  %275 = or i1 %270, %274
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %237
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %277

; <label>:277                                     ; preds = %276, %237
  %278 = and i32 %151, 32
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %529, label %280, !dx.controlflow.hints !71

; <label>:280                                     ; preds = %277
  %281 = add i32 %148, 80
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = add i32 %148, 96
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = add i32 %148, 112
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = extractvalue %dx.types.ResRet.f32 %293, 3
  %298 = add i32 %148, 128
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = extractvalue %dx.types.ResRet.f32 %299, 3
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 4096
  %307 = icmp ne i32 %306, 0
  %308 = fcmp fast une float %291, 0.000000e+00
  %309 = and i32 %305, 64
  %310 = icmp ne i32 %309, 0
  %311 = and i32 %305, 128
  %312 = icmp eq i32 %311, 0
  %313 = and i32 %305, 2048
  %314 = icmp eq i32 %313, 0
  %315 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %316 = extractvalue %dx.types.Dimensions %315, 0
  %317 = sitofp i32 %316 to float
  %318 = extractvalue %dx.types.Dimensions %315, 1
  %319 = sitofp i32 %318 to float
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %323 = fmul fast float %321, %61
  %324 = fmul fast float %322, %62
  %325 = fmul fast float %323, %317
  %326 = fmul fast float %324, %319
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %329 = fsub fast float -0.000000e+00, %328
  %330 = fptoui float %329 to i32
  %331 = fptoui float %325 to i32
  %332 = fptoui float %326 to i32
  %333 = and i32 %330, 31
  %334 = lshr i32 %331, %333
  %335 = lshr i32 %332, %333
  %336 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %330, i32 %334, i32 %335, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = fcmp fast ogt float %337, -1.000000e+00
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %341 = select i1 %338, float %340, float 1.000000e+00
  %342 = fadd fast float %337, 1.000000e+00
  %343 = fmul fast float %341, %342
  %344 = call float @dx.op.unary.f32(i32 6, float %343)  ; FAbs(value)
  %345 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %346 = fcmp fast oge float %344, %345
  %347 = select i1 %346, float 0x4197782600000000, float %344
  br i1 %314, label %425, label %348, !dx.controlflow.hints !72

; <label>:348                                     ; preds = %280
  %349 = fmul fast float %66, %321
  %350 = fmul fast float %68, %322
  %351 = fsub fast float 1.000000e+00, %349
  %352 = fsub fast float 1.000000e+00, %350
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fmul fast float %351, %354
  %358 = fmul fast float %351, %355
  %359 = fmul fast float %351, %356
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fmul fast float %352, %361
  %365 = fmul fast float %352, %362
  %366 = fmul fast float %352, %363
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = fadd fast float %364, %368
  %372 = fadd fast float %371, %357
  %373 = fadd fast float %365, %369
  %374 = fadd fast float %373, %358
  %375 = fadd fast float %366, %370
  %376 = fadd fast float %375, %359
  %377 = fmul fast float %372, %347
  %378 = fmul fast float %374, %347
  %379 = fmul fast float %376, %347
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %384 = fsub fast float %381, %32
  %385 = fadd fast float %384, %377
  %386 = fsub fast float %382, %33
  %387 = fadd fast float %386, %378
  %388 = fsub fast float %383, %34
  %389 = fadd fast float %388, %379
  %390 = fmul fast float %35, %35
  %391 = call float @dx.op.dot3.f32(i32 55, float %385, float %387, float %389, float %385, float %387, float %389)  ; Dot3(ax,ay,az,bx,by,bz)
  %392 = fsub fast float %390, %391
  %393 = fmul fast float %290, %390
  %394 = fmul fast float %289, %390
  %395 = fcmp fast olt float %392, %393
  %396 = fcmp fast ogt float %392, %394
  %397 = or i1 %395, %396
  %398 = select i1 %397, float 0.000000e+00, float %392
  %399 = fsub fast float %289, %290
  %400 = fmul fast float %399, %390
  %401 = fsub fast float %398, %393
  %402 = fdiv fast float %401, %400
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fmul fast float %403, 2.000000e+00
  %405 = fsub fast float 3.000000e+00, %404
  %406 = fmul fast float %403, %403
  %407 = fmul fast float %406, %405
  %408 = fmul fast float %294, %47
  %409 = fmul fast float %295, %48
  %410 = fmul fast float %296, %49
  %411 = fsub fast float %408, %300
  %412 = fsub fast float %409, %301
  %413 = fsub fast float %410, %302
  %414 = fsub fast float %297, %303
  %415 = fmul fast float %407, %411
  %416 = fmul fast float %407, %412
  %417 = fmul fast float %407, %413
  %418 = fmul fast float %407, %414
  %419 = fadd fast float %415, %300
  %420 = fadd fast float %416, %301
  %421 = fadd fast float %417, %302
  %422 = fadd fast float %418, %303
  %423 = fmul fast float %283, %283
  %424 = fmul fast float %423, %398
  br label %520

; <label>:425                                     ; preds = %280
  %426 = and i32 %305, 256
  %427 = icmp eq i32 %426, 0
  %428 = fsub fast float %347, %54
  br i1 %427, label %477, label %429

; <label>:429                                     ; preds = %425
  %430 = fadd fast float %289, %54
  %431 = fcmp fast olt float %347, %54
  %432 = fcmp fast ogt float %347, %430
  %433 = or i1 %431, %432
  %434 = select i1 %433, float 0.000000e+00, float %428
  %435 = call float @dx.op.unary.f32(i32 83, float %347)  ; DerivCoarseX(value)
  %436 = call float @dx.op.unary.f32(i32 84, float %347)  ; DerivCoarseY(value)
  %437 = fmul fast float %435, %435
  %438 = fmul fast float %436, %436
  %439 = fadd fast float %438, %437
  %440 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %441 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %442 = fmul fast float %441, %440
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %444 = fmul fast float %443, %290
  %445 = fdiv fast float %428, %444
  %446 = call float @dx.op.unary.f32(i32 7, float %445)  ; Saturate(value)
  %447 = fmul fast float %446, 2.000000e+00
  %448 = fsub fast float 3.000000e+00, %447
  %449 = fmul fast float %446, %446
  %450 = fmul fast float %449, %448
  %451 = fsub fast float %347, %430
  %452 = fadd fast float %451, %444
  %453 = fdiv fast float %452, %444
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = fmul fast float %454, 2.000000e+00
  %456 = fsub fast float 3.000000e+00, %455
  %457 = fmul fast float %454, %454
  %458 = fmul fast float %457, %456
  %459 = fsub fast float %450, %458
  %460 = fmul fast float %294, %47
  %461 = fmul fast float %295, %48
  %462 = fmul fast float %296, %49
  %463 = fsub fast float %460, %300
  %464 = fsub fast float %461, %301
  %465 = fsub fast float %462, %302
  %466 = fsub fast float %297, %303
  %467 = fmul fast float %459, %463
  %468 = fmul fast float %459, %464
  %469 = fmul fast float %459, %465
  %470 = fmul fast float %459, %466
  %471 = fadd fast float %467, %300
  %472 = fadd fast float %468, %301
  %473 = fadd fast float %469, %302
  %474 = fadd fast float %470, %303
  %475 = fmul fast float %434, %283
  %476 = call float @dx.op.unary.f32(i32 6, float %475)  ; FAbs(value)
  br label %520

; <label>:477                                     ; preds = %425
  br i1 %308, label %478, label %491

; <label>:478                                     ; preds = %477
  %479 = fdiv fast float 5.000000e+01, %35
  %480 = select i1 %310, float %479, float 1.000000e+00
  %481 = fmul fast float %480, %283
  %482 = fmul fast float %198, 2.000000e+00
  %483 = fmul fast float %199, 2.000000e+00
  %484 = fadd fast float %482, -1.000000e+00
  %485 = fadd fast float %483, -1.000000e+00
  %486 = call float @dx.op.dot2.f32(i32 54, float %484, float %485, float %484, float %485)  ; Dot2(ax,ay,bx,by)
  %487 = fmul fast float %291, %35
  %488 = fmul fast float %487, %486
  %489 = fsub fast float %428, %488
  %490 = fmul fast float %481, %489
  br label %520

; <label>:491                                     ; preds = %477
  br i1 %312, label %512, label %492

; <label>:492                                     ; preds = %491
  %493 = fmul fast float %35, 0x3F947AE140000000
  %494 = select i1 %310, float %493, float 1.000000e+00
  %495 = fdiv fast float 1.000000e+00, %494
  %496 = fmul fast float %494, %284
  %497 = fmul fast float %494, %285
  %498 = fmul fast float %495, %286
  %499 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  %500 = fcmp fast olt float %499, %496
  br i1 %500, label %501, label %505, !dx.controlflow.hints !73

; <label>:501                                     ; preds = %492
  %502 = fmul fast float %495, %283
  %503 = fmul fast float %502, %499
  %504 = call float @dx.op.unary.f32(i32 6, float %503)  ; FAbs(value)
  br label %520

; <label>:505                                     ; preds = %492
  %506 = fcmp fast ogt float %499, %497
  br i1 %506, label %507, label %520

; <label>:507                                     ; preds = %505
  %508 = fsub fast float %499, %497
  %509 = fmul fast float %498, %508
  %510 = call float @dx.op.unary.f32(i32 6, float %509)  ; FAbs(value)
  %511 = fsub fast float 1.000000e+00, %510
  br label %520

; <label>:512                                     ; preds = %491
  %513 = fdiv fast float 5.000000e+01, %35
  %514 = select i1 %310, float %513, float 1.000000e+00
  %515 = fmul fast float %514, %283
  %516 = call float @dx.op.unary.f32(i32 6, float %259)  ; FAbs(value)
  %517 = select i1 %307, float %516, float 0x47EFFFFFE0000000
  %518 = call float @dx.op.binary.f32(i32 36, float %428, float %517)  ; FMin(a,b)
  %519 = fmul fast float %515, %518
  br label %520

; <label>:520                                     ; preds = %512, %507, %505, %501, %478, %429, %348
  %521 = phi float [ %424, %348 ], [ %476, %429 ], [ %490, %478 ], [ %519, %512 ], [ %504, %501 ], [ %511, %507 ], [ %499, %505 ]
  %522 = phi float [ %419, %348 ], [ %471, %429 ], [ %47, %478 ], [ %47, %512 ], [ %47, %501 ], [ %47, %507 ], [ %47, %505 ]
  %523 = phi float [ %420, %348 ], [ %472, %429 ], [ %48, %478 ], [ %48, %512 ], [ %48, %501 ], [ %48, %507 ], [ %48, %505 ]
  %524 = phi float [ %421, %348 ], [ %473, %429 ], [ %49, %478 ], [ %49, %512 ], [ %49, %501 ], [ %49, %507 ], [ %49, %505 ]
  %525 = phi float [ %422, %348 ], [ %474, %429 ], [ 1.000000e+00, %478 ], [ 1.000000e+00, %512 ], [ 1.000000e+00, %501 ], [ 1.000000e+00, %507 ], [ 1.000000e+00, %505 ]
  %526 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %527 = fmul fast float %525, %238
  %528 = fmul fast float %527, %526
  br label %529

; <label>:529                                     ; preds = %520, %277
  %530 = phi float [ %522, %520 ], [ %47, %277 ]
  %531 = phi float [ %523, %520 ], [ %48, %277 ]
  %532 = phi float [ %524, %520 ], [ %49, %277 ]
  %533 = phi float [ %528, %520 ], [ %238, %277 ]
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %536 = fptosi float %54 to i32
  %537 = sitofp i32 %536 to float
  %538 = fadd fast float %535, %537
  %539 = fmul fast float %538, 0x3FE3C6EF40000000
  %540 = frem fast float %61, 2.560000e+02
  %541 = frem fast float %62, 2.560000e+02
  %542 = fptoui float %540 to i32
  %543 = fptoui float %541 to i32
  %544 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %542, i32 %543, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = fadd fast float %545, %539
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = and i32 %151, 1
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %606, label %550, !dx.controlflow.hints !74

; <label>:550                                     ; preds = %529
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 2
  %553 = extractvalue %dx.types.ResRet.f32 %551, 3
  %554 = add i32 %148, 16
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = add i32 %148, 32
  %560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 2
  %564 = and i32 %151, 2
  %565 = icmp eq i32 %564, 0
  %566 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = call float @dx.op.unary.f32(i32 25, float %566)  ; Rsqrt(value)
  %568 = fmul fast float %567, %42
  %569 = fmul fast float %567, %43
  %570 = fmul fast float %567, %44
  %571 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %572 = call float @dx.op.unary.f32(i32 25, float %571)  ; Rsqrt(value)
  %573 = fmul fast float %572, %96
  %574 = fmul fast float %572, %97
  %575 = fmul fast float %572, %98
  %576 = call float @dx.op.dot3.f32(i32 55, float %573, float %574, float %575, float %568, float %569, float %570)  ; Dot3(ax,ay,az,bx,by,bz)
  %577 = fmul fast float %576, %576
  %578 = fmul fast float %577, %552
  %579 = fadd fast float %578, %553
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  br i1 %565, label %581, label %591, !dx.controlflow.hints !75

; <label>:581                                     ; preds = %550
  %582 = extractvalue %dx.types.ResRet.f32 %551, 1
  %583 = extractvalue %dx.types.ResRet.f32 %551, 0
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 3
  %586 = fmul fast float %585, %571
  %587 = fsub fast float %583, %586
  %588 = fmul fast float %587, %582
  %589 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %590 = fmul fast float %589, %580
  br label %591

; <label>:591                                     ; preds = %581, %550
  %592 = phi float [ %590, %581 ], [ %580, %550 ]
  %593 = fsub fast float %556, %561
  %594 = fsub fast float %557, %562
  %595 = fsub fast float %558, %563
  %596 = fmul fast float %592, %593
  %597 = fmul fast float %592, %594
  %598 = fmul fast float %592, %595
  %599 = fadd fast float %596, %561
  %600 = fadd fast float %597, %562
  %601 = fadd fast float %598, %563
  %602 = fmul fast float %599, %530
  %603 = fmul fast float %600, %531
  %604 = fmul fast float %601, %532
  %605 = fmul fast float %592, %533
  br label %606

; <label>:606                                     ; preds = %591, %529
  %607 = phi float [ %602, %591 ], [ %530, %529 ]
  %608 = phi float [ %603, %591 ], [ %531, %529 ]
  %609 = phi float [ %604, %591 ], [ %532, %529 ]
  %610 = phi float [ %605, %591 ], [ %533, %529 ]
  %611 = add i32 %31, 104
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = add i32 %613, 0
  %615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %616 = add i32 %31, 24
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %615, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = extractvalue %dx.types.ResRet.f32 %619, 3
  %624 = and i32 %618, 255
  %625 = uitofp i32 %624 to float
  %626 = lshr i32 %618, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %623, %625
  %630 = fadd fast float %629, %628
  %631 = fmul fast float %630, 0x3F70101000000000
  %632 = add i32 %31, 56
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = lshr i32 %634, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = lshr i32 %634, 16
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = fmul fast float %620, %607
  %647 = fmul fast float %637, %637
  %648 = fmul fast float %647, %646
  %649 = fmul fast float %621, %608
  %650 = fmul fast float %641, %641
  %651 = fmul fast float %650, %649
  %652 = fmul fast float %622, %609
  %653 = fmul fast float %645, %645
  %654 = fmul fast float %653, %652
  %655 = add i32 %31, 28
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = add i32 %31, 108
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 3
  %667 = and i32 %657, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %657, 8
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = lshr i32 %657, 16
  %673 = and i32 %672, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101000000000
  %676 = fmul fast float %664, %668
  %677 = fadd fast float %676, %671
  %678 = fmul fast float %677, 0x3F70101000000000
  %679 = fadd fast float %665, -5.000000e-01
  %680 = fadd fast float %666, -5.000000e-01
  %681 = fmul fast float %679, %675
  %682 = fmul fast float %680, %675
  %683 = fadd fast float %681, 5.000000e-01
  %684 = fadd fast float %682, 5.000000e-01
  %685 = fmul fast float %683, 2.000000e+00
  %686 = fadd fast float %685, -1.000000e+00
  %687 = fmul fast float %684, 2.000000e+00
  %688 = fadd fast float %687, -1.000000e+00
  %689 = fadd fast float %686, %688
  %690 = fmul fast float %689, 5.000000e-01
  %691 = fsub fast float %686, %688
  %692 = fmul fast float %691, 5.000000e-01
  %693 = call float @dx.op.unary.f32(i32 6, float %690)  ; FAbs(value)
  %694 = fsub fast float 1.000000e+00, %693
  %695 = call float @dx.op.unary.f32(i32 6, float %692)  ; FAbs(value)
  %696 = fsub fast float %694, %695
  %697 = call float @dx.op.dot3.f32(i32 55, float %690, float %692, float %696, float %690, float %692, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = call float @dx.op.unary.f32(i32 25, float %697)  ; Rsqrt(value)
  %699 = fmul fast float %690, %698
  %700 = fmul fast float %692, %698
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 3
  %703 = fcmp fast ogt float %702, 0.000000e+00
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 1
  br i1 %703, label %706, label %731

; <label>:706                                     ; preds = %606
  %707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = extractvalue %dx.types.ResRet.f32 %707, 1
  %710 = extractvalue %dx.types.ResRet.f32 %707, 2
  %711 = extractvalue %dx.types.ResRet.f32 %707, 3
  %712 = fmul fast float %705, %711
  %713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = extractvalue %dx.types.ResRet.f32 %713, 3
  %718 = fmul fast float %705, %714
  %719 = fmul fast float %705, %715
  %720 = fmul fast float %705, %716
  %721 = fmul fast float %705, %717
  %722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = extractvalue %dx.types.ResRet.f32 %722, 1
  %725 = extractvalue %dx.types.ResRet.f32 %722, 2
  %726 = extractvalue %dx.types.ResRet.f32 %722, 3
  %727 = fmul fast float %705, %723
  %728 = fmul fast float %705, %724
  %729 = fmul fast float %705, %725
  %730 = fmul fast float %705, %726
  br label %736

; <label>:731                                     ; preds = %606
  %732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  br label %736

; <label>:736                                     ; preds = %731, %706
  %737 = phi float [ %727, %706 ], [ 0.000000e+00, %731 ]
  %738 = phi float [ %728, %706 ], [ 0.000000e+00, %731 ]
  %739 = phi float [ %729, %706 ], [ 0.000000e+00, %731 ]
  %740 = phi float [ %730, %706 ], [ 0.000000e+00, %731 ]
  %741 = phi float [ %718, %706 ], [ 0.000000e+00, %731 ]
  %742 = phi float [ %719, %706 ], [ 0.000000e+00, %731 ]
  %743 = phi float [ %720, %706 ], [ 0.000000e+00, %731 ]
  %744 = phi float [ %721, %706 ], [ 0.000000e+00, %731 ]
  %745 = phi float [ %708, %706 ], [ %733, %731 ]
  %746 = phi float [ %709, %706 ], [ %734, %731 ]
  %747 = phi float [ %710, %706 ], [ %735, %731 ]
  %748 = phi float [ %712, %706 ], [ 0.000000e+00, %731 ]
  %749 = fmul float %705, %747
  %750 = fmul float %705, %746
  %751 = fmul float %705, %745
  %752 = call float @dx.op.dot2.f32(i32 54, float %699, float %700, float %699, float %700)  ; Dot2(ax,ay,bx,by)
  %753 = fsub fast float 1.000000e+00, %752
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = call float @dx.op.unary.f32(i32 24, float %754)  ; Sqrt(value)
  %756 = fmul fast float %755, %42
  %757 = fmul fast float %755, %43
  %758 = fmul fast float %755, %44
  %759 = fmul fast float %699, %38
  %760 = fmul fast float %699, %39
  %761 = fmul fast float %699, %40
  %762 = fmul fast float %108, %700
  %763 = fmul fast float %109, %700
  %764 = fmul fast float %110, %700
  %765 = fadd fast float %762, %759
  %766 = fadd fast float %765, %756
  %767 = fadd fast float %763, %760
  %768 = fadd fast float %767, %757
  %769 = fadd fast float %764, %761
  %770 = fadd fast float %769, %758
  %771 = call float @dx.op.dot3.f32(i32 55, float %766, float %768, float %770, float %766, float %768, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = call float @dx.op.unary.f32(i32 25, float %771)  ; Rsqrt(value)
  %773 = fmul fast float %766, %772
  %774 = fmul fast float %768, %772
  %775 = fmul fast float %770, %772
  %776 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %777 = call float @dx.op.unary.f32(i32 25, float %776)  ; Rsqrt(value)
  %778 = fmul fast float %777, %96
  %779 = fmul fast float %777, %97
  %780 = fmul fast float %777, %98
  %781 = fsub fast float -0.000000e+00, %778
  %782 = fsub fast float -0.000000e+00, %779
  %783 = fsub fast float -0.000000e+00, %780
  %784 = fadd fast float %631, 0xBFB99999A0000000
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = fmul fast float %785, 0x3FF1C71C80000000
  %787 = call float @dx.op.binary.f32(i32 36, float %631, float 0x3FB99999A0000000)  ; FMin(a,b)
  %788 = fsub fast float 1.000000e+00, %786
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = fmul fast float %789, %648
  %791 = fmul fast float %789, %651
  %792 = fmul fast float %789, %654
  %793 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %794 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %795 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %796 = fmul fast float %786, %648
  %797 = fmul fast float %786, %651
  %798 = fmul fast float %786, %654
  %799 = fadd fast float %796, %787
  %800 = fadd fast float %797, %787
  %801 = fadd fast float %798, %787
  %802 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %806 = call float @dx.op.dot3.f32(i32 55, float %793, float %794, float %795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = add i32 %31, 32
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 255
  %811 = uitofp i32 %810 to float
  %812 = lshr i32 %809, 8
  %813 = and i32 %812, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, %806
  %816 = fadd fast float %815, %811
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %819 = and i32 %151, 8192
  %820 = icmp eq i32 %819, 0
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  br i1 %820, label %829, label %823, !dx.controlflow.hints !76

; <label>:823                                     ; preds = %736
  %824 = add i32 %148, 176
  %825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = fcmp fast oge float %826, 0.000000e+00
  %828 = select i1 %827, float %826, float %822
  br label %829

; <label>:829                                     ; preds = %823, %736
  %830 = phi float [ %828, %823 ], [ %822, %736 ]
  %831 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %241, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 18
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F4C00EBA0000000
  %836 = call float @dx.op.unary.f32(i32 21, float %835)  ; Exp(value)
  %837 = fadd fast float %836, -1.000000e+00
  %838 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %839 = extractvalue %dx.types.Dimensions %838, 0
  %840 = sitofp i32 %839 to float
  %841 = extractvalue %dx.types.Dimensions %838, 1
  %842 = sitofp i32 %841 to float
  %843 = fcmp fast oge float %239, %840
  %844 = fcmp fast oge float %240, %842
  %845 = or i1 %843, %844
  %846 = select i1 %845, float 0x4197782600000000, float %837
  %847 = icmp eq i32 %147, 3
  %848 = fcmp fast ogt float %54, %846
  %849 = and i1 %265, %848
  %850 = or i1 %847, %849
  %851 = icmp eq i32 %147, 2
  %852 = fcmp fast ole float %54, %846
  %853 = and i1 %851, %852
  %854 = or i1 %853, %850
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %857 = fcmp fast ogt float %856, 0.000000e+00
  br i1 %857, label %858, label %865

; <label>:858                                     ; preds = %829
  %859 = fmul fast float %774, 0xBFDF454380000000
  %860 = fmul fast float %775, 0x3FDF454380000000
  %861 = fmul fast float %773, 0xBFDF454380000000
  %862 = call float @dx.op.dot4.f32(i32 56, float %751, float %750, float %749, float %748, float 0x3FD20DD760000000, float %859, float %860, float %861)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %863 = call float @dx.op.dot4.f32(i32 56, float %741, float %742, float %743, float %744, float 0x3FD20DD760000000, float %859, float %860, float %861)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %864 = call float @dx.op.dot4.f32(i32 56, float %737, float %738, float %739, float %740, float 0x3FD20DD760000000, float %859, float %860, float %861)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %865

; <label>:865                                     ; preds = %858, %829
  %866 = phi float [ %862, %858 ], [ %751, %829 ]
  %867 = phi float [ %863, %858 ], [ %750, %829 ]
  %868 = phi float [ %864, %858 ], [ %749, %829 ]
  %869 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float %781, float %782, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  br i1 %857, label %871, label %971

; <label>:871                                     ; preds = %865
  %872 = fsub fast float -0.000000e+00, %740
  %873 = fsub fast float %872, %744
  %874 = fsub fast float %873, %748
  %875 = fsub fast float -0.000000e+00, %738
  %876 = fsub fast float %875, %742
  %877 = fsub fast float %876, %750
  %878 = fadd fast float %743, %739
  %879 = fadd fast float %878, %749
  %880 = call float @dx.op.dot3.f32(i32 55, float %874, float %877, float %879, float %874, float %877, float %879)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = call float @dx.op.unary.f32(i32 25, float %880)  ; Rsqrt(value)
  %882 = fmul fast float %881, %874
  %883 = fmul fast float %881, %877
  %884 = fmul fast float %881, %879
  %885 = fmul fast float %883, 0xBFD4D8D7C0000000
  %886 = fmul fast float %884, 0x3FD4D8D7C0000000
  %887 = fmul fast float %882, 0xBFD4D8D7C0000000
  %888 = call float @dx.op.dot4.f32(i32 56, float %751, float %750, float %749, float %748, float 0x3FD20DD760000000, float %885, float %886, float %887)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %889 = call float @dx.op.dot4.f32(i32 56, float %741, float %742, float %743, float %744, float 0x3FD20DD760000000, float %885, float %886, float %887)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %890 = call float @dx.op.dot4.f32(i32 56, float %737, float %738, float %739, float %740, float 0x3FD20DD760000000, float %885, float %886, float %887)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %891 = fmul fast float %888, 0x4003333340000000
  %892 = fmul fast float %751, 0x3FE5AA35A0000000
  %893 = fsub fast float %891, %892
  %894 = fmul fast float %889, 0x4003333340000000
  %895 = fmul fast float %741, 0x3FE5AA35A0000000
  %896 = fsub fast float %894, %895
  %897 = fmul fast float %890, 0x4003333340000000
  %898 = fmul fast float %737, 0x3FE5AA35A0000000
  %899 = fsub fast float %897, %898
  %900 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %893)  ; FMax(a,b)
  %901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %896)  ; FMax(a,b)
  %902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %899)  ; FMax(a,b)
  %903 = fsub fast float %882, %778
  %904 = fsub fast float %883, %779
  %905 = fsub fast float %884, %780
  %906 = call float @dx.op.dot3.f32(i32 55, float %903, float %904, float %905, float %903, float %904, float %905)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = call float @dx.op.unary.f32(i32 25, float %906)  ; Rsqrt(value)
  %908 = fmul fast float %907, %903
  %909 = fmul fast float %907, %904
  %910 = fmul fast float %907, %905
  %911 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float %882, float %883, float %884)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = call float @dx.op.unary.f32(i32 6, float %911)  ; FAbs(value)
  %913 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float %908, float %909, float %910)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = fmul fast float %913, %913
  %915 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float %908, float %909, float %910)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = call float @dx.op.unary.f32(i32 6, float %915)  ; FAbs(value)
  %917 = fsub fast float 1.000000e+00, %805
  %918 = call float @dx.op.binary.f32(i32 35, float %917, float 0x3F847AE140000000)  ; FMax(a,b)
  %919 = fmul fast float %918, %918
  %920 = fmul fast float %919, %919
  %921 = fsub fast float 1.000000e+00, %920
  %922 = fmul fast float %870, %870
  %923 = fmul fast float %922, %921
  %924 = fadd fast float %923, %920
  %925 = bitcast float %924 to i32
  %926 = ashr i32 %925, 1
  %927 = add nsw i32 %926, 532487669
  %928 = bitcast i32 %927 to float
  %929 = fadd fast float %928, %870
  %930 = fmul fast float %920, %914
  %931 = fsub fast float 1.000000e+00, %914
  %932 = fadd fast float %931, %930
  %933 = fmul fast float %912, %912
  %934 = fmul fast float %933, %921
  %935 = fadd fast float %934, %920
  %936 = bitcast float %935 to i32
  %937 = ashr i32 %936, 1
  %938 = add nsw i32 %937, 532487669
  %939 = bitcast i32 %938 to float
  %940 = fadd fast float %939, %912
  %941 = fmul fast float %932, %932
  %942 = fmul fast float %941, %929
  %943 = fmul fast float %942, %940
  %944 = fdiv fast float 1.000000e+00, %943
  %945 = fmul fast float %920, %944
  %946 = fsub fast float 1.000000e+00, %916
  %947 = bitcast float %946 to i32
  %948 = sitofp i32 %947 to float
  %949 = fmul fast float %948, 5.000000e+00
  %950 = fadd fast float %949, 0xC1EFBF8940000000
  %951 = fptosi float %950 to i32
  %952 = bitcast i32 %951 to float
  %953 = fsub fast float 1.000000e+00, %802
  %954 = fsub fast float 1.000000e+00, %803
  %955 = fsub fast float 1.000000e+00, %804
  %956 = fmul fast float %952, %953
  %957 = fmul fast float %952, %954
  %958 = fmul fast float %952, %955
  %959 = fadd fast float %956, %802
  %960 = fadd fast float %957, %803
  %961 = fadd fast float %958, %804
  %962 = fmul fast float %945, %900
  %963 = fmul fast float %962, %959
  %964 = fmul fast float %945, %901
  %965 = fmul fast float %964, %960
  %966 = fmul fast float %945, %902
  %967 = fmul fast float %966, %961
  %968 = call float @dx.op.binary.f32(i32 35, float %963, float 0.000000e+00)  ; FMax(a,b)
  %969 = call float @dx.op.binary.f32(i32 35, float %965, float 0.000000e+00)  ; FMax(a,b)
  %970 = call float @dx.op.binary.f32(i32 35, float %967, float 0.000000e+00)  ; FMax(a,b)
  br label %971

; <label>:971                                     ; preds = %871, %865
  %972 = phi float [ %968, %871 ], [ 0.000000e+00, %865 ]
  %973 = phi float [ %969, %871 ], [ 0.000000e+00, %865 ]
  %974 = phi float [ %970, %871 ], [ 0.000000e+00, %865 ]
  %975 = fmul fast float %870, 9.843750e-01
  %976 = fmul fast float %805, 9.843750e-01
  %977 = fadd fast float %975, 7.812500e-03
  %978 = fadd fast float %976, 7.812500e-03
  %979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %977, float %978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %980 = extractvalue %dx.types.ResRet.f32 %979, 2
  %981 = extractvalue %dx.types.ResRet.f32 %979, 3
  %982 = fmul fast float %980, %802
  %983 = fmul fast float %980, %803
  %984 = fmul fast float %980, %804
  %985 = fadd fast float %982, %981
  %986 = fadd fast float %983, %981
  %987 = fadd fast float %984, %981
  %988 = call float @dx.op.binary.f32(i32 35, float %986, float %987)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 35, float %985, float %988)  ; FMax(a,b)
  %990 = fsub fast float 1.000000e+00, %989
  %991 = call float @dx.op.dot3.f32(i32 55, float %778, float %779, float %780, float %773, float %774, float %775)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = fmul fast float %991, 2.000000e+00
  %993 = fmul fast float %992, %773
  %994 = fmul fast float %992, %774
  %995 = fmul fast float %992, %775
  %996 = fsub fast float %778, %993
  %997 = fsub fast float %779, %994
  %998 = fsub fast float %780, %995
  br i1 %857, label %999, label %1006

; <label>:999                                     ; preds = %971
  %1000 = fmul fast float %997, 0xBFDF454380000000
  %1001 = fmul fast float %998, 0x3FDF454380000000
  %1002 = fmul fast float %996, 0xBFDF454380000000
  %1003 = call float @dx.op.dot4.f32(i32 56, float %751, float %750, float %749, float %748, float 0x3FD20DD760000000, float %1000, float %1001, float %1002)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1004 = call float @dx.op.dot4.f32(i32 56, float %741, float %742, float %743, float %744, float 0x3FD20DD760000000, float %1000, float %1001, float %1002)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1005 = call float @dx.op.dot4.f32(i32 56, float %737, float %738, float %739, float %740, float 0x3FD20DD760000000, float %1000, float %1001, float %1002)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1006

; <label>:1006                                    ; preds = %999, %971
  %1007 = phi float [ %1003, %999 ], [ %751, %971 ]
  %1008 = phi float [ %1004, %999 ], [ %750, %971 ]
  %1009 = phi float [ %1005, %999 ], [ %749, %971 ]
  %1010 = call float @dx.op.dot3.f32(i32 55, float %1007, float %1008, float %1009, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1014 = fmul fast float %1012, %61
  %1015 = fmul fast float %1013, %62
  %1016 = fptoui float %1014 to i32
  %1017 = fptoui float %1015 to i32
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1022 = fadd fast float %54, -4.000000e+00
  %1023 = call float @dx.op.binary.f32(i32 35, float %1022, float 0.000000e+00)  ; FMax(a,b)
  %1024 = fadd fast float %1023, %1019
  %1025 = fmul fast float %1024, %1020
  %1026 = call float @dx.op.unary.f32(i32 23, float %1025)  ; Log(value)
  %1027 = fmul fast float %1026, %1021
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1030 = fmul fast float %1027, %1029
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.i32 %1032, 1
  %1034 = add i32 %1033, -1
  %1035 = uitofp i32 %1033 to float
  %1036 = fmul fast float %1035, %1031
  %1037 = fptoui float %1036 to i32
  %1038 = call i32 @dx.op.binary.i32(i32 40, i32 %1037, i32 %1034)  ; UMin(a,b)
  %1039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.i32 %1039, 2
  %1041 = extractvalue %dx.types.CBufRet.i32 %1039, 3
  %1042 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1017, i32 %1040, i32 %1016)  ; UMad(a,b,c)
  %1043 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1038, i32 %1041, i32 %1042)  ; UMad(a,b,c)
  %1044 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %1045 = fptoui float %1044 to i32
  %1046 = lshr i32 %1045, 5
  %1047 = call i32 @dx.op.binary.i32(i32 40, i32 %1046, i32 8191)  ; UMin(a,b)
  %1048 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.i32 %1048, 2
  %1050 = add nsw i32 %1049, -1
  %1051 = call i32 @dx.op.binary.i32(i32 37, i32 %1050, i32 0)  ; IMax(a,b)
  %1052 = shl i32 %1047, 2
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = lshr i32 %1054, 16
  %1056 = and i32 %1054, 65535
  %1057 = lshr i32 %1054, 21
  %1058 = lshr i32 %1056, 5
  %1059 = call i32 @dx.op.binary.i32(i32 40, i32 %1058, i32 %1051)  ; UMin(a,b)
  %1060 = icmp ugt i32 %1057, %1059
  br i1 %1060, label %1423, label %1061

; <label>:1061                                    ; preds = %1006
  br label %1062

; <label>:1062                                    ; preds = %1415, %1061
  %1063 = phi float [ %1416, %1415 ], [ 0.000000e+00, %1061 ]
  %1064 = phi float [ %1417, %1415 ], [ 0.000000e+00, %1061 ]
  %1065 = phi float [ %1418, %1415 ], [ 0.000000e+00, %1061 ]
  %1066 = phi float [ %1419, %1415 ], [ 1.000000e+00, %1061 ]
  %1067 = phi i32 [ %1420, %1415 ], [ %1057, %1061 ]
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 2
  %1070 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1043, i32 %1069, i32 %1067)  ; UMad(a,b,c)
  %1071 = shl i32 %1070, 2
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = shl i32 %1067, 5
  %1075 = sub nsw i32 %1055, %1074
  %1076 = call i32 @dx.op.binary.i32(i32 37, i32 %1075, i32 0)  ; IMax(a,b)
  %1077 = call i32 @dx.op.binary.i32(i32 38, i32 %1076, i32 31)  ; IMin(a,b)
  %1078 = sub nsw i32 1, %1055
  %1079 = add nsw i32 %1078, %1056
  %1080 = call i32 @dx.op.binary.i32(i32 37, i32 %1079, i32 0)  ; IMax(a,b)
  %1081 = call i32 @dx.op.binary.i32(i32 38, i32 %1080, i32 32)  ; IMin(a,b)
  %1082 = and i32 %1081, 31
  %1083 = shl i32 -1, %1082
  %1084 = xor i32 %1083, -1
  %1085 = and i32 %1077, 31
  %1086 = shl i32 %1084, %1085
  %1087 = icmp eq i32 %1081, 32
  %1088 = select i1 %1087, i32 -1, i32 %1086
  %1089 = and i32 %1088, %1073
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1415, label %1091

; <label>:1091                                    ; preds = %1062
  br label %1092

; <label>:1092                                    ; preds = %1198, %1091
  %1093 = phi float [ %1199, %1198 ], [ %1063, %1091 ]
  %1094 = phi float [ %1200, %1198 ], [ %1064, %1091 ]
  %1095 = phi float [ %1201, %1198 ], [ %1065, %1091 ]
  %1096 = phi float [ %1202, %1198 ], [ %1066, %1091 ]
  %1097 = phi i32 [ %1102, %1198 ], [ %1089, %1091 ]
  %1098 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1097)  ; FirstbitLo(value)
  %1099 = add i32 %1098, %1074
  %1100 = and i32 %1098, 31
  %1101 = shl i32 1, %1100
  %1102 = xor i32 %1101, %1097
  %1103 = mul i32 %1099, 72
  %1104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = add i32 %1103, 12
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %1103, 16
  %1112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = add i32 %1103, 28
  %1117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = add i32 %1103, 32
  %1120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = extractvalue %dx.types.ResRet.f32 %1120, 3
  %1125 = add i32 %1103, 48
  %1126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = add i32 %1103, 56
  %1130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = add i32 %1103, 64
  %1134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = mul i32 %1099, 60
  %1138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = add i32 %1137, 12
  %1143 = add i32 %1137, 48
  %1144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = and i32 %1110, 32767
  %1149 = bitcast float %1105 to i32
  %1150 = icmp eq i32 %1149, -1
  %1151 = bitcast float %1106 to i32
  %1152 = and i32 %1110, 32768
  %1153 = icmp ne i32 %1152, 0
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.CBufRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1158 = fsub fast float %1139, %1155
  %1159 = fsub fast float %1140, %1156
  %1160 = fsub fast float %1141, %1157
  %1161 = fsub fast float %96, %1158
  %1162 = fsub fast float %97, %1159
  %1163 = fsub fast float %98, %1160
  %1164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1162, float %1163, float %1165, float %1166, float %1167)  ; Dot3(ax,ay,az,bx,by,bz)
  %1169 = add i32 %1137, 24
  %1170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1162, float %1163, float %1171, float %1172, float %1173)  ; Dot3(ax,ay,az,bx,by,bz)
  %1175 = add i32 %1137, 36
  %1176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.ResRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.ResRet.f32 %1176, 2
  %1180 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1162, float %1163, float %1177, float %1178, float %1179)  ; Dot3(ax,ay,az,bx,by,bz)
  %1181 = call float @dx.op.unary.f32(i32 6, float %1168)  ; FAbs(value)
  %1182 = call float @dx.op.unary.f32(i32 6, float %1174)  ; FAbs(value)
  %1183 = call float @dx.op.unary.f32(i32 6, float %1180)  ; FAbs(value)
  %1184 = fsub fast float %1145, %1181
  %1185 = fsub fast float %1146, %1182
  %1186 = fsub fast float %1147, %1183
  %1187 = fmul fast float %1184, %1113
  %1188 = fmul fast float %1185, %1114
  %1189 = fmul fast float %1186, %1115
  %1190 = call float @dx.op.binary.f32(i32 36, float %1188, float %1189)  ; FMin(a,b)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1187, float %1190)  ; FMin(a,b)
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = call float @dx.op.binary.f32(i32 36, float %1096, float %1192)  ; FMin(a,b)
  %1194 = uitofp i1 %1153 to float
  %1195 = fsub fast float 1.000000e+00, %1194
  %1196 = fmul fast float %1193, %1195
  %1197 = fcmp fast ogt float %1196, 0.000000e+00
  br i1 %1197, label %1204, label %1198

; <label>:1198                                    ; preds = %1346, %1092
  %1199 = phi float [ %1410, %1346 ], [ %1093, %1092 ]
  %1200 = phi float [ %1411, %1346 ], [ %1094, %1092 ]
  %1201 = phi float [ %1412, %1346 ], [ %1095, %1092 ]
  %1202 = phi float [ %1413, %1346 ], [ %1096, %1092 ]
  %1203 = icmp eq i32 %1097, %1101
  br i1 %1203, label %1414, label %1092

; <label>:1204                                    ; preds = %1092
  br i1 %1150, label %1262, label %1205

; <label>:1205                                    ; preds = %1204
  %1206 = fsub fast float -0.000000e+00, %1165
  %1207 = fsub fast float -0.000000e+00, %1166
  %1208 = fsub fast float -0.000000e+00, %1167
  %1209 = call float @dx.op.dot3.f32(i32 55, float %996, float %997, float %998, float %1206, float %1207, float %1208)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = fsub fast float -0.000000e+00, %1209
  %1211 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1162, float %1163, float %1206, float %1207, float %1208)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = fadd fast float %1211, %1128
  %1213 = fadd fast float %1127, %1211
  %1214 = fsub fast float -0.000000e+00, %1213
  %1215 = fcmp ogt float %1209, -0.000000e+00
  %1216 = select i1 %1215, float %1214, float %1212
  %1217 = call float @dx.op.unary.f32(i32 6, float %1210)  ; FAbs(value)
  %1218 = fdiv fast float 1.000000e+00, %1217
  %1219 = fmul fast float %1216, %1218
  %1220 = call float @dx.op.binary.f32(i32 35, float %1219, float 0.000000e+00)  ; FMax(a,b)
  %1221 = fsub fast float -0.000000e+00, %1171
  %1222 = fsub fast float -0.000000e+00, %1172
  %1223 = fsub fast float -0.000000e+00, %1173
  %1224 = call float @dx.op.dot3.f32(i32 55, float %996, float %997, float %998, float %1221, float %1222, float %1223)  ; Dot3(ax,ay,az,bx,by,bz)
  %1225 = fsub fast float -0.000000e+00, %1224
  %1226 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1162, float %1163, float %1221, float %1222, float %1223)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = fadd fast float %1226, %1132
  %1228 = fadd fast float %1131, %1226
  %1229 = fsub fast float -0.000000e+00, %1228
  %1230 = fcmp ogt float %1224, -0.000000e+00
  %1231 = select i1 %1230, float %1229, float %1227
  %1232 = call float @dx.op.unary.f32(i32 6, float %1225)  ; FAbs(value)
  %1233 = fdiv fast float 1.000000e+00, %1232
  %1234 = fmul fast float %1231, %1233
  %1235 = call float @dx.op.binary.f32(i32 35, float %1234, float 0.000000e+00)  ; FMax(a,b)
  %1236 = fsub fast float -0.000000e+00, %1177
  %1237 = fsub fast float -0.000000e+00, %1178
  %1238 = fsub fast float -0.000000e+00, %1179
  %1239 = call float @dx.op.dot3.f32(i32 55, float %996, float %997, float %998, float %1236, float %1237, float %1238)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = fsub fast float -0.000000e+00, %1239
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1161, float %1162, float %1163, float %1236, float %1237, float %1238)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = fadd fast float %1241, %1136
  %1243 = fadd fast float %1135, %1241
  %1244 = fsub fast float -0.000000e+00, %1243
  %1245 = fcmp ogt float %1239, -0.000000e+00
  %1246 = select i1 %1245, float %1244, float %1242
  %1247 = call float @dx.op.unary.f32(i32 6, float %1240)  ; FAbs(value)
  %1248 = fdiv fast float 1.000000e+00, %1247
  %1249 = fmul fast float %1246, %1248
  %1250 = call float @dx.op.binary.f32(i32 35, float %1249, float 0.000000e+00)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1235, float %1250)  ; FMin(a,b)
  %1252 = call float @dx.op.binary.f32(i32 36, float %1220, float %1251)  ; FMin(a,b)
  %1253 = fmul fast float %1252, %996
  %1254 = fmul fast float %1252, %997
  %1255 = fmul fast float %1252, %998
  %1256 = fadd fast float %1253, %96
  %1257 = fadd fast float %1254, %97
  %1258 = fadd fast float %1255, %98
  %1259 = fsub fast float %1256, %1105
  %1260 = fsub fast float %1257, %1106
  %1261 = fsub fast float %1258, %1107
  br label %1269

; <label>:1262                                    ; preds = %1204
  %1263 = fmul fast float %996, 8.096000e+03
  %1264 = fmul fast float %997, 8.096000e+03
  %1265 = fmul fast float %998, 8.096000e+03
  %1266 = fadd fast float %1263, %96
  %1267 = fadd fast float %1264, %97
  %1268 = fadd fast float %1265, %98
  br label %1269

; <label>:1269                                    ; preds = %1262, %1205
  %1270 = phi float [ %996, %1262 ], [ %1259, %1205 ]
  %1271 = phi float [ %997, %1262 ], [ %1260, %1205 ]
  %1272 = phi float [ %998, %1262 ], [ %1261, %1205 ]
  %1273 = phi float [ %1266, %1262 ], [ %1256, %1205 ]
  %1274 = phi float [ %1267, %1262 ], [ %1257, %1205 ]
  %1275 = phi float [ %1268, %1262 ], [ %1258, %1205 ]
  %1276 = fcmp fast olt float %1124, 1.000000e+00
  br i1 %1276, label %1277, label %1308, !dx.controlflow.hints !77

; <label>:1277                                    ; preds = %1269
  %1278 = fmul fast float %1272, %1122
  %1279 = fmul fast float %1271, %1123
  %1280 = fsub fast float %1278, %1279
  %1281 = fmul fast float %1270, %1123
  %1282 = fmul fast float %1272, %1121
  %1283 = fsub fast float %1281, %1282
  %1284 = fmul fast float %1271, %1121
  %1285 = fmul fast float %1270, %1122
  %1286 = fsub fast float %1284, %1285
  %1287 = fmul fast float %1280, 2.000000e+00
  %1288 = fmul fast float %1283, 2.000000e+00
  %1289 = fmul fast float %1286, 2.000000e+00
  %1290 = fmul fast float %1287, %1124
  %1291 = fmul fast float %1288, %1124
  %1292 = fmul fast float %1289, %1124
  %1293 = fmul fast float %1289, %1122
  %1294 = fmul fast float %1288, %1123
  %1295 = fmul fast float %1287, %1123
  %1296 = fmul fast float %1289, %1121
  %1297 = fmul fast float %1288, %1121
  %1298 = fmul fast float %1287, %1122
  %1299 = fadd fast float %1293, %1270
  %1300 = fadd fast float %1299, %1290
  %1301 = fsub fast float %1300, %1294
  %1302 = fsub fast float %1271, %1296
  %1303 = fadd fast float %1302, %1291
  %1304 = fadd fast float %1303, %1295
  %1305 = fadd fast float %1292, %1272
  %1306 = fsub fast float %1305, %1298
  %1307 = fadd fast float %1306, %1297
  br label %1308

; <label>:1308                                    ; preds = %1277, %1269
  %1309 = phi float [ %1301, %1277 ], [ %1270, %1269 ]
  %1310 = phi float [ %1304, %1277 ], [ %1271, %1269 ]
  %1311 = phi float [ %1307, %1277 ], [ %1272, %1269 ]
  br i1 %1150, label %1343, label %1312

; <label>:1312                                    ; preds = %1308
  %1313 = fmul fast float %805, 0x400187C840000000
  %1314 = fadd fast float %1313, 0xC00EFC2120000000
  %1315 = fmul fast float %1314, %805
  %1316 = fadd fast float %1315, 0x3FE5D16340000000
  %1317 = fmul fast float %1316, %805
  %1318 = fadd fast float %1317, 1.000000e+00
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = fsub fast float %1273, %96
  %1321 = fsub fast float %1274, %97
  %1322 = fsub fast float %1275, %98
  %1323 = fsub fast float %1273, %1105
  %1324 = fsub fast float %1274, %1106
  %1325 = fsub fast float %1275, %1107
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1320, float %1321, float %1322, float %1320, float %1321, float %1322)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = call float @dx.op.dot3.f32(i32 55, float %1323, float %1324, float %1325, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1328 = fadd fast float %1327, 0x3EE4F8B580000000
  %1329 = fdiv fast float %1326, %1328
  %1330 = bitcast float %1329 to i32
  %1331 = ashr i32 %1330, 1
  %1332 = add nsw i32 %1331, 532487669
  %1333 = bitcast i32 %1332 to float
  %1334 = fmul fast float %1333, %1319
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fmul fast float %1335, 0x4009981AE0000000
  %1337 = fsub fast float 0x40111BBD80000000, %1336
  %1338 = fmul fast float %1337, %1335
  %1339 = fadd fast float %1338, 0xC0009F6020000000
  %1340 = fmul fast float %1339, %1335
  %1341 = fadd fast float %1340, 1.000000e+00
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  br label %1346

; <label>:1343                                    ; preds = %1308
  %1344 = icmp ne i32 %1151, -1
  %1345 = zext i1 %1344 to i32
  br label %1346

; <label>:1346                                    ; preds = %1343, %1312
  %1347 = phi float [ %805, %1343 ], [ %1342, %1312 ]
  %1348 = phi i32 [ %1345, %1343 ], [ 0, %1312 ]
  %1349 = fmul float %1347, 5.000000e+00
  %1350 = fsub float 5.000000e+00, %1349
  %1351 = icmp ne i32 %1348, 0
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 3
  %1354 = fadd fast float %1353, %1350
  %1355 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1354)  ; FMax(a,b)
  %1356 = call float @dx.op.unary.f32(i32 6, float %1309)  ; FAbs(value)
  %1357 = call float @dx.op.unary.f32(i32 6, float %1310)  ; FAbs(value)
  %1358 = fadd fast float %1357, %1356
  %1359 = call float @dx.op.unary.f32(i32 6, float %1311)  ; FAbs(value)
  %1360 = fadd fast float %1358, %1359
  %1361 = fcmp fast oeq float %1360, 0.000000e+00
  %1362 = fdiv fast float 1.000000e+00, %1360
  %1363 = select i1 %1361, float 1.000000e+00, float %1362
  %1364 = fmul fast float %1363, %1309
  %1365 = fmul fast float %1363, %1310
  %1366 = call float @dx.op.unary.f32(i32 6, float %1365)  ; FAbs(value)
  %1367 = call float @dx.op.unary.f32(i32 6, float %1364)  ; FAbs(value)
  %1368 = fsub fast float 1.000000e+00, %1366
  %1369 = fsub fast float 1.000000e+00, %1367
  %1370 = fcmp fast oge float %1364, 0.000000e+00
  %1371 = fcmp fast oge float %1365, 0.000000e+00
  %1372 = select i1 %1370, float 1.000000e+00, float -1.000000e+00
  %1373 = select i1 %1371, float 1.000000e+00, float -1.000000e+00
  %1374 = fcmp fast ole float %1311, 0.000000e+00
  %1375 = fmul fast float %1372, %1368
  %1376 = fmul fast float %1373, %1369
  %1377 = select i1 %1374, float %1375, float %1364
  %1378 = select i1 %1374, float %1376, float %1365
  %1379 = fmul fast float %1377, 5.000000e-01
  %1380 = fmul fast float %1378, 5.000000e-01
  %1381 = fadd fast float %1379, 5.000000e-01
  %1382 = fadd fast float %1380, 5.000000e-01
  %1383 = uitofp i32 %1148 to float
  %1384 = call float @dx.op.binary.f32(i32 36, float %1355, float 3.000000e+00)  ; FMin(a,b)
  %1385 = fadd fast float %1384, 2.000000e+00
  %1386 = call float @dx.op.unary.f32(i32 21, float %1385)  ; Exp(value)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1388 = fmul fast float %1387, %1386
  %1389 = fmul fast float %1388, 2.000000e+00
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = fmul fast float %1381, %1390
  %1392 = fmul fast float %1382, %1390
  %1393 = fadd fast float %1391, %1388
  %1394 = fadd fast float %1392, %1388
  %1395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1393, float %1394, float %1383, float undef, i32 0, i32 0, i32 undef, float %1355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.ResRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.ResRet.f32 %1395, 2
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 3
  %1401 = fmul fast float %1400, %1118
  %1402 = call float @dx.op.binary.f32(i32 36, float %1010, float %1401)  ; FMin(a,b)
  %1403 = select i1 %1351, float %1402, float %1401
  %1404 = fmul fast float %1396, %1196
  %1405 = fmul fast float %1404, %1403
  %1406 = fmul fast float %1397, %1196
  %1407 = fmul fast float %1406, %1403
  %1408 = fmul fast float %1398, %1196
  %1409 = fmul fast float %1408, %1403
  %1410 = fadd fast float %1405, %1093
  %1411 = fadd fast float %1407, %1094
  %1412 = fadd fast float %1409, %1095
  %1413 = fsub fast float %1096, %1196
  br label %1198

; <label>:1414                                    ; preds = %1198
  br label %1415

; <label>:1415                                    ; preds = %1414, %1062
  %1416 = phi float [ %1063, %1062 ], [ %1199, %1414 ]
  %1417 = phi float [ %1064, %1062 ], [ %1200, %1414 ]
  %1418 = phi float [ %1065, %1062 ], [ %1201, %1414 ]
  %1419 = phi float [ %1066, %1062 ], [ %1202, %1414 ]
  %1420 = add i32 %1067, 1
  %1421 = icmp ugt i32 %1420, %1059
  br i1 %1421, label %1422, label %1062, !llvm.loop !78

; <label>:1422                                    ; preds = %1415
  br label %1423

; <label>:1423                                    ; preds = %1422, %1006
  %1424 = phi float [ 0.000000e+00, %1006 ], [ %1416, %1422 ]
  %1425 = phi float [ 0.000000e+00, %1006 ], [ %1417, %1422 ]
  %1426 = phi float [ 0.000000e+00, %1006 ], [ %1418, %1422 ]
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1424, float %1425, float %1426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = select i1 %131, float 0.000000e+00, float %1424
  %1429 = select i1 %131, float %1427, float %1425
  %1430 = select i1 %131, float 0.000000e+00, float %1426
  %1431 = fmul fast float %1428, %985
  %1432 = fmul fast float %1429, %986
  %1433 = fmul fast float %1430, %987
  %1434 = call float @dx.op.binary.f32(i32 35, float %1431, float 0.000000e+00)  ; FMax(a,b)
  %1435 = call float @dx.op.binary.f32(i32 35, float %1432, float 0.000000e+00)  ; FMax(a,b)
  %1436 = call float @dx.op.binary.f32(i32 35, float %1433, float 0.000000e+00)  ; FMax(a,b)
  %1437 = fadd fast float %1434, %972
  %1438 = fadd fast float %1435, %973
  %1439 = fadd fast float %1436, %974
  %1440 = fmul fast float %1437, %610
  %1441 = fmul fast float %1438, %610
  %1442 = fmul fast float %1439, %610
  %1443 = fsub fast float 1.000000e+00, %610
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1443, float %1443, float %1443, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = fsub fast float 1.000000e+00, %1444
  %1446 = fmul fast float %830, %818
  %1447 = fsub fast float 1.000000e+00, %818
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 3
  %1451 = fmul fast float %1450, %1448
  %1452 = fadd fast float %1451, %1446
  %1453 = and i32 %151, 1048576
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1539, label %1455, !dx.controlflow.hints !80

; <label>:1455                                    ; preds = %1423
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 2
  %1458 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1459 = fmul fast float %1457, %61
  %1460 = fmul fast float %1458, %62
  %1461 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1462 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1463 = select i1 %854, i32 2, i32 0
  %1464 = or i32 %1463, 1
  %1465 = uitofp i32 %1464 to float
  %1466 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1461, float %1462, float %1465, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.ResRet.f32 %1466, 3
  %1471 = add nuw nsw i32 %1463, 2
  %1472 = uitofp i32 %1471 to float
  %1473 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1461, float %1462, float %1472, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.ResRet.f32 %1473, 2
  %1477 = extractvalue %dx.types.ResRet.f32 %1473, 3
  %1478 = call float @dx.op.binary.f32(i32 35, float %1468, float %1469)  ; FMax(a,b)
  %1479 = call float @dx.op.binary.f32(i32 35, float %1467, float %1478)  ; FMax(a,b)
  %1480 = call float @dx.op.binary.f32(i32 35, float %1479, float %1470)  ; FMax(a,b)
  %1481 = call float @dx.op.binary.f32(i32 36, float %1475, float %1476)  ; FMin(a,b)
  %1482 = call float @dx.op.binary.f32(i32 36, float %1474, float %1481)  ; FMin(a,b)
  %1483 = call float @dx.op.binary.f32(i32 36, float %1482, float %1477)  ; FMin(a,b)
  %1484 = fmul fast float %1480, 2.550000e+02
  %1485 = fadd fast float %1484, 0x3F70101020000000
  %1486 = fptoui float %1485 to i32
  %1487 = fmul fast float %1483, 2.550000e+02
  %1488 = fadd fast float %1487, 0x3F70101020000000
  %1489 = fptoui float %1488 to i32
  %1490 = icmp ult i32 %1486, %1489
  br i1 %1490, label %1491, label %1532

; <label>:1491                                    ; preds = %1455
  %1492 = fcmp fast ogt float %53, 9.843750e-01
  %1493 = select i1 %1492, float -4.000000e+00, float %1022
  %1494 = call float @dx.op.binary.f32(i32 35, float %1493, float 0.000000e+00)  ; FMax(a,b)
  %1495 = fadd fast float %1019, %1494
  %1496 = fmul fast float %1495, %1020
  %1497 = call float @dx.op.unary.f32(i32 23, float %1496)  ; Log(value)
  %1498 = fmul fast float %1021, %1497
  %1499 = fmul fast float %1498, %1029
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = uitofp i32 %1486 to float
  %1502 = uitofp i32 %1489 to float
  %1503 = fadd fast float %1501, 5.000000e-01
  %1504 = fadd fast float %1502, 5.000000e-01
  %1505 = fmul fast float %1029, %1503
  %1506 = fmul fast float %1029, %1504
  %1507 = fadd fast float %1505, 0x3F0FFB4800000000
  %1508 = fadd fast float %1506, 0xBF0FFB4800000000
  %1509 = call float @dx.op.binary.f32(i32 35, float %1500, float %1507)  ; FMax(a,b)
  %1510 = call float @dx.op.binary.f32(i32 36, float %1509, float %1508)  ; FMin(a,b)
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 1
  %1513 = extractvalue %dx.types.CBufRet.f32 %1511, 2
  %1514 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1515 = select i1 %854, float %1514, float 0.000000e+00
  %1516 = fmul fast float %1512, %1510
  %1517 = fadd fast float %1515, %1516
  %1518 = fadd fast float %1515, %1513
  %1519 = fsub fast float %1512, %1513
  %1520 = fadd fast float %1519, %1515
  %1521 = call float @dx.op.binary.f32(i32 35, float %1517, float %1518)  ; FMax(a,b)
  %1522 = call float @dx.op.binary.f32(i32 36, float %1521, float %1520)  ; FMin(a,b)
  %1523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1461, float %1462, float %1522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.ResRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.ResRet.f32 %1523, 2
  %1527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1528 = extractvalue %dx.types.CBufRet.f32 %1527, 1
  %1529 = fmul fast float %1528, %1524
  %1530 = fmul fast float %1528, %1525
  %1531 = fmul fast float %1528, %1526
  br label %1532

; <label>:1532                                    ; preds = %1491, %1455
  %1533 = phi float [ %1529, %1491 ], [ 1.000000e+00, %1455 ]
  %1534 = phi float [ %1530, %1491 ], [ 1.000000e+00, %1455 ]
  %1535 = phi float [ %1531, %1491 ], [ 1.000000e+00, %1455 ]
  %1536 = fmul fast float %1533, %1440
  %1537 = fmul fast float %1534, %1441
  %1538 = fmul fast float %1535, %1442
  br label %1539

; <label>:1539                                    ; preds = %1532, %1423
  %1540 = phi float [ %1536, %1532 ], [ %1440, %1423 ]
  %1541 = phi float [ %1537, %1532 ], [ %1441, %1423 ]
  %1542 = phi float [ %1538, %1532 ], [ %1442, %1423 ]
  %1543 = and i32 %151, 2097152
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1549, label %1545, !dx.controlflow.hints !81

; <label>:1545                                    ; preds = %1539
  %1546 = add i32 %148, 192
  %1547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  br label %1552

; <label>:1549                                    ; preds = %1539
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 3
  br label %1552

; <label>:1552                                    ; preds = %1549, %1545
  %1553 = phi float [ %1548, %1545 ], [ %1551, %1549 ]
  %1554 = fmul fast float %793, %610
  %1555 = fmul fast float %1554, %866
  %1556 = fmul fast float %1555, %990
  %1557 = fmul fast float %794, %610
  %1558 = fmul fast float %1557, %867
  %1559 = fmul fast float %1558, %990
  %1560 = fmul fast float %795, %610
  %1561 = fmul fast float %1560, %868
  %1562 = fmul fast float %1561, %990
  br i1 %849, label %1563, label %1696

; <label>:1563                                    ; preds = %1552
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 2
  %1566 = extractvalue %dx.types.CBufRet.f32 %1564, 3
  %1567 = fmul fast float %1565, %61
  %1568 = fmul fast float %1566, %62
  %1569 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1570 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1571 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1569, float %1570, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1572 = extractvalue %dx.types.ResRet.f32 %1571, 0
  %1573 = extractvalue %dx.types.ResRet.f32 %1571, 1
  %1574 = extractvalue %dx.types.ResRet.f32 %1571, 2
  %1575 = extractvalue %dx.types.ResRet.f32 %1571, 3
  %1576 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1569, float %1570, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = extractvalue %dx.types.ResRet.f32 %1576, 1
  %1579 = extractvalue %dx.types.ResRet.f32 %1576, 2
  %1580 = extractvalue %dx.types.ResRet.f32 %1576, 3
  %1581 = call float @dx.op.binary.f32(i32 35, float %1573, float %1574)  ; FMax(a,b)
  %1582 = call float @dx.op.binary.f32(i32 35, float %1572, float %1581)  ; FMax(a,b)
  %1583 = call float @dx.op.binary.f32(i32 35, float %1582, float %1575)  ; FMax(a,b)
  %1584 = call float @dx.op.binary.f32(i32 36, float %1578, float %1579)  ; FMin(a,b)
  %1585 = call float @dx.op.binary.f32(i32 36, float %1577, float %1584)  ; FMin(a,b)
  %1586 = call float @dx.op.binary.f32(i32 36, float %1585, float %1580)  ; FMin(a,b)
  %1587 = fmul fast float %1583, 2.550000e+02
  %1588 = fadd fast float %1587, 0x3F70101020000000
  %1589 = fptoui float %1588 to i32
  %1590 = fmul fast float %1586, 2.550000e+02
  %1591 = fadd fast float %1590, 0x3F70101020000000
  %1592 = fptoui float %1591 to i32
  %1593 = icmp ult i32 %1589, %1592
  br i1 %1593, label %1594, label %1638

; <label>:1594                                    ; preds = %1563
  %1595 = fcmp fast ogt float %53, 9.843750e-01
  %1596 = select i1 %1595, float -4.000000e+00, float %1022
  %1597 = call float @dx.op.binary.f32(i32 35, float %1596, float 0.000000e+00)  ; FMax(a,b)
  %1598 = fadd fast float %1019, %1597
  %1599 = fmul fast float %1598, %1020
  %1600 = call float @dx.op.unary.f32(i32 23, float %1599)  ; Log(value)
  %1601 = fmul fast float %1021, %1600
  %1602 = fmul fast float %1601, %1029
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  %1604 = uitofp i32 %1589 to float
  %1605 = uitofp i32 %1592 to float
  %1606 = fadd fast float %1604, 5.000000e-01
  %1607 = fadd fast float %1605, 5.000000e-01
  %1608 = fmul fast float %1029, %1606
  %1609 = fmul fast float %1029, %1607
  %1610 = fadd fast float %1608, 0x3F0FFB4800000000
  %1611 = fadd fast float %1609, 0xBF0FFB4800000000
  %1612 = call float @dx.op.binary.f32(i32 35, float %1603, float %1610)  ; FMax(a,b)
  %1613 = call float @dx.op.binary.f32(i32 36, float %1612, float %1611)  ; FMin(a,b)
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1616 = extractvalue %dx.types.CBufRet.f32 %1614, 2
  %1617 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1618 = fmul fast float %1615, %1613
  %1619 = fadd fast float %1617, %1618
  %1620 = fadd fast float %1617, %1616
  %1621 = fsub fast float %1615, %1616
  %1622 = fadd fast float %1621, %1617
  %1623 = call float @dx.op.binary.f32(i32 35, float %1619, float %1620)  ; FMax(a,b)
  %1624 = call float @dx.op.binary.f32(i32 36, float %1623, float %1622)  ; FMin(a,b)
  %1625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1569, float %1570, float %1624, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1626 = extractvalue %dx.types.ResRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.ResRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.ResRet.f32 %1625, 2
  %1629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1569, float %1570, float %1624, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1635 = fmul fast float %1634, %1630
  %1636 = fmul fast float %1634, %1631
  %1637 = fmul fast float %1634, %1632
  br label %1638

; <label>:1638                                    ; preds = %1594, %1563
  %1639 = phi float [ %1626, %1594 ], [ 1.000000e+00, %1563 ]
  %1640 = phi float [ %1627, %1594 ], [ 1.000000e+00, %1563 ]
  %1641 = phi float [ %1628, %1594 ], [ 1.000000e+00, %1563 ]
  %1642 = phi float [ %1635, %1594 ], [ 0.000000e+00, %1563 ]
  %1643 = phi float [ %1636, %1594 ], [ 0.000000e+00, %1563 ]
  %1644 = phi float [ %1637, %1594 ], [ 0.000000e+00, %1563 ]
  %1645 = fmul fast float %1642, %1445
  %1646 = fmul fast float %1643, %1445
  %1647 = fmul fast float %1644, %1445
  %1648 = call float @dx.op.dot3.f32(i32 55, float %1639, float %1640, float %1641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1649 = call float @dx.op.dot3.f32(i32 55, float %1645, float %1646, float %1647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1650 = select i1 %131, float %1648, float %1639
  %1651 = select i1 %131, float %1648, float %1640
  %1652 = select i1 %131, float 1.000000e+00, float %1641
  %1653 = select i1 %131, float %1649, float %1645
  %1654 = select i1 %131, float 0.000000e+00, float %1646
  %1655 = select i1 %131, float 0.000000e+00, float %1647
  %1656 = fmul fast float %1650, %1556
  %1657 = fmul fast float %1651, %1559
  %1658 = fmul fast float %1652, %1562
  %1659 = fadd fast float %1656, %1653
  %1660 = fadd fast float %1657, %1654
  %1661 = fadd fast float %1655, %1658
  %1662 = fmul fast float %1650, %1540
  %1663 = fmul fast float %1651, %1541
  %1664 = fmul fast float %1652, %1542
  %1665 = fmul fast float %66, %1565
  %1666 = fmul fast float %68, %1566
  %1667 = fsub fast float 1.000000e+00, %1665
  %1668 = fsub fast float 1.000000e+00, %1666
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.CBufRet.f32 %1669, 1
  %1672 = extractvalue %dx.types.CBufRet.f32 %1669, 2
  %1673 = fmul fast float %1667, %1670
  %1674 = fmul fast float %1667, %1671
  %1675 = fmul fast float %1667, %1672
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1680 = fmul fast float %1668, %1677
  %1681 = fmul fast float %1668, %1678
  %1682 = fmul fast float %1668, %1679
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.CBufRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.CBufRet.f32 %1683, 2
  %1687 = fadd fast float %1680, %1684
  %1688 = fadd fast float %1687, %1673
  %1689 = fadd fast float %1681, %1685
  %1690 = fadd fast float %1689, %1674
  %1691 = fadd fast float %1682, %1686
  %1692 = fadd fast float %1691, %1675
  %1693 = fmul fast float %1688, %846
  %1694 = fmul fast float %1690, %846
  %1695 = fmul fast float %1692, %846
  br label %1696

; <label>:1696                                    ; preds = %1638, %1552
  %1697 = phi float [ %1693, %1638 ], [ %96, %1552 ]
  %1698 = phi float [ %1694, %1638 ], [ %97, %1552 ]
  %1699 = phi float [ %1695, %1638 ], [ %98, %1552 ]
  %1700 = phi float [ %846, %1638 ], [ %54, %1552 ]
  %1701 = phi float [ %1659, %1638 ], [ %1556, %1552 ]
  %1702 = phi float [ %1660, %1638 ], [ %1559, %1552 ]
  %1703 = phi float [ %1661, %1638 ], [ %1562, %1552 ]
  %1704 = phi float [ %1662, %1638 ], [ %1540, %1552 ]
  %1705 = phi float [ %1663, %1638 ], [ %1541, %1552 ]
  %1706 = phi float [ %1664, %1638 ], [ %1542, %1552 ]
  %1707 = phi float [ %1639, %1638 ], [ 1.000000e+00, %1552 ]
  br i1 %854, label %2763, label %1708

; <label>:1708                                    ; preds = %1696
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1713 = extractvalue %dx.types.CBufRet.f32 %1709, 3
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1717 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1718 = extractvalue %dx.types.CBufRet.f32 %1714, 3
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.CBufRet.f32 %1719, 2
  %1723 = extractvalue %dx.types.CBufRet.f32 %1719, 3
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1728 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 3
  %1733 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1734 = extractvalue %dx.types.CBufRet.f32 %1731, 1
  %1735 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1736 = fcmp fast olt float %1735, -5.000000e-01
  %1737 = call float @dx.op.dot3.f32(i32 55, float %1697, float %1698, float %1699, float %1697, float %1698, float %1699)  ; Dot3(ax,ay,az,bx,by,bz)
  %1738 = call float @dx.op.unary.f32(i32 25, float %1737)  ; Rsqrt(value)
  %1739 = fmul fast float %1738, %1737
  %1740 = fmul fast float %1738, %1697
  %1741 = fmul fast float %1738, %1698
  %1742 = fmul fast float %1738, %1699
  %1743 = fadd fast float %1739, %1713
  %1744 = call float @dx.op.dot3.f32(i32 55, float %1740, float %1741, float %1742, float %1710, float %1711, float %1712)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.i32 %1745, 1
  %1747 = and i32 %1746, 1
  %1748 = icmp ne i32 %1747, 0
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %1751 = fcmp fast ogt float %1750, 0.000000e+00
  %1752 = and i1 %1748, %1751
  br i1 %1752, label %1753, label %2159, !dx.controlflow.hints !82

; <label>:1753                                    ; preds = %1708
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 3
  %1756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1756, 2
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1760 = fsub fast float %1757, %1759
  %1761 = and i32 %1746, 2
  %1762 = extractvalue %dx.types.CBufRet.i32 %1745, 0
  %1763 = call i32 @dx.op.binary.i32(i32 40, i32 %1762, i32 3)  ; UMin(a,b)
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1768 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1769 = fsub fast float %1765, %1767
  %1770 = fsub fast float %1766, %1768
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = fcmp fast ogt float %1772, 0.000000e+00
  %1774 = fsub fast float -0.000000e+00, %1769
  %1775 = fsub fast float -0.000000e+00, %1770
  %1776 = call float @dx.op.dot2.f32(i32 54, float %1740, float %1741, float %1740, float %1741)  ; Dot2(ax,ay,bx,by)
  %1777 = call float @dx.op.dot2.f32(i32 54, float %1740, float %1741, float %1774, float %1775)  ; Dot2(ax,ay,bx,by)
  %1778 = fmul fast float %1777, 2.000000e+00
  %1779 = call float @dx.op.dot2.f32(i32 54, float %1774, float %1775, float %1774, float %1775)  ; Dot2(ax,ay,bx,by)
  %1780 = fmul fast float %1772, %1772
  %1781 = fsub fast float %1779, %1780
  %1782 = fmul fast float %1778, %1778
  %1783 = fmul fast float %1776, 4.000000e+00
  %1784 = fmul fast float %1783, %1781
  %1785 = fsub fast float %1782, %1784
  %1786 = fcmp fast ogt float %1785, 0.000000e+00
  br i1 %1786, label %1787, label %1802

; <label>:1787                                    ; preds = %1753
  %1788 = fcmp fast ogt float %1778, 0.000000e+00
  %1789 = call float @dx.op.unary.f32(i32 24, float %1785)  ; Sqrt(value)
  %1790 = fsub fast float -0.000000e+00, %1789
  %1791 = select i1 %1788, float %1789, float %1790
  %1792 = fadd fast float %1791, %1778
  %1793 = fmul float %1792, -5.000000e-01
  %1794 = fdiv fast float %1793, %1776
  %1795 = call float @dx.op.binary.f32(i32 35, float %1794, float 0.000000e+00)  ; FMax(a,b)
  %1796 = call float @dx.op.binary.f32(i32 36, float %1739, float %1795)  ; FMin(a,b)
  %1797 = fdiv fast float %1781, %1793
  %1798 = call float @dx.op.binary.f32(i32 35, float %1797, float 0.000000e+00)  ; FMax(a,b)
  %1799 = call float @dx.op.binary.f32(i32 36, float %1739, float %1798)  ; FMin(a,b)
  %1800 = call float @dx.op.binary.f32(i32 36, float %1796, float %1799)  ; FMin(a,b)
  %1801 = call float @dx.op.binary.f32(i32 35, float %1796, float %1799)  ; FMax(a,b)
  br label %1802

; <label>:1802                                    ; preds = %1787, %1753
  %1803 = phi float [ %1801, %1787 ], [ -1.000000e+00, %1753 ]
  %1804 = phi float [ %1800, %1787 ], [ -1.000000e+00, %1753 ]
  %1805 = phi i1 [ true, %1787 ], [ false, %1753 ]
  %1806 = and i1 %1773, %1805
  br i1 %1806, label %1807, label %1809

; <label>:1807                                    ; preds = %1802
  %1808 = fcmp fast oeq float %1804, %1803
  br i1 %1808, label %2112, label %1810

; <label>:1809                                    ; preds = %1802
  br i1 %1773, label %2112, label %1810

; <label>:1810                                    ; preds = %1809, %1807
  %1811 = phi float [ %1739, %1809 ], [ %1803, %1807 ]
  %1812 = phi float [ 0.000000e+00, %1809 ], [ %1804, %1807 ]
  %1813 = icmp ne i32 %1761, 0
  %1814 = fmul fast float %1811, %1742
  %1815 = fadd fast float %1814, %1755
  %1816 = fmul fast float %1815, %1811
  %1817 = select i1 %1813, float 0.000000e+00, float %1816
  %1818 = fcmp fast oeq float %1742, 0.000000e+00
  %1819 = fdiv fast float %1760, %1742
  %1820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1819)  ; FMax(a,b)
  %1821 = select i1 %1818, float %1811, float %1820
  %1822 = call float @dx.op.binary.f32(i32 36, float %1811, float %1821)  ; FMin(a,b)
  %1823 = fcmp fast ogt float %1742, 0.000000e+00
  %1824 = fcmp fast olt float %1760, 0.000000e+00
  br i1 %1823, label %1825, label %1882

; <label>:1825                                    ; preds = %1810
  %1826 = icmp eq i32 %1761, 0
  br i1 %1824, label %1827, label %1871

; <label>:1827                                    ; preds = %1825
  %1828 = select i1 %1826, float %1811, float 0.000000e+00
  %1829 = fsub fast float -0.000000e+00, %1828
  %1830 = call float @dx.op.unary.f32(i32 6, float %1829)  ; FAbs(value)
  %1831 = fmul fast float %1828, %1742
  %1832 = fadd fast float %1831, %1755
  %1833 = fmul fast float %1830, %1832
  %1834 = fsub fast float %1817, %1833
  %1835 = fsub fast float %1811, %1830
  %1836 = select i1 %1826, float %1835, float 0.000000e+00
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1845 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 3
  %1848 = call float @dx.op.binary.f32(i32 36, float %1834, float %1847)  ; FMin(a,b)
  %1849 = fmul fast float %1845, %1836
  %1850 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1851 = fsub fast float %1842, %1838
  %1852 = fsub fast float %1843, %1839
  %1853 = fsub fast float %1844, %1840
  %1854 = fmul fast float %1850, %1851
  %1855 = fmul fast float %1850, %1852
  %1856 = fmul fast float %1850, %1853
  %1857 = fadd fast float %1854, %1838
  %1858 = fadd fast float %1855, %1839
  %1859 = fadd fast float %1856, %1840
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1863 = fadd fast float %1862, %1861
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1860, 2
  %1866 = extractvalue %dx.types.CBufRet.f32 %1860, 3
  %1867 = fadd fast float %1866, %1865
  %1868 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  %1869 = fmul fast float %1864, %1848
  %1870 = fmul fast float %1869, %1868
  br label %2112

; <label>:1871                                    ; preds = %1825
  br i1 %1826, label %1872, label %1893

; <label>:1872                                    ; preds = %1871
  %1873 = call float @dx.op.binary.f32(i32 36, float %1822, float %1812)  ; FMin(a,b)
  %1874 = fsub fast float %1822, %1873
  %1875 = fsub fast float %1874, %1811
  %1876 = call float @dx.op.unary.f32(i32 6, float %1875)  ; FAbs(value)
  %1877 = fadd fast float %1874, %1811
  %1878 = fmul fast float %1877, %1742
  %1879 = fadd fast float %1878, %1755
  %1880 = fmul fast float %1879, %1876
  %1881 = fsub fast float %1817, %1880
  br label %1893

; <label>:1882                                    ; preds = %1810
  br i1 %1824, label %1883, label %1893

; <label>:1883                                    ; preds = %1882
  %1884 = call float @dx.op.binary.f32(i32 35, float %1812, float %1822)  ; FMax(a,b)
  %1885 = icmp eq i32 %1761, 0
  %1886 = select i1 %1885, float %1822, float 0.000000e+00
  %1887 = fsub fast float -0.000000e+00, %1886
  %1888 = call float @dx.op.unary.f32(i32 6, float %1887)  ; FAbs(value)
  %1889 = fmul fast float %1886, %1742
  %1890 = fadd fast float %1889, %1755
  %1891 = fmul fast float %1888, %1890
  %1892 = fsub fast float %1817, %1891
  br label %1893

; <label>:1893                                    ; preds = %1883, %1882, %1872, %1871
  %1894 = phi float [ %1812, %1871 ], [ %1812, %1872 ], [ %1884, %1883 ], [ %1812, %1882 ]
  %1895 = phi float [ 0.000000e+00, %1871 ], [ %1876, %1872 ], [ %1888, %1883 ], [ 0.000000e+00, %1882 ]
  %1896 = phi float [ %1817, %1871 ], [ %1881, %1872 ], [ %1892, %1883 ], [ %1817, %1882 ]
  %1897 = phi float [ %1822, %1871 ], [ %1822, %1872 ], [ %1811, %1883 ], [ %1811, %1882 ]
  %1898 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1898, align 4, !tbaa !83, !noalias !87
  %1899 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1899, align 4, !tbaa !83, !noalias !87
  %1900 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1900, align 4, !tbaa !83, !noalias !87
  %1901 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1901, align 4, !tbaa !83, !noalias !87
  %1902 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1902, align 4, !tbaa !83, !noalias !87
  %1903 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1903, align 4, !tbaa !83, !noalias !87
  %1904 = icmp sgt i32 %1763, 0
  br i1 %1904, label %1905, label %1966

; <label>:1905                                    ; preds = %1893
  br label %1906

; <label>:1906                                    ; preds = %1955, %1905
  %1907 = phi i32 [ %1956, %1955 ], [ 0, %1905 ]
  %1908 = phi i32 [ %1957, %1955 ], [ 0, %1905 ]
  %1909 = add nuw i32 %1908, 171
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1909)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 0
  %1915 = extractvalue %dx.types.CBufRet.f32 %1913, 1
  %1916 = fsub fast float %1911, %1914
  %1917 = fsub fast float %1912, %1915
  %1918 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1919 = fsub fast float -0.000000e+00, %1916
  %1920 = fsub fast float -0.000000e+00, %1917
  %1921 = call float @dx.op.dot2.f32(i32 54, float %1740, float %1741, float %1919, float %1920)  ; Dot2(ax,ay,bx,by)
  %1922 = fmul fast float %1921, 2.000000e+00
  %1923 = call float @dx.op.dot2.f32(i32 54, float %1919, float %1920, float %1919, float %1920)  ; Dot2(ax,ay,bx,by)
  %1924 = fmul fast float %1918, %1918
  %1925 = fsub fast float %1923, %1924
  %1926 = fmul fast float %1922, %1922
  %1927 = fmul fast float %1783, %1925
  %1928 = fsub fast float %1926, %1927
  %1929 = fcmp fast ogt float %1928, 0.000000e+00
  br i1 %1929, label %1930, label %1945

; <label>:1930                                    ; preds = %1906
  %1931 = fcmp fast ogt float %1922, 0.000000e+00
  %1932 = call float @dx.op.unary.f32(i32 24, float %1928)  ; Sqrt(value)
  %1933 = fsub fast float -0.000000e+00, %1932
  %1934 = select i1 %1931, float %1932, float %1933
  %1935 = fadd fast float %1934, %1922
  %1936 = fmul float %1935, -5.000000e-01
  %1937 = fdiv fast float %1936, %1776
  %1938 = call float @dx.op.binary.f32(i32 35, float %1937, float 0.000000e+00)  ; FMax(a,b)
  %1939 = call float @dx.op.binary.f32(i32 36, float %1811, float %1938)  ; FMin(a,b)
  %1940 = fdiv fast float %1925, %1936
  %1941 = call float @dx.op.binary.f32(i32 35, float %1940, float 0.000000e+00)  ; FMax(a,b)
  %1942 = call float @dx.op.binary.f32(i32 36, float %1811, float %1941)  ; FMin(a,b)
  %1943 = call float @dx.op.binary.f32(i32 36, float %1939, float %1942)  ; FMin(a,b)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1939, float %1942)  ; FMax(a,b)
  br label %1945

; <label>:1945                                    ; preds = %1930, %1906
  %1946 = phi float [ %1944, %1930 ], [ -1.000000e+00, %1906 ]
  %1947 = phi float [ %1943, %1930 ], [ -1.000000e+00, %1906 ]
  %1948 = phi i1 [ true, %1930 ], [ false, %1906 ]
  br i1 %1948, label %1949, label %1955

; <label>:1949                                    ; preds = %1945
  %1950 = call float @dx.op.binary.f32(i32 35, float %1894, float %1947)  ; FMax(a,b)
  %1951 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1908
  store float %1950, float* %1951, align 4, !tbaa !83, !noalias !87
  %1952 = call float @dx.op.binary.f32(i32 35, float %1894, float %1946)  ; FMax(a,b)
  %1953 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1908
  store float %1952, float* %1953, align 4, !tbaa !83, !noalias !87
  %1954 = add nsw i32 %1907, 1
  br label %1955

; <label>:1955                                    ; preds = %1949, %1945
  %1956 = phi i32 [ %1954, %1949 ], [ %1907, %1945 ]
  %1957 = add nuw nsw i32 %1908, 1
  %1958 = icmp eq i32 %1957, %1763
  br i1 %1958, label %1959, label %1906

; <label>:1959                                    ; preds = %1955
  %1960 = load float, float* %1900, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %1961 = load float, float* %1899, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %1962 = load float, float* %1898, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %1963 = load float, float* %1903, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %1964 = load float, float* %1902, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %1965 = load float, float* %1901, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %1966

; <label>:1966                                    ; preds = %1959, %1893
  %1967 = phi float [ -1.000000e+00, %1893 ], [ %1965, %1959 ]
  %1968 = phi float [ -1.000000e+00, %1893 ], [ %1964, %1959 ]
  %1969 = phi float [ -1.000000e+00, %1893 ], [ %1963, %1959 ]
  %1970 = phi float [ -1.000000e+00, %1893 ], [ %1962, %1959 ]
  %1971 = phi float [ -1.000000e+00, %1893 ], [ %1961, %1959 ]
  %1972 = phi float [ -1.000000e+00, %1893 ], [ %1960, %1959 ]
  %1973 = phi i32 [ 0, %1893 ], [ %1956, %1959 ]
  %1974 = call float @dx.op.binary.f32(i32 36, float %1971, float %1972)  ; FMin(a,b)
  %1975 = call float @dx.op.binary.f32(i32 36, float %1970, float %1974)  ; FMin(a,b)
  %1976 = call float @dx.op.binary.f32(i32 35, float %1970, float %1971)  ; FMax(a,b)
  %1977 = call float @dx.op.binary.f32(i32 36, float %1976, float %1972)  ; FMin(a,b)
  %1978 = call float @dx.op.binary.f32(i32 36, float %1970, float %1971)  ; FMin(a,b)
  %1979 = call float @dx.op.binary.f32(i32 35, float %1978, float %1977)  ; FMax(a,b)
  %1980 = call float @dx.op.binary.f32(i32 35, float %1971, float %1972)  ; FMax(a,b)
  %1981 = call float @dx.op.binary.f32(i32 35, float %1970, float %1980)  ; FMax(a,b)
  store float %1975, float* %1898, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %1979, float* %1899, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %1981, float* %1900, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %1982 = call float @dx.op.binary.f32(i32 36, float %1968, float %1969)  ; FMin(a,b)
  %1983 = call float @dx.op.binary.f32(i32 36, float %1967, float %1982)  ; FMin(a,b)
  %1984 = call float @dx.op.binary.f32(i32 35, float %1967, float %1968)  ; FMax(a,b)
  %1985 = call float @dx.op.binary.f32(i32 36, float %1984, float %1969)  ; FMin(a,b)
  %1986 = call float @dx.op.binary.f32(i32 36, float %1967, float %1968)  ; FMin(a,b)
  %1987 = call float @dx.op.binary.f32(i32 35, float %1986, float %1985)  ; FMax(a,b)
  %1988 = call float @dx.op.binary.f32(i32 35, float %1968, float %1969)  ; FMax(a,b)
  %1989 = call float @dx.op.binary.f32(i32 35, float %1967, float %1988)  ; FMax(a,b)
  store float %1983, float* %1901, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %1987, float* %1902, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %1989, float* %1903, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %1990 = sub nsw i32 3, %1973
  %1991 = icmp sgt i32 %1990, 2
  br i1 %1991, label %1992, label %2030

; <label>:1992                                    ; preds = %1966
  %1993 = icmp eq i32 %1761, 0
  %1994 = fsub fast float %1811, %1895
  %1995 = select i1 %1993, float %1994, float %1895
  %1996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.CBufRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.CBufRet.f32 %1996, 2
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.CBufRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.CBufRet.f32 %2000, 2
  %2004 = extractvalue %dx.types.CBufRet.f32 %2000, 3
  %2005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2006 = extractvalue %dx.types.CBufRet.f32 %2005, 3
  %2007 = call float @dx.op.binary.f32(i32 36, float %1896, float %2006)  ; FMin(a,b)
  %2008 = fmul fast float %2004, %1995
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2010 = fsub fast float %2001, %1997
  %2011 = fsub fast float %2002, %1998
  %2012 = fsub fast float %2003, %1999
  %2013 = fmul fast float %2009, %2010
  %2014 = fmul fast float %2009, %2011
  %2015 = fmul fast float %2009, %2012
  %2016 = fadd fast float %2013, %1997
  %2017 = fadd fast float %2014, %1998
  %2018 = fadd fast float %2015, %1999
  %2019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2020 = extractvalue %dx.types.CBufRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.CBufRet.f32 %2019, 1
  %2022 = fadd fast float %2021, %2020
  %2023 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2019, 2
  %2025 = extractvalue %dx.types.CBufRet.f32 %2019, 3
  %2026 = fadd fast float %2025, %2024
  %2027 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2028 = fmul fast float %2023, %2007
  %2029 = fmul fast float %2028, %2027
  br label %2112

; <label>:2030                                    ; preds = %1966
  %2031 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1990
  %2032 = load float, float* %2031, align 4, !tbaa !83, !noalias !87
  %2033 = fcmp fast olt float %2032, %1897
  %2034 = icmp sgt i32 %1973, 0
  %2035 = and i1 %2034, %2033
  br i1 %2035, label %2036, label %2073

; <label>:2036                                    ; preds = %2030
  br label %2037

; <label>:2037                                    ; preds = %2066, %2036
  %2038 = phi float [ %2067, %2066 ], [ %1895, %2036 ]
  %2039 = phi float [ %2068, %2066 ], [ %1896, %2036 ]
  %2040 = phi float [ %2048, %2066 ], [ %2032, %2036 ]
  %2041 = phi i32 [ %2045, %2066 ], [ %1990, %2036 ]
  %2042 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2041
  %2043 = load float, float* %2042, align 4, !tbaa !83, !noalias !87
  %2044 = icmp slt i32 %2041, 2
  %2045 = add nsw i32 %2041, 1
  %2046 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2045
  %2047 = load float, float* %2046, align 4, !tbaa !83, !noalias !87
  %2048 = select i1 %2044, float %2047, float %1811
  %2049 = call float @dx.op.binary.f32(i32 36, float %2048, float %2043)  ; FMin(a,b)
  %2050 = call float @dx.op.binary.f32(i32 36, float %1897, float %2049)  ; FMin(a,b)
  %2051 = icmp eq i32 %1761, 0
  %2052 = fadd fast float %2050, %2040
  %2053 = fmul fast float %2052, %1742
  %2054 = fadd fast float %2053, %1755
  br i1 %2051, label %2060, label %2055

; <label>:2055                                    ; preds = %2037
  %2056 = fsub fast float %2050, %2040
  %2057 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2056)  ; FMax(a,b)
  %2058 = fmul fast float %2057, %2054
  %2059 = fadd fast float %2058, %2039
  br label %2066

; <label>:2060                                    ; preds = %2037
  %2061 = fsub fast float %2040, %2050
  %2062 = call float @dx.op.unary.f32(i32 6, float %2061)  ; FAbs(value)
  %2063 = fadd fast float %2062, %2038
  %2064 = fmul fast float %2062, %2054
  %2065 = fsub fast float %2039, %2064
  br label %2066

; <label>:2066                                    ; preds = %2060, %2055
  %2067 = phi float [ %2057, %2055 ], [ %2063, %2060 ]
  %2068 = phi float [ %2059, %2055 ], [ %2065, %2060 ]
  %2069 = fcmp fast olt float %2048, %1897
  %2070 = icmp slt i32 %2045, 3
  %2071 = and i1 %2070, %2069
  br i1 %2071, label %2037, label %2072

; <label>:2072                                    ; preds = %2066
  br label %2073

; <label>:2073                                    ; preds = %2072, %2030
  %2074 = phi float [ %1895, %2030 ], [ %2067, %2072 ]
  %2075 = phi float [ %1896, %2030 ], [ %2068, %2072 ]
  %2076 = fsub fast float %1811, %2074
  %2077 = select i1 %1813, float %2074, float %2076
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.CBufRet.f32 %2078, 1
  %2081 = extractvalue %dx.types.CBufRet.f32 %2078, 2
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2085 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2086 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2089 = call float @dx.op.binary.f32(i32 36, float %2075, float %2088)  ; FMin(a,b)
  %2090 = fmul fast float %2086, %2077
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2092 = fsub fast float %2083, %2079
  %2093 = fsub fast float %2084, %2080
  %2094 = fsub fast float %2085, %2081
  %2095 = fmul fast float %2091, %2092
  %2096 = fmul fast float %2091, %2093
  %2097 = fmul fast float %2091, %2094
  %2098 = fadd fast float %2095, %2079
  %2099 = fadd fast float %2096, %2080
  %2100 = fadd fast float %2097, %2081
  %2101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2102 = extractvalue %dx.types.CBufRet.f32 %2101, 0
  %2103 = extractvalue %dx.types.CBufRet.f32 %2101, 1
  %2104 = fadd fast float %2103, %2102
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2101, 2
  %2107 = extractvalue %dx.types.CBufRet.f32 %2101, 3
  %2108 = fadd fast float %2107, %2106
  %2109 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2110 = fmul fast float %2105, %2089
  %2111 = fmul fast float %2110, %2109
  br label %2112

; <label>:2112                                    ; preds = %2073, %1992, %1827, %1809, %1807
  %2113 = phi float [ %1836, %1827 ], [ %1995, %1992 ], [ %2077, %2073 ], [ 0.000000e+00, %1807 ], [ 0.000000e+00, %1809 ]
  %2114 = phi float [ %1870, %1827 ], [ %2029, %1992 ], [ %2111, %2073 ], [ 0.000000e+00, %1807 ], [ 0.000000e+00, %1809 ]
  %2115 = phi float [ %1857, %1827 ], [ %2016, %1992 ], [ %2098, %2073 ], [ 0.000000e+00, %1807 ], [ 0.000000e+00, %1809 ]
  %2116 = phi float [ %1858, %1827 ], [ %2017, %1992 ], [ %2099, %2073 ], [ 0.000000e+00, %1807 ], [ 0.000000e+00, %1809 ]
  %2117 = phi float [ %1859, %1827 ], [ %2018, %1992 ], [ %2100, %2073 ], [ 0.000000e+00, %1807 ], [ 0.000000e+00, %1809 ]
  %2118 = fmul fast float %1750, %2114
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 2
  %2121 = fsub fast float %1757, %2120
  %2122 = fcmp fast olt float %2118, -2.000000e+01
  %2123 = call float @dx.op.unary.f32(i32 21, float %2118)  ; Exp(value)
  %2124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2125 = extractvalue %dx.types.CBufRet.f32 %2124, 2
  %2126 = extractvalue %dx.types.CBufRet.f32 %2124, 3
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2129 = fmul fast float %2126, %2121
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = fmul fast float %1742, 5.000000e-01
  %2133 = fadd fast float %2132, 5.000000e-01
  %2134 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2135 = fsub fast float 1.000000e+00, %2134
  %2136 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2131)  ; FMax(a,b)
  %2137 = fdiv fast float %2135, %2136
  %2138 = fsub fast float %2121, %1699
  %2139 = call float @dx.op.unary.f32(i32 6, float %2138)  ; FAbs(value)
  %2140 = fmul fast float %2139, %2125
  %2141 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2142 = fsub fast float 1.000000e+00, %2140
  %2143 = fmul fast float %2142, %2141
  %2144 = fadd fast float %2143, %2140
  %2145 = fmul fast float %2128, %2121
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fsub fast float 1.000000e+00, %2144
  %2148 = fmul fast float %2147, %2146
  %2149 = fadd fast float %2148, %2144
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = fadd fast float %2123, -1.000000e+00
  %2152 = select i1 %2122, float -1.000000e+00, float %2151
  %2153 = fmul fast float %2150, %2152
  %2154 = fadd fast float %2153, 1.000000e+00
  %2155 = fsub fast float -0.000000e+00, %2153
  %2156 = fmul fast float %2115, %2155
  %2157 = fmul fast float %2116, %2155
  %2158 = fmul fast float %2117, %2155
  br label %2159

; <label>:2159                                    ; preds = %2112, %1708
  %2160 = phi float [ %2113, %2112 ], [ 0.000000e+00, %1708 ]
  %2161 = phi float [ %2154, %2112 ], [ 1.000000e+00, %1708 ]
  %2162 = phi float [ %2156, %2112 ], [ 0.000000e+00, %1708 ]
  %2163 = phi float [ %2157, %2112 ], [ 0.000000e+00, %1708 ]
  %2164 = phi float [ %2158, %2112 ], [ 0.000000e+00, %1708 ]
  %2165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.f32 %2165, 1
  %2167 = fsub fast float 1.000000e+00, %2161
  %2168 = fmul fast float %2167, %1743
  %2169 = fmul fast float %2168, %2166
  %2170 = fsub fast float %1743, %2169
  br i1 %1736, label %2171, label %2200, !dx.controlflow.hints !123

; <label>:2171                                    ; preds = %2159
  %2172 = fmul fast float %1744, %1733
  %2173 = fadd fast float %2172, %1734
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fmul fast float %1715, %2170
  %2176 = fsub fast float -0.000000e+00, %2175
  %2177 = fmul fast float %1716, %2170
  %2178 = fsub fast float -0.000000e+00, %2177
  %2179 = call float @dx.op.unary.f32(i32 21, float %2176)  ; Exp(value)
  %2180 = call float @dx.op.unary.f32(i32 21, float %2178)  ; Exp(value)
  %2181 = call float @dx.op.binary.f32(i32 35, float %1723, float %2179)  ; FMax(a,b)
  %2182 = call float @dx.op.binary.f32(i32 35, float %1723, float %2180)  ; FMax(a,b)
  %2183 = fsub fast float %2182, %2181
  %2184 = fmul fast float %2183, %2174
  %2185 = fadd fast float %2184, %2181
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fsub fast float %1720, %1725
  %2188 = fsub fast float %1721, %1726
  %2189 = fsub fast float %1722, %1727
  %2190 = fmul fast float %2174, %2187
  %2191 = fmul fast float %2174, %2188
  %2192 = fmul fast float %2174, %2189
  %2193 = fadd fast float %2190, %1725
  %2194 = fadd fast float %2191, %1726
  %2195 = fadd fast float %2192, %1727
  %2196 = fsub fast float 1.000000e+00, %2186
  %2197 = fmul fast float %2196, %2193
  %2198 = fmul fast float %2196, %2194
  %2199 = fmul fast float %2196, %2195
  br label %2259

; <label>:2200                                    ; preds = %2159
  %2201 = fmul fast float %2170, %1732
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2203 = fsub fast float 2.000000e+00, %2202
  %2204 = fmul fast float %2202, 9.921875e-01
  %2205 = fmul fast float %2204, %2203
  %2206 = fadd fast float %2205, 3.906250e-03
  %2207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2206, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = fsub fast float %2202, %2208
  %2210 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2209)  ; FMax(a,b)
  %2211 = fmul fast float %1718, %1699
  %2212 = call float @dx.op.unary.f32(i32 6, float %2211)  ; FAbs(value)
  %2213 = fcmp fast ogt float %2212, 0x3EB0C6F7A0000000
  br i1 %2213, label %2214, label %2220, !dx.controlflow.hints !124

; <label>:2214                                    ; preds = %2200
  %2215 = fmul fast float %2211, 0xBFF7154760000000
  %2216 = call float @dx.op.unary.f32(i32 21, float %2215)  ; Exp(value)
  %2217 = fsub fast float 1.000000e+00, %2216
  %2218 = fdiv fast float %2217, %2211
  %2219 = fmul fast float %2218, %1728
  br label %2220

; <label>:2220                                    ; preds = %2214, %2200
  %2221 = phi float [ %2219, %2214 ], [ %1728, %2200 ]
  %2222 = fadd fast float %2221, %1730
  %2223 = fmul fast float %2222, %2210
  %2224 = fmul fast float %1715, %2223
  %2225 = fsub fast float -0.000000e+00, %2224
  %2226 = fmul fast float %1716, %2223
  %2227 = fsub fast float -0.000000e+00, %2226
  %2228 = fmul fast float %1717, %2223
  %2229 = fsub fast float -0.000000e+00, %2228
  %2230 = call float @dx.op.unary.f32(i32 21, float %2225)  ; Exp(value)
  %2231 = call float @dx.op.unary.f32(i32 21, float %2227)  ; Exp(value)
  %2232 = call float @dx.op.unary.f32(i32 21, float %2229)  ; Exp(value)
  %2233 = fmul fast float %1744, %1744
  %2234 = fadd fast float %2233, 1.000000e+00
  %2235 = fmul fast float %2234, 0x3FAE8EC8A0000000
  %2236 = fmul fast float %2235, %1725
  %2237 = fmul fast float %2235, %1726
  %2238 = fmul fast float %2235, %1727
  %2239 = fmul fast float %1744, %1723
  %2240 = fsub fast float 1.000000e+00, %2239
  %2241 = fmul fast float %1723, %1723
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = fmul fast float %2242, 0x3FB45F3060000000
  %2244 = fmul fast float %2240, %2240
  %2245 = fdiv fast float 1.000000e+00, %2244
  %2246 = fmul fast float %2243, %2245
  %2247 = fmul fast float %2246, %1720
  %2248 = fmul fast float %2246, %1721
  %2249 = fmul fast float %2246, %1722
  %2250 = fadd fast float %2247, %2236
  %2251 = fadd fast float %2248, %2237
  %2252 = fadd fast float %2249, %2238
  %2253 = fsub fast float 1.000000e+00, %2230
  %2254 = fsub fast float 1.000000e+00, %2231
  %2255 = fsub fast float 1.000000e+00, %2232
  %2256 = fmul fast float %2250, %2253
  %2257 = fmul fast float %2251, %2254
  %2258 = fmul fast float %2252, %2255
  br label %2259

; <label>:2259                                    ; preds = %2220, %2171
  %2260 = phi float [ %2197, %2171 ], [ %2256, %2220 ]
  %2261 = phi float [ %2198, %2171 ], [ %2257, %2220 ]
  %2262 = phi float [ %2199, %2171 ], [ %2258, %2220 ]
  %2263 = phi float [ %2186, %2171 ], [ %2230, %2220 ]
  %2264 = phi float [ %2186, %2171 ], [ %2231, %2220 ]
  %2265 = phi float [ %2186, %2171 ], [ %2232, %2220 ]
  br i1 %1752, label %2266, label %2464, !dx.controlflow.hints !125

; <label>:2266                                    ; preds = %2259
  %2267 = extractvalue %dx.types.CBufRet.f32 %2165, 0
  %2268 = fmul fast float %2267, %2167
  %2269 = fsub fast float %2162, %2260
  %2270 = fsub fast float %2163, %2261
  %2271 = fsub fast float %2164, %2262
  %2272 = fmul fast float %2268, %2269
  %2273 = fmul fast float %2268, %2270
  %2274 = fmul fast float %2268, %2271
  %2275 = fadd fast float %2272, %2260
  %2276 = fadd fast float %2273, %2261
  %2277 = fadd fast float %2274, %2262
  %2278 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2263)  ; FMax(a,b)
  %2279 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2264)  ; FMax(a,b)
  %2280 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2265)  ; FMax(a,b)
  %2281 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2161)  ; FMax(a,b)
  %2282 = call float @dx.op.binary.f32(i32 35, float %2160, float %2170)  ; FMax(a,b)
  %2283 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2282)  ; FMax(a,b)
  %2284 = fdiv fast float %2160, %2283
  %2285 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2286 = fdiv fast float %2170, %2283
  %2287 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2288 = fcmp fast une float %2281, 1.000000e+00
  br i1 %2288, label %2289, label %2302, !dx.controlflow.hints !126

; <label>:2289                                    ; preds = %2266
  %2290 = call float @dx.op.unary.f32(i32 23, float %2281)  ; Log(value)
  %2291 = fmul fast float %2290, 0x3FE62E4300000000
  %2292 = fmul fast float %2162, %2291
  %2293 = fsub fast float -0.000000e+00, %2292
  %2294 = fmul fast float %2163, %2291
  %2295 = fsub fast float -0.000000e+00, %2294
  %2296 = fmul fast float %2164, %2291
  %2297 = fsub fast float -0.000000e+00, %2296
  %2298 = fsub fast float 1.000000e+00, %2281
  %2299 = fdiv fast float %2293, %2298
  %2300 = fdiv fast float %2295, %2298
  %2301 = fdiv fast float %2297, %2298
  br label %2302

; <label>:2302                                    ; preds = %2289, %2266
  %2303 = phi float [ %2299, %2289 ], [ %2162, %2266 ]
  %2304 = phi float [ %2300, %2289 ], [ %2163, %2266 ]
  %2305 = phi float [ %2301, %2289 ], [ %2164, %2266 ]
  %2306 = phi float [ %2291, %2289 ], [ 0.000000e+00, %2266 ]
  %2307 = fcmp fast une float %2278, 1.000000e+00
  br i1 %2307, label %2308, label %2315, !dx.controlflow.hints !127

; <label>:2308                                    ; preds = %2302
  %2309 = call float @dx.op.unary.f32(i32 23, float %2278)  ; Log(value)
  %2310 = fmul fast float %2309, 0x3FE62E4300000000
  %2311 = fmul fast float %2275, %2310
  %2312 = fsub fast float -0.000000e+00, %2311
  %2313 = fsub fast float 1.000000e+00, %2278
  %2314 = fdiv fast float %2312, %2313
  br label %2315

; <label>:2315                                    ; preds = %2308, %2302
  %2316 = phi float [ %2314, %2308 ], [ %2275, %2302 ]
  %2317 = phi float [ %2310, %2308 ], [ 0.000000e+00, %2302 ]
  %2318 = fcmp fast une float %2279, 1.000000e+00
  br i1 %2318, label %2319, label %2326, !dx.controlflow.hints !127

; <label>:2319                                    ; preds = %2315
  %2320 = call float @dx.op.unary.f32(i32 23, float %2279)  ; Log(value)
  %2321 = fmul fast float %2320, 0x3FE62E4300000000
  %2322 = fmul fast float %2276, %2321
  %2323 = fsub fast float -0.000000e+00, %2322
  %2324 = fsub fast float 1.000000e+00, %2279
  %2325 = fdiv fast float %2323, %2324
  br label %2326

; <label>:2326                                    ; preds = %2319, %2315
  %2327 = phi float [ %2325, %2319 ], [ %2276, %2315 ]
  %2328 = phi float [ %2321, %2319 ], [ 0.000000e+00, %2315 ]
  %2329 = fcmp fast une float %2280, 1.000000e+00
  br i1 %2329, label %2330, label %2337, !dx.controlflow.hints !127

; <label>:2330                                    ; preds = %2326
  %2331 = call float @dx.op.unary.f32(i32 23, float %2280)  ; Log(value)
  %2332 = fmul fast float %2331, 0x3FE62E4300000000
  %2333 = fmul fast float %2277, %2332
  %2334 = fsub fast float -0.000000e+00, %2333
  %2335 = fsub fast float 1.000000e+00, %2280
  %2336 = fdiv fast float %2334, %2335
  br label %2337

; <label>:2337                                    ; preds = %2330, %2326
  %2338 = phi float [ %2336, %2330 ], [ %2277, %2326 ]
  %2339 = phi float [ %2332, %2330 ], [ 0.000000e+00, %2326 ]
  %2340 = fmul fast float %2303, %2287
  %2341 = fmul fast float %2304, %2287
  %2342 = fmul fast float %2305, %2287
  %2343 = fmul fast float %2306, %2287
  %2344 = fmul fast float %2316, %2285
  %2345 = fmul fast float %2327, %2285
  %2346 = fmul fast float %2338, %2285
  %2347 = fmul fast float %2317, %2285
  %2348 = fmul fast float %2328, %2285
  %2349 = fmul fast float %2339, %2285
  %2350 = fadd fast float %2344, %2340
  %2351 = fadd fast float %2345, %2341
  %2352 = fadd fast float %2346, %2342
  %2353 = fadd fast float %2347, %2343
  %2354 = fadd fast float %2348, %2343
  %2355 = fadd fast float %2349, %2343
  %2356 = fcmp fast une float %2353, 0.000000e+00
  br i1 %2356, label %2357, label %2364, !dx.controlflow.hints !128

; <label>:2357                                    ; preds = %2337
  %2358 = fmul fast float %2353, 0x3FF7154760000000
  %2359 = call float @dx.op.unary.f32(i32 21, float %2358)  ; Exp(value)
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = fmul fast float %2350, %2360
  %2362 = fsub fast float -0.000000e+00, %2361
  %2363 = fdiv fast float %2362, %2353
  br label %2364

; <label>:2364                                    ; preds = %2357, %2337
  %2365 = phi float [ %2359, %2357 ], [ 1.000000e+00, %2337 ]
  %2366 = phi float [ %2363, %2357 ], [ %2350, %2337 ]
  %2367 = fcmp fast une float %2354, 0.000000e+00
  br i1 %2367, label %2368, label %2375, !dx.controlflow.hints !128

; <label>:2368                                    ; preds = %2364
  %2369 = fmul fast float %2354, 0x3FF7154760000000
  %2370 = call float @dx.op.unary.f32(i32 21, float %2369)  ; Exp(value)
  %2371 = fsub fast float 1.000000e+00, %2370
  %2372 = fmul fast float %2351, %2371
  %2373 = fsub fast float -0.000000e+00, %2372
  %2374 = fdiv fast float %2373, %2354
  br label %2375

; <label>:2375                                    ; preds = %2368, %2364
  %2376 = phi float [ %2370, %2368 ], [ 1.000000e+00, %2364 ]
  %2377 = phi float [ %2374, %2368 ], [ %2351, %2364 ]
  %2378 = fcmp fast une float %2355, 0.000000e+00
  br i1 %2378, label %2379, label %2386, !dx.controlflow.hints !128

; <label>:2379                                    ; preds = %2375
  %2380 = fmul fast float %2355, 0x3FF7154760000000
  %2381 = call float @dx.op.unary.f32(i32 21, float %2380)  ; Exp(value)
  %2382 = fsub fast float 1.000000e+00, %2381
  %2383 = fmul fast float %2352, %2382
  %2384 = fsub fast float -0.000000e+00, %2383
  %2385 = fdiv fast float %2384, %2355
  br label %2386

; <label>:2386                                    ; preds = %2379, %2375
  %2387 = phi float [ %2381, %2379 ], [ 1.000000e+00, %2375 ]
  %2388 = phi float [ %2385, %2379 ], [ %2352, %2375 ]
  %2389 = fcmp fast ogt float %2285, %2287
  br i1 %2389, label %2390, label %2410

; <label>:2390                                    ; preds = %2386
  %2391 = fsub fast float 1.000000e+00, %2287
  %2392 = fmul fast float %2303, %2391
  %2393 = fmul fast float %2304, %2391
  %2394 = fmul fast float %2305, %2391
  %2395 = fmul fast float %2306, %2391
  %2396 = fcmp fast une float %2395, 0.000000e+00
  br i1 %2396, label %2397, label %2448, !dx.controlflow.hints !129

; <label>:2397                                    ; preds = %2390
  %2398 = fmul fast float %2395, 0x3FF7154760000000
  %2399 = call float @dx.op.unary.f32(i32 21, float %2398)  ; Exp(value)
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = fmul fast float %2392, %2400
  %2402 = fsub fast float -0.000000e+00, %2401
  %2403 = fmul fast float %2393, %2400
  %2404 = fsub fast float -0.000000e+00, %2403
  %2405 = fmul fast float %2394, %2400
  %2406 = fsub fast float -0.000000e+00, %2405
  %2407 = fdiv fast float %2402, %2395
  %2408 = fdiv fast float %2404, %2395
  %2409 = fdiv fast float %2406, %2395
  br label %2448

; <label>:2410                                    ; preds = %2386
  %2411 = fsub fast float 1.000000e+00, %2285
  %2412 = fmul fast float %2316, %2411
  %2413 = fmul fast float %2327, %2411
  %2414 = fmul fast float %2338, %2411
  %2415 = fmul fast float %2317, %2411
  %2416 = fmul fast float %2328, %2411
  %2417 = fmul fast float %2339, %2411
  %2418 = fcmp fast une float %2415, 0.000000e+00
  br i1 %2418, label %2419, label %2426, !dx.controlflow.hints !128

; <label>:2419                                    ; preds = %2410
  %2420 = fmul fast float %2415, 0x3FF7154760000000
  %2421 = call float @dx.op.unary.f32(i32 21, float %2420)  ; Exp(value)
  %2422 = fsub fast float 1.000000e+00, %2421
  %2423 = fmul fast float %2412, %2422
  %2424 = fsub fast float -0.000000e+00, %2423
  %2425 = fdiv fast float %2424, %2415
  br label %2426

; <label>:2426                                    ; preds = %2419, %2410
  %2427 = phi float [ %2425, %2419 ], [ %2412, %2410 ]
  %2428 = phi float [ %2421, %2419 ], [ 1.000000e+00, %2410 ]
  %2429 = fcmp fast une float %2416, 0.000000e+00
  br i1 %2429, label %2430, label %2437, !dx.controlflow.hints !128

; <label>:2430                                    ; preds = %2426
  %2431 = fmul fast float %2416, 0x3FF7154760000000
  %2432 = call float @dx.op.unary.f32(i32 21, float %2431)  ; Exp(value)
  %2433 = fsub fast float 1.000000e+00, %2432
  %2434 = fmul fast float %2413, %2433
  %2435 = fsub fast float -0.000000e+00, %2434
  %2436 = fdiv fast float %2435, %2416
  br label %2437

; <label>:2437                                    ; preds = %2430, %2426
  %2438 = phi float [ %2436, %2430 ], [ %2413, %2426 ]
  %2439 = phi float [ %2432, %2430 ], [ 1.000000e+00, %2426 ]
  %2440 = fcmp fast une float %2417, 0.000000e+00
  br i1 %2440, label %2441, label %2448, !dx.controlflow.hints !128

; <label>:2441                                    ; preds = %2437
  %2442 = fmul fast float %2417, 0x3FF7154760000000
  %2443 = call float @dx.op.unary.f32(i32 21, float %2442)  ; Exp(value)
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = fmul fast float %2414, %2444
  %2446 = fsub fast float -0.000000e+00, %2445
  %2447 = fdiv fast float %2446, %2417
  br label %2448

; <label>:2448                                    ; preds = %2441, %2437, %2397, %2390
  %2449 = phi float [ %2447, %2441 ], [ %2409, %2397 ], [ %2394, %2390 ], [ %2414, %2437 ]
  %2450 = phi float [ %2438, %2441 ], [ %2408, %2397 ], [ %2393, %2390 ], [ %2438, %2437 ]
  %2451 = phi float [ %2427, %2441 ], [ %2407, %2397 ], [ %2392, %2390 ], [ %2427, %2437 ]
  %2452 = phi float [ %2443, %2441 ], [ %2399, %2397 ], [ 1.000000e+00, %2390 ], [ 1.000000e+00, %2437 ]
  %2453 = phi float [ %2439, %2441 ], [ %2399, %2397 ], [ 1.000000e+00, %2390 ], [ %2439, %2437 ]
  %2454 = phi float [ %2428, %2441 ], [ %2399, %2397 ], [ 1.000000e+00, %2390 ], [ %2428, %2437 ]
  %2455 = fmul fast float %2454, %2366
  %2456 = fmul fast float %2453, %2377
  %2457 = fmul fast float %2452, %2388
  %2458 = fadd fast float %2455, %2451
  %2459 = fadd fast float %2456, %2450
  %2460 = fadd fast float %2457, %2449
  %2461 = fmul fast float %2454, %2365
  %2462 = fmul fast float %2453, %2376
  %2463 = fmul fast float %2452, %2387
  br label %2464

; <label>:2464                                    ; preds = %2448, %2259
  %2465 = phi float [ %2463, %2448 ], [ %2265, %2259 ]
  %2466 = phi float [ %2462, %2448 ], [ %2264, %2259 ]
  %2467 = phi float [ %2461, %2448 ], [ %2263, %2259 ]
  %2468 = phi float [ %2460, %2448 ], [ %2262, %2259 ]
  %2469 = phi float [ %2459, %2448 ], [ %2261, %2259 ]
  %2470 = phi float [ %2458, %2448 ], [ %2260, %2259 ]
  %2471 = fmul fast float %2470, %1445
  %2472 = fmul fast float %2469, %1445
  %2473 = fmul fast float %2468, %1445
  %2474 = fmul fast float %2467, %1707
  %2475 = call float @dx.op.dot3.f32(i32 55, float %2467, float %2466, float %2465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2476 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2472, float %2473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2477 = select i1 %131, float %2475, float %2467
  %2478 = select i1 %131, float %2475, float %2466
  %2479 = select i1 %131, float 1.000000e+00, float %2465
  %2480 = select i1 %131, float %2476, float %2471
  %2481 = select i1 %131, float 0.000000e+00, float %2472
  %2482 = select i1 %131, float 0.000000e+00, float %2473
  %2483 = fmul fast float %2477, %1701
  %2484 = fmul fast float %2478, %1702
  %2485 = fmul fast float %2479, %1703
  %2486 = fadd fast float %2483, %2480
  %2487 = fadd fast float %2484, %2481
  %2488 = fadd fast float %2482, %2485
  %2489 = fmul fast float %2477, %1704
  %2490 = fmul fast float %2478, %1705
  %2491 = fmul fast float %2479, %1706
  %2492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.i32 %2492, 0
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %2763, label %2495, !dx.controlflow.hints !130

; <label>:2495                                    ; preds = %2464
  %2496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.f32 %2496, 2
  %2498 = extractvalue %dx.types.CBufRet.f32 %2496, 3
  %2499 = fmul fast float %2497, %61
  %2500 = fmul fast float %2498, %62
  %2501 = fmul fast float %2499, 2.000000e+00
  %2502 = fmul fast float %2500, 2.000000e+00
  %2503 = fsub fast float 1.000000e+00, %2501
  %2504 = fsub fast float 1.000000e+00, %2502
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.f32 %2505, 0
  %2507 = extractvalue %dx.types.CBufRet.f32 %2505, 1
  %2508 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2509 = fmul fast float %2503, %2506
  %2510 = fmul fast float %2503, %2507
  %2511 = fmul fast float %2503, %2508
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 0
  %2514 = extractvalue %dx.types.CBufRet.f32 %2512, 1
  %2515 = extractvalue %dx.types.CBufRet.f32 %2512, 2
  %2516 = fmul fast float %2504, %2513
  %2517 = fmul fast float %2504, %2514
  %2518 = fmul fast float %2504, %2515
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = extractvalue %dx.types.CBufRet.f32 %2519, 1
  %2522 = extractvalue %dx.types.CBufRet.f32 %2519, 2
  %2523 = fadd fast float %2516, %2520
  %2524 = fadd fast float %2523, %2509
  %2525 = fadd fast float %2517, %2521
  %2526 = fadd fast float %2525, %2510
  %2527 = fadd fast float %2518, %2522
  %2528 = fadd fast float %2527, %2511
  %2529 = fmul fast float %2524, %1700
  %2530 = fmul fast float %2526, %1700
  %2531 = fmul fast float %2528, %1700
  %2532 = fmul fast float %2529, %2529
  %2533 = fmul fast float %2530, %2530
  %2534 = fadd fast float %2532, %2533
  %2535 = fmul fast float %2531, %2531
  %2536 = fadd fast float %2534, %2535
  %2537 = call float @dx.op.unary.f32(i32 24, float %2536)  ; Sqrt(value)
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 0
  %2540 = fsub fast float %2537, %2539
  %2541 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2542 = fmul fast float %2540, %2541
  %2543 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2544 = fadd fast float %2543, -5.000000e-01
  %2545 = fmul fast float %2544, 2.000000e+00
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 2
  %2548 = call float @dx.op.binary.f32(i32 36, float %2547, float %2545)  ; FMin(a,b)
  %2549 = fsub fast float -0.000000e+00, %2547
  %2550 = fcmp fast ogt float %2548, %2549
  br i1 %2550, label %2551, label %2763, !dx.controlflow.hints !131

; <label>:2551                                    ; preds = %2495
  %2552 = fmul fast float %2548, 5.000000e-01
  %2553 = fadd fast float %2552, 5.000000e-01
  %2554 = call float @dx.op.unary.f32(i32 22, float %2553)  ; Frc(value)
  %2555 = call float @dx.op.unary.f32(i32 27, float %2554)  ; Round_ni(value)
  %2556 = call float @dx.op.unary.f32(i32 22, float %2554)  ; Frc(value)
  %2557 = fmul fast float %2556, 2.000000e+00
  %2558 = fadd fast float %2557, -1.000000e+00
  %2559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2499, float %2500, float %2555, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2560 = extractvalue %dx.types.ResRet.f32 %2559, 0
  %2561 = extractvalue %dx.types.ResRet.f32 %2559, 1
  %2562 = extractvalue %dx.types.ResRet.f32 %2559, 2
  %2563 = extractvalue %dx.types.ResRet.f32 %2559, 3
  %2564 = fadd fast float %2560, -5.000000e-01
  %2565 = fadd fast float %2562, -5.000000e-01
  %2566 = fmul fast float %2564, 0xBFD5555560000000
  %2567 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2565, float %2566)  ; FMad(a,b,c)
  %2568 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2561, float 0.000000e+00)  ; FMad(a,b,c)
  %2569 = fadd fast float %2568, %2563
  %2570 = fmul fast float %2564, -7.500000e-01
  %2571 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2565, float %2570)  ; FMad(a,b,c)
  %2572 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2561, float 0.000000e+00)  ; FMad(a,b,c)
  %2573 = fadd fast float %2572, %2563
  %2574 = call float @dx.op.binary.f32(i32 35, float %2567, float -1.000000e+00)  ; FMax(a,b)
  %2575 = call float @dx.op.binary.f32(i32 35, float %2569, float -1.000000e+00)  ; FMax(a,b)
  %2576 = call float @dx.op.binary.f32(i32 35, float %2571, float -1.000000e+00)  ; FMax(a,b)
  %2577 = call float @dx.op.binary.f32(i32 35, float %2573, float -1.000000e+00)  ; FMax(a,b)
  %2578 = call float @dx.op.binary.f32(i32 36, float %2574, float 1.000000e+00)  ; FMin(a,b)
  %2579 = call float @dx.op.binary.f32(i32 36, float %2575, float 1.000000e+00)  ; FMin(a,b)
  %2580 = call float @dx.op.binary.f32(i32 36, float %2576, float 1.000000e+00)  ; FMin(a,b)
  %2581 = call float @dx.op.binary.f32(i32 36, float %2577, float 1.000000e+00)  ; FMin(a,b)
  %2582 = fcmp fast olt float %2578, 0x3FEFFF8020000000
  br i1 %2582, label %2583, label %2698, !dx.controlflow.hints !132

; <label>:2583                                    ; preds = %2551
  %2584 = extractvalue %dx.types.CBufRet.f32 %2546, 3
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2589 = extractvalue %dx.types.CBufRet.f32 %2585, 3
  %2590 = fsub fast float %2586, %2578
  %2591 = fsub fast float %2587, %2579
  %2592 = fsub fast float %2588, %2580
  %2593 = fsub fast float %2589, %2581
  %2594 = fmul fast float %2590, %2584
  %2595 = fmul fast float %2591, %2584
  %2596 = fmul fast float %2592, %2584
  %2597 = fmul fast float %2593, %2584
  %2598 = fadd fast float %2594, %2578
  %2599 = fadd fast float %2595, %2579
  %2600 = fsub fast float -0.000000e+00, %2599
  %2601 = fadd fast float %2596, %2580
  %2602 = fadd fast float %2597, %2581
  %2603 = fmul fast float %2598, %2598
  %2604 = fsub fast float %2599, %2603
  %2605 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2604)  ; FMax(a,b)
  %2606 = fdiv fast float 1.000000e+00, %2605
  %2607 = fmul fast float %2599, %2598
  %2608 = fsub fast float %2601, %2607
  %2609 = fsub fast float %2558, %2598
  %2610 = fmul fast float %2558, %2558
  %2611 = fsub fast float %2610, %2599
  %2612 = fmul fast float %2609, %2606
  %2613 = fmul fast float %2612, %2608
  %2614 = fsub fast float %2611, %2613
  %2615 = fmul fast float %2599, %2599
  %2616 = fsub fast float %2602, %2615
  %2617 = fmul fast float %2608, %2608
  %2618 = fmul fast float %2617, %2606
  %2619 = fsub fast float %2616, %2618
  %2620 = fdiv fast float %2614, %2619
  %2621 = fmul fast float %2608, %2620
  %2622 = fsub fast float %2609, %2621
  %2623 = fmul fast float %2622, %2606
  %2624 = fmul fast float %2623, %2598
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2599, %2620
  %2627 = fsub fast float %2625, %2626
  %2628 = fmul fast float %2623, %2623
  %2629 = fmul fast float %2620, 4.000000e+00
  %2630 = fmul fast float %2629, %2627
  %2631 = fsub fast float %2628, %2630
  %2632 = call float @dx.op.unary.f32(i32 24, float %2631)  ; Sqrt(value)
  %2633 = fcmp fast oge float %2623, 0.000000e+00
  %2634 = fsub fast float -0.000000e+00, %2632
  %2635 = select i1 %2633, float %2634, float %2632
  %2636 = fsub fast float %2635, %2623
  %2637 = fdiv fast float %2636, %2620
  %2638 = fdiv fast float %2627, %2636
  %2639 = fmul fast float %2637, 5.000000e-01
  %2640 = fmul fast float %2638, 2.000000e+00
  %2641 = select i1 %2633, float %2639, float %2640
  %2642 = select i1 %2633, float %2640, float %2639
  %2643 = call float @dx.op.binary.f32(i32 35, float %2641, float %2642)  ; FMax(a,b)
  %2644 = call float @dx.op.binary.f32(i32 36, float %2641, float %2642)  ; FMin(a,b)
  %2645 = fcmp fast ogt float %2558, %2644
  br i1 %2645, label %2646, label %2656

; <label>:2646                                    ; preds = %2583
  %2647 = fsub fast float %2558, %2644
  %2648 = fsub fast float %2643, %2644
  %2649 = fmul fast float %2647, %2648
  %2650 = fmul fast float %2643, %2558
  %2651 = fadd fast float %2643, %2558
  %2652 = fmul fast float %2651, %2598
  %2653 = fadd fast float %2650, %2599
  %2654 = fsub fast float %2653, %2652
  %2655 = fdiv fast float %2654, %2649
  br label %2656

; <label>:2656                                    ; preds = %2646, %2583
  %2657 = phi float [ %2655, %2646 ], [ 0.000000e+00, %2583 ]
  %2658 = fcmp fast ogt float %2558, %2643
  %2659 = fsub fast float %2558, %2643
  br i1 %2658, label %2660, label %2670

; <label>:2660                                    ; preds = %2656
  %2661 = fsub fast float %2643, %2644
  %2662 = fmul fast float %2661, %2659
  %2663 = fmul fast float %2644, %2558
  %2664 = fadd fast float %2644, %2558
  %2665 = fmul fast float %2664, %2598
  %2666 = fsub fast float %2600, %2663
  %2667 = fadd fast float %2666, %2665
  %2668 = fdiv fast float %2667, %2662
  %2669 = fadd fast float %2668, %2657
  br label %2670

; <label>:2670                                    ; preds = %2660, %2656
  %2671 = phi float [ %2669, %2660 ], [ %2657, %2656 ]
  %2672 = fsub fast float %2558, %2644
  %2673 = fmul fast float %2672, %2659
  %2674 = fmul fast float %2644, %2643
  %2675 = fadd fast float %2644, %2643
  %2676 = fmul fast float %2675, %2598
  %2677 = fadd fast float %2674, %2599
  %2678 = fsub fast float %2677, %2676
  %2679 = fdiv fast float %2678, %2673
  %2680 = call float @dx.op.unary.f32(i32 7, float %2671)  ; Saturate(value)
  %2681 = fcmp fast oeq float %1553, 0.000000e+00
  %2682 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2683 = fcmp fast oeq float %2682, 0.000000e+00
  %2684 = or i1 %2681, %2683
  %2685 = fmul fast float %2682, 2.000000e+00
  %2686 = fadd fast float %2547, %2548
  %2687 = fdiv fast float %2686, %2685
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2689 = fmul fast float %2688, 2.000000e+00
  %2690 = fsub fast float 3.000000e+00, %2689
  %2691 = fmul fast float %2688, %2688
  %2692 = fmul fast float %2691, %2690
  %2693 = select i1 %2684, float 1.000000e+00, float %2692
  %2694 = fmul fast float %2679, %1553
  %2695 = fadd fast float %2680, %2694
  %2696 = call float @dx.op.unary.f32(i32 7, float %2695)  ; Saturate(value)
  %2697 = fmul fast float %2693, %2696
  br label %2698

; <label>:2698                                    ; preds = %2670, %2551
  %2699 = phi float [ %2697, %2670 ], [ 0.000000e+00, %2551 ]
  %2700 = fsub fast float 1.000000e+00, %2699
  %2701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2499, float %2500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.i32 %2703, 2
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2711, label %2706

; <label>:2706                                    ; preds = %2698
  %2707 = call float @dx.op.unary.f32(i32 7, float %2699)  ; Saturate(value)
  %2708 = fadd fast float %2702, -1.000000e+00
  %2709 = fmul fast float %2707, %2708
  %2710 = fadd fast float %2709, 1.000000e+00
  br label %2711

; <label>:2711                                    ; preds = %2706, %2698
  %2712 = phi float [ %2710, %2706 ], [ %2700, %2698 ]
  %2713 = call float @dx.op.binary.f32(i32 35, float %2702, float %2712)  ; FMax(a,b)
  %2714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2715 = extractvalue %dx.types.CBufRet.i32 %2714, 2
  %2716 = and i32 %2715, 1
  %2717 = icmp eq i32 %2716, 0
  %2718 = fcmp fast une float %2713, 1.000000e+00
  %2719 = and i1 %2718, %2717
  br i1 %2719, label %2720, label %2739

; <label>:2720                                    ; preds = %2711
  %2721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2499, float %2500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.ResRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.ResRet.f32 %2721, 2
  %2725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2726 = extractvalue %dx.types.CBufRet.f32 %2725, 1
  %2727 = fmul fast float %2726, %2722
  %2728 = fmul fast float %2726, %2723
  %2729 = fmul fast float %2726, %2724
  %2730 = fcmp fast ogt float %2702, 0x3FEFFF2E40000000
  %2731 = fsub fast float 1.000000e+00, %2713
  %2732 = fsub fast float 1.000000e+00, %2702
  %2733 = fdiv fast float %2731, %2732
  %2734 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2735 = select i1 %2730, float 0.000000e+00, float %2734
  %2736 = fmul fast float %2727, %2735
  %2737 = fmul fast float %2728, %2735
  %2738 = fmul fast float %2729, %2735
  br label %2739

; <label>:2739                                    ; preds = %2720, %2711
  %2740 = phi float [ 0.000000e+00, %2711 ], [ %2736, %2720 ]
  %2741 = phi float [ 0.000000e+00, %2711 ], [ %2737, %2720 ]
  %2742 = phi float [ 0.000000e+00, %2711 ], [ %2738, %2720 ]
  %2743 = fmul fast float %2740, %1445
  %2744 = fmul fast float %2741, %1445
  %2745 = fmul fast float %2742, %1445
  %2746 = fmul fast float %2713, %2474
  %2747 = call float @dx.op.dot3.f32(i32 55, float %2713, float %2713, float %2713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2748 = call float @dx.op.dot3.f32(i32 55, float %2743, float %2744, float %2745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2749 = select i1 %131, float %2747, float %2713
  %2750 = select i1 %131, float 1.000000e+00, float %2713
  %2751 = select i1 %131, float %2748, float %2743
  %2752 = select i1 %131, float 0.000000e+00, float %2744
  %2753 = select i1 %131, float 0.000000e+00, float %2745
  %2754 = fmul fast float %2749, %2486
  %2755 = fmul fast float %2749, %2487
  %2756 = fmul fast float %2750, %2488
  %2757 = fadd fast float %2754, %2751
  %2758 = fadd fast float %2755, %2752
  %2759 = fadd fast float %2753, %2756
  %2760 = fmul fast float %2749, %2489
  %2761 = fmul fast float %2749, %2490
  %2762 = fmul fast float %2750, %2491
  br label %2763

; <label>:2763                                    ; preds = %2739, %2495, %2464, %1696
  %2764 = phi float [ %1701, %1696 ], [ %2486, %2464 ], [ %2757, %2739 ], [ %2486, %2495 ]
  %2765 = phi float [ %1702, %1696 ], [ %2487, %2464 ], [ %2758, %2739 ], [ %2487, %2495 ]
  %2766 = phi float [ %1703, %1696 ], [ %2488, %2464 ], [ %2759, %2739 ], [ %2488, %2495 ]
  %2767 = phi float [ %1704, %1696 ], [ %2489, %2464 ], [ %2760, %2739 ], [ %2489, %2495 ]
  %2768 = phi float [ %1705, %1696 ], [ %2490, %2464 ], [ %2761, %2739 ], [ %2490, %2495 ]
  %2769 = phi float [ %1706, %1696 ], [ %2491, %2464 ], [ %2762, %2739 ], [ %2491, %2495 ]
  %2770 = phi float [ %1707, %1696 ], [ %2474, %2464 ], [ %2746, %2739 ], [ %2474, %2495 ]
  %2771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.f32 %2771, 2
  %2773 = extractvalue %dx.types.CBufRet.f32 %2771, 3
  %2774 = fmul fast float %2772, %61
  %2775 = fmul fast float %2773, %62
  %2776 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2777 = call float @dx.op.unary.f32(i32 7, float %2775)  ; Saturate(value)
  %2778 = select i1 %854, i32 2, i32 0
  %2779 = or i32 %2778, 1
  %2780 = uitofp i32 %2779 to float
  %2781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2776, float %2777, float %2780, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2782 = extractvalue %dx.types.ResRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.ResRet.f32 %2781, 1
  %2784 = extractvalue %dx.types.ResRet.f32 %2781, 2
  %2785 = extractvalue %dx.types.ResRet.f32 %2781, 3
  %2786 = add nuw nsw i32 %2778, 2
  %2787 = uitofp i32 %2786 to float
  %2788 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2776, float %2777, float %2787, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.ResRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.ResRet.f32 %2788, 2
  %2792 = extractvalue %dx.types.ResRet.f32 %2788, 3
  %2793 = call float @dx.op.binary.f32(i32 35, float %2783, float %2784)  ; FMax(a,b)
  %2794 = call float @dx.op.binary.f32(i32 35, float %2782, float %2793)  ; FMax(a,b)
  %2795 = call float @dx.op.binary.f32(i32 35, float %2794, float %2785)  ; FMax(a,b)
  %2796 = call float @dx.op.binary.f32(i32 36, float %2790, float %2791)  ; FMin(a,b)
  %2797 = call float @dx.op.binary.f32(i32 36, float %2789, float %2796)  ; FMin(a,b)
  %2798 = call float @dx.op.binary.f32(i32 36, float %2797, float %2792)  ; FMin(a,b)
  %2799 = fmul fast float %2795, 2.550000e+02
  %2800 = fadd fast float %2799, 0x3F70101020000000
  %2801 = fptoui float %2800 to i32
  %2802 = fmul fast float %2798, 2.550000e+02
  %2803 = fadd fast float %2802, 0x3F70101020000000
  %2804 = fptoui float %2803 to i32
  %2805 = icmp ult i32 %2801, %2804
  br i1 %2805, label %2806, label %2852

; <label>:2806                                    ; preds = %2763
  %2807 = fcmp fast ogt float %53, 9.843750e-01
  %2808 = fadd fast float %1700, -4.000000e+00
  %2809 = select i1 %2807, float -4.000000e+00, float %2808
  %2810 = call float @dx.op.binary.f32(i32 35, float %2809, float 0.000000e+00)  ; FMax(a,b)
  %2811 = fadd fast float %1019, %2810
  %2812 = fmul fast float %2811, %1020
  %2813 = call float @dx.op.unary.f32(i32 23, float %2812)  ; Log(value)
  %2814 = fmul fast float %1021, %2813
  %2815 = fmul fast float %2814, %1029
  %2816 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  %2817 = uitofp i32 %2801 to float
  %2818 = uitofp i32 %2804 to float
  %2819 = fadd fast float %2817, 5.000000e-01
  %2820 = fadd fast float %2818, 5.000000e-01
  %2821 = fmul fast float %1029, %2819
  %2822 = fmul fast float %1029, %2820
  %2823 = fadd fast float %2821, 0x3F0FFB4800000000
  %2824 = fadd fast float %2822, 0xBF0FFB4800000000
  %2825 = call float @dx.op.binary.f32(i32 35, float %2816, float %2823)  ; FMax(a,b)
  %2826 = call float @dx.op.binary.f32(i32 36, float %2825, float %2824)  ; FMin(a,b)
  %2827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.f32 %2827, 1
  %2829 = extractvalue %dx.types.CBufRet.f32 %2827, 2
  %2830 = extractvalue %dx.types.CBufRet.f32 %2827, 0
  %2831 = select i1 %854, float %2830, float 0.000000e+00
  %2832 = fmul fast float %2828, %2826
  %2833 = fadd fast float %2831, %2832
  %2834 = fadd fast float %2831, %2829
  %2835 = fsub fast float %2828, %2829
  %2836 = fadd fast float %2835, %2831
  %2837 = call float @dx.op.binary.f32(i32 35, float %2833, float %2834)  ; FMax(a,b)
  %2838 = call float @dx.op.binary.f32(i32 36, float %2837, float %2836)  ; FMin(a,b)
  %2839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2776, float %2777, float %2838, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.ResRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.ResRet.f32 %2839, 2
  %2843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2776, float %2777, float %2838, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2844 = extractvalue %dx.types.ResRet.f32 %2843, 0
  %2845 = extractvalue %dx.types.ResRet.f32 %2843, 1
  %2846 = extractvalue %dx.types.ResRet.f32 %2843, 2
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 1
  %2849 = fmul fast float %2848, %2844
  %2850 = fmul fast float %2848, %2845
  %2851 = fmul fast float %2848, %2846
  br label %2852

; <label>:2852                                    ; preds = %2806, %2763
  %2853 = phi float [ %2840, %2806 ], [ 1.000000e+00, %2763 ]
  %2854 = phi float [ %2841, %2806 ], [ 1.000000e+00, %2763 ]
  %2855 = phi float [ %2842, %2806 ], [ 1.000000e+00, %2763 ]
  %2856 = phi float [ %2849, %2806 ], [ 0.000000e+00, %2763 ]
  %2857 = phi float [ %2850, %2806 ], [ 0.000000e+00, %2763 ]
  %2858 = phi float [ %2851, %2806 ], [ 0.000000e+00, %2763 ]
  %2859 = fmul fast float %2856, %1445
  %2860 = fmul fast float %2857, %1445
  %2861 = fmul fast float %2858, %1445
  %2862 = fmul fast float %2853, %2770
  %2863 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2854, float %2855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2864 = call float @dx.op.dot3.f32(i32 55, float %2859, float %2860, float %2861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2865 = select i1 %131, float %2863, float %2853
  %2866 = select i1 %131, float %2863, float %2854
  %2867 = select i1 %131, float 1.000000e+00, float %2855
  %2868 = select i1 %131, float %2864, float %2859
  %2869 = select i1 %131, float 0.000000e+00, float %2860
  %2870 = select i1 %131, float 0.000000e+00, float %2861
  %2871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2872 = extractvalue %dx.types.CBufRet.i32 %2871, 3
  %2873 = and i32 %2872, 3
  %2874 = icmp ne i32 %2873, 0
  %2875 = and i32 %2872, 4
  %2876 = icmp ne i32 %2875, 0
  %2877 = and i1 %2874, %2876
  %2878 = and i1 %131, %2877
  br i1 %2878, label %2879, label %2885

; <label>:2879                                    ; preds = %2852
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 1
  %2882 = fadd fast float %2862, -1.000000e+00
  %2883 = fmul fast float %2881, %2882
  %2884 = fadd fast float %2883, 1.000000e+00
  br label %2885

; <label>:2885                                    ; preds = %2879, %2852
  %2886 = phi float [ %2884, %2879 ], [ %2862, %2852 ]
  %2887 = fadd fast float %2767, %2764
  %2888 = fmul fast float %2865, %2887
  %2889 = fadd fast float %2888, %2868
  %2890 = fadd fast float %2768, %2765
  %2891 = fmul fast float %2866, %2890
  %2892 = fadd fast float %2891, %2869
  %2893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2893, 0
  br i1 %131, label %2895, label %2916

; <label>:2895                                    ; preds = %2885
  %2896 = fadd fast float %2889, %2892
  %2897 = fmul fast float %2894, %2896
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 3
  %2900 = extractvalue %dx.types.CBufRet.f32 %1449, 1
  %2901 = fsub fast float %1452, %2900
  %2902 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %2903 = fmul fast float %2901, %2902
  %2904 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  %2905 = fsub fast float %2904, %2899
  %2906 = fmul fast float %2905, %2886
  %2907 = fadd fast float %2906, %2899
  %2908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.f32 %2908, 0
  %2910 = fsub fast float %2907, %2909
  %2911 = fmul fast float %2910, 1.000000e+01
  %2912 = call float @dx.op.unary.f32(i32 7, float %2911)  ; Saturate(value)
  %2913 = fmul fast float %2912, %1445
  %2914 = fsub fast float %1445, %2913
  %2915 = fmul fast float %2914, %2907
  br label %2928

; <label>:2916                                    ; preds = %2885
  %2917 = fadd fast float %2769, %2766
  %2918 = fmul fast float %2867, %2917
  %2919 = fadd fast float %2918, %2870
  %2920 = fmul fast float %2894, %2889
  %2921 = fmul fast float %2894, %2892
  %2922 = fmul fast float %2894, %2919
  %2923 = call float @dx.op.binary.f32(i32 35, float %2921, float %2922)  ; FMax(a,b)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2920, float %2923)  ; FMax(a,b)
  %2925 = call float @dx.op.binary.f32(i32 35, float %2924, float %1445)  ; FMax(a,b)
  %2926 = fcmp fast ugt float %2925, 0x3F10000000000000
  br i1 %2926, label %2928, label %2927

; <label>:2927                                    ; preds = %2916
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2928

; <label>:2928                                    ; preds = %2927, %2916, %2895
  %2929 = phi float [ %2897, %2895 ], [ %2920, %2927 ], [ %2920, %2916 ]
  %2930 = phi float [ %2915, %2895 ], [ %2921, %2927 ], [ %2921, %2916 ]
  %2931 = phi float [ %2914, %2895 ], [ %2922, %2927 ], [ %2922, %2916 ]
  %2932 = phi float [ %2914, %2895 ], [ %1445, %2927 ], [ %1445, %2916 ]
  %2933 = fadd fast float %547, 0x3FE3C6EF40000000
  %2934 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2935 = call float @dx.op.unary.f32(i32 23, float %2929)  ; Log(value)
  %2936 = fadd fast float %2935, -7.000000e+00
  %2937 = call float @dx.op.unary.f32(i32 21, float %2936)  ; Exp(value)
  %2938 = fmul fast float %2934, 2.000000e+00
  %2939 = fadd fast float %2938, -1.000000e+00
  %2940 = fmul fast float %2937, %2939
  %2941 = fcmp fast ogt float %2929, 0.000000e+00
  %2942 = select i1 %2941, float %2940, float 0.000000e+00
  %2943 = fadd fast float %2942, %2929
  %2944 = fadd fast float %547, 0x3FF3C6EF40000000
  %2945 = call float @dx.op.unary.f32(i32 22, float %2944)  ; Frc(value)
  %2946 = call float @dx.op.unary.f32(i32 23, float %2930)  ; Log(value)
  %2947 = fadd fast float %2946, -7.000000e+00
  %2948 = call float @dx.op.unary.f32(i32 21, float %2947)  ; Exp(value)
  %2949 = fmul fast float %2945, 2.000000e+00
  %2950 = fadd fast float %2949, -1.000000e+00
  %2951 = fmul fast float %2948, %2950
  %2952 = fcmp fast ogt float %2930, 0.000000e+00
  %2953 = select i1 %2952, float %2951, float 0.000000e+00
  %2954 = fadd fast float %2953, %2930
  %2955 = fadd fast float %547, 0x3FFDAA66E0000000
  %2956 = call float @dx.op.unary.f32(i32 22, float %2955)  ; Frc(value)
  %2957 = call float @dx.op.unary.f32(i32 23, float %2931)  ; Log(value)
  %2958 = fadd fast float %2957, -6.000000e+00
  %2959 = call float @dx.op.unary.f32(i32 21, float %2958)  ; Exp(value)
  %2960 = fmul fast float %2956, 2.000000e+00
  %2961 = fadd fast float %2960, -1.000000e+00
  %2962 = fmul fast float %2959, %2961
  %2963 = fcmp fast ogt float %2931, 0.000000e+00
  %2964 = select i1 %2963, float %2962, float 0.000000e+00
  %2965 = fadd fast float %2964, %2931
  %2966 = select i1 %131, float %2930, float %2954
  %2967 = select i1 %131, float %2931, float %2965
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2968 = call float @dx.op.binary.f32(i32 36, float %2943, float 3.225500e+04)  ; FMin(a,b)
  %2969 = call float @dx.op.binary.f32(i32 36, float %2966, float 3.225500e+04)  ; FMin(a,b)
  %2970 = call float @dx.op.binary.f32(i32 36, float %2967, float 3.225500e+04)  ; FMin(a,b)
  %2971 = call float @dx.op.binary.f32(i32 36, float %2932, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2968)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2969)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2970)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2971)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!dx.viewIdState = !{!42}
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !34, !37}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 78, i32 1, i32 7, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !22}
!22 = !{i32 0, i32 5}
!23 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!24 = !{i32 16, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!25 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!26 = !{i32 18, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!27 = !{i32 19, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !29}
!29 = !{i32 0, i32 14}
!30 = !{i32 21, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!31 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!37 = !{!38, !39, !40, !41}
!38 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!42 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !69}
!44 = !{!45, !65, null}
!45 = !{!46, !49, !50, !52, !55, !57, !59, !61, !62, !64}
!46 = !{i32 0, !"SV_Position", i8 9, i8 3, !47, i8 4, i32 1, i8 4, i32 0, i8 0, !48}
!47 = !{i32 0}
!48 = !{i32 3, i32 15}
!49 = !{i32 1, !"COLOR", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 1, i8 0, !48}
!50 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 2, i8 0, !51}
!51 = !{i32 3, i32 3}
!52 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 3, i8 0, !54}
!53 = !{i32 3}
!54 = !{i32 3, i32 7}
!55 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!56 = !{i32 4}
!57 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !58, i8 3, i32 1, i8 2, i32 5, i8 0, !51}
!58 = !{i32 5}
!59 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !60, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!60 = !{i32 8}
!61 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !47, i8 1, i32 1, i8 4, i32 7, i8 0, !48}
!62 = !{i32 8, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 3, i32 8, i8 0, !63}
!63 = !{i32 3, i32 5}
!64 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66, !67}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !48}
!67 = !{i32 1, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 1, i8 0, !48}
!68 = !{i32 1}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = !{!84, !84, i64 0}
!84 = !{!"float", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!88 = distinct !{!88, !89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!89 = distinct !{!89, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!90 = distinct !{!90, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!91 = distinct !{!91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!92 = distinct !{!92, !91, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!93 = distinct !{!93, !94, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!94 = distinct !{!94, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!95 = distinct !{!95, !94, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!96 = distinct !{!96, !94, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!97 = distinct !{!97, !98, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!98 = distinct !{!98, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!99 = distinct !{!99, !98, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!100 = distinct !{!100, !98, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!101 = distinct !{!101, !102, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!102 = distinct !{!102, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"\01?sort@@YAXAIAM00@Z: %c"}
!105 = distinct !{!105, !"\01?sort@@YAXAIAM00@Z"}
!106 = !{!107, !108, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!107 = distinct !{!107, !105, !"\01?sort@@YAXAIAM00@Z: %a"}
!108 = distinct !{!108, !105, !"\01?sort@@YAXAIAM00@Z: %b"}
!109 = !{!108}
!110 = !{!107, !104, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!111 = !{!107}
!112 = !{!108, !104, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!113 = !{!114}
!114 = distinct !{!114, !115, !"\01?sort@@YAXAIAM00@Z: %c"}
!115 = distinct !{!115, !"\01?sort@@YAXAIAM00@Z"}
!116 = !{!117, !118, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!117 = distinct !{!117, !115, !"\01?sort@@YAXAIAM00@Z: %a"}
!118 = distinct !{!118, !115, !"\01?sort@@YAXAIAM00@Z: %b"}
!119 = !{!118}
!120 = !{!117, !114, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!121 = !{!117}
!122 = !{!118, !114, !88, !90, !92, !93, !95, !96, !97, !99, !100, !101}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 2}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}

