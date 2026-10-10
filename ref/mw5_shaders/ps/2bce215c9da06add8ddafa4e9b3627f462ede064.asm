;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyz 
; TEXCOORD                 4   xyzw        5     NONE   float   xyzw
; TEXCOORD                 5   xy          6     NONE   float   xy  
; TEXCOORD                 8   xyzw        7     NONE   float       
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
; shader hash: 2b369c211104a8d927ae472085294453
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 38 }
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
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = fmul fast float %63, %54
  %65 = fmul fast float %63, %55
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 3
  %69 = fmul fast float %64, 2.000000e+00
  %70 = fmul fast float %69, %67
  %71 = fmul fast float %65, 2.000000e+00
  %72 = fmul fast float %71, %68
  %73 = fsub fast float 1.000000e+00, %70
  %74 = fsub fast float 1.000000e+00, %72
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %73, %76
  %80 = fmul fast float %73, %77
  %81 = fmul fast float %73, %78
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %74, %83
  %87 = fmul fast float %74, %84
  %88 = fmul fast float %74, %85
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %102 = fmul fast float %43, %40
  %103 = fmul fast float %44, %39
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %44, %38
  %106 = fmul fast float %42, %40
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %42, %39
  %109 = fmul fast float %43, %38
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %104, %41
  %112 = fmul fast float %107, %41
  %113 = fmul fast float %110, %41
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %123, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = fcmp fast olt float %126, %128
  br label %133

; <label>:130                                     ; preds = %0
  %131 = icmp eq i32 %118, 0
  %132 = and i1 %117, %131
  br label %133

; <label>:133                                     ; preds = %130, %121
  %134 = phi i1 [ %129, %121 ], [ %132, %130 ]
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
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
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = fmul fast float %147, 2.550000e+02
  %149 = fptoui float %148 to i32
  %150 = select i1 %143, i32 %149, i32 0
  %151 = mul i32 %30, 208
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
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %193 = fadd fast float %48, %45
  %194 = fadd fast float %49, %46
  %195 = add i32 %31, 72
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = extractvalue %dx.types.ResRet.i32 %196, 1
  %199 = bitcast i32 %197 to float
  %200 = bitcast i32 %198 to float
  %201 = fmul fast float %199, %48
  %202 = fmul fast float %200, %49
  %203 = call float @dx.op.unary.f32(i32 22, float %201)  ; Frc(value)
  %204 = call float @dx.op.unary.f32(i32 22, float %202)  ; Frc(value)
  %205 = and i32 %154, 16
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %206, float 1.000000e+00, float %53
  %208 = add i32 %31, 112
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = add i32 %210, 0
  %212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %212, %dx.types.Handle %61, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float %214, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add i32 %218, 0
  %220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %220, %dx.types.Handle %61, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float %222, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fsub fast float %224, %216
  %226 = fmul fast float %225, %47
  %227 = fadd fast float %226, %216
  %228 = fmul fast float %227, %207
  %229 = icmp eq i32 %205, 0
  br i1 %229, label %249, label %230, !dx.controlflow.hints !72

; <label>:230                                     ; preds = %190
  %231 = add i32 %151, 64
  %232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = fadd fast float %233, 1.000000e+00
  %235 = fmul fast float %234, %53
  %236 = fsub fast float %235, %233
  %237 = fsub fast float %234, %236
  %238 = call float @dx.op.unary.f32(i32 7, float %237)  ; Saturate(value)
  %239 = fsub fast float 1.000000e+00, %235
  %240 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %241 = fsub fast float %238, %240
  %242 = fsub fast float %228, %240
  %243 = fdiv fast float %242, %241
  %244 = call float @dx.op.unary.f32(i32 7, float %243)  ; Saturate(value)
  %245 = fmul fast float %244, 2.000000e+00
  %246 = fsub fast float 3.000000e+00, %245
  %247 = fmul fast float %244, %244
  %248 = fmul fast float %247, %246
  br label %249

; <label>:249                                     ; preds = %230, %190
  %250 = phi float [ %248, %230 ], [ %228, %190 ]
  %251 = fcmp fast ogt float %250, 0.000000e+00
  br i1 %251, label %253, label %252

; <label>:252                                     ; preds = %249
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %253

; <label>:253                                     ; preds = %252, %249
  %254 = call float @dx.op.unary.f32(i32 7, float %250)  ; Saturate(value)
  %255 = fmul fast float %64, 5.000000e-01
  %256 = fmul fast float %65, 5.000000e-01
  %257 = fptosi float %255 to i32
  %258 = fptosi float %256 to i32
  %259 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %257, i32 %258, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = lshr i32 %260, 18
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F4C00EBA0000000
  %264 = call float @dx.op.unary.f32(i32 21, float %263)  ; Exp(value)
  %265 = fadd fast float %264, -1.000000e+00
  %266 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %267 = extractvalue %dx.types.Dimensions %266, 0
  %268 = sitofp i32 %267 to float
  %269 = extractvalue %dx.types.Dimensions %266, 1
  %270 = sitofp i32 %269 to float
  %271 = fcmp fast oge float %255, %268
  %272 = fcmp fast oge float %256, %270
  %273 = or i1 %271, %272
  %274 = select i1 %273, float 0x4197782600000000, float %265
  %275 = fsub fast float %274, %57
  %276 = fcmp fast ogt float %275, 0.000000e+00
  %277 = and i32 %150, -2
  %278 = icmp eq i32 %277, 2
  %279 = and i1 %278, %276
  %280 = xor i1 %276, true
  %281 = icmp eq i32 %150, 1
  %282 = and i1 %281, %280
  %283 = or i1 %279, %282
  %284 = and i32 %154, 262144
  %285 = icmp ne i32 %284, 0
  %286 = and i1 %285, %283
  %287 = xor i1 %283, true
  %288 = and i32 %154, 131072
  %289 = icmp ne i32 %288, 0
  %290 = and i1 %289, %287
  %291 = or i1 %286, %290
  br i1 %291, label %292, label %293

; <label>:292                                     ; preds = %253
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %293

; <label>:293                                     ; preds = %292, %253
  %294 = and i32 %154, 32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %545, label %296, !dx.controlflow.hints !73

; <label>:296                                     ; preds = %293
  %297 = add i32 %151, 80
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = add i32 %151, 96
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = add i32 %151, 112
  %309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  %311 = extractvalue %dx.types.ResRet.f32 %309, 1
  %312 = extractvalue %dx.types.ResRet.f32 %309, 2
  %313 = extractvalue %dx.types.ResRet.f32 %309, 3
  %314 = add i32 %151, 128
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 4096
  %323 = icmp ne i32 %322, 0
  %324 = fcmp fast une float %307, 0.000000e+00
  %325 = and i32 %321, 64
  %326 = icmp ne i32 %325, 0
  %327 = and i32 %321, 128
  %328 = icmp eq i32 %327, 0
  %329 = and i32 %321, 2048
  %330 = icmp eq i32 %329, 0
  %331 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %332 = extractvalue %dx.types.Dimensions %331, 0
  %333 = sitofp i32 %332 to float
  %334 = extractvalue %dx.types.Dimensions %331, 1
  %335 = sitofp i32 %334 to float
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 3
  %339 = fmul fast float %337, %64
  %340 = fmul fast float %338, %65
  %341 = fmul fast float %339, %333
  %342 = fmul fast float %340, %335
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %345 = fsub fast float -0.000000e+00, %344
  %346 = fptoui float %345 to i32
  %347 = fptoui float %341 to i32
  %348 = fptoui float %342 to i32
  %349 = and i32 %346, 31
  %350 = lshr i32 %347, %349
  %351 = lshr i32 %348, %349
  %352 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %346, i32 %350, i32 %351, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = fcmp fast ogt float %353, -1.000000e+00
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %357 = select i1 %354, float %356, float 1.000000e+00
  %358 = fadd fast float %353, 1.000000e+00
  %359 = fmul fast float %357, %358
  %360 = call float @dx.op.unary.f32(i32 6, float %359)  ; FAbs(value)
  %361 = extractvalue %dx.types.CBufRet.f32 %355, 3
  %362 = fcmp fast oge float %360, %361
  %363 = select i1 %362, float 0x4197782600000000, float %360
  br i1 %330, label %441, label %364, !dx.controlflow.hints !74

