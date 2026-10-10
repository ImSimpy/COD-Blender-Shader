;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyzw
; TEXCOORD                 4   xyzw        5     NONE   float   xyzw
; TEXCOORD                 5   xy          6     NONE   float   xy  
; TEXCOORD                 8   xyzw        7     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        8     NONE   float   xyzw
; COLOR                    3   xyz         9     NONE    uint   x z 
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
; shader hash: bd91da9ca7a03f26b483cb1c65c33ad0
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
; TEXCOORD                 2        nointerpolation       
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
; Number of inputs: 39, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 38 }
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
  %30 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = alloca [3 x float], align 4
  %64 = alloca [3 x float], align 4
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = fmul fast float %68, %59
  %70 = fmul fast float %68, %60
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %74 = fmul fast float %69, 2.000000e+00
  %75 = fmul fast float %74, %72
  %76 = fmul fast float %70, 2.000000e+00
  %77 = fmul fast float %76, %73
  %78 = fsub fast float 1.000000e+00, %75
  %79 = fsub fast float 1.000000e+00, %77
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %78, %81
  %85 = fmul fast float %78, %82
  %86 = fmul fast float %78, %83
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fmul fast float %79, %88
  %92 = fmul fast float %79, %89
  %93 = fmul fast float %79, %90
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fadd fast float %91, %95
  %99 = fadd fast float %98, %84
  %100 = fadd fast float %92, %96
  %101 = fadd fast float %100, %85
  %102 = fadd fast float %93, %97
  %103 = fadd fast float %102, %86
  %104 = fmul fast float %99, %62
  %105 = fmul fast float %101, %62
  %106 = fmul fast float %103, %62
  %107 = fmul fast float %47, %44
  %108 = fmul fast float %48, %43
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %48, %42
  %111 = fmul fast float %46, %44
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %46, %43
  %114 = fmul fast float %47, %42
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %45
  %117 = fmul fast float %112, %45
  %118 = fmul fast float %115, %45
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 3
  %121 = and i32 %120, 3
  %122 = icmp ne i32 %121, 0
  %123 = and i32 %120, 4
  %124 = icmp ne i32 %123, 0
  %125 = and i1 %122, %124
  br i1 %125, label %126, label %135

; <label>:126                                     ; preds = %0
  %127 = fmul fast float %73, %70
  %128 = fmul fast float %72, %69
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %128, float %127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = fsub fast float 1.000000e+00, %130
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fcmp fast olt float %131, %133
  br label %138

; <label>:135                                     ; preds = %0
  %136 = icmp eq i32 %123, 0
  %137 = and i1 %122, %136
  br label %138

; <label>:138                                     ; preds = %135, %126
  %139 = phi i1 [ %134, %126 ], [ %137, %135 ]
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %69
  %144 = fmul fast float %142, %70
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = and i32 %146, 114688
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, float %143, float 0.000000e+00
  %150 = select i1 %148, float %144, float 0.000000e+00
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, 2.550000e+02
  %154 = fptoui float %153 to i32
  %155 = select i1 %148, i32 %154, i32 0
  %156 = mul i32 %30, 208
  %157 = add i32 %156, 188
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %120, 114688
  %161 = and i32 %120, 8
  %162 = icmp ne i32 %161, 0
  %163 = or i1 %139, %162
  %164 = select i1 %163, i32 %160, i32 16384
  %165 = and i32 %164, %159
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %138
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %168

; <label>:168                                     ; preds = %167, %138
  %169 = and i32 %159, 512
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %195, label %171

; <label>:171                                     ; preds = %168
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %175 = fmul fast float %173, %69
  %176 = fmul fast float %174, %70
  %177 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %179 = fdiv fast float %177, %178
  %180 = fcmp fast ogt float %179, 0x3FFC71C720000000
  br i1 %180, label %181, label %187

; <label>:181                                     ; preds = %171
  %182 = fdiv fast float 0x3FFC71C720000000, %179
  %183 = fmul fast float %182, %176
  %184 = fsub fast float 1.000000e+00, %182
  %185 = fmul fast float %184, 5.000000e-01
  %186 = fadd fast float %185, %183
  br label %195

; <label>:187                                     ; preds = %171
  %188 = fcmp fast olt float %179, 0x3FFC71C720000000
  br i1 %188, label %189, label %195

; <label>:189                                     ; preds = %187
  %190 = fmul fast float %175, 5.625000e-01
  %191 = fmul fast float %190, %179
  %192 = fmul fast float %179, 2.812500e-01
  %193 = fsub fast float 5.000000e-01, %192
  %194 = fadd fast float %193, %191
  br label %195

; <label>:195                                     ; preds = %189, %187, %181, %168
  %196 = phi float [ %53, %168 ], [ %175, %181 ], [ %194, %189 ], [ %175, %187 ]
  %197 = phi float [ %54, %168 ], [ %186, %181 ], [ %176, %189 ], [ %176, %187 ]
  %198 = fadd fast float %53, %50
  %199 = fadd fast float %54, %51
  %200 = add i32 %31, 72
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = bitcast i32 %202 to float
  %205 = bitcast i32 %203 to float
  %206 = fmul fast float %204, %53
  %207 = fmul fast float %205, %54
  %208 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %209 = call float @dx.op.unary.f32(i32 22, float %207)  ; Frc(value)
  %210 = and i32 %159, 16
  %211 = icmp ne i32 %210, 0
  %212 = select i1 %211, float 1.000000e+00, float %58
  %213 = add i32 %31, 132
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = add i32 %215, 0
  %217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %217, %dx.types.Handle %66, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float %219, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add i32 %223, 0
  %225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %225, %dx.types.Handle %66, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float %227, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fsub fast float %229, %221
  %231 = fmul fast float %230, %52
  %232 = fadd fast float %231, %221
  %233 = fmul fast float %232, %212
  %234 = icmp eq i32 %210, 0
  br i1 %234, label %254, label %235, !dx.controlflow.hints !72

; <label>:235                                     ; preds = %195
  %236 = add i32 %156, 64
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fadd fast float %238, 1.000000e+00
  %240 = fmul fast float %239, %58
  %241 = fsub fast float %240, %238
  %242 = fsub fast float %239, %241
  %243 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %244 = fsub fast float 1.000000e+00, %240
  %245 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  %246 = fsub fast float %243, %245
  %247 = fsub fast float %233, %245
  %248 = fdiv fast float %247, %246
  %249 = call float @dx.op.unary.f32(i32 7, float %248)  ; Saturate(value)
  %250 = fmul fast float %249, 2.000000e+00
  %251 = fsub fast float 3.000000e+00, %250
  %252 = fmul fast float %249, %249
  %253 = fmul fast float %252, %251
  br label %254

; <label>:254                                     ; preds = %235, %195
  %255 = phi float [ %253, %235 ], [ %233, %195 ]
  %256 = fcmp fast ogt float %255, 0.000000e+00
  br i1 %256, label %258, label %257

; <label>:257                                     ; preds = %254
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %258

; <label>:258                                     ; preds = %257, %254
  %259 = call float @dx.op.unary.f32(i32 7, float %255)  ; Saturate(value)
  %260 = fmul fast float %69, 5.000000e-01
  %261 = fmul fast float %70, 5.000000e-01
  %262 = fptosi float %260 to i32
  %263 = fptosi float %261 to i32
  %264 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %262, i32 %263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = lshr i32 %265, 18
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F4C00EBA0000000
  %269 = call float @dx.op.unary.f32(i32 21, float %268)  ; Exp(value)
  %270 = fadd fast float %269, -1.000000e+00
  %271 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %272 = extractvalue %dx.types.Dimensions %271, 0
  %273 = sitofp i32 %272 to float
  %274 = extractvalue %dx.types.Dimensions %271, 1
  %275 = sitofp i32 %274 to float
  %276 = fcmp fast oge float %260, %273
  %277 = fcmp fast oge float %261, %275
  %278 = or i1 %276, %277
  %279 = select i1 %278, float 0x4197782600000000, float %270
  %280 = fsub fast float %279, %62
  %281 = fcmp fast ogt float %280, 0.000000e+00
  %282 = and i32 %155, -2
  %283 = icmp eq i32 %282, 2
  %284 = and i1 %283, %281
  %285 = xor i1 %281, true
  %286 = icmp eq i32 %155, 1
  %287 = and i1 %286, %285
  %288 = or i1 %284, %287
  %289 = and i32 %159, 262144
  %290 = icmp ne i32 %289, 0
  %291 = and i1 %290, %288
  %292 = xor i1 %288, true
  %293 = and i32 %159, 131072
  %294 = icmp ne i32 %293, 0
  %295 = and i1 %294, %292
  %296 = or i1 %291, %295
  br i1 %296, label %297, label %298

; <label>:297                                     ; preds = %258
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %298

; <label>:298                                     ; preds = %297, %258
  %299 = and i32 %159, 32
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %578, label %301, !dx.controlflow.hints !73

; <label>:301                                     ; preds = %298
  %302 = add i32 %156, 80
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = extractvalue %dx.types.ResRet.f32 %303, 3
  %308 = add i32 %156, 96
  %309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = extractvalue %dx.types.ResRet.f32 %309, 1
  %312 = extractvalue %dx.types.ResRet.f32 %309, 2
  %313 = add i32 %156, 112
  %314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = extractvalue %dx.types.ResRet.f32 %314, 1
  %317 = extractvalue %dx.types.ResRet.f32 %314, 2
  %318 = extractvalue %dx.types.ResRet.f32 %314, 3
  %319 = add i32 %156, 128
  %320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = extractvalue %dx.types.ResRet.f32 %320, 1
  %323 = extractvalue %dx.types.ResRet.f32 %320, 2
  %324 = extractvalue %dx.types.ResRet.f32 %320, 3
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 4096
  %328 = icmp ne i32 %327, 0
  %329 = fcmp fast une float %312, 0.000000e+00
  %330 = and i32 %326, 64
  %331 = icmp ne i32 %330, 0
  %332 = and i32 %326, 128
  %333 = icmp eq i32 %332, 0
  %334 = and i32 %326, 2048
  %335 = icmp eq i32 %334, 0
  %336 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %337 = extractvalue %dx.types.Dimensions %336, 0
  %338 = sitofp i32 %337 to float
  %339 = extractvalue %dx.types.Dimensions %336, 1
  %340 = sitofp i32 %339 to float
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %344 = fmul fast float %342, %69
  %345 = fmul fast float %343, %70
  %346 = fmul fast float %344, %338
  %347 = fmul fast float %345, %340
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %350 = fsub fast float -0.000000e+00, %349
  %351 = fptoui float %350 to i32
  %352 = fptoui float %346 to i32
  %353 = fptoui float %347 to i32
  %354 = and i32 %351, 31
  %355 = lshr i32 %352, %354
  %356 = lshr i32 %353, %354
  %357 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %351, i32 %355, i32 %356, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  %359 = fcmp fast ogt float %358, -1.000000e+00
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %362 = select i1 %359, float %361, float 1.000000e+00
  %363 = fadd fast float %358, 1.000000e+00
  %364 = fmul fast float %362, %363
  %365 = call float @dx.op.unary.f32(i32 6, float %364)  ; FAbs(value)
  %366 = extractvalue %dx.types.CBufRet.f32 %360, 3
  %367 = fcmp fast oge float %365, %366
  %368 = select i1 %367, float 0x4197782600000000, float %365
  br i1 %335, label %458, label %369, !dx.controlflow.hints !74

; <label>:369                                     ; preds = %301
  %370 = fmul fast float %74, %342
  %371 = fmul fast float %76, %343
  %372 = fsub fast float 1.000000e+00, %370
  %373 = fsub fast float 1.000000e+00, %371
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %378 = fmul fast float %372, %375
  %379 = fmul fast float %372, %376
  %380 = fmul fast float %372, %377
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %384 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %385 = fmul fast float %373, %382
  %386 = fmul fast float %373, %383
  %387 = fmul fast float %373, %384
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = fadd fast float %385, %389
  %393 = fadd fast float %392, %378
  %394 = fadd fast float %386, %390
  %395 = fadd fast float %394, %379
  %396 = fadd fast float %387, %391
  %397 = fadd fast float %396, %380
  %398 = fmul fast float %393, %368
  %399 = fmul fast float %395, %368
  %400 = fmul fast float %397, %368
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %405 = fsub fast float %402, %32
  %406 = fadd fast float %405, %398
  %407 = fsub fast float %403, %33
  %408 = fadd fast float %407, %399
  %409 = fsub fast float %404, %34
  %410 = fadd fast float %409, %400
  %411 = fmul fast float %35, %35
  %412 = call float @dx.op.dot3.f32(i32 55, float %406, float %408, float %410, float %406, float %408, float %410)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = fsub fast float %411, %412
  %414 = fmul fast float %311, %411
  %415 = fmul fast float %310, %411
  %416 = fcmp fast olt float %413, %414
  %417 = fcmp fast ogt float %413, %415
  %418 = or i1 %416, %417
  %419 = select i1 %418, float 0.000000e+00, float %413
  %420 = fsub fast float %310, %311
  %421 = fmul fast float %420, %411
  %422 = fsub fast float %419, %414
  %423 = fdiv fast float %422, %421
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = fmul fast float %424, 2.000000e+00
  %426 = fsub fast float 3.000000e+00, %425
  %427 = fmul fast float %424, %424
  %428 = fmul fast float %427, %426
  %429 = fmul fast float %315, %55
  %430 = fmul fast float %316, %56
  %431 = fmul fast float %317, %57
  %432 = fsub fast float %429, %321
  %433 = fsub fast float %430, %322
  %434 = fsub fast float %431, %323
  %435 = fsub fast float %318, %324
  %436 = fmul fast float %428, %432
  %437 = fmul fast float %428, %433
  %438 = fmul fast float %428, %434
  %439 = fmul fast float %428, %435
  %440 = fadd fast float %436, %321
  %441 = fadd fast float %437, %322
  %442 = fadd fast float %438, %323
  %443 = fadd fast float %439, %324
  %444 = fmul fast float %315, %36
  %445 = fmul fast float %316, %37
  %446 = fmul fast float %317, %38
  %447 = fsub fast float %444, %321
  %448 = fsub fast float %445, %322
  %449 = fsub fast float %446, %323
  %450 = fmul fast float %428, %447
  %451 = fmul fast float %428, %448
  %452 = fmul fast float %428, %449
  %453 = fadd fast float %450, %321
  %454 = fadd fast float %451, %322
  %455 = fadd fast float %452, %323
  %456 = fmul fast float %304, %304
  %457 = fmul fast float %456, %419
  br label %565

; <label>:458                                     ; preds = %301
  %459 = and i32 %326, 256
  %460 = icmp eq i32 %459, 0
  %461 = fsub fast float %368, %62
  br i1 %460, label %522, label %462

; <label>:462                                     ; preds = %458
  %463 = fadd fast float %310, %62
  %464 = fcmp fast olt float %368, %62
  %465 = fcmp fast ogt float %368, %463
  %466 = or i1 %464, %465
  %467 = select i1 %466, float 0.000000e+00, float %461
  %468 = call float @dx.op.unary.f32(i32 83, float %368)  ; DerivCoarseX(value)
  %469 = call float @dx.op.unary.f32(i32 84, float %368)  ; DerivCoarseY(value)
  %470 = fmul fast float %468, %468
  %471 = fmul fast float %469, %469
  %472 = fadd fast float %471, %470
  %473 = call float @dx.op.unary.f32(i32 24, float %472)  ; Sqrt(value)
  %474 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %475 = fmul fast float %474, %473
  %476 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %477 = fmul fast float %476, %311
  %478 = fdiv fast float %461, %477
  %479 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  %480 = fmul fast float %479, 2.000000e+00
  %481 = fsub fast float 3.000000e+00, %480
  %482 = fmul fast float %479, %479
  %483 = fmul fast float %482, %481
  %484 = fsub fast float %368, %463
  %485 = fadd fast float %484, %477
  %486 = fdiv fast float %485, %477
  %487 = call float @dx.op.unary.f32(i32 7, float %486)  ; Saturate(value)
  %488 = fmul fast float %487, 2.000000e+00
  %489 = fsub fast float 3.000000e+00, %488
  %490 = fmul fast float %487, %487
  %491 = fmul fast float %490, %489
  %492 = fsub fast float %483, %491
  %493 = fmul fast float %315, %55
  %494 = fmul fast float %316, %56
  %495 = fmul fast float %317, %57
  %496 = fsub fast float %493, %321
  %497 = fsub fast float %494, %322
  %498 = fsub fast float %495, %323
  %499 = fsub fast float %318, %324
  %500 = fmul fast float %492, %496
  %501 = fmul fast float %492, %497
  %502 = fmul fast float %492, %498
  %503 = fmul fast float %492, %499
  %504 = fadd fast float %500, %321
  %505 = fadd fast float %501, %322
  %506 = fadd fast float %502, %323
  %507 = fadd fast float %503, %324
  %508 = fmul fast float %315, %36
  %509 = fmul fast float %316, %37
  %510 = fmul fast float %317, %38
  %511 = fsub fast float %508, %321
  %512 = fsub fast float %509, %322
  %513 = fsub fast float %510, %323
  %514 = fmul fast float %492, %511
  %515 = fmul fast float %492, %512
  %516 = fmul fast float %492, %513
  %517 = fadd fast float %514, %321
  %518 = fadd fast float %515, %322
  %519 = fadd fast float %516, %323
  %520 = fmul fast float %467, %304
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  br label %565

; <label>:522                                     ; preds = %458
  br i1 %329, label %523, label %536

; <label>:523                                     ; preds = %522
  %524 = fdiv fast float 5.000000e+01, %35
  %525 = select i1 %331, float %524, float 1.000000e+00
  %526 = fmul fast float %525, %304
  %527 = fmul fast float %208, 2.000000e+00
  %528 = fmul fast float %209, 2.000000e+00
  %529 = fadd fast float %527, -1.000000e+00
  %530 = fadd fast float %528, -1.000000e+00
  %531 = call float @dx.op.dot2.f32(i32 54, float %529, float %530, float %529, float %530)  ; Dot2(ax,ay,bx,by)
  %532 = fmul fast float %312, %35
  %533 = fmul fast float %532, %531
  %534 = fsub fast float %461, %533
  %535 = fmul fast float %526, %534
  br label %565

; <label>:536                                     ; preds = %522
  br i1 %333, label %557, label %537

; <label>:537                                     ; preds = %536
  %538 = fmul fast float %35, 0x3F947AE140000000
  %539 = select i1 %331, float %538, float 1.000000e+00
  %540 = fdiv fast float 1.000000e+00, %539
  %541 = fmul fast float %539, %305
  %542 = fmul fast float %539, %306
  %543 = fmul fast float %540, %307
  %544 = call float @dx.op.unary.f32(i32 6, float %461)  ; FAbs(value)
  %545 = fcmp fast olt float %544, %541
  br i1 %545, label %546, label %550, !dx.controlflow.hints !75

; <label>:546                                     ; preds = %537
  %547 = fmul fast float %540, %304
  %548 = fmul fast float %547, %544
  %549 = call float @dx.op.unary.f32(i32 6, float %548)  ; FAbs(value)
  br label %565

; <label>:550                                     ; preds = %537
  %551 = fcmp fast ogt float %544, %542
  br i1 %551, label %552, label %565

; <label>:552                                     ; preds = %550
  %553 = fsub fast float %544, %542
  %554 = fmul fast float %543, %553
  %555 = call float @dx.op.unary.f32(i32 6, float %554)  ; FAbs(value)
  %556 = fsub fast float 1.000000e+00, %555
  br label %565

; <label>:557                                     ; preds = %536
  %558 = fdiv fast float 5.000000e+01, %35
  %559 = select i1 %331, float %558, float 1.000000e+00
  %560 = fmul fast float %559, %304
  %561 = call float @dx.op.unary.f32(i32 6, float %280)  ; FAbs(value)
  %562 = select i1 %328, float %561, float 0x47EFFFFFE0000000
  %563 = call float @dx.op.binary.f32(i32 36, float %461, float %562)  ; FMin(a,b)
  %564 = fmul fast float %560, %563
  br label %565

; <label>:565                                     ; preds = %557, %552, %550, %546, %523, %462, %369
  %566 = phi float [ %457, %369 ], [ %521, %462 ], [ %535, %523 ], [ %564, %557 ], [ %549, %546 ], [ %556, %552 ], [ %544, %550 ]
  %567 = phi float [ %453, %369 ], [ %517, %462 ], [ %36, %523 ], [ %36, %557 ], [ %36, %546 ], [ %36, %552 ], [ %36, %550 ]
  %568 = phi float [ %454, %369 ], [ %518, %462 ], [ %37, %523 ], [ %37, %557 ], [ %37, %546 ], [ %37, %552 ], [ %37, %550 ]
  %569 = phi float [ %455, %369 ], [ %519, %462 ], [ %38, %523 ], [ %38, %557 ], [ %38, %546 ], [ %38, %552 ], [ %38, %550 ]
  %570 = phi float [ %440, %369 ], [ %504, %462 ], [ %55, %523 ], [ %55, %557 ], [ %55, %546 ], [ %55, %552 ], [ %55, %550 ]
  %571 = phi float [ %441, %369 ], [ %505, %462 ], [ %56, %523 ], [ %56, %557 ], [ %56, %546 ], [ %56, %552 ], [ %56, %550 ]
  %572 = phi float [ %442, %369 ], [ %506, %462 ], [ %57, %523 ], [ %57, %557 ], [ %57, %546 ], [ %57, %552 ], [ %57, %550 ]
  %573 = phi float [ %443, %369 ], [ %507, %462 ], [ 1.000000e+00, %523 ], [ 1.000000e+00, %557 ], [ 1.000000e+00, %546 ], [ 1.000000e+00, %552 ], [ 1.000000e+00, %550 ]
  %574 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %575 = fmul fast float %574, %58
  %576 = fmul fast float %573, %259
  %577 = fmul fast float %576, %574
  br label %578

