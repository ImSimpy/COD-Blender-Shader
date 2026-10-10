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
; shader hash: 60702f2452a5e40a752be9e81f3cde20
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
  %893 = add i32 %31, 48
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = lshr i32 %895, 22
  %897 = shl nuw nsw i32 %896, 5
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = fmul fast float %898, %890
  %900 = select i1 %139, float %899, float %890
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = add i32 %902, 0
  %904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %904, %dx.types.Handle %65, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = extractvalue %dx.types.ResRet.f32 %905, 1
  %908 = extractvalue %dx.types.ResRet.f32 %905, 2
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = shl i32 %910, 4
  %912 = and i32 %911, 32752
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = lshr i32 %910, 7
  %915 = and i32 %914, 32752
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = lshr i32 %910, 22
  %918 = shl nuw nsw i32 %917, 5
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = fmul fast float %913, %906
  %921 = fmul fast float %916, %907
  %922 = fmul fast float %919, %908
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 22
  %926 = shl nuw nsw i32 %925, 5
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = fmul fast float %927, %920
  %929 = select i1 %139, float %928, float %920
  %930 = fsub fast float %929, %900
  %931 = fsub fast float %921, %891
  %932 = fsub fast float %922, %892
  %933 = fmul fast float %930, %52
  %934 = fmul fast float %931, %52
  %935 = fmul fast float %932, %52
  %936 = fadd fast float %933, %900
  %937 = fadd fast float %934, %891
  %938 = fadd fast float %935, %892
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 3
  %941 = fcmp fast ogt float %940, 0.000000e+00
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 1
  br i1 %941, label %944, label %969

; <label>:944                                     ; preds = %669
  %945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = extractvalue %dx.types.ResRet.f32 %945, 1
  %948 = extractvalue %dx.types.ResRet.f32 %945, 2
  %949 = extractvalue %dx.types.ResRet.f32 %945, 3
  %950 = fmul fast float %943, %949
  %951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = extractvalue %dx.types.ResRet.f32 %951, 3
  %956 = fmul fast float %943, %952
  %957 = fmul fast float %943, %953
  %958 = fmul fast float %943, %954
  %959 = fmul fast float %943, %955
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %40, float %41, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = extractvalue %dx.types.ResRet.f32 %960, 3
  %965 = fmul fast float %943, %961
  %966 = fmul fast float %943, %962
  %967 = fmul fast float %943, %963
  %968 = fmul fast float %943, %964
  br label %974

; <label>:969                                     ; preds = %669
  %970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  br label %974

; <label>:974                                     ; preds = %969, %944
  %975 = phi float [ %965, %944 ], [ 0.000000e+00, %969 ]
  %976 = phi float [ %966, %944 ], [ 0.000000e+00, %969 ]
  %977 = phi float [ %967, %944 ], [ 0.000000e+00, %969 ]
  %978 = phi float [ %968, %944 ], [ 0.000000e+00, %969 ]
  %979 = phi float [ %956, %944 ], [ 0.000000e+00, %969 ]
  %980 = phi float [ %957, %944 ], [ 0.000000e+00, %969 ]
  %981 = phi float [ %958, %944 ], [ 0.000000e+00, %969 ]
  %982 = phi float [ %959, %944 ], [ 0.000000e+00, %969 ]
  %983 = phi float [ %946, %944 ], [ %971, %969 ]
  %984 = phi float [ %947, %944 ], [ %972, %969 ]
  %985 = phi float [ %948, %944 ], [ %973, %969 ]
  %986 = phi float [ %950, %944 ], [ 0.000000e+00, %969 ]
  %987 = fmul float %943, %985
  %988 = fmul float %943, %984
  %989 = fmul float %943, %983
  %990 = call float @dx.op.dot2.f32(i32 54, float %862, float %863, float %862, float %863)  ; Dot2(ax,ay,bx,by)
  %991 = fsub fast float 1.000000e+00, %990
  %992 = call float @dx.op.unary.f32(i32 7, float %991)  ; Saturate(value)
  %993 = call float @dx.op.unary.f32(i32 24, float %992)  ; Sqrt(value)
  %994 = fmul fast float %993, %46
  %995 = fmul fast float %993, %47
  %996 = fmul fast float %993, %48
  %997 = fmul fast float %862, %42
  %998 = fmul fast float %862, %43
  %999 = fmul fast float %862, %44
  %1000 = fmul fast float %116, %863
  %1001 = fmul fast float %117, %863
  %1002 = fmul fast float %118, %863
  %1003 = fadd fast float %1000, %997
  %1004 = fadd fast float %1003, %994
  %1005 = fadd fast float %1001, %998
  %1006 = fadd fast float %1005, %995
  %1007 = fadd fast float %1002, %999
  %1008 = fadd fast float %1007, %996
  %1009 = call float @dx.op.dot3.f32(i32 55, float %1004, float %1006, float %1008, float %1004, float %1006, float %1008)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call float @dx.op.unary.f32(i32 25, float %1009)  ; Rsqrt(value)
  %1011 = fmul fast float %1004, %1010
  %1012 = fmul fast float %1006, %1010
  %1013 = fmul fast float %1008, %1010
  %1014 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = call float @dx.op.unary.f32(i32 25, float %1014)  ; Rsqrt(value)
  %1016 = fmul fast float %1015, %104
  %1017 = fmul fast float %1015, %105
  %1018 = fmul fast float %1015, %106
  %1019 = fsub fast float -0.000000e+00, %1016
  %1020 = fsub fast float -0.000000e+00, %1017
  %1021 = fsub fast float -0.000000e+00, %1018
  %1022 = fadd fast float %767, 0xBFB99999A0000000
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1024 = fmul fast float %1023, 0x3FF1C71C80000000
  %1025 = call float @dx.op.binary.f32(i32 36, float %767, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1026 = fsub fast float 1.000000e+00, %1024
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = fmul fast float %1027, %768
  %1029 = fmul fast float %1027, %769
  %1030 = fmul fast float %1027, %770
  %1031 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1032 = call float @dx.op.unary.f32(i32 7, float %1029)  ; Saturate(value)
  %1033 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1034 = fmul fast float %1024, %768
  %1035 = fmul fast float %1024, %769
  %1036 = fmul fast float %1024, %770
  %1037 = fadd fast float %1034, %1025
  %1038 = fadd fast float %1035, %1025
  %1039 = fadd fast float %1036, %1025
  %1040 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1041 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1042 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1043 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %1044 = fmul fast float %936, %675
  %1045 = fmul fast float %937, %676
  %1046 = fmul fast float %938, %677
  %1047 = call float @dx.op.dot3.f32(i32 55, float %1044, float %1045, float %1046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = select i1 %139, float 0.000000e+00, float %1044
  %1049 = select i1 %139, float %1047, float %1045
  %1050 = select i1 %139, float 0.000000e+00, float %1046
  %1051 = fmul fast float %590, %936
  %1052 = fmul fast float %591, %937
  %1053 = fmul fast float %592, %938
  %1054 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1032, float %1033, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1055 = add i32 %31, 32
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = and i32 %1057, 255
  %1059 = uitofp i32 %1058 to float
  %1060 = lshr i32 %1057, 8
  %1061 = and i32 %1060, 255
  %1062 = uitofp i32 %1061 to float
  %1063 = fmul fast float %1062, %1054
  %1064 = fadd fast float %1063, %1059
  %1065 = fmul fast float %1064, 0x3F70101020000000
  %1066 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1067 = and i32 %159, 8192
  %1068 = icmp eq i32 %1067, 0
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  br i1 %1068, label %1077, label %1071, !dx.controlflow.hints !78

; <label>:1071                                    ; preds = %974
  %1072 = add i32 %156, 176
  %1073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = fcmp fast oge float %1074, 0.000000e+00
  %1076 = select i1 %1075, float %1074, float %1070
  br label %1084

; <label>:1077                                    ; preds = %974
  %1078 = add i32 %31, 104
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = bitcast i32 %1080 to float
  %1082 = fcmp fast oge float %1081, 0.000000e+00
  %1083 = select i1 %1082, float %1081, float %1070
  br label %1084

; <label>:1084                                    ; preds = %1077, %1071
  %1085 = phi float [ %1076, %1071 ], [ %1083, %1077 ]
  %1086 = fmul fast float %674, %673
  %1087 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %262, i32 %263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = lshr i32 %1088, 18
  %1090 = uitofp i32 %1089 to float
  %1091 = fmul fast float %1090, 0x3F4C00EBA0000000
  %1092 = call float @dx.op.unary.f32(i32 21, float %1091)  ; Exp(value)
  %1093 = fadd fast float %1092, -1.000000e+00
  %1094 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1095 = extractvalue %dx.types.Dimensions %1094, 0
  %1096 = sitofp i32 %1095 to float
  %1097 = extractvalue %dx.types.Dimensions %1094, 1
  %1098 = sitofp i32 %1097 to float
  %1099 = fcmp fast oge float %260, %1096
  %1100 = fcmp fast oge float %261, %1098
  %1101 = or i1 %1099, %1100
  %1102 = select i1 %1101, float 0x4197782600000000, float %1093
  %1103 = icmp eq i32 %155, 3
  %1104 = fcmp fast ogt float %62, %1102
  %1105 = and i1 %286, %1104
  %1106 = or i1 %1103, %1105
  %1107 = icmp eq i32 %155, 2
  %1108 = fcmp fast ole float %62, %1102
  %1109 = and i1 %1107, %1108
  %1110 = or i1 %1109, %1106
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1113 = fcmp fast ogt float %1112, 0.000000e+00
  br i1 %1113, label %1114, label %1121

; <label>:1114                                    ; preds = %1084
  %1115 = fmul fast float %1012, 0xBFDF454380000000
  %1116 = fmul fast float %1013, 0x3FDF454380000000
  %1117 = fmul fast float %1011, 0xBFDF454380000000
  %1118 = call float @dx.op.dot4.f32(i32 56, float %989, float %988, float %987, float %986, float 0x3FD20DD760000000, float %1115, float %1116, float %1117)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1119 = call float @dx.op.dot4.f32(i32 56, float %979, float %980, float %981, float %982, float 0x3FD20DD760000000, float %1115, float %1116, float %1117)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1120 = call float @dx.op.dot4.f32(i32 56, float %975, float %976, float %977, float %978, float 0x3FD20DD760000000, float %1115, float %1116, float %1117)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1121

; <label>:1121                                    ; preds = %1114, %1084
  %1122 = phi float [ %1118, %1114 ], [ %989, %1084 ]
  %1123 = phi float [ %1119, %1114 ], [ %988, %1084 ]
  %1124 = phi float [ %1120, %1114 ], [ %987, %1084 ]
  %1125 = fmul fast float %1051, %1122
  %1126 = fmul fast float %1052, %1123
  %1127 = fmul fast float %1053, %1124
  %1128 = fadd fast float %1125, %1048
  %1129 = fadd fast float %1126, %1049
  %1130 = fadd fast float %1127, %1050
  %1131 = fmul fast float %1128, %673
  %1132 = fmul fast float %1129, %673
  %1133 = fmul fast float %1130, %673
  %1134 = call float @dx.op.dot3.f32(i32 55, float %1011, float %1012, float %1013, float %1019, float %1020, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  br i1 %1113, label %1136, label %1239

; <label>:1136                                    ; preds = %1121
  %1137 = fsub fast float -0.000000e+00, %978
  %1138 = fsub fast float %1137, %982
  %1139 = fsub fast float %1138, %986
  %1140 = fsub fast float -0.000000e+00, %976
  %1141 = fsub fast float %1140, %980
  %1142 = fsub fast float %1141, %988
  %1143 = fadd fast float %981, %977
  %1144 = fadd fast float %1143, %987
  %1145 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1142, float %1144, float %1139, float %1142, float %1144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1146 = call float @dx.op.unary.f32(i32 25, float %1145)  ; Rsqrt(value)
  %1147 = fmul fast float %1146, %1139
  %1148 = fmul fast float %1146, %1142
  %1149 = fmul fast float %1146, %1144
  %1150 = fmul fast float %1148, 0xBFD4D8D7C0000000
  %1151 = fmul fast float %1149, 0x3FD4D8D7C0000000
  %1152 = fmul fast float %1147, 0xBFD4D8D7C0000000
  %1153 = call float @dx.op.dot4.f32(i32 56, float %989, float %988, float %987, float %986, float 0x3FD20DD760000000, float %1150, float %1151, float %1152)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1154 = call float @dx.op.dot4.f32(i32 56, float %979, float %980, float %981, float %982, float 0x3FD20DD760000000, float %1150, float %1151, float %1152)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1155 = call float @dx.op.dot4.f32(i32 56, float %975, float %976, float %977, float %978, float 0x3FD20DD760000000, float %1150, float %1151, float %1152)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1156 = fmul fast float %1153, 0x4003333340000000
  %1157 = fmul fast float %989, 0x3FE5AA35A0000000
  %1158 = fsub fast float %1156, %1157
  %1159 = fmul fast float %1154, 0x4003333340000000
  %1160 = fmul fast float %979, 0x3FE5AA35A0000000
  %1161 = fsub fast float %1159, %1160
  %1162 = fmul fast float %1155, 0x4003333340000000
  %1163 = fmul fast float %975, 0x3FE5AA35A0000000
  %1164 = fsub fast float %1162, %1163
  %1165 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1158)  ; FMax(a,b)
  %1166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1161)  ; FMax(a,b)
  %1167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1164)  ; FMax(a,b)
  %1168 = fsub fast float %1147, %1016
  %1169 = fsub fast float %1148, %1017
  %1170 = fsub fast float %1149, %1018
  %1171 = call float @dx.op.dot3.f32(i32 55, float %1168, float %1169, float %1170, float %1168, float %1169, float %1170)  ; Dot3(ax,ay,az,bx,by,bz)
  %1172 = call float @dx.op.unary.f32(i32 25, float %1171)  ; Rsqrt(value)
  %1173 = fmul fast float %1172, %1168
  %1174 = fmul fast float %1172, %1169
  %1175 = fmul fast float %1172, %1170
  %1176 = call float @dx.op.dot3.f32(i32 55, float %1011, float %1012, float %1013, float %1147, float %1148, float %1149)  ; Dot3(ax,ay,az,bx,by,bz)
  %1177 = call float @dx.op.unary.f32(i32 6, float %1176)  ; FAbs(value)
  %1178 = call float @dx.op.dot3.f32(i32 55, float %1011, float %1012, float %1013, float %1173, float %1174, float %1175)  ; Dot3(ax,ay,az,bx,by,bz)
  %1179 = fmul fast float %1178, %1178
  %1180 = call float @dx.op.dot3.f32(i32 55, float %1019, float %1020, float %1021, float %1173, float %1174, float %1175)  ; Dot3(ax,ay,az,bx,by,bz)
  %1181 = call float @dx.op.unary.f32(i32 6, float %1180)  ; FAbs(value)
  %1182 = fsub fast float 1.000000e+00, %1043
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float 0x3F847AE140000000)  ; FMax(a,b)
  %1184 = fmul fast float %1183, %1183
  %1185 = fmul fast float %1184, %1184
  %1186 = fsub fast float 1.000000e+00, %1185
  %1187 = fmul fast float %1135, %1135
  %1188 = fmul fast float %1187, %1186
  %1189 = fadd fast float %1188, %1185
  %1190 = bitcast float %1189 to i32
  %1191 = ashr i32 %1190, 1
  %1192 = add nsw i32 %1191, 532487669
  %1193 = bitcast i32 %1192 to float
  %1194 = fadd fast float %1193, %1135
  %1195 = fmul fast float %1185, %1179
  %1196 = fsub fast float 1.000000e+00, %1179
  %1197 = fadd fast float %1196, %1195
  %1198 = fmul fast float %1177, %1177
  %1199 = fmul fast float %1198, %1186
  %1200 = fadd fast float %1199, %1185
  %1201 = bitcast float %1200 to i32
  %1202 = ashr i32 %1201, 1
  %1203 = add nsw i32 %1202, 532487669
  %1204 = bitcast i32 %1203 to float
  %1205 = fadd fast float %1204, %1177
  %1206 = fmul fast float %1197, %1197
  %1207 = fmul fast float %1206, %1194
  %1208 = fmul fast float %1207, %1205
  %1209 = fdiv fast float 1.000000e+00, %1208
  %1210 = fmul fast float %1185, %1209
  %1211 = fsub fast float 1.000000e+00, %1181
  %1212 = bitcast float %1211 to i32
  %1213 = sitofp i32 %1212 to float
  %1214 = fmul fast float %1213, 5.000000e+00
  %1215 = fadd fast float %1214, 0xC1EFBF8940000000
  %1216 = fptosi float %1215 to i32
  %1217 = bitcast i32 %1216 to float
  %1218 = fsub fast float 1.000000e+00, %1040
  %1219 = fsub fast float 1.000000e+00, %1041
  %1220 = fsub fast float 1.000000e+00, %1042
  %1221 = fmul fast float %1217, %1218
  %1222 = fmul fast float %1217, %1219
  %1223 = fmul fast float %1217, %1220
  %1224 = fadd fast float %1221, %1040
  %1225 = fadd fast float %1222, %1041
  %1226 = fadd fast float %1223, %1042
  %1227 = fmul fast float %1210, %1165
  %1228 = fmul fast float %1227, %1224
  %1229 = fmul fast float %1210, %1166
  %1230 = fmul fast float %1229, %1225
  %1231 = fmul fast float %1210, %1167
  %1232 = fmul fast float %1231, %1226
  %1233 = call float @dx.op.binary.f32(i32 35, float %1228, float 0.000000e+00)  ; FMax(a,b)
  %1234 = call float @dx.op.binary.f32(i32 35, float %1230, float 0.000000e+00)  ; FMax(a,b)
  %1235 = call float @dx.op.binary.f32(i32 35, float %1232, float 0.000000e+00)  ; FMax(a,b)
  %1236 = fadd fast float %1233, %1131
  %1237 = fadd fast float %1234, %1132
  %1238 = fadd fast float %1235, %1133
  br label %1239