; <label>:364                                     ; preds = %296
  %365 = fmul fast float %69, %337
  %366 = fmul fast float %71, %338
  %367 = fsub fast float 1.000000e+00, %365
  %368 = fsub fast float 1.000000e+00, %366
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = fmul fast float %367, %370
  %374 = fmul fast float %367, %371
  %375 = fmul fast float %367, %372
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = fmul fast float %368, %377
  %381 = fmul fast float %368, %378
  %382 = fmul fast float %368, %379
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %387 = fadd fast float %380, %384
  %388 = fadd fast float %387, %373
  %389 = fadd fast float %381, %385
  %390 = fadd fast float %389, %374
  %391 = fadd fast float %382, %386
  %392 = fadd fast float %391, %375
  %393 = fmul fast float %388, %363
  %394 = fmul fast float %390, %363
  %395 = fmul fast float %392, %363
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %400 = fsub fast float %397, %32
  %401 = fadd fast float %400, %393
  %402 = fsub fast float %398, %33
  %403 = fadd fast float %402, %394
  %404 = fsub fast float %399, %34
  %405 = fadd fast float %404, %395
  %406 = fmul fast float %35, %35
  %407 = call float @dx.op.dot3.f32(i32 55, float %401, float %403, float %405, float %401, float %403, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = fsub fast float %406, %407
  %409 = fmul fast float %306, %406
  %410 = fmul fast float %305, %406
  %411 = fcmp fast olt float %408, %409
  %412 = fcmp fast ogt float %408, %410
  %413 = or i1 %411, %412
  %414 = select i1 %413, float 0.000000e+00, float %408
  %415 = fsub fast float %305, %306
  %416 = fmul fast float %415, %406
  %417 = fsub fast float %414, %409
  %418 = fdiv fast float %417, %416
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fmul fast float %419, 2.000000e+00
  %421 = fsub fast float 3.000000e+00, %420
  %422 = fmul fast float %419, %419
  %423 = fmul fast float %422, %421
  %424 = fmul fast float %310, %50
  %425 = fmul fast float %311, %51
  %426 = fmul fast float %312, %52
  %427 = fsub fast float %424, %316
  %428 = fsub fast float %425, %317
  %429 = fsub fast float %426, %318
  %430 = fsub fast float %313, %319
  %431 = fmul fast float %423, %427
  %432 = fmul fast float %423, %428
  %433 = fmul fast float %423, %429
  %434 = fmul fast float %423, %430
  %435 = fadd fast float %431, %316
  %436 = fadd fast float %432, %317
  %437 = fadd fast float %433, %318
  %438 = fadd fast float %434, %319
  %439 = fmul fast float %299, %299
  %440 = fmul fast float %439, %414
  br label %536

; <label>:441                                     ; preds = %296
  %442 = and i32 %321, 256
  %443 = icmp eq i32 %442, 0
  %444 = fsub fast float %363, %57
  br i1 %443, label %493, label %445

; <label>:445                                     ; preds = %441
  %446 = fadd fast float %305, %57
  %447 = fcmp fast olt float %363, %57
  %448 = fcmp fast ogt float %363, %446
  %449 = or i1 %447, %448
  %450 = select i1 %449, float 0.000000e+00, float %444
  %451 = call float @dx.op.unary.f32(i32 83, float %363)  ; DerivCoarseX(value)
  %452 = call float @dx.op.unary.f32(i32 84, float %363)  ; DerivCoarseY(value)
  %453 = fmul fast float %451, %451
  %454 = fmul fast float %452, %452
  %455 = fadd fast float %454, %453
  %456 = call float @dx.op.unary.f32(i32 24, float %455)  ; Sqrt(value)
  %457 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %458 = fmul fast float %457, %456
  %459 = call float @dx.op.unary.f32(i32 7, float %458)  ; Saturate(value)
  %460 = fmul fast float %459, %306
  %461 = fdiv fast float %444, %460
  %462 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %463 = fmul fast float %462, 2.000000e+00
  %464 = fsub fast float 3.000000e+00, %463
  %465 = fmul fast float %462, %462
  %466 = fmul fast float %465, %464
  %467 = fsub fast float %363, %446
  %468 = fadd fast float %467, %460
  %469 = fdiv fast float %468, %460
  %470 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  %471 = fmul fast float %470, 2.000000e+00
  %472 = fsub fast float 3.000000e+00, %471
  %473 = fmul fast float %470, %470
  %474 = fmul fast float %473, %472
  %475 = fsub fast float %466, %474
  %476 = fmul fast float %310, %50
  %477 = fmul fast float %311, %51
  %478 = fmul fast float %312, %52
  %479 = fsub fast float %476, %316
  %480 = fsub fast float %477, %317
  %481 = fsub fast float %478, %318
  %482 = fsub fast float %313, %319
  %483 = fmul fast float %475, %479
  %484 = fmul fast float %475, %480
  %485 = fmul fast float %475, %481
  %486 = fmul fast float %475, %482
  %487 = fadd fast float %483, %316
  %488 = fadd fast float %484, %317
  %489 = fadd fast float %485, %318
  %490 = fadd fast float %486, %319
  %491 = fmul fast float %450, %299
  %492 = call float @dx.op.unary.f32(i32 6, float %491)  ; FAbs(value)
  br label %536

; <label>:493                                     ; preds = %441
  br i1 %324, label %494, label %507

; <label>:494                                     ; preds = %493
  %495 = fdiv fast float 5.000000e+01, %35
  %496 = select i1 %326, float %495, float 1.000000e+00
  %497 = fmul fast float %496, %299
  %498 = fmul fast float %203, 2.000000e+00
  %499 = fmul fast float %204, 2.000000e+00
  %500 = fadd fast float %498, -1.000000e+00
  %501 = fadd fast float %499, -1.000000e+00
  %502 = call float @dx.op.dot2.f32(i32 54, float %500, float %501, float %500, float %501)  ; Dot2(ax,ay,bx,by)
  %503 = fmul fast float %307, %35
  %504 = fmul fast float %503, %502
  %505 = fsub fast float %444, %504
  %506 = fmul fast float %497, %505
  br label %536

; <label>:507                                     ; preds = %493
  br i1 %328, label %528, label %508

; <label>:508                                     ; preds = %507
  %509 = fmul fast float %35, 0x3F947AE140000000
  %510 = select i1 %326, float %509, float 1.000000e+00
  %511 = fdiv fast float 1.000000e+00, %510
  %512 = fmul fast float %510, %300
  %513 = fmul fast float %510, %301
  %514 = fmul fast float %511, %302
  %515 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %516 = fcmp fast olt float %515, %512
  br i1 %516, label %517, label %521, !dx.controlflow.hints !75

; <label>:517                                     ; preds = %508
  %518 = fmul fast float %511, %299
  %519 = fmul fast float %518, %515
  %520 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  br label %536

; <label>:521                                     ; preds = %508
  %522 = fcmp fast ogt float %515, %513
  br i1 %522, label %523, label %536

; <label>:523                                     ; preds = %521
  %524 = fsub fast float %515, %513
  %525 = fmul fast float %514, %524
  %526 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %527 = fsub fast float 1.000000e+00, %526
  br label %536

; <label>:528                                     ; preds = %507
  %529 = fdiv fast float 5.000000e+01, %35
  %530 = select i1 %326, float %529, float 1.000000e+00
  %531 = fmul fast float %530, %299
  %532 = call float @dx.op.unary.f32(i32 6, float %275)  ; FAbs(value)
  %533 = select i1 %323, float %532, float 0x47EFFFFFE0000000
  %534 = call float @dx.op.binary.f32(i32 36, float %444, float %533)  ; FMin(a,b)
  %535 = fmul fast float %531, %534
  br label %536

; <label>:536                                     ; preds = %528, %523, %521, %517, %494, %445, %364
  %537 = phi float [ %440, %364 ], [ %492, %445 ], [ %506, %494 ], [ %535, %528 ], [ %520, %517 ], [ %527, %523 ], [ %515, %521 ]
  %538 = phi float [ %435, %364 ], [ %487, %445 ], [ %50, %494 ], [ %50, %528 ], [ %50, %517 ], [ %50, %523 ], [ %50, %521 ]
  %539 = phi float [ %436, %364 ], [ %488, %445 ], [ %51, %494 ], [ %51, %528 ], [ %51, %517 ], [ %51, %523 ], [ %51, %521 ]
  %540 = phi float [ %437, %364 ], [ %489, %445 ], [ %52, %494 ], [ %52, %528 ], [ %52, %517 ], [ %52, %523 ], [ %52, %521 ]
  %541 = phi float [ %438, %364 ], [ %490, %445 ], [ 1.000000e+00, %494 ], [ 1.000000e+00, %528 ], [ 1.000000e+00, %517 ], [ 1.000000e+00, %523 ], [ 1.000000e+00, %521 ]
  %542 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %543 = fmul fast float %541, %254
  %544 = fmul fast float %543, %542
  br label %545

; <label>:545                                     ; preds = %536, %293
  %546 = phi float [ %538, %536 ], [ %50, %293 ]
  %547 = phi float [ %539, %536 ], [ %51, %293 ]
  %548 = phi float [ %540, %536 ], [ %52, %293 ]
  %549 = phi float [ %544, %536 ], [ %254, %293 ]
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %552 = fptosi float %57 to i32
  %553 = sitofp i32 %552 to float
  %554 = fadd fast float %551, %553
  %555 = fmul fast float %554, 0x3FE3C6EF40000000
  %556 = frem fast float %64, 2.560000e+02
  %557 = frem fast float %65, 2.560000e+02
  %558 = fptoui float %556 to i32
  %559 = fptoui float %557 to i32
  %560 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %558, i32 %559, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = fadd fast float %561, %555
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = and i32 %154, 1
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %622, label %566, !dx.controlflow.hints !76

; <label>:566                                     ; preds = %545
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 2
  %569 = extractvalue %dx.types.ResRet.f32 %567, 3
  %570 = add i32 %151, 16
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = add i32 %151, 32
  %576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = and i32 %154, 2
  %581 = icmp eq i32 %580, 0
  %582 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = call float @dx.op.unary.f32(i32 25, float %582)  ; Rsqrt(value)
  %584 = fmul fast float %583, %42
  %585 = fmul fast float %583, %43
  %586 = fmul fast float %583, %44
  %587 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = call float @dx.op.unary.f32(i32 25, float %587)  ; Rsqrt(value)
  %589 = fmul fast float %588, %99
  %590 = fmul fast float %588, %100
  %591 = fmul fast float %588, %101
  %592 = call float @dx.op.dot3.f32(i32 55, float %589, float %590, float %591, float %584, float %585, float %586)  ; Dot3(ax,ay,az,bx,by,bz)
  %593 = fmul fast float %592, %592
  %594 = fmul fast float %593, %568
  %595 = fadd fast float %594, %569
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  br i1 %581, label %597, label %607, !dx.controlflow.hints !77

; <label>:597                                     ; preds = %566
  %598 = extractvalue %dx.types.ResRet.f32 %567, 1
  %599 = extractvalue %dx.types.ResRet.f32 %567, 0
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 3
  %602 = fmul fast float %601, %587
  %603 = fsub fast float %599, %602
  %604 = fmul fast float %603, %598
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = fmul fast float %605, %596
  br label %607

; <label>:607                                     ; preds = %597, %566
  %608 = phi float [ %606, %597 ], [ %596, %566 ]
  %609 = fsub fast float %572, %577
  %610 = fsub fast float %573, %578
  %611 = fsub fast float %574, %579
  %612 = fmul fast float %608, %609
  %613 = fmul fast float %608, %610
  %614 = fmul fast float %608, %611
  %615 = fadd fast float %612, %577
  %616 = fadd fast float %613, %578
  %617 = fadd fast float %614, %579
  %618 = fmul fast float %615, %546
  %619 = fmul fast float %616, %547
  %620 = fmul fast float %617, %548
  %621 = fmul fast float %608, %549
  br label %622

; <label>:622                                     ; preds = %607, %545
  %623 = phi float [ %618, %607 ], [ %546, %545 ]
  %624 = phi float [ %619, %607 ], [ %547, %545 ]
  %625 = phi float [ %620, %607 ], [ %548, %545 ]
  %626 = phi float [ %621, %607 ], [ %549, %545 ]
  %627 = add i32 %31, 104
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = add i32 %31, 24
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %60, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 2
  %639 = extractvalue %dx.types.ResRet.f32 %635, 3
  %640 = and i32 %634, 255
  %641 = uitofp i32 %640 to float
  %642 = lshr i32 %634, 8
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %639, %641
  %646 = fadd fast float %645, %644
  %647 = add i32 %31, 56
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = lshr i32 %649, 8
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = lshr i32 %649, 16
  %658 = and i32 %657, 255
  %659 = uitofp i32 %658 to float
  %660 = fmul fast float %659, 0x3F70101020000000
  %661 = fmul fast float %652, %652
  %662 = fmul fast float %661, %636
  %663 = fmul fast float %656, %656
  %664 = fmul fast float %663, %637
  %665 = fmul fast float %660, %660
  %666 = fmul fast float %665, %638
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = add i32 %668, 0
  %670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %670, %dx.types.Handle %60, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = extractvalue %dx.types.ResRet.f32 %673, 3
  %678 = and i32 %672, 255
  %679 = uitofp i32 %678 to float
  %680 = lshr i32 %672, 8
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %677, %679
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %687, 0x3F70101020000000
  %689 = lshr i32 %685, 8
  %690 = and i32 %689, 255
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %691, 0x3F70101020000000
  %693 = lshr i32 %685, 16
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %695, 0x3F70101020000000
  %697 = fmul fast float %688, %688
  %698 = fmul fast float %697, %674
  %699 = fmul fast float %692, %692
  %700 = fmul fast float %699, %675
  %701 = fmul fast float %696, %696
  %702 = fmul fast float %701, %676
  %703 = fsub fast float %698, %662
  %704 = fsub fast float %700, %664
  %705 = fsub fast float %702, %666
  %706 = fmul fast float %703, %47
  %707 = fmul fast float %704, %47
  %708 = fmul fast float %705, %47
  %709 = fadd fast float %706, %662
  %710 = fadd fast float %707, %664
  %711 = fadd fast float %708, %666
  %712 = fsub fast float %682, %646
  %713 = fadd fast float %712, %683
  %714 = fmul fast float %713, %47
  %715 = fadd fast float %714, %646
  %716 = fmul fast float %715, 0x3F70101000000000
  %717 = fmul fast float %709, %623
  %718 = fmul fast float %710, %624
  %719 = fmul fast float %711, %625
  %720 = add i32 %31, 28
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %31, 108
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %725, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %60, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 3
  %732 = and i32 %722, 255
  %733 = uitofp i32 %732 to float
  %734 = lshr i32 %722, 8
  %735 = and i32 %734, 255
  %736 = uitofp i32 %735 to float
  %737 = lshr i32 %722, 16
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = fmul fast float %739, 0x3F70101000000000
  %741 = fmul fast float %729, %733
  %742 = fadd fast float %741, %736
  %743 = fadd fast float %730, -5.000000e-01
  %744 = fadd fast float %731, -5.000000e-01
  %745 = fmul fast float %743, %740
  %746 = fmul fast float %744, %740
  %747 = fadd fast float %745, 5.000000e-01
  %748 = fadd fast float %746, 5.000000e-01
  %749 = fmul fast float %747, 2.000000e+00
  %750 = fadd fast float %749, -1.000000e+00
  %751 = fmul fast float %748, 2.000000e+00
  %752 = fadd fast float %751, -1.000000e+00
  %753 = fadd fast float %750, %752
  %754 = fmul fast float %753, 5.000000e-01
  %755 = fsub fast float %750, %752
  %756 = fmul fast float %755, 5.000000e-01
  %757 = call float @dx.op.unary.f32(i32 6, float %754)  ; FAbs(value)
  %758 = fsub fast float 1.000000e+00, %757
  %759 = call float @dx.op.unary.f32(i32 6, float %756)  ; FAbs(value)
  %760 = fsub fast float %758, %759
  %761 = call float @dx.op.dot3.f32(i32 55, float %754, float %756, float %760, float %754, float %756, float %760)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = call float @dx.op.unary.f32(i32 25, float %761)  ; Rsqrt(value)
  %763 = fmul fast float %754, %762
  %764 = fmul fast float %756, %762
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %768, 0
  %770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %770, %dx.types.Handle %60, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 3
  %775 = and i32 %766, 255
  %776 = uitofp i32 %775 to float
  %777 = lshr i32 %766, 8
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = lshr i32 %766, 16
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = fmul fast float %772, %776
  %785 = fadd fast float %773, -5.000000e-01
  %786 = fadd fast float %774, -5.000000e-01
  %787 = fmul fast float %785, %783
  %788 = fmul fast float %786, %783
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fadd fast float %788, 5.000000e-01
  %791 = fmul fast float %789, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = fmul fast float %790, 2.000000e+00
  %794 = fadd fast float %793, -1.000000e+00
  %795 = fadd fast float %792, %794
  %796 = fmul fast float %795, 5.000000e-01
  %797 = fsub fast float %792, %794
  %798 = fmul fast float %797, 5.000000e-01
  %799 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %800 = fsub fast float 1.000000e+00, %799
  %801 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %802 = fsub fast float %800, %801
  %803 = call float @dx.op.dot3.f32(i32 55, float %796, float %798, float %802, float %796, float %798, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = call float @dx.op.unary.f32(i32 25, float %803)  ; Rsqrt(value)
  %805 = fmul fast float %796, %804
  %806 = fmul fast float %798, %804
  %807 = fsub fast float %805, %763
  %808 = fsub fast float %806, %764
  %809 = fmul fast float %807, %47
  %810 = fmul fast float %808, %47
  %811 = fadd fast float %809, %763
  %812 = fadd fast float %810, %764
  %813 = fsub fast float %779, %742
  %814 = fadd fast float %813, %784
  %815 = fmul fast float %814, %47
  %816 = fadd fast float %815, %742
  %817 = fmul fast float %816, 0x3F70101000000000
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 3
  %820 = fcmp fast ogt float %819, 0.000000e+00
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 1
  br i1 %820, label %823, label %848

; <label>:823                                     ; preds = %622
  %824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = fmul fast float %822, %828
  %830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = extractvalue %dx.types.ResRet.f32 %830, 3
  %835 = fmul fast float %822, %831
  %836 = fmul fast float %822, %832
  %837 = fmul fast float %822, %833
  %838 = fmul fast float %822, %834
  %839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = extractvalue %dx.types.ResRet.f32 %839, 3
  %844 = fmul fast float %822, %840
  %845 = fmul fast float %822, %841
  %846 = fmul fast float %822, %842
  %847 = fmul fast float %822, %843
  br label %853

; <label>:848                                     ; preds = %622
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  br label %853

; <label>:853                                     ; preds = %848, %823
  %854 = phi float [ %844, %823 ], [ 0.000000e+00, %848 ]
  %855 = phi float [ %845, %823 ], [ 0.000000e+00, %848 ]
  %856 = phi float [ %846, %823 ], [ 0.000000e+00, %848 ]
  %857 = phi float [ %847, %823 ], [ 0.000000e+00, %848 ]
  %858 = phi float [ %835, %823 ], [ 0.000000e+00, %848 ]
  %859 = phi float [ %836, %823 ], [ 0.000000e+00, %848 ]
  %860 = phi float [ %837, %823 ], [ 0.000000e+00, %848 ]
  %861 = phi float [ %838, %823 ], [ 0.000000e+00, %848 ]
  %862 = phi float [ %825, %823 ], [ %850, %848 ]
  %863 = phi float [ %826, %823 ], [ %851, %848 ]
  %864 = phi float [ %827, %823 ], [ %852, %848 ]
  %865 = phi float [ %829, %823 ], [ 0.000000e+00, %848 ]
  %866 = fmul float %822, %864
  %867 = fmul float %822, %863
  %868 = fmul float %822, %862
  %869 = call float @dx.op.dot2.f32(i32 54, float %811, float %812, float %811, float %812)  ; Dot2(ax,ay,bx,by)
  %870 = fsub fast float 1.000000e+00, %869
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %872 = call float @dx.op.unary.f32(i32 24, float %871)  ; Sqrt(value)
  %873 = fmul fast float %872, %42
  %874 = fmul fast float %872, %43
  %875 = fmul fast float %872, %44
  %876 = fmul fast float %811, %38
  %877 = fmul fast float %811, %39
  %878 = fmul fast float %811, %40
  %879 = fmul fast float %111, %812
  %880 = fmul fast float %112, %812
  %881 = fmul fast float %113, %812
  %882 = fadd fast float %879, %876
  %883 = fadd fast float %882, %873
  %884 = fadd fast float %880, %877
  %885 = fadd fast float %884, %874
  %886 = fadd fast float %881, %878
  %887 = fadd fast float %886, %875
  %888 = call float @dx.op.dot3.f32(i32 55, float %883, float %885, float %887, float %883, float %885, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = call float @dx.op.unary.f32(i32 25, float %888)  ; Rsqrt(value)
  %890 = fmul fast float %883, %889
  %891 = fmul fast float %885, %889
  %892 = fmul fast float %887, %889
  %893 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = call float @dx.op.unary.f32(i32 25, float %893)  ; Rsqrt(value)
  %895 = fmul fast float %894, %99
  %896 = fmul fast float %894, %100
  %897 = fmul fast float %894, %101
  %898 = fsub fast float -0.000000e+00, %895
  %899 = fsub fast float -0.000000e+00, %896
  %900 = fsub fast float -0.000000e+00, %897
  %901 = fadd fast float %716, 0xBFB99999A0000000
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fmul fast float %902, 0x3FF1C71C80000000
  %904 = call float @dx.op.binary.f32(i32 36, float %716, float 0x3FB99999A0000000)  ; FMin(a,b)
  %905 = fsub fast float 1.000000e+00, %903
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fmul fast float %906, %717
  %908 = fmul fast float %906, %718
  %909 = fmul fast float %906, %719
  %910 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %911 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %912 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %913 = fmul fast float %903, %717
  %914 = fmul fast float %903, %718
  %915 = fmul fast float %903, %719
  %916 = fadd fast float %913, %904
  %917 = fadd fast float %914, %904
  %918 = fadd fast float %915, %904
  %919 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %920 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %921 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %922 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %923 = call float @dx.op.dot3.f32(i32 55, float %910, float %911, float %912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %924 = add i32 %31, 32
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 255
  %928 = uitofp i32 %927 to float
  %929 = lshr i32 %926, 8
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, %923
  %933 = fadd fast float %932, %928
  %934 = fmul fast float %933, 0x3F70101020000000
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = and i32 %154, 8192
  %937 = icmp eq i32 %936, 0
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  br i1 %937, label %946, label %940, !dx.controlflow.hints !78

; <label>:940                                     ; preds = %853
  %941 = add i32 %151, 176
  %942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = fcmp fast oge float %943, 0.000000e+00
  %945 = select i1 %944, float %943, float %939
  br label %946

; <label>:946                                     ; preds = %940, %853
  %947 = phi float [ %945, %940 ], [ %939, %853 ]
  %948 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %257, i32 %258, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = lshr i32 %949, 18
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F4C00EBA0000000
  %953 = call float @dx.op.unary.f32(i32 21, float %952)  ; Exp(value)
  %954 = fadd fast float %953, -1.000000e+00
  %955 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %956 = extractvalue %dx.types.Dimensions %955, 0
  %957 = sitofp i32 %956 to float
  %958 = extractvalue %dx.types.Dimensions %955, 1
  %959 = sitofp i32 %958 to float
  %960 = fcmp fast oge float %255, %957
  %961 = fcmp fast oge float %256, %959
  %962 = or i1 %960, %961
  %963 = select i1 %962, float 0x4197782600000000, float %954
  %964 = icmp eq i32 %150, 3
  %965 = fcmp fast ogt float %57, %963
  %966 = and i1 %281, %965
  %967 = or i1 %964, %966
  %968 = icmp eq i32 %150, 2
  %969 = fcmp fast ole float %57, %963
  %970 = and i1 %968, %969
  %971 = or i1 %970, %967
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 3
  %974 = fcmp fast ogt float %973, 0.000000e+00
  br i1 %974, label %975, label %982

; <label>:975                                     ; preds = %946
  %976 = fmul fast float %891, 0xBFDF454380000000
  %977 = fmul fast float %892, 0x3FDF454380000000
  %978 = fmul fast float %890, 0xBFDF454380000000
  %979 = call float @dx.op.dot4.f32(i32 56, float %868, float %867, float %866, float %865, float 0x3FD20DD760000000, float %976, float %977, float %978)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %980 = call float @dx.op.dot4.f32(i32 56, float %858, float %859, float %860, float %861, float 0x3FD20DD760000000, float %976, float %977, float %978)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %981 = call float @dx.op.dot4.f32(i32 56, float %854, float %855, float %856, float %857, float 0x3FD20DD760000000, float %976, float %977, float %978)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %982

; <label>:982                                     ; preds = %975, %946
  %983 = phi float [ %979, %975 ], [ %868, %946 ]
  %984 = phi float [ %980, %975 ], [ %867, %946 ]
  %985 = phi float [ %981, %975 ], [ %866, %946 ]
  %986 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %898, float %899, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  br i1 %974, label %988, label %1088

; <label>:988                                     ; preds = %982
  %989 = fsub fast float -0.000000e+00, %857
  %990 = fsub fast float %989, %861
  %991 = fsub fast float %990, %865
  %992 = fsub fast float -0.000000e+00, %855
  %993 = fsub fast float %992, %859
  %994 = fsub fast float %993, %867
  %995 = fadd fast float %860, %856
  %996 = fadd fast float %995, %866
  %997 = call float @dx.op.dot3.f32(i32 55, float %991, float %994, float %996, float %991, float %994, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call float @dx.op.unary.f32(i32 25, float %997)  ; Rsqrt(value)
  %999 = fmul fast float %998, %991
  %1000 = fmul fast float %998, %994
  %1001 = fmul fast float %998, %996
  %1002 = fmul fast float %1000, 0xBFD4D8D7C0000000
  %1003 = fmul fast float %1001, 0x3FD4D8D7C0000000
  %1004 = fmul fast float %999, 0xBFD4D8D7C0000000
  %1005 = call float @dx.op.dot4.f32(i32 56, float %868, float %867, float %866, float %865, float 0x3FD20DD760000000, float %1002, float %1003, float %1004)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1006 = call float @dx.op.dot4.f32(i32 56, float %858, float %859, float %860, float %861, float 0x3FD20DD760000000, float %1002, float %1003, float %1004)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1007 = call float @dx.op.dot4.f32(i32 56, float %854, float %855, float %856, float %857, float 0x3FD20DD760000000, float %1002, float %1003, float %1004)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1008 = fmul fast float %1005, 0x4003333340000000
  %1009 = fmul fast float %868, 0x3FE5AA35A0000000
  %1010 = fsub fast float %1008, %1009
  %1011 = fmul fast float %1006, 0x4003333340000000
  %1012 = fmul fast float %858, 0x3FE5AA35A0000000
  %1013 = fsub fast float %1011, %1012
  %1014 = fmul fast float %1007, 0x4003333340000000
  %1015 = fmul fast float %854, 0x3FE5AA35A0000000
  %1016 = fsub fast float %1014, %1015
  %1017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1010)  ; FMax(a,b)
  %1018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1013)  ; FMax(a,b)
  %1019 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1016)  ; FMax(a,b)
  %1020 = fsub fast float %999, %895
  %1021 = fsub fast float %1000, %896
  %1022 = fsub fast float %1001, %897
  %1023 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1021, float %1022, float %1020, float %1021, float %1022)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 25, float %1023)  ; Rsqrt(value)
  %1025 = fmul fast float %1024, %1020
  %1026 = fmul fast float %1024, %1021
  %1027 = fmul fast float %1024, %1022
  %1028 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %999, float %1000, float %1001)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = call float @dx.op.unary.f32(i32 6, float %1028)  ; FAbs(value)
  %1030 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float %1025, float %1026, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = fmul fast float %1030, %1030
  %1032 = call float @dx.op.dot3.f32(i32 55, float %898, float %899, float %900, float %1025, float %1026, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1034 = fsub fast float 1.000000e+00, %922
  %1035 = call float @dx.op.binary.f32(i32 35, float %1034, float 0x3F847AE140000000)  ; FMax(a,b)
  %1036 = fmul fast float %1035, %1035
  %1037 = fmul fast float %1036, %1036
  %1038 = fsub fast float 1.000000e+00, %1037
  %1039 = fmul fast float %987, %987
  %1040 = fmul fast float %1039, %1038
  %1041 = fadd fast float %1040, %1037
  %1042 = bitcast float %1041 to i32
  %1043 = ashr i32 %1042, 1
  %1044 = add nsw i32 %1043, 532487669
  %1045 = bitcast i32 %1044 to float
  %1046 = fadd fast float %1045, %987
  %1047 = fmul fast float %1037, %1031
  %1048 = fsub fast float 1.000000e+00, %1031
  %1049 = fadd fast float %1048, %1047
  %1050 = fmul fast float %1029, %1029
  %1051 = fmul fast float %1050, %1038
  %1052 = fadd fast float %1051, %1037
  %1053 = bitcast float %1052 to i32
  %1054 = ashr i32 %1053, 1
  %1055 = add nsw i32 %1054, 532487669
  %1056 = bitcast i32 %1055 to float
  %1057 = fadd fast float %1056, %1029
  %1058 = fmul fast float %1049, %1049
  %1059 = fmul fast float %1058, %1046
  %1060 = fmul fast float %1059, %1057
  %1061 = fdiv fast float 1.000000e+00, %1060
  %1062 = fmul fast float %1037, %1061
  %1063 = fsub fast float 1.000000e+00, %1033
  %1064 = bitcast float %1063 to i32
  %1065 = sitofp i32 %1064 to float
  %1066 = fmul fast float %1065, 5.000000e+00
  %1067 = fadd fast float %1066, 0xC1EFBF8940000000
  %1068 = fptosi float %1067 to i32
  %1069 = bitcast i32 %1068 to float
  %1070 = fsub fast float 1.000000e+00, %919
  %1071 = fsub fast float 1.000000e+00, %920
  %1072 = fsub fast float 1.000000e+00, %921
  %1073 = fmul fast float %1069, %1070
  %1074 = fmul fast float %1069, %1071
  %1075 = fmul fast float %1069, %1072
  %1076 = fadd fast float %1073, %919
  %1077 = fadd fast float %1074, %920
  %1078 = fadd fast float %1075, %921
  %1079 = fmul fast float %1062, %1017
  %1080 = fmul fast float %1079, %1076
  %1081 = fmul fast float %1062, %1018
  %1082 = fmul fast float %1081, %1077
  %1083 = fmul fast float %1062, %1019
  %1084 = fmul fast float %1083, %1078
  %1085 = call float @dx.op.binary.f32(i32 35, float %1080, float 0.000000e+00)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1082, float 0.000000e+00)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1084, float 0.000000e+00)  ; FMax(a,b)
  br label %1088