; <label>:578                                     ; preds = %565, %298
  %579 = phi float [ %570, %565 ], [ %55, %298 ]
  %580 = phi float [ %571, %565 ], [ %56, %298 ]
  %581 = phi float [ %572, %565 ], [ %57, %298 ]
  %582 = phi float [ %577, %565 ], [ %259, %298 ]
  %583 = phi float [ %575, %565 ], [ %58, %298 ]
  %584 = phi float [ %567, %565 ], [ %36, %298 ]
  %585 = phi float [ %568, %565 ], [ %37, %298 ]
  %586 = phi float [ %569, %565 ], [ %38, %298 ]
  %587 = fmul fast float %584, %39
  %588 = fmul fast float %585, %39
  %589 = fmul fast float %586, %39
  %590 = fmul fast float %584, %49
  %591 = fmul fast float %585, %49
  %592 = fmul fast float %586, %49
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %595 = fptosi float %62 to i32
  %596 = sitofp i32 %595 to float
  %597 = fadd fast float %594, %596
  %598 = fmul fast float %597, 0x3FE3C6EF40000000
  %599 = frem fast float %69, 2.560000e+02
  %600 = frem fast float %70, 2.560000e+02
  %601 = fptoui float %599 to i32
  %602 = fptoui float %600 to i32
  %603 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %601, i32 %602, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = fadd fast float %604, %598
  %606 = call float @dx.op.unary.f32(i32 22, float %605)  ; Frc(value)
  %607 = and i32 %159, 1
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %669, label %609, !dx.controlflow.hints !76

; <label>:609                                     ; preds = %578
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 2
  %612 = extractvalue %dx.types.ResRet.f32 %610, 3
  %613 = add i32 %156, 16
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = add i32 %156, 32
  %619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = and i32 %159, 2
  %624 = icmp eq i32 %623, 0
  %625 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %626 = call float @dx.op.unary.f32(i32 25, float %625)  ; Rsqrt(value)
  %627 = fmul fast float %626, %46
  %628 = fmul fast float %626, %47
  %629 = fmul fast float %626, %48
  %630 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = call float @dx.op.unary.f32(i32 25, float %630)  ; Rsqrt(value)
  %632 = fmul fast float %631, %104
  %633 = fmul fast float %631, %105
  %634 = fmul fast float %631, %106
  %635 = call float @dx.op.dot3.f32(i32 55, float %632, float %633, float %634, float %627, float %628, float %629)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = fmul fast float %635, %635
  %637 = fmul fast float %636, %611
  %638 = fadd fast float %637, %612
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  br i1 %624, label %640, label %650, !dx.controlflow.hints !77

; <label>:640                                     ; preds = %609
  %641 = extractvalue %dx.types.ResRet.f32 %610, 1
  %642 = extractvalue %dx.types.ResRet.f32 %610, 0
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 3
  %645 = fmul fast float %644, %630
  %646 = fsub fast float %642, %645
  %647 = fmul fast float %646, %641
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %649 = fmul fast float %648, %639
  br label %650

; <label>:650                                     ; preds = %640, %609
  %651 = phi float [ %649, %640 ], [ %639, %609 ]
  %652 = fsub fast float %615, %620
  %653 = fsub fast float %616, %621
  %654 = fsub fast float %617, %622
  %655 = fmul fast float %651, %652
  %656 = fmul fast float %651, %653
  %657 = fmul fast float %651, %654
  %658 = fadd fast float %655, %620
  %659 = fadd fast float %656, %621
  %660 = fadd fast float %657, %622
  %661 = fmul fast float %658, %579
  %662 = fmul fast float %659, %580
  %663 = fmul fast float %660, %581
  %664 = fmul fast float %658, %587
  %665 = fmul fast float %659, %588
  %666 = fmul fast float %660, %589
  %667 = fmul fast float %651, %582
  %668 = fmul fast float %651, %583
  br label %669

; <label>:669                                     ; preds = %650, %578
  %670 = phi float [ %661, %650 ], [ %579, %578 ]
  %671 = phi float [ %662, %650 ], [ %580, %578 ]
  %672 = phi float [ %663, %650 ], [ %581, %578 ]
  %673 = phi float [ %667, %650 ], [ %582, %578 ]
  %674 = phi float [ %668, %650 ], [ %583, %578 ]
  %675 = phi float [ %664, %650 ], [ %587, %578 ]
  %676 = phi float [ %665, %650 ], [ %588, %578 ]
  %677 = phi float [ %666, %650 ], [ %589, %578 ]
  %678 = add i32 %31, 120
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %680, 0
  %682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %683 = add i32 %31, 24
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %682, %dx.types.Handle %65, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = extractvalue %dx.types.ResRet.f32 %686, 3
  %691 = and i32 %685, 255
  %692 = uitofp i32 %691 to float
  %693 = lshr i32 %685, 8
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %690, %692
  %697 = fadd fast float %696, %695
  %698 = add i32 %31, 56
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 255
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %702, 0x3F70101020000000
  %704 = lshr i32 %700, 8
  %705 = and i32 %704, 255
  %706 = uitofp i32 %705 to float
  %707 = fmul fast float %706, 0x3F70101020000000
  %708 = lshr i32 %700, 16
  %709 = and i32 %708, 255
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %710, 0x3F70101020000000
  %712 = fmul fast float %703, %703
  %713 = fmul fast float %712, %687
  %714 = fmul fast float %707, %707
  %715 = fmul fast float %714, %688
  %716 = fmul fast float %711, %711
  %717 = fmul fast float %716, %689
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %719, 0
  %721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %721, %dx.types.Handle %65, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = extractvalue %dx.types.ResRet.f32 %724, 2
  %728 = extractvalue %dx.types.ResRet.f32 %724, 3
  %729 = and i32 %723, 255
  %730 = uitofp i32 %729 to float
  %731 = lshr i32 %723, 8
  %732 = and i32 %731, 255
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %728, %730
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = and i32 %736, 255
  %738 = uitofp i32 %737 to float
  %739 = fmul fast float %738, 0x3F70101020000000
  %740 = lshr i32 %736, 8
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101020000000
  %744 = lshr i32 %736, 16
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101020000000
  %748 = fmul fast float %739, %739
  %749 = fmul fast float %748, %725
  %750 = fmul fast float %743, %743
  %751 = fmul fast float %750, %726
  %752 = fmul fast float %747, %747
  %753 = fmul fast float %752, %727
  %754 = fsub fast float %749, %713
  %755 = fsub fast float %751, %715
  %756 = fsub fast float %753, %717
  %757 = fmul fast float %754, %52
  %758 = fmul fast float %755, %52
  %759 = fmul fast float %756, %52
  %760 = fadd fast float %757, %713
  %761 = fadd fast float %758, %715
  %762 = fadd fast float %759, %717
  %763 = fsub fast float %733, %697
  %764 = fadd fast float %763, %734
  %765 = fmul fast float %764, %52
  %766 = fadd fast float %765, %697
  %767 = fmul fast float %766, 0x3F70101000000000
  %768 = fmul fast float %760, %670
  %769 = fmul fast float %761, %671
  %770 = fmul fast float %762, %672
  %771 = add i32 %31, 28
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %31, 124
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %776, 0
  %778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %778, %dx.types.Handle %65, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = extractvalue %dx.types.ResRet.f32 %779, 3
  %783 = and i32 %773, 255
  %784 = uitofp i32 %783 to float
  %785 = lshr i32 %773, 8
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = lshr i32 %773, 16
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101000000000
  %792 = fmul fast float %780, %784
  %793 = fadd fast float %792, %787
  %794 = fadd fast float %781, -5.000000e-01
  %795 = fadd fast float %782, -5.000000e-01
  %796 = fmul fast float %794, %791
  %797 = fmul fast float %795, %791
  %798 = fadd fast float %796, 5.000000e-01
  %799 = fadd fast float %797, 5.000000e-01
  %800 = fmul fast float %798, 2.000000e+00
  %801 = fadd fast float %800, -1.000000e+00
  %802 = fmul fast float %799, 2.000000e+00
  %803 = fadd fast float %802, -1.000000e+00
  %804 = fadd fast float %801, %803
  %805 = fmul fast float %804, 5.000000e-01
  %806 = fsub fast float %801, %803
  %807 = fmul fast float %806, 5.000000e-01
  %808 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %809 = fsub fast float 1.000000e+00, %808
  %810 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %811 = fsub fast float %809, %810
  %812 = call float @dx.op.dot3.f32(i32 55, float %805, float %807, float %811, float %805, float %807, float %811)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = call float @dx.op.unary.f32(i32 25, float %812)  ; Rsqrt(value)
  %814 = fmul fast float %805, %813
  %815 = fmul fast float %807, %813
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = add i32 %819, 0
  %821 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %820, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %821, %dx.types.Handle %65, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 3
  %826 = and i32 %817, 255
  %827 = uitofp i32 %826 to float
  %828 = lshr i32 %817, 8
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = lshr i32 %817, 16
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101000000000
  %835 = fmul fast float %823, %827
  %836 = fadd fast float %824, -5.000000e-01
  %837 = fadd fast float %825, -5.000000e-01
  %838 = fmul fast float %836, %834
  %839 = fmul fast float %837, %834
  %840 = fadd fast float %838, 5.000000e-01
  %841 = fadd fast float %839, 5.000000e-01
  %842 = fmul fast float %840, 2.000000e+00
  %843 = fadd fast float %842, -1.000000e+00
  %844 = fmul fast float %841, 2.000000e+00
  %845 = fadd fast float %844, -1.000000e+00
  %846 = fadd fast float %843, %845
  %847 = fmul fast float %846, 5.000000e-01
  %848 = fsub fast float %843, %845
  %849 = fmul fast float %848, 5.000000e-01
  %850 = call float @dx.op.unary.f32(i32 6, float %847)  ; FAbs(value)
  %851 = fsub fast float 1.000000e+00, %850
  %852 = call float @dx.op.unary.f32(i32 6, float %849)  ; FAbs(value)
  %853 = fsub fast float %851, %852
  %854 = call float @dx.op.dot3.f32(i32 55, float %847, float %849, float %853, float %847, float %849, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = call float @dx.op.unary.f32(i32 25, float %854)  ; Rsqrt(value)
  %856 = fmul fast float %847, %855
  %857 = fmul fast float %849, %855
  %858 = fsub fast float %856, %814
  %859 = fsub fast float %857, %815
  %860 = fmul fast float %858, %52
  %861 = fmul fast float %859, %52
  %862 = fadd fast float %860, %814
  %863 = fadd fast float %861, %815
  %864 = fsub fast float %830, %793
  %865 = fadd fast float %864, %835
  %866 = fmul fast float %865, %52
  %867 = fadd fast float %866, %793
  %868 = fmul fast float %867, 0x3F70101000000000
  %869 = add i32 %31, 128
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = add i32 %871, 0
  %873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %874 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %873, %dx.types.Handle %65, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = add i32 %31, 44
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = shl i32 %880, 4
  %882 = and i32 %881, 32752
  %883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %882)  ; LegacyF16ToF32(value)
  %884 = lshr i32 %880, 7
  %885 = and i32 %884, 32752
  %886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %885)  ; LegacyF16ToF32(value)
  %887 = lshr i32 %880, 22
  %888 = shl nuw nsw i32 %887, 5
  %889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %888)  ; LegacyF16ToF32(value)
  %890 = fmul fast float %883, %875
  %891 = fmul fast float %886, %876
  %892 = fmul fast float %889, %877
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %895 = fmul fast float %890, %894
  %896 = fmul fast float %891, %894
  %897 = fmul fast float %892, %894
  %898 = add i32 %31, 48
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 22
  %902 = shl nuw nsw i32 %901, 5
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = fmul fast float %903, %895
  %905 = select i1 %139, float %904, float %895
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = add i32 %907, 0
  %909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %910 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %909, %dx.types.Handle %65, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = extractvalue %dx.types.ResRet.f32 %910, 2
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = shl i32 %915, 4
  %917 = and i32 %916, 32752
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = lshr i32 %915, 7
  %920 = and i32 %919, 32752
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = lshr i32 %915, 22
  %923 = shl nuw nsw i32 %922, 5
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = fmul fast float %918, %911
  %926 = fmul fast float %921, %912
  %927 = fmul fast float %924, %913
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = fmul fast float %925, %929
  %931 = fmul fast float %926, %929
  %932 = fmul fast float %927, %929
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = lshr i32 %934, 22
  %936 = shl nuw nsw i32 %935, 5
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = fmul fast float %937, %930
  %939 = select i1 %139, float %938, float %930
  %940 = fsub fast float %939, %905
  %941 = fsub fast float %931, %896
  %942 = fsub fast float %932, %897
  %943 = fmul fast float %940, %52
  %944 = fmul fast float %941, %52
  %945 = fmul fast float %942, %52
  %946 = fadd fast float %943, %905
  %947 = fadd fast float %944, %896
  %948 = fadd fast float %945, %897
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 3
  %951 = fcmp fast ogt float %950, 0.000000e+00
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 1
  br i1 %951, label %954, label %979

; <label>:954                                     ; preds = %669
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = extractvalue %dx.types.ResRet.f32 %955, 2
  %959 = extractvalue %dx.types.ResRet.f32 %955, 3
  %960 = fmul fast float %953, %959
  %961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  %963 = extractvalue %dx.types.ResRet.f32 %961, 1
  %964 = extractvalue %dx.types.ResRet.f32 %961, 2
  %965 = extractvalue %dx.types.ResRet.f32 %961, 3
  %966 = fmul fast float %953, %962
  %967 = fmul fast float %953, %963
  %968 = fmul fast float %953, %964
  %969 = fmul fast float %953, %965
  %970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  %974 = extractvalue %dx.types.ResRet.f32 %970, 3
  %975 = fmul fast float %953, %971
  %976 = fmul fast float %953, %972
  %977 = fmul fast float %953, %973
  %978 = fmul fast float %953, %974
  br label %984

; <label>:979                                     ; preds = %669
  %980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %981 = extractvalue %dx.types.ResRet.f32 %980, 0
  %982 = extractvalue %dx.types.ResRet.f32 %980, 1
  %983 = extractvalue %dx.types.ResRet.f32 %980, 2
  br label %984