; <label>:1239                                    ; preds = %1136, %1121
  %1240 = phi float [ %1236, %1136 ], [ %1131, %1121 ]
  %1241 = phi float [ %1237, %1136 ], [ %1132, %1121 ]
  %1242 = phi float [ %1238, %1136 ], [ %1133, %1121 ]
  %1243 = fmul fast float %1135, 9.843750e-01
  %1244 = fmul fast float %1043, 9.843750e-01
  %1245 = fadd fast float %1243, 7.812500e-03
  %1246 = fadd fast float %1244, 7.812500e-03
  %1247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 3
  %1250 = fmul fast float %1248, %1040
  %1251 = fmul fast float %1248, %1041
  %1252 = fmul fast float %1248, %1042
  %1253 = fadd fast float %1250, %1249
  %1254 = fadd fast float %1251, %1249
  %1255 = fadd fast float %1252, %1249
  %1256 = call float @dx.op.binary.f32(i32 35, float %1254, float %1255)  ; FMax(a,b)
  %1257 = call float @dx.op.binary.f32(i32 35, float %1253, float %1256)  ; FMax(a,b)
  %1258 = fsub fast float 1.000000e+00, %1257
  %1259 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1017, float %1018, float %1011, float %1012, float %1013)  ; Dot3(ax,ay,az,bx,by,bz)
  %1260 = fmul fast float %1259, 2.000000e+00
  %1261 = fmul fast float %1260, %1011
  %1262 = fmul fast float %1260, %1012
  %1263 = fmul fast float %1260, %1013
  %1264 = fsub fast float %1016, %1261
  %1265 = fsub fast float %1017, %1262
  %1266 = fsub fast float %1018, %1263
  br i1 %1113, label %1267, label %1274

; <label>:1267                                    ; preds = %1239
  %1268 = fmul fast float %1265, 0xBFDF454380000000
  %1269 = fmul fast float %1266, 0x3FDF454380000000
  %1270 = fmul fast float %1264, 0xBFDF454380000000
  %1271 = call float @dx.op.dot4.f32(i32 56, float %989, float %988, float %987, float %986, float 0x3FD20DD760000000, float %1268, float %1269, float %1270)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1272 = call float @dx.op.dot4.f32(i32 56, float %979, float %980, float %981, float %982, float 0x3FD20DD760000000, float %1268, float %1269, float %1270)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1273 = call float @dx.op.dot4.f32(i32 56, float %975, float %976, float %977, float %978, float 0x3FD20DD760000000, float %1268, float %1269, float %1270)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1274

; <label>:1274                                    ; preds = %1267, %1239
  %1275 = phi float [ %1271, %1267 ], [ %989, %1239 ]
  %1276 = phi float [ %1272, %1267 ], [ %988, %1239 ]
  %1277 = phi float [ %1273, %1267 ], [ %987, %1239 ]
  %1278 = call float @dx.op.dot3.f32(i32 55, float %1275, float %1276, float %1277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1282 = fmul fast float %1280, %69
  %1283 = fmul fast float %1281, %70
  %1284 = fptoui float %1282 to i32
  %1285 = fptoui float %1283 to i32
  %1286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.CBufRet.f32 %1286, 2
  %1289 = extractvalue %dx.types.CBufRet.f32 %1286, 3
  %1290 = fadd fast float %62, -4.000000e+00
  %1291 = call float @dx.op.binary.f32(i32 35, float %1290, float 0.000000e+00)  ; FMax(a,b)
  %1292 = fadd fast float %1291, %1287
  %1293 = fmul fast float %1292, %1288
  %1294 = call float @dx.op.unary.f32(i32 23, float %1293)  ; Log(value)
  %1295 = fmul fast float %1294, %1289
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1298 = fmul fast float %1295, %1297
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.i32 %1300, 1
  %1302 = add i32 %1301, -1
  %1303 = uitofp i32 %1301 to float
  %1304 = fmul fast float %1303, %1299
  %1305 = fptoui float %1304 to i32
  %1306 = call i32 @dx.op.binary.i32(i32 40, i32 %1305, i32 %1302)  ; UMin(a,b)
  %1307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.i32 %1307, 2
  %1309 = extractvalue %dx.types.CBufRet.i32 %1307, 3
  %1310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1285, i32 %1308, i32 %1284)  ; UMad(a,b,c)
  %1311 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1306, i32 %1309, i32 %1310)  ; UMad(a,b,c)
  %1312 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %1313 = fptoui float %1312 to i32
  %1314 = lshr i32 %1313, 5
  %1315 = call i32 @dx.op.binary.i32(i32 40, i32 %1314, i32 8191)  ; UMin(a,b)
  %1316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.i32 %1316, 2
  %1318 = add nsw i32 %1317, -1
  %1319 = call i32 @dx.op.binary.i32(i32 37, i32 %1318, i32 0)  ; IMax(a,b)
  %1320 = shl i32 %1315, 2
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = lshr i32 %1322, 16
  %1324 = and i32 %1322, 65535
  %1325 = lshr i32 %1322, 21
  %1326 = lshr i32 %1324, 5
  %1327 = call i32 @dx.op.binary.i32(i32 40, i32 %1326, i32 %1319)  ; UMin(a,b)
  %1328 = icmp ugt i32 %1325, %1327
  br i1 %1328, label %1691, label %1329

; <label>:1329                                    ; preds = %1274
  br label %1330

; <label>:1330                                    ; preds = %1683, %1329
  %1331 = phi float [ %1684, %1683 ], [ 0.000000e+00, %1329 ]
  %1332 = phi float [ %1685, %1683 ], [ 0.000000e+00, %1329 ]
  %1333 = phi float [ %1686, %1683 ], [ 0.000000e+00, %1329 ]
  %1334 = phi float [ %1687, %1683 ], [ 1.000000e+00, %1329 ]
  %1335 = phi i32 [ %1688, %1683 ], [ %1325, %1329 ]
  %1336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.i32 %1336, 2
  %1338 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1311, i32 %1337, i32 %1335)  ; UMad(a,b,c)
  %1339 = shl i32 %1338, 2
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = shl i32 %1335, 5
  %1343 = sub nsw i32 %1323, %1342
  %1344 = call i32 @dx.op.binary.i32(i32 37, i32 %1343, i32 0)  ; IMax(a,b)
  %1345 = call i32 @dx.op.binary.i32(i32 38, i32 %1344, i32 31)  ; IMin(a,b)
  %1346 = sub nsw i32 1, %1323
  %1347 = add nsw i32 %1346, %1324
  %1348 = call i32 @dx.op.binary.i32(i32 37, i32 %1347, i32 0)  ; IMax(a,b)
  %1349 = call i32 @dx.op.binary.i32(i32 38, i32 %1348, i32 32)  ; IMin(a,b)
  %1350 = and i32 %1349, 31
  %1351 = shl i32 -1, %1350
  %1352 = xor i32 %1351, -1
  %1353 = and i32 %1345, 31
  %1354 = shl i32 %1352, %1353
  %1355 = icmp eq i32 %1349, 32
  %1356 = select i1 %1355, i32 -1, i32 %1354
  %1357 = and i32 %1356, %1341
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1683, label %1359

; <label>:1359                                    ; preds = %1330
  br label %1360

; <label>:1360                                    ; preds = %1466, %1359
  %1361 = phi float [ %1467, %1466 ], [ %1331, %1359 ]
  %1362 = phi float [ %1468, %1466 ], [ %1332, %1359 ]
  %1363 = phi float [ %1469, %1466 ], [ %1333, %1359 ]
  %1364 = phi float [ %1470, %1466 ], [ %1334, %1359 ]
  %1365 = phi i32 [ %1370, %1466 ], [ %1357, %1359 ]
  %1366 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1365)  ; FirstbitLo(value)
  %1367 = add i32 %1366, %1342
  %1368 = and i32 %1366, 31
  %1369 = shl i32 1, %1368
  %1370 = xor i32 %1369, %1365
  %1371 = mul i32 %1367, 72
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = add i32 %1371, 12
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = add i32 %1371, 16
  %1380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.ResRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.ResRet.f32 %1380, 2
  %1384 = add i32 %1371, 28
  %1385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = add i32 %1371, 32
  %1388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.ResRet.f32 %1388, 3
  %1393 = add i32 %1371, 48
  %1394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = add i32 %1371, 56
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = add i32 %1371, 64
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = mul i32 %1367, 60
  %1406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = add i32 %1405, 12
  %1411 = add i32 %1405, 48
  %1412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.ResRet.f32 %1412, 1
  %1415 = extractvalue %dx.types.ResRet.f32 %1412, 2
  %1416 = and i32 %1378, 32767
  %1417 = bitcast float %1373 to i32
  %1418 = icmp eq i32 %1417, -1
  %1419 = bitcast float %1374 to i32
  %1420 = and i32 %1378, 32768
  %1421 = icmp ne i32 %1420, 0
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.CBufRet.f32 %1422, 2
  %1426 = fsub fast float %1407, %1423
  %1427 = fsub fast float %1408, %1424
  %1428 = fsub fast float %1409, %1425
  %1429 = fsub fast float %104, %1426
  %1430 = fsub fast float %105, %1427
  %1431 = fsub fast float %106, %1428
  %1432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.ResRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.ResRet.f32 %1432, 2
  %1436 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float %1433, float %1434, float %1435)  ; Dot3(ax,ay,az,bx,by,bz)
  %1437 = add i32 %1405, 24
  %1438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float %1439, float %1440, float %1441)  ; Dot3(ax,ay,az,bx,by,bz)
  %1443 = add i32 %1405, 36
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.ResRet.f32 %1444, 1
  %1447 = extractvalue %dx.types.ResRet.f32 %1444, 2
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float %1445, float %1446, float %1447)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = call float @dx.op.unary.f32(i32 6, float %1436)  ; FAbs(value)
  %1450 = call float @dx.op.unary.f32(i32 6, float %1442)  ; FAbs(value)
  %1451 = call float @dx.op.unary.f32(i32 6, float %1448)  ; FAbs(value)
  %1452 = fsub fast float %1413, %1449
  %1453 = fsub fast float %1414, %1450
  %1454 = fsub fast float %1415, %1451
  %1455 = fmul fast float %1452, %1381
  %1456 = fmul fast float %1453, %1382
  %1457 = fmul fast float %1454, %1383
  %1458 = call float @dx.op.binary.f32(i32 36, float %1456, float %1457)  ; FMin(a,b)
  %1459 = call float @dx.op.binary.f32(i32 36, float %1455, float %1458)  ; FMin(a,b)
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1461 = call float @dx.op.binary.f32(i32 36, float %1364, float %1460)  ; FMin(a,b)
  %1462 = uitofp i1 %1421 to float
  %1463 = fsub fast float 1.000000e+00, %1462
  %1464 = fmul fast float %1461, %1463
  %1465 = fcmp fast ogt float %1464, 0.000000e+00
  br i1 %1465, label %1472, label %1466

; <label>:1466                                    ; preds = %1614, %1360
  %1467 = phi float [ %1678, %1614 ], [ %1361, %1360 ]
  %1468 = phi float [ %1679, %1614 ], [ %1362, %1360 ]
  %1469 = phi float [ %1680, %1614 ], [ %1363, %1360 ]
  %1470 = phi float [ %1681, %1614 ], [ %1364, %1360 ]
  %1471 = icmp eq i32 %1365, %1369
  br i1 %1471, label %1682, label %1360

; <label>:1472                                    ; preds = %1360
  br i1 %1418, label %1530, label %1473

; <label>:1473                                    ; preds = %1472
  %1474 = fsub fast float -0.000000e+00, %1433
  %1475 = fsub fast float -0.000000e+00, %1434
  %1476 = fsub fast float -0.000000e+00, %1435
  %1477 = call float @dx.op.dot3.f32(i32 55, float %1264, float %1265, float %1266, float %1474, float %1475, float %1476)  ; Dot3(ax,ay,az,bx,by,bz)
  %1478 = fsub fast float -0.000000e+00, %1477
  %1479 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float %1474, float %1475, float %1476)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = fadd fast float %1479, %1396
  %1481 = fadd fast float %1395, %1479
  %1482 = fsub fast float -0.000000e+00, %1481
  %1483 = fcmp ogt float %1477, -0.000000e+00
  %1484 = select i1 %1483, float %1482, float %1480
  %1485 = call float @dx.op.unary.f32(i32 6, float %1478)  ; FAbs(value)
  %1486 = fdiv fast float 1.000000e+00, %1485
  %1487 = fmul fast float %1484, %1486
  %1488 = call float @dx.op.binary.f32(i32 35, float %1487, float 0.000000e+00)  ; FMax(a,b)
  %1489 = fsub fast float -0.000000e+00, %1439
  %1490 = fsub fast float -0.000000e+00, %1440
  %1491 = fsub fast float -0.000000e+00, %1441
  %1492 = call float @dx.op.dot3.f32(i32 55, float %1264, float %1265, float %1266, float %1489, float %1490, float %1491)  ; Dot3(ax,ay,az,bx,by,bz)
  %1493 = fsub fast float -0.000000e+00, %1492
  %1494 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float %1489, float %1490, float %1491)  ; Dot3(ax,ay,az,bx,by,bz)
  %1495 = fadd fast float %1494, %1400
  %1496 = fadd fast float %1399, %1494
  %1497 = fsub fast float -0.000000e+00, %1496
  %1498 = fcmp ogt float %1492, -0.000000e+00
  %1499 = select i1 %1498, float %1497, float %1495
  %1500 = call float @dx.op.unary.f32(i32 6, float %1493)  ; FAbs(value)
  %1501 = fdiv fast float 1.000000e+00, %1500
  %1502 = fmul fast float %1499, %1501
  %1503 = call float @dx.op.binary.f32(i32 35, float %1502, float 0.000000e+00)  ; FMax(a,b)
  %1504 = fsub fast float -0.000000e+00, %1445
  %1505 = fsub fast float -0.000000e+00, %1446
  %1506 = fsub fast float -0.000000e+00, %1447
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1264, float %1265, float %1266, float %1504, float %1505, float %1506)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = fsub fast float -0.000000e+00, %1507
  %1509 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float %1504, float %1505, float %1506)  ; Dot3(ax,ay,az,bx,by,bz)
  %1510 = fadd fast float %1509, %1404
  %1511 = fadd fast float %1403, %1509
  %1512 = fsub fast float -0.000000e+00, %1511
  %1513 = fcmp ogt float %1507, -0.000000e+00
  %1514 = select i1 %1513, float %1512, float %1510
  %1515 = call float @dx.op.unary.f32(i32 6, float %1508)  ; FAbs(value)
  %1516 = fdiv fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1514, %1516
  %1518 = call float @dx.op.binary.f32(i32 35, float %1517, float 0.000000e+00)  ; FMax(a,b)
  %1519 = call float @dx.op.binary.f32(i32 36, float %1503, float %1518)  ; FMin(a,b)
  %1520 = call float @dx.op.binary.f32(i32 36, float %1488, float %1519)  ; FMin(a,b)
  %1521 = fmul fast float %1520, %1264
  %1522 = fmul fast float %1520, %1265
  %1523 = fmul fast float %1520, %1266
  %1524 = fadd fast float %1521, %104
  %1525 = fadd fast float %1522, %105
  %1526 = fadd fast float %1523, %106
  %1527 = fsub fast float %1524, %1373
  %1528 = fsub fast float %1525, %1374
  %1529 = fsub fast float %1526, %1375
  br label %1537

; <label>:1530                                    ; preds = %1472
  %1531 = fmul fast float %1264, 8.096000e+03
  %1532 = fmul fast float %1265, 8.096000e+03
  %1533 = fmul fast float %1266, 8.096000e+03
  %1534 = fadd fast float %1531, %104
  %1535 = fadd fast float %1532, %105
  %1536 = fadd fast float %1533, %106
  br label %1537