; <label>:1088                                    ; preds = %988, %982
  %1089 = phi float [ %1085, %988 ], [ 0.000000e+00, %982 ]
  %1090 = phi float [ %1086, %988 ], [ 0.000000e+00, %982 ]
  %1091 = phi float [ %1087, %988 ], [ 0.000000e+00, %982 ]
  %1092 = fmul fast float %987, 9.843750e-01
  %1093 = fmul fast float %922, 9.843750e-01
  %1094 = fadd fast float %1092, 7.812500e-03
  %1095 = fadd fast float %1093, 7.812500e-03
  %1096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1094, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 3
  %1099 = fmul fast float %1097, %919
  %1100 = fmul fast float %1097, %920
  %1101 = fmul fast float %1097, %921
  %1102 = fadd fast float %1099, %1098
  %1103 = fadd fast float %1100, %1098
  %1104 = fadd fast float %1101, %1098
  %1105 = call float @dx.op.binary.f32(i32 35, float %1103, float %1104)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 35, float %1102, float %1105)  ; FMax(a,b)
  %1107 = fsub fast float 1.000000e+00, %1106
  %1108 = call float @dx.op.dot3.f32(i32 55, float %895, float %896, float %897, float %890, float %891, float %892)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = fmul fast float %1108, 2.000000e+00
  %1110 = fmul fast float %1109, %890
  %1111 = fmul fast float %1109, %891
  %1112 = fmul fast float %1109, %892
  %1113 = fsub fast float %895, %1110
  %1114 = fsub fast float %896, %1111
  %1115 = fsub fast float %897, %1112
  br i1 %974, label %1116, label %1123

; <label>:1116                                    ; preds = %1088
  %1117 = fmul fast float %1114, 0xBFDF454380000000
  %1118 = fmul fast float %1115, 0x3FDF454380000000
  %1119 = fmul fast float %1113, 0xBFDF454380000000
  %1120 = call float @dx.op.dot4.f32(i32 56, float %868, float %867, float %866, float %865, float 0x3FD20DD760000000, float %1117, float %1118, float %1119)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1121 = call float @dx.op.dot4.f32(i32 56, float %858, float %859, float %860, float %861, float 0x3FD20DD760000000, float %1117, float %1118, float %1119)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1122 = call float @dx.op.dot4.f32(i32 56, float %854, float %855, float %856, float %857, float 0x3FD20DD760000000, float %1117, float %1118, float %1119)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1123

; <label>:1123                                    ; preds = %1116, %1088
  %1124 = phi float [ %1120, %1116 ], [ %868, %1088 ]
  %1125 = phi float [ %1121, %1116 ], [ %867, %1088 ]
  %1126 = phi float [ %1122, %1116 ], [ %866, %1088 ]
  %1127 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1125, float %1126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1131 = fmul fast float %1129, %64
  %1132 = fmul fast float %1130, %65
  %1133 = fptoui float %1131 to i32
  %1134 = fptoui float %1132 to i32
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1138 = extractvalue %dx.types.CBufRet.f32 %1135, 3
  %1139 = fadd fast float %57, -4.000000e+00
  %1140 = call float @dx.op.binary.f32(i32 35, float %1139, float 0.000000e+00)  ; FMax(a,b)
  %1141 = fadd fast float %1140, %1136
  %1142 = fmul fast float %1141, %1137
  %1143 = call float @dx.op.unary.f32(i32 23, float %1142)  ; Log(value)
  %1144 = fmul fast float %1143, %1138
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1147 = fmul fast float %1144, %1146
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.i32 %1149, 1
  %1151 = add i32 %1150, -1
  %1152 = uitofp i32 %1150 to float
  %1153 = fmul fast float %1152, %1148
  %1154 = fptoui float %1153 to i32
  %1155 = call i32 @dx.op.binary.i32(i32 40, i32 %1154, i32 %1151)  ; UMin(a,b)
  %1156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.i32 %1156, 2
  %1158 = extractvalue %dx.types.CBufRet.i32 %1156, 3
  %1159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1134, i32 %1157, i32 %1133)  ; UMad(a,b,c)
  %1160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1155, i32 %1158, i32 %1159)  ; UMad(a,b,c)
  %1161 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %1162 = fptoui float %1161 to i32
  %1163 = lshr i32 %1162, 5
  %1164 = call i32 @dx.op.binary.i32(i32 40, i32 %1163, i32 8191)  ; UMin(a,b)
  %1165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.i32 %1165, 2
  %1167 = add nsw i32 %1166, -1
  %1168 = call i32 @dx.op.binary.i32(i32 37, i32 %1167, i32 0)  ; IMax(a,b)
  %1169 = shl i32 %1164, 2
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = lshr i32 %1171, 16
  %1173 = and i32 %1171, 65535
  %1174 = lshr i32 %1171, 21
  %1175 = lshr i32 %1173, 5
  %1176 = call i32 @dx.op.binary.i32(i32 40, i32 %1175, i32 %1168)  ; UMin(a,b)
  %1177 = icmp ugt i32 %1174, %1176
  br i1 %1177, label %1540, label %1178

; <label>:1178                                    ; preds = %1123
  br label %1179

; <label>:1179                                    ; preds = %1532, %1178
  %1180 = phi float [ %1533, %1532 ], [ 0.000000e+00, %1178 ]
  %1181 = phi float [ %1534, %1532 ], [ 0.000000e+00, %1178 ]
  %1182 = phi float [ %1535, %1532 ], [ 0.000000e+00, %1178 ]
  %1183 = phi float [ %1536, %1532 ], [ 1.000000e+00, %1178 ]
  %1184 = phi i32 [ %1537, %1532 ], [ %1174, %1178 ]
  %1185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.i32 %1185, 2
  %1187 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1160, i32 %1186, i32 %1184)  ; UMad(a,b,c)
  %1188 = shl i32 %1187, 2
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = shl i32 %1184, 5
  %1192 = sub nsw i32 %1172, %1191
  %1193 = call i32 @dx.op.binary.i32(i32 37, i32 %1192, i32 0)  ; IMax(a,b)
  %1194 = call i32 @dx.op.binary.i32(i32 38, i32 %1193, i32 31)  ; IMin(a,b)
  %1195 = sub nsw i32 1, %1172
  %1196 = add nsw i32 %1195, %1173
  %1197 = call i32 @dx.op.binary.i32(i32 37, i32 %1196, i32 0)  ; IMax(a,b)
  %1198 = call i32 @dx.op.binary.i32(i32 38, i32 %1197, i32 32)  ; IMin(a,b)
  %1199 = and i32 %1198, 31
  %1200 = shl i32 -1, %1199
  %1201 = xor i32 %1200, -1
  %1202 = and i32 %1194, 31
  %1203 = shl i32 %1201, %1202
  %1204 = icmp eq i32 %1198, 32
  %1205 = select i1 %1204, i32 -1, i32 %1203
  %1206 = and i32 %1205, %1190
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1532, label %1208

; <label>:1208                                    ; preds = %1179
  br label %1209

; <label>:1209                                    ; preds = %1315, %1208
  %1210 = phi float [ %1316, %1315 ], [ %1180, %1208 ]
  %1211 = phi float [ %1317, %1315 ], [ %1181, %1208 ]
  %1212 = phi float [ %1318, %1315 ], [ %1182, %1208 ]
  %1213 = phi float [ %1319, %1315 ], [ %1183, %1208 ]
  %1214 = phi i32 [ %1219, %1315 ], [ %1206, %1208 ]
  %1215 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1214)  ; FirstbitLo(value)
  %1216 = add i32 %1215, %1191
  %1217 = and i32 %1215, 31
  %1218 = shl i32 1, %1217
  %1219 = xor i32 %1218, %1214
  %1220 = mul i32 %1216, 72
  %1221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = add i32 %1220, 12
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = add i32 %1220, 16
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = add i32 %1220, 28
  %1234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = add i32 %1220, 32
  %1237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = add i32 %1220, 48
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1246 = add i32 %1220, 56
  %1247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = add i32 %1220, 64
  %1251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = mul i32 %1216, 60
  %1255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = add i32 %1254, 12
  %1260 = add i32 %1254, 48
  %1261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1261, 2
  %1265 = and i32 %1227, 32767
  %1266 = bitcast float %1222 to i32
  %1267 = icmp eq i32 %1266, -1
  %1268 = bitcast float %1223 to i32
  %1269 = and i32 %1227, 32768
  %1270 = icmp ne i32 %1269, 0
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1275 = fsub fast float %1256, %1272
  %1276 = fsub fast float %1257, %1273
  %1277 = fsub fast float %1258, %1274
  %1278 = fsub fast float %99, %1275
  %1279 = fsub fast float %100, %1276
  %1280 = fsub fast float %101, %1277
  %1281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.ResRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.ResRet.f32 %1281, 2
  %1285 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float %1282, float %1283, float %1284)  ; Dot3(ax,ay,az,bx,by,bz)
  %1286 = add i32 %1254, 24
  %1287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.ResRet.f32 %1287, 2
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = add i32 %1254, 36
  %1293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float %1294, float %1295, float %1296)  ; Dot3(ax,ay,az,bx,by,bz)
  %1298 = call float @dx.op.unary.f32(i32 6, float %1285)  ; FAbs(value)
  %1299 = call float @dx.op.unary.f32(i32 6, float %1291)  ; FAbs(value)
  %1300 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1301 = fsub fast float %1262, %1298
  %1302 = fsub fast float %1263, %1299
  %1303 = fsub fast float %1264, %1300
  %1304 = fmul fast float %1301, %1230
  %1305 = fmul fast float %1302, %1231
  %1306 = fmul fast float %1303, %1232
  %1307 = call float @dx.op.binary.f32(i32 36, float %1305, float %1306)  ; FMin(a,b)
  %1308 = call float @dx.op.binary.f32(i32 36, float %1304, float %1307)  ; FMin(a,b)
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1213, float %1309)  ; FMin(a,b)
  %1311 = uitofp i1 %1270 to float
  %1312 = fsub fast float 1.000000e+00, %1311
  %1313 = fmul fast float %1310, %1312
  %1314 = fcmp fast ogt float %1313, 0.000000e+00
  br i1 %1314, label %1321, label %1315

; <label>:1315                                    ; preds = %1463, %1209
  %1316 = phi float [ %1527, %1463 ], [ %1210, %1209 ]
  %1317 = phi float [ %1528, %1463 ], [ %1211, %1209 ]
  %1318 = phi float [ %1529, %1463 ], [ %1212, %1209 ]
  %1319 = phi float [ %1530, %1463 ], [ %1213, %1209 ]
  %1320 = icmp eq i32 %1214, %1218
  br i1 %1320, label %1531, label %1209

; <label>:1321                                    ; preds = %1209
  br i1 %1267, label %1379, label %1322

; <label>:1322                                    ; preds = %1321
  %1323 = fsub fast float -0.000000e+00, %1282
  %1324 = fsub fast float -0.000000e+00, %1283
  %1325 = fsub fast float -0.000000e+00, %1284
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1113, float %1114, float %1115, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = fsub fast float -0.000000e+00, %1326
  %1328 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1329 = fadd fast float %1328, %1245
  %1330 = fadd fast float %1244, %1328
  %1331 = fsub fast float -0.000000e+00, %1330
  %1332 = fcmp ogt float %1326, -0.000000e+00
  %1333 = select i1 %1332, float %1331, float %1329
  %1334 = call float @dx.op.unary.f32(i32 6, float %1327)  ; FAbs(value)
  %1335 = fdiv fast float 1.000000e+00, %1334
  %1336 = fmul fast float %1333, %1335
  %1337 = call float @dx.op.binary.f32(i32 35, float %1336, float 0.000000e+00)  ; FMax(a,b)
  %1338 = fsub fast float -0.000000e+00, %1288
  %1339 = fsub fast float -0.000000e+00, %1289
  %1340 = fsub fast float -0.000000e+00, %1290
  %1341 = call float @dx.op.dot3.f32(i32 55, float %1113, float %1114, float %1115, float %1338, float %1339, float %1340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1342 = fsub fast float -0.000000e+00, %1341
  %1343 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float %1338, float %1339, float %1340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1344 = fadd fast float %1343, %1249
  %1345 = fadd fast float %1248, %1343
  %1346 = fsub fast float -0.000000e+00, %1345
  %1347 = fcmp ogt float %1341, -0.000000e+00
  %1348 = select i1 %1347, float %1346, float %1344
  %1349 = call float @dx.op.unary.f32(i32 6, float %1342)  ; FAbs(value)
  %1350 = fdiv fast float 1.000000e+00, %1349
  %1351 = fmul fast float %1348, %1350
  %1352 = call float @dx.op.binary.f32(i32 35, float %1351, float 0.000000e+00)  ; FMax(a,b)
  %1353 = fsub fast float -0.000000e+00, %1294
  %1354 = fsub fast float -0.000000e+00, %1295
  %1355 = fsub fast float -0.000000e+00, %1296
  %1356 = call float @dx.op.dot3.f32(i32 55, float %1113, float %1114, float %1115, float %1353, float %1354, float %1355)  ; Dot3(ax,ay,az,bx,by,bz)
  %1357 = fsub fast float -0.000000e+00, %1356
  %1358 = call float @dx.op.dot3.f32(i32 55, float %1278, float %1279, float %1280, float %1353, float %1354, float %1355)  ; Dot3(ax,ay,az,bx,by,bz)
  %1359 = fadd fast float %1358, %1253
  %1360 = fadd fast float %1252, %1358
  %1361 = fsub fast float -0.000000e+00, %1360
  %1362 = fcmp ogt float %1356, -0.000000e+00
  %1363 = select i1 %1362, float %1361, float %1359
  %1364 = call float @dx.op.unary.f32(i32 6, float %1357)  ; FAbs(value)
  %1365 = fdiv fast float 1.000000e+00, %1364
  %1366 = fmul fast float %1363, %1365
  %1367 = call float @dx.op.binary.f32(i32 35, float %1366, float 0.000000e+00)  ; FMax(a,b)
  %1368 = call float @dx.op.binary.f32(i32 36, float %1352, float %1367)  ; FMin(a,b)
  %1369 = call float @dx.op.binary.f32(i32 36, float %1337, float %1368)  ; FMin(a,b)
  %1370 = fmul fast float %1369, %1113
  %1371 = fmul fast float %1369, %1114
  %1372 = fmul fast float %1369, %1115
  %1373 = fadd fast float %1370, %99
  %1374 = fadd fast float %1371, %100
  %1375 = fadd fast float %1372, %101
  %1376 = fsub fast float %1373, %1222
  %1377 = fsub fast float %1374, %1223
  %1378 = fsub fast float %1375, %1224
  br label %1386

; <label>:1379                                    ; preds = %1321
  %1380 = fmul fast float %1113, 8.096000e+03
  %1381 = fmul fast float %1114, 8.096000e+03
  %1382 = fmul fast float %1115, 8.096000e+03
  %1383 = fadd fast float %1380, %99
  %1384 = fadd fast float %1381, %100
  %1385 = fadd fast float %1382, %101
  br label %1386

; <label>:1386                                    ; preds = %1379, %1322
  %1387 = phi float [ %1113, %1379 ], [ %1376, %1322 ]
  %1388 = phi float [ %1114, %1379 ], [ %1377, %1322 ]
  %1389 = phi float [ %1115, %1379 ], [ %1378, %1322 ]
  %1390 = phi float [ %1383, %1379 ], [ %1373, %1322 ]
  %1391 = phi float [ %1384, %1379 ], [ %1374, %1322 ]
  %1392 = phi float [ %1385, %1379 ], [ %1375, %1322 ]
  %1393 = fcmp fast olt float %1241, 1.000000e+00
  br i1 %1393, label %1394, label %1425, !dx.controlflow.hints !79

; <label>:1394                                    ; preds = %1386
  %1395 = fmul fast float %1389, %1239
  %1396 = fmul fast float %1388, %1240
  %1397 = fsub fast float %1395, %1396
  %1398 = fmul fast float %1387, %1240
  %1399 = fmul fast float %1389, %1238
  %1400 = fsub fast float %1398, %1399
  %1401 = fmul fast float %1388, %1238
  %1402 = fmul fast float %1387, %1239
  %1403 = fsub fast float %1401, %1402
  %1404 = fmul fast float %1397, 2.000000e+00
  %1405 = fmul fast float %1400, 2.000000e+00
  %1406 = fmul fast float %1403, 2.000000e+00
  %1407 = fmul fast float %1404, %1241
  %1408 = fmul fast float %1405, %1241
  %1409 = fmul fast float %1406, %1241
  %1410 = fmul fast float %1406, %1239
  %1411 = fmul fast float %1405, %1240
  %1412 = fmul fast float %1404, %1240
  %1413 = fmul fast float %1406, %1238
  %1414 = fmul fast float %1405, %1238
  %1415 = fmul fast float %1404, %1239
  %1416 = fadd fast float %1410, %1387
  %1417 = fadd fast float %1416, %1407
  %1418 = fsub fast float %1417, %1411
  %1419 = fsub fast float %1388, %1413
  %1420 = fadd fast float %1419, %1408
  %1421 = fadd fast float %1420, %1412
  %1422 = fadd fast float %1409, %1389
  %1423 = fsub fast float %1422, %1415
  %1424 = fadd fast float %1423, %1414
  br label %1425

; <label>:1425                                    ; preds = %1394, %1386
  %1426 = phi float [ %1418, %1394 ], [ %1387, %1386 ]
  %1427 = phi float [ %1421, %1394 ], [ %1388, %1386 ]
  %1428 = phi float [ %1424, %1394 ], [ %1389, %1386 ]
  br i1 %1267, label %1460, label %1429

; <label>:1429                                    ; preds = %1425
  %1430 = fmul fast float %922, 0x400187C840000000
  %1431 = fadd fast float %1430, 0xC00EFC2120000000
  %1432 = fmul fast float %1431, %922
  %1433 = fadd fast float %1432, 0x3FE5D16340000000
  %1434 = fmul fast float %1433, %922
  %1435 = fadd fast float %1434, 1.000000e+00
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1437 = fsub fast float %1390, %99
  %1438 = fsub fast float %1391, %100
  %1439 = fsub fast float %1392, %101
  %1440 = fsub fast float %1390, %1222
  %1441 = fsub fast float %1391, %1223
  %1442 = fsub fast float %1392, %1224
  %1443 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1438, float %1439, float %1437, float %1438, float %1439)  ; Dot3(ax,ay,az,bx,by,bz)
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1440, float %1441, float %1442, float %1440, float %1441, float %1442)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = fadd fast float %1444, 0x3EE4F8B580000000
  %1446 = fdiv fast float %1443, %1445
  %1447 = bitcast float %1446 to i32
  %1448 = ashr i32 %1447, 1
  %1449 = add nsw i32 %1448, 532487669
  %1450 = bitcast i32 %1449 to float
  %1451 = fmul fast float %1450, %1436
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1453 = fmul fast float %1452, 0x4009981AE0000000
  %1454 = fsub fast float 0x40111BBD80000000, %1453
  %1455 = fmul fast float %1454, %1452
  %1456 = fadd fast float %1455, 0xC0009F6020000000
  %1457 = fmul fast float %1456, %1452
  %1458 = fadd fast float %1457, 1.000000e+00
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  br label %1463