; <label>:984                                     ; preds = %979, %954
  %985 = phi float [ %975, %954 ], [ 0.000000e+00, %979 ]
  %986 = phi float [ %976, %954 ], [ 0.000000e+00, %979 ]
  %987 = phi float [ %977, %954 ], [ 0.000000e+00, %979 ]
  %988 = phi float [ %978, %954 ], [ 0.000000e+00, %979 ]
  %989 = phi float [ %966, %954 ], [ 0.000000e+00, %979 ]
  %990 = phi float [ %967, %954 ], [ 0.000000e+00, %979 ]
  %991 = phi float [ %968, %954 ], [ 0.000000e+00, %979 ]
  %992 = phi float [ %969, %954 ], [ 0.000000e+00, %979 ]
  %993 = phi float [ %956, %954 ], [ %981, %979 ]
  %994 = phi float [ %957, %954 ], [ %982, %979 ]
  %995 = phi float [ %958, %954 ], [ %983, %979 ]
  %996 = phi float [ %960, %954 ], [ 0.000000e+00, %979 ]
  %997 = fmul float %953, %995
  %998 = fmul float %953, %994
  %999 = fmul float %953, %993
  %1000 = call float @dx.op.dot2.f32(i32 54, float %862, float %863, float %862, float %863)  ; Dot2(ax,ay,bx,by)
  %1001 = fsub fast float 1.000000e+00, %1000
  %1002 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1003 = call float @dx.op.unary.f32(i32 24, float %1002)  ; Sqrt(value)
  %1004 = fmul fast float %1003, %46
  %1005 = fmul fast float %1003, %47
  %1006 = fmul fast float %1003, %48
  %1007 = fmul fast float %862, %42
  %1008 = fmul fast float %862, %43
  %1009 = fmul fast float %862, %44
  %1010 = fmul fast float %116, %863
  %1011 = fmul fast float %117, %863
  %1012 = fmul fast float %118, %863
  %1013 = fadd fast float %1010, %1007
  %1014 = fadd fast float %1013, %1004
  %1015 = fadd fast float %1011, %1008
  %1016 = fadd fast float %1015, %1005
  %1017 = fadd fast float %1012, %1009
  %1018 = fadd fast float %1017, %1006
  %1019 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1016, float %1018, float %1014, float %1016, float %1018)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = call float @dx.op.unary.f32(i32 25, float %1019)  ; Rsqrt(value)
  %1021 = fmul fast float %1014, %1020
  %1022 = fmul fast float %1016, %1020
  %1023 = fmul fast float %1018, %1020
  %1024 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.unary.f32(i32 25, float %1024)  ; Rsqrt(value)
  %1026 = fmul fast float %1025, %104
  %1027 = fmul fast float %1025, %105
  %1028 = fmul fast float %1025, %106
  %1029 = fsub fast float -0.000000e+00, %1026
  %1030 = fsub fast float -0.000000e+00, %1027
  %1031 = fsub fast float -0.000000e+00, %1028
  %1032 = fadd fast float %767, 0xBFB99999A0000000
  %1033 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1034 = fmul fast float %1033, 0x3FF1C71C80000000
  %1035 = call float @dx.op.binary.f32(i32 36, float %767, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1036 = fsub fast float 1.000000e+00, %1034
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1038 = fmul fast float %1037, %768
  %1039 = fmul fast float %1037, %769
  %1040 = fmul fast float %1037, %770
  %1041 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1042 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1043 = call float @dx.op.unary.f32(i32 7, float %1040)  ; Saturate(value)
  %1044 = fmul fast float %1034, %768
  %1045 = fmul fast float %1034, %769
  %1046 = fmul fast float %1034, %770
  %1047 = fadd fast float %1044, %1035
  %1048 = fadd fast float %1045, %1035
  %1049 = fadd fast float %1046, %1035
  %1050 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  %1051 = call float @dx.op.unary.f32(i32 7, float %1048)  ; Saturate(value)
  %1052 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  %1053 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %1054 = fmul fast float %946, %675
  %1055 = fmul fast float %947, %676
  %1056 = fmul fast float %948, %677
  %1057 = call float @dx.op.dot3.f32(i32 55, float %1054, float %1055, float %1056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = select i1 %139, float 0.000000e+00, float %1054
  %1059 = select i1 %139, float %1057, float %1055
  %1060 = select i1 %139, float 0.000000e+00, float %1056
  %1061 = fmul fast float %590, %946
  %1062 = fmul fast float %591, %947
  %1063 = fmul fast float %592, %948
  %1064 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1042, float %1043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = add i32 %31, 32
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 255
  %1069 = uitofp i32 %1068 to float
  %1070 = lshr i32 %1067, 8
  %1071 = and i32 %1070, 255
  %1072 = uitofp i32 %1071 to float
  %1073 = fmul fast float %1072, %1064
  %1074 = fadd fast float %1073, %1069
  %1075 = fmul fast float %1074, 0x3F70101020000000
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1077 = and i32 %159, 8192
  %1078 = icmp eq i32 %1077, 0
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  br i1 %1078, label %1087, label %1081, !dx.controlflow.hints !78

; <label>:1081                                    ; preds = %984
  %1082 = add i32 %156, 176
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = fcmp fast oge float %1084, 0.000000e+00
  %1086 = select i1 %1085, float %1084, float %1080
  br label %1094

; <label>:1087                                    ; preds = %984
  %1088 = add i32 %31, 104
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = bitcast i32 %1090 to float
  %1092 = fcmp fast oge float %1091, 0.000000e+00
  %1093 = select i1 %1092, float %1091, float %1080
  br label %1094

; <label>:1094                                    ; preds = %1087, %1081
  %1095 = phi float [ %1086, %1081 ], [ %1093, %1087 ]
  %1096 = fmul fast float %674, %673
  %1097 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %262, i32 %263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = lshr i32 %1098, 18
  %1100 = uitofp i32 %1099 to float
  %1101 = fmul fast float %1100, 0x3F4C00EBA0000000
  %1102 = call float @dx.op.unary.f32(i32 21, float %1101)  ; Exp(value)
  %1103 = fadd fast float %1102, -1.000000e+00
  %1104 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1105 = extractvalue %dx.types.Dimensions %1104, 0
  %1106 = sitofp i32 %1105 to float
  %1107 = extractvalue %dx.types.Dimensions %1104, 1
  %1108 = sitofp i32 %1107 to float
  %1109 = fcmp fast oge float %260, %1106
  %1110 = fcmp fast oge float %261, %1108
  %1111 = or i1 %1109, %1110
  %1112 = select i1 %1111, float 0x4197782600000000, float %1103
  %1113 = icmp eq i32 %155, 3
  %1114 = fcmp fast ogt float %62, %1112
  %1115 = and i1 %286, %1114
  %1116 = or i1 %1113, %1115
  %1117 = icmp eq i32 %155, 2
  %1118 = fcmp fast ole float %62, %1112
  %1119 = and i1 %1117, %1118
  %1120 = or i1 %1119, %1116
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 3
  %1123 = fcmp fast ogt float %1122, 0.000000e+00
  br i1 %1123, label %1124, label %1131

; <label>:1124                                    ; preds = %1094
  %1125 = fmul fast float %1022, 0xBFDF454380000000
  %1126 = fmul fast float %1023, 0x3FDF454380000000
  %1127 = fmul fast float %1021, 0xBFDF454380000000
  %1128 = call float @dx.op.dot4.f32(i32 56, float %999, float %998, float %997, float %996, float 0x3FD20DD760000000, float %1125, float %1126, float %1127)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1129 = call float @dx.op.dot4.f32(i32 56, float %989, float %990, float %991, float %992, float 0x3FD20DD760000000, float %1125, float %1126, float %1127)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1130 = call float @dx.op.dot4.f32(i32 56, float %985, float %986, float %987, float %988, float 0x3FD20DD760000000, float %1125, float %1126, float %1127)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1131

; <label>:1131                                    ; preds = %1124, %1094
  %1132 = phi float [ %1128, %1124 ], [ %999, %1094 ]
  %1133 = phi float [ %1129, %1124 ], [ %998, %1094 ]
  %1134 = phi float [ %1130, %1124 ], [ %997, %1094 ]
  %1135 = fmul fast float %1061, %1132
  %1136 = fmul fast float %1062, %1133
  %1137 = fmul fast float %1063, %1134
  %1138 = fadd fast float %1135, %1058
  %1139 = fadd fast float %1136, %1059
  %1140 = fadd fast float %1137, %1060
  %1141 = fmul fast float %1138, %673
  %1142 = fmul fast float %1139, %673
  %1143 = fmul fast float %1140, %673
  %1144 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %1029, float %1030, float %1031)  ; Dot3(ax,ay,az,bx,by,bz)
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  br i1 %1123, label %1146, label %1249

; <label>:1146                                    ; preds = %1131
  %1147 = fsub fast float -0.000000e+00, %988
  %1148 = fsub fast float %1147, %992
  %1149 = fsub fast float %1148, %996
  %1150 = fsub fast float -0.000000e+00, %986
  %1151 = fsub fast float %1150, %990
  %1152 = fsub fast float %1151, %998
  %1153 = fadd fast float %991, %987
  %1154 = fadd fast float %1153, %997
  %1155 = call float @dx.op.dot3.f32(i32 55, float %1149, float %1152, float %1154, float %1149, float %1152, float %1154)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = call float @dx.op.unary.f32(i32 25, float %1155)  ; Rsqrt(value)
  %1157 = fmul fast float %1156, %1149
  %1158 = fmul fast float %1156, %1152
  %1159 = fmul fast float %1156, %1154
  %1160 = fmul fast float %1158, 0xBFD4D8D7C0000000
  %1161 = fmul fast float %1159, 0x3FD4D8D7C0000000
  %1162 = fmul fast float %1157, 0xBFD4D8D7C0000000
  %1163 = call float @dx.op.dot4.f32(i32 56, float %999, float %998, float %997, float %996, float 0x3FD20DD760000000, float %1160, float %1161, float %1162)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1164 = call float @dx.op.dot4.f32(i32 56, float %989, float %990, float %991, float %992, float 0x3FD20DD760000000, float %1160, float %1161, float %1162)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1165 = call float @dx.op.dot4.f32(i32 56, float %985, float %986, float %987, float %988, float 0x3FD20DD760000000, float %1160, float %1161, float %1162)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1166 = fmul fast float %1163, 0x4003333340000000
  %1167 = fmul fast float %999, 0x3FE5AA35A0000000
  %1168 = fsub fast float %1166, %1167
  %1169 = fmul fast float %1164, 0x4003333340000000
  %1170 = fmul fast float %989, 0x3FE5AA35A0000000
  %1171 = fsub fast float %1169, %1170
  %1172 = fmul fast float %1165, 0x4003333340000000
  %1173 = fmul fast float %985, 0x3FE5AA35A0000000
  %1174 = fsub fast float %1172, %1173
  %1175 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1168)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1171)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1174)  ; FMax(a,b)
  %1178 = fsub fast float %1157, %1026
  %1179 = fsub fast float %1158, %1027
  %1180 = fsub fast float %1159, %1028
  %1181 = call float @dx.op.dot3.f32(i32 55, float %1178, float %1179, float %1180, float %1178, float %1179, float %1180)  ; Dot3(ax,ay,az,bx,by,bz)
  %1182 = call float @dx.op.unary.f32(i32 25, float %1181)  ; Rsqrt(value)
  %1183 = fmul fast float %1182, %1178
  %1184 = fmul fast float %1182, %1179
  %1185 = fmul fast float %1182, %1180
  %1186 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %1157, float %1158, float %1159)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = call float @dx.op.unary.f32(i32 6, float %1186)  ; FAbs(value)
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %1183, float %1184, float %1185)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = fmul fast float %1188, %1188
  %1190 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1030, float %1031, float %1183, float %1184, float %1185)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = call float @dx.op.unary.f32(i32 6, float %1190)  ; FAbs(value)
  %1192 = fsub fast float 1.000000e+00, %1053
  %1193 = call float @dx.op.binary.f32(i32 35, float %1192, float 0x3F847AE140000000)  ; FMax(a,b)
  %1194 = fmul fast float %1193, %1193
  %1195 = fmul fast float %1194, %1194
  %1196 = fsub fast float 1.000000e+00, %1195
  %1197 = fmul fast float %1145, %1145
  %1198 = fmul fast float %1197, %1196
  %1199 = fadd fast float %1198, %1195
  %1200 = bitcast float %1199 to i32
  %1201 = ashr i32 %1200, 1
  %1202 = add nsw i32 %1201, 532487669
  %1203 = bitcast i32 %1202 to float
  %1204 = fadd fast float %1203, %1145
  %1205 = fmul fast float %1195, %1189
  %1206 = fsub fast float 1.000000e+00, %1189
  %1207 = fadd fast float %1206, %1205
  %1208 = fmul fast float %1187, %1187
  %1209 = fmul fast float %1208, %1196
  %1210 = fadd fast float %1209, %1195
  %1211 = bitcast float %1210 to i32
  %1212 = ashr i32 %1211, 1
  %1213 = add nsw i32 %1212, 532487669
  %1214 = bitcast i32 %1213 to float
  %1215 = fadd fast float %1214, %1187
  %1216 = fmul fast float %1207, %1207
  %1217 = fmul fast float %1216, %1204
  %1218 = fmul fast float %1217, %1215
  %1219 = fdiv fast float 1.000000e+00, %1218
  %1220 = fmul fast float %1195, %1219
  %1221 = fsub fast float 1.000000e+00, %1191
  %1222 = bitcast float %1221 to i32
  %1223 = sitofp i32 %1222 to float
  %1224 = fmul fast float %1223, 5.000000e+00
  %1225 = fadd fast float %1224, 0xC1EFBF8940000000
  %1226 = fptosi float %1225 to i32
  %1227 = bitcast i32 %1226 to float
  %1228 = fsub fast float 1.000000e+00, %1050
  %1229 = fsub fast float 1.000000e+00, %1051
  %1230 = fsub fast float 1.000000e+00, %1052
  %1231 = fmul fast float %1227, %1228
  %1232 = fmul fast float %1227, %1229
  %1233 = fmul fast float %1227, %1230
  %1234 = fadd fast float %1231, %1050
  %1235 = fadd fast float %1232, %1051
  %1236 = fadd fast float %1233, %1052
  %1237 = fmul fast float %1220, %1175
  %1238 = fmul fast float %1237, %1234
  %1239 = fmul fast float %1220, %1176
  %1240 = fmul fast float %1239, %1235
  %1241 = fmul fast float %1220, %1177
  %1242 = fmul fast float %1241, %1236
  %1243 = call float @dx.op.binary.f32(i32 35, float %1238, float 0.000000e+00)  ; FMax(a,b)
  %1244 = call float @dx.op.binary.f32(i32 35, float %1240, float 0.000000e+00)  ; FMax(a,b)
  %1245 = call float @dx.op.binary.f32(i32 35, float %1242, float 0.000000e+00)  ; FMax(a,b)
  %1246 = fadd fast float %1243, %1141
  %1247 = fadd fast float %1244, %1142
  %1248 = fadd fast float %1245, %1143
  br label %1249

; <label>:1249                                    ; preds = %1146, %1131
  %1250 = phi float [ %1246, %1146 ], [ %1141, %1131 ]
  %1251 = phi float [ %1247, %1146 ], [ %1142, %1131 ]
  %1252 = phi float [ %1248, %1146 ], [ %1143, %1131 ]
  %1253 = fmul fast float %1145, 9.843750e-01
  %1254 = fmul fast float %1053, 9.843750e-01
  %1255 = fadd fast float %1253, 7.812500e-03
  %1256 = fadd fast float %1254, 7.812500e-03
  %1257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1255, float %1256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 2
  %1259 = extractvalue %dx.types.ResRet.f32 %1257, 3
  %1260 = fmul fast float %1258, %1050
  %1261 = fmul fast float %1258, %1051
  %1262 = fmul fast float %1258, %1052
  %1263 = fadd fast float %1260, %1259
  %1264 = fadd fast float %1261, %1259
  %1265 = fadd fast float %1262, %1259
  %1266 = call float @dx.op.binary.f32(i32 35, float %1264, float %1265)  ; FMax(a,b)
  %1267 = call float @dx.op.binary.f32(i32 35, float %1263, float %1266)  ; FMax(a,b)
  %1268 = fsub fast float 1.000000e+00, %1267
  %1269 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1027, float %1028, float %1021, float %1022, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1270 = fmul fast float %1269, 2.000000e+00
  %1271 = fmul fast float %1270, %1021
  %1272 = fmul fast float %1270, %1022
  %1273 = fmul fast float %1270, %1023
  %1274 = fsub fast float %1026, %1271
  %1275 = fsub fast float %1027, %1272
  %1276 = fsub fast float %1028, %1273
  br i1 %1123, label %1277, label %1284

; <label>:1277                                    ; preds = %1249
  %1278 = fmul fast float %1275, 0xBFDF454380000000
  %1279 = fmul fast float %1276, 0x3FDF454380000000
  %1280 = fmul fast float %1274, 0xBFDF454380000000
  %1281 = call float @dx.op.dot4.f32(i32 56, float %999, float %998, float %997, float %996, float 0x3FD20DD760000000, float %1278, float %1279, float %1280)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1282 = call float @dx.op.dot4.f32(i32 56, float %989, float %990, float %991, float %992, float 0x3FD20DD760000000, float %1278, float %1279, float %1280)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1283 = call float @dx.op.dot4.f32(i32 56, float %985, float %986, float %987, float %988, float 0x3FD20DD760000000, float %1278, float %1279, float %1280)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1284

; <label>:1284                                    ; preds = %1277, %1249
  %1285 = phi float [ %1281, %1277 ], [ %999, %1249 ]
  %1286 = phi float [ %1282, %1277 ], [ %998, %1249 ]
  %1287 = phi float [ %1283, %1277 ], [ %997, %1249 ]
  %1288 = call float @dx.op.dot3.f32(i32 55, float %1285, float %1286, float %1287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1292 = fmul fast float %1290, %69
  %1293 = fmul fast float %1291, %70
  %1294 = fptoui float %1292 to i32
  %1295 = fptoui float %1293 to i32
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1299 = extractvalue %dx.types.CBufRet.f32 %1296, 3
  %1300 = fadd fast float %62, -4.000000e+00
  %1301 = call float @dx.op.binary.f32(i32 35, float %1300, float 0.000000e+00)  ; FMax(a,b)
  %1302 = fadd fast float %1301, %1297
  %1303 = fmul fast float %1302, %1298
  %1304 = call float @dx.op.unary.f32(i32 23, float %1303)  ; Log(value)
  %1305 = fmul fast float %1304, %1299
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 2
  %1308 = fmul fast float %1305, %1307
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.i32 %1310, 1
  %1312 = add i32 %1311, -1
  %1313 = uitofp i32 %1311 to float
  %1314 = fmul fast float %1313, %1309
  %1315 = fptoui float %1314 to i32
  %1316 = call i32 @dx.op.binary.i32(i32 40, i32 %1315, i32 %1312)  ; UMin(a,b)
  %1317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.i32 %1317, 2
  %1319 = extractvalue %dx.types.CBufRet.i32 %1317, 3
  %1320 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1295, i32 %1318, i32 %1294)  ; UMad(a,b,c)
  %1321 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1316, i32 %1319, i32 %1320)  ; UMad(a,b,c)
  %1322 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %1323 = fptoui float %1322 to i32
  %1324 = lshr i32 %1323, 5
  %1325 = call i32 @dx.op.binary.i32(i32 40, i32 %1324, i32 8191)  ; UMin(a,b)
  %1326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.i32 %1326, 2
  %1328 = add nsw i32 %1327, -1
  %1329 = call i32 @dx.op.binary.i32(i32 37, i32 %1328, i32 0)  ; IMax(a,b)
  %1330 = shl i32 %1325, 2
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = lshr i32 %1332, 16
  %1334 = and i32 %1332, 65535
  %1335 = lshr i32 %1332, 21
  %1336 = lshr i32 %1334, 5
  %1337 = call i32 @dx.op.binary.i32(i32 40, i32 %1336, i32 %1329)  ; UMin(a,b)
  %1338 = icmp ugt i32 %1335, %1337
  br i1 %1338, label %1701, label %1339

; <label>:1339                                    ; preds = %1284
  br label %1340

; <label>:1340                                    ; preds = %1693, %1339
  %1341 = phi float [ %1694, %1693 ], [ 0.000000e+00, %1339 ]
  %1342 = phi float [ %1695, %1693 ], [ 0.000000e+00, %1339 ]
  %1343 = phi float [ %1696, %1693 ], [ 0.000000e+00, %1339 ]
  %1344 = phi float [ %1697, %1693 ], [ 1.000000e+00, %1339 ]
  %1345 = phi i32 [ %1698, %1693 ], [ %1335, %1339 ]
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.i32 %1346, 2
  %1348 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1321, i32 %1347, i32 %1345)  ; UMad(a,b,c)
  %1349 = shl i32 %1348, 2
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = shl i32 %1345, 5
  %1353 = sub nsw i32 %1333, %1352
  %1354 = call i32 @dx.op.binary.i32(i32 37, i32 %1353, i32 0)  ; IMax(a,b)
  %1355 = call i32 @dx.op.binary.i32(i32 38, i32 %1354, i32 31)  ; IMin(a,b)
  %1356 = sub nsw i32 1, %1333
  %1357 = add nsw i32 %1356, %1334
  %1358 = call i32 @dx.op.binary.i32(i32 37, i32 %1357, i32 0)  ; IMax(a,b)
  %1359 = call i32 @dx.op.binary.i32(i32 38, i32 %1358, i32 32)  ; IMin(a,b)
  %1360 = and i32 %1359, 31
  %1361 = shl i32 -1, %1360
  %1362 = xor i32 %1361, -1
  %1363 = and i32 %1355, 31
  %1364 = shl i32 %1362, %1363
  %1365 = icmp eq i32 %1359, 32
  %1366 = select i1 %1365, i32 -1, i32 %1364
  %1367 = and i32 %1366, %1351
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1693, label %1369

; <label>:1369                                    ; preds = %1340
  br label %1370

; <label>:1370                                    ; preds = %1476, %1369
  %1371 = phi float [ %1477, %1476 ], [ %1341, %1369 ]
  %1372 = phi float [ %1478, %1476 ], [ %1342, %1369 ]
  %1373 = phi float [ %1479, %1476 ], [ %1343, %1369 ]
  %1374 = phi float [ %1480, %1476 ], [ %1344, %1369 ]
  %1375 = phi i32 [ %1380, %1476 ], [ %1367, %1369 ]
  %1376 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1375)  ; FirstbitLo(value)
  %1377 = add i32 %1376, %1352
  %1378 = and i32 %1376, 31
  %1379 = shl i32 1, %1378
  %1380 = xor i32 %1379, %1375
  %1381 = mul i32 %1377, 72
  %1382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = add i32 %1381, 12
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = add i32 %1381, 16
  %1390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1389, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.ResRet.f32 %1390, 2
  %1394 = add i32 %1381, 28
  %1395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = add i32 %1381, 32
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = extractvalue %dx.types.ResRet.f32 %1398, 3
  %1403 = add i32 %1381, 48
  %1404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = add i32 %1381, 56
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = add i32 %1381, 64
  %1412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.ResRet.f32 %1412, 1
  %1415 = mul i32 %1377, 60
  %1416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = add i32 %1415, 12
  %1421 = add i32 %1415, 48
  %1422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.ResRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.ResRet.f32 %1422, 2
  %1426 = and i32 %1388, 32767
  %1427 = bitcast float %1383 to i32
  %1428 = icmp eq i32 %1427, -1
  %1429 = bitcast float %1384 to i32
  %1430 = and i32 %1388, 32768
  %1431 = icmp ne i32 %1430, 0
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.CBufRet.f32 %1432, 2
  %1436 = fsub fast float %1417, %1433
  %1437 = fsub fast float %1418, %1434
  %1438 = fsub fast float %1419, %1435
  %1439 = fsub fast float %104, %1436
  %1440 = fsub fast float %105, %1437
  %1441 = fsub fast float %106, %1438
  %1442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = call float @dx.op.dot3.f32(i32 55, float %1439, float %1440, float %1441, float %1443, float %1444, float %1445)  ; Dot3(ax,ay,az,bx,by,bz)
  %1447 = add i32 %1415, 24
  %1448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = call float @dx.op.dot3.f32(i32 55, float %1439, float %1440, float %1441, float %1449, float %1450, float %1451)  ; Dot3(ax,ay,az,bx,by,bz)
  %1453 = add i32 %1415, 36
  %1454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = call float @dx.op.dot3.f32(i32 55, float %1439, float %1440, float %1441, float %1455, float %1456, float %1457)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = call float @dx.op.unary.f32(i32 6, float %1446)  ; FAbs(value)
  %1460 = call float @dx.op.unary.f32(i32 6, float %1452)  ; FAbs(value)
  %1461 = call float @dx.op.unary.f32(i32 6, float %1458)  ; FAbs(value)
  %1462 = fsub fast float %1423, %1459
  %1463 = fsub fast float %1424, %1460
  %1464 = fsub fast float %1425, %1461
  %1465 = fmul fast float %1462, %1391
  %1466 = fmul fast float %1463, %1392
  %1467 = fmul fast float %1464, %1393
  %1468 = call float @dx.op.binary.f32(i32 36, float %1466, float %1467)  ; FMin(a,b)
  %1469 = call float @dx.op.binary.f32(i32 36, float %1465, float %1468)  ; FMin(a,b)
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = call float @dx.op.binary.f32(i32 36, float %1374, float %1470)  ; FMin(a,b)
  %1472 = uitofp i1 %1431 to float
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = fmul fast float %1471, %1473
  %1475 = fcmp fast ogt float %1474, 0.000000e+00
  br i1 %1475, label %1482, label %1476

; <label>:1476                                    ; preds = %1624, %1370
  %1477 = phi float [ %1688, %1624 ], [ %1371, %1370 ]
  %1478 = phi float [ %1689, %1624 ], [ %1372, %1370 ]
  %1479 = phi float [ %1690, %1624 ], [ %1373, %1370 ]
  %1480 = phi float [ %1691, %1624 ], [ %1374, %1370 ]
  %1481 = icmp eq i32 %1375, %1379
  br i1 %1481, label %1692, label %1370

; <label>:1482                                    ; preds = %1370
  br i1 %1428, label %1540, label %1483

; <label>:1483                                    ; preds = %1482
  %1484 = fsub fast float -0.000000e+00, %1443
  %1485 = fsub fast float -0.000000e+00, %1444
  %1486 = fsub fast float -0.000000e+00, %1445
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1275, float %1276, float %1484, float %1485, float %1486)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = fsub fast float -0.000000e+00, %1487
  %1489 = call float @dx.op.dot3.f32(i32 55, float %1439, float %1440, float %1441, float %1484, float %1485, float %1486)  ; Dot3(ax,ay,az,bx,by,bz)
  %1490 = fadd fast float %1489, %1406
  %1491 = fadd fast float %1405, %1489
  %1492 = fsub fast float -0.000000e+00, %1491
  %1493 = fcmp ogt float %1487, -0.000000e+00
  %1494 = select i1 %1493, float %1492, float %1490
  %1495 = call float @dx.op.unary.f32(i32 6, float %1488)  ; FAbs(value)
  %1496 = fdiv fast float 1.000000e+00, %1495
  %1497 = fmul fast float %1494, %1496
  %1498 = call float @dx.op.binary.f32(i32 35, float %1497, float 0.000000e+00)  ; FMax(a,b)
  %1499 = fsub fast float -0.000000e+00, %1449
  %1500 = fsub fast float -0.000000e+00, %1450
  %1501 = fsub fast float -0.000000e+00, %1451
  %1502 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1275, float %1276, float %1499, float %1500, float %1501)  ; Dot3(ax,ay,az,bx,by,bz)
  %1503 = fsub fast float -0.000000e+00, %1502
  %1504 = call float @dx.op.dot3.f32(i32 55, float %1439, float %1440, float %1441, float %1499, float %1500, float %1501)  ; Dot3(ax,ay,az,bx,by,bz)
  %1505 = fadd fast float %1504, %1410
  %1506 = fadd fast float %1409, %1504
  %1507 = fsub fast float -0.000000e+00, %1506
  %1508 = fcmp ogt float %1502, -0.000000e+00
  %1509 = select i1 %1508, float %1507, float %1505
  %1510 = call float @dx.op.unary.f32(i32 6, float %1503)  ; FAbs(value)
  %1511 = fdiv fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1509, %1511
  %1513 = call float @dx.op.binary.f32(i32 35, float %1512, float 0.000000e+00)  ; FMax(a,b)
  %1514 = fsub fast float -0.000000e+00, %1455
  %1515 = fsub fast float -0.000000e+00, %1456
  %1516 = fsub fast float -0.000000e+00, %1457
  %1517 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1275, float %1276, float %1514, float %1515, float %1516)  ; Dot3(ax,ay,az,bx,by,bz)
  %1518 = fsub fast float -0.000000e+00, %1517
  %1519 = call float @dx.op.dot3.f32(i32 55, float %1439, float %1440, float %1441, float %1514, float %1515, float %1516)  ; Dot3(ax,ay,az,bx,by,bz)
  %1520 = fadd fast float %1519, %1414
  %1521 = fadd fast float %1413, %1519
  %1522 = fsub fast float -0.000000e+00, %1521
  %1523 = fcmp ogt float %1517, -0.000000e+00
  %1524 = select i1 %1523, float %1522, float %1520
  %1525 = call float @dx.op.unary.f32(i32 6, float %1518)  ; FAbs(value)
  %1526 = fdiv fast float 1.000000e+00, %1525
  %1527 = fmul fast float %1524, %1526
  %1528 = call float @dx.op.binary.f32(i32 35, float %1527, float 0.000000e+00)  ; FMax(a,b)
  %1529 = call float @dx.op.binary.f32(i32 36, float %1513, float %1528)  ; FMin(a,b)
  %1530 = call float @dx.op.binary.f32(i32 36, float %1498, float %1529)  ; FMin(a,b)
  %1531 = fmul fast float %1530, %1274
  %1532 = fmul fast float %1530, %1275
  %1533 = fmul fast float %1530, %1276
  %1534 = fadd fast float %1531, %104
  %1535 = fadd fast float %1532, %105
  %1536 = fadd fast float %1533, %106
  %1537 = fsub fast float %1534, %1383
  %1538 = fsub fast float %1535, %1384
  %1539 = fsub fast float %1536, %1385
  br label %1547