; <label>:1537                                    ; preds = %1530, %1473
  %1538 = phi float [ %1264, %1530 ], [ %1527, %1473 ]
  %1539 = phi float [ %1265, %1530 ], [ %1528, %1473 ]
  %1540 = phi float [ %1266, %1530 ], [ %1529, %1473 ]
  %1541 = phi float [ %1534, %1530 ], [ %1524, %1473 ]
  %1542 = phi float [ %1535, %1530 ], [ %1525, %1473 ]
  %1543 = phi float [ %1536, %1530 ], [ %1526, %1473 ]
  %1544 = fcmp fast olt float %1392, 1.000000e+00
  br i1 %1544, label %1545, label %1576, !dx.controlflow.hints !79

; <label>:1545                                    ; preds = %1537
  %1546 = fmul fast float %1540, %1390
  %1547 = fmul fast float %1539, %1391
  %1548 = fsub fast float %1546, %1547
  %1549 = fmul fast float %1538, %1391
  %1550 = fmul fast float %1540, %1389
  %1551 = fsub fast float %1549, %1550
  %1552 = fmul fast float %1539, %1389
  %1553 = fmul fast float %1538, %1390
  %1554 = fsub fast float %1552, %1553
  %1555 = fmul fast float %1548, 2.000000e+00
  %1556 = fmul fast float %1551, 2.000000e+00
  %1557 = fmul fast float %1554, 2.000000e+00
  %1558 = fmul fast float %1555, %1392
  %1559 = fmul fast float %1556, %1392
  %1560 = fmul fast float %1557, %1392
  %1561 = fmul fast float %1557, %1390
  %1562 = fmul fast float %1556, %1391
  %1563 = fmul fast float %1555, %1391
  %1564 = fmul fast float %1557, %1389
  %1565 = fmul fast float %1556, %1389
  %1566 = fmul fast float %1555, %1390
  %1567 = fadd fast float %1561, %1538
  %1568 = fadd fast float %1567, %1558
  %1569 = fsub fast float %1568, %1562
  %1570 = fsub fast float %1539, %1564
  %1571 = fadd fast float %1570, %1559
  %1572 = fadd fast float %1571, %1563
  %1573 = fadd fast float %1560, %1540
  %1574 = fsub fast float %1573, %1566
  %1575 = fadd fast float %1574, %1565
  br label %1576

; <label>:1576                                    ; preds = %1545, %1537
  %1577 = phi float [ %1569, %1545 ], [ %1538, %1537 ]
  %1578 = phi float [ %1572, %1545 ], [ %1539, %1537 ]
  %1579 = phi float [ %1575, %1545 ], [ %1540, %1537 ]
  br i1 %1418, label %1611, label %1580

; <label>:1580                                    ; preds = %1576
  %1581 = fmul fast float %1043, 0x400187C840000000
  %1582 = fadd fast float %1581, 0xC00EFC2120000000
  %1583 = fmul fast float %1582, %1043
  %1584 = fadd fast float %1583, 0x3FE5D16340000000
  %1585 = fmul fast float %1584, %1043
  %1586 = fadd fast float %1585, 1.000000e+00
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fsub fast float %1541, %104
  %1589 = fsub fast float %1542, %105
  %1590 = fsub fast float %1543, %106
  %1591 = fsub fast float %1541, %1373
  %1592 = fsub fast float %1542, %1374
  %1593 = fsub fast float %1543, %1375
  %1594 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1589, float %1590, float %1588, float %1589, float %1590)  ; Dot3(ax,ay,az,bx,by,bz)
  %1595 = call float @dx.op.dot3.f32(i32 55, float %1591, float %1592, float %1593, float %1591, float %1592, float %1593)  ; Dot3(ax,ay,az,bx,by,bz)
  %1596 = fadd fast float %1595, 0x3EE4F8B580000000
  %1597 = fdiv fast float %1594, %1596
  %1598 = bitcast float %1597 to i32
  %1599 = ashr i32 %1598, 1
  %1600 = add nsw i32 %1599, 532487669
  %1601 = bitcast i32 %1600 to float
  %1602 = fmul fast float %1601, %1587
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  %1604 = fmul fast float %1603, 0x4009981AE0000000
  %1605 = fsub fast float 0x40111BBD80000000, %1604
  %1606 = fmul fast float %1605, %1603
  %1607 = fadd fast float %1606, 0xC0009F6020000000
  %1608 = fmul fast float %1607, %1603
  %1609 = fadd fast float %1608, 1.000000e+00
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  br label %1614

; <label>:1611                                    ; preds = %1576
  %1612 = icmp ne i32 %1419, -1
  %1613 = zext i1 %1612 to i32
  br label %1614

; <label>:1614                                    ; preds = %1611, %1580
  %1615 = phi float [ %1043, %1611 ], [ %1610, %1580 ]
  %1616 = phi i32 [ %1613, %1611 ], [ 0, %1580 ]
  %1617 = fmul float %1615, 5.000000e+00
  %1618 = fsub float 5.000000e+00, %1617
  %1619 = icmp ne i32 %1616, 0
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 3
  %1622 = fadd fast float %1621, %1618
  %1623 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1622)  ; FMax(a,b)
  %1624 = call float @dx.op.unary.f32(i32 6, float %1577)  ; FAbs(value)
  %1625 = call float @dx.op.unary.f32(i32 6, float %1578)  ; FAbs(value)
  %1626 = fadd fast float %1625, %1624
  %1627 = call float @dx.op.unary.f32(i32 6, float %1579)  ; FAbs(value)
  %1628 = fadd fast float %1626, %1627
  %1629 = fcmp fast oeq float %1628, 0.000000e+00
  %1630 = fdiv fast float 1.000000e+00, %1628
  %1631 = select i1 %1629, float 1.000000e+00, float %1630
  %1632 = fmul fast float %1631, %1577
  %1633 = fmul fast float %1631, %1578
  %1634 = call float @dx.op.unary.f32(i32 6, float %1633)  ; FAbs(value)
  %1635 = call float @dx.op.unary.f32(i32 6, float %1632)  ; FAbs(value)
  %1636 = fsub fast float 1.000000e+00, %1634
  %1637 = fsub fast float 1.000000e+00, %1635
  %1638 = fcmp fast oge float %1632, 0.000000e+00
  %1639 = fcmp fast oge float %1633, 0.000000e+00
  %1640 = select i1 %1638, float 1.000000e+00, float -1.000000e+00
  %1641 = select i1 %1639, float 1.000000e+00, float -1.000000e+00
  %1642 = fcmp fast ole float %1579, 0.000000e+00
  %1643 = fmul fast float %1640, %1636
  %1644 = fmul fast float %1641, %1637
  %1645 = select i1 %1642, float %1643, float %1632
  %1646 = select i1 %1642, float %1644, float %1633
  %1647 = fmul fast float %1645, 5.000000e-01
  %1648 = fmul fast float %1646, 5.000000e-01
  %1649 = fadd fast float %1647, 5.000000e-01
  %1650 = fadd fast float %1648, 5.000000e-01
  %1651 = uitofp i32 %1416 to float
  %1652 = call float @dx.op.binary.f32(i32 36, float %1623, float 3.000000e+00)  ; FMin(a,b)
  %1653 = fadd fast float %1652, 2.000000e+00
  %1654 = call float @dx.op.unary.f32(i32 21, float %1653)  ; Exp(value)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1656 = fmul fast float %1655, %1654
  %1657 = fmul fast float %1656, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1649, %1658
  %1660 = fmul fast float %1650, %1658
  %1661 = fadd fast float %1659, %1656
  %1662 = fadd fast float %1660, %1656
  %1663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1661, float %1662, float %1651, float undef, i32 0, i32 0, i32 undef, float %1623)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 3
  %1669 = fmul fast float %1668, %1386
  %1670 = call float @dx.op.binary.f32(i32 36, float %1278, float %1669)  ; FMin(a,b)
  %1671 = select i1 %1619, float %1670, float %1669
  %1672 = fmul fast float %1664, %1464
  %1673 = fmul fast float %1672, %1671
  %1674 = fmul fast float %1665, %1464
  %1675 = fmul fast float %1674, %1671
  %1676 = fmul fast float %1666, %1464
  %1677 = fmul fast float %1676, %1671
  %1678 = fadd fast float %1673, %1361
  %1679 = fadd fast float %1675, %1362
  %1680 = fadd fast float %1677, %1363
  %1681 = fsub fast float %1364, %1464
  br label %1466

; <label>:1682                                    ; preds = %1466
  br label %1683

; <label>:1683                                    ; preds = %1682, %1330
  %1684 = phi float [ %1331, %1330 ], [ %1467, %1682 ]
  %1685 = phi float [ %1332, %1330 ], [ %1468, %1682 ]
  %1686 = phi float [ %1333, %1330 ], [ %1469, %1682 ]
  %1687 = phi float [ %1334, %1330 ], [ %1470, %1682 ]
  %1688 = add i32 %1335, 1
  %1689 = icmp ugt i32 %1688, %1327
  br i1 %1689, label %1690, label %1330, !llvm.loop !80

; <label>:1690                                    ; preds = %1683
  br label %1691