; <label>:1460                                    ; preds = %1425
  %1461 = icmp ne i32 %1268, -1
  %1462 = zext i1 %1461 to i32
  br label %1463

; <label>:1463                                    ; preds = %1460, %1429
  %1464 = phi float [ %922, %1460 ], [ %1459, %1429 ]
  %1465 = phi i32 [ %1462, %1460 ], [ 0, %1429 ]
  %1466 = fmul float %1464, 5.000000e+00
  %1467 = fsub float 5.000000e+00, %1466
  %1468 = icmp ne i32 %1465, 0
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 3
  %1471 = fadd fast float %1470, %1467
  %1472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1471)  ; FMax(a,b)
  %1473 = call float @dx.op.unary.f32(i32 6, float %1426)  ; FAbs(value)
  %1474 = call float @dx.op.unary.f32(i32 6, float %1427)  ; FAbs(value)
  %1475 = fadd fast float %1474, %1473
  %1476 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1477 = fadd fast float %1475, %1476
  %1478 = fcmp fast oeq float %1477, 0.000000e+00
  %1479 = fdiv fast float 1.000000e+00, %1477
  %1480 = select i1 %1478, float 1.000000e+00, float %1479
  %1481 = fmul fast float %1480, %1426
  %1482 = fmul fast float %1480, %1427
  %1483 = call float @dx.op.unary.f32(i32 6, float %1482)  ; FAbs(value)
  %1484 = call float @dx.op.unary.f32(i32 6, float %1481)  ; FAbs(value)
  %1485 = fsub fast float 1.000000e+00, %1483
  %1486 = fsub fast float 1.000000e+00, %1484
  %1487 = fcmp fast oge float %1481, 0.000000e+00
  %1488 = fcmp fast oge float %1482, 0.000000e+00
  %1489 = select i1 %1487, float 1.000000e+00, float -1.000000e+00
  %1490 = select i1 %1488, float 1.000000e+00, float -1.000000e+00
  %1491 = fcmp fast ole float %1428, 0.000000e+00
  %1492 = fmul fast float %1489, %1485
  %1493 = fmul fast float %1490, %1486
  %1494 = select i1 %1491, float %1492, float %1481
  %1495 = select i1 %1491, float %1493, float %1482
  %1496 = fmul fast float %1494, 5.000000e-01
  %1497 = fmul fast float %1495, 5.000000e-01
  %1498 = fadd fast float %1496, 5.000000e-01
  %1499 = fadd fast float %1497, 5.000000e-01
  %1500 = uitofp i32 %1265 to float
  %1501 = call float @dx.op.binary.f32(i32 36, float %1472, float 3.000000e+00)  ; FMin(a,b)
  %1502 = fadd fast float %1501, 2.000000e+00
  %1503 = call float @dx.op.unary.f32(i32 21, float %1502)  ; Exp(value)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1469, 1
  %1505 = fmul fast float %1504, %1503
  %1506 = fmul fast float %1505, 2.000000e+00
  %1507 = fsub fast float 1.000000e+00, %1506
  %1508 = fmul fast float %1498, %1507
  %1509 = fmul fast float %1499, %1507
  %1510 = fadd fast float %1508, %1505
  %1511 = fadd fast float %1509, %1505
  %1512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1510, float %1511, float %1500, float undef, i32 0, i32 0, i32 undef, float %1472)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 3
  %1518 = fmul fast float %1517, %1235
  %1519 = call float @dx.op.binary.f32(i32 36, float %1127, float %1518)  ; FMin(a,b)
  %1520 = select i1 %1468, float %1519, float %1518
  %1521 = fmul fast float %1513, %1313
  %1522 = fmul fast float %1521, %1520
  %1523 = fmul fast float %1514, %1313
  %1524 = fmul fast float %1523, %1520
  %1525 = fmul fast float %1515, %1313
  %1526 = fmul fast float %1525, %1520
  %1527 = fadd fast float %1522, %1210
  %1528 = fadd fast float %1524, %1211
  %1529 = fadd fast float %1526, %1212
  %1530 = fsub fast float %1213, %1313
  br label %1315

; <label>:1531                                    ; preds = %1315
  br label %1532

; <label>:1532                                    ; preds = %1531, %1179
  %1533 = phi float [ %1180, %1179 ], [ %1316, %1531 ]
  %1534 = phi float [ %1181, %1179 ], [ %1317, %1531 ]
  %1535 = phi float [ %1182, %1179 ], [ %1318, %1531 ]
  %1536 = phi float [ %1183, %1179 ], [ %1319, %1531 ]
  %1537 = add i32 %1184, 1
  %1538 = icmp ugt i32 %1537, %1176
  br i1 %1538, label %1539, label %1179, !llvm.loop !80

; <label>:1539                                    ; preds = %1532
  br label %1540

; <label>:1540                                    ; preds = %1539, %1123
  %1541 = phi float [ 0.000000e+00, %1123 ], [ %1533, %1539 ]
  %1542 = phi float [ 0.000000e+00, %1123 ], [ %1534, %1539 ]
  %1543 = phi float [ 0.000000e+00, %1123 ], [ %1535, %1539 ]
  %1544 = call float @dx.op.dot3.f32(i32 55, float %1541, float %1542, float %1543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1545 = select i1 %134, float 0.000000e+00, float %1541
  %1546 = select i1 %134, float %1544, float %1542
  %1547 = select i1 %134, float 0.000000e+00, float %1543
  %1548 = fmul fast float %1545, %1102
  %1549 = fmul fast float %1546, %1103
  %1550 = fmul fast float %1547, %1104
  %1551 = call float @dx.op.binary.f32(i32 35, float %1548, float 0.000000e+00)  ; FMax(a,b)
  %1552 = call float @dx.op.binary.f32(i32 35, float %1549, float 0.000000e+00)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1550, float 0.000000e+00)  ; FMax(a,b)
  %1554 = fadd fast float %1551, %1089
  %1555 = fadd fast float %1552, %1090
  %1556 = fadd fast float %1553, %1091
  %1557 = fmul fast float %1554, %626
  %1558 = fmul fast float %1555, %626
  %1559 = fmul fast float %1556, %626
  %1560 = fsub fast float 1.000000e+00, %626
  %1561 = call float @dx.op.dot3.f32(i32 55, float %1560, float %1560, float %1560, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1562 = fsub fast float 1.000000e+00, %1561
  %1563 = fmul fast float %947, %935
  %1564 = fsub fast float 1.000000e+00, %935
  %1565 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 3
  %1568 = fmul fast float %1567, %1565
  %1569 = fadd fast float %1568, %1563
  %1570 = and i32 %154, 1048576
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1656, label %1572, !dx.controlflow.hints !82

; <label>:1572                                    ; preds = %1540
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 2
  %1575 = extractvalue %dx.types.CBufRet.f32 %1573, 3
  %1576 = fmul fast float %1574, %64
  %1577 = fmul fast float %1575, %65
  %1578 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1579 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1580 = select i1 %971, i32 2, i32 0
  %1581 = or i32 %1580, 1
  %1582 = uitofp i32 %1581 to float
  %1583 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1578, float %1579, float %1582, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = extractvalue %dx.types.ResRet.f32 %1583, 3
  %1588 = add nuw nsw i32 %1580, 2
  %1589 = uitofp i32 %1588 to float
  %1590 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1578, float %1579, float %1589, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = extractvalue %dx.types.ResRet.f32 %1590, 3
  %1595 = call float @dx.op.binary.f32(i32 35, float %1585, float %1586)  ; FMax(a,b)
  %1596 = call float @dx.op.binary.f32(i32 35, float %1584, float %1595)  ; FMax(a,b)
  %1597 = call float @dx.op.binary.f32(i32 35, float %1596, float %1587)  ; FMax(a,b)
  %1598 = call float @dx.op.binary.f32(i32 36, float %1592, float %1593)  ; FMin(a,b)
  %1599 = call float @dx.op.binary.f32(i32 36, float %1591, float %1598)  ; FMin(a,b)
  %1600 = call float @dx.op.binary.f32(i32 36, float %1599, float %1594)  ; FMin(a,b)
  %1601 = fmul fast float %1597, 2.550000e+02
  %1602 = fadd fast float %1601, 0x3F70101020000000
  %1603 = fptoui float %1602 to i32
  %1604 = fmul fast float %1600, 2.550000e+02
  %1605 = fadd fast float %1604, 0x3F70101020000000
  %1606 = fptoui float %1605 to i32
  %1607 = icmp ult i32 %1603, %1606
  br i1 %1607, label %1608, label %1649

; <label>:1608                                    ; preds = %1572
  %1609 = fcmp fast ogt float %56, 9.843750e-01
  %1610 = select i1 %1609, float -4.000000e+00, float %1139
  %1611 = call float @dx.op.binary.f32(i32 35, float %1610, float 0.000000e+00)  ; FMax(a,b)
  %1612 = fadd fast float %1136, %1611
  %1613 = fmul fast float %1612, %1137
  %1614 = call float @dx.op.unary.f32(i32 23, float %1613)  ; Log(value)
  %1615 = fmul fast float %1138, %1614
  %1616 = fmul fast float %1615, %1146
  %1617 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1618 = uitofp i32 %1603 to float
  %1619 = uitofp i32 %1606 to float
  %1620 = fadd fast float %1618, 5.000000e-01
  %1621 = fadd fast float %1619, 5.000000e-01
  %1622 = fmul fast float %1146, %1620
  %1623 = fmul fast float %1146, %1621
  %1624 = fadd fast float %1622, 0x3F0FFB4800000000
  %1625 = fadd fast float %1623, 0xBF0FFB4800000000
  %1626 = call float @dx.op.binary.f32(i32 35, float %1617, float %1624)  ; FMax(a,b)
  %1627 = call float @dx.op.binary.f32(i32 36, float %1626, float %1625)  ; FMin(a,b)
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1628, 2
  %1631 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1632 = select i1 %971, float %1631, float 0.000000e+00
  %1633 = fmul fast float %1629, %1627
  %1634 = fadd fast float %1632, %1633
  %1635 = fadd fast float %1632, %1630
  %1636 = fsub fast float %1629, %1630
  %1637 = fadd fast float %1636, %1632
  %1638 = call float @dx.op.binary.f32(i32 35, float %1634, float %1635)  ; FMax(a,b)
  %1639 = call float @dx.op.binary.f32(i32 36, float %1638, float %1637)  ; FMin(a,b)
  %1640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1578, float %1579, float %1639, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1641 = extractvalue %dx.types.ResRet.f32 %1640, 0
  %1642 = extractvalue %dx.types.ResRet.f32 %1640, 1
  %1643 = extractvalue %dx.types.ResRet.f32 %1640, 2
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1646 = fmul fast float %1645, %1641
  %1647 = fmul fast float %1645, %1642
  %1648 = fmul fast float %1645, %1643
  br label %1649

; <label>:1649                                    ; preds = %1608, %1572
  %1650 = phi float [ %1646, %1608 ], [ 1.000000e+00, %1572 ]
  %1651 = phi float [ %1647, %1608 ], [ 1.000000e+00, %1572 ]
  %1652 = phi float [ %1648, %1608 ], [ 1.000000e+00, %1572 ]
  %1653 = fmul fast float %1650, %1557
  %1654 = fmul fast float %1651, %1558
  %1655 = fmul fast float %1652, %1559
  br label %1656

; <label>:1656                                    ; preds = %1649, %1540
  %1657 = phi float [ %1653, %1649 ], [ %1557, %1540 ]
  %1658 = phi float [ %1654, %1649 ], [ %1558, %1540 ]
  %1659 = phi float [ %1655, %1649 ], [ %1559, %1540 ]
  %1660 = and i32 %154, 2097152
  %1661 = icmp eq i32 %1660, 0
  br i1 %1661, label %1666, label %1662, !dx.controlflow.hints !83

; <label>:1662                                    ; preds = %1656
  %1663 = add i32 %151, 192
  %1664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  br label %1669

; <label>:1666                                    ; preds = %1656
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 3
  br label %1669

; <label>:1669                                    ; preds = %1666, %1662
  %1670 = phi float [ %1665, %1662 ], [ %1668, %1666 ]
  %1671 = fmul fast float %910, %626
  %1672 = fmul fast float %1671, %983
  %1673 = fmul fast float %1672, %1107
  %1674 = fmul fast float %911, %626
  %1675 = fmul fast float %1674, %984
  %1676 = fmul fast float %1675, %1107
  %1677 = fmul fast float %912, %626
  %1678 = fmul fast float %1677, %985
  %1679 = fmul fast float %1678, %1107
  br i1 %966, label %1680, label %1813

; <label>:1680                                    ; preds = %1669
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 2
  %1683 = extractvalue %dx.types.CBufRet.f32 %1681, 3
  %1684 = fmul fast float %1682, %64
  %1685 = fmul fast float %1683, %65
  %1686 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1688 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1686, float %1687, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.ResRet.f32 %1688, 1
  %1691 = extractvalue %dx.types.ResRet.f32 %1688, 2
  %1692 = extractvalue %dx.types.ResRet.f32 %1688, 3
  %1693 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1686, float %1687, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.ResRet.f32 %1693, 2
  %1697 = extractvalue %dx.types.ResRet.f32 %1693, 3
  %1698 = call float @dx.op.binary.f32(i32 35, float %1690, float %1691)  ; FMax(a,b)
  %1699 = call float @dx.op.binary.f32(i32 35, float %1689, float %1698)  ; FMax(a,b)
  %1700 = call float @dx.op.binary.f32(i32 35, float %1699, float %1692)  ; FMax(a,b)
  %1701 = call float @dx.op.binary.f32(i32 36, float %1695, float %1696)  ; FMin(a,b)
  %1702 = call float @dx.op.binary.f32(i32 36, float %1694, float %1701)  ; FMin(a,b)
  %1703 = call float @dx.op.binary.f32(i32 36, float %1702, float %1697)  ; FMin(a,b)
  %1704 = fmul fast float %1700, 2.550000e+02
  %1705 = fadd fast float %1704, 0x3F70101020000000
  %1706 = fptoui float %1705 to i32
  %1707 = fmul fast float %1703, 2.550000e+02
  %1708 = fadd fast float %1707, 0x3F70101020000000
  %1709 = fptoui float %1708 to i32
  %1710 = icmp ult i32 %1706, %1709
  br i1 %1710, label %1711, label %1755

; <label>:1711                                    ; preds = %1680
  %1712 = fcmp fast ogt float %56, 9.843750e-01
  %1713 = select i1 %1712, float -4.000000e+00, float %1139
  %1714 = call float @dx.op.binary.f32(i32 35, float %1713, float 0.000000e+00)  ; FMax(a,b)
  %1715 = fadd fast float %1136, %1714
  %1716 = fmul fast float %1715, %1137
  %1717 = call float @dx.op.unary.f32(i32 23, float %1716)  ; Log(value)
  %1718 = fmul fast float %1138, %1717
  %1719 = fmul fast float %1718, %1146
  %1720 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1721 = uitofp i32 %1706 to float
  %1722 = uitofp i32 %1709 to float
  %1723 = fadd fast float %1721, 5.000000e-01
  %1724 = fadd fast float %1722, 5.000000e-01
  %1725 = fmul fast float %1146, %1723
  %1726 = fmul fast float %1146, %1724
  %1727 = fadd fast float %1725, 0x3F0FFB4800000000
  %1728 = fadd fast float %1726, 0xBF0FFB4800000000
  %1729 = call float @dx.op.binary.f32(i32 35, float %1720, float %1727)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 36, float %1729, float %1728)  ; FMin(a,b)
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 1
  %1733 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1734 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1735 = fmul fast float %1732, %1730
  %1736 = fadd fast float %1734, %1735
  %1737 = fadd fast float %1734, %1733
  %1738 = fsub fast float %1732, %1733
  %1739 = fadd fast float %1738, %1734
  %1740 = call float @dx.op.binary.f32(i32 35, float %1736, float %1737)  ; FMax(a,b)
  %1741 = call float @dx.op.binary.f32(i32 36, float %1740, float %1739)  ; FMin(a,b)
  %1742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1686, float %1687, float %1741, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.ResRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.ResRet.f32 %1742, 2
  %1746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1686, float %1687, float %1741, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 1
  %1752 = fmul fast float %1751, %1747
  %1753 = fmul fast float %1751, %1748
  %1754 = fmul fast float %1751, %1749
  br label %1755