; <label>:1540                                    ; preds = %1482
  %1541 = fmul fast float %1274, 8.096000e+03
  %1542 = fmul fast float %1275, 8.096000e+03
  %1543 = fmul fast float %1276, 8.096000e+03
  %1544 = fadd fast float %1541, %104
  %1545 = fadd fast float %1542, %105
  %1546 = fadd fast float %1543, %106
  br label %1547

; <label>:1547                                    ; preds = %1540, %1483
  %1548 = phi float [ %1274, %1540 ], [ %1537, %1483 ]
  %1549 = phi float [ %1275, %1540 ], [ %1538, %1483 ]
  %1550 = phi float [ %1276, %1540 ], [ %1539, %1483 ]
  %1551 = phi float [ %1544, %1540 ], [ %1534, %1483 ]
  %1552 = phi float [ %1545, %1540 ], [ %1535, %1483 ]
  %1553 = phi float [ %1546, %1540 ], [ %1536, %1483 ]
  %1554 = fcmp fast olt float %1402, 1.000000e+00
  br i1 %1554, label %1555, label %1586, !dx.controlflow.hints !79

; <label>:1555                                    ; preds = %1547
  %1556 = fmul fast float %1550, %1400
  %1557 = fmul fast float %1549, %1401
  %1558 = fsub fast float %1556, %1557
  %1559 = fmul fast float %1548, %1401
  %1560 = fmul fast float %1550, %1399
  %1561 = fsub fast float %1559, %1560
  %1562 = fmul fast float %1549, %1399
  %1563 = fmul fast float %1548, %1400
  %1564 = fsub fast float %1562, %1563
  %1565 = fmul fast float %1558, 2.000000e+00
  %1566 = fmul fast float %1561, 2.000000e+00
  %1567 = fmul fast float %1564, 2.000000e+00
  %1568 = fmul fast float %1565, %1402
  %1569 = fmul fast float %1566, %1402
  %1570 = fmul fast float %1567, %1402
  %1571 = fmul fast float %1567, %1400
  %1572 = fmul fast float %1566, %1401
  %1573 = fmul fast float %1565, %1401
  %1574 = fmul fast float %1567, %1399
  %1575 = fmul fast float %1566, %1399
  %1576 = fmul fast float %1565, %1400
  %1577 = fadd fast float %1571, %1548
  %1578 = fadd fast float %1577, %1568
  %1579 = fsub fast float %1578, %1572
  %1580 = fsub fast float %1549, %1574
  %1581 = fadd fast float %1580, %1569
  %1582 = fadd fast float %1581, %1573
  %1583 = fadd fast float %1570, %1550
  %1584 = fsub fast float %1583, %1576
  %1585 = fadd fast float %1584, %1575
  br label %1586

; <label>:1586                                    ; preds = %1555, %1547
  %1587 = phi float [ %1579, %1555 ], [ %1548, %1547 ]
  %1588 = phi float [ %1582, %1555 ], [ %1549, %1547 ]
  %1589 = phi float [ %1585, %1555 ], [ %1550, %1547 ]
  br i1 %1428, label %1621, label %1590

; <label>:1590                                    ; preds = %1586
  %1591 = fmul fast float %1053, 0x400187C840000000
  %1592 = fadd fast float %1591, 0xC00EFC2120000000
  %1593 = fmul fast float %1592, %1053
  %1594 = fadd fast float %1593, 0x3FE5D16340000000
  %1595 = fmul fast float %1594, %1053
  %1596 = fadd fast float %1595, 1.000000e+00
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1598 = fsub fast float %1551, %104
  %1599 = fsub fast float %1552, %105
  %1600 = fsub fast float %1553, %106
  %1601 = fsub fast float %1551, %1383
  %1602 = fsub fast float %1552, %1384
  %1603 = fsub fast float %1553, %1385
  %1604 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1599, float %1600, float %1598, float %1599, float %1600)  ; Dot3(ax,ay,az,bx,by,bz)
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1602, float %1603, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = fadd fast float %1605, 0x3EE4F8B580000000
  %1607 = fdiv fast float %1604, %1606
  %1608 = bitcast float %1607 to i32
  %1609 = ashr i32 %1608, 1
  %1610 = add nsw i32 %1609, 532487669
  %1611 = bitcast i32 %1610 to float
  %1612 = fmul fast float %1611, %1597
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = fmul fast float %1613, 0x4009981AE0000000
  %1615 = fsub fast float 0x40111BBD80000000, %1614
  %1616 = fmul fast float %1615, %1613
  %1617 = fadd fast float %1616, 0xC0009F6020000000
  %1618 = fmul fast float %1617, %1613
  %1619 = fadd fast float %1618, 1.000000e+00
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  br label %1624

; <label>:1621                                    ; preds = %1586
  %1622 = icmp ne i32 %1429, -1
  %1623 = zext i1 %1622 to i32
  br label %1624

; <label>:1624                                    ; preds = %1621, %1590
  %1625 = phi float [ %1053, %1621 ], [ %1620, %1590 ]
  %1626 = phi i32 [ %1623, %1621 ], [ 0, %1590 ]
  %1627 = fmul float %1625, 5.000000e+00
  %1628 = fsub float 5.000000e+00, %1627
  %1629 = icmp ne i32 %1626, 0
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1632 = fadd fast float %1631, %1628
  %1633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1632)  ; FMax(a,b)
  %1634 = call float @dx.op.unary.f32(i32 6, float %1587)  ; FAbs(value)
  %1635 = call float @dx.op.unary.f32(i32 6, float %1588)  ; FAbs(value)
  %1636 = fadd fast float %1635, %1634
  %1637 = call float @dx.op.unary.f32(i32 6, float %1589)  ; FAbs(value)
  %1638 = fadd fast float %1636, %1637
  %1639 = fcmp fast oeq float %1638, 0.000000e+00
  %1640 = fdiv fast float 1.000000e+00, %1638
  %1641 = select i1 %1639, float 1.000000e+00, float %1640
  %1642 = fmul fast float %1641, %1587
  %1643 = fmul fast float %1641, %1588
  %1644 = call float @dx.op.unary.f32(i32 6, float %1643)  ; FAbs(value)
  %1645 = call float @dx.op.unary.f32(i32 6, float %1642)  ; FAbs(value)
  %1646 = fsub fast float 1.000000e+00, %1644
  %1647 = fsub fast float 1.000000e+00, %1645
  %1648 = fcmp fast oge float %1642, 0.000000e+00
  %1649 = fcmp fast oge float %1643, 0.000000e+00
  %1650 = select i1 %1648, float 1.000000e+00, float -1.000000e+00
  %1651 = select i1 %1649, float 1.000000e+00, float -1.000000e+00
  %1652 = fcmp fast ole float %1589, 0.000000e+00
  %1653 = fmul fast float %1650, %1646
  %1654 = fmul fast float %1651, %1647
  %1655 = select i1 %1652, float %1653, float %1642
  %1656 = select i1 %1652, float %1654, float %1643
  %1657 = fmul fast float %1655, 5.000000e-01
  %1658 = fmul fast float %1656, 5.000000e-01
  %1659 = fadd fast float %1657, 5.000000e-01
  %1660 = fadd fast float %1658, 5.000000e-01
  %1661 = uitofp i32 %1426 to float
  %1662 = call float @dx.op.binary.f32(i32 36, float %1633, float 3.000000e+00)  ; FMin(a,b)
  %1663 = fadd fast float %1662, 2.000000e+00
  %1664 = call float @dx.op.unary.f32(i32 21, float %1663)  ; Exp(value)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1666 = fmul fast float %1665, %1664
  %1667 = fmul fast float %1666, 2.000000e+00
  %1668 = fsub fast float 1.000000e+00, %1667
  %1669 = fmul fast float %1659, %1668
  %1670 = fmul fast float %1660, %1668
  %1671 = fadd fast float %1669, %1666
  %1672 = fadd fast float %1670, %1666
  %1673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1671, float %1672, float %1661, float undef, i32 0, i32 0, i32 undef, float %1633)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.ResRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.ResRet.f32 %1673, 2
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1679 = fmul fast float %1678, %1396
  %1680 = call float @dx.op.binary.f32(i32 36, float %1288, float %1679)  ; FMin(a,b)
  %1681 = select i1 %1629, float %1680, float %1679
  %1682 = fmul fast float %1674, %1474
  %1683 = fmul fast float %1682, %1681
  %1684 = fmul fast float %1675, %1474
  %1685 = fmul fast float %1684, %1681
  %1686 = fmul fast float %1676, %1474
  %1687 = fmul fast float %1686, %1681
  %1688 = fadd fast float %1683, %1371
  %1689 = fadd fast float %1685, %1372
  %1690 = fadd fast float %1687, %1373
  %1691 = fsub fast float %1374, %1474
  br label %1476

; <label>:1692                                    ; preds = %1476
  br label %1693

; <label>:1693                                    ; preds = %1692, %1340
  %1694 = phi float [ %1341, %1340 ], [ %1477, %1692 ]
  %1695 = phi float [ %1342, %1340 ], [ %1478, %1692 ]
  %1696 = phi float [ %1343, %1340 ], [ %1479, %1692 ]
  %1697 = phi float [ %1344, %1340 ], [ %1480, %1692 ]
  %1698 = add i32 %1345, 1
  %1699 = icmp ugt i32 %1698, %1337
  br i1 %1699, label %1700, label %1340, !llvm.loop !80

; <label>:1700                                    ; preds = %1693
  br label %1701