; <label>:1691                                    ; preds = %1690, %1274
  %1692 = phi float [ 0.000000e+00, %1274 ], [ %1684, %1690 ]
  %1693 = phi float [ 0.000000e+00, %1274 ], [ %1685, %1690 ]
  %1694 = phi float [ 0.000000e+00, %1274 ], [ %1686, %1690 ]
  %1695 = call float @dx.op.dot3.f32(i32 55, float %1692, float %1693, float %1694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1696 = select i1 %139, float 0.000000e+00, float %1692
  %1697 = select i1 %139, float %1695, float %1693
  %1698 = select i1 %139, float 0.000000e+00, float %1694
  %1699 = fmul fast float %1696, %1253
  %1700 = fmul fast float %1697, %1254
  %1701 = fmul fast float %1698, %1255
  %1702 = call float @dx.op.binary.f32(i32 35, float %1699, float 0.000000e+00)  ; FMax(a,b)
  %1703 = call float @dx.op.binary.f32(i32 35, float %1700, float 0.000000e+00)  ; FMax(a,b)
  %1704 = call float @dx.op.binary.f32(i32 35, float %1701, float 0.000000e+00)  ; FMax(a,b)
  %1705 = fadd fast float %1702, %1240
  %1706 = fadd fast float %1703, %1241
  %1707 = fadd fast float %1704, %1242
  %1708 = fmul fast float %1705, %673
  %1709 = fmul fast float %1706, %673
  %1710 = fmul fast float %1707, %673
  %1711 = fsub fast float 1.000000e+00, %673
  %1712 = call float @dx.op.dot3.f32(i32 55, float %1711, float %1711, float %1711, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1713 = fsub fast float 1.000000e+00, %1712
  %1714 = fmul fast float %1085, %1066
  %1715 = fsub fast float 1.000000e+00, %1086
  %1716 = fsub fast float %1715, %1066
  %1717 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 3
  %1720 = fmul fast float %1719, %1717
  %1721 = fadd fast float %1720, %1714
  %1722 = and i32 %159, 1048576
  %1723 = icmp eq i32 %1722, 0
  br i1 %1723, label %1808, label %1724, !dx.controlflow.hints !82

; <label>:1724                                    ; preds = %1691
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 3
  %1728 = fmul fast float %1726, %69
  %1729 = fmul fast float %1727, %70
  %1730 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1731 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1732 = select i1 %1110, i32 2, i32 0
  %1733 = or i32 %1732, 1
  %1734 = uitofp i32 %1733 to float
  %1735 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1730, float %1731, float %1734, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = extractvalue %dx.types.ResRet.f32 %1735, 1
  %1738 = extractvalue %dx.types.ResRet.f32 %1735, 2
  %1739 = extractvalue %dx.types.ResRet.f32 %1735, 3
  %1740 = add nuw nsw i32 %1732, 2
  %1741 = uitofp i32 %1740 to float
  %1742 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1730, float %1731, float %1741, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.ResRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.ResRet.f32 %1742, 2
  %1746 = extractvalue %dx.types.ResRet.f32 %1742, 3
  %1747 = call float @dx.op.binary.f32(i32 35, float %1737, float %1738)  ; FMax(a,b)
  %1748 = call float @dx.op.binary.f32(i32 35, float %1736, float %1747)  ; FMax(a,b)
  %1749 = call float @dx.op.binary.f32(i32 35, float %1748, float %1739)  ; FMax(a,b)
  %1750 = call float @dx.op.binary.f32(i32 36, float %1744, float %1745)  ; FMin(a,b)
  %1751 = call float @dx.op.binary.f32(i32 36, float %1743, float %1750)  ; FMin(a,b)
  %1752 = call float @dx.op.binary.f32(i32 36, float %1751, float %1746)  ; FMin(a,b)
  %1753 = fmul fast float %1749, 2.550000e+02
  %1754 = fadd fast float %1753, 0x3F70101020000000
  %1755 = fptoui float %1754 to i32
  %1756 = fmul fast float %1752, 2.550000e+02
  %1757 = fadd fast float %1756, 0x3F70101020000000
  %1758 = fptoui float %1757 to i32
  %1759 = icmp ult i32 %1755, %1758
  br i1 %1759, label %1760, label %1801

; <label>:1760                                    ; preds = %1724
  %1761 = fcmp fast ogt float %61, 9.843750e-01
  %1762 = select i1 %1761, float -4.000000e+00, float %1290
  %1763 = call float @dx.op.binary.f32(i32 35, float %1762, float 0.000000e+00)  ; FMax(a,b)
  %1764 = fadd fast float %1287, %1763
  %1765 = fmul fast float %1764, %1288
  %1766 = call float @dx.op.unary.f32(i32 23, float %1765)  ; Log(value)
  %1767 = fmul fast float %1289, %1766
  %1768 = fmul fast float %1767, %1297
  %1769 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  %1770 = uitofp i32 %1755 to float
  %1771 = uitofp i32 %1758 to float
  %1772 = fadd fast float %1770, 5.000000e-01
  %1773 = fadd fast float %1771, 5.000000e-01
  %1774 = fmul fast float %1297, %1772
  %1775 = fmul fast float %1297, %1773
  %1776 = fadd fast float %1774, 0x3F0FFB4800000000
  %1777 = fadd fast float %1775, 0xBF0FFB4800000000
  %1778 = call float @dx.op.binary.f32(i32 35, float %1769, float %1776)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 36, float %1778, float %1777)  ; FMin(a,b)
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1782 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1783 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1784 = select i1 %1110, float %1783, float 0.000000e+00
  %1785 = fmul fast float %1781, %1779
  %1786 = fadd fast float %1784, %1785
  %1787 = fadd fast float %1784, %1782
  %1788 = fsub fast float %1781, %1782
  %1789 = fadd fast float %1788, %1784
  %1790 = call float @dx.op.binary.f32(i32 35, float %1786, float %1787)  ; FMax(a,b)
  %1791 = call float @dx.op.binary.f32(i32 36, float %1790, float %1789)  ; FMin(a,b)
  %1792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1730, float %1731, float %1791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.ResRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.ResRet.f32 %1792, 2
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 1
  %1798 = fmul fast float %1797, %1793
  %1799 = fmul fast float %1797, %1794
  %1800 = fmul fast float %1797, %1795
  br label %1801

; <label>:1801                                    ; preds = %1760, %1724
  %1802 = phi float [ %1798, %1760 ], [ 1.000000e+00, %1724 ]
  %1803 = phi float [ %1799, %1760 ], [ 1.000000e+00, %1724 ]
  %1804 = phi float [ %1800, %1760 ], [ 1.000000e+00, %1724 ]
  %1805 = fmul fast float %1802, %1708
  %1806 = fmul fast float %1803, %1709
  %1807 = fmul fast float %1804, %1710
  br label %1808

; <label>:1808                                    ; preds = %1801, %1691
  %1809 = phi float [ %1805, %1801 ], [ %1708, %1691 ]
  %1810 = phi float [ %1806, %1801 ], [ %1709, %1691 ]
  %1811 = phi float [ %1807, %1801 ], [ %1710, %1691 ]
  %1812 = and i32 %159, 2097152
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1818, label %1814, !dx.controlflow.hints !83

; <label>:1814                                    ; preds = %1808
  %1815 = add i32 %156, 192
  %1816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.f32 %1816, 0
  br label %1821

; <label>:1818                                    ; preds = %1808
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 3
  br label %1821

; <label>:1821                                    ; preds = %1818, %1814
  %1822 = phi float [ %1817, %1814 ], [ %1820, %1818 ]
  %1823 = fmul fast float %1031, %673
  %1824 = fmul fast float %1823, %1122
  %1825 = fmul fast float %1824, %1258
  %1826 = fmul fast float %1032, %673
  %1827 = fmul fast float %1826, %1123
  %1828 = fmul fast float %1827, %1258
  %1829 = fmul fast float %1033, %673
  %1830 = fmul fast float %1829, %1124
  %1831 = fmul fast float %1830, %1258
  br i1 %1105, label %1832, label %1965

; <label>:1832                                    ; preds = %1821
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 3
  %1836 = fmul fast float %1834, %69
  %1837 = fmul fast float %1835, %70
  %1838 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1839 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1840 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1838, float %1839, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1841 = extractvalue %dx.types.ResRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.ResRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.ResRet.f32 %1840, 2
  %1844 = extractvalue %dx.types.ResRet.f32 %1840, 3
  %1845 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1838, float %1839, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.ResRet.f32 %1845, 1
  %1848 = extractvalue %dx.types.ResRet.f32 %1845, 2
  %1849 = extractvalue %dx.types.ResRet.f32 %1845, 3
  %1850 = call float @dx.op.binary.f32(i32 35, float %1842, float %1843)  ; FMax(a,b)
  %1851 = call float @dx.op.binary.f32(i32 35, float %1841, float %1850)  ; FMax(a,b)
  %1852 = call float @dx.op.binary.f32(i32 35, float %1851, float %1844)  ; FMax(a,b)
  %1853 = call float @dx.op.binary.f32(i32 36, float %1847, float %1848)  ; FMin(a,b)
  %1854 = call float @dx.op.binary.f32(i32 36, float %1846, float %1853)  ; FMin(a,b)
  %1855 = call float @dx.op.binary.f32(i32 36, float %1854, float %1849)  ; FMin(a,b)
  %1856 = fmul fast float %1852, 2.550000e+02
  %1857 = fadd fast float %1856, 0x3F70101020000000
  %1858 = fptoui float %1857 to i32
  %1859 = fmul fast float %1855, 2.550000e+02
  %1860 = fadd fast float %1859, 0x3F70101020000000
  %1861 = fptoui float %1860 to i32
  %1862 = icmp ult i32 %1858, %1861
  br i1 %1862, label %1863, label %1907

; <label>:1863                                    ; preds = %1832
  %1864 = fcmp fast ogt float %61, 9.843750e-01
  %1865 = select i1 %1864, float -4.000000e+00, float %1290
  %1866 = call float @dx.op.binary.f32(i32 35, float %1865, float 0.000000e+00)  ; FMax(a,b)
  %1867 = fadd fast float %1287, %1866
  %1868 = fmul fast float %1867, %1288
  %1869 = call float @dx.op.unary.f32(i32 23, float %1868)  ; Log(value)
  %1870 = fmul fast float %1289, %1869
  %1871 = fmul fast float %1870, %1297
  %1872 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1873 = uitofp i32 %1858 to float
  %1874 = uitofp i32 %1861 to float
  %1875 = fadd fast float %1873, 5.000000e-01
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fmul fast float %1297, %1875
  %1878 = fmul fast float %1297, %1876
  %1879 = fadd fast float %1877, 0x3F0FFB4800000000
  %1880 = fadd fast float %1878, 0xBF0FFB4800000000
  %1881 = call float @dx.op.binary.f32(i32 35, float %1872, float %1879)  ; FMax(a,b)
  %1882 = call float @dx.op.binary.f32(i32 36, float %1881, float %1880)  ; FMin(a,b)
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 1
  %1885 = extractvalue %dx.types.CBufRet.f32 %1883, 2
  %1886 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1887 = fmul fast float %1884, %1882
  %1888 = fadd fast float %1886, %1887
  %1889 = fadd fast float %1886, %1885
  %1890 = fsub fast float %1884, %1885
  %1891 = fadd fast float %1890, %1886
  %1892 = call float @dx.op.binary.f32(i32 35, float %1888, float %1889)  ; FMax(a,b)
  %1893 = call float @dx.op.binary.f32(i32 36, float %1892, float %1891)  ; FMin(a,b)
  %1894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1838, float %1839, float %1893, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.ResRet.f32 %1894, 2
  %1898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1838, float %1839, float %1893, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.ResRet.f32 %1898, 1
  %1901 = extractvalue %dx.types.ResRet.f32 %1898, 2
  %1902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1903 = extractvalue %dx.types.CBufRet.f32 %1902, 1
  %1904 = fmul fast float %1903, %1899
  %1905 = fmul fast float %1903, %1900
  %1906 = fmul fast float %1903, %1901
  br label %1907

; <label>:1907                                    ; preds = %1863, %1832
  %1908 = phi float [ %1895, %1863 ], [ 1.000000e+00, %1832 ]
  %1909 = phi float [ %1896, %1863 ], [ 1.000000e+00, %1832 ]
  %1910 = phi float [ %1897, %1863 ], [ 1.000000e+00, %1832 ]
  %1911 = phi float [ %1904, %1863 ], [ 0.000000e+00, %1832 ]
  %1912 = phi float [ %1905, %1863 ], [ 0.000000e+00, %1832 ]
  %1913 = phi float [ %1906, %1863 ], [ 0.000000e+00, %1832 ]
  %1914 = fmul fast float %1911, %1713
  %1915 = fmul fast float %1912, %1713
  %1916 = fmul fast float %1913, %1713
  %1917 = call float @dx.op.dot3.f32(i32 55, float %1908, float %1909, float %1910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1918 = call float @dx.op.dot3.f32(i32 55, float %1914, float %1915, float %1916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1919 = select i1 %139, float %1917, float %1908
  %1920 = select i1 %139, float %1917, float %1909
  %1921 = select i1 %139, float 1.000000e+00, float %1910
  %1922 = select i1 %139, float %1918, float %1914
  %1923 = select i1 %139, float 0.000000e+00, float %1915
  %1924 = select i1 %139, float 0.000000e+00, float %1916
  %1925 = fmul fast float %1919, %1825
  %1926 = fmul fast float %1920, %1828
  %1927 = fmul fast float %1921, %1831
  %1928 = fadd fast float %1925, %1922
  %1929 = fadd fast float %1926, %1923
  %1930 = fadd fast float %1924, %1927
  %1931 = fmul fast float %1919, %1809
  %1932 = fmul fast float %1920, %1810
  %1933 = fmul fast float %1921, %1811
  %1934 = fmul fast float %74, %1834
  %1935 = fmul fast float %76, %1835
  %1936 = fsub fast float 1.000000e+00, %1934
  %1937 = fsub fast float 1.000000e+00, %1935
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.CBufRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.CBufRet.f32 %1938, 2
  %1942 = fmul fast float %1936, %1939
  %1943 = fmul fast float %1936, %1940
  %1944 = fmul fast float %1936, %1941
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.CBufRet.f32 %1945, 1
  %1948 = extractvalue %dx.types.CBufRet.f32 %1945, 2
  %1949 = fmul fast float %1937, %1946
  %1950 = fmul fast float %1937, %1947
  %1951 = fmul fast float %1937, %1948
  %1952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.CBufRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.CBufRet.f32 %1952, 2
  %1956 = fadd fast float %1949, %1953
  %1957 = fadd fast float %1956, %1942
  %1958 = fadd fast float %1950, %1954
  %1959 = fadd fast float %1958, %1943
  %1960 = fadd fast float %1951, %1955
  %1961 = fadd fast float %1960, %1944
  %1962 = fmul fast float %1957, %1102
  %1963 = fmul fast float %1959, %1102
  %1964 = fmul fast float %1961, %1102
  br label %1965

; <label>:1965                                    ; preds = %1907, %1821
  %1966 = phi float [ %1962, %1907 ], [ %104, %1821 ]
  %1967 = phi float [ %1963, %1907 ], [ %105, %1821 ]
  %1968 = phi float [ %1964, %1907 ], [ %106, %1821 ]
  %1969 = phi float [ %1102, %1907 ], [ %62, %1821 ]
  %1970 = phi float [ %1928, %1907 ], [ %1825, %1821 ]
  %1971 = phi float [ %1929, %1907 ], [ %1828, %1821 ]
  %1972 = phi float [ %1930, %1907 ], [ %1831, %1821 ]
  %1973 = phi float [ %1931, %1907 ], [ %1809, %1821 ]
  %1974 = phi float [ %1932, %1907 ], [ %1810, %1821 ]
  %1975 = phi float [ %1933, %1907 ], [ %1811, %1821 ]
  %1976 = phi float [ %1908, %1907 ], [ 1.000000e+00, %1821 ]
  br i1 %1110, label %3032, label %1977

; <label>:1977                                    ; preds = %1965
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %1981 = extractvalue %dx.types.CBufRet.f32 %1978, 2
  %1982 = extractvalue %dx.types.CBufRet.f32 %1978, 3
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.CBufRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.CBufRet.f32 %1983, 2
  %1987 = extractvalue %dx.types.CBufRet.f32 %1983, 3
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1992 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.CBufRet.f32 %1993, 2
  %1997 = extractvalue %dx.types.CBufRet.f32 %1993, 3
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 3
  %2002 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2003 = extractvalue %dx.types.CBufRet.f32 %2000, 1
  %2004 = extractvalue %dx.types.CBufRet.f32 %2000, 2
  %2005 = fcmp fast olt float %2004, -5.000000e-01
  %2006 = call float @dx.op.dot3.f32(i32 55, float %1966, float %1967, float %1968, float %1966, float %1967, float %1968)  ; Dot3(ax,ay,az,bx,by,bz)
  %2007 = call float @dx.op.unary.f32(i32 25, float %2006)  ; Rsqrt(value)
  %2008 = fmul fast float %2007, %2006
  %2009 = fmul fast float %2007, %1966
  %2010 = fmul fast float %2007, %1967
  %2011 = fmul fast float %2007, %1968
  %2012 = fadd fast float %2008, %1982
  %2013 = call float @dx.op.dot3.f32(i32 55, float %2009, float %2010, float %2011, float %1979, float %1980, float %1981)  ; Dot3(ax,ay,az,bx,by,bz)
  %2014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.i32 %2014, 1
  %2016 = and i32 %2015, 1
  %2017 = icmp ne i32 %2016, 0
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 2
  %2020 = fcmp fast ogt float %2019, 0.000000e+00
  %2021 = and i1 %2017, %2020
  br i1 %2021, label %2022, label %2428, !dx.controlflow.hints !84

; <label>:2022                                    ; preds = %1977
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 2
  %2029 = fsub fast float %2026, %2028
  %2030 = and i32 %2015, 2
  %2031 = extractvalue %dx.types.CBufRet.i32 %2014, 0
  %2032 = call i32 @dx.op.binary.i32(i32 40, i32 %2031, i32 3)  ; UMin(a,b)
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.CBufRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2027, 1
  %2038 = fsub fast float %2034, %2036
  %2039 = fsub fast float %2035, %2037
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = fcmp fast ogt float %2041, 0.000000e+00
  %2043 = fsub fast float -0.000000e+00, %2038
  %2044 = fsub fast float -0.000000e+00, %2039
  %2045 = call float @dx.op.dot2.f32(i32 54, float %2009, float %2010, float %2009, float %2010)  ; Dot2(ax,ay,bx,by)
  %2046 = call float @dx.op.dot2.f32(i32 54, float %2009, float %2010, float %2043, float %2044)  ; Dot2(ax,ay,bx,by)
  %2047 = fmul fast float %2046, 2.000000e+00
  %2048 = call float @dx.op.dot2.f32(i32 54, float %2043, float %2044, float %2043, float %2044)  ; Dot2(ax,ay,bx,by)
  %2049 = fmul fast float %2041, %2041
  %2050 = fsub fast float %2048, %2049
  %2051 = fmul fast float %2047, %2047
  %2052 = fmul fast float %2045, 4.000000e+00
  %2053 = fmul fast float %2052, %2050
  %2054 = fsub fast float %2051, %2053
  %2055 = fcmp fast ogt float %2054, 0.000000e+00
  br i1 %2055, label %2056, label %2071

; <label>:2056                                    ; preds = %2022
  %2057 = fcmp fast ogt float %2047, 0.000000e+00
  %2058 = call float @dx.op.unary.f32(i32 24, float %2054)  ; Sqrt(value)
  %2059 = fsub fast float -0.000000e+00, %2058
  %2060 = select i1 %2057, float %2058, float %2059
  %2061 = fadd fast float %2060, %2047
  %2062 = fmul float %2061, -5.000000e-01
  %2063 = fdiv fast float %2062, %2045
  %2064 = call float @dx.op.binary.f32(i32 35, float %2063, float 0.000000e+00)  ; FMax(a,b)
  %2065 = call float @dx.op.binary.f32(i32 36, float %2008, float %2064)  ; FMin(a,b)
  %2066 = fdiv fast float %2050, %2062
  %2067 = call float @dx.op.binary.f32(i32 35, float %2066, float 0.000000e+00)  ; FMax(a,b)
  %2068 = call float @dx.op.binary.f32(i32 36, float %2008, float %2067)  ; FMin(a,b)
  %2069 = call float @dx.op.binary.f32(i32 36, float %2065, float %2068)  ; FMin(a,b)
  %2070 = call float @dx.op.binary.f32(i32 35, float %2065, float %2068)  ; FMax(a,b)
  br label %2071

; <label>:2071                                    ; preds = %2056, %2022
  %2072 = phi float [ %2070, %2056 ], [ -1.000000e+00, %2022 ]
  %2073 = phi float [ %2069, %2056 ], [ -1.000000e+00, %2022 ]
  %2074 = phi i1 [ true, %2056 ], [ false, %2022 ]
  %2075 = and i1 %2042, %2074
  br i1 %2075, label %2076, label %2078

; <label>:2076                                    ; preds = %2071
  %2077 = fcmp fast oeq float %2073, %2072
  br i1 %2077, label %2381, label %2079

; <label>:2078                                    ; preds = %2071
  br i1 %2042, label %2381, label %2079

; <label>:2079                                    ; preds = %2078, %2076
  %2080 = phi float [ %2008, %2078 ], [ %2072, %2076 ]
  %2081 = phi float [ 0.000000e+00, %2078 ], [ %2073, %2076 ]
  %2082 = icmp ne i32 %2030, 0
  %2083 = fmul fast float %2080, %2011
  %2084 = fadd fast float %2083, %2024
  %2085 = fmul fast float %2084, %2080
  %2086 = select i1 %2082, float 0.000000e+00, float %2085
  %2087 = fcmp fast oeq float %2011, 0.000000e+00
  %2088 = fdiv fast float %2029, %2011
  %2089 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2088)  ; FMax(a,b)
  %2090 = select i1 %2087, float %2080, float %2089
  %2091 = call float @dx.op.binary.f32(i32 36, float %2080, float %2090)  ; FMin(a,b)
  %2092 = fcmp fast ogt float %2011, 0.000000e+00
  %2093 = fcmp fast olt float %2029, 0.000000e+00
  br i1 %2092, label %2094, label %2151

; <label>:2094                                    ; preds = %2079
  %2095 = icmp eq i32 %2030, 0
  br i1 %2093, label %2096, label %2140

; <label>:2096                                    ; preds = %2094
  %2097 = select i1 %2095, float %2080, float 0.000000e+00
  %2098 = fsub fast float -0.000000e+00, %2097
  %2099 = call float @dx.op.unary.f32(i32 6, float %2098)  ; FAbs(value)
  %2100 = fmul fast float %2097, %2011
  %2101 = fadd fast float %2100, %2024
  %2102 = fmul fast float %2099, %2101
  %2103 = fsub fast float %2086, %2102
  %2104 = fsub fast float %2080, %2099
  %2105 = select i1 %2095, float %2104, float 0.000000e+00
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2114 = extractvalue %dx.types.CBufRet.f32 %2110, 3
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 3
  %2117 = call float @dx.op.binary.f32(i32 36, float %2103, float %2116)  ; FMin(a,b)
  %2118 = fmul fast float %2114, %2105
  %2119 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2120 = fsub fast float %2111, %2107
  %2121 = fsub fast float %2112, %2108
  %2122 = fsub fast float %2113, %2109
  %2123 = fmul fast float %2119, %2120
  %2124 = fmul fast float %2119, %2121
  %2125 = fmul fast float %2119, %2122
  %2126 = fadd fast float %2123, %2107
  %2127 = fadd fast float %2124, %2108
  %2128 = fadd fast float %2125, %2109
  %2129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.CBufRet.f32 %2129, 1
  %2132 = fadd fast float %2131, %2130
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2129, 2
  %2135 = extractvalue %dx.types.CBufRet.f32 %2129, 3
  %2136 = fadd fast float %2135, %2134
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = fmul fast float %2133, %2117
  %2139 = fmul fast float %2138, %2137
  br label %2381

; <label>:2140                                    ; preds = %2094
  br i1 %2095, label %2141, label %2162

; <label>:2141                                    ; preds = %2140
  %2142 = call float @dx.op.binary.f32(i32 36, float %2091, float %2081)  ; FMin(a,b)
  %2143 = fsub fast float %2091, %2142
  %2144 = fsub fast float %2143, %2080
  %2145 = call float @dx.op.unary.f32(i32 6, float %2144)  ; FAbs(value)
  %2146 = fadd fast float %2143, %2080
  %2147 = fmul fast float %2146, %2011
  %2148 = fadd fast float %2147, %2024
  %2149 = fmul fast float %2148, %2145
  %2150 = fsub fast float %2086, %2149
  br label %2162

; <label>:2151                                    ; preds = %2079
  br i1 %2093, label %2152, label %2162

; <label>:2152                                    ; preds = %2151
  %2153 = call float @dx.op.binary.f32(i32 35, float %2081, float %2091)  ; FMax(a,b)
  %2154 = icmp eq i32 %2030, 0
  %2155 = select i1 %2154, float %2091, float 0.000000e+00
  %2156 = fsub fast float -0.000000e+00, %2155
  %2157 = call float @dx.op.unary.f32(i32 6, float %2156)  ; FAbs(value)
  %2158 = fmul fast float %2155, %2011
  %2159 = fadd fast float %2158, %2024
  %2160 = fmul fast float %2157, %2159
  %2161 = fsub fast float %2086, %2160
  br label %2162

; <label>:2162                                    ; preds = %2152, %2151, %2141, %2140
  %2163 = phi float [ %2081, %2140 ], [ %2081, %2141 ], [ %2153, %2152 ], [ %2081, %2151 ]
  %2164 = phi float [ 0.000000e+00, %2140 ], [ %2145, %2141 ], [ %2157, %2152 ], [ 0.000000e+00, %2151 ]
  %2165 = phi float [ %2086, %2140 ], [ %2150, %2141 ], [ %2161, %2152 ], [ %2086, %2151 ]
  %2166 = phi float [ %2091, %2140 ], [ %2091, %2141 ], [ %2080, %2152 ], [ %2080, %2151 ]
  %2167 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 0
  store float -1.000000e+00, float* %2167, align 4, !tbaa !85, !noalias !89
  %2168 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 1
  store float -1.000000e+00, float* %2168, align 4, !tbaa !85, !noalias !89
  %2169 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 2
  store float -1.000000e+00, float* %2169, align 4, !tbaa !85, !noalias !89
  %2170 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 0
  store float -1.000000e+00, float* %2170, align 4, !tbaa !85, !noalias !89
  %2171 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 1
  store float -1.000000e+00, float* %2171, align 4, !tbaa !85, !noalias !89
  %2172 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 2
  store float -1.000000e+00, float* %2172, align 4, !tbaa !85, !noalias !89
  %2173 = icmp sgt i32 %2032, 0
  br i1 %2173, label %2174, label %2235

; <label>:2174                                    ; preds = %2162
  br label %2175

; <label>:2175                                    ; preds = %2224, %2174
  %2176 = phi i32 [ %2225, %2224 ], [ 0, %2174 ]
  %2177 = phi i32 [ %2226, %2224 ], [ 0, %2174 ]
  %2178 = add nuw i32 %2177, 171
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2178)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.CBufRet.f32 %2179, 1
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 0
  %2184 = extractvalue %dx.types.CBufRet.f32 %2182, 1
  %2185 = fsub fast float %2180, %2183
  %2186 = fsub fast float %2181, %2184
  %2187 = extractvalue %dx.types.CBufRet.f32 %2179, 2
  %2188 = fsub fast float -0.000000e+00, %2185
  %2189 = fsub fast float -0.000000e+00, %2186
  %2190 = call float @dx.op.dot2.f32(i32 54, float %2009, float %2010, float %2188, float %2189)  ; Dot2(ax,ay,bx,by)
  %2191 = fmul fast float %2190, 2.000000e+00
  %2192 = call float @dx.op.dot2.f32(i32 54, float %2188, float %2189, float %2188, float %2189)  ; Dot2(ax,ay,bx,by)
  %2193 = fmul fast float %2187, %2187
  %2194 = fsub fast float %2192, %2193
  %2195 = fmul fast float %2191, %2191
  %2196 = fmul fast float %2052, %2194
  %2197 = fsub fast float %2195, %2196
  %2198 = fcmp fast ogt float %2197, 0.000000e+00
  br i1 %2198, label %2199, label %2214

; <label>:2199                                    ; preds = %2175
  %2200 = fcmp fast ogt float %2191, 0.000000e+00
  %2201 = call float @dx.op.unary.f32(i32 24, float %2197)  ; Sqrt(value)
  %2202 = fsub fast float -0.000000e+00, %2201
  %2203 = select i1 %2200, float %2201, float %2202
  %2204 = fadd fast float %2203, %2191
  %2205 = fmul float %2204, -5.000000e-01
  %2206 = fdiv fast float %2205, %2045
  %2207 = call float @dx.op.binary.f32(i32 35, float %2206, float 0.000000e+00)  ; FMax(a,b)
  %2208 = call float @dx.op.binary.f32(i32 36, float %2080, float %2207)  ; FMin(a,b)
  %2209 = fdiv fast float %2194, %2205
  %2210 = call float @dx.op.binary.f32(i32 35, float %2209, float 0.000000e+00)  ; FMax(a,b)
  %2211 = call float @dx.op.binary.f32(i32 36, float %2080, float %2210)  ; FMin(a,b)
  %2212 = call float @dx.op.binary.f32(i32 36, float %2208, float %2211)  ; FMin(a,b)
  %2213 = call float @dx.op.binary.f32(i32 35, float %2208, float %2211)  ; FMax(a,b)
  br label %2214

; <label>:2214                                    ; preds = %2199, %2175
  %2215 = phi float [ %2213, %2199 ], [ -1.000000e+00, %2175 ]
  %2216 = phi float [ %2212, %2199 ], [ -1.000000e+00, %2175 ]
  %2217 = phi i1 [ true, %2199 ], [ false, %2175 ]
  br i1 %2217, label %2218, label %2224

; <label>:2218                                    ; preds = %2214
  %2219 = call float @dx.op.binary.f32(i32 35, float %2163, float %2216)  ; FMax(a,b)
  %2220 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2177
  store float %2219, float* %2220, align 4, !tbaa !85, !noalias !89
  %2221 = call float @dx.op.binary.f32(i32 35, float %2163, float %2215)  ; FMax(a,b)
  %2222 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 %2177
  store float %2221, float* %2222, align 4, !tbaa !85, !noalias !89
  %2223 = add nsw i32 %2176, 1
  br label %2224

; <label>:2224                                    ; preds = %2218, %2214
  %2225 = phi i32 [ %2223, %2218 ], [ %2176, %2214 ]
  %2226 = add nuw nsw i32 %2177, 1
  %2227 = icmp eq i32 %2226, %2032
  br i1 %2227, label %2228, label %2175

; <label>:2228                                    ; preds = %2224
  %2229 = load float, float* %2169, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2230 = load float, float* %2168, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  %2231 = load float, float* %2167, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  %2232 = load float, float* %2172, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2233 = load float, float* %2171, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  %2234 = load float, float* %2170, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  br label %2235

; <label>:2235                                    ; preds = %2228, %2162
  %2236 = phi float [ -1.000000e+00, %2162 ], [ %2234, %2228 ]
  %2237 = phi float [ -1.000000e+00, %2162 ], [ %2233, %2228 ]
  %2238 = phi float [ -1.000000e+00, %2162 ], [ %2232, %2228 ]
  %2239 = phi float [ -1.000000e+00, %2162 ], [ %2231, %2228 ]
  %2240 = phi float [ -1.000000e+00, %2162 ], [ %2230, %2228 ]
  %2241 = phi float [ -1.000000e+00, %2162 ], [ %2229, %2228 ]
  %2242 = phi i32 [ 0, %2162 ], [ %2225, %2228 ]
  %2243 = call float @dx.op.binary.f32(i32 36, float %2240, float %2241)  ; FMin(a,b)
  %2244 = call float @dx.op.binary.f32(i32 36, float %2239, float %2243)  ; FMin(a,b)
  %2245 = call float @dx.op.binary.f32(i32 35, float %2239, float %2240)  ; FMax(a,b)
  %2246 = call float @dx.op.binary.f32(i32 36, float %2245, float %2241)  ; FMin(a,b)
  %2247 = call float @dx.op.binary.f32(i32 36, float %2239, float %2240)  ; FMin(a,b)
  %2248 = call float @dx.op.binary.f32(i32 35, float %2247, float %2246)  ; FMax(a,b)
  %2249 = call float @dx.op.binary.f32(i32 35, float %2240, float %2241)  ; FMax(a,b)
  %2250 = call float @dx.op.binary.f32(i32 35, float %2239, float %2249)  ; FMax(a,b)
  store float %2244, float* %2167, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  store float %2248, float* %2168, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  store float %2250, float* %2169, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2251 = call float @dx.op.binary.f32(i32 36, float %2237, float %2238)  ; FMin(a,b)
  %2252 = call float @dx.op.binary.f32(i32 36, float %2236, float %2251)  ; FMin(a,b)
  %2253 = call float @dx.op.binary.f32(i32 35, float %2236, float %2237)  ; FMax(a,b)
  %2254 = call float @dx.op.binary.f32(i32 36, float %2253, float %2238)  ; FMin(a,b)
  %2255 = call float @dx.op.binary.f32(i32 36, float %2236, float %2237)  ; FMin(a,b)
  %2256 = call float @dx.op.binary.f32(i32 35, float %2255, float %2254)  ; FMax(a,b)
  %2257 = call float @dx.op.binary.f32(i32 35, float %2237, float %2238)  ; FMax(a,b)
  %2258 = call float @dx.op.binary.f32(i32 35, float %2236, float %2257)  ; FMax(a,b)
  store float %2252, float* %2170, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  store float %2256, float* %2171, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  store float %2258, float* %2172, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2259 = sub nsw i32 3, %2242
  %2260 = icmp sgt i32 %2259, 2
  br i1 %2260, label %2261, label %2299

; <label>:2261                                    ; preds = %2235
  %2262 = icmp eq i32 %2030, 0
  %2263 = fsub fast float %2080, %2164
  %2264 = select i1 %2262, float %2263, float %2164
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = extractvalue %dx.types.CBufRet.f32 %2265, 1
  %2268 = extractvalue %dx.types.CBufRet.f32 %2265, 2
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.CBufRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2273 = extractvalue %dx.types.CBufRet.f32 %2269, 3
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 3
  %2276 = call float @dx.op.binary.f32(i32 36, float %2165, float %2275)  ; FMin(a,b)
  %2277 = fmul fast float %2273, %2264
  %2278 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2279 = fsub fast float %2270, %2266
  %2280 = fsub fast float %2271, %2267
  %2281 = fsub fast float %2272, %2268
  %2282 = fmul fast float %2278, %2279
  %2283 = fmul fast float %2278, %2280
  %2284 = fmul fast float %2278, %2281
  %2285 = fadd fast float %2282, %2266
  %2286 = fadd fast float %2283, %2267
  %2287 = fadd fast float %2284, %2268
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2291 = fadd fast float %2290, %2289
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2294 = extractvalue %dx.types.CBufRet.f32 %2288, 3
  %2295 = fadd fast float %2294, %2293
  %2296 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2297 = fmul fast float %2292, %2276
  %2298 = fmul fast float %2297, %2296
  br label %2381

; <label>:2299                                    ; preds = %2235
  %2300 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2259
  %2301 = load float, float* %2300, align 4, !tbaa !85, !noalias !89
  %2302 = fcmp fast olt float %2301, %2166
  %2303 = icmp sgt i32 %2242, 0
  %2304 = and i1 %2303, %2302
  br i1 %2304, label %2305, label %2342

; <label>:2305                                    ; preds = %2299
  br label %2306

; <label>:2306                                    ; preds = %2335, %2305
  %2307 = phi float [ %2336, %2335 ], [ %2164, %2305 ]
  %2308 = phi float [ %2337, %2335 ], [ %2165, %2305 ]
  %2309 = phi float [ %2317, %2335 ], [ %2301, %2305 ]
  %2310 = phi i32 [ %2314, %2335 ], [ %2259, %2305 ]
  %2311 = getelementptr inbounds [3 x float], [3 x float]* %64, i32 0, i32 %2310
  %2312 = load float, float* %2311, align 4, !tbaa !85, !noalias !89
  %2313 = icmp slt i32 %2310, 2
  %2314 = add nsw i32 %2310, 1
  %2315 = getelementptr inbounds [3 x float], [3 x float]* %63, i32 0, i32 %2314
  %2316 = load float, float* %2315, align 4, !tbaa !85, !noalias !89
  %2317 = select i1 %2313, float %2316, float %2080
  %2318 = call float @dx.op.binary.f32(i32 36, float %2317, float %2312)  ; FMin(a,b)
  %2319 = call float @dx.op.binary.f32(i32 36, float %2166, float %2318)  ; FMin(a,b)
  %2320 = icmp eq i32 %2030, 0
  %2321 = fadd fast float %2319, %2309
  %2322 = fmul fast float %2321, %2011
  %2323 = fadd fast float %2322, %2024
  br i1 %2320, label %2329, label %2324

; <label>:2324                                    ; preds = %2306
  %2325 = fsub fast float %2319, %2309
  %2326 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2325)  ; FMax(a,b)
  %2327 = fmul fast float %2326, %2323
  %2328 = fadd fast float %2327, %2308
  br label %2335