; <label>:1755                                    ; preds = %1711, %1680
  %1756 = phi float [ %1743, %1711 ], [ 1.000000e+00, %1680 ]
  %1757 = phi float [ %1744, %1711 ], [ 1.000000e+00, %1680 ]
  %1758 = phi float [ %1745, %1711 ], [ 1.000000e+00, %1680 ]
  %1759 = phi float [ %1752, %1711 ], [ 0.000000e+00, %1680 ]
  %1760 = phi float [ %1753, %1711 ], [ 0.000000e+00, %1680 ]
  %1761 = phi float [ %1754, %1711 ], [ 0.000000e+00, %1680 ]
  %1762 = fmul fast float %1759, %1562
  %1763 = fmul fast float %1760, %1562
  %1764 = fmul fast float %1761, %1562
  %1765 = call float @dx.op.dot3.f32(i32 55, float %1756, float %1757, float %1758, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1766 = call float @dx.op.dot3.f32(i32 55, float %1762, float %1763, float %1764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = select i1 %134, float %1765, float %1756
  %1768 = select i1 %134, float %1765, float %1757
  %1769 = select i1 %134, float 1.000000e+00, float %1758
  %1770 = select i1 %134, float %1766, float %1762
  %1771 = select i1 %134, float 0.000000e+00, float %1763
  %1772 = select i1 %134, float 0.000000e+00, float %1764
  %1773 = fmul fast float %1767, %1673
  %1774 = fmul fast float %1768, %1676
  %1775 = fmul fast float %1769, %1679
  %1776 = fadd fast float %1773, %1770
  %1777 = fadd fast float %1774, %1771
  %1778 = fadd fast float %1772, %1775
  %1779 = fmul fast float %1767, %1657
  %1780 = fmul fast float %1768, %1658
  %1781 = fmul fast float %1769, %1659
  %1782 = fmul fast float %69, %1682
  %1783 = fmul fast float %71, %1683
  %1784 = fsub fast float 1.000000e+00, %1782
  %1785 = fsub fast float 1.000000e+00, %1783
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1789 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1790 = fmul fast float %1784, %1787
  %1791 = fmul fast float %1784, %1788
  %1792 = fmul fast float %1784, %1789
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1796 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1797 = fmul fast float %1785, %1794
  %1798 = fmul fast float %1785, %1795
  %1799 = fmul fast float %1785, %1796
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1800, 2
  %1804 = fadd fast float %1797, %1801
  %1805 = fadd fast float %1804, %1790
  %1806 = fadd fast float %1798, %1802
  %1807 = fadd fast float %1806, %1791
  %1808 = fadd fast float %1799, %1803
  %1809 = fadd fast float %1808, %1792
  %1810 = fmul fast float %1805, %963
  %1811 = fmul fast float %1807, %963
  %1812 = fmul fast float %1809, %963
  br label %1813

; <label>:1813                                    ; preds = %1755, %1669
  %1814 = phi float [ %1810, %1755 ], [ %99, %1669 ]
  %1815 = phi float [ %1811, %1755 ], [ %100, %1669 ]
  %1816 = phi float [ %1812, %1755 ], [ %101, %1669 ]
  %1817 = phi float [ %963, %1755 ], [ %57, %1669 ]
  %1818 = phi float [ %1776, %1755 ], [ %1673, %1669 ]
  %1819 = phi float [ %1777, %1755 ], [ %1676, %1669 ]
  %1820 = phi float [ %1778, %1755 ], [ %1679, %1669 ]
  %1821 = phi float [ %1779, %1755 ], [ %1657, %1669 ]
  %1822 = phi float [ %1780, %1755 ], [ %1658, %1669 ]
  %1823 = phi float [ %1781, %1755 ], [ %1659, %1669 ]
  %1824 = phi float [ %1756, %1755 ], [ 1.000000e+00, %1669 ]
  br i1 %971, label %2880, label %1825

; <label>:1825                                    ; preds = %1813
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1829 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1830 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 0
  %1838 = extractvalue %dx.types.CBufRet.f32 %1836, 1
  %1839 = extractvalue %dx.types.CBufRet.f32 %1836, 2
  %1840 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1845 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 3
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1850 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1848, 1
  %1852 = extractvalue %dx.types.CBufRet.f32 %1848, 2
  %1853 = fcmp fast olt float %1852, -5.000000e-01
  %1854 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1815, float %1816, float %1814, float %1815, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1855 = call float @dx.op.unary.f32(i32 25, float %1854)  ; Rsqrt(value)
  %1856 = fmul fast float %1855, %1854
  %1857 = fmul fast float %1855, %1814
  %1858 = fmul fast float %1855, %1815
  %1859 = fmul fast float %1855, %1816
  %1860 = fadd fast float %1856, %1830
  %1861 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1858, float %1859, float %1827, float %1828, float %1829)  ; Dot3(ax,ay,az,bx,by,bz)
  %1862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.i32 %1862, 1
  %1864 = and i32 %1863, 1
  %1865 = icmp ne i32 %1864, 0
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 2
  %1868 = fcmp fast ogt float %1867, 0.000000e+00
  %1869 = and i1 %1865, %1868
  br i1 %1869, label %1870, label %2276, !dx.controlflow.hints !84

; <label>:1870                                    ; preds = %1825
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 3
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1877 = fsub fast float %1874, %1876
  %1878 = and i32 %1863, 2
  %1879 = extractvalue %dx.types.CBufRet.i32 %1862, 0
  %1880 = call i32 @dx.op.binary.i32(i32 40, i32 %1879, i32 3)  ; UMin(a,b)
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1885 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1886 = fsub fast float %1882, %1884
  %1887 = fsub fast float %1883, %1885
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = fcmp fast ogt float %1889, 0.000000e+00
  %1891 = fsub fast float -0.000000e+00, %1886
  %1892 = fsub fast float -0.000000e+00, %1887
  %1893 = call float @dx.op.dot2.f32(i32 54, float %1857, float %1858, float %1857, float %1858)  ; Dot2(ax,ay,bx,by)
  %1894 = call float @dx.op.dot2.f32(i32 54, float %1857, float %1858, float %1891, float %1892)  ; Dot2(ax,ay,bx,by)
  %1895 = fmul fast float %1894, 2.000000e+00
  %1896 = call float @dx.op.dot2.f32(i32 54, float %1891, float %1892, float %1891, float %1892)  ; Dot2(ax,ay,bx,by)
  %1897 = fmul fast float %1889, %1889
  %1898 = fsub fast float %1896, %1897
  %1899 = fmul fast float %1895, %1895
  %1900 = fmul fast float %1893, 4.000000e+00
  %1901 = fmul fast float %1900, %1898
  %1902 = fsub fast float %1899, %1901
  %1903 = fcmp fast ogt float %1902, 0.000000e+00
  br i1 %1903, label %1904, label %1919

; <label>:1904                                    ; preds = %1870
  %1905 = fcmp fast ogt float %1895, 0.000000e+00
  %1906 = call float @dx.op.unary.f32(i32 24, float %1902)  ; Sqrt(value)
  %1907 = fsub fast float -0.000000e+00, %1906
  %1908 = select i1 %1905, float %1906, float %1907
  %1909 = fadd fast float %1908, %1895
  %1910 = fmul float %1909, -5.000000e-01
  %1911 = fdiv fast float %1910, %1893
  %1912 = call float @dx.op.binary.f32(i32 35, float %1911, float 0.000000e+00)  ; FMax(a,b)
  %1913 = call float @dx.op.binary.f32(i32 36, float %1856, float %1912)  ; FMin(a,b)
  %1914 = fdiv fast float %1898, %1910
  %1915 = call float @dx.op.binary.f32(i32 35, float %1914, float 0.000000e+00)  ; FMax(a,b)
  %1916 = call float @dx.op.binary.f32(i32 36, float %1856, float %1915)  ; FMin(a,b)
  %1917 = call float @dx.op.binary.f32(i32 36, float %1913, float %1916)  ; FMin(a,b)
  %1918 = call float @dx.op.binary.f32(i32 35, float %1913, float %1916)  ; FMax(a,b)
  br label %1919

; <label>:1919                                    ; preds = %1904, %1870
  %1920 = phi float [ %1918, %1904 ], [ -1.000000e+00, %1870 ]
  %1921 = phi float [ %1917, %1904 ], [ -1.000000e+00, %1870 ]
  %1922 = phi i1 [ true, %1904 ], [ false, %1870 ]
  %1923 = and i1 %1890, %1922
  br i1 %1923, label %1924, label %1926

; <label>:1924                                    ; preds = %1919
  %1925 = fcmp fast oeq float %1921, %1920
  br i1 %1925, label %2229, label %1927

; <label>:1926                                    ; preds = %1919
  br i1 %1890, label %2229, label %1927

; <label>:1927                                    ; preds = %1926, %1924
  %1928 = phi float [ %1856, %1926 ], [ %1920, %1924 ]
  %1929 = phi float [ 0.000000e+00, %1926 ], [ %1921, %1924 ]
  %1930 = icmp ne i32 %1878, 0
  %1931 = fmul fast float %1928, %1859
  %1932 = fadd fast float %1931, %1872
  %1933 = fmul fast float %1932, %1928
  %1934 = select i1 %1930, float 0.000000e+00, float %1933
  %1935 = fcmp fast oeq float %1859, 0.000000e+00
  %1936 = fdiv fast float %1877, %1859
  %1937 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1936)  ; FMax(a,b)
  %1938 = select i1 %1935, float %1928, float %1937
  %1939 = call float @dx.op.binary.f32(i32 36, float %1928, float %1938)  ; FMin(a,b)
  %1940 = fcmp fast ogt float %1859, 0.000000e+00
  %1941 = fcmp fast olt float %1877, 0.000000e+00
  br i1 %1940, label %1942, label %1999

; <label>:1942                                    ; preds = %1927
  %1943 = icmp eq i32 %1878, 0
  br i1 %1941, label %1944, label %1988

; <label>:1944                                    ; preds = %1942
  %1945 = select i1 %1943, float %1928, float 0.000000e+00
  %1946 = fsub fast float -0.000000e+00, %1945
  %1947 = call float @dx.op.unary.f32(i32 6, float %1946)  ; FAbs(value)
  %1948 = fmul fast float %1945, %1859
  %1949 = fadd fast float %1948, %1872
  %1950 = fmul fast float %1947, %1949
  %1951 = fsub fast float %1934, %1950
  %1952 = fsub fast float %1928, %1947
  %1953 = select i1 %1943, float %1952, float 0.000000e+00
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.CBufRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.CBufRet.f32 %1954, 2
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 0
  %1960 = extractvalue %dx.types.CBufRet.f32 %1958, 1
  %1961 = extractvalue %dx.types.CBufRet.f32 %1958, 2
  %1962 = extractvalue %dx.types.CBufRet.f32 %1958, 3
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 3
  %1965 = call float @dx.op.binary.f32(i32 36, float %1951, float %1964)  ; FMin(a,b)
  %1966 = fmul fast float %1962, %1953
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = fsub fast float %1959, %1955
  %1969 = fsub fast float %1960, %1956
  %1970 = fsub fast float %1961, %1957
  %1971 = fmul fast float %1967, %1968
  %1972 = fmul fast float %1967, %1969
  %1973 = fmul fast float %1967, %1970
  %1974 = fadd fast float %1971, %1955
  %1975 = fadd fast float %1972, %1956
  %1976 = fadd fast float %1973, %1957
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.CBufRet.f32 %1977, 1
  %1980 = fadd fast float %1979, %1978
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1977, 2
  %1983 = extractvalue %dx.types.CBufRet.f32 %1977, 3
  %1984 = fadd fast float %1983, %1982
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = fmul fast float %1981, %1965
  %1987 = fmul fast float %1986, %1985
  br label %2229

; <label>:1988                                    ; preds = %1942
  br i1 %1943, label %1989, label %2010

; <label>:1989                                    ; preds = %1988
  %1990 = call float @dx.op.binary.f32(i32 36, float %1939, float %1929)  ; FMin(a,b)
  %1991 = fsub fast float %1939, %1990
  %1992 = fsub fast float %1991, %1928
  %1993 = call float @dx.op.unary.f32(i32 6, float %1992)  ; FAbs(value)
  %1994 = fadd fast float %1991, %1928
  %1995 = fmul fast float %1994, %1859
  %1996 = fadd fast float %1995, %1872
  %1997 = fmul fast float %1996, %1993
  %1998 = fsub fast float %1934, %1997
  br label %2010

; <label>:1999                                    ; preds = %1927
  br i1 %1941, label %2000, label %2010

; <label>:2000                                    ; preds = %1999
  %2001 = call float @dx.op.binary.f32(i32 35, float %1929, float %1939)  ; FMax(a,b)
  %2002 = icmp eq i32 %1878, 0
  %2003 = select i1 %2002, float %1939, float 0.000000e+00
  %2004 = fsub fast float -0.000000e+00, %2003
  %2005 = call float @dx.op.unary.f32(i32 6, float %2004)  ; FAbs(value)
  %2006 = fmul fast float %2003, %1859
  %2007 = fadd fast float %2006, %1872
  %2008 = fmul fast float %2005, %2007
  %2009 = fsub fast float %1934, %2008
  br label %2010

; <label>:2010                                    ; preds = %2000, %1999, %1989, %1988
  %2011 = phi float [ %1929, %1988 ], [ %1929, %1989 ], [ %2001, %2000 ], [ %1929, %1999 ]
  %2012 = phi float [ 0.000000e+00, %1988 ], [ %1993, %1989 ], [ %2005, %2000 ], [ 0.000000e+00, %1999 ]
  %2013 = phi float [ %1934, %1988 ], [ %1998, %1989 ], [ %2009, %2000 ], [ %1934, %1999 ]
  %2014 = phi float [ %1939, %1988 ], [ %1939, %1989 ], [ %1928, %2000 ], [ %1928, %1999 ]
  %2015 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 0
  store float -1.000000e+00, float* %2015, align 4, !tbaa !85, !noalias !89
  %2016 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 1
  store float -1.000000e+00, float* %2016, align 4, !tbaa !85, !noalias !89
  %2017 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 2
  store float -1.000000e+00, float* %2017, align 4, !tbaa !85, !noalias !89
  %2018 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 0
  store float -1.000000e+00, float* %2018, align 4, !tbaa !85, !noalias !89
  %2019 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 1
  store float -1.000000e+00, float* %2019, align 4, !tbaa !85, !noalias !89
  %2020 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 2
  store float -1.000000e+00, float* %2020, align 4, !tbaa !85, !noalias !89
  %2021 = icmp sgt i32 %1880, 0
  br i1 %2021, label %2022, label %2083

; <label>:2022                                    ; preds = %2010
  br label %2023

; <label>:2023                                    ; preds = %2072, %2022
  %2024 = phi i32 [ %2073, %2072 ], [ 0, %2022 ]
  %2025 = phi i32 [ %2074, %2072 ], [ 0, %2022 ]
  %2026 = add nuw i32 %2025, 171
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2026)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.CBufRet.f32 %2027, 1
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.CBufRet.f32 %2030, 1
  %2033 = fsub fast float %2028, %2031
  %2034 = fsub fast float %2029, %2032
  %2035 = extractvalue %dx.types.CBufRet.f32 %2027, 2
  %2036 = fsub fast float -0.000000e+00, %2033
  %2037 = fsub fast float -0.000000e+00, %2034
  %2038 = call float @dx.op.dot2.f32(i32 54, float %1857, float %1858, float %2036, float %2037)  ; Dot2(ax,ay,bx,by)
  %2039 = fmul fast float %2038, 2.000000e+00
  %2040 = call float @dx.op.dot2.f32(i32 54, float %2036, float %2037, float %2036, float %2037)  ; Dot2(ax,ay,bx,by)
  %2041 = fmul fast float %2035, %2035
  %2042 = fsub fast float %2040, %2041
  %2043 = fmul fast float %2039, %2039
  %2044 = fmul fast float %1900, %2042
  %2045 = fsub fast float %2043, %2044
  %2046 = fcmp fast ogt float %2045, 0.000000e+00
  br i1 %2046, label %2047, label %2062

; <label>:2047                                    ; preds = %2023
  %2048 = fcmp fast ogt float %2039, 0.000000e+00
  %2049 = call float @dx.op.unary.f32(i32 24, float %2045)  ; Sqrt(value)
  %2050 = fsub fast float -0.000000e+00, %2049
  %2051 = select i1 %2048, float %2049, float %2050
  %2052 = fadd fast float %2051, %2039
  %2053 = fmul float %2052, -5.000000e-01
  %2054 = fdiv fast float %2053, %1893
  %2055 = call float @dx.op.binary.f32(i32 35, float %2054, float 0.000000e+00)  ; FMax(a,b)
  %2056 = call float @dx.op.binary.f32(i32 36, float %1928, float %2055)  ; FMin(a,b)
  %2057 = fdiv fast float %2042, %2053
  %2058 = call float @dx.op.binary.f32(i32 35, float %2057, float 0.000000e+00)  ; FMax(a,b)
  %2059 = call float @dx.op.binary.f32(i32 36, float %1928, float %2058)  ; FMin(a,b)
  %2060 = call float @dx.op.binary.f32(i32 36, float %2056, float %2059)  ; FMin(a,b)
  %2061 = call float @dx.op.binary.f32(i32 35, float %2056, float %2059)  ; FMax(a,b)
  br label %2062

; <label>:2062                                    ; preds = %2047, %2023
  %2063 = phi float [ %2061, %2047 ], [ -1.000000e+00, %2023 ]
  %2064 = phi float [ %2060, %2047 ], [ -1.000000e+00, %2023 ]
  %2065 = phi i1 [ true, %2047 ], [ false, %2023 ]
  br i1 %2065, label %2066, label %2072

; <label>:2066                                    ; preds = %2062
  %2067 = call float @dx.op.binary.f32(i32 35, float %2011, float %2064)  ; FMax(a,b)
  %2068 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %2025
  store float %2067, float* %2068, align 4, !tbaa !85, !noalias !89
  %2069 = call float @dx.op.binary.f32(i32 35, float %2011, float %2063)  ; FMax(a,b)
  %2070 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %2025
  store float %2069, float* %2070, align 4, !tbaa !85, !noalias !89
  %2071 = add nsw i32 %2024, 1
  br label %2072

; <label>:2072                                    ; preds = %2066, %2062
  %2073 = phi i32 [ %2071, %2066 ], [ %2024, %2062 ]
  %2074 = add nuw nsw i32 %2025, 1
  %2075 = icmp eq i32 %2074, %1880
  br i1 %2075, label %2076, label %2023

; <label>:2076                                    ; preds = %2072
  %2077 = load float, float* %2017, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2078 = load float, float* %2016, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  %2079 = load float, float* %2015, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  %2080 = load float, float* %2020, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2081 = load float, float* %2019, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  %2082 = load float, float* %2018, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  br label %2083

; <label>:2083                                    ; preds = %2076, %2010
  %2084 = phi float [ -1.000000e+00, %2010 ], [ %2082, %2076 ]
  %2085 = phi float [ -1.000000e+00, %2010 ], [ %2081, %2076 ]
  %2086 = phi float [ -1.000000e+00, %2010 ], [ %2080, %2076 ]
  %2087 = phi float [ -1.000000e+00, %2010 ], [ %2079, %2076 ]
  %2088 = phi float [ -1.000000e+00, %2010 ], [ %2078, %2076 ]
  %2089 = phi float [ -1.000000e+00, %2010 ], [ %2077, %2076 ]
  %2090 = phi i32 [ 0, %2010 ], [ %2073, %2076 ]
  %2091 = call float @dx.op.binary.f32(i32 36, float %2088, float %2089)  ; FMin(a,b)
  %2092 = call float @dx.op.binary.f32(i32 36, float %2087, float %2091)  ; FMin(a,b)
  %2093 = call float @dx.op.binary.f32(i32 35, float %2087, float %2088)  ; FMax(a,b)
  %2094 = call float @dx.op.binary.f32(i32 36, float %2093, float %2089)  ; FMin(a,b)
  %2095 = call float @dx.op.binary.f32(i32 36, float %2087, float %2088)  ; FMin(a,b)
  %2096 = call float @dx.op.binary.f32(i32 35, float %2095, float %2094)  ; FMax(a,b)
  %2097 = call float @dx.op.binary.f32(i32 35, float %2088, float %2089)  ; FMax(a,b)
  %2098 = call float @dx.op.binary.f32(i32 35, float %2087, float %2097)  ; FMax(a,b)
  store float %2092, float* %2015, align 4, !tbaa !85, !alias.scope !113, !noalias !114
  store float %2096, float* %2016, align 4, !tbaa !85, !alias.scope !111, !noalias !112
  store float %2098, float* %2017, align 4, !tbaa !85, !alias.scope !105, !noalias !108
  %2099 = call float @dx.op.binary.f32(i32 36, float %2085, float %2086)  ; FMin(a,b)
  %2100 = call float @dx.op.binary.f32(i32 36, float %2084, float %2099)  ; FMin(a,b)
  %2101 = call float @dx.op.binary.f32(i32 35, float %2084, float %2085)  ; FMax(a,b)
  %2102 = call float @dx.op.binary.f32(i32 36, float %2101, float %2086)  ; FMin(a,b)
  %2103 = call float @dx.op.binary.f32(i32 36, float %2084, float %2085)  ; FMin(a,b)
  %2104 = call float @dx.op.binary.f32(i32 35, float %2103, float %2102)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 35, float %2085, float %2086)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float %2084, float %2105)  ; FMax(a,b)
  store float %2100, float* %2018, align 4, !tbaa !85, !alias.scope !123, !noalias !124
  store float %2104, float* %2019, align 4, !tbaa !85, !alias.scope !121, !noalias !122
  store float %2106, float* %2020, align 4, !tbaa !85, !alias.scope !115, !noalias !118
  %2107 = sub nsw i32 3, %2090
  %2108 = icmp sgt i32 %2107, 2
  br i1 %2108, label %2109, label %2147