; <label>:1701                                    ; preds = %1700, %1284
  %1702 = phi float [ 0.000000e+00, %1284 ], [ %1694, %1700 ]
  %1703 = phi float [ 0.000000e+00, %1284 ], [ %1695, %1700 ]
  %1704 = phi float [ 0.000000e+00, %1284 ], [ %1696, %1700 ]
  %1705 = call float @dx.op.dot3.f32(i32 55, float %1702, float %1703, float %1704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1706 = select i1 %139, float 0.000000e+00, float %1702
  %1707 = select i1 %139, float %1705, float %1703
  %1708 = select i1 %139, float 0.000000e+00, float %1704
  %1709 = fmul fast float %1706, %1263
  %1710 = fmul fast float %1707, %1264
  %1711 = fmul fast float %1708, %1265
  %1712 = call float @dx.op.binary.f32(i32 35, float %1709, float 0.000000e+00)  ; FMax(a,b)
  %1713 = call float @dx.op.binary.f32(i32 35, float %1710, float 0.000000e+00)  ; FMax(a,b)
  %1714 = call float @dx.op.binary.f32(i32 35, float %1711, float 0.000000e+00)  ; FMax(a,b)
  %1715 = fadd fast float %1712, %1250
  %1716 = fadd fast float %1713, %1251
  %1717 = fadd fast float %1714, %1252
  %1718 = fmul fast float %1715, %673
  %1719 = fmul fast float %1716, %673
  %1720 = fmul fast float %1717, %673
  %1721 = fsub fast float 1.000000e+00, %673
  %1722 = call float @dx.op.dot3.f32(i32 55, float %1721, float %1721, float %1721, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1095, %1076
  %1725 = fsub fast float 1.000000e+00, %1096
  %1726 = fsub fast float %1725, %1076
  %1727 = call float @dx.op.unary.f32(i32 7, float %1726)  ; Saturate(value)
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %1730 = fmul fast float %1729, %1727
  %1731 = fadd fast float %1730, %1724
  %1732 = and i32 %159, 1048576
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %1818, label %1734, !dx.controlflow.hints !82

; <label>:1734                                    ; preds = %1701
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 2
  %1737 = extractvalue %dx.types.CBufRet.f32 %1735, 3
  %1738 = fmul fast float %1736, %69
  %1739 = fmul fast float %1737, %70
  %1740 = call float @dx.op.unary.f32(i32 7, float %1738)  ; Saturate(value)
  %1741 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1742 = select i1 %1120, i32 2, i32 0
  %1743 = or i32 %1742, 1
  %1744 = uitofp i32 %1743 to float
  %1745 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1740, float %1741, float %1744, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 0
  %1747 = extractvalue %dx.types.ResRet.f32 %1745, 1
  %1748 = extractvalue %dx.types.ResRet.f32 %1745, 2
  %1749 = extractvalue %dx.types.ResRet.f32 %1745, 3
  %1750 = add nuw nsw i32 %1742, 2
  %1751 = uitofp i32 %1750 to float
  %1752 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1740, float %1741, float %1751, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = extractvalue %dx.types.ResRet.f32 %1752, 1
  %1755 = extractvalue %dx.types.ResRet.f32 %1752, 2
  %1756 = extractvalue %dx.types.ResRet.f32 %1752, 3
  %1757 = call float @dx.op.binary.f32(i32 35, float %1747, float %1748)  ; FMax(a,b)
  %1758 = call float @dx.op.binary.f32(i32 35, float %1746, float %1757)  ; FMax(a,b)
  %1759 = call float @dx.op.binary.f32(i32 35, float %1758, float %1749)  ; FMax(a,b)
  %1760 = call float @dx.op.binary.f32(i32 36, float %1754, float %1755)  ; FMin(a,b)
  %1761 = call float @dx.op.binary.f32(i32 36, float %1753, float %1760)  ; FMin(a,b)
  %1762 = call float @dx.op.binary.f32(i32 36, float %1761, float %1756)  ; FMin(a,b)
  %1763 = fmul fast float %1759, 2.550000e+02
  %1764 = fadd fast float %1763, 0x3F70101020000000
  %1765 = fptoui float %1764 to i32
  %1766 = fmul fast float %1762, 2.550000e+02
  %1767 = fadd fast float %1766, 0x3F70101020000000
  %1768 = fptoui float %1767 to i32
  %1769 = icmp ult i32 %1765, %1768
  br i1 %1769, label %1770, label %1811

; <label>:1770                                    ; preds = %1734
  %1771 = fcmp fast ogt float %61, 9.843750e-01
  %1772 = select i1 %1771, float -4.000000e+00, float %1300
  %1773 = call float @dx.op.binary.f32(i32 35, float %1772, float 0.000000e+00)  ; FMax(a,b)
  %1774 = fadd fast float %1297, %1773
  %1775 = fmul fast float %1774, %1298
  %1776 = call float @dx.op.unary.f32(i32 23, float %1775)  ; Log(value)
  %1777 = fmul fast float %1299, %1776
  %1778 = fmul fast float %1777, %1307
  %1779 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  %1780 = uitofp i32 %1765 to float
  %1781 = uitofp i32 %1768 to float
  %1782 = fadd fast float %1780, 5.000000e-01
  %1783 = fadd fast float %1781, 5.000000e-01
  %1784 = fmul fast float %1307, %1782
  %1785 = fmul fast float %1307, %1783
  %1786 = fadd fast float %1784, 0x3F0FFB4800000000
  %1787 = fadd fast float %1785, 0xBF0FFB4800000000
  %1788 = call float @dx.op.binary.f32(i32 35, float %1779, float %1786)  ; FMax(a,b)
  %1789 = call float @dx.op.binary.f32(i32 36, float %1788, float %1787)  ; FMin(a,b)
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1793 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1794 = select i1 %1120, float %1793, float 0.000000e+00
  %1795 = fmul fast float %1791, %1789
  %1796 = fadd fast float %1794, %1795
  %1797 = fadd fast float %1794, %1792
  %1798 = fsub fast float %1791, %1792
  %1799 = fadd fast float %1798, %1794
  %1800 = call float @dx.op.binary.f32(i32 35, float %1796, float %1797)  ; FMax(a,b)
  %1801 = call float @dx.op.binary.f32(i32 36, float %1800, float %1799)  ; FMin(a,b)
  %1802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1740, float %1741, float %1801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.ResRet.f32 %1802, 1
  %1805 = extractvalue %dx.types.ResRet.f32 %1802, 2
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 1
  %1808 = fmul fast float %1807, %1803
  %1809 = fmul fast float %1807, %1804
  %1810 = fmul fast float %1807, %1805
  br label %1811

; <label>:1811                                    ; preds = %1770, %1734
  %1812 = phi float [ %1808, %1770 ], [ 1.000000e+00, %1734 ]
  %1813 = phi float [ %1809, %1770 ], [ 1.000000e+00, %1734 ]
  %1814 = phi float [ %1810, %1770 ], [ 1.000000e+00, %1734 ]
  %1815 = fmul fast float %1812, %1718
  %1816 = fmul fast float %1813, %1719
  %1817 = fmul fast float %1814, %1720
  br label %1818

; <label>:1818                                    ; preds = %1811, %1701
  %1819 = phi float [ %1815, %1811 ], [ %1718, %1701 ]
  %1820 = phi float [ %1816, %1811 ], [ %1719, %1701 ]
  %1821 = phi float [ %1817, %1811 ], [ %1720, %1701 ]
  %1822 = and i32 %159, 2097152
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1828, label %1824, !dx.controlflow.hints !83

; <label>:1824                                    ; preds = %1818
  %1825 = add i32 %156, 192
  %1826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  br label %1831

; <label>:1828                                    ; preds = %1818
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 3
  br label %1831

; <label>:1831                                    ; preds = %1828, %1824
  %1832 = phi float [ %1827, %1824 ], [ %1830, %1828 ]
  %1833 = fmul fast float %1041, %673
  %1834 = fmul fast float %1833, %1132
  %1835 = fmul fast float %1834, %1268
  %1836 = fmul fast float %1042, %673
  %1837 = fmul fast float %1836, %1133
  %1838 = fmul fast float %1837, %1268
  %1839 = fmul fast float %1043, %673
  %1840 = fmul fast float %1839, %1134
  %1841 = fmul fast float %1840, %1268
  br i1 %1115, label %1842, label %1975

; <label>:1842                                    ; preds = %1831
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1846 = fmul fast float %1844, %69
  %1847 = fmul fast float %1845, %70
  %1848 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %1849 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1850 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1848, float %1849, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.ResRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.ResRet.f32 %1850, 2
  %1854 = extractvalue %dx.types.ResRet.f32 %1850, 3
  %1855 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1848, float %1849, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1856 = extractvalue %dx.types.ResRet.f32 %1855, 0
  %1857 = extractvalue %dx.types.ResRet.f32 %1855, 1
  %1858 = extractvalue %dx.types.ResRet.f32 %1855, 2
  %1859 = extractvalue %dx.types.ResRet.f32 %1855, 3
  %1860 = call float @dx.op.binary.f32(i32 35, float %1852, float %1853)  ; FMax(a,b)
  %1861 = call float @dx.op.binary.f32(i32 35, float %1851, float %1860)  ; FMax(a,b)
  %1862 = call float @dx.op.binary.f32(i32 35, float %1861, float %1854)  ; FMax(a,b)
  %1863 = call float @dx.op.binary.f32(i32 36, float %1857, float %1858)  ; FMin(a,b)
  %1864 = call float @dx.op.binary.f32(i32 36, float %1856, float %1863)  ; FMin(a,b)
  %1865 = call float @dx.op.binary.f32(i32 36, float %1864, float %1859)  ; FMin(a,b)
  %1866 = fmul fast float %1862, 2.550000e+02
  %1867 = fadd fast float %1866, 0x3F70101020000000
  %1868 = fptoui float %1867 to i32
  %1869 = fmul fast float %1865, 2.550000e+02
  %1870 = fadd fast float %1869, 0x3F70101020000000
  %1871 = fptoui float %1870 to i32
  %1872 = icmp ult i32 %1868, %1871
  br i1 %1872, label %1873, label %1917

; <label>:1873                                    ; preds = %1842
  %1874 = fcmp fast ogt float %61, 9.843750e-01
  %1875 = select i1 %1874, float -4.000000e+00, float %1300
  %1876 = call float @dx.op.binary.f32(i32 35, float %1875, float 0.000000e+00)  ; FMax(a,b)
  %1877 = fadd fast float %1297, %1876
  %1878 = fmul fast float %1877, %1298
  %1879 = call float @dx.op.unary.f32(i32 23, float %1878)  ; Log(value)
  %1880 = fmul fast float %1299, %1879
  %1881 = fmul fast float %1880, %1307
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = uitofp i32 %1868 to float
  %1884 = uitofp i32 %1871 to float
  %1885 = fadd fast float %1883, 5.000000e-01
  %1886 = fadd fast float %1884, 5.000000e-01
  %1887 = fmul fast float %1307, %1885
  %1888 = fmul fast float %1307, %1886
  %1889 = fadd fast float %1887, 0x3F0FFB4800000000
  %1890 = fadd fast float %1888, 0xBF0FFB4800000000
  %1891 = call float @dx.op.binary.f32(i32 35, float %1882, float %1889)  ; FMax(a,b)
  %1892 = call float @dx.op.binary.f32(i32 36, float %1891, float %1890)  ; FMin(a,b)
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 1
  %1895 = extractvalue %dx.types.CBufRet.f32 %1893, 2
  %1896 = extractvalue %dx.types.CBufRet.f32 %1893, 0
  %1897 = fmul fast float %1894, %1892
  %1898 = fadd fast float %1896, %1897
  %1899 = fadd fast float %1896, %1895
  %1900 = fsub fast float %1894, %1895
  %1901 = fadd fast float %1900, %1896
  %1902 = call float @dx.op.binary.f32(i32 35, float %1898, float %1899)  ; FMax(a,b)
  %1903 = call float @dx.op.binary.f32(i32 36, float %1902, float %1901)  ; FMin(a,b)
  %1904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1848, float %1849, float %1903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.ResRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.ResRet.f32 %1904, 2
  %1908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1848, float %1849, float %1903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 1
  %1914 = fmul fast float %1913, %1909
  %1915 = fmul fast float %1913, %1910
  %1916 = fmul fast float %1913, %1911
  br label %1917

; <label>:1917                                    ; preds = %1873, %1842
  %1918 = phi float [ %1905, %1873 ], [ 1.000000e+00, %1842 ]
  %1919 = phi float [ %1906, %1873 ], [ 1.000000e+00, %1842 ]
  %1920 = phi float [ %1907, %1873 ], [ 1.000000e+00, %1842 ]
  %1921 = phi float [ %1914, %1873 ], [ 0.000000e+00, %1842 ]
  %1922 = phi float [ %1915, %1873 ], [ 0.000000e+00, %1842 ]
  %1923 = phi float [ %1916, %1873 ], [ 0.000000e+00, %1842 ]
  %1924 = fmul fast float %1921, %1723
  %1925 = fmul fast float %1922, %1723
  %1926 = fmul fast float %1923, %1723
  %1927 = call float @dx.op.dot3.f32(i32 55, float %1918, float %1919, float %1920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1928 = call float @dx.op.dot3.f32(i32 55, float %1924, float %1925, float %1926, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1929 = select i1 %139, float %1927, float %1918
  %1930 = select i1 %139, float %1927, float %1919
  %1931 = select i1 %139, float 1.000000e+00, float %1920
  %1932 = select i1 %139, float %1928, float %1924
  %1933 = select i1 %139, float 0.000000e+00, float %1925
  %1934 = select i1 %139, float 0.000000e+00, float %1926
  %1935 = fmul fast float %1929, %1835
  %1936 = fmul fast float %1930, %1838
  %1937 = fmul fast float %1931, %1841
  %1938 = fadd fast float %1935, %1932
  %1939 = fadd fast float %1936, %1933
  %1940 = fadd fast float %1934, %1937
  %1941 = fmul fast float %1929, %1819
  %1942 = fmul fast float %1930, %1820
  %1943 = fmul fast float %1931, %1821
  %1944 = fmul fast float %74, %1844
  %1945 = fmul fast float %76, %1845
  %1946 = fsub fast float 1.000000e+00, %1944
  %1947 = fsub fast float 1.000000e+00, %1945
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1952 = fmul fast float %1946, %1949
  %1953 = fmul fast float %1946, %1950
  %1954 = fmul fast float %1946, %1951
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1958 = extractvalue %dx.types.CBufRet.f32 %1955, 2
  %1959 = fmul fast float %1947, %1956
  %1960 = fmul fast float %1947, %1957
  %1961 = fmul fast float %1947, %1958
  %1962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.f32 %1962, 0
  %1964 = extractvalue %dx.types.CBufRet.f32 %1962, 1
  %1965 = extractvalue %dx.types.CBufRet.f32 %1962, 2
  %1966 = fadd fast float %1959, %1963
  %1967 = fadd fast float %1966, %1952
  %1968 = fadd fast float %1960, %1964
  %1969 = fadd fast float %1968, %1953
  %1970 = fadd fast float %1961, %1965
  %1971 = fadd fast float %1970, %1954
  %1972 = fmul fast float %1967, %1112
  %1973 = fmul fast float %1969, %1112
  %1974 = fmul fast float %1971, %1112
  br label %1975

; <label>:1975                                    ; preds = %1917, %1831
  %1976 = phi float [ %1972, %1917 ], [ %104, %1831 ]
  %1977 = phi float [ %1973, %1917 ], [ %105, %1831 ]
  %1978 = phi float [ %1974, %1917 ], [ %106, %1831 ]
  %1979 = phi float [ %1112, %1917 ], [ %62, %1831 ]
  %1980 = phi float [ %1938, %1917 ], [ %1835, %1831 ]
  %1981 = phi float [ %1939, %1917 ], [ %1838, %1831 ]
  %1982 = phi float [ %1940, %1917 ], [ %1841, %1831 ]
  %1983 = phi float [ %1941, %1917 ], [ %1819, %1831 ]
  %1984 = phi float [ %1942, %1917 ], [ %1820, %1831 ]
  %1985 = phi float [ %1943, %1917 ], [ %1821, %1831 ]
  %1986 = phi float [ %1918, %1917 ], [ 1.000000e+00, %1831 ]
  br i1 %1120, label %3042, label %1987

; <label>:1987                                    ; preds = %1975
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1992 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.CBufRet.f32 %1993, 2
  %1997 = extractvalue %dx.types.CBufRet.f32 %1993, 3
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 0
  %2000 = extractvalue %dx.types.CBufRet.f32 %1998, 1
  %2001 = extractvalue %dx.types.CBufRet.f32 %1998, 2
  %2002 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %2004 = extractvalue %dx.types.CBufRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.CBufRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.CBufRet.f32 %2003, 2
  %2007 = extractvalue %dx.types.CBufRet.f32 %2003, 3
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 3
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2010, 3
  %2012 = extractvalue %dx.types.CBufRet.f32 %2010, 0
  %2013 = extractvalue %dx.types.CBufRet.f32 %2010, 1
  %2014 = extractvalue %dx.types.CBufRet.f32 %2010, 2
  %2015 = fcmp fast olt float %2014, -5.000000e-01
  %2016 = call float @dx.op.dot3.f32(i32 55, float %1976, float %1977, float %1978, float %1976, float %1977, float %1978)  ; Dot3(ax,ay,az,bx,by,bz)
  %2017 = call float @dx.op.unary.f32(i32 25, float %2016)  ; Rsqrt(value)
  %2018 = fmul fast float %2017, %2016
  %2019 = fmul fast float %2017, %1976
  %2020 = fmul fast float %2017, %1977
  %2021 = fmul fast float %2017, %1978
  %2022 = fadd fast float %2018, %1992
  %2023 = call float @dx.op.dot3.f32(i32 55, float %2019, float %2020, float %2021, float %1989, float %1990, float %1991)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.i32 %2024, 1
  %2026 = and i32 %2025, 1
  %2027 = icmp ne i32 %2026, 0
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 2
  %2030 = fcmp fast ogt float %2029, 0.000000e+00
  %2031 = and i1 %2027, %2030
  br i1 %2031, label %2032, label %2438, !dx.controlflow.hints !84

; <label>:2032                                    ; preds = %1987
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 3
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 2
  %2039 = fsub fast float %2036, %2038
  %2040 = and i32 %2025, 2
  %2041 = extractvalue %dx.types.CBufRet.i32 %2024, 0
  %2042 = call i32 @dx.op.binary.i32(i32 40, i32 %2041, i32 3)  ; UMin(a,b)
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2046 = extractvalue %dx.types.CBufRet.f32 %2037, 0
  %2047 = extractvalue %dx.types.CBufRet.f32 %2037, 1
  %2048 = fsub fast float %2044, %2046
  %2049 = fsub fast float %2045, %2047
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = fcmp fast ogt float %2051, 0.000000e+00
  %2053 = fsub fast float -0.000000e+00, %2048
  %2054 = fsub fast float -0.000000e+00, %2049
  %2055 = call float @dx.op.dot2.f32(i32 54, float %2019, float %2020, float %2019, float %2020)  ; Dot2(ax,ay,bx,by)
  %2056 = call float @dx.op.dot2.f32(i32 54, float %2019, float %2020, float %2053, float %2054)  ; Dot2(ax,ay,bx,by)
  %2057 = fmul fast float %2056, 2.000000e+00
  %2058 = call float @dx.op.dot2.f32(i32 54, float %2053, float %2054, float %2053, float %2054)  ; Dot2(ax,ay,bx,by)
  %2059 = fmul fast float %2051, %2051
  %2060 = fsub fast float %2058, %2059
  %2061 = fmul fast float %2057, %2057
  %2062 = fmul fast float %2055, 4.000000e+00
  %2063 = fmul fast float %2062, %2060
  %2064 = fsub fast float %2061, %2063
  %2065 = fcmp fast ogt float %2064, 0.000000e+00
  br i1 %2065, label %2066, label %2081

; <label>:2066                                    ; preds = %2032
  %2067 = fcmp fast ogt float %2057, 0.000000e+00
  %2068 = call float @dx.op.unary.f32(i32 24, float %2064)  ; Sqrt(value)
  %2069 = fsub fast float -0.000000e+00, %2068
  %2070 = select i1 %2067, float %2068, float %2069
  %2071 = fadd fast float %2070, %2057
  %2072 = fmul float %2071, -5.000000e-01
  %2073 = fdiv fast float %2072, %2055
  %2074 = call float @dx.op.binary.f32(i32 35, float %2073, float 0.000000e+00)  ; FMax(a,b)
  %2075 = call float @dx.op.binary.f32(i32 36, float %2018, float %2074)  ; FMin(a,b)
  %2076 = fdiv fast float %2060, %2072
  %2077 = call float @dx.op.binary.f32(i32 35, float %2076, float 0.000000e+00)  ; FMax(a,b)
  %2078 = call float @dx.op.binary.f32(i32 36, float %2018, float %2077)  ; FMin(a,b)
  %2079 = call float @dx.op.binary.f32(i32 36, float %2075, float %2078)  ; FMin(a,b)
  %2080 = call float @dx.op.binary.f32(i32 35, float %2075, float %2078)  ; FMax(a,b)
  br label %2081

; <label>:2081                                    ; preds = %2066, %2032
  %2082 = phi float [ %2080, %2066 ], [ -1.000000e+00, %2032 ]
  %2083 = phi float [ %2079, %2066 ], [ -1.000000e+00, %2032 ]
  %2084 = phi i1 [ true, %2066 ], [ false, %2032 ]
  %2085 = and i1 %2052, %2084
  br i1 %2085, label %2086, label %2088

; <label>:2086                                    ; preds = %2081
  %2087 = fcmp fast oeq float %2083, %2082
  br i1 %2087, label %2391, label %2089

; <label>:2088                                    ; preds = %2081
  br i1 %2052, label %2391, label %2089

; <label>:2089                                    ; preds = %2088, %2086
  %2090 = phi float [ %2018, %2088 ], [ %2082, %2086 ]
  %2091 = phi float [ 0.000000e+00, %2088 ], [ %2083, %2086 ]
  %2092 = icmp ne i32 %2040, 0
  %2093 = fmul fast float %2090, %2021
  %2094 = fadd fast float %2093, %2034
  %2095 = fmul fast float %2094, %2090
  %2096 = select i1 %2092, float 0.000000e+00, float %2095
  %2097 = fcmp fast oeq float %2021, 0.000000e+00
  %2098 = fdiv fast float %2039, %2021
  %2099 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2098)  ; FMax(a,b)
  %2100 = select i1 %2097, float %2090, float %2099
  %2101 = call float @dx.op.binary.f32(i32 36, float %2090, float %2100)  ; FMin(a,b)
  %2102 = fcmp fast ogt float %2021, 0.000000e+00
  %2103 = fcmp fast olt float %2039, 0.000000e+00
  br i1 %2102, label %2104, label %2161

; <label>:2104                                    ; preds = %2089
  %2105 = icmp eq i32 %2040, 0
  br i1 %2103, label %2106, label %2150

; <label>:2106                                    ; preds = %2104
  %2107 = select i1 %2105, float %2090, float 0.000000e+00
  %2108 = fsub fast float -0.000000e+00, %2107
  %2109 = call float @dx.op.unary.f32(i32 6, float %2108)  ; FAbs(value)
  %2110 = fmul fast float %2107, %2021
  %2111 = fadd fast float %2110, %2034
  %2112 = fmul fast float %2109, %2111
  %2113 = fsub fast float %2096, %2112
  %2114 = fsub fast float %2090, %2109
  %2115 = select i1 %2105, float %2114, float 0.000000e+00
  %2116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2117 = extractvalue %dx.types.CBufRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.CBufRet.f32 %2116, 1
  %2119 = extractvalue %dx.types.CBufRet.f32 %2116, 2
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 0
  %2122 = extractvalue %dx.types.CBufRet.f32 %2120, 1
  %2123 = extractvalue %dx.types.CBufRet.f32 %2120, 2
  %2124 = extractvalue %dx.types.CBufRet.f32 %2120, 3
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 3
  %2127 = call float @dx.op.binary.f32(i32 36, float %2113, float %2126)  ; FMin(a,b)
  %2128 = fmul fast float %2124, %2115
  %2129 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2130 = fsub fast float %2121, %2117
  %2131 = fsub fast float %2122, %2118
  %2132 = fsub fast float %2123, %2119
  %2133 = fmul fast float %2129, %2130
  %2134 = fmul fast float %2129, %2131
  %2135 = fmul fast float %2129, %2132
  %2136 = fadd fast float %2133, %2117
  %2137 = fadd fast float %2134, %2118
  %2138 = fadd fast float %2135, %2119
  %2139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.CBufRet.f32 %2139, 1
  %2142 = fadd fast float %2141, %2140
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2139, 2
  %2145 = extractvalue %dx.types.CBufRet.f32 %2139, 3
  %2146 = fadd fast float %2145, %2144
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2148 = fmul fast float %2143, %2127
  %2149 = fmul fast float %2148, %2147
  br label %2391

; <label>:2150                                    ; preds = %2104
  br i1 %2105, label %2151, label %2172

; <label>:2151                                    ; preds = %2150
  %2152 = call float @dx.op.binary.f32(i32 36, float %2101, float %2091)  ; FMin(a,b)
  %2153 = fsub fast float %2101, %2152
  %2154 = fsub fast float %2153, %2090
  %2155 = call float @dx.op.unary.f32(i32 6, float %2154)  ; FAbs(value)
  %2156 = fadd fast float %2153, %2090
  %2157 = fmul fast float %2156, %2021
  %2158 = fadd fast float %2157, %2034
  %2159 = fmul fast float %2158, %2155
  %2160 = fsub fast float %2096, %2159
  br label %2172

; <label>:2161                                    ; preds = %2089
  br i1 %2103, label %2162, label %2172

; <label>:2162                                    ; preds = %2161
  %2163 = call float @dx.op.binary.f32(i32 35, float %2091, float %2101)  ; FMax(a,b)
  %2164 = icmp eq i32 %2040, 0
  %2165 = select i1 %2164, float %2101, float 0.000000e+00
  %2166 = fsub fast float -0.000000e+00, %2165
  %2167 = call float @dx.op.unary.f32(i32 6, float %2166)  ; FAbs(value)
  %2168 = fmul fast float %2165, %2021
  %2169 = fadd fast float %2168, %2034
  %2170 = fmul fast float %2167, %2169
  %2171 = fsub fast float %2096, %2170
  br label %2172

; <label>:2172                                    ; preds = %2162, %2161, %2151, %2150
  %2173 = phi float [ %2091, %2150 ], [ %2091, %2151 ], [ %2163, %2162 ], [ %2091, %2161 ]
  %2174 = phi float [ 0.000000e+00, %2150 ], [ %2155, %2151 ], [ %2167, %2162 ], [ 0.000000e+00, %2161 ]
  %2175 = phi float [ %2096, %2150 ], [ %2160, %2151 ], [ %2171, %2162 ], [ %2096, %2161 ]
  %2176 = phi float [ %2101, %2150 ], [ %2101, %2151 ], [ %2090, %2162 ], [ %2090, %2161 ]
  %2177 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 0
  store float -1.000000e+00, float* %2177, align 4, !tbaa !85, !noalias !89
  %2178 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 1
  store float -1.000000e+00, float* %2178, align 4, !tbaa !85, !noalias !89
  %2179 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 2
  store float -1.000000e+00, float* %2179, align 4, !tbaa !85, !noalias !89
  %2180 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 0
  store float -1.000000e+00, float* %2180, align 4, !tbaa !85, !noalias !89
  %2181 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 1
  store float -1.000000e+00, float* %2181, align 4, !tbaa !85, !noalias !89
  %2182 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 2
  store float -1.000000e+00, float* %2182, align 4, !tbaa !85, !noalias !89
  %2183 = icmp sgt i32 %2042, 0
  br i1 %2183, label %2184, label %2245

; <label>:2184                                    ; preds = %2172
  br label %2185

; <label>:2185                                    ; preds = %2234, %2184
  %2186 = phi i32 [ %2235, %2234 ], [ 0, %2184 ]
  %2187 = phi i32 [ %2236, %2234 ], [ 0, %2184 ]
  %2188 = add nuw i32 %2187, 171
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2188)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.CBufRet.f32 %2189, 1
  %2192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2193 = extractvalue %dx.types.CBufRet.f32 %2192, 0
  %2194 = extractvalue %dx.types.CBufRet.f32 %2192, 1
  %2195 = fsub fast float %2190, %2193
  %2196 = fsub fast float %2191, %2194
  %2197 = extractvalue %dx.types.CBufRet.f32 %2189, 2
  %2198 = fsub fast float -0.000000e+00, %2195
  %2199 = fsub fast float -0.000000e+00, %2196
  %2200 = call float @dx.op.dot2.f32(i32 54, float %2019, float %2020, float %2198, float %2199)  ; Dot2(ax,ay,bx,by)
  %2201 = fmul fast float %2200, 2.000000e+00
  %2202 = call float @dx.op.dot2.f32(i32 54, float %2198, float %2199, float %2198, float %2199)  ; Dot2(ax,ay,bx,by)
  %2203 = fmul fast float %2197, %2197
  %2204 = fsub fast float %2202, %2203
  %2205 = fmul fast float %2201, %2201
  %2206 = fmul fast float %2062, %2204
  %2207 = fsub fast float %2205, %2206
  %2208 = fcmp fast ogt float %2207, 0.000000e+00
  br i1 %2208, label %2209, label %2224

; <label>:2209                                    ; preds = %2185
  %2210 = fcmp fast ogt float %2201, 0.000000e+00
  %2211 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2212 = fsub fast float -0.000000e+00, %2211
  %2213 = select i1 %2210, float %2211, float %2212
  %2214 = fadd fast float %2213, %2201
  %2215 = fmul float %2214, -5.000000e-01
  %2216 = fdiv fast float %2215, %2055
  %2217 = call float @dx.op.binary.f32(i32 35, float %2216, float 0.000000e+00)  ; FMax(a,b)
  %2218 = call float @dx.op.binary.f32(i32 36, float %2090, float %2217)  ; FMin(a,b)
  %2219 = fdiv fast float %2204, %2215
  %2220 = call float @dx.op.binary.f32(i32 35, float %2219, float 0.000000e+00)  ; FMax(a,b)
  %2221 = call float @dx.op.binary.f32(i32 36, float %2090, float %2220)  ; FMin(a,b)
  %2222 = call float @dx.op.binary.f32(i32 36, float %2218, float %2221)  ; FMin(a,b)
  %2223 = call float @dx.op.binary.f32(i32 35, float %2218, float %2221)  ; FMax(a,b)
  br label %2224

; <label>:2224                                    ; preds = %2209, %2185
  %2225 = phi float [ %2223, %2209 ], [ -1.000000e+00, %2185 ]
  %2226 = phi float [ %2222, %2209 ], [ -1.000000e+00, %2185 ]
  %2227 = phi i1 [ true, %2209 ], [ false, %2185 ]
  br i1 %2227, label %2228, label %2234

; <label>:2228                                    ; preds = %2224
  %2229 = call float @dx.op.binary.f32(i32 35, float %2173, float %2226)  ; FMax(a,b)
  %2230 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2187
  store float %2229, float* %2230, align 4, !tbaa !85, !noalias !89
  %2231 = call float @dx.op.binary.f32(i32 35, float %2173, float %2225)  ; FMax(a,b)
  %2232 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 %2187
  store float %2231, float* %2232, align 4, !tbaa !85, !noalias !89
  %2233 = add nsw i32 %2186, 1
  br label %2234

; <label>:2234                                    ; preds = %2228, %2224
  %2235 = phi i32 [ %2233, %2228 ], [ %2186, %2224 ]
  %2236 = add nuw nsw i32 %2187, 1
  %2237 = icmp eq i32 %2236, %2042
  br i1 %2237, label %2238, label %2185

; <label>:2238                                    ; preds = %2234
  %2239 = load float, float* %2179, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2240 = load float, float* %2178, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  %2241 = load float, float* %2177, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  %2242 = load float, float* %2182, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2243 = load float, float* %2181, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  %2244 = load float, float* %2180, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  br label %2245

; <label>:2245                                    ; preds = %2238, %2172
  %2246 = phi float [ -1.000000e+00, %2172 ], [ %2244, %2238 ]
  %2247 = phi float [ -1.000000e+00, %2172 ], [ %2243, %2238 ]
  %2248 = phi float [ -1.000000e+00, %2172 ], [ %2242, %2238 ]
  %2249 = phi float [ -1.000000e+00, %2172 ], [ %2241, %2238 ]
  %2250 = phi float [ -1.000000e+00, %2172 ], [ %2240, %2238 ]
  %2251 = phi float [ -1.000000e+00, %2172 ], [ %2239, %2238 ]
  %2252 = phi i32 [ 0, %2172 ], [ %2235, %2238 ]
  %2253 = call float @dx.op.binary.f32(i32 36, float %2250, float %2251)  ; FMin(a,b)
  %2254 = call float @dx.op.binary.f32(i32 36, float %2249, float %2253)  ; FMin(a,b)
  %2255 = call float @dx.op.binary.f32(i32 35, float %2249, float %2250)  ; FMax(a,b)
  %2256 = call float @dx.op.binary.f32(i32 36, float %2255, float %2251)  ; FMin(a,b)
  %2257 = call float @dx.op.binary.f32(i32 36, float %2249, float %2250)  ; FMin(a,b)
  %2258 = call float @dx.op.binary.f32(i32 35, float %2257, float %2256)  ; FMax(a,b)
  %2259 = call float @dx.op.binary.f32(i32 35, float %2250, float %2251)  ; FMax(a,b)
  %2260 = call float @dx.op.binary.f32(i32 35, float %2249, float %2259)  ; FMax(a,b)
  store float %2254, float* %2177, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  store float %2258, float* %2178, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  store float %2260, float* %2179, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2261 = call float @dx.op.binary.f32(i32 36, float %2247, float %2248)  ; FMin(a,b)
  %2262 = call float @dx.op.binary.f32(i32 36, float %2246, float %2261)  ; FMin(a,b)
  %2263 = call float @dx.op.binary.f32(i32 35, float %2246, float %2247)  ; FMax(a,b)
  %2264 = call float @dx.op.binary.f32(i32 36, float %2263, float %2248)  ; FMin(a,b)
  %2265 = call float @dx.op.binary.f32(i32 36, float %2246, float %2247)  ; FMin(a,b)
  %2266 = call float @dx.op.binary.f32(i32 35, float %2265, float %2264)  ; FMax(a,b)
  %2267 = call float @dx.op.binary.f32(i32 35, float %2247, float %2248)  ; FMax(a,b)
  %2268 = call float @dx.op.binary.f32(i32 35, float %2246, float %2267)  ; FMax(a,b)
  store float %2262, float* %2180, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  store float %2266, float* %2181, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  store float %2268, float* %2182, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2269 = sub nsw i32 3, %2252
  %2270 = icmp sgt i32 %2269, 2
  br i1 %2270, label %2271, label %2309

; <label>:2271                                    ; preds = %2245
  %2272 = icmp eq i32 %2040, 0
  %2273 = fsub fast float %2090, %2174
  %2274 = select i1 %2272, float %2273, float %2174
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 0
  %2277 = extractvalue %dx.types.CBufRet.f32 %2275, 1
  %2278 = extractvalue %dx.types.CBufRet.f32 %2275, 2
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.CBufRet.f32 %2279, 2
  %2283 = extractvalue %dx.types.CBufRet.f32 %2279, 3
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 3
  %2286 = call float @dx.op.binary.f32(i32 36, float %2175, float %2285)  ; FMin(a,b)
  %2287 = fmul fast float %2283, %2274
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = fsub fast float %2280, %2276
  %2290 = fsub fast float %2281, %2277
  %2291 = fsub fast float %2282, %2278
  %2292 = fmul fast float %2288, %2289
  %2293 = fmul fast float %2288, %2290
  %2294 = fmul fast float %2288, %2291
  %2295 = fadd fast float %2292, %2276
  %2296 = fadd fast float %2293, %2277
  %2297 = fadd fast float %2294, %2278
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2301 = fadd fast float %2300, %2299
  %2302 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2304 = extractvalue %dx.types.CBufRet.f32 %2298, 3
  %2305 = fadd fast float %2304, %2303
  %2306 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2307 = fmul fast float %2302, %2286
  %2308 = fmul fast float %2307, %2306
  br label %2391

; <label>:2309                                    ; preds = %2245
  %2310 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2269
  %2311 = load float, float* %2310, align 4, !tbaa !85, !noalias !89
  %2312 = fcmp fast olt float %2311, %2176
  %2313 = icmp sgt i32 %2252, 0
  %2314 = and i1 %2313, %2312
  br i1 %2314, label %2315, label %2352

; <label>:2315                                    ; preds = %2309
  br label %2316

; <label>:2316                                    ; preds = %2345, %2315
  %2317 = phi float [ %2346, %2345 ], [ %2174, %2315 ]
  %2318 = phi float [ %2347, %2345 ], [ %2175, %2315 ]
  %2319 = phi float [ %2327, %2345 ], [ %2311, %2315 ]
  %2320 = phi i32 [ %2324, %2345 ], [ %2269, %2315 ]
  %2321 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 %2320
  %2322 = load float, float* %2321, align 4, !tbaa !85, !noalias !89
  %2323 = icmp slt i32 %2320, 2
  %2324 = add nsw i32 %2320, 1
  %2325 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2324
  %2326 = load float, float* %2325, align 4, !tbaa !85, !noalias !89
  %2327 = select i1 %2323, float %2326, float %2090
  %2328 = call float @dx.op.binary.f32(i32 36, float %2327, float %2322)  ; FMin(a,b)
  %2329 = call float @dx.op.binary.f32(i32 36, float %2176, float %2328)  ; FMin(a,b)
  %2330 = icmp eq i32 %2040, 0
  %2331 = fadd fast float %2329, %2319
  %2332 = fmul fast float %2331, %2021
  %2333 = fadd fast float %2332, %2034
  br i1 %2330, label %2339, label %2334

; <label>:2334                                    ; preds = %2316
  %2335 = fsub fast float %2329, %2319
  %2336 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2335)  ; FMax(a,b)
  %2337 = fmul fast float %2336, %2333
  %2338 = fadd fast float %2337, %2318
  br label %2345

; <label>:2339                                    ; preds = %2316
  %2340 = fsub fast float %2319, %2329
  %2341 = call float @dx.op.unary.f32(i32 6, float %2340)  ; FAbs(value)
  %2342 = fadd fast float %2341, %2317
  %2343 = fmul fast float %2341, %2333
  %2344 = fsub fast float %2318, %2343
  br label %2345

; <label>:2345                                    ; preds = %2339, %2334
  %2346 = phi float [ %2336, %2334 ], [ %2342, %2339 ]
  %2347 = phi float [ %2338, %2334 ], [ %2344, %2339 ]
  %2348 = fcmp fast olt float %2327, %2176
  %2349 = icmp slt i32 %2324, 3
  %2350 = and i1 %2349, %2348
  br i1 %2350, label %2316, label %2351

; <label>:2351                                    ; preds = %2345
  br label %2352

; <label>:2352                                    ; preds = %2351, %2309
  %2353 = phi float [ %2174, %2309 ], [ %2346, %2351 ]
  %2354 = phi float [ %2175, %2309 ], [ %2347, %2351 ]
  %2355 = fsub fast float %2090, %2353
  %2356 = select i1 %2092, float %2353, float %2355
  %2357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.f32 %2357, 0
  %2359 = extractvalue %dx.types.CBufRet.f32 %2357, 1
  %2360 = extractvalue %dx.types.CBufRet.f32 %2357, 2
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.CBufRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.CBufRet.f32 %2361, 2
  %2365 = extractvalue %dx.types.CBufRet.f32 %2361, 3
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 3
  %2368 = call float @dx.op.binary.f32(i32 36, float %2354, float %2367)  ; FMin(a,b)
  %2369 = fmul fast float %2365, %2356
  %2370 = call float @dx.op.unary.f32(i32 7, float %2369)  ; Saturate(value)
  %2371 = fsub fast float %2362, %2358
  %2372 = fsub fast float %2363, %2359
  %2373 = fsub fast float %2364, %2360
  %2374 = fmul fast float %2370, %2371
  %2375 = fmul fast float %2370, %2372
  %2376 = fmul fast float %2370, %2373
  %2377 = fadd fast float %2374, %2358
  %2378 = fadd fast float %2375, %2359
  %2379 = fadd fast float %2376, %2360
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.CBufRet.f32 %2380, 1
  %2383 = fadd fast float %2382, %2381
  %2384 = call float @dx.op.unary.f32(i32 7, float %2383)  ; Saturate(value)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2380, 2
  %2386 = extractvalue %dx.types.CBufRet.f32 %2380, 3
  %2387 = fadd fast float %2386, %2385
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = fmul fast float %2384, %2368
  %2390 = fmul fast float %2389, %2388
  br label %2391

; <label>:2391                                    ; preds = %2352, %2271, %2106, %2088, %2086
  %2392 = phi float [ %2115, %2106 ], [ %2274, %2271 ], [ %2356, %2352 ], [ 0.000000e+00, %2086 ], [ 0.000000e+00, %2088 ]
  %2393 = phi float [ %2149, %2106 ], [ %2308, %2271 ], [ %2390, %2352 ], [ 0.000000e+00, %2086 ], [ 0.000000e+00, %2088 ]
  %2394 = phi float [ %2136, %2106 ], [ %2295, %2271 ], [ %2377, %2352 ], [ 0.000000e+00, %2086 ], [ 0.000000e+00, %2088 ]
  %2395 = phi float [ %2137, %2106 ], [ %2296, %2271 ], [ %2378, %2352 ], [ 0.000000e+00, %2086 ], [ 0.000000e+00, %2088 ]
  %2396 = phi float [ %2138, %2106 ], [ %2297, %2271 ], [ %2379, %2352 ], [ 0.000000e+00, %2086 ], [ 0.000000e+00, %2088 ]
  %2397 = fmul fast float %2029, %2393
  %2398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2399 = extractvalue %dx.types.CBufRet.f32 %2398, 2
  %2400 = fsub fast float %2036, %2399
  %2401 = fcmp fast olt float %2397, -2.000000e+01
  %2402 = call float @dx.op.unary.f32(i32 21, float %2397)  ; Exp(value)
  %2403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2403, 2
  %2405 = extractvalue %dx.types.CBufRet.f32 %2403, 3
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2408 = fmul fast float %2405, %2400
  %2409 = call float @dx.op.unary.f32(i32 7, float %2408)  ; Saturate(value)
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fmul fast float %2021, 5.000000e-01
  %2412 = fadd fast float %2411, 5.000000e-01
  %2413 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2414 = fsub fast float 1.000000e+00, %2413
  %2415 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2410)  ; FMax(a,b)
  %2416 = fdiv fast float %2414, %2415
  %2417 = fsub fast float %2400, %1978
  %2418 = call float @dx.op.unary.f32(i32 6, float %2417)  ; FAbs(value)
  %2419 = fmul fast float %2418, %2404
  %2420 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2421 = fsub fast float 1.000000e+00, %2419
  %2422 = fmul fast float %2421, %2420
  %2423 = fadd fast float %2422, %2419
  %2424 = fmul fast float %2407, %2400
  %2425 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2426 = fsub fast float 1.000000e+00, %2423
  %2427 = fmul fast float %2426, %2425
  %2428 = fadd fast float %2427, %2423
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = fadd fast float %2402, -1.000000e+00
  %2431 = select i1 %2401, float -1.000000e+00, float %2430
  %2432 = fmul fast float %2429, %2431
  %2433 = fadd fast float %2432, 1.000000e+00
  %2434 = fsub fast float -0.000000e+00, %2432
  %2435 = fmul fast float %2394, %2434
  %2436 = fmul fast float %2395, %2434
  %2437 = fmul fast float %2396, %2434
  br label %2438