; <label>:2329                                    ; preds = %2306
  %2330 = fsub fast float %2309, %2319
  %2331 = call float @dx.op.unary.f32(i32 6, float %2330)  ; FAbs(value)
  %2332 = fadd fast float %2331, %2307
  %2333 = fmul fast float %2331, %2323
  %2334 = fsub fast float %2308, %2333
  br label %2335

; <label>:2335                                    ; preds = %2329, %2324
  %2336 = phi float [ %2326, %2324 ], [ %2332, %2329 ]
  %2337 = phi float [ %2328, %2324 ], [ %2334, %2329 ]
  %2338 = fcmp fast olt float %2317, %2166
  %2339 = icmp slt i32 %2314, 3
  %2340 = and i1 %2339, %2338
  br i1 %2340, label %2306, label %2341

; <label>:2341                                    ; preds = %2335
  br label %2342

; <label>:2342                                    ; preds = %2341, %2299
  %2343 = phi float [ %2164, %2299 ], [ %2336, %2341 ]
  %2344 = phi float [ %2165, %2299 ], [ %2337, %2341 ]
  %2345 = fsub fast float %2080, %2343
  %2346 = select i1 %2082, float %2343, float %2345
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.CBufRet.f32 %2347, 2
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2355 = extractvalue %dx.types.CBufRet.f32 %2351, 3
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 3
  %2358 = call float @dx.op.binary.f32(i32 36, float %2344, float %2357)  ; FMin(a,b)
  %2359 = fmul fast float %2355, %2346
  %2360 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2361 = fsub fast float %2352, %2348
  %2362 = fsub fast float %2353, %2349
  %2363 = fsub fast float %2354, %2350
  %2364 = fmul fast float %2360, %2361
  %2365 = fmul fast float %2360, %2362
  %2366 = fmul fast float %2360, %2363
  %2367 = fadd fast float %2364, %2348
  %2368 = fadd fast float %2365, %2349
  %2369 = fadd fast float %2366, %2350
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.CBufRet.f32 %2370, 1
  %2373 = fadd fast float %2372, %2371
  %2374 = call float @dx.op.unary.f32(i32 7, float %2373)  ; Saturate(value)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2370, 2
  %2376 = extractvalue %dx.types.CBufRet.f32 %2370, 3
  %2377 = fadd fast float %2376, %2375
  %2378 = call float @dx.op.unary.f32(i32 7, float %2377)  ; Saturate(value)
  %2379 = fmul fast float %2374, %2358
  %2380 = fmul fast float %2379, %2378
  br label %2381

; <label>:2381                                    ; preds = %2342, %2261, %2096, %2078, %2076
  %2382 = phi float [ %2105, %2096 ], [ %2264, %2261 ], [ %2346, %2342 ], [ 0.000000e+00, %2076 ], [ 0.000000e+00, %2078 ]
  %2383 = phi float [ %2139, %2096 ], [ %2298, %2261 ], [ %2380, %2342 ], [ 0.000000e+00, %2076 ], [ 0.000000e+00, %2078 ]
  %2384 = phi float [ %2126, %2096 ], [ %2285, %2261 ], [ %2367, %2342 ], [ 0.000000e+00, %2076 ], [ 0.000000e+00, %2078 ]
  %2385 = phi float [ %2127, %2096 ], [ %2286, %2261 ], [ %2368, %2342 ], [ 0.000000e+00, %2076 ], [ 0.000000e+00, %2078 ]
  %2386 = phi float [ %2128, %2096 ], [ %2287, %2261 ], [ %2369, %2342 ], [ 0.000000e+00, %2076 ], [ 0.000000e+00, %2078 ]
  %2387 = fmul fast float %2019, %2383
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 2
  %2390 = fsub fast float %2026, %2389
  %2391 = fcmp fast olt float %2387, -2.000000e+01
  %2392 = call float @dx.op.unary.f32(i32 21, float %2387)  ; Exp(value)
  %2393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.f32 %2393, 2
  %2395 = extractvalue %dx.types.CBufRet.f32 %2393, 3
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 2
  %2398 = fmul fast float %2395, %2390
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = fmul fast float %2011, 5.000000e-01
  %2402 = fadd fast float %2401, 5.000000e-01
  %2403 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2404 = fsub fast float 1.000000e+00, %2403
  %2405 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2400)  ; FMax(a,b)
  %2406 = fdiv fast float %2404, %2405
  %2407 = fsub fast float %2390, %1968
  %2408 = call float @dx.op.unary.f32(i32 6, float %2407)  ; FAbs(value)
  %2409 = fmul fast float %2408, %2394
  %2410 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  %2411 = fsub fast float 1.000000e+00, %2409
  %2412 = fmul fast float %2411, %2410
  %2413 = fadd fast float %2412, %2409
  %2414 = fmul fast float %2397, %2390
  %2415 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2416 = fsub fast float 1.000000e+00, %2413
  %2417 = fmul fast float %2416, %2415
  %2418 = fadd fast float %2417, %2413
  %2419 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2420 = fadd fast float %2392, -1.000000e+00
  %2421 = select i1 %2391, float -1.000000e+00, float %2420
  %2422 = fmul fast float %2419, %2421
  %2423 = fadd fast float %2422, 1.000000e+00
  %2424 = fsub fast float -0.000000e+00, %2422
  %2425 = fmul fast float %2384, %2424
  %2426 = fmul fast float %2385, %2424
  %2427 = fmul fast float %2386, %2424
  br label %2428