; <label>:2109                                    ; preds = %2083
  %2110 = icmp eq i32 %1878, 0
  %2111 = fsub fast float %1928, %2012
  %2112 = select i1 %2110, float %2111, float %2012
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2116 = extractvalue %dx.types.CBufRet.f32 %2113, 2
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2120 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2121 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 3
  %2124 = call float @dx.op.binary.f32(i32 36, float %2013, float %2123)  ; FMin(a,b)
  %2125 = fmul fast float %2121, %2112
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = fsub fast float %2118, %2114
  %2128 = fsub fast float %2119, %2115
  %2129 = fsub fast float %2120, %2116
  %2130 = fmul fast float %2126, %2127
  %2131 = fmul fast float %2126, %2128
  %2132 = fmul fast float %2126, %2129
  %2133 = fadd fast float %2130, %2114
  %2134 = fadd fast float %2131, %2115
  %2135 = fadd fast float %2132, %2116
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2139 = fadd fast float %2138, %2137
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2136, 2
  %2142 = extractvalue %dx.types.CBufRet.f32 %2136, 3
  %2143 = fadd fast float %2142, %2141
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2145 = fmul fast float %2140, %2124
  %2146 = fmul fast float %2145, %2144
  br label %2229

; <label>:2147                                    ; preds = %2083
  %2148 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %2107
  %2149 = load float, float* %2148, align 4, !tbaa !85, !noalias !89
  %2150 = fcmp fast olt float %2149, %2014
  %2151 = icmp sgt i32 %2090, 0
  %2152 = and i1 %2151, %2150
  br i1 %2152, label %2153, label %2190

; <label>:2153                                    ; preds = %2147
  br label %2154

; <label>:2154                                    ; preds = %2183, %2153
  %2155 = phi float [ %2184, %2183 ], [ %2012, %2153 ]
  %2156 = phi float [ %2185, %2183 ], [ %2013, %2153 ]
  %2157 = phi float [ %2165, %2183 ], [ %2149, %2153 ]
  %2158 = phi i32 [ %2162, %2183 ], [ %2107, %2153 ]
  %2159 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %2158
  %2160 = load float, float* %2159, align 4, !tbaa !85, !noalias !89
  %2161 = icmp slt i32 %2158, 2
  %2162 = add nsw i32 %2158, 1
  %2163 = getelementptr inbounds [3 x float], [3 x float]* %58, i32 0, i32 %2162
  %2164 = load float, float* %2163, align 4, !tbaa !85, !noalias !89
  %2165 = select i1 %2161, float %2164, float %1928
  %2166 = call float @dx.op.binary.f32(i32 36, float %2165, float %2160)  ; FMin(a,b)
  %2167 = call float @dx.op.binary.f32(i32 36, float %2014, float %2166)  ; FMin(a,b)
  %2168 = icmp eq i32 %1878, 0
  %2169 = fadd fast float %2167, %2157
  %2170 = fmul fast float %2169, %1859
  %2171 = fadd fast float %2170, %1872
  br i1 %2168, label %2177, label %2172

; <label>:2172                                    ; preds = %2154
  %2173 = fsub fast float %2167, %2157
  %2174 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2173)  ; FMax(a,b)
  %2175 = fmul fast float %2174, %2171
  %2176 = fadd fast float %2175, %2156
  br label %2183

; <label>:2177                                    ; preds = %2154
  %2178 = fsub fast float %2157, %2167
  %2179 = call float @dx.op.unary.f32(i32 6, float %2178)  ; FAbs(value)
  %2180 = fadd fast float %2179, %2155
  %2181 = fmul fast float %2179, %2171
  %2182 = fsub fast float %2156, %2181
  br label %2183

; <label>:2183                                    ; preds = %2177, %2172
  %2184 = phi float [ %2174, %2172 ], [ %2180, %2177 ]
  %2185 = phi float [ %2176, %2172 ], [ %2182, %2177 ]
  %2186 = fcmp fast olt float %2165, %2014
  %2187 = icmp slt i32 %2162, 3
  %2188 = and i1 %2187, %2186
  br i1 %2188, label %2154, label %2189

; <label>:2189                                    ; preds = %2183
  br label %2190

; <label>:2190                                    ; preds = %2189, %2147
  %2191 = phi float [ %2012, %2147 ], [ %2184, %2189 ]
  %2192 = phi float [ %2013, %2147 ], [ %2185, %2189 ]
  %2193 = fsub fast float %1928, %2191
  %2194 = select i1 %1930, float %2191, float %2193
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.CBufRet.f32 %2195, 2
  %2199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = extractvalue %dx.types.CBufRet.f32 %2199, 0
  %2201 = extractvalue %dx.types.CBufRet.f32 %2199, 1
  %2202 = extractvalue %dx.types.CBufRet.f32 %2199, 2
  %2203 = extractvalue %dx.types.CBufRet.f32 %2199, 3
  %2204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2204, 3
  %2206 = call float @dx.op.binary.f32(i32 36, float %2192, float %2205)  ; FMin(a,b)
  %2207 = fmul fast float %2203, %2194
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fsub fast float %2200, %2196
  %2210 = fsub fast float %2201, %2197
  %2211 = fsub fast float %2202, %2198
  %2212 = fmul fast float %2208, %2209
  %2213 = fmul fast float %2208, %2210
  %2214 = fmul fast float %2208, %2211
  %2215 = fadd fast float %2212, %2196
  %2216 = fadd fast float %2213, %2197
  %2217 = fadd fast float %2214, %2198
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.CBufRet.f32 %2218, 1
  %2221 = fadd fast float %2220, %2219
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2223 = extractvalue %dx.types.CBufRet.f32 %2218, 2
  %2224 = extractvalue %dx.types.CBufRet.f32 %2218, 3
  %2225 = fadd fast float %2224, %2223
  %2226 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2227 = fmul fast float %2222, %2206
  %2228 = fmul fast float %2227, %2226
  br label %2229

; <label>:2229                                    ; preds = %2190, %2109, %1944, %1926, %1924
  %2230 = phi float [ %1953, %1944 ], [ %2112, %2109 ], [ %2194, %2190 ], [ 0.000000e+00, %1924 ], [ 0.000000e+00, %1926 ]
  %2231 = phi float [ %1987, %1944 ], [ %2146, %2109 ], [ %2228, %2190 ], [ 0.000000e+00, %1924 ], [ 0.000000e+00, %1926 ]
  %2232 = phi float [ %1974, %1944 ], [ %2133, %2109 ], [ %2215, %2190 ], [ 0.000000e+00, %1924 ], [ 0.000000e+00, %1926 ]
  %2233 = phi float [ %1975, %1944 ], [ %2134, %2109 ], [ %2216, %2190 ], [ 0.000000e+00, %1924 ], [ 0.000000e+00, %1926 ]
  %2234 = phi float [ %1976, %1944 ], [ %2135, %2109 ], [ %2217, %2190 ], [ 0.000000e+00, %1924 ], [ 0.000000e+00, %1926 ]
  %2235 = fmul fast float %1867, %2231
  %2236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2237 = extractvalue %dx.types.CBufRet.f32 %2236, 2
  %2238 = fsub fast float %1874, %2237
  %2239 = fcmp fast olt float %2235, -2.000000e+01
  %2240 = call float @dx.op.unary.f32(i32 21, float %2235)  ; Exp(value)
  %2241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2241, 2
  %2243 = extractvalue %dx.types.CBufRet.f32 %2241, 3
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 2
  %2246 = fmul fast float %2243, %2238
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2248 = fsub fast float 1.000000e+00, %2247
  %2249 = fmul fast float %1859, 5.000000e-01
  %2250 = fadd fast float %2249, 5.000000e-01
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2252 = fsub fast float 1.000000e+00, %2251
  %2253 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2248)  ; FMax(a,b)
  %2254 = fdiv fast float %2252, %2253
  %2255 = fsub fast float %2238, %1816
  %2256 = call float @dx.op.unary.f32(i32 6, float %2255)  ; FAbs(value)
  %2257 = fmul fast float %2256, %2242
  %2258 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2259 = fsub fast float 1.000000e+00, %2257
  %2260 = fmul fast float %2259, %2258
  %2261 = fadd fast float %2260, %2257
  %2262 = fmul fast float %2245, %2238
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = fsub fast float 1.000000e+00, %2261
  %2265 = fmul fast float %2264, %2263
  %2266 = fadd fast float %2265, %2261
  %2267 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  %2268 = fadd fast float %2240, -1.000000e+00
  %2269 = select i1 %2239, float -1.000000e+00, float %2268
  %2270 = fmul fast float %2267, %2269
  %2271 = fadd fast float %2270, 1.000000e+00
  %2272 = fsub fast float -0.000000e+00, %2270
  %2273 = fmul fast float %2232, %2272
  %2274 = fmul fast float %2233, %2272
  %2275 = fmul fast float %2234, %2272
  br label %2276

; <label>:2276                                    ; preds = %2229, %1825
  %2277 = phi float [ %2230, %2229 ], [ 0.000000e+00, %1825 ]
  %2278 = phi float [ %2271, %2229 ], [ 1.000000e+00, %1825 ]
  %2279 = phi float [ %2273, %2229 ], [ 0.000000e+00, %1825 ]
  %2280 = phi float [ %2274, %2229 ], [ 0.000000e+00, %1825 ]
  %2281 = phi float [ %2275, %2229 ], [ 0.000000e+00, %1825 ]
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2284 = fsub fast float 1.000000e+00, %2278
  %2285 = fmul fast float %2284, %1860
  %2286 = fmul fast float %2285, %2283
  %2287 = fsub fast float %1860, %2286
  br i1 %1853, label %2288, label %2317, !dx.controlflow.hints !125

; <label>:2288                                    ; preds = %2276
  %2289 = fmul fast float %1861, %1850
  %2290 = fadd fast float %2289, %1851
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2292 = fmul fast float %1832, %2287
  %2293 = fsub fast float -0.000000e+00, %2292
  %2294 = fmul fast float %1833, %2287
  %2295 = fsub fast float -0.000000e+00, %2294
  %2296 = call float @dx.op.unary.f32(i32 21, float %2293)  ; Exp(value)
  %2297 = call float @dx.op.unary.f32(i32 21, float %2295)  ; Exp(value)
  %2298 = call float @dx.op.binary.f32(i32 35, float %1840, float %2296)  ; FMax(a,b)
  %2299 = call float @dx.op.binary.f32(i32 35, float %1840, float %2297)  ; FMax(a,b)
  %2300 = fsub fast float %2299, %2298
  %2301 = fmul fast float %2300, %2291
  %2302 = fadd fast float %2301, %2298
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2304 = fsub fast float %1837, %1842
  %2305 = fsub fast float %1838, %1843
  %2306 = fsub fast float %1839, %1844
  %2307 = fmul fast float %2291, %2304
  %2308 = fmul fast float %2291, %2305
  %2309 = fmul fast float %2291, %2306
  %2310 = fadd fast float %2307, %1842
  %2311 = fadd fast float %2308, %1843
  %2312 = fadd fast float %2309, %1844
  %2313 = fsub fast float 1.000000e+00, %2303
  %2314 = fmul fast float %2313, %2310
  %2315 = fmul fast float %2313, %2311
  %2316 = fmul fast float %2313, %2312
  br label %2376

; <label>:2317                                    ; preds = %2276
  %2318 = fmul fast float %2287, %1849
  %2319 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2320 = fsub fast float 2.000000e+00, %2319
  %2321 = fmul fast float %2319, 9.921875e-01
  %2322 = fmul fast float %2321, %2320
  %2323 = fadd fast float %2322, 3.906250e-03
  %2324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2323, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = fsub fast float %2319, %2325
  %2327 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2326)  ; FMax(a,b)
  %2328 = fmul fast float %1835, %1816
  %2329 = call float @dx.op.unary.f32(i32 6, float %2328)  ; FAbs(value)
  %2330 = fcmp fast ogt float %2329, 0x3EB0C6F7A0000000
  br i1 %2330, label %2331, label %2337, !dx.controlflow.hints !126

; <label>:2331                                    ; preds = %2317
  %2332 = fmul fast float %2328, 0xBFF7154760000000
  %2333 = call float @dx.op.unary.f32(i32 21, float %2332)  ; Exp(value)
  %2334 = fsub fast float 1.000000e+00, %2333
  %2335 = fdiv fast float %2334, %2328
  %2336 = fmul fast float %2335, %1845
  br label %2337

; <label>:2337                                    ; preds = %2331, %2317
  %2338 = phi float [ %2336, %2331 ], [ %1845, %2317 ]
  %2339 = fadd fast float %2338, %1847
  %2340 = fmul fast float %2339, %2327
  %2341 = fmul fast float %1832, %2340
  %2342 = fsub fast float -0.000000e+00, %2341
  %2343 = fmul fast float %1833, %2340
  %2344 = fsub fast float -0.000000e+00, %2343
  %2345 = fmul fast float %1834, %2340
  %2346 = fsub fast float -0.000000e+00, %2345
  %2347 = call float @dx.op.unary.f32(i32 21, float %2342)  ; Exp(value)
  %2348 = call float @dx.op.unary.f32(i32 21, float %2344)  ; Exp(value)
  %2349 = call float @dx.op.unary.f32(i32 21, float %2346)  ; Exp(value)
  %2350 = fmul fast float %1861, %1861
  %2351 = fadd fast float %2350, 1.000000e+00
  %2352 = fmul fast float %2351, 0x3FAE8EC8A0000000
  %2353 = fmul fast float %2352, %1842
  %2354 = fmul fast float %2352, %1843
  %2355 = fmul fast float %2352, %1844
  %2356 = fmul fast float %1861, %1840
  %2357 = fsub fast float 1.000000e+00, %2356
  %2358 = fmul fast float %1840, %1840
  %2359 = fsub fast float 1.000000e+00, %2358
  %2360 = fmul fast float %2359, 0x3FB45F3060000000
  %2361 = fmul fast float %2357, %2357
  %2362 = fdiv fast float 1.000000e+00, %2361
  %2363 = fmul fast float %2360, %2362
  %2364 = fmul fast float %2363, %1837
  %2365 = fmul fast float %2363, %1838
  %2366 = fmul fast float %2363, %1839
  %2367 = fadd fast float %2364, %2353
  %2368 = fadd fast float %2365, %2354
  %2369 = fadd fast float %2366, %2355
  %2370 = fsub fast float 1.000000e+00, %2347
  %2371 = fsub fast float 1.000000e+00, %2348
  %2372 = fsub fast float 1.000000e+00, %2349
  %2373 = fmul fast float %2367, %2370
  %2374 = fmul fast float %2368, %2371
  %2375 = fmul fast float %2369, %2372
  br label %2376

; <label>:2376                                    ; preds = %2337, %2288
  %2377 = phi float [ %2314, %2288 ], [ %2373, %2337 ]
  %2378 = phi float [ %2315, %2288 ], [ %2374, %2337 ]
  %2379 = phi float [ %2316, %2288 ], [ %2375, %2337 ]
  %2380 = phi float [ %2303, %2288 ], [ %2347, %2337 ]
  %2381 = phi float [ %2303, %2288 ], [ %2348, %2337 ]
  %2382 = phi float [ %2303, %2288 ], [ %2349, %2337 ]
  br i1 %1869, label %2383, label %2581, !dx.controlflow.hints !127

; <label>:2383                                    ; preds = %2376
  %2384 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2385 = fmul fast float %2384, %2284
  %2386 = fsub fast float %2279, %2377
  %2387 = fsub fast float %2280, %2378
  %2388 = fsub fast float %2281, %2379
  %2389 = fmul fast float %2385, %2386
  %2390 = fmul fast float %2385, %2387
  %2391 = fmul fast float %2385, %2388
  %2392 = fadd fast float %2389, %2377
  %2393 = fadd fast float %2390, %2378
  %2394 = fadd fast float %2391, %2379
  %2395 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2380)  ; FMax(a,b)
  %2396 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2381)  ; FMax(a,b)
  %2397 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2382)  ; FMax(a,b)
  %2398 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2278)  ; FMax(a,b)
  %2399 = call float @dx.op.binary.f32(i32 35, float %2277, float %2287)  ; FMax(a,b)
  %2400 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2399)  ; FMax(a,b)
  %2401 = fdiv fast float %2277, %2400
  %2402 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  %2403 = fdiv fast float %2287, %2400
  %2404 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2405 = fcmp fast une float %2398, 1.000000e+00
  br i1 %2405, label %2406, label %2419, !dx.controlflow.hints !128

; <label>:2406                                    ; preds = %2383
  %2407 = call float @dx.op.unary.f32(i32 23, float %2398)  ; Log(value)
  %2408 = fmul fast float %2407, 0x3FE62E4300000000
  %2409 = fmul fast float %2279, %2408
  %2410 = fsub fast float -0.000000e+00, %2409
  %2411 = fmul fast float %2280, %2408
  %2412 = fsub fast float -0.000000e+00, %2411
  %2413 = fmul fast float %2281, %2408
  %2414 = fsub fast float -0.000000e+00, %2413
  %2415 = fsub fast float 1.000000e+00, %2398
  %2416 = fdiv fast float %2410, %2415
  %2417 = fdiv fast float %2412, %2415
  %2418 = fdiv fast float %2414, %2415
  br label %2419

; <label>:2419                                    ; preds = %2406, %2383
  %2420 = phi float [ %2416, %2406 ], [ %2279, %2383 ]
  %2421 = phi float [ %2417, %2406 ], [ %2280, %2383 ]
  %2422 = phi float [ %2418, %2406 ], [ %2281, %2383 ]
  %2423 = phi float [ %2408, %2406 ], [ 0.000000e+00, %2383 ]
  %2424 = fcmp fast une float %2395, 1.000000e+00
  br i1 %2424, label %2425, label %2432, !dx.controlflow.hints !129

; <label>:2425                                    ; preds = %2419
  %2426 = call float @dx.op.unary.f32(i32 23, float %2395)  ; Log(value)
  %2427 = fmul fast float %2426, 0x3FE62E4300000000
  %2428 = fmul fast float %2392, %2427
  %2429 = fsub fast float -0.000000e+00, %2428
  %2430 = fsub fast float 1.000000e+00, %2395
  %2431 = fdiv fast float %2429, %2430
  br label %2432

; <label>:2432                                    ; preds = %2425, %2419
  %2433 = phi float [ %2431, %2425 ], [ %2392, %2419 ]
  %2434 = phi float [ %2427, %2425 ], [ 0.000000e+00, %2419 ]
  %2435 = fcmp fast une float %2396, 1.000000e+00
  br i1 %2435, label %2436, label %2443, !dx.controlflow.hints !129

; <label>:2436                                    ; preds = %2432
  %2437 = call float @dx.op.unary.f32(i32 23, float %2396)  ; Log(value)
  %2438 = fmul fast float %2437, 0x3FE62E4300000000
  %2439 = fmul fast float %2393, %2438
  %2440 = fsub fast float -0.000000e+00, %2439
  %2441 = fsub fast float 1.000000e+00, %2396
  %2442 = fdiv fast float %2440, %2441
  br label %2443

; <label>:2443                                    ; preds = %2436, %2432
  %2444 = phi float [ %2442, %2436 ], [ %2393, %2432 ]
  %2445 = phi float [ %2438, %2436 ], [ 0.000000e+00, %2432 ]
  %2446 = fcmp fast une float %2397, 1.000000e+00
  br i1 %2446, label %2447, label %2454, !dx.controlflow.hints !129

; <label>:2447                                    ; preds = %2443
  %2448 = call float @dx.op.unary.f32(i32 23, float %2397)  ; Log(value)
  %2449 = fmul fast float %2448, 0x3FE62E4300000000
  %2450 = fmul fast float %2394, %2449
  %2451 = fsub fast float -0.000000e+00, %2450
  %2452 = fsub fast float 1.000000e+00, %2397
  %2453 = fdiv fast float %2451, %2452
  br label %2454