; <label>:2438                                    ; preds = %2391, %1987
  %2439 = phi float [ %2392, %2391 ], [ 0.000000e+00, %1987 ]
  %2440 = phi float [ %2433, %2391 ], [ 1.000000e+00, %1987 ]
  %2441 = phi float [ %2435, %2391 ], [ 0.000000e+00, %1987 ]
  %2442 = phi float [ %2436, %2391 ], [ 0.000000e+00, %1987 ]
  %2443 = phi float [ %2437, %2391 ], [ 0.000000e+00, %1987 ]
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 1
  %2446 = fsub fast float 1.000000e+00, %2440
  %2447 = fmul fast float %2446, %2022
  %2448 = fmul fast float %2447, %2445
  %2449 = fsub fast float %2022, %2448
  br i1 %2015, label %2450, label %2479, !dx.controlflow.hints !125

; <label>:2450                                    ; preds = %2438
  %2451 = fmul fast float %2023, %2012
  %2452 = fadd fast float %2451, %2013
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2454 = fmul fast float %1994, %2449
  %2455 = fsub fast float -0.000000e+00, %2454
  %2456 = fmul fast float %1995, %2449
  %2457 = fsub fast float -0.000000e+00, %2456
  %2458 = call float @dx.op.unary.f32(i32 21, float %2455)  ; Exp(value)
  %2459 = call float @dx.op.unary.f32(i32 21, float %2457)  ; Exp(value)
  %2460 = call float @dx.op.binary.f32(i32 35, float %2002, float %2458)  ; FMax(a,b)
  %2461 = call float @dx.op.binary.f32(i32 35, float %2002, float %2459)  ; FMax(a,b)
  %2462 = fsub fast float %2461, %2460
  %2463 = fmul fast float %2462, %2453
  %2464 = fadd fast float %2463, %2460
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2466 = fsub fast float %1999, %2004
  %2467 = fsub fast float %2000, %2005
  %2468 = fsub fast float %2001, %2006
  %2469 = fmul fast float %2453, %2466
  %2470 = fmul fast float %2453, %2467
  %2471 = fmul fast float %2453, %2468
  %2472 = fadd fast float %2469, %2004
  %2473 = fadd fast float %2470, %2005
  %2474 = fadd fast float %2471, %2006
  %2475 = fsub fast float 1.000000e+00, %2465
  %2476 = fmul fast float %2475, %2472
  %2477 = fmul fast float %2475, %2473
  %2478 = fmul fast float %2475, %2474
  br label %2538

; <label>:2479                                    ; preds = %2438
  %2480 = fmul fast float %2449, %2011
  %2481 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  %2482 = fsub fast float 2.000000e+00, %2481
  %2483 = fmul fast float %2481, 9.921875e-01
  %2484 = fmul fast float %2483, %2482
  %2485 = fadd fast float %2484, 3.906250e-03
  %2486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2485, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = fsub fast float %2481, %2487
  %2489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2488)  ; FMax(a,b)
  %2490 = fmul fast float %1997, %1978
  %2491 = call float @dx.op.unary.f32(i32 6, float %2490)  ; FAbs(value)
  %2492 = fcmp fast ogt float %2491, 0x3EB0C6F7A0000000
  br i1 %2492, label %2493, label %2499, !dx.controlflow.hints !126

; <label>:2493                                    ; preds = %2479
  %2494 = fmul fast float %2490, 0xBFF7154760000000
  %2495 = call float @dx.op.unary.f32(i32 21, float %2494)  ; Exp(value)
  %2496 = fsub fast float 1.000000e+00, %2495
  %2497 = fdiv fast float %2496, %2490
  %2498 = fmul fast float %2497, %2007
  br label %2499

; <label>:2499                                    ; preds = %2493, %2479
  %2500 = phi float [ %2498, %2493 ], [ %2007, %2479 ]
  %2501 = fadd fast float %2500, %2009
  %2502 = fmul fast float %2501, %2489
  %2503 = fmul fast float %1994, %2502
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = fmul fast float %1995, %2502
  %2506 = fsub fast float -0.000000e+00, %2505
  %2507 = fmul fast float %1996, %2502
  %2508 = fsub fast float -0.000000e+00, %2507
  %2509 = call float @dx.op.unary.f32(i32 21, float %2504)  ; Exp(value)
  %2510 = call float @dx.op.unary.f32(i32 21, float %2506)  ; Exp(value)
  %2511 = call float @dx.op.unary.f32(i32 21, float %2508)  ; Exp(value)
  %2512 = fmul fast float %2023, %2023
  %2513 = fadd fast float %2512, 1.000000e+00
  %2514 = fmul fast float %2513, 0x3FAE8EC8A0000000
  %2515 = fmul fast float %2514, %2004
  %2516 = fmul fast float %2514, %2005
  %2517 = fmul fast float %2514, %2006
  %2518 = fmul fast float %2023, %2002
  %2519 = fsub fast float 1.000000e+00, %2518
  %2520 = fmul fast float %2002, %2002
  %2521 = fsub fast float 1.000000e+00, %2520
  %2522 = fmul fast float %2521, 0x3FB45F3060000000
  %2523 = fmul fast float %2519, %2519
  %2524 = fdiv fast float 1.000000e+00, %2523
  %2525 = fmul fast float %2522, %2524
  %2526 = fmul fast float %2525, %1999
  %2527 = fmul fast float %2525, %2000
  %2528 = fmul fast float %2525, %2001
  %2529 = fadd fast float %2526, %2515
  %2530 = fadd fast float %2527, %2516
  %2531 = fadd fast float %2528, %2517
  %2532 = fsub fast float 1.000000e+00, %2509
  %2533 = fsub fast float 1.000000e+00, %2510
  %2534 = fsub fast float 1.000000e+00, %2511
  %2535 = fmul fast float %2529, %2532
  %2536 = fmul fast float %2530, %2533
  %2537 = fmul fast float %2531, %2534
  br label %2538

; <label>:2538                                    ; preds = %2499, %2450
  %2539 = phi float [ %2476, %2450 ], [ %2535, %2499 ]
  %2540 = phi float [ %2477, %2450 ], [ %2536, %2499 ]
  %2541 = phi float [ %2478, %2450 ], [ %2537, %2499 ]
  %2542 = phi float [ %2465, %2450 ], [ %2509, %2499 ]
  %2543 = phi float [ %2465, %2450 ], [ %2510, %2499 ]
  %2544 = phi float [ %2465, %2450 ], [ %2511, %2499 ]
  br i1 %2031, label %2545, label %2743, !dx.controlflow.hints !127

; <label>:2545                                    ; preds = %2538
  %2546 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2547 = fmul fast float %2546, %2446
  %2548 = fsub fast float %2441, %2539
  %2549 = fsub fast float %2442, %2540
  %2550 = fsub fast float %2443, %2541
  %2551 = fmul fast float %2547, %2548
  %2552 = fmul fast float %2547, %2549
  %2553 = fmul fast float %2547, %2550
  %2554 = fadd fast float %2551, %2539
  %2555 = fadd fast float %2552, %2540
  %2556 = fadd fast float %2553, %2541
  %2557 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2542)  ; FMax(a,b)
  %2558 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2543)  ; FMax(a,b)
  %2559 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2544)  ; FMax(a,b)
  %2560 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2440)  ; FMax(a,b)
  %2561 = call float @dx.op.binary.f32(i32 35, float %2439, float %2449)  ; FMax(a,b)
  %2562 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2561)  ; FMax(a,b)
  %2563 = fdiv fast float %2439, %2562
  %2564 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  %2565 = fdiv fast float %2449, %2562
  %2566 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2567 = fcmp fast une float %2560, 1.000000e+00
  br i1 %2567, label %2568, label %2581, !dx.controlflow.hints !128

; <label>:2568                                    ; preds = %2545
  %2569 = call float @dx.op.unary.f32(i32 23, float %2560)  ; Log(value)
  %2570 = fmul fast float %2569, 0x3FE62E4300000000
  %2571 = fmul fast float %2441, %2570
  %2572 = fsub fast float -0.000000e+00, %2571
  %2573 = fmul fast float %2442, %2570
  %2574 = fsub fast float -0.000000e+00, %2573
  %2575 = fmul fast float %2443, %2570
  %2576 = fsub fast float -0.000000e+00, %2575
  %2577 = fsub fast float 1.000000e+00, %2560
  %2578 = fdiv fast float %2572, %2577
  %2579 = fdiv fast float %2574, %2577
  %2580 = fdiv fast float %2576, %2577
  br label %2581

; <label>:2581                                    ; preds = %2568, %2545
  %2582 = phi float [ %2578, %2568 ], [ %2441, %2545 ]
  %2583 = phi float [ %2579, %2568 ], [ %2442, %2545 ]
  %2584 = phi float [ %2580, %2568 ], [ %2443, %2545 ]
  %2585 = phi float [ %2570, %2568 ], [ 0.000000e+00, %2545 ]
  %2586 = fcmp fast une float %2557, 1.000000e+00
  br i1 %2586, label %2587, label %2594, !dx.controlflow.hints !129

; <label>:2587                                    ; preds = %2581
  %2588 = call float @dx.op.unary.f32(i32 23, float %2557)  ; Log(value)
  %2589 = fmul fast float %2588, 0x3FE62E4300000000
  %2590 = fmul fast float %2554, %2589
  %2591 = fsub fast float -0.000000e+00, %2590
  %2592 = fsub fast float 1.000000e+00, %2557
  %2593 = fdiv fast float %2591, %2592
  br label %2594