; <label>:2428                                    ; preds = %2381, %1977
  %2429 = phi float [ %2382, %2381 ], [ 0.000000e+00, %1977 ]
  %2430 = phi float [ %2423, %2381 ], [ 1.000000e+00, %1977 ]
  %2431 = phi float [ %2425, %2381 ], [ 0.000000e+00, %1977 ]
  %2432 = phi float [ %2426, %2381 ], [ 0.000000e+00, %1977 ]
  %2433 = phi float [ %2427, %2381 ], [ 0.000000e+00, %1977 ]
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2436 = fsub fast float 1.000000e+00, %2430
  %2437 = fmul fast float %2436, %2012
  %2438 = fmul fast float %2437, %2435
  %2439 = fsub fast float %2012, %2438
  br i1 %2005, label %2440, label %2469, !dx.controlflow.hints !125

; <label>:2440                                    ; preds = %2428
  %2441 = fmul fast float %2013, %2002
  %2442 = fadd fast float %2441, %2003
  %2443 = call float @dx.op.unary.f32(i32 7, float %2442)  ; Saturate(value)
  %2444 = fmul fast float %1984, %2439
  %2445 = fsub fast float -0.000000e+00, %2444
  %2446 = fmul fast float %1985, %2439
  %2447 = fsub fast float -0.000000e+00, %2446
  %2448 = call float @dx.op.unary.f32(i32 21, float %2445)  ; Exp(value)
  %2449 = call float @dx.op.unary.f32(i32 21, float %2447)  ; Exp(value)
  %2450 = call float @dx.op.binary.f32(i32 35, float %1992, float %2448)  ; FMax(a,b)
  %2451 = call float @dx.op.binary.f32(i32 35, float %1992, float %2449)  ; FMax(a,b)
  %2452 = fsub fast float %2451, %2450
  %2453 = fmul fast float %2452, %2443
  %2454 = fadd fast float %2453, %2450
  %2455 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2456 = fsub fast float %1989, %1994
  %2457 = fsub fast float %1990, %1995
  %2458 = fsub fast float %1991, %1996
  %2459 = fmul fast float %2443, %2456
  %2460 = fmul fast float %2443, %2457
  %2461 = fmul fast float %2443, %2458
  %2462 = fadd fast float %2459, %1994
  %2463 = fadd fast float %2460, %1995
  %2464 = fadd fast float %2461, %1996
  %2465 = fsub fast float 1.000000e+00, %2455
  %2466 = fmul fast float %2465, %2462
  %2467 = fmul fast float %2465, %2463
  %2468 = fmul fast float %2465, %2464
  br label %2528

; <label>:2469                                    ; preds = %2428
  %2470 = fmul fast float %2439, %2001
  %2471 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  %2472 = fsub fast float 2.000000e+00, %2471
  %2473 = fmul fast float %2471, 9.921875e-01
  %2474 = fmul fast float %2473, %2472
  %2475 = fadd fast float %2474, 3.906250e-03
  %2476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2475, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 0
  %2478 = fsub fast float %2471, %2477
  %2479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2478)  ; FMax(a,b)
  %2480 = fmul fast float %1987, %1968
  %2481 = call float @dx.op.unary.f32(i32 6, float %2480)  ; FAbs(value)
  %2482 = fcmp fast ogt float %2481, 0x3EB0C6F7A0000000
  br i1 %2482, label %2483, label %2489, !dx.controlflow.hints !126

; <label>:2483                                    ; preds = %2469
  %2484 = fmul fast float %2480, 0xBFF7154760000000
  %2485 = call float @dx.op.unary.f32(i32 21, float %2484)  ; Exp(value)
  %2486 = fsub fast float 1.000000e+00, %2485
  %2487 = fdiv fast float %2486, %2480
  %2488 = fmul fast float %2487, %1997
  br label %2489

; <label>:2489                                    ; preds = %2483, %2469
  %2490 = phi float [ %2488, %2483 ], [ %1997, %2469 ]
  %2491 = fadd fast float %2490, %1999
  %2492 = fmul fast float %2491, %2479
  %2493 = fmul fast float %1984, %2492
  %2494 = fsub fast float -0.000000e+00, %2493
  %2495 = fmul fast float %1985, %2492
  %2496 = fsub fast float -0.000000e+00, %2495
  %2497 = fmul fast float %1986, %2492
  %2498 = fsub fast float -0.000000e+00, %2497
  %2499 = call float @dx.op.unary.f32(i32 21, float %2494)  ; Exp(value)
  %2500 = call float @dx.op.unary.f32(i32 21, float %2496)  ; Exp(value)
  %2501 = call float @dx.op.unary.f32(i32 21, float %2498)  ; Exp(value)
  %2502 = fmul fast float %2013, %2013
  %2503 = fadd fast float %2502, 1.000000e+00
  %2504 = fmul fast float %2503, 0x3FAE8EC8A0000000
  %2505 = fmul fast float %2504, %1994
  %2506 = fmul fast float %2504, %1995
  %2507 = fmul fast float %2504, %1996
  %2508 = fmul fast float %2013, %1992
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %1992, %1992
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = fmul fast float %2511, 0x3FB45F3060000000
  %2513 = fmul fast float %2509, %2509
  %2514 = fdiv fast float 1.000000e+00, %2513
  %2515 = fmul fast float %2512, %2514
  %2516 = fmul fast float %2515, %1989
  %2517 = fmul fast float %2515, %1990
  %2518 = fmul fast float %2515, %1991
  %2519 = fadd fast float %2516, %2505
  %2520 = fadd fast float %2517, %2506
  %2521 = fadd fast float %2518, %2507
  %2522 = fsub fast float 1.000000e+00, %2499
  %2523 = fsub fast float 1.000000e+00, %2500
  %2524 = fsub fast float 1.000000e+00, %2501
  %2525 = fmul fast float %2519, %2522
  %2526 = fmul fast float %2520, %2523
  %2527 = fmul fast float %2521, %2524
  br label %2528

; <label>:2528                                    ; preds = %2489, %2440
  %2529 = phi float [ %2466, %2440 ], [ %2525, %2489 ]
  %2530 = phi float [ %2467, %2440 ], [ %2526, %2489 ]
  %2531 = phi float [ %2468, %2440 ], [ %2527, %2489 ]
  %2532 = phi float [ %2455, %2440 ], [ %2499, %2489 ]
  %2533 = phi float [ %2455, %2440 ], [ %2500, %2489 ]
  %2534 = phi float [ %2455, %2440 ], [ %2501, %2489 ]
  br i1 %2021, label %2535, label %2733, !dx.controlflow.hints !127

; <label>:2535                                    ; preds = %2528
  %2536 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2537 = fmul fast float %2536, %2436
  %2538 = fsub fast float %2431, %2529
  %2539 = fsub fast float %2432, %2530
  %2540 = fsub fast float %2433, %2531
  %2541 = fmul fast float %2537, %2538
  %2542 = fmul fast float %2537, %2539
  %2543 = fmul fast float %2537, %2540
  %2544 = fadd fast float %2541, %2529
  %2545 = fadd fast float %2542, %2530
  %2546 = fadd fast float %2543, %2531
  %2547 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2532)  ; FMax(a,b)
  %2548 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2533)  ; FMax(a,b)
  %2549 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2534)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2430)  ; FMax(a,b)
  %2551 = call float @dx.op.binary.f32(i32 35, float %2429, float %2439)  ; FMax(a,b)
  %2552 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2551)  ; FMax(a,b)
  %2553 = fdiv fast float %2429, %2552
  %2554 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  %2555 = fdiv fast float %2439, %2552
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  %2557 = fcmp fast une float %2550, 1.000000e+00
  br i1 %2557, label %2558, label %2571, !dx.controlflow.hints !128

; <label>:2558                                    ; preds = %2535
  %2559 = call float @dx.op.unary.f32(i32 23, float %2550)  ; Log(value)
  %2560 = fmul fast float %2559, 0x3FE62E4300000000
  %2561 = fmul fast float %2431, %2560
  %2562 = fsub fast float -0.000000e+00, %2561
  %2563 = fmul fast float %2432, %2560
  %2564 = fsub fast float -0.000000e+00, %2563
  %2565 = fmul fast float %2433, %2560
  %2566 = fsub fast float -0.000000e+00, %2565
  %2567 = fsub fast float 1.000000e+00, %2550
  %2568 = fdiv fast float %2562, %2567
  %2569 = fdiv fast float %2564, %2567
  %2570 = fdiv fast float %2566, %2567
  br label %2571

; <label>:2571                                    ; preds = %2558, %2535
  %2572 = phi float [ %2568, %2558 ], [ %2431, %2535 ]
  %2573 = phi float [ %2569, %2558 ], [ %2432, %2535 ]
  %2574 = phi float [ %2570, %2558 ], [ %2433, %2535 ]
  %2575 = phi float [ %2560, %2558 ], [ 0.000000e+00, %2535 ]
  %2576 = fcmp fast une float %2547, 1.000000e+00
  br i1 %2576, label %2577, label %2584, !dx.controlflow.hints !129

; <label>:2577                                    ; preds = %2571
  %2578 = call float @dx.op.unary.f32(i32 23, float %2547)  ; Log(value)
  %2579 = fmul fast float %2578, 0x3FE62E4300000000
  %2580 = fmul fast float %2544, %2579
  %2581 = fsub fast float -0.000000e+00, %2580
  %2582 = fsub fast float 1.000000e+00, %2547
  %2583 = fdiv fast float %2581, %2582
  br label %2584

; <label>:2584                                    ; preds = %2577, %2571
  %2585 = phi float [ %2583, %2577 ], [ %2544, %2571 ]
  %2586 = phi float [ %2579, %2577 ], [ 0.000000e+00, %2571 ]
  %2587 = fcmp fast une float %2548, 1.000000e+00
  br i1 %2587, label %2588, label %2595, !dx.controlflow.hints !129

; <label>:2588                                    ; preds = %2584
  %2589 = call float @dx.op.unary.f32(i32 23, float %2548)  ; Log(value)
  %2590 = fmul fast float %2589, 0x3FE62E4300000000
  %2591 = fmul fast float %2545, %2590
  %2592 = fsub fast float -0.000000e+00, %2591
  %2593 = fsub fast float 1.000000e+00, %2548
  %2594 = fdiv fast float %2592, %2593
  br label %2595

; <label>:2595                                    ; preds = %2588, %2584
  %2596 = phi float [ %2594, %2588 ], [ %2545, %2584 ]
  %2597 = phi float [ %2590, %2588 ], [ 0.000000e+00, %2584 ]
  %2598 = fcmp fast une float %2549, 1.000000e+00
  br i1 %2598, label %2599, label %2606, !dx.controlflow.hints !129

; <label>:2599                                    ; preds = %2595
  %2600 = call float @dx.op.unary.f32(i32 23, float %2549)  ; Log(value)
  %2601 = fmul fast float %2600, 0x3FE62E4300000000
  %2602 = fmul fast float %2546, %2601
  %2603 = fsub fast float -0.000000e+00, %2602
  %2604 = fsub fast float 1.000000e+00, %2549
  %2605 = fdiv fast float %2603, %2604
  br label %2606

; <label>:2606                                    ; preds = %2599, %2595
  %2607 = phi float [ %2605, %2599 ], [ %2546, %2595 ]
  %2608 = phi float [ %2601, %2599 ], [ 0.000000e+00, %2595 ]
  %2609 = fmul fast float %2572, %2556
  %2610 = fmul fast float %2573, %2556
  %2611 = fmul fast float %2574, %2556
  %2612 = fmul fast float %2575, %2556
  %2613 = fmul fast float %2585, %2554
  %2614 = fmul fast float %2596, %2554
  %2615 = fmul fast float %2607, %2554
  %2616 = fmul fast float %2586, %2554
  %2617 = fmul fast float %2597, %2554
  %2618 = fmul fast float %2608, %2554
  %2619 = fadd fast float %2613, %2609
  %2620 = fadd fast float %2614, %2610
  %2621 = fadd fast float %2615, %2611
  %2622 = fadd fast float %2616, %2612
  %2623 = fadd fast float %2617, %2612
  %2624 = fadd fast float %2618, %2612
  %2625 = fcmp fast une float %2622, 0.000000e+00
  br i1 %2625, label %2626, label %2633, !dx.controlflow.hints !130

; <label>:2626                                    ; preds = %2606
  %2627 = fmul fast float %2622, 0x3FF7154760000000
  %2628 = call float @dx.op.unary.f32(i32 21, float %2627)  ; Exp(value)
  %2629 = fsub fast float 1.000000e+00, %2628
  %2630 = fmul fast float %2619, %2629
  %2631 = fsub fast float -0.000000e+00, %2630
  %2632 = fdiv fast float %2631, %2622
  br label %2633

; <label>:2633                                    ; preds = %2626, %2606
  %2634 = phi float [ %2628, %2626 ], [ 1.000000e+00, %2606 ]
  %2635 = phi float [ %2632, %2626 ], [ %2619, %2606 ]
  %2636 = fcmp fast une float %2623, 0.000000e+00
  br i1 %2636, label %2637, label %2644, !dx.controlflow.hints !130

; <label>:2637                                    ; preds = %2633
  %2638 = fmul fast float %2623, 0x3FF7154760000000
  %2639 = call float @dx.op.unary.f32(i32 21, float %2638)  ; Exp(value)
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2620, %2640
  %2642 = fsub fast float -0.000000e+00, %2641
  %2643 = fdiv fast float %2642, %2623
  br label %2644

; <label>:2644                                    ; preds = %2637, %2633
  %2645 = phi float [ %2639, %2637 ], [ 1.000000e+00, %2633 ]
  %2646 = phi float [ %2643, %2637 ], [ %2620, %2633 ]
  %2647 = fcmp fast une float %2624, 0.000000e+00
  br i1 %2647, label %2648, label %2655, !dx.controlflow.hints !130

; <label>:2648                                    ; preds = %2644
  %2649 = fmul fast float %2624, 0x3FF7154760000000
  %2650 = call float @dx.op.unary.f32(i32 21, float %2649)  ; Exp(value)
  %2651 = fsub fast float 1.000000e+00, %2650
  %2652 = fmul fast float %2621, %2651
  %2653 = fsub fast float -0.000000e+00, %2652
  %2654 = fdiv fast float %2653, %2624
  br label %2655

; <label>:2655                                    ; preds = %2648, %2644
  %2656 = phi float [ %2650, %2648 ], [ 1.000000e+00, %2644 ]
  %2657 = phi float [ %2654, %2648 ], [ %2621, %2644 ]
  %2658 = fcmp fast ogt float %2554, %2556
  br i1 %2658, label %2659, label %2679

; <label>:2659                                    ; preds = %2655
  %2660 = fsub fast float 1.000000e+00, %2556
  %2661 = fmul fast float %2572, %2660
  %2662 = fmul fast float %2573, %2660
  %2663 = fmul fast float %2574, %2660
  %2664 = fmul fast float %2575, %2660
  %2665 = fcmp fast une float %2664, 0.000000e+00
  br i1 %2665, label %2666, label %2717, !dx.controlflow.hints !131

; <label>:2666                                    ; preds = %2659
  %2667 = fmul fast float %2664, 0x3FF7154760000000
  %2668 = call float @dx.op.unary.f32(i32 21, float %2667)  ; Exp(value)
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = fmul fast float %2661, %2669
  %2671 = fsub fast float -0.000000e+00, %2670
  %2672 = fmul fast float %2662, %2669
  %2673 = fsub fast float -0.000000e+00, %2672
  %2674 = fmul fast float %2663, %2669
  %2675 = fsub fast float -0.000000e+00, %2674
  %2676 = fdiv fast float %2671, %2664
  %2677 = fdiv fast float %2673, %2664
  %2678 = fdiv fast float %2675, %2664
  br label %2717

; <label>:2679                                    ; preds = %2655
  %2680 = fsub fast float 1.000000e+00, %2554
  %2681 = fmul fast float %2585, %2680
  %2682 = fmul fast float %2596, %2680
  %2683 = fmul fast float %2607, %2680
  %2684 = fmul fast float %2586, %2680
  %2685 = fmul fast float %2597, %2680
  %2686 = fmul fast float %2608, %2680
  %2687 = fcmp fast une float %2684, 0.000000e+00
  br i1 %2687, label %2688, label %2695, !dx.controlflow.hints !130