; <label>:2454                                    ; preds = %2447, %2443
  %2455 = phi float [ %2453, %2447 ], [ %2394, %2443 ]
  %2456 = phi float [ %2449, %2447 ], [ 0.000000e+00, %2443 ]
  %2457 = fmul fast float %2420, %2404
  %2458 = fmul fast float %2421, %2404
  %2459 = fmul fast float %2422, %2404
  %2460 = fmul fast float %2423, %2404
  %2461 = fmul fast float %2433, %2402
  %2462 = fmul fast float %2444, %2402
  %2463 = fmul fast float %2455, %2402
  %2464 = fmul fast float %2434, %2402
  %2465 = fmul fast float %2445, %2402
  %2466 = fmul fast float %2456, %2402
  %2467 = fadd fast float %2461, %2457
  %2468 = fadd fast float %2462, %2458
  %2469 = fadd fast float %2463, %2459
  %2470 = fadd fast float %2464, %2460
  %2471 = fadd fast float %2465, %2460
  %2472 = fadd fast float %2466, %2460
  %2473 = fcmp fast une float %2470, 0.000000e+00
  br i1 %2473, label %2474, label %2481, !dx.controlflow.hints !130

; <label>:2474                                    ; preds = %2454
  %2475 = fmul fast float %2470, 0x3FF7154760000000
  %2476 = call float @dx.op.unary.f32(i32 21, float %2475)  ; Exp(value)
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = fmul fast float %2467, %2477
  %2479 = fsub fast float -0.000000e+00, %2478
  %2480 = fdiv fast float %2479, %2470
  br label %2481

; <label>:2481                                    ; preds = %2474, %2454
  %2482 = phi float [ %2476, %2474 ], [ 1.000000e+00, %2454 ]
  %2483 = phi float [ %2480, %2474 ], [ %2467, %2454 ]
  %2484 = fcmp fast une float %2471, 0.000000e+00
  br i1 %2484, label %2485, label %2492, !dx.controlflow.hints !130

; <label>:2485                                    ; preds = %2481
  %2486 = fmul fast float %2471, 0x3FF7154760000000
  %2487 = call float @dx.op.unary.f32(i32 21, float %2486)  ; Exp(value)
  %2488 = fsub fast float 1.000000e+00, %2487
  %2489 = fmul fast float %2468, %2488
  %2490 = fsub fast float -0.000000e+00, %2489
  %2491 = fdiv fast float %2490, %2471
  br label %2492

; <label>:2492                                    ; preds = %2485, %2481
  %2493 = phi float [ %2487, %2485 ], [ 1.000000e+00, %2481 ]
  %2494 = phi float [ %2491, %2485 ], [ %2468, %2481 ]
  %2495 = fcmp fast une float %2472, 0.000000e+00
  br i1 %2495, label %2496, label %2503, !dx.controlflow.hints !130

; <label>:2496                                    ; preds = %2492
  %2497 = fmul fast float %2472, 0x3FF7154760000000
  %2498 = call float @dx.op.unary.f32(i32 21, float %2497)  ; Exp(value)
  %2499 = fsub fast float 1.000000e+00, %2498
  %2500 = fmul fast float %2469, %2499
  %2501 = fsub fast float -0.000000e+00, %2500
  %2502 = fdiv fast float %2501, %2472
  br label %2503

; <label>:2503                                    ; preds = %2496, %2492
  %2504 = phi float [ %2498, %2496 ], [ 1.000000e+00, %2492 ]
  %2505 = phi float [ %2502, %2496 ], [ %2469, %2492 ]
  %2506 = fcmp fast ogt float %2402, %2404
  br i1 %2506, label %2507, label %2527

; <label>:2507                                    ; preds = %2503
  %2508 = fsub fast float 1.000000e+00, %2404
  %2509 = fmul fast float %2420, %2508
  %2510 = fmul fast float %2421, %2508
  %2511 = fmul fast float %2422, %2508
  %2512 = fmul fast float %2423, %2508
  %2513 = fcmp fast une float %2512, 0.000000e+00
  br i1 %2513, label %2514, label %2565, !dx.controlflow.hints !131

; <label>:2514                                    ; preds = %2507
  %2515 = fmul fast float %2512, 0x3FF7154760000000
  %2516 = call float @dx.op.unary.f32(i32 21, float %2515)  ; Exp(value)
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2509, %2517
  %2519 = fsub fast float -0.000000e+00, %2518
  %2520 = fmul fast float %2510, %2517
  %2521 = fsub fast float -0.000000e+00, %2520
  %2522 = fmul fast float %2511, %2517
  %2523 = fsub fast float -0.000000e+00, %2522
  %2524 = fdiv fast float %2519, %2512
  %2525 = fdiv fast float %2521, %2512
  %2526 = fdiv fast float %2523, %2512
  br label %2565

; <label>:2527                                    ; preds = %2503
  %2528 = fsub fast float 1.000000e+00, %2402
  %2529 = fmul fast float %2433, %2528
  %2530 = fmul fast float %2444, %2528
  %2531 = fmul fast float %2455, %2528
  %2532 = fmul fast float %2434, %2528
  %2533 = fmul fast float %2445, %2528
  %2534 = fmul fast float %2456, %2528
  %2535 = fcmp fast une float %2532, 0.000000e+00
  br i1 %2535, label %2536, label %2543, !dx.controlflow.hints !130

; <label>:2536                                    ; preds = %2527
  %2537 = fmul fast float %2532, 0x3FF7154760000000
  %2538 = call float @dx.op.unary.f32(i32 21, float %2537)  ; Exp(value)
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2529, %2539
  %2541 = fsub fast float -0.000000e+00, %2540
  %2542 = fdiv fast float %2541, %2532
  br label %2543

; <label>:2543                                    ; preds = %2536, %2527
  %2544 = phi float [ %2542, %2536 ], [ %2529, %2527 ]
  %2545 = phi float [ %2538, %2536 ], [ 1.000000e+00, %2527 ]
  %2546 = fcmp fast une float %2533, 0.000000e+00
  br i1 %2546, label %2547, label %2554, !dx.controlflow.hints !130

; <label>:2547                                    ; preds = %2543
  %2548 = fmul fast float %2533, 0x3FF7154760000000
  %2549 = call float @dx.op.unary.f32(i32 21, float %2548)  ; Exp(value)
  %2550 = fsub fast float 1.000000e+00, %2549
  %2551 = fmul fast float %2530, %2550
  %2552 = fsub fast float -0.000000e+00, %2551
  %2553 = fdiv fast float %2552, %2533
  br label %2554

; <label>:2554                                    ; preds = %2547, %2543
  %2555 = phi float [ %2553, %2547 ], [ %2530, %2543 ]
  %2556 = phi float [ %2549, %2547 ], [ 1.000000e+00, %2543 ]
  %2557 = fcmp fast une float %2534, 0.000000e+00
  br i1 %2557, label %2558, label %2565, !dx.controlflow.hints !130

; <label>:2558                                    ; preds = %2554
  %2559 = fmul fast float %2534, 0x3FF7154760000000
  %2560 = call float @dx.op.unary.f32(i32 21, float %2559)  ; Exp(value)
  %2561 = fsub fast float 1.000000e+00, %2560
  %2562 = fmul fast float %2531, %2561
  %2563 = fsub fast float -0.000000e+00, %2562
  %2564 = fdiv fast float %2563, %2534
  br label %2565

; <label>:2565                                    ; preds = %2558, %2554, %2514, %2507
  %2566 = phi float [ %2564, %2558 ], [ %2526, %2514 ], [ %2511, %2507 ], [ %2531, %2554 ]
  %2567 = phi float [ %2555, %2558 ], [ %2525, %2514 ], [ %2510, %2507 ], [ %2555, %2554 ]
  %2568 = phi float [ %2544, %2558 ], [ %2524, %2514 ], [ %2509, %2507 ], [ %2544, %2554 ]
  %2569 = phi float [ %2560, %2558 ], [ %2516, %2514 ], [ 1.000000e+00, %2507 ], [ 1.000000e+00, %2554 ]
  %2570 = phi float [ %2556, %2558 ], [ %2516, %2514 ], [ 1.000000e+00, %2507 ], [ %2556, %2554 ]
  %2571 = phi float [ %2545, %2558 ], [ %2516, %2514 ], [ 1.000000e+00, %2507 ], [ %2545, %2554 ]
  %2572 = fmul fast float %2571, %2483
  %2573 = fmul fast float %2570, %2494
  %2574 = fmul fast float %2569, %2505
  %2575 = fadd fast float %2572, %2568
  %2576 = fadd fast float %2573, %2567
  %2577 = fadd fast float %2574, %2566
  %2578 = fmul fast float %2571, %2482
  %2579 = fmul fast float %2570, %2493
  %2580 = fmul fast float %2569, %2504
  br label %2581

; <label>:2581                                    ; preds = %2565, %2376
  %2582 = phi float [ %2580, %2565 ], [ %2382, %2376 ]
  %2583 = phi float [ %2579, %2565 ], [ %2381, %2376 ]
  %2584 = phi float [ %2578, %2565 ], [ %2380, %2376 ]
  %2585 = phi float [ %2577, %2565 ], [ %2379, %2376 ]
  %2586 = phi float [ %2576, %2565 ], [ %2378, %2376 ]
  %2587 = phi float [ %2575, %2565 ], [ %2377, %2376 ]
  %2588 = fmul fast float %2587, %1562
  %2589 = fmul fast float %2586, %1562
  %2590 = fmul fast float %2585, %1562
  %2591 = fmul fast float %2584, %1824
  %2592 = call float @dx.op.dot3.f32(i32 55, float %2584, float %2583, float %2582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2593 = call float @dx.op.dot3.f32(i32 55, float %2588, float %2589, float %2590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2594 = select i1 %134, float %2592, float %2584
  %2595 = select i1 %134, float %2592, float %2583
  %2596 = select i1 %134, float 1.000000e+00, float %2582
  %2597 = select i1 %134, float %2593, float %2588
  %2598 = select i1 %134, float 0.000000e+00, float %2589
  %2599 = select i1 %134, float 0.000000e+00, float %2590
  %2600 = fmul fast float %2594, %1818
  %2601 = fmul fast float %2595, %1819
  %2602 = fmul fast float %2596, %1820
  %2603 = fadd fast float %2600, %2597
  %2604 = fadd fast float %2601, %2598
  %2605 = fadd fast float %2599, %2602
  %2606 = fmul fast float %2594, %1821
  %2607 = fmul fast float %2595, %1822
  %2608 = fmul fast float %2596, %1823
  %2609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.i32 %2609, 0
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2880, label %2612, !dx.controlflow.hints !132

; <label>:2612                                    ; preds = %2581
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 2
  %2615 = extractvalue %dx.types.CBufRet.f32 %2613, 3
  %2616 = fmul fast float %2614, %64
  %2617 = fmul fast float %2615, %65
  %2618 = fmul fast float %2616, 2.000000e+00
  %2619 = fmul fast float %2617, 2.000000e+00
  %2620 = fsub fast float 1.000000e+00, %2618
  %2621 = fsub fast float 1.000000e+00, %2619
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.CBufRet.f32 %2622, 2
  %2626 = fmul fast float %2620, %2623
  %2627 = fmul fast float %2620, %2624
  %2628 = fmul fast float %2620, %2625
  %2629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.CBufRet.f32 %2629, 1
  %2632 = extractvalue %dx.types.CBufRet.f32 %2629, 2
  %2633 = fmul fast float %2621, %2630
  %2634 = fmul fast float %2621, %2631
  %2635 = fmul fast float %2621, %2632
  %2636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.f32 %2636, 0
  %2638 = extractvalue %dx.types.CBufRet.f32 %2636, 1
  %2639 = extractvalue %dx.types.CBufRet.f32 %2636, 2
  %2640 = fadd fast float %2633, %2637
  %2641 = fadd fast float %2640, %2626
  %2642 = fadd fast float %2634, %2638
  %2643 = fadd fast float %2642, %2627
  %2644 = fadd fast float %2635, %2639
  %2645 = fadd fast float %2644, %2628
  %2646 = fmul fast float %2641, %1817
  %2647 = fmul fast float %2643, %1817
  %2648 = fmul fast float %2645, %1817
  %2649 = fmul fast float %2646, %2646
  %2650 = fmul fast float %2647, %2647
  %2651 = fadd fast float %2649, %2650
  %2652 = fmul fast float %2648, %2648
  %2653 = fadd fast float %2651, %2652
  %2654 = call float @dx.op.unary.f32(i32 24, float %2653)  ; Sqrt(value)
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 0
  %2657 = fsub fast float %2654, %2656
  %2658 = extractvalue %dx.types.CBufRet.f32 %2655, 2
  %2659 = fmul fast float %2657, %2658
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = fadd fast float %2660, -5.000000e-01
  %2662 = fmul fast float %2661, 2.000000e+00
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 2
  %2665 = call float @dx.op.binary.f32(i32 36, float %2664, float %2662)  ; FMin(a,b)
  %2666 = fsub fast float -0.000000e+00, %2664
  %2667 = fcmp fast ogt float %2665, %2666
  br i1 %2667, label %2668, label %2880, !dx.controlflow.hints !133

; <label>:2668                                    ; preds = %2612
  %2669 = fmul fast float %2665, 5.000000e-01
  %2670 = fadd fast float %2669, 5.000000e-01
  %2671 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2672 = call float @dx.op.unary.f32(i32 27, float %2671)  ; Round_ni(value)
  %2673 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2674 = fmul fast float %2673, 2.000000e+00
  %2675 = fadd fast float %2674, -1.000000e+00
  %2676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2616, float %2617, float %2672, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2677 = extractvalue %dx.types.ResRet.f32 %2676, 0
  %2678 = extractvalue %dx.types.ResRet.f32 %2676, 1
  %2679 = extractvalue %dx.types.ResRet.f32 %2676, 2
  %2680 = extractvalue %dx.types.ResRet.f32 %2676, 3
  %2681 = fadd fast float %2677, -5.000000e-01
  %2682 = fadd fast float %2679, -5.000000e-01
  %2683 = fmul fast float %2681, 0xBFD5555560000000
  %2684 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2682, float %2683)  ; FMad(a,b,c)
  %2685 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2678, float 0.000000e+00)  ; FMad(a,b,c)
  %2686 = fadd fast float %2685, %2680
  %2687 = fmul fast float %2681, -7.500000e-01
  %2688 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2682, float %2687)  ; FMad(a,b,c)
  %2689 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2678, float 0.000000e+00)  ; FMad(a,b,c)
  %2690 = fadd fast float %2689, %2680
  %2691 = call float @dx.op.binary.f32(i32 35, float %2684, float -1.000000e+00)  ; FMax(a,b)
  %2692 = call float @dx.op.binary.f32(i32 35, float %2686, float -1.000000e+00)  ; FMax(a,b)
  %2693 = call float @dx.op.binary.f32(i32 35, float %2688, float -1.000000e+00)  ; FMax(a,b)
  %2694 = call float @dx.op.binary.f32(i32 35, float %2690, float -1.000000e+00)  ; FMax(a,b)
  %2695 = call float @dx.op.binary.f32(i32 36, float %2691, float 1.000000e+00)  ; FMin(a,b)
  %2696 = call float @dx.op.binary.f32(i32 36, float %2692, float 1.000000e+00)  ; FMin(a,b)
  %2697 = call float @dx.op.binary.f32(i32 36, float %2693, float 1.000000e+00)  ; FMin(a,b)
  %2698 = call float @dx.op.binary.f32(i32 36, float %2694, float 1.000000e+00)  ; FMin(a,b)
  %2699 = fcmp fast olt float %2695, 0x3FEFFF8020000000
  br i1 %2699, label %2700, label %2815, !dx.controlflow.hints !134

; <label>:2700                                    ; preds = %2668
  %2701 = extractvalue %dx.types.CBufRet.f32 %2663, 3
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.CBufRet.f32 %2702, 2
  %2706 = extractvalue %dx.types.CBufRet.f32 %2702, 3
  %2707 = fsub fast float %2703, %2695
  %2708 = fsub fast float %2704, %2696
  %2709 = fsub fast float %2705, %2697
  %2710 = fsub fast float %2706, %2698
  %2711 = fmul fast float %2707, %2701
  %2712 = fmul fast float %2708, %2701
  %2713 = fmul fast float %2709, %2701
  %2714 = fmul fast float %2710, %2701
  %2715 = fadd fast float %2711, %2695
  %2716 = fadd fast float %2712, %2696
  %2717 = fsub fast float -0.000000e+00, %2716
  %2718 = fadd fast float %2713, %2697
  %2719 = fadd fast float %2714, %2698
  %2720 = fmul fast float %2715, %2715
  %2721 = fsub fast float %2716, %2720
  %2722 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2721)  ; FMax(a,b)
  %2723 = fdiv fast float 1.000000e+00, %2722
  %2724 = fmul fast float %2716, %2715
  %2725 = fsub fast float %2718, %2724
  %2726 = fsub fast float %2675, %2715
  %2727 = fmul fast float %2675, %2675
  %2728 = fsub fast float %2727, %2716
  %2729 = fmul fast float %2726, %2723
  %2730 = fmul fast float %2729, %2725
  %2731 = fsub fast float %2728, %2730
  %2732 = fmul fast float %2716, %2716
  %2733 = fsub fast float %2719, %2732
  %2734 = fmul fast float %2725, %2725
  %2735 = fmul fast float %2734, %2723
  %2736 = fsub fast float %2733, %2735
  %2737 = fdiv fast float %2731, %2736
  %2738 = fmul fast float %2725, %2737
  %2739 = fsub fast float %2726, %2738
  %2740 = fmul fast float %2739, %2723
  %2741 = fmul fast float %2740, %2715
  %2742 = fsub fast float 1.000000e+00, %2741
  %2743 = fmul fast float %2716, %2737
  %2744 = fsub fast float %2742, %2743
  %2745 = fmul fast float %2740, %2740
  %2746 = fmul fast float %2737, 4.000000e+00
  %2747 = fmul fast float %2746, %2744
  %2748 = fsub fast float %2745, %2747
  %2749 = call float @dx.op.unary.f32(i32 24, float %2748)  ; Sqrt(value)
  %2750 = fcmp fast oge float %2740, 0.000000e+00
  %2751 = fsub fast float -0.000000e+00, %2749
  %2752 = select i1 %2750, float %2751, float %2749
  %2753 = fsub fast float %2752, %2740
  %2754 = fdiv fast float %2753, %2737
  %2755 = fdiv fast float %2744, %2753
  %2756 = fmul fast float %2754, 5.000000e-01
  %2757 = fmul fast float %2755, 2.000000e+00
  %2758 = select i1 %2750, float %2756, float %2757
  %2759 = select i1 %2750, float %2757, float %2756
  %2760 = call float @dx.op.binary.f32(i32 35, float %2758, float %2759)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 36, float %2758, float %2759)  ; FMin(a,b)
  %2762 = fcmp fast ogt float %2675, %2761
  br i1 %2762, label %2763, label %2773

; <label>:2763                                    ; preds = %2700
  %2764 = fsub fast float %2675, %2761
  %2765 = fsub fast float %2760, %2761
  %2766 = fmul fast float %2764, %2765
  %2767 = fmul fast float %2760, %2675
  %2768 = fadd fast float %2760, %2675
  %2769 = fmul fast float %2768, %2715
  %2770 = fadd fast float %2767, %2716
  %2771 = fsub fast float %2770, %2769
  %2772 = fdiv fast float %2771, %2766
  br label %2773

; <label>:2773                                    ; preds = %2763, %2700
  %2774 = phi float [ %2772, %2763 ], [ 0.000000e+00, %2700 ]
  %2775 = fcmp fast ogt float %2675, %2760
  %2776 = fsub fast float %2675, %2760
  br i1 %2775, label %2777, label %2787