; <label>:2594                                    ; preds = %2587, %2581
  %2595 = phi float [ %2593, %2587 ], [ %2554, %2581 ]
  %2596 = phi float [ %2589, %2587 ], [ 0.000000e+00, %2581 ]
  %2597 = fcmp fast une float %2558, 1.000000e+00
  br i1 %2597, label %2598, label %2605, !dx.controlflow.hints !129

; <label>:2598                                    ; preds = %2594
  %2599 = call float @dx.op.unary.f32(i32 23, float %2558)  ; Log(value)
  %2600 = fmul fast float %2599, 0x3FE62E4300000000
  %2601 = fmul fast float %2555, %2600
  %2602 = fsub fast float -0.000000e+00, %2601
  %2603 = fsub fast float 1.000000e+00, %2558
  %2604 = fdiv fast float %2602, %2603
  br label %2605

; <label>:2605                                    ; preds = %2598, %2594
  %2606 = phi float [ %2604, %2598 ], [ %2555, %2594 ]
  %2607 = phi float [ %2600, %2598 ], [ 0.000000e+00, %2594 ]
  %2608 = fcmp fast une float %2559, 1.000000e+00
  br i1 %2608, label %2609, label %2616, !dx.controlflow.hints !129

; <label>:2609                                    ; preds = %2605
  %2610 = call float @dx.op.unary.f32(i32 23, float %2559)  ; Log(value)
  %2611 = fmul fast float %2610, 0x3FE62E4300000000
  %2612 = fmul fast float %2556, %2611
  %2613 = fsub fast float -0.000000e+00, %2612
  %2614 = fsub fast float 1.000000e+00, %2559
  %2615 = fdiv fast float %2613, %2614
  br label %2616

; <label>:2616                                    ; preds = %2609, %2605
  %2617 = phi float [ %2615, %2609 ], [ %2556, %2605 ]
  %2618 = phi float [ %2611, %2609 ], [ 0.000000e+00, %2605 ]
  %2619 = fmul fast float %2582, %2566
  %2620 = fmul fast float %2583, %2566
  %2621 = fmul fast float %2584, %2566
  %2622 = fmul fast float %2585, %2566
  %2623 = fmul fast float %2595, %2564
  %2624 = fmul fast float %2606, %2564
  %2625 = fmul fast float %2617, %2564
  %2626 = fmul fast float %2596, %2564
  %2627 = fmul fast float %2607, %2564
  %2628 = fmul fast float %2618, %2564
  %2629 = fadd fast float %2623, %2619
  %2630 = fadd fast float %2624, %2620
  %2631 = fadd fast float %2625, %2621
  %2632 = fadd fast float %2626, %2622
  %2633 = fadd fast float %2627, %2622
  %2634 = fadd fast float %2628, %2622
  %2635 = fcmp fast une float %2632, 0.000000e+00
  br i1 %2635, label %2636, label %2643, !dx.controlflow.hints !130

; <label>:2636                                    ; preds = %2616
  %2637 = fmul fast float %2632, 0x3FF7154760000000
  %2638 = call float @dx.op.unary.f32(i32 21, float %2637)  ; Exp(value)
  %2639 = fsub fast float 1.000000e+00, %2638
  %2640 = fmul fast float %2629, %2639
  %2641 = fsub fast float -0.000000e+00, %2640
  %2642 = fdiv fast float %2641, %2632
  br label %2643

; <label>:2643                                    ; preds = %2636, %2616
  %2644 = phi float [ %2638, %2636 ], [ 1.000000e+00, %2616 ]
  %2645 = phi float [ %2642, %2636 ], [ %2629, %2616 ]
  %2646 = fcmp fast une float %2633, 0.000000e+00
  br i1 %2646, label %2647, label %2654, !dx.controlflow.hints !130

; <label>:2647                                    ; preds = %2643
  %2648 = fmul fast float %2633, 0x3FF7154760000000
  %2649 = call float @dx.op.unary.f32(i32 21, float %2648)  ; Exp(value)
  %2650 = fsub fast float 1.000000e+00, %2649
  %2651 = fmul fast float %2630, %2650
  %2652 = fsub fast float -0.000000e+00, %2651
  %2653 = fdiv fast float %2652, %2633
  br label %2654

; <label>:2654                                    ; preds = %2647, %2643
  %2655 = phi float [ %2649, %2647 ], [ 1.000000e+00, %2643 ]
  %2656 = phi float [ %2653, %2647 ], [ %2630, %2643 ]
  %2657 = fcmp fast une float %2634, 0.000000e+00
  br i1 %2657, label %2658, label %2665, !dx.controlflow.hints !130

; <label>:2658                                    ; preds = %2654
  %2659 = fmul fast float %2634, 0x3FF7154760000000
  %2660 = call float @dx.op.unary.f32(i32 21, float %2659)  ; Exp(value)
  %2661 = fsub fast float 1.000000e+00, %2660
  %2662 = fmul fast float %2631, %2661
  %2663 = fsub fast float -0.000000e+00, %2662
  %2664 = fdiv fast float %2663, %2634
  br label %2665

; <label>:2665                                    ; preds = %2658, %2654
  %2666 = phi float [ %2660, %2658 ], [ 1.000000e+00, %2654 ]
  %2667 = phi float [ %2664, %2658 ], [ %2631, %2654 ]
  %2668 = fcmp fast ogt float %2564, %2566
  br i1 %2668, label %2669, label %2689

; <label>:2669                                    ; preds = %2665
  %2670 = fsub fast float 1.000000e+00, %2566
  %2671 = fmul fast float %2582, %2670
  %2672 = fmul fast float %2583, %2670
  %2673 = fmul fast float %2584, %2670
  %2674 = fmul fast float %2585, %2670
  %2675 = fcmp fast une float %2674, 0.000000e+00
  br i1 %2675, label %2676, label %2727, !dx.controlflow.hints !131

; <label>:2676                                    ; preds = %2669
  %2677 = fmul fast float %2674, 0x3FF7154760000000
  %2678 = call float @dx.op.unary.f32(i32 21, float %2677)  ; Exp(value)
  %2679 = fsub fast float 1.000000e+00, %2678
  %2680 = fmul fast float %2671, %2679
  %2681 = fsub fast float -0.000000e+00, %2680
  %2682 = fmul fast float %2672, %2679
  %2683 = fsub fast float -0.000000e+00, %2682
  %2684 = fmul fast float %2673, %2679
  %2685 = fsub fast float -0.000000e+00, %2684
  %2686 = fdiv fast float %2681, %2674
  %2687 = fdiv fast float %2683, %2674
  %2688 = fdiv fast float %2685, %2674
  br label %2727

; <label>:2689                                    ; preds = %2665
  %2690 = fsub fast float 1.000000e+00, %2564
  %2691 = fmul fast float %2595, %2690
  %2692 = fmul fast float %2606, %2690
  %2693 = fmul fast float %2617, %2690
  %2694 = fmul fast float %2596, %2690
  %2695 = fmul fast float %2607, %2690
  %2696 = fmul fast float %2618, %2690
  %2697 = fcmp fast une float %2694, 0.000000e+00
  br i1 %2697, label %2698, label %2705, !dx.controlflow.hints !130

; <label>:2698                                    ; preds = %2689
  %2699 = fmul fast float %2694, 0x3FF7154760000000
  %2700 = call float @dx.op.unary.f32(i32 21, float %2699)  ; Exp(value)
  %2701 = fsub fast float 1.000000e+00, %2700
  %2702 = fmul fast float %2691, %2701
  %2703 = fsub fast float -0.000000e+00, %2702
  %2704 = fdiv fast float %2703, %2694
  br label %2705

; <label>:2705                                    ; preds = %2698, %2689
  %2706 = phi float [ %2704, %2698 ], [ %2691, %2689 ]
  %2707 = phi float [ %2700, %2698 ], [ 1.000000e+00, %2689 ]
  %2708 = fcmp fast une float %2695, 0.000000e+00
  br i1 %2708, label %2709, label %2716, !dx.controlflow.hints !130

; <label>:2709                                    ; preds = %2705
  %2710 = fmul fast float %2695, 0x3FF7154760000000
  %2711 = call float @dx.op.unary.f32(i32 21, float %2710)  ; Exp(value)
  %2712 = fsub fast float 1.000000e+00, %2711
  %2713 = fmul fast float %2692, %2712
  %2714 = fsub fast float -0.000000e+00, %2713
  %2715 = fdiv fast float %2714, %2695
  br label %2716

; <label>:2716                                    ; preds = %2709, %2705
  %2717 = phi float [ %2715, %2709 ], [ %2692, %2705 ]
  %2718 = phi float [ %2711, %2709 ], [ 1.000000e+00, %2705 ]
  %2719 = fcmp fast une float %2696, 0.000000e+00
  br i1 %2719, label %2720, label %2727, !dx.controlflow.hints !130

; <label>:2720                                    ; preds = %2716
  %2721 = fmul fast float %2696, 0x3FF7154760000000
  %2722 = call float @dx.op.unary.f32(i32 21, float %2721)  ; Exp(value)
  %2723 = fsub fast float 1.000000e+00, %2722
  %2724 = fmul fast float %2693, %2723
  %2725 = fsub fast float -0.000000e+00, %2724
  %2726 = fdiv fast float %2725, %2696
  br label %2727

; <label>:2727                                    ; preds = %2720, %2716, %2676, %2669
  %2728 = phi float [ %2726, %2720 ], [ %2688, %2676 ], [ %2673, %2669 ], [ %2693, %2716 ]
  %2729 = phi float [ %2717, %2720 ], [ %2687, %2676 ], [ %2672, %2669 ], [ %2717, %2716 ]
  %2730 = phi float [ %2706, %2720 ], [ %2686, %2676 ], [ %2671, %2669 ], [ %2706, %2716 ]
  %2731 = phi float [ %2722, %2720 ], [ %2678, %2676 ], [ 1.000000e+00, %2669 ], [ 1.000000e+00, %2716 ]
  %2732 = phi float [ %2718, %2720 ], [ %2678, %2676 ], [ 1.000000e+00, %2669 ], [ %2718, %2716 ]
  %2733 = phi float [ %2707, %2720 ], [ %2678, %2676 ], [ 1.000000e+00, %2669 ], [ %2707, %2716 ]
  %2734 = fmul fast float %2733, %2645
  %2735 = fmul fast float %2732, %2656
  %2736 = fmul fast float %2731, %2667
  %2737 = fadd fast float %2734, %2730
  %2738 = fadd fast float %2735, %2729
  %2739 = fadd fast float %2736, %2728
  %2740 = fmul fast float %2733, %2644
  %2741 = fmul fast float %2732, %2655
  %2742 = fmul fast float %2731, %2666
  br label %2743

; <label>:2743                                    ; preds = %2727, %2538
  %2744 = phi float [ %2742, %2727 ], [ %2544, %2538 ]
  %2745 = phi float [ %2741, %2727 ], [ %2543, %2538 ]
  %2746 = phi float [ %2740, %2727 ], [ %2542, %2538 ]
  %2747 = phi float [ %2739, %2727 ], [ %2541, %2538 ]
  %2748 = phi float [ %2738, %2727 ], [ %2540, %2538 ]
  %2749 = phi float [ %2737, %2727 ], [ %2539, %2538 ]
  %2750 = fmul fast float %2749, %1723
  %2751 = fmul fast float %2748, %1723
  %2752 = fmul fast float %2747, %1723
  %2753 = fmul fast float %2746, %1986
  %2754 = call float @dx.op.dot3.f32(i32 55, float %2746, float %2745, float %2744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2755 = call float @dx.op.dot3.f32(i32 55, float %2750, float %2751, float %2752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2756 = select i1 %139, float %2754, float %2746
  %2757 = select i1 %139, float %2754, float %2745
  %2758 = select i1 %139, float 1.000000e+00, float %2744
  %2759 = select i1 %139, float %2755, float %2750
  %2760 = select i1 %139, float 0.000000e+00, float %2751
  %2761 = select i1 %139, float 0.000000e+00, float %2752
  %2762 = fmul fast float %2756, %1980
  %2763 = fmul fast float %2757, %1981
  %2764 = fmul fast float %2758, %1982
  %2765 = fadd fast float %2762, %2759
  %2766 = fadd fast float %2763, %2760
  %2767 = fadd fast float %2761, %2764
  %2768 = fmul fast float %2756, %1983
  %2769 = fmul fast float %2757, %1984
  %2770 = fmul fast float %2758, %1985
  %2771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.i32 %2771, 0
  %2773 = icmp eq i32 %2772, 0
  br i1 %2773, label %3042, label %2774, !dx.controlflow.hints !132

; <label>:2774                                    ; preds = %2743
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 3
  %2778 = fmul fast float %2776, %69
  %2779 = fmul fast float %2777, %70
  %2780 = fmul fast float %2778, 2.000000e+00
  %2781 = fmul fast float %2779, 2.000000e+00
  %2782 = fsub fast float 1.000000e+00, %2780
  %2783 = fsub fast float 1.000000e+00, %2781
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.CBufRet.f32 %2784, 2
  %2788 = fmul fast float %2782, %2785
  %2789 = fmul fast float %2782, %2786
  %2790 = fmul fast float %2782, %2787
  %2791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2792 = extractvalue %dx.types.CBufRet.f32 %2791, 0
  %2793 = extractvalue %dx.types.CBufRet.f32 %2791, 1
  %2794 = extractvalue %dx.types.CBufRet.f32 %2791, 2
  %2795 = fmul fast float %2783, %2792
  %2796 = fmul fast float %2783, %2793
  %2797 = fmul fast float %2783, %2794
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 0
  %2800 = extractvalue %dx.types.CBufRet.f32 %2798, 1
  %2801 = extractvalue %dx.types.CBufRet.f32 %2798, 2
  %2802 = fadd fast float %2795, %2799
  %2803 = fadd fast float %2802, %2788
  %2804 = fadd fast float %2796, %2800
  %2805 = fadd fast float %2804, %2789
  %2806 = fadd fast float %2797, %2801
  %2807 = fadd fast float %2806, %2790
  %2808 = fmul fast float %2803, %1979
  %2809 = fmul fast float %2805, %1979
  %2810 = fmul fast float %2807, %1979
  %2811 = fmul fast float %2808, %2808
  %2812 = fmul fast float %2809, %2809
  %2813 = fadd fast float %2811, %2812
  %2814 = fmul fast float %2810, %2810
  %2815 = fadd fast float %2813, %2814
  %2816 = call float @dx.op.unary.f32(i32 24, float %2815)  ; Sqrt(value)
  %2817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2818 = extractvalue %dx.types.CBufRet.f32 %2817, 0
  %2819 = fsub fast float %2816, %2818
  %2820 = extractvalue %dx.types.CBufRet.f32 %2817, 2
  %2821 = fmul fast float %2819, %2820
  %2822 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2823 = fadd fast float %2822, -5.000000e-01
  %2824 = fmul fast float %2823, 2.000000e+00
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 2
  %2827 = call float @dx.op.binary.f32(i32 36, float %2826, float %2824)  ; FMin(a,b)
  %2828 = fsub fast float -0.000000e+00, %2826
  %2829 = fcmp fast ogt float %2827, %2828
  br i1 %2829, label %2830, label %3042, !dx.controlflow.hints !133

; <label>:2830                                    ; preds = %2774
  %2831 = fmul fast float %2827, 5.000000e-01
  %2832 = fadd fast float %2831, 5.000000e-01
  %2833 = call float @dx.op.unary.f32(i32 22, float %2832)  ; Frc(value)
  %2834 = call float @dx.op.unary.f32(i32 27, float %2833)  ; Round_ni(value)
  %2835 = call float @dx.op.unary.f32(i32 22, float %2833)  ; Frc(value)
  %2836 = fmul fast float %2835, 2.000000e+00
  %2837 = fadd fast float %2836, -1.000000e+00
  %2838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2778, float %2779, float %2834, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = extractvalue %dx.types.ResRet.f32 %2838, 3
  %2843 = fadd fast float %2839, -5.000000e-01
  %2844 = fadd fast float %2841, -5.000000e-01
  %2845 = fmul fast float %2843, 0xBFD5555560000000
  %2846 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2844, float %2845)  ; FMad(a,b,c)
  %2847 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2840, float 0.000000e+00)  ; FMad(a,b,c)
  %2848 = fadd fast float %2847, %2842
  %2849 = fmul fast float %2843, -7.500000e-01
  %2850 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2844, float %2849)  ; FMad(a,b,c)
  %2851 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2840, float 0.000000e+00)  ; FMad(a,b,c)
  %2852 = fadd fast float %2851, %2842
  %2853 = call float @dx.op.binary.f32(i32 35, float %2846, float -1.000000e+00)  ; FMax(a,b)
  %2854 = call float @dx.op.binary.f32(i32 35, float %2848, float -1.000000e+00)  ; FMax(a,b)
  %2855 = call float @dx.op.binary.f32(i32 35, float %2850, float -1.000000e+00)  ; FMax(a,b)
  %2856 = call float @dx.op.binary.f32(i32 35, float %2852, float -1.000000e+00)  ; FMax(a,b)
  %2857 = call float @dx.op.binary.f32(i32 36, float %2853, float 1.000000e+00)  ; FMin(a,b)
  %2858 = call float @dx.op.binary.f32(i32 36, float %2854, float 1.000000e+00)  ; FMin(a,b)
  %2859 = call float @dx.op.binary.f32(i32 36, float %2855, float 1.000000e+00)  ; FMin(a,b)
  %2860 = call float @dx.op.binary.f32(i32 36, float %2856, float 1.000000e+00)  ; FMin(a,b)
  %2861 = fcmp fast olt float %2857, 0x3FEFFF8020000000
  br i1 %2861, label %2862, label %2977, !dx.controlflow.hints !134

; <label>:2862                                    ; preds = %2830
  %2863 = extractvalue %dx.types.CBufRet.f32 %2825, 3
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2868 = extractvalue %dx.types.CBufRet.f32 %2864, 3
  %2869 = fsub fast float %2865, %2857
  %2870 = fsub fast float %2866, %2858
  %2871 = fsub fast float %2867, %2859
  %2872 = fsub fast float %2868, %2860
  %2873 = fmul fast float %2869, %2863
  %2874 = fmul fast float %2870, %2863
  %2875 = fmul fast float %2871, %2863
  %2876 = fmul fast float %2872, %2863
  %2877 = fadd fast float %2873, %2857
  %2878 = fadd fast float %2874, %2858
  %2879 = fsub fast float -0.000000e+00, %2878
  %2880 = fadd fast float %2875, %2859
  %2881 = fadd fast float %2876, %2860
  %2882 = fmul fast float %2877, %2877
  %2883 = fsub fast float %2878, %2882
  %2884 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2883)  ; FMax(a,b)
  %2885 = fdiv fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2878, %2877
  %2887 = fsub fast float %2880, %2886
  %2888 = fsub fast float %2837, %2877
  %2889 = fmul fast float %2837, %2837
  %2890 = fsub fast float %2889, %2878
  %2891 = fmul fast float %2888, %2885
  %2892 = fmul fast float %2891, %2887
  %2893 = fsub fast float %2890, %2892
  %2894 = fmul fast float %2878, %2878
  %2895 = fsub fast float %2881, %2894
  %2896 = fmul fast float %2887, %2887
  %2897 = fmul fast float %2896, %2885
  %2898 = fsub fast float %2895, %2897
  %2899 = fdiv fast float %2893, %2898
  %2900 = fmul fast float %2887, %2899
  %2901 = fsub fast float %2888, %2900
  %2902 = fmul fast float %2901, %2885
  %2903 = fmul fast float %2902, %2877
  %2904 = fsub fast float 1.000000e+00, %2903
  %2905 = fmul fast float %2878, %2899
  %2906 = fsub fast float %2904, %2905
  %2907 = fmul fast float %2902, %2902
  %2908 = fmul fast float %2899, 4.000000e+00
  %2909 = fmul fast float %2908, %2906
  %2910 = fsub fast float %2907, %2909
  %2911 = call float @dx.op.unary.f32(i32 24, float %2910)  ; Sqrt(value)
  %2912 = fcmp fast oge float %2902, 0.000000e+00
  %2913 = fsub fast float -0.000000e+00, %2911
  %2914 = select i1 %2912, float %2913, float %2911
  %2915 = fsub fast float %2914, %2902
  %2916 = fdiv fast float %2915, %2899
  %2917 = fdiv fast float %2906, %2915
  %2918 = fmul fast float %2916, 5.000000e-01
  %2919 = fmul fast float %2917, 2.000000e+00
  %2920 = select i1 %2912, float %2918, float %2919
  %2921 = select i1 %2912, float %2919, float %2918
  %2922 = call float @dx.op.binary.f32(i32 35, float %2920, float %2921)  ; FMax(a,b)
  %2923 = call float @dx.op.binary.f32(i32 36, float %2920, float %2921)  ; FMin(a,b)
  %2924 = fcmp fast ogt float %2837, %2923
  br i1 %2924, label %2925, label %2935

; <label>:2925                                    ; preds = %2862
  %2926 = fsub fast float %2837, %2923
  %2927 = fsub fast float %2922, %2923
  %2928 = fmul fast float %2926, %2927
  %2929 = fmul fast float %2922, %2837
  %2930 = fadd fast float %2922, %2837
  %2931 = fmul fast float %2930, %2877
  %2932 = fadd fast float %2929, %2878
  %2933 = fsub fast float %2932, %2931
  %2934 = fdiv fast float %2933, %2928
  br label %2935