; <label>:2688                                    ; preds = %2679
  %2689 = fmul fast float %2684, 0x3FF7154760000000
  %2690 = call float @dx.op.unary.f32(i32 21, float %2689)  ; Exp(value)
  %2691 = fsub fast float 1.000000e+00, %2690
  %2692 = fmul fast float %2681, %2691
  %2693 = fsub fast float -0.000000e+00, %2692
  %2694 = fdiv fast float %2693, %2684
  br label %2695

; <label>:2695                                    ; preds = %2688, %2679
  %2696 = phi float [ %2694, %2688 ], [ %2681, %2679 ]
  %2697 = phi float [ %2690, %2688 ], [ 1.000000e+00, %2679 ]
  %2698 = fcmp fast une float %2685, 0.000000e+00
  br i1 %2698, label %2699, label %2706, !dx.controlflow.hints !130

; <label>:2699                                    ; preds = %2695
  %2700 = fmul fast float %2685, 0x3FF7154760000000
  %2701 = call float @dx.op.unary.f32(i32 21, float %2700)  ; Exp(value)
  %2702 = fsub fast float 1.000000e+00, %2701
  %2703 = fmul fast float %2682, %2702
  %2704 = fsub fast float -0.000000e+00, %2703
  %2705 = fdiv fast float %2704, %2685
  br label %2706

; <label>:2706                                    ; preds = %2699, %2695
  %2707 = phi float [ %2705, %2699 ], [ %2682, %2695 ]
  %2708 = phi float [ %2701, %2699 ], [ 1.000000e+00, %2695 ]
  %2709 = fcmp fast une float %2686, 0.000000e+00
  br i1 %2709, label %2710, label %2717, !dx.controlflow.hints !130

; <label>:2710                                    ; preds = %2706
  %2711 = fmul fast float %2686, 0x3FF7154760000000
  %2712 = call float @dx.op.unary.f32(i32 21, float %2711)  ; Exp(value)
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = fmul fast float %2683, %2713
  %2715 = fsub fast float -0.000000e+00, %2714
  %2716 = fdiv fast float %2715, %2686
  br label %2717

; <label>:2717                                    ; preds = %2710, %2706, %2666, %2659
  %2718 = phi float [ %2716, %2710 ], [ %2678, %2666 ], [ %2663, %2659 ], [ %2683, %2706 ]
  %2719 = phi float [ %2707, %2710 ], [ %2677, %2666 ], [ %2662, %2659 ], [ %2707, %2706 ]
  %2720 = phi float [ %2696, %2710 ], [ %2676, %2666 ], [ %2661, %2659 ], [ %2696, %2706 ]
  %2721 = phi float [ %2712, %2710 ], [ %2668, %2666 ], [ 1.000000e+00, %2659 ], [ 1.000000e+00, %2706 ]
  %2722 = phi float [ %2708, %2710 ], [ %2668, %2666 ], [ 1.000000e+00, %2659 ], [ %2708, %2706 ]
  %2723 = phi float [ %2697, %2710 ], [ %2668, %2666 ], [ 1.000000e+00, %2659 ], [ %2697, %2706 ]
  %2724 = fmul fast float %2723, %2635
  %2725 = fmul fast float %2722, %2646
  %2726 = fmul fast float %2721, %2657
  %2727 = fadd fast float %2724, %2720
  %2728 = fadd fast float %2725, %2719
  %2729 = fadd fast float %2726, %2718
  %2730 = fmul fast float %2723, %2634
  %2731 = fmul fast float %2722, %2645
  %2732 = fmul fast float %2721, %2656
  br label %2733

; <label>:2733                                    ; preds = %2717, %2528
  %2734 = phi float [ %2732, %2717 ], [ %2534, %2528 ]
  %2735 = phi float [ %2731, %2717 ], [ %2533, %2528 ]
  %2736 = phi float [ %2730, %2717 ], [ %2532, %2528 ]
  %2737 = phi float [ %2729, %2717 ], [ %2531, %2528 ]
  %2738 = phi float [ %2728, %2717 ], [ %2530, %2528 ]
  %2739 = phi float [ %2727, %2717 ], [ %2529, %2528 ]
  %2740 = fmul fast float %2739, %1713
  %2741 = fmul fast float %2738, %1713
  %2742 = fmul fast float %2737, %1713
  %2743 = fmul fast float %2736, %1976
  %2744 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2735, float %2734, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2745 = call float @dx.op.dot3.f32(i32 55, float %2740, float %2741, float %2742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2746 = select i1 %139, float %2744, float %2736
  %2747 = select i1 %139, float %2744, float %2735
  %2748 = select i1 %139, float 1.000000e+00, float %2734
  %2749 = select i1 %139, float %2745, float %2740
  %2750 = select i1 %139, float 0.000000e+00, float %2741
  %2751 = select i1 %139, float 0.000000e+00, float %2742
  %2752 = fmul fast float %2746, %1970
  %2753 = fmul fast float %2747, %1971
  %2754 = fmul fast float %2748, %1972
  %2755 = fadd fast float %2752, %2749
  %2756 = fadd fast float %2753, %2750
  %2757 = fadd fast float %2751, %2754
  %2758 = fmul fast float %2746, %1973
  %2759 = fmul fast float %2747, %1974
  %2760 = fmul fast float %2748, %1975
  %2761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.i32 %2761, 0
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %3032, label %2764, !dx.controlflow.hints !132

; <label>:2764                                    ; preds = %2733
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 2
  %2767 = extractvalue %dx.types.CBufRet.f32 %2765, 3
  %2768 = fmul fast float %2766, %69
  %2769 = fmul fast float %2767, %70
  %2770 = fmul fast float %2768, 2.000000e+00
  %2771 = fmul fast float %2769, 2.000000e+00
  %2772 = fsub fast float 1.000000e+00, %2770
  %2773 = fsub fast float 1.000000e+00, %2771
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2777 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2778 = fmul fast float %2772, %2775
  %2779 = fmul fast float %2772, %2776
  %2780 = fmul fast float %2772, %2777
  %2781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2782 = extractvalue %dx.types.CBufRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.CBufRet.f32 %2781, 1
  %2784 = extractvalue %dx.types.CBufRet.f32 %2781, 2
  %2785 = fmul fast float %2773, %2782
  %2786 = fmul fast float %2773, %2783
  %2787 = fmul fast float %2773, %2784
  %2788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2789 = extractvalue %dx.types.CBufRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.CBufRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.CBufRet.f32 %2788, 2
  %2792 = fadd fast float %2785, %2789
  %2793 = fadd fast float %2792, %2778
  %2794 = fadd fast float %2786, %2790
  %2795 = fadd fast float %2794, %2779
  %2796 = fadd fast float %2787, %2791
  %2797 = fadd fast float %2796, %2780
  %2798 = fmul fast float %2793, %1969
  %2799 = fmul fast float %2795, %1969
  %2800 = fmul fast float %2797, %1969
  %2801 = fmul fast float %2798, %2798
  %2802 = fmul fast float %2799, %2799
  %2803 = fadd fast float %2801, %2802
  %2804 = fmul fast float %2800, %2800
  %2805 = fadd fast float %2803, %2804
  %2806 = call float @dx.op.unary.f32(i32 24, float %2805)  ; Sqrt(value)
  %2807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2807, 0
  %2809 = fsub fast float %2806, %2808
  %2810 = extractvalue %dx.types.CBufRet.f32 %2807, 2
  %2811 = fmul fast float %2809, %2810
  %2812 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  %2813 = fadd fast float %2812, -5.000000e-01
  %2814 = fmul fast float %2813, 2.000000e+00
  %2815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.f32 %2815, 2
  %2817 = call float @dx.op.binary.f32(i32 36, float %2816, float %2814)  ; FMin(a,b)
  %2818 = fsub fast float -0.000000e+00, %2816
  %2819 = fcmp fast ogt float %2817, %2818
  br i1 %2819, label %2820, label %3032, !dx.controlflow.hints !133

; <label>:2820                                    ; preds = %2764
  %2821 = fmul fast float %2817, 5.000000e-01
  %2822 = fadd fast float %2821, 5.000000e-01
  %2823 = call float @dx.op.unary.f32(i32 22, float %2822)  ; Frc(value)
  %2824 = call float @dx.op.unary.f32(i32 27, float %2823)  ; Round_ni(value)
  %2825 = call float @dx.op.unary.f32(i32 22, float %2823)  ; Frc(value)
  %2826 = fmul fast float %2825, 2.000000e+00
  %2827 = fadd fast float %2826, -1.000000e+00
  %2828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2768, float %2769, float %2824, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.ResRet.f32 %2828, 2
  %2832 = extractvalue %dx.types.ResRet.f32 %2828, 3
  %2833 = fadd fast float %2829, -5.000000e-01
  %2834 = fadd fast float %2831, -5.000000e-01
  %2835 = fmul fast float %2833, 0xBFD5555560000000
  %2836 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2834, float %2835)  ; FMad(a,b,c)
  %2837 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2830, float 0.000000e+00)  ; FMad(a,b,c)
  %2838 = fadd fast float %2837, %2832
  %2839 = fmul fast float %2833, -7.500000e-01
  %2840 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2834, float %2839)  ; FMad(a,b,c)
  %2841 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2830, float 0.000000e+00)  ; FMad(a,b,c)
  %2842 = fadd fast float %2841, %2832
  %2843 = call float @dx.op.binary.f32(i32 35, float %2836, float -1.000000e+00)  ; FMax(a,b)
  %2844 = call float @dx.op.binary.f32(i32 35, float %2838, float -1.000000e+00)  ; FMax(a,b)
  %2845 = call float @dx.op.binary.f32(i32 35, float %2840, float -1.000000e+00)  ; FMax(a,b)
  %2846 = call float @dx.op.binary.f32(i32 35, float %2842, float -1.000000e+00)  ; FMax(a,b)
  %2847 = call float @dx.op.binary.f32(i32 36, float %2843, float 1.000000e+00)  ; FMin(a,b)
  %2848 = call float @dx.op.binary.f32(i32 36, float %2844, float 1.000000e+00)  ; FMin(a,b)
  %2849 = call float @dx.op.binary.f32(i32 36, float %2845, float 1.000000e+00)  ; FMin(a,b)
  %2850 = call float @dx.op.binary.f32(i32 36, float %2846, float 1.000000e+00)  ; FMin(a,b)
  %2851 = fcmp fast olt float %2847, 0x3FEFFF8020000000
  br i1 %2851, label %2852, label %2967, !dx.controlflow.hints !134

; <label>:2852                                    ; preds = %2820
  %2853 = extractvalue %dx.types.CBufRet.f32 %2815, 3
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2858 = extractvalue %dx.types.CBufRet.f32 %2854, 3
  %2859 = fsub fast float %2855, %2847
  %2860 = fsub fast float %2856, %2848
  %2861 = fsub fast float %2857, %2849
  %2862 = fsub fast float %2858, %2850
  %2863 = fmul fast float %2859, %2853
  %2864 = fmul fast float %2860, %2853
  %2865 = fmul fast float %2861, %2853
  %2866 = fmul fast float %2862, %2853
  %2867 = fadd fast float %2863, %2847
  %2868 = fadd fast float %2864, %2848
  %2869 = fsub fast float -0.000000e+00, %2868
  %2870 = fadd fast float %2865, %2849
  %2871 = fadd fast float %2866, %2850
  %2872 = fmul fast float %2867, %2867
  %2873 = fsub fast float %2868, %2872
  %2874 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2873)  ; FMax(a,b)
  %2875 = fdiv fast float 1.000000e+00, %2874
  %2876 = fmul fast float %2868, %2867
  %2877 = fsub fast float %2870, %2876
  %2878 = fsub fast float %2827, %2867
  %2879 = fmul fast float %2827, %2827
  %2880 = fsub fast float %2879, %2868
  %2881 = fmul fast float %2878, %2875
  %2882 = fmul fast float %2881, %2877
  %2883 = fsub fast float %2880, %2882
  %2884 = fmul fast float %2868, %2868
  %2885 = fsub fast float %2871, %2884
  %2886 = fmul fast float %2877, %2877
  %2887 = fmul fast float %2886, %2875
  %2888 = fsub fast float %2885, %2887
  %2889 = fdiv fast float %2883, %2888
  %2890 = fmul fast float %2877, %2889
  %2891 = fsub fast float %2878, %2890
  %2892 = fmul fast float %2891, %2875
  %2893 = fmul fast float %2892, %2867
  %2894 = fsub fast float 1.000000e+00, %2893
  %2895 = fmul fast float %2868, %2889
  %2896 = fsub fast float %2894, %2895
  %2897 = fmul fast float %2892, %2892
  %2898 = fmul fast float %2889, 4.000000e+00
  %2899 = fmul fast float %2898, %2896
  %2900 = fsub fast float %2897, %2899
  %2901 = call float @dx.op.unary.f32(i32 24, float %2900)  ; Sqrt(value)
  %2902 = fcmp fast oge float %2892, 0.000000e+00
  %2903 = fsub fast float -0.000000e+00, %2901
  %2904 = select i1 %2902, float %2903, float %2901
  %2905 = fsub fast float %2904, %2892
  %2906 = fdiv fast float %2905, %2889
  %2907 = fdiv fast float %2896, %2905
  %2908 = fmul fast float %2906, 5.000000e-01
  %2909 = fmul fast float %2907, 2.000000e+00
  %2910 = select i1 %2902, float %2908, float %2909
  %2911 = select i1 %2902, float %2909, float %2908
  %2912 = call float @dx.op.binary.f32(i32 35, float %2910, float %2911)  ; FMax(a,b)
  %2913 = call float @dx.op.binary.f32(i32 36, float %2910, float %2911)  ; FMin(a,b)
  %2914 = fcmp fast ogt float %2827, %2913
  br i1 %2914, label %2915, label %2925

; <label>:2915                                    ; preds = %2852
  %2916 = fsub fast float %2827, %2913
  %2917 = fsub fast float %2912, %2913
  %2918 = fmul fast float %2916, %2917
  %2919 = fmul fast float %2912, %2827
  %2920 = fadd fast float %2912, %2827
  %2921 = fmul fast float %2920, %2867
  %2922 = fadd fast float %2919, %2868
  %2923 = fsub fast float %2922, %2921
  %2924 = fdiv fast float %2923, %2918
  br label %2925

; <label>:2925                                    ; preds = %2915, %2852
  %2926 = phi float [ %2924, %2915 ], [ 0.000000e+00, %2852 ]
  %2927 = fcmp fast ogt float %2827, %2912
  %2928 = fsub fast float %2827, %2912
  br i1 %2927, label %2929, label %2939

; <label>:2929                                    ; preds = %2925
  %2930 = fsub fast float %2912, %2913
  %2931 = fmul fast float %2930, %2928
  %2932 = fmul fast float %2913, %2827
  %2933 = fadd fast float %2913, %2827
  %2934 = fmul fast float %2933, %2867
  %2935 = fsub fast float %2869, %2932
  %2936 = fadd fast float %2935, %2934
  %2937 = fdiv fast float %2936, %2931
  %2938 = fadd fast float %2937, %2926
  br label %2939

; <label>:2939                                    ; preds = %2929, %2925
  %2940 = phi float [ %2938, %2929 ], [ %2926, %2925 ]
  %2941 = fsub fast float %2827, %2913
  %2942 = fmul fast float %2941, %2928
  %2943 = fmul fast float %2913, %2912
  %2944 = fadd fast float %2913, %2912
  %2945 = fmul fast float %2944, %2867
  %2946 = fadd fast float %2943, %2868
  %2947 = fsub fast float %2946, %2945
  %2948 = fdiv fast float %2947, %2942
  %2949 = call float @dx.op.unary.f32(i32 7, float %2940)  ; Saturate(value)
  %2950 = fcmp fast oeq float %1822, 0.000000e+00
  %2951 = extractvalue %dx.types.CBufRet.f32 %2815, 0
  %2952 = fcmp fast oeq float %2951, 0.000000e+00
  %2953 = or i1 %2950, %2952
  %2954 = fmul fast float %2951, 2.000000e+00
  %2955 = fadd fast float %2816, %2817
  %2956 = fdiv fast float %2955, %2954
  %2957 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2958 = fmul fast float %2957, 2.000000e+00
  %2959 = fsub fast float 3.000000e+00, %2958
  %2960 = fmul fast float %2957, %2957
  %2961 = fmul fast float %2960, %2959
  %2962 = select i1 %2953, float 1.000000e+00, float %2961
  %2963 = fmul fast float %2948, %1822
  %2964 = fadd fast float %2949, %2963
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = fmul fast float %2962, %2965
  br label %2967

; <label>:2967                                    ; preds = %2939, %2820
  %2968 = phi float [ %2966, %2939 ], [ 0.000000e+00, %2820 ]
  %2969 = fsub fast float 1.000000e+00, %2968
  %2970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2768, float %2769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.i32 %2972, 2
  %2974 = icmp eq i32 %2973, 0
  br i1 %2974, label %2980, label %2975