; <label>:2777                                    ; preds = %2773
  %2778 = fsub fast float %2760, %2761
  %2779 = fmul fast float %2778, %2776
  %2780 = fmul fast float %2761, %2675
  %2781 = fadd fast float %2761, %2675
  %2782 = fmul fast float %2781, %2715
  %2783 = fsub fast float %2717, %2780
  %2784 = fadd fast float %2783, %2782
  %2785 = fdiv fast float %2784, %2779
  %2786 = fadd fast float %2785, %2774
  br label %2787

; <label>:2787                                    ; preds = %2777, %2773
  %2788 = phi float [ %2786, %2777 ], [ %2774, %2773 ]
  %2789 = fsub fast float %2675, %2761
  %2790 = fmul fast float %2789, %2776
  %2791 = fmul fast float %2761, %2760
  %2792 = fadd fast float %2761, %2760
  %2793 = fmul fast float %2792, %2715
  %2794 = fadd fast float %2791, %2716
  %2795 = fsub fast float %2794, %2793
  %2796 = fdiv fast float %2795, %2790
  %2797 = call float @dx.op.unary.f32(i32 7, float %2788)  ; Saturate(value)
  %2798 = fcmp fast oeq float %1670, 0.000000e+00
  %2799 = extractvalue %dx.types.CBufRet.f32 %2663, 0
  %2800 = fcmp fast oeq float %2799, 0.000000e+00
  %2801 = or i1 %2798, %2800
  %2802 = fmul fast float %2799, 2.000000e+00
  %2803 = fadd fast float %2664, %2665
  %2804 = fdiv fast float %2803, %2802
  %2805 = call float @dx.op.unary.f32(i32 7, float %2804)  ; Saturate(value)
  %2806 = fmul fast float %2805, 2.000000e+00
  %2807 = fsub fast float 3.000000e+00, %2806
  %2808 = fmul fast float %2805, %2805
  %2809 = fmul fast float %2808, %2807
  %2810 = select i1 %2801, float 1.000000e+00, float %2809
  %2811 = fmul fast float %2796, %1670
  %2812 = fadd fast float %2797, %2811
  %2813 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2814 = fmul fast float %2810, %2813
  br label %2815

; <label>:2815                                    ; preds = %2787, %2668
  %2816 = phi float [ %2814, %2787 ], [ 0.000000e+00, %2668 ]
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2616, float %2617, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  %2820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.i32 %2820, 2
  %2822 = icmp eq i32 %2821, 0
  br i1 %2822, label %2828, label %2823

; <label>:2823                                    ; preds = %2815
  %2824 = call float @dx.op.unary.f32(i32 7, float %2816)  ; Saturate(value)
  %2825 = fadd fast float %2819, -1.000000e+00
  %2826 = fmul fast float %2824, %2825
  %2827 = fadd fast float %2826, 1.000000e+00
  br label %2828

; <label>:2828                                    ; preds = %2823, %2815
  %2829 = phi float [ %2827, %2823 ], [ %2817, %2815 ]
  %2830 = call float @dx.op.binary.f32(i32 35, float %2819, float %2829)  ; FMax(a,b)
  %2831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.i32 %2831, 2
  %2833 = and i32 %2832, 1
  %2834 = icmp eq i32 %2833, 0
  %2835 = fcmp fast une float %2830, 1.000000e+00
  %2836 = and i1 %2835, %2834
  br i1 %2836, label %2837, label %2856

; <label>:2837                                    ; preds = %2828
  %2838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2616, float %2617, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2842, 1
  %2844 = fmul fast float %2843, %2839
  %2845 = fmul fast float %2843, %2840
  %2846 = fmul fast float %2843, %2841
  %2847 = fcmp fast ogt float %2819, 0x3FEFFF2E40000000
  %2848 = fsub fast float 1.000000e+00, %2830
  %2849 = fsub fast float 1.000000e+00, %2819
  %2850 = fdiv fast float %2848, %2849
  %2851 = call float @dx.op.unary.f32(i32 7, float %2850)  ; Saturate(value)
  %2852 = select i1 %2847, float 0.000000e+00, float %2851
  %2853 = fmul fast float %2844, %2852
  %2854 = fmul fast float %2845, %2852
  %2855 = fmul fast float %2846, %2852
  br label %2856

; <label>:2856                                    ; preds = %2837, %2828
  %2857 = phi float [ 0.000000e+00, %2828 ], [ %2853, %2837 ]
  %2858 = phi float [ 0.000000e+00, %2828 ], [ %2854, %2837 ]
  %2859 = phi float [ 0.000000e+00, %2828 ], [ %2855, %2837 ]
  %2860 = fmul fast float %2857, %1562
  %2861 = fmul fast float %2858, %1562
  %2862 = fmul fast float %2859, %1562
  %2863 = fmul fast float %2830, %2591
  %2864 = call float @dx.op.dot3.f32(i32 55, float %2830, float %2830, float %2830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2860, float %2861, float %2862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = select i1 %134, float %2864, float %2830
  %2867 = select i1 %134, float 1.000000e+00, float %2830
  %2868 = select i1 %134, float %2865, float %2860
  %2869 = select i1 %134, float 0.000000e+00, float %2861
  %2870 = select i1 %134, float 0.000000e+00, float %2862
  %2871 = fmul fast float %2866, %2603
  %2872 = fmul fast float %2866, %2604
  %2873 = fmul fast float %2867, %2605
  %2874 = fadd fast float %2871, %2868
  %2875 = fadd fast float %2872, %2869
  %2876 = fadd fast float %2870, %2873
  %2877 = fmul fast float %2866, %2606
  %2878 = fmul fast float %2866, %2607
  %2879 = fmul fast float %2867, %2608
  br label %2880

; <label>:2880                                    ; preds = %2856, %2612, %2581, %1813
  %2881 = phi float [ %1818, %1813 ], [ %2603, %2581 ], [ %2874, %2856 ], [ %2603, %2612 ]
  %2882 = phi float [ %1819, %1813 ], [ %2604, %2581 ], [ %2875, %2856 ], [ %2604, %2612 ]
  %2883 = phi float [ %1820, %1813 ], [ %2605, %2581 ], [ %2876, %2856 ], [ %2605, %2612 ]
  %2884 = phi float [ %1821, %1813 ], [ %2606, %2581 ], [ %2877, %2856 ], [ %2606, %2612 ]
  %2885 = phi float [ %1822, %1813 ], [ %2607, %2581 ], [ %2878, %2856 ], [ %2607, %2612 ]
  %2886 = phi float [ %1823, %1813 ], [ %2608, %2581 ], [ %2879, %2856 ], [ %2608, %2612 ]
  %2887 = phi float [ %1824, %1813 ], [ %2591, %2581 ], [ %2863, %2856 ], [ %2591, %2612 ]
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 2
  %2890 = extractvalue %dx.types.CBufRet.f32 %2888, 3
  %2891 = fmul fast float %2889, %64
  %2892 = fmul fast float %2890, %65
  %2893 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2894 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2895 = select i1 %971, i32 2, i32 0
  %2896 = or i32 %2895, 1
  %2897 = uitofp i32 %2896 to float
  %2898 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2893, float %2894, float %2897, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.ResRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.ResRet.f32 %2898, 2
  %2902 = extractvalue %dx.types.ResRet.f32 %2898, 3
  %2903 = add nuw nsw i32 %2895, 2
  %2904 = uitofp i32 %2903 to float
  %2905 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2893, float %2894, float %2904, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2906 = extractvalue %dx.types.ResRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.ResRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.ResRet.f32 %2905, 2
  %2909 = extractvalue %dx.types.ResRet.f32 %2905, 3
  %2910 = call float @dx.op.binary.f32(i32 35, float %2900, float %2901)  ; FMax(a,b)
  %2911 = call float @dx.op.binary.f32(i32 35, float %2899, float %2910)  ; FMax(a,b)
  %2912 = call float @dx.op.binary.f32(i32 35, float %2911, float %2902)  ; FMax(a,b)
  %2913 = call float @dx.op.binary.f32(i32 36, float %2907, float %2908)  ; FMin(a,b)
  %2914 = call float @dx.op.binary.f32(i32 36, float %2906, float %2913)  ; FMin(a,b)
  %2915 = call float @dx.op.binary.f32(i32 36, float %2914, float %2909)  ; FMin(a,b)
  %2916 = fmul fast float %2912, 2.550000e+02
  %2917 = fadd fast float %2916, 0x3F70101020000000
  %2918 = fptoui float %2917 to i32
  %2919 = fmul fast float %2915, 2.550000e+02
  %2920 = fadd fast float %2919, 0x3F70101020000000
  %2921 = fptoui float %2920 to i32
  %2922 = icmp ult i32 %2918, %2921
  br i1 %2922, label %2923, label %2969

; <label>:2923                                    ; preds = %2880
  %2924 = fcmp fast ogt float %56, 9.843750e-01
  %2925 = fadd fast float %1817, -4.000000e+00
  %2926 = select i1 %2924, float -4.000000e+00, float %2925
  %2927 = call float @dx.op.binary.f32(i32 35, float %2926, float 0.000000e+00)  ; FMax(a,b)
  %2928 = fadd fast float %1136, %2927
  %2929 = fmul fast float %2928, %1137
  %2930 = call float @dx.op.unary.f32(i32 23, float %2929)  ; Log(value)
  %2931 = fmul fast float %1138, %2930
  %2932 = fmul fast float %2931, %1146
  %2933 = call float @dx.op.unary.f32(i32 7, float %2932)  ; Saturate(value)
  %2934 = uitofp i32 %2918 to float
  %2935 = uitofp i32 %2921 to float
  %2936 = fadd fast float %2934, 5.000000e-01
  %2937 = fadd fast float %2935, 5.000000e-01
  %2938 = fmul fast float %1146, %2936
  %2939 = fmul fast float %1146, %2937
  %2940 = fadd fast float %2938, 0x3F0FFB4800000000
  %2941 = fadd fast float %2939, 0xBF0FFB4800000000
  %2942 = call float @dx.op.binary.f32(i32 35, float %2933, float %2940)  ; FMax(a,b)
  %2943 = call float @dx.op.binary.f32(i32 36, float %2942, float %2941)  ; FMin(a,b)
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 1
  %2946 = extractvalue %dx.types.CBufRet.f32 %2944, 2
  %2947 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2948 = select i1 %971, float %2947, float 0.000000e+00
  %2949 = fmul fast float %2945, %2943
  %2950 = fadd fast float %2948, %2949
  %2951 = fadd fast float %2948, %2946
  %2952 = fsub fast float %2945, %2946
  %2953 = fadd fast float %2952, %2948
  %2954 = call float @dx.op.binary.f32(i32 35, float %2950, float %2951)  ; FMax(a,b)
  %2955 = call float @dx.op.binary.f32(i32 36, float %2954, float %2953)  ; FMin(a,b)
  %2956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2893, float %2894, float %2955, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2957 = extractvalue %dx.types.ResRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.ResRet.f32 %2956, 1
  %2959 = extractvalue %dx.types.ResRet.f32 %2956, 2
  %2960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2893, float %2894, float %2955, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.ResRet.f32 %2960, 2
  %2964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.f32 %2964, 1
  %2966 = fmul fast float %2965, %2961
  %2967 = fmul fast float %2965, %2962
  %2968 = fmul fast float %2965, %2963
  br label %2969

; <label>:2969                                    ; preds = %2923, %2880
  %2970 = phi float [ %2957, %2923 ], [ 1.000000e+00, %2880 ]
  %2971 = phi float [ %2958, %2923 ], [ 1.000000e+00, %2880 ]
  %2972 = phi float [ %2959, %2923 ], [ 1.000000e+00, %2880 ]
  %2973 = phi float [ %2966, %2923 ], [ 0.000000e+00, %2880 ]
  %2974 = phi float [ %2967, %2923 ], [ 0.000000e+00, %2880 ]
  %2975 = phi float [ %2968, %2923 ], [ 0.000000e+00, %2880 ]
  %2976 = fmul fast float %2973, %1562
  %2977 = fmul fast float %2974, %1562
  %2978 = fmul fast float %2975, %1562
  %2979 = fmul fast float %2970, %2887
  %2980 = call float @dx.op.dot3.f32(i32 55, float %2970, float %2971, float %2972, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2981 = call float @dx.op.dot3.f32(i32 55, float %2976, float %2977, float %2978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2982 = select i1 %134, float %2980, float %2970
  %2983 = select i1 %134, float %2980, float %2971
  %2984 = select i1 %134, float 1.000000e+00, float %2972
  %2985 = select i1 %134, float %2981, float %2976
  %2986 = select i1 %134, float 0.000000e+00, float %2977
  %2987 = select i1 %134, float 0.000000e+00, float %2978
  %2988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.i32 %2988, 3
  %2990 = and i32 %2989, 3
  %2991 = icmp ne i32 %2990, 0
  %2992 = and i32 %2989, 4
  %2993 = icmp ne i32 %2992, 0
  %2994 = and i1 %2991, %2993
  %2995 = and i1 %134, %2994
  br i1 %2995, label %2996, label %3002

; <label>:2996                                    ; preds = %2969
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 1
  %2999 = fadd fast float %2979, -1.000000e+00
  %3000 = fmul fast float %2998, %2999
  %3001 = fadd fast float %3000, 1.000000e+00
  br label %3002

; <label>:3002                                    ; preds = %2996, %2969
  %3003 = phi float [ %3001, %2996 ], [ %2979, %2969 ]
  %3004 = fadd fast float %2884, %2881
  %3005 = fmul fast float %2982, %3004
  %3006 = fadd fast float %3005, %2985
  %3007 = fadd fast float %2885, %2882
  %3008 = fmul fast float %2983, %3007
  %3009 = fadd fast float %3008, %2986
  %3010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.f32 %3010, 0
  br i1 %134, label %3012, label %3033

; <label>:3012                                    ; preds = %3002
  %3013 = fadd fast float %3006, %3009
  %3014 = fmul fast float %3011, %3013
  %3015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.f32 %3015, 3
  %3017 = extractvalue %dx.types.CBufRet.f32 %1566, 1
  %3018 = fsub fast float %1569, %3017
  %3019 = extractvalue %dx.types.CBufRet.f32 %1566, 2
  %3020 = fmul fast float %3018, %3019
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3022 = fsub fast float %3021, %3016
  %3023 = fmul fast float %3022, %3003
  %3024 = fadd fast float %3023, %3016
  %3025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.f32 %3025, 0
  %3027 = fsub fast float %3024, %3026
  %3028 = fmul fast float %3027, 1.000000e+01
  %3029 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3030 = fmul fast float %3029, %1562
  %3031 = fsub fast float %1562, %3030
  %3032 = fmul fast float %3031, %3024
  br label %3045

; <label>:3033                                    ; preds = %3002
  %3034 = fadd fast float %2886, %2883
  %3035 = fmul fast float %2984, %3034
  %3036 = fadd fast float %3035, %2987
  %3037 = fmul fast float %3011, %3006
  %3038 = fmul fast float %3011, %3009
  %3039 = fmul fast float %3011, %3036
  %3040 = call float @dx.op.binary.f32(i32 35, float %3038, float %3039)  ; FMax(a,b)
  %3041 = call float @dx.op.binary.f32(i32 35, float %3037, float %3040)  ; FMax(a,b)
  %3042 = call float @dx.op.binary.f32(i32 35, float %3041, float %1562)  ; FMax(a,b)
  %3043 = fcmp fast ugt float %3042, 0x3F10000000000000
  br i1 %3043, label %3045, label %3044

; <label>:3044                                    ; preds = %3033
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3045

; <label>:3045                                    ; preds = %3044, %3033, %3012
  %3046 = phi float [ %3014, %3012 ], [ %3037, %3044 ], [ %3037, %3033 ]
  %3047 = phi float [ %3032, %3012 ], [ %3038, %3044 ], [ %3038, %3033 ]
  %3048 = phi float [ %3031, %3012 ], [ %3039, %3044 ], [ %3039, %3033 ]
  %3049 = phi float [ %3031, %3012 ], [ %1562, %3044 ], [ %1562, %3033 ]
  %3050 = fadd fast float %563, 0x3FE3C6EF40000000
  %3051 = call float @dx.op.unary.f32(i32 22, float %3050)  ; Frc(value)
  %3052 = call float @dx.op.unary.f32(i32 23, float %3046)  ; Log(value)
  %3053 = fadd fast float %3052, -7.000000e+00
  %3054 = call float @dx.op.unary.f32(i32 21, float %3053)  ; Exp(value)
  %3055 = fmul fast float %3051, 2.000000e+00
  %3056 = fadd fast float %3055, -1.000000e+00
  %3057 = fmul fast float %3054, %3056
  %3058 = fcmp fast ogt float %3046, 0.000000e+00
  %3059 = select i1 %3058, float %3057, float 0.000000e+00
  %3060 = fadd fast float %3059, %3046
  %3061 = fadd fast float %563, 0x3FF3C6EF40000000
  %3062 = call float @dx.op.unary.f32(i32 22, float %3061)  ; Frc(value)
  %3063 = call float @dx.op.unary.f32(i32 23, float %3047)  ; Log(value)
  %3064 = fadd fast float %3063, -7.000000e+00
  %3065 = call float @dx.op.unary.f32(i32 21, float %3064)  ; Exp(value)
  %3066 = fmul fast float %3062, 2.000000e+00
  %3067 = fadd fast float %3066, -1.000000e+00
  %3068 = fmul fast float %3065, %3067
  %3069 = fcmp fast ogt float %3047, 0.000000e+00
  %3070 = select i1 %3069, float %3068, float 0.000000e+00
  %3071 = fadd fast float %3070, %3047
  %3072 = fadd fast float %563, 0x3FFDAA66E0000000
  %3073 = call float @dx.op.unary.f32(i32 22, float %3072)  ; Frc(value)
  %3074 = call float @dx.op.unary.f32(i32 23, float %3048)  ; Log(value)
  %3075 = fadd fast float %3074, -6.000000e+00
  %3076 = call float @dx.op.unary.f32(i32 21, float %3075)  ; Exp(value)
  %3077 = fmul fast float %3073, 2.000000e+00
  %3078 = fadd fast float %3077, -1.000000e+00
  %3079 = fmul fast float %3076, %3078
  %3080 = fcmp fast ogt float %3048, 0.000000e+00
  %3081 = select i1 %3080, float %3079, float 0.000000e+00
  %3082 = fadd fast float %3081, %3048
  %3083 = select i1 %134, float %3047, float %3071
  %3084 = select i1 %134, float %3048, float %3082
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3085 = call float @dx.op.binary.f32(i32 36, float %3060, float 3.225500e+04)  ; FMin(a,b)
  %3086 = call float @dx.op.binary.f32(i32 36, float %3083, float 3.225500e+04)  ; FMin(a,b)
  %3087 = call float @dx.op.binary.f32(i32 36, float %3084, float 3.225500e+04)  ; FMin(a,b)
  %3088 = call float @dx.op.binary.f32(i32 36, float %3049, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3085)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3086)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3087)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3088)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3049)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3049)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3049)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3049)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!42 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
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
!55 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 4, i8 0, !54}
!56 = !{i32 3}
!57 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 5, i8 0, !48}
!58 = !{i32 4}
!59 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !60, i8 3, i32 1, i8 2, i32 6, i8 0, !51}
!60 = !{i32 5}
!61 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, null}
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