; <label>:2935                                    ; preds = %2925, %2862
  %2936 = phi float [ %2934, %2925 ], [ 0.000000e+00, %2862 ]
  %2937 = fcmp fast ogt float %2837, %2922
  %2938 = fsub fast float %2837, %2922
  br i1 %2937, label %2939, label %2949

; <label>:2939                                    ; preds = %2935
  %2940 = fsub fast float %2922, %2923
  %2941 = fmul fast float %2940, %2938
  %2942 = fmul fast float %2923, %2837
  %2943 = fadd fast float %2923, %2837
  %2944 = fmul fast float %2943, %2877
  %2945 = fsub fast float %2879, %2942
  %2946 = fadd fast float %2945, %2944
  %2947 = fdiv fast float %2946, %2941
  %2948 = fadd fast float %2947, %2936
  br label %2949

; <label>:2949                                    ; preds = %2939, %2935
  %2950 = phi float [ %2948, %2939 ], [ %2936, %2935 ]
  %2951 = fsub fast float %2837, %2923
  %2952 = fmul fast float %2951, %2938
  %2953 = fmul fast float %2923, %2922
  %2954 = fadd fast float %2923, %2922
  %2955 = fmul fast float %2954, %2877
  %2956 = fadd fast float %2953, %2878
  %2957 = fsub fast float %2956, %2955
  %2958 = fdiv fast float %2957, %2952
  %2959 = call float @dx.op.unary.f32(i32 7, float %2950)  ; Saturate(value)
  %2960 = fcmp fast oeq float %1832, 0.000000e+00
  %2961 = extractvalue %dx.types.CBufRet.f32 %2825, 0
  %2962 = fcmp fast oeq float %2961, 0.000000e+00
  %2963 = or i1 %2960, %2962
  %2964 = fmul fast float %2961, 2.000000e+00
  %2965 = fadd fast float %2826, %2827
  %2966 = fdiv fast float %2965, %2964
  %2967 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2968 = fmul fast float %2967, 2.000000e+00
  %2969 = fsub fast float 3.000000e+00, %2968
  %2970 = fmul fast float %2967, %2967
  %2971 = fmul fast float %2970, %2969
  %2972 = select i1 %2963, float 1.000000e+00, float %2971
  %2973 = fmul fast float %2958, %1832
  %2974 = fadd fast float %2959, %2973
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2976 = fmul fast float %2972, %2975
  br label %2977

; <label>:2977                                    ; preds = %2949, %2830
  %2978 = phi float [ %2976, %2949 ], [ 0.000000e+00, %2830 ]
  %2979 = fsub fast float 1.000000e+00, %2978
  %2980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2778, float %2779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2983 = extractvalue %dx.types.CBufRet.i32 %2982, 2
  %2984 = icmp eq i32 %2983, 0
  br i1 %2984, label %2990, label %2985

; <label>:2985                                    ; preds = %2977
  %2986 = call float @dx.op.unary.f32(i32 7, float %2978)  ; Saturate(value)
  %2987 = fadd fast float %2981, -1.000000e+00
  %2988 = fmul fast float %2986, %2987
  %2989 = fadd fast float %2988, 1.000000e+00
  br label %2990

; <label>:2990                                    ; preds = %2985, %2977
  %2991 = phi float [ %2989, %2985 ], [ %2979, %2977 ]
  %2992 = call float @dx.op.binary.f32(i32 35, float %2981, float %2991)  ; FMax(a,b)
  %2993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.i32 %2993, 2
  %2995 = and i32 %2994, 1
  %2996 = icmp eq i32 %2995, 0
  %2997 = fcmp fast une float %2992, 1.000000e+00
  %2998 = and i1 %2997, %2996
  br i1 %2998, label %2999, label %3018

; <label>:2999                                    ; preds = %2990
  %3000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2778, float %2779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3001 = extractvalue %dx.types.ResRet.f32 %3000, 0
  %3002 = extractvalue %dx.types.ResRet.f32 %3000, 1
  %3003 = extractvalue %dx.types.ResRet.f32 %3000, 2
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 1
  %3006 = fmul fast float %3005, %3001
  %3007 = fmul fast float %3005, %3002
  %3008 = fmul fast float %3005, %3003
  %3009 = fcmp fast ogt float %2981, 0x3FEFFF2E40000000
  %3010 = fsub fast float 1.000000e+00, %2992
  %3011 = fsub fast float 1.000000e+00, %2981
  %3012 = fdiv fast float %3010, %3011
  %3013 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  %3014 = select i1 %3009, float 0.000000e+00, float %3013
  %3015 = fmul fast float %3006, %3014
  %3016 = fmul fast float %3007, %3014
  %3017 = fmul fast float %3008, %3014
  br label %3018

; <label>:3018                                    ; preds = %2999, %2990
  %3019 = phi float [ 0.000000e+00, %2990 ], [ %3015, %2999 ]
  %3020 = phi float [ 0.000000e+00, %2990 ], [ %3016, %2999 ]
  %3021 = phi float [ 0.000000e+00, %2990 ], [ %3017, %2999 ]
  %3022 = fmul fast float %3019, %1723
  %3023 = fmul fast float %3020, %1723
  %3024 = fmul fast float %3021, %1723
  %3025 = fmul fast float %2992, %2753
  %3026 = call float @dx.op.dot3.f32(i32 55, float %2992, float %2992, float %2992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3027 = call float @dx.op.dot3.f32(i32 55, float %3022, float %3023, float %3024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3028 = select i1 %139, float %3026, float %2992
  %3029 = select i1 %139, float 1.000000e+00, float %2992
  %3030 = select i1 %139, float %3027, float %3022
  %3031 = select i1 %139, float 0.000000e+00, float %3023
  %3032 = select i1 %139, float 0.000000e+00, float %3024
  %3033 = fmul fast float %3028, %2765
  %3034 = fmul fast float %3028, %2766
  %3035 = fmul fast float %3029, %2767
  %3036 = fadd fast float %3033, %3030
  %3037 = fadd fast float %3034, %3031
  %3038 = fadd fast float %3032, %3035
  %3039 = fmul fast float %3028, %2768
  %3040 = fmul fast float %3028, %2769
  %3041 = fmul fast float %3029, %2770
  br label %3042

; <label>:3042                                    ; preds = %3018, %2774, %2743, %1975
  %3043 = phi float [ %1980, %1975 ], [ %2765, %2743 ], [ %3036, %3018 ], [ %2765, %2774 ]
  %3044 = phi float [ %1981, %1975 ], [ %2766, %2743 ], [ %3037, %3018 ], [ %2766, %2774 ]
  %3045 = phi float [ %1982, %1975 ], [ %2767, %2743 ], [ %3038, %3018 ], [ %2767, %2774 ]
  %3046 = phi float [ %1983, %1975 ], [ %2768, %2743 ], [ %3039, %3018 ], [ %2768, %2774 ]
  %3047 = phi float [ %1984, %1975 ], [ %2769, %2743 ], [ %3040, %3018 ], [ %2769, %2774 ]
  %3048 = phi float [ %1985, %1975 ], [ %2770, %2743 ], [ %3041, %3018 ], [ %2770, %2774 ]
  %3049 = phi float [ %1986, %1975 ], [ %2753, %2743 ], [ %3025, %3018 ], [ %2753, %2774 ]
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 3
  %3053 = fmul fast float %3051, %69
  %3054 = fmul fast float %3052, %70
  %3055 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3056 = call float @dx.op.unary.f32(i32 7, float %3054)  ; Saturate(value)
  %3057 = select i1 %1120, i32 2, i32 0
  %3058 = or i32 %3057, 1
  %3059 = uitofp i32 %3058 to float
  %3060 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %3055, float %3056, float %3059, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.ResRet.f32 %3060, 1
  %3063 = extractvalue %dx.types.ResRet.f32 %3060, 2
  %3064 = extractvalue %dx.types.ResRet.f32 %3060, 3
  %3065 = add nuw nsw i32 %3057, 2
  %3066 = uitofp i32 %3065 to float
  %3067 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %3055, float %3056, float %3066, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3068 = extractvalue %dx.types.ResRet.f32 %3067, 0
  %3069 = extractvalue %dx.types.ResRet.f32 %3067, 1
  %3070 = extractvalue %dx.types.ResRet.f32 %3067, 2
  %3071 = extractvalue %dx.types.ResRet.f32 %3067, 3
  %3072 = call float @dx.op.binary.f32(i32 35, float %3062, float %3063)  ; FMax(a,b)
  %3073 = call float @dx.op.binary.f32(i32 35, float %3061, float %3072)  ; FMax(a,b)
  %3074 = call float @dx.op.binary.f32(i32 35, float %3073, float %3064)  ; FMax(a,b)
  %3075 = call float @dx.op.binary.f32(i32 36, float %3069, float %3070)  ; FMin(a,b)
  %3076 = call float @dx.op.binary.f32(i32 36, float %3068, float %3075)  ; FMin(a,b)
  %3077 = call float @dx.op.binary.f32(i32 36, float %3076, float %3071)  ; FMin(a,b)
  %3078 = fmul fast float %3074, 2.550000e+02
  %3079 = fadd fast float %3078, 0x3F70101020000000
  %3080 = fptoui float %3079 to i32
  %3081 = fmul fast float %3077, 2.550000e+02
  %3082 = fadd fast float %3081, 0x3F70101020000000
  %3083 = fptoui float %3082 to i32
  %3084 = icmp ult i32 %3080, %3083
  br i1 %3084, label %3085, label %3131

; <label>:3085                                    ; preds = %3042
  %3086 = fcmp fast ogt float %61, 9.843750e-01
  %3087 = fadd fast float %1979, -4.000000e+00
  %3088 = select i1 %3086, float -4.000000e+00, float %3087
  %3089 = call float @dx.op.binary.f32(i32 35, float %3088, float 0.000000e+00)  ; FMax(a,b)
  %3090 = fadd fast float %1297, %3089
  %3091 = fmul fast float %3090, %1298
  %3092 = call float @dx.op.unary.f32(i32 23, float %3091)  ; Log(value)
  %3093 = fmul fast float %1299, %3092
  %3094 = fmul fast float %3093, %1307
  %3095 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3096 = uitofp i32 %3080 to float
  %3097 = uitofp i32 %3083 to float
  %3098 = fadd fast float %3096, 5.000000e-01
  %3099 = fadd fast float %3097, 5.000000e-01
  %3100 = fmul fast float %1307, %3098
  %3101 = fmul fast float %1307, %3099
  %3102 = fadd fast float %3100, 0x3F0FFB4800000000
  %3103 = fadd fast float %3101, 0xBF0FFB4800000000
  %3104 = call float @dx.op.binary.f32(i32 35, float %3095, float %3102)  ; FMax(a,b)
  %3105 = call float @dx.op.binary.f32(i32 36, float %3104, float %3103)  ; FMin(a,b)
  %3106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3107 = extractvalue %dx.types.CBufRet.f32 %3106, 1
  %3108 = extractvalue %dx.types.CBufRet.f32 %3106, 2
  %3109 = extractvalue %dx.types.CBufRet.f32 %3106, 0
  %3110 = select i1 %1120, float %3109, float 0.000000e+00
  %3111 = fmul fast float %3107, %3105
  %3112 = fadd fast float %3110, %3111
  %3113 = fadd fast float %3110, %3108
  %3114 = fsub fast float %3107, %3108
  %3115 = fadd fast float %3114, %3110
  %3116 = call float @dx.op.binary.f32(i32 35, float %3112, float %3113)  ; FMax(a,b)
  %3117 = call float @dx.op.binary.f32(i32 36, float %3116, float %3115)  ; FMin(a,b)
  %3118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %3055, float %3056, float %3117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3119 = extractvalue %dx.types.ResRet.f32 %3118, 0
  %3120 = extractvalue %dx.types.ResRet.f32 %3118, 1
  %3121 = extractvalue %dx.types.ResRet.f32 %3118, 2
  %3122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %3055, float %3056, float %3117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3123 = extractvalue %dx.types.ResRet.f32 %3122, 0
  %3124 = extractvalue %dx.types.ResRet.f32 %3122, 1
  %3125 = extractvalue %dx.types.ResRet.f32 %3122, 2
  %3126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3127 = extractvalue %dx.types.CBufRet.f32 %3126, 1
  %3128 = fmul fast float %3127, %3123
  %3129 = fmul fast float %3127, %3124
  %3130 = fmul fast float %3127, %3125
  br label %3131

; <label>:3131                                    ; preds = %3085, %3042
  %3132 = phi float [ %3119, %3085 ], [ 1.000000e+00, %3042 ]
  %3133 = phi float [ %3120, %3085 ], [ 1.000000e+00, %3042 ]
  %3134 = phi float [ %3121, %3085 ], [ 1.000000e+00, %3042 ]
  %3135 = phi float [ %3128, %3085 ], [ 0.000000e+00, %3042 ]
  %3136 = phi float [ %3129, %3085 ], [ 0.000000e+00, %3042 ]
  %3137 = phi float [ %3130, %3085 ], [ 0.000000e+00, %3042 ]
  %3138 = fmul fast float %3135, %1723
  %3139 = fmul fast float %3136, %1723
  %3140 = fmul fast float %3137, %1723
  %3141 = fmul fast float %3132, %3049
  %3142 = call float @dx.op.dot3.f32(i32 55, float %3132, float %3133, float %3134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3143 = call float @dx.op.dot3.f32(i32 55, float %3138, float %3139, float %3140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3144 = select i1 %139, float %3142, float %3132
  %3145 = select i1 %139, float %3142, float %3133
  %3146 = select i1 %139, float 1.000000e+00, float %3134
  %3147 = select i1 %139, float %3143, float %3138
  %3148 = select i1 %139, float 0.000000e+00, float %3139
  %3149 = select i1 %139, float 0.000000e+00, float %3140
  %3150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.i32 %3150, 3
  %3152 = and i32 %3151, 3
  %3153 = icmp ne i32 %3152, 0
  %3154 = and i32 %3151, 4
  %3155 = icmp ne i32 %3154, 0
  %3156 = and i1 %3153, %3155
  %3157 = and i1 %139, %3156
  br i1 %3157, label %3158, label %3164

; <label>:3158                                    ; preds = %3131
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 1
  %3161 = fadd fast float %3141, -1.000000e+00
  %3162 = fmul fast float %3160, %3161
  %3163 = fadd fast float %3162, 1.000000e+00
  br label %3164

; <label>:3164                                    ; preds = %3158, %3131
  %3165 = phi float [ %3163, %3158 ], [ %3141, %3131 ]
  %3166 = fadd fast float %3046, %3043
  %3167 = fmul fast float %3144, %3166
  %3168 = fadd fast float %3167, %3147
  %3169 = fadd fast float %3047, %3044
  %3170 = fmul fast float %3145, %3169
  %3171 = fadd fast float %3170, %3148
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  br i1 %139, label %3174, label %3196

; <label>:3174                                    ; preds = %3164
  %3175 = fadd fast float %3168, %3171
  %3176 = fmul fast float %3173, %3175
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = extractvalue %dx.types.CBufRet.f32 %3177, 3
  %3179 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %3180 = fsub fast float %1731, %3179
  %3181 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %3182 = fmul fast float %3180, %3181
  %3183 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3184 = fsub fast float %3183, %3178
  %3185 = fmul fast float %3184, %3165
  %3186 = fadd fast float %3185, %3178
  %3187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.f32 %3187, 0
  %3189 = fsub fast float %3186, %3188
  %3190 = fmul fast float %3189, 1.000000e+01
  %3191 = call float @dx.op.unary.f32(i32 7, float %3190)  ; Saturate(value)
  %3192 = fsub fast float %1096, %1723
  %3193 = fmul fast float %3191, %3192
  %3194 = fadd fast float %3193, %1723
  %3195 = fmul fast float %3194, %3186
  br label %3208

; <label>:3196                                    ; preds = %3164
  %3197 = fadd fast float %3048, %3045
  %3198 = fmul fast float %3146, %3197
  %3199 = fadd fast float %3198, %3149
  %3200 = fmul fast float %3173, %3168
  %3201 = fmul fast float %3173, %3171
  %3202 = fmul fast float %3173, %3199
  %3203 = call float @dx.op.binary.f32(i32 35, float %3201, float %3202)  ; FMax(a,b)
  %3204 = call float @dx.op.binary.f32(i32 35, float %3200, float %3203)  ; FMax(a,b)
  %3205 = call float @dx.op.binary.f32(i32 35, float %3204, float %1723)  ; FMax(a,b)
  %3206 = fcmp fast ugt float %3205, 0x3F10000000000000
  br i1 %3206, label %3208, label %3207

; <label>:3207                                    ; preds = %3196
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3208

; <label>:3208                                    ; preds = %3207, %3196, %3174
  %3209 = phi float [ %3176, %3174 ], [ %3200, %3207 ], [ %3200, %3196 ]
  %3210 = phi float [ %3195, %3174 ], [ %3201, %3207 ], [ %3201, %3196 ]
  %3211 = phi float [ %3194, %3174 ], [ %3202, %3207 ], [ %3202, %3196 ]
  %3212 = phi float [ %3194, %3174 ], [ %1723, %3207 ], [ %1723, %3196 ]
  %3213 = fadd fast float %606, 0x3FE3C6EF40000000
  %3214 = call float @dx.op.unary.f32(i32 22, float %3213)  ; Frc(value)
  %3215 = call float @dx.op.unary.f32(i32 23, float %3209)  ; Log(value)
  %3216 = fadd fast float %3215, -7.000000e+00
  %3217 = call float @dx.op.unary.f32(i32 21, float %3216)  ; Exp(value)
  %3218 = fmul fast float %3214, 2.000000e+00
  %3219 = fadd fast float %3218, -1.000000e+00
  %3220 = fmul fast float %3217, %3219
  %3221 = fcmp fast ogt float %3209, 0.000000e+00
  %3222 = select i1 %3221, float %3220, float 0.000000e+00
  %3223 = fadd fast float %3222, %3209
  %3224 = fadd fast float %606, 0x3FF3C6EF40000000
  %3225 = call float @dx.op.unary.f32(i32 22, float %3224)  ; Frc(value)
  %3226 = call float @dx.op.unary.f32(i32 23, float %3210)  ; Log(value)
  %3227 = fadd fast float %3226, -7.000000e+00
  %3228 = call float @dx.op.unary.f32(i32 21, float %3227)  ; Exp(value)
  %3229 = fmul fast float %3225, 2.000000e+00
  %3230 = fadd fast float %3229, -1.000000e+00
  %3231 = fmul fast float %3228, %3230
  %3232 = fcmp fast ogt float %3210, 0.000000e+00
  %3233 = select i1 %3232, float %3231, float 0.000000e+00
  %3234 = fadd fast float %3233, %3210
  %3235 = fadd fast float %606, 0x3FFDAA66E0000000
  %3236 = call float @dx.op.unary.f32(i32 22, float %3235)  ; Frc(value)
  %3237 = call float @dx.op.unary.f32(i32 23, float %3211)  ; Log(value)
  %3238 = fadd fast float %3237, -6.000000e+00
  %3239 = call float @dx.op.unary.f32(i32 21, float %3238)  ; Exp(value)
  %3240 = fmul fast float %3236, 2.000000e+00
  %3241 = fadd fast float %3240, -1.000000e+00
  %3242 = fmul fast float %3239, %3241
  %3243 = fcmp fast ogt float %3211, 0.000000e+00
  %3244 = select i1 %3243, float %3242, float 0.000000e+00
  %3245 = fadd fast float %3244, %3211
  %3246 = select i1 %139, float %3210, float %3234
  %3247 = select i1 %139, float %3211, float %3245
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3248 = call float @dx.op.binary.f32(i32 36, float %3223, float 3.225500e+04)  ; FMin(a,b)
  %3249 = call float @dx.op.binary.f32(i32 36, float %3246, float 3.225500e+04)  ; FMin(a,b)
  %3250 = call float @dx.op.binary.f32(i32 36, float %3247, float 3.225500e+04)  ; FMin(a,b)
  %3251 = call float @dx.op.binary.f32(i32 36, float %3212, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3248)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3249)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3250)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3251)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3212)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3212)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3212)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3212)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!42 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !71}
!44 = !{!45, !67, null}
!45 = !{!46, !49, !50, !52, !55, !57, !59, !61, !63, !64, !66}
!46 = !{i32 0, !"SV_Position", i8 9, i8 3, !47, i8 4, i32 1, i8 4, i32 0, i8 0, !48}
!47 = !{i32 0}
!48 = !{i32 3, i32 15}
!49 = !{i32 1, !"COLOR", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 1, i8 0, !48}
!50 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 2, i8 0, !51}
!51 = !{i32 3, i32 3}
!52 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !53, i8 1, i32 1, i8 4, i32 3, i8 0, !54}
!53 = !{i32 2}
!54 = !{i32 3, i32 7}
!55 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!56 = !{i32 3}
!57 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 5, i8 0, !48}
!58 = !{i32 4}
!59 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !60, i8 3, i32 1, i8 2, i32 6, i8 0, !51}
!60 = !{i32 5}
!61 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, !48}
!62 = !{i32 8}
!63 = !{i32 8, !"QUAD_POSITION", i8 9, i8 0, !47, i8 1, i32 1, i8 4, i32 8, i8 0, !48}
!64 = !{i32 9, !"COLOR", i8 5, i8 0, !56, i8 1, i32 1, i8 3, i32 9, i8 0, !65}
!65 = !{i32 3, i32 5}
!66 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!67 = !{!68, !69}
!68 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !48}
!69 = !{i32 1, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 1, i8 0, !48}
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