; <label>:2975                                    ; preds = %2967
  %2976 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2977 = fadd fast float %2971, -1.000000e+00
  %2978 = fmul fast float %2976, %2977
  %2979 = fadd fast float %2978, 1.000000e+00
  br label %2980

; <label>:2980                                    ; preds = %2975, %2967
  %2981 = phi float [ %2979, %2975 ], [ %2969, %2967 ]
  %2982 = call float @dx.op.binary.f32(i32 35, float %2971, float %2981)  ; FMax(a,b)
  %2983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.i32 %2983, 2
  %2985 = and i32 %2984, 1
  %2986 = icmp eq i32 %2985, 0
  %2987 = fcmp fast une float %2982, 1.000000e+00
  %2988 = and i1 %2987, %2986
  br i1 %2988, label %2989, label %3008

; <label>:2989                                    ; preds = %2980
  %2990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2768, float %2769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2994, 1
  %2996 = fmul fast float %2995, %2991
  %2997 = fmul fast float %2995, %2992
  %2998 = fmul fast float %2995, %2993
  %2999 = fcmp fast ogt float %2971, 0x3FEFFF2E40000000
  %3000 = fsub fast float 1.000000e+00, %2982
  %3001 = fsub fast float 1.000000e+00, %2971
  %3002 = fdiv fast float %3000, %3001
  %3003 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3004 = select i1 %2999, float 0.000000e+00, float %3003
  %3005 = fmul fast float %2996, %3004
  %3006 = fmul fast float %2997, %3004
  %3007 = fmul fast float %2998, %3004
  br label %3008

; <label>:3008                                    ; preds = %2989, %2980
  %3009 = phi float [ 0.000000e+00, %2980 ], [ %3005, %2989 ]
  %3010 = phi float [ 0.000000e+00, %2980 ], [ %3006, %2989 ]
  %3011 = phi float [ 0.000000e+00, %2980 ], [ %3007, %2989 ]
  %3012 = fmul fast float %3009, %1713
  %3013 = fmul fast float %3010, %1713
  %3014 = fmul fast float %3011, %1713
  %3015 = fmul fast float %2982, %2743
  %3016 = call float @dx.op.dot3.f32(i32 55, float %2982, float %2982, float %2982, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = call float @dx.op.dot3.f32(i32 55, float %3012, float %3013, float %3014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3018 = select i1 %139, float %3016, float %2982
  %3019 = select i1 %139, float 1.000000e+00, float %2982
  %3020 = select i1 %139, float %3017, float %3012
  %3021 = select i1 %139, float 0.000000e+00, float %3013
  %3022 = select i1 %139, float 0.000000e+00, float %3014
  %3023 = fmul fast float %3018, %2755
  %3024 = fmul fast float %3018, %2756
  %3025 = fmul fast float %3019, %2757
  %3026 = fadd fast float %3023, %3020
  %3027 = fadd fast float %3024, %3021
  %3028 = fadd fast float %3022, %3025
  %3029 = fmul fast float %3018, %2758
  %3030 = fmul fast float %3018, %2759
  %3031 = fmul fast float %3019, %2760
  br label %3032

; <label>:3032                                    ; preds = %3008, %2764, %2733, %1965
  %3033 = phi float [ %1970, %1965 ], [ %2755, %2733 ], [ %3026, %3008 ], [ %2755, %2764 ]
  %3034 = phi float [ %1971, %1965 ], [ %2756, %2733 ], [ %3027, %3008 ], [ %2756, %2764 ]
  %3035 = phi float [ %1972, %1965 ], [ %2757, %2733 ], [ %3028, %3008 ], [ %2757, %2764 ]
  %3036 = phi float [ %1973, %1965 ], [ %2758, %2733 ], [ %3029, %3008 ], [ %2758, %2764 ]
  %3037 = phi float [ %1974, %1965 ], [ %2759, %2733 ], [ %3030, %3008 ], [ %2759, %2764 ]
  %3038 = phi float [ %1975, %1965 ], [ %2760, %2733 ], [ %3031, %3008 ], [ %2760, %2764 ]
  %3039 = phi float [ %1976, %1965 ], [ %2743, %2733 ], [ %3015, %3008 ], [ %2743, %2764 ]
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 2
  %3042 = extractvalue %dx.types.CBufRet.f32 %3040, 3
  %3043 = fmul fast float %3041, %69
  %3044 = fmul fast float %3042, %70
  %3045 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3046 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3047 = select i1 %1110, i32 2, i32 0
  %3048 = or i32 %3047, 1
  %3049 = uitofp i32 %3048 to float
  %3050 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %3045, float %3046, float %3049, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.ResRet.f32 %3050, 1
  %3053 = extractvalue %dx.types.ResRet.f32 %3050, 2
  %3054 = extractvalue %dx.types.ResRet.f32 %3050, 3
  %3055 = add nuw nsw i32 %3047, 2
  %3056 = uitofp i32 %3055 to float
  %3057 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %3045, float %3046, float %3056, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = extractvalue %dx.types.ResRet.f32 %3057, 1
  %3060 = extractvalue %dx.types.ResRet.f32 %3057, 2
  %3061 = extractvalue %dx.types.ResRet.f32 %3057, 3
  %3062 = call float @dx.op.binary.f32(i32 35, float %3052, float %3053)  ; FMax(a,b)
  %3063 = call float @dx.op.binary.f32(i32 35, float %3051, float %3062)  ; FMax(a,b)
  %3064 = call float @dx.op.binary.f32(i32 35, float %3063, float %3054)  ; FMax(a,b)
  %3065 = call float @dx.op.binary.f32(i32 36, float %3059, float %3060)  ; FMin(a,b)
  %3066 = call float @dx.op.binary.f32(i32 36, float %3058, float %3065)  ; FMin(a,b)
  %3067 = call float @dx.op.binary.f32(i32 36, float %3066, float %3061)  ; FMin(a,b)
  %3068 = fmul fast float %3064, 2.550000e+02
  %3069 = fadd fast float %3068, 0x3F70101020000000
  %3070 = fptoui float %3069 to i32
  %3071 = fmul fast float %3067, 2.550000e+02
  %3072 = fadd fast float %3071, 0x3F70101020000000
  %3073 = fptoui float %3072 to i32
  %3074 = icmp ult i32 %3070, %3073
  br i1 %3074, label %3075, label %3121

; <label>:3075                                    ; preds = %3032
  %3076 = fcmp fast ogt float %61, 9.843750e-01
  %3077 = fadd fast float %1969, -4.000000e+00
  %3078 = select i1 %3076, float -4.000000e+00, float %3077
  %3079 = call float @dx.op.binary.f32(i32 35, float %3078, float 0.000000e+00)  ; FMax(a,b)
  %3080 = fadd fast float %1287, %3079
  %3081 = fmul fast float %3080, %1288
  %3082 = call float @dx.op.unary.f32(i32 23, float %3081)  ; Log(value)
  %3083 = fmul fast float %1289, %3082
  %3084 = fmul fast float %3083, %1297
  %3085 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  %3086 = uitofp i32 %3070 to float
  %3087 = uitofp i32 %3073 to float
  %3088 = fadd fast float %3086, 5.000000e-01
  %3089 = fadd fast float %3087, 5.000000e-01
  %3090 = fmul fast float %1297, %3088
  %3091 = fmul fast float %1297, %3089
  %3092 = fadd fast float %3090, 0x3F0FFB4800000000
  %3093 = fadd fast float %3091, 0xBF0FFB4800000000
  %3094 = call float @dx.op.binary.f32(i32 35, float %3085, float %3092)  ; FMax(a,b)
  %3095 = call float @dx.op.binary.f32(i32 36, float %3094, float %3093)  ; FMin(a,b)
  %3096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %3097 = extractvalue %dx.types.CBufRet.f32 %3096, 1
  %3098 = extractvalue %dx.types.CBufRet.f32 %3096, 2
  %3099 = extractvalue %dx.types.CBufRet.f32 %3096, 0
  %3100 = select i1 %1110, float %3099, float 0.000000e+00
  %3101 = fmul fast float %3097, %3095
  %3102 = fadd fast float %3100, %3101
  %3103 = fadd fast float %3100, %3098
  %3104 = fsub fast float %3097, %3098
  %3105 = fadd fast float %3104, %3100
  %3106 = call float @dx.op.binary.f32(i32 35, float %3102, float %3103)  ; FMax(a,b)
  %3107 = call float @dx.op.binary.f32(i32 36, float %3106, float %3105)  ; FMin(a,b)
  %3108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %3045, float %3046, float %3107, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3109 = extractvalue %dx.types.ResRet.f32 %3108, 0
  %3110 = extractvalue %dx.types.ResRet.f32 %3108, 1
  %3111 = extractvalue %dx.types.ResRet.f32 %3108, 2
  %3112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %3045, float %3046, float %3107, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3113 = extractvalue %dx.types.ResRet.f32 %3112, 0
  %3114 = extractvalue %dx.types.ResRet.f32 %3112, 1
  %3115 = extractvalue %dx.types.ResRet.f32 %3112, 2
  %3116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3117 = extractvalue %dx.types.CBufRet.f32 %3116, 1
  %3118 = fmul fast float %3117, %3113
  %3119 = fmul fast float %3117, %3114
  %3120 = fmul fast float %3117, %3115
  br label %3121

; <label>:3121                                    ; preds = %3075, %3032
  %3122 = phi float [ %3109, %3075 ], [ 1.000000e+00, %3032 ]
  %3123 = phi float [ %3110, %3075 ], [ 1.000000e+00, %3032 ]
  %3124 = phi float [ %3111, %3075 ], [ 1.000000e+00, %3032 ]
  %3125 = phi float [ %3118, %3075 ], [ 0.000000e+00, %3032 ]
  %3126 = phi float [ %3119, %3075 ], [ 0.000000e+00, %3032 ]
  %3127 = phi float [ %3120, %3075 ], [ 0.000000e+00, %3032 ]
  %3128 = fmul fast float %3125, %1713
  %3129 = fmul fast float %3126, %1713
  %3130 = fmul fast float %3127, %1713
  %3131 = fmul fast float %3122, %3039
  %3132 = call float @dx.op.dot3.f32(i32 55, float %3122, float %3123, float %3124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3133 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3134 = select i1 %139, float %3132, float %3122
  %3135 = select i1 %139, float %3132, float %3123
  %3136 = select i1 %139, float 1.000000e+00, float %3124
  %3137 = select i1 %139, float %3133, float %3128
  %3138 = select i1 %139, float 0.000000e+00, float %3129
  %3139 = select i1 %139, float 0.000000e+00, float %3130
  %3140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.i32 %3140, 3
  %3142 = and i32 %3141, 3
  %3143 = icmp ne i32 %3142, 0
  %3144 = and i32 %3141, 4
  %3145 = icmp ne i32 %3144, 0
  %3146 = and i1 %3143, %3145
  %3147 = and i1 %139, %3146
  br i1 %3147, label %3148, label %3154

; <label>:3148                                    ; preds = %3121
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 1
  %3151 = fadd fast float %3131, -1.000000e+00
  %3152 = fmul fast float %3150, %3151
  %3153 = fadd fast float %3152, 1.000000e+00
  br label %3154

; <label>:3154                                    ; preds = %3148, %3121
  %3155 = phi float [ %3153, %3148 ], [ %3131, %3121 ]
  %3156 = fadd fast float %3036, %3033
  %3157 = fmul fast float %3134, %3156
  %3158 = fadd fast float %3157, %3137
  %3159 = fadd fast float %3037, %3034
  %3160 = fmul fast float %3135, %3159
  %3161 = fadd fast float %3160, %3138
  %3162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3163 = extractvalue %dx.types.CBufRet.f32 %3162, 0
  br i1 %139, label %3164, label %3186

; <label>:3164                                    ; preds = %3154
  %3165 = fadd fast float %3158, %3161
  %3166 = fmul fast float %3163, %3165
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 3
  %3169 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %3170 = fsub fast float %1721, %3169
  %3171 = extractvalue %dx.types.CBufRet.f32 %1718, 2
  %3172 = fmul fast float %3170, %3171
  %3173 = call float @dx.op.unary.f32(i32 7, float %3172)  ; Saturate(value)
  %3174 = fsub fast float %3173, %3168
  %3175 = fmul fast float %3174, %3155
  %3176 = fadd fast float %3175, %3168
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = extractvalue %dx.types.CBufRet.f32 %3177, 0
  %3179 = fsub fast float %3176, %3178
  %3180 = fmul fast float %3179, 1.000000e+01
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  %3182 = fsub fast float %1086, %1713
  %3183 = fmul fast float %3181, %3182
  %3184 = fadd fast float %3183, %1713
  %3185 = fmul fast float %3184, %3176
  br label %3198

; <label>:3186                                    ; preds = %3154
  %3187 = fadd fast float %3038, %3035
  %3188 = fmul fast float %3136, %3187
  %3189 = fadd fast float %3188, %3139
  %3190 = fmul fast float %3163, %3158
  %3191 = fmul fast float %3163, %3161
  %3192 = fmul fast float %3163, %3189
  %3193 = call float @dx.op.binary.f32(i32 35, float %3191, float %3192)  ; FMax(a,b)
  %3194 = call float @dx.op.binary.f32(i32 35, float %3190, float %3193)  ; FMax(a,b)
  %3195 = call float @dx.op.binary.f32(i32 35, float %3194, float %1713)  ; FMax(a,b)
  %3196 = fcmp fast ugt float %3195, 0x3F10000000000000
  br i1 %3196, label %3198, label %3197

; <label>:3197                                    ; preds = %3186
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3198

; <label>:3198                                    ; preds = %3197, %3186, %3164
  %3199 = phi float [ %3166, %3164 ], [ %3190, %3197 ], [ %3190, %3186 ]
  %3200 = phi float [ %3185, %3164 ], [ %3191, %3197 ], [ %3191, %3186 ]
  %3201 = phi float [ %3184, %3164 ], [ %3192, %3197 ], [ %3192, %3186 ]
  %3202 = phi float [ %3184, %3164 ], [ %1713, %3197 ], [ %1713, %3186 ]
  %3203 = fadd fast float %606, 0x3FE3C6EF40000000
  %3204 = call float @dx.op.unary.f32(i32 22, float %3203)  ; Frc(value)
  %3205 = call float @dx.op.unary.f32(i32 23, float %3199)  ; Log(value)
  %3206 = fadd fast float %3205, -7.000000e+00
  %3207 = call float @dx.op.unary.f32(i32 21, float %3206)  ; Exp(value)
  %3208 = fmul fast float %3204, 2.000000e+00
  %3209 = fadd fast float %3208, -1.000000e+00
  %3210 = fmul fast float %3207, %3209
  %3211 = fcmp fast ogt float %3199, 0.000000e+00
  %3212 = select i1 %3211, float %3210, float 0.000000e+00
  %3213 = fadd fast float %3212, %3199
  %3214 = fadd fast float %606, 0x3FF3C6EF40000000
  %3215 = call float @dx.op.unary.f32(i32 22, float %3214)  ; Frc(value)
  %3216 = call float @dx.op.unary.f32(i32 23, float %3200)  ; Log(value)
  %3217 = fadd fast float %3216, -7.000000e+00
  %3218 = call float @dx.op.unary.f32(i32 21, float %3217)  ; Exp(value)
  %3219 = fmul fast float %3215, 2.000000e+00
  %3220 = fadd fast float %3219, -1.000000e+00
  %3221 = fmul fast float %3218, %3220
  %3222 = fcmp fast ogt float %3200, 0.000000e+00
  %3223 = select i1 %3222, float %3221, float 0.000000e+00
  %3224 = fadd fast float %3223, %3200
  %3225 = fadd fast float %606, 0x3FFDAA66E0000000
  %3226 = call float @dx.op.unary.f32(i32 22, float %3225)  ; Frc(value)
  %3227 = call float @dx.op.unary.f32(i32 23, float %3201)  ; Log(value)
  %3228 = fadd fast float %3227, -6.000000e+00
  %3229 = call float @dx.op.unary.f32(i32 21, float %3228)  ; Exp(value)
  %3230 = fmul fast float %3226, 2.000000e+00
  %3231 = fadd fast float %3230, -1.000000e+00
  %3232 = fmul fast float %3229, %3231
  %3233 = fcmp fast ogt float %3201, 0.000000e+00
  %3234 = select i1 %3233, float %3232, float 0.000000e+00
  %3235 = fadd fast float %3234, %3201
  %3236 = select i1 %139, float %3200, float %3224
  %3237 = select i1 %139, float %3201, float %3235
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3238 = call float @dx.op.binary.f32(i32 36, float %3213, float 3.225500e+04)  ; FMin(a,b)
  %3239 = call float @dx.op.binary.f32(i32 36, float %3236, float 3.225500e+04)  ; FMin(a,b)
  %3240 = call float @dx.op.binary.f32(i32 36, float %3237, float 3.225500e+04)  ; FMin(a,b)
  %3241 = call float @dx.op.binary.f32(i32 36, float %3202, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3238)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3239)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3241)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3202)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3202)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3202)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3202)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

