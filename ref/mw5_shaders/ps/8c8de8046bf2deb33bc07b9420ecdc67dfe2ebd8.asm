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
; COLOR                    3   xyz         8     NONE    uint   xyz 
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
; shader hash: 11be496f5ecadb1c04b1b442521fb9f6
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 33, 34 }
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
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = alloca [3 x float], align 4
  %57 = alloca [3 x float], align 4
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = fmul fast float %61, %52
  %63 = fmul fast float %61, %53
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %67 = fmul fast float %62, 2.000000e+00
  %68 = fmul fast float %67, %65
  %69 = fmul fast float %63, 2.000000e+00
  %70 = fmul fast float %69, %66
  %71 = fsub fast float 1.000000e+00, %68
  %72 = fsub fast float 1.000000e+00, %70
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fmul fast float %71, %74
  %78 = fmul fast float %71, %75
  %79 = fmul fast float %71, %76
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %72, %81
  %85 = fmul fast float %72, %82
  %86 = fmul fast float %72, %83
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fadd fast float %84, %88
  %92 = fadd fast float %91, %77
  %93 = fadd fast float %85, %89
  %94 = fadd fast float %93, %78
  %95 = fadd fast float %86, %90
  %96 = fadd fast float %95, %79
  %97 = fmul fast float %92, %55
  %98 = fmul fast float %94, %55
  %99 = fmul fast float %96, %55
  %100 = fmul fast float %44, %41
  %101 = fmul fast float %45, %40
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %45, %39
  %104 = fmul fast float %43, %41
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %43, %40
  %107 = fmul fast float %44, %39
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %102, %42
  %110 = fmul fast float %105, %42
  %111 = fmul fast float %108, %42
  %112 = bitcast i32 %31 to float
  %113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.i32 %113, 3
  %115 = and i32 %114, 3
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %114, 4
  %118 = icmp ne i32 %117, 0
  %119 = and i1 %116, %118
  br i1 %119, label %120, label %129

; <label>:120                                     ; preds = %0
  %121 = fmul fast float %66, %63
  %122 = fmul fast float %65, %62
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %122, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fsub fast float 1.000000e+00, %124
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = fcmp fast olt float %125, %127
  br label %132

; <label>:129                                     ; preds = %0
  %130 = icmp eq i32 %117, 0
  %131 = and i1 %116, %130
  br label %132

; <label>:132                                     ; preds = %129, %120
  %133 = phi i1 [ %128, %120 ], [ %131, %129 ]
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %62
  %138 = fmul fast float %136, %63
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 114688
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %142, float %137, float 0.000000e+00
  %144 = select i1 %142, float %138, float 0.000000e+00
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fmul fast float %146, 2.550000e+02
  %148 = fptoui float %147 to i32
  %149 = select i1 %142, i32 %148, i32 0
  %150 = mul i32 %30, 208
  %151 = add i32 %150, 188
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %114, 114688
  %155 = and i32 %114, 8
  %156 = icmp ne i32 %155, 0
  %157 = or i1 %133, %156
  %158 = select i1 %157, i32 %154, i32 16384
  %159 = and i32 %158, %153
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

; <label>:161                                     ; preds = %132
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %162

; <label>:162                                     ; preds = %161, %132
  %163 = and i32 %153, 512
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %189, label %165

; <label>:165                                     ; preds = %162
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %169 = fmul fast float %167, %62
  %170 = fmul fast float %168, %63
  %171 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %173 = fdiv fast float %171, %172
  %174 = fcmp fast ogt float %173, 0x3FFC71C720000000
  br i1 %174, label %175, label %181

; <label>:175                                     ; preds = %165
  %176 = fdiv fast float 0x3FFC71C720000000, %173
  %177 = fmul fast float %176, %170
  %178 = fsub fast float 1.000000e+00, %176
  %179 = fmul fast float %178, 5.000000e-01
  %180 = fadd fast float %179, %177
  br label %189

; <label>:181                                     ; preds = %165
  %182 = fcmp fast olt float %173, 0x3FFC71C720000000
  br i1 %182, label %183, label %189

; <label>:183                                     ; preds = %181
  %184 = fmul fast float %169, 5.625000e-01
  %185 = fmul fast float %184, %173
  %186 = fmul fast float %173, 2.812500e-01
  %187 = fsub fast float 5.000000e-01, %186
  %188 = fadd fast float %187, %185
  br label %189

; <label>:189                                     ; preds = %183, %181, %175, %162
  %190 = phi float [ %46, %162 ], [ %169, %175 ], [ %188, %183 ], [ %169, %181 ]
  %191 = phi float [ %47, %162 ], [ %180, %175 ], [ %170, %183 ], [ %170, %181 ]
  %192 = add i32 %32, 72
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = bitcast i32 %194 to float
  %197 = bitcast i32 %195 to float
  %198 = fmul fast float %196, %46
  %199 = fmul fast float %197, %47
  %200 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %201 = call float @dx.op.unary.f32(i32 22, float %199)  ; Frc(value)
  %202 = and i32 %153, 16
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %203, float 1.000000e+00, float %51
  %205 = add i32 %32, 128
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = add i32 %207, 0
  %209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %209, %dx.types.Handle %59, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float %211, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fmul fast float %213, %204
  %215 = icmp eq i32 %202, 0
  br i1 %215, label %235, label %216, !dx.controlflow.hints !69

; <label>:216                                     ; preds = %189
  %217 = add i32 %150, 64
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fadd fast float %219, 1.000000e+00
  %221 = fmul fast float %220, %51
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

; <label>:235                                     ; preds = %216, %189
  %236 = phi float [ %234, %216 ], [ %214, %189 ]
  %237 = fcmp fast ogt float %236, 0.000000e+00
  br i1 %237, label %239, label %238

; <label>:238                                     ; preds = %235
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %239

; <label>:239                                     ; preds = %238, %235
  %240 = call float @dx.op.unary.f32(i32 7, float %236)  ; Saturate(value)
  %241 = fmul fast float %62, 5.000000e-01
  %242 = fmul fast float %63, 5.000000e-01
  %243 = fptosi float %241 to i32
  %244 = fptosi float %242 to i32
  %245 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = lshr i32 %246, 18
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F4C00EBA0000000
  %250 = call float @dx.op.unary.f32(i32 21, float %249)  ; Exp(value)
  %251 = fadd fast float %250, -1.000000e+00
  %252 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %253 = extractvalue %dx.types.Dimensions %252, 0
  %254 = sitofp i32 %253 to float
  %255 = extractvalue %dx.types.Dimensions %252, 1
  %256 = sitofp i32 %255 to float
  %257 = fcmp fast oge float %241, %254
  %258 = fcmp fast oge float %242, %256
  %259 = or i1 %257, %258
  %260 = select i1 %259, float 0x4197782600000000, float %251
  %261 = fsub fast float %260, %55
  %262 = fcmp fast ogt float %261, 0.000000e+00
  %263 = and i32 %149, -2
  %264 = icmp eq i32 %263, 2
  %265 = and i1 %264, %262
  %266 = xor i1 %262, true
  %267 = icmp eq i32 %149, 1
  %268 = and i1 %267, %266
  %269 = or i1 %265, %268
  %270 = and i32 %153, 262144
  %271 = icmp ne i32 %270, 0
  %272 = and i1 %271, %269
  %273 = xor i1 %269, true
  %274 = and i32 %153, 131072
  %275 = icmp ne i32 %274, 0
  %276 = and i1 %275, %273
  %277 = or i1 %272, %276
  br i1 %277, label %278, label %279

; <label>:278                                     ; preds = %239
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %279

; <label>:279                                     ; preds = %278, %239
  %280 = and i32 %153, 32
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %532, label %282, !dx.controlflow.hints !70

; <label>:282                                     ; preds = %279
  %283 = add i32 %150, 80
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = extractvalue %dx.types.ResRet.f32 %284, 3
  %289 = add i32 %150, 96
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = add i32 %150, 112
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = extractvalue %dx.types.ResRet.f32 %295, 3
  %300 = add i32 %150, 128
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = extractvalue %dx.types.ResRet.f32 %301, 3
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 4096
  %309 = icmp ne i32 %308, 0
  %310 = fcmp fast une float %293, 0.000000e+00
  %311 = and i32 %307, 64
  %312 = icmp ne i32 %311, 0
  %313 = and i32 %307, 128
  %314 = icmp eq i32 %313, 0
  %315 = and i32 %307, 2048
  %316 = icmp eq i32 %315, 0
  %317 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %318 = extractvalue %dx.types.Dimensions %317, 0
  %319 = sitofp i32 %318 to float
  %320 = extractvalue %dx.types.Dimensions %317, 1
  %321 = sitofp i32 %320 to float
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %325 = fmul fast float %323, %62
  %326 = fmul fast float %324, %63
  %327 = fmul fast float %325, %319
  %328 = fmul fast float %326, %321
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = fsub fast float -0.000000e+00, %330
  %332 = fptoui float %331 to i32
  %333 = fptoui float %327 to i32
  %334 = fptoui float %328 to i32
  %335 = and i32 %332, 31
  %336 = lshr i32 %333, %335
  %337 = lshr i32 %334, %335
  %338 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %332, i32 %336, i32 %337, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = fcmp fast ogt float %339, -1.000000e+00
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %343 = select i1 %340, float %342, float 1.000000e+00
  %344 = fadd fast float %339, 1.000000e+00
  %345 = fmul fast float %343, %344
  %346 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %347 = extractvalue %dx.types.CBufRet.f32 %341, 3
  %348 = fcmp fast oge float %346, %347
  %349 = select i1 %348, float 0x4197782600000000, float %346
  br i1 %316, label %427, label %350, !dx.controlflow.hints !71

; <label>:350                                     ; preds = %282
  %351 = fmul fast float %67, %323
  %352 = fmul fast float %69, %324
  %353 = fsub fast float 1.000000e+00, %351
  %354 = fsub fast float 1.000000e+00, %352
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = fmul fast float %353, %356
  %360 = fmul fast float %353, %357
  %361 = fmul fast float %353, %358
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %365 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %366 = fmul fast float %354, %363
  %367 = fmul fast float %354, %364
  %368 = fmul fast float %354, %365
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = fadd fast float %366, %370
  %374 = fadd fast float %373, %359
  %375 = fadd fast float %367, %371
  %376 = fadd fast float %375, %360
  %377 = fadd fast float %368, %372
  %378 = fadd fast float %377, %361
  %379 = fmul fast float %374, %349
  %380 = fmul fast float %376, %349
  %381 = fmul fast float %378, %349
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = fsub fast float %383, %33
  %387 = fadd fast float %386, %379
  %388 = fsub fast float %384, %34
  %389 = fadd fast float %388, %380
  %390 = fsub fast float %385, %35
  %391 = fadd fast float %390, %381
  %392 = fmul fast float %36, %36
  %393 = call float @dx.op.dot3.f32(i32 55, float %387, float %389, float %391, float %387, float %389, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %394 = fsub fast float %392, %393
  %395 = fmul fast float %292, %392
  %396 = fmul fast float %291, %392
  %397 = fcmp fast olt float %394, %395
  %398 = fcmp fast ogt float %394, %396
  %399 = or i1 %397, %398
  %400 = select i1 %399, float 0.000000e+00, float %394
  %401 = fsub fast float %291, %292
  %402 = fmul fast float %401, %392
  %403 = fsub fast float %400, %395
  %404 = fdiv fast float %403, %402
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, 2.000000e+00
  %407 = fsub fast float 3.000000e+00, %406
  %408 = fmul fast float %405, %405
  %409 = fmul fast float %408, %407
  %410 = fmul fast float %296, %48
  %411 = fmul fast float %297, %49
  %412 = fmul fast float %298, %50
  %413 = fsub fast float %410, %302
  %414 = fsub fast float %411, %303
  %415 = fsub fast float %412, %304
  %416 = fsub fast float %299, %305
  %417 = fmul fast float %409, %413
  %418 = fmul fast float %409, %414
  %419 = fmul fast float %409, %415
  %420 = fmul fast float %409, %416
  %421 = fadd fast float %417, %302
  %422 = fadd fast float %418, %303
  %423 = fadd fast float %419, %304
  %424 = fadd fast float %420, %305
  %425 = fmul fast float %285, %285
  %426 = fmul fast float %425, %400
  br label %522

; <label>:427                                     ; preds = %282
  %428 = and i32 %307, 256
  %429 = icmp eq i32 %428, 0
  %430 = fsub fast float %349, %55
  br i1 %429, label %479, label %431

; <label>:431                                     ; preds = %427
  %432 = fadd fast float %291, %55
  %433 = fcmp fast olt float %349, %55
  %434 = fcmp fast ogt float %349, %432
  %435 = or i1 %433, %434
  %436 = select i1 %435, float 0.000000e+00, float %430
  %437 = call float @dx.op.unary.f32(i32 83, float %349)  ; DerivCoarseX(value)
  %438 = call float @dx.op.unary.f32(i32 84, float %349)  ; DerivCoarseY(value)
  %439 = fmul fast float %437, %437
  %440 = fmul fast float %438, %438
  %441 = fadd fast float %440, %439
  %442 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %443 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %444 = fmul fast float %443, %442
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = fmul fast float %445, %292
  %447 = fdiv fast float %430, %446
  %448 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %449 = fmul fast float %448, 2.000000e+00
  %450 = fsub fast float 3.000000e+00, %449
  %451 = fmul fast float %448, %448
  %452 = fmul fast float %451, %450
  %453 = fsub fast float %349, %432
  %454 = fadd fast float %453, %446
  %455 = fdiv fast float %454, %446
  %456 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %457 = fmul fast float %456, 2.000000e+00
  %458 = fsub fast float 3.000000e+00, %457
  %459 = fmul fast float %456, %456
  %460 = fmul fast float %459, %458
  %461 = fsub fast float %452, %460
  %462 = fmul fast float %296, %48
  %463 = fmul fast float %297, %49
  %464 = fmul fast float %298, %50
  %465 = fsub fast float %462, %302
  %466 = fsub fast float %463, %303
  %467 = fsub fast float %464, %304
  %468 = fsub fast float %299, %305
  %469 = fmul fast float %461, %465
  %470 = fmul fast float %461, %466
  %471 = fmul fast float %461, %467
  %472 = fmul fast float %461, %468
  %473 = fadd fast float %469, %302
  %474 = fadd fast float %470, %303
  %475 = fadd fast float %471, %304
  %476 = fadd fast float %472, %305
  %477 = fmul fast float %436, %285
  %478 = call float @dx.op.unary.f32(i32 6, float %477)  ; FAbs(value)
  br label %522

; <label>:479                                     ; preds = %427
  br i1 %310, label %480, label %493

; <label>:480                                     ; preds = %479
  %481 = fdiv fast float 5.000000e+01, %36
  %482 = select i1 %312, float %481, float 1.000000e+00
  %483 = fmul fast float %482, %285
  %484 = fmul fast float %200, 2.000000e+00
  %485 = fmul fast float %201, 2.000000e+00
  %486 = fadd fast float %484, -1.000000e+00
  %487 = fadd fast float %485, -1.000000e+00
  %488 = call float @dx.op.dot2.f32(i32 54, float %486, float %487, float %486, float %487)  ; Dot2(ax,ay,bx,by)
  %489 = fmul fast float %293, %36
  %490 = fmul fast float %489, %488
  %491 = fsub fast float %430, %490
  %492 = fmul fast float %483, %491
  br label %522

; <label>:493                                     ; preds = %479
  br i1 %314, label %514, label %494

; <label>:494                                     ; preds = %493
  %495 = fmul fast float %36, 0x3F947AE140000000
  %496 = select i1 %312, float %495, float 1.000000e+00
  %497 = fdiv fast float 1.000000e+00, %496
  %498 = fmul fast float %496, %286
  %499 = fmul fast float %496, %287
  %500 = fmul fast float %497, %288
  %501 = call float @dx.op.unary.f32(i32 6, float %430)  ; FAbs(value)
  %502 = fcmp fast olt float %501, %498
  br i1 %502, label %503, label %507, !dx.controlflow.hints !72

; <label>:503                                     ; preds = %494
  %504 = fmul fast float %497, %285
  %505 = fmul fast float %504, %501
  %506 = call float @dx.op.unary.f32(i32 6, float %505)  ; FAbs(value)
  br label %522

; <label>:507                                     ; preds = %494
  %508 = fcmp fast ogt float %501, %499
  br i1 %508, label %509, label %522

; <label>:509                                     ; preds = %507
  %510 = fsub fast float %501, %499
  %511 = fmul fast float %500, %510
  %512 = call float @dx.op.unary.f32(i32 6, float %511)  ; FAbs(value)
  %513 = fsub fast float 1.000000e+00, %512
  br label %522

; <label>:514                                     ; preds = %493
  %515 = fdiv fast float 5.000000e+01, %36
  %516 = select i1 %312, float %515, float 1.000000e+00
  %517 = fmul fast float %516, %285
  %518 = call float @dx.op.unary.f32(i32 6, float %261)  ; FAbs(value)
  %519 = select i1 %309, float %518, float 0x47EFFFFFE0000000
  %520 = call float @dx.op.binary.f32(i32 36, float %430, float %519)  ; FMin(a,b)
  %521 = fmul fast float %517, %520
  br label %522

; <label>:522                                     ; preds = %514, %509, %507, %503, %480, %431, %350
  %523 = phi float [ %426, %350 ], [ %478, %431 ], [ %492, %480 ], [ %521, %514 ], [ %506, %503 ], [ %513, %509 ], [ %501, %507 ]
  %524 = phi float [ %421, %350 ], [ %473, %431 ], [ %48, %480 ], [ %48, %514 ], [ %48, %503 ], [ %48, %509 ], [ %48, %507 ]
  %525 = phi float [ %422, %350 ], [ %474, %431 ], [ %49, %480 ], [ %49, %514 ], [ %49, %503 ], [ %49, %509 ], [ %49, %507 ]
  %526 = phi float [ %423, %350 ], [ %475, %431 ], [ %50, %480 ], [ %50, %514 ], [ %50, %503 ], [ %50, %509 ], [ %50, %507 ]
  %527 = phi float [ %424, %350 ], [ %476, %431 ], [ 1.000000e+00, %480 ], [ 1.000000e+00, %514 ], [ 1.000000e+00, %503 ], [ 1.000000e+00, %509 ], [ 1.000000e+00, %507 ]
  %528 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %529 = fmul fast float %528, %51
  %530 = fmul fast float %527, %240
  %531 = fmul fast float %530, %528
  br label %532

; <label>:532                                     ; preds = %522, %279
  %533 = phi float [ %524, %522 ], [ %48, %279 ]
  %534 = phi float [ %525, %522 ], [ %49, %279 ]
  %535 = phi float [ %526, %522 ], [ %50, %279 ]
  %536 = phi float [ %531, %522 ], [ %240, %279 ]
  %537 = phi float [ %529, %522 ], [ %51, %279 ]
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 2
  %540 = fptosi float %55 to i32
  %541 = sitofp i32 %540 to float
  %542 = fadd fast float %539, %541
  %543 = fmul fast float %542, 0x3FE3C6EF40000000
  %544 = frem fast float %62, 2.560000e+02
  %545 = frem fast float %63, 2.560000e+02
  %546 = fptoui float %544 to i32
  %547 = fptoui float %545 to i32
  %548 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %546, i32 %547, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = fadd fast float %549, %543
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = and i32 %153, 1
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %611, label %554, !dx.controlflow.hints !73

; <label>:554                                     ; preds = %532
  %555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 2
  %557 = extractvalue %dx.types.ResRet.f32 %555, 3
  %558 = add i32 %150, 16
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = add i32 %150, 32
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = extractvalue %dx.types.ResRet.f32 %564, 1
  %567 = extractvalue %dx.types.ResRet.f32 %564, 2
  %568 = and i32 %153, 2
  %569 = icmp eq i32 %568, 0
  %570 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = call float @dx.op.unary.f32(i32 25, float %570)  ; Rsqrt(value)
  %572 = fmul fast float %571, %43
  %573 = fmul fast float %571, %44
  %574 = fmul fast float %571, %45
  %575 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = call float @dx.op.unary.f32(i32 25, float %575)  ; Rsqrt(value)
  %577 = fmul fast float %576, %97
  %578 = fmul fast float %576, %98
  %579 = fmul fast float %576, %99
  %580 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %572, float %573, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %581 = fmul fast float %580, %580
  %582 = fmul fast float %581, %556
  %583 = fadd fast float %582, %557
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  br i1 %569, label %585, label %595, !dx.controlflow.hints !74

; <label>:585                                     ; preds = %554
  %586 = extractvalue %dx.types.ResRet.f32 %555, 1
  %587 = extractvalue %dx.types.ResRet.f32 %555, 0
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %590 = fmul fast float %589, %575
  %591 = fsub fast float %587, %590
  %592 = fmul fast float %591, %586
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fmul fast float %593, %584
  br label %595

; <label>:595                                     ; preds = %585, %554
  %596 = phi float [ %594, %585 ], [ %584, %554 ]
  %597 = fsub fast float %560, %565
  %598 = fsub fast float %561, %566
  %599 = fsub fast float %562, %567
  %600 = fmul fast float %596, %597
  %601 = fmul fast float %596, %598
  %602 = fmul fast float %596, %599
  %603 = fadd fast float %600, %565
  %604 = fadd fast float %601, %566
  %605 = fadd fast float %602, %567
  %606 = fmul fast float %603, %533
  %607 = fmul fast float %604, %534
  %608 = fmul fast float %605, %535
  %609 = fmul fast float %596, %536
  %610 = fmul fast float %596, %537
  br label %611

; <label>:611                                     ; preds = %595, %532
  %612 = phi float [ %606, %595 ], [ %533, %532 ]
  %613 = phi float [ %607, %595 ], [ %534, %532 ]
  %614 = phi float [ %608, %595 ], [ %535, %532 ]
  %615 = phi float [ %609, %595 ], [ %536, %532 ]
  %616 = phi float [ %610, %595 ], [ %537, %532 ]
  %617 = add i32 %32, 120
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = add i32 %32, 24
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %58, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = extractvalue %dx.types.ResRet.f32 %625, 3
  %630 = and i32 %624, 255
  %631 = uitofp i32 %630 to float
  %632 = lshr i32 %624, 8
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %629, %631
  %636 = fadd fast float %635, %634
  %637 = fmul fast float %636, 0x3F70101000000000
  %638 = add i32 %32, 56
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = lshr i32 %640, 8
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = lshr i32 %640, 16
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = fmul fast float %626, %612
  %653 = fmul fast float %643, %643
  %654 = fmul fast float %653, %652
  %655 = fmul fast float %627, %613
  %656 = fmul fast float %647, %647
  %657 = fmul fast float %656, %655
  %658 = fmul fast float %628, %614
  %659 = fmul fast float %651, %651
  %660 = fmul fast float %659, %658
  %661 = add i32 %32, 28
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %32, 124
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = add i32 %666, 0
  %668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %668, %dx.types.Handle %58, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 3
  %673 = and i32 %663, 255
  %674 = uitofp i32 %673 to float
  %675 = lshr i32 %663, 8
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = lshr i32 %663, 16
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101000000000
  %682 = fmul fast float %670, %674
  %683 = fadd fast float %682, %677
  %684 = fmul fast float %683, 0x3F70101000000000
  %685 = fadd fast float %671, -5.000000e-01
  %686 = fadd fast float %672, -5.000000e-01
  %687 = fmul fast float %685, %681
  %688 = fmul fast float %686, %681
  %689 = fadd fast float %687, 5.000000e-01
  %690 = fadd fast float %688, 5.000000e-01
  %691 = fmul fast float %689, 2.000000e+00
  %692 = fadd fast float %691, -1.000000e+00
  %693 = fmul fast float %690, 2.000000e+00
  %694 = fadd fast float %693, -1.000000e+00
  %695 = fadd fast float %692, %694
  %696 = fmul fast float %695, 5.000000e-01
  %697 = fsub fast float %692, %694
  %698 = fmul fast float %697, 5.000000e-01
  %699 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %700 = fsub fast float 1.000000e+00, %699
  %701 = call float @dx.op.unary.f32(i32 6, float %698)  ; FAbs(value)
  %702 = fsub fast float %700, %701
  %703 = call float @dx.op.dot3.f32(i32 55, float %696, float %698, float %702, float %696, float %698, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = call float @dx.op.unary.f32(i32 25, float %703)  ; Rsqrt(value)
  %705 = fmul fast float %696, %704
  %706 = fmul fast float %698, %704
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %709 = fcmp fast ogt float %708, 0.000000e+00
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 1
  br i1 %709, label %712, label %737

; <label>:712                                     ; preds = %611
  %713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = extractvalue %dx.types.ResRet.f32 %713, 3
  %718 = fmul fast float %711, %717
  %719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = extractvalue %dx.types.ResRet.f32 %719, 1
  %722 = extractvalue %dx.types.ResRet.f32 %719, 2
  %723 = extractvalue %dx.types.ResRet.f32 %719, 3
  %724 = fmul fast float %711, %720
  %725 = fmul fast float %711, %721
  %726 = fmul fast float %711, %722
  %727 = fmul fast float %711, %723
  %728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 2
  %732 = extractvalue %dx.types.ResRet.f32 %728, 3
  %733 = fmul fast float %711, %729
  %734 = fmul fast float %711, %730
  %735 = fmul fast float %711, %731
  %736 = fmul fast float %711, %732
  br label %742

; <label>:737                                     ; preds = %611
  %738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %37, float %38, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  br label %742

; <label>:742                                     ; preds = %737, %712
  %743 = phi float [ %733, %712 ], [ 0.000000e+00, %737 ]
  %744 = phi float [ %734, %712 ], [ 0.000000e+00, %737 ]
  %745 = phi float [ %735, %712 ], [ 0.000000e+00, %737 ]
  %746 = phi float [ %736, %712 ], [ 0.000000e+00, %737 ]
  %747 = phi float [ %724, %712 ], [ 0.000000e+00, %737 ]
  %748 = phi float [ %725, %712 ], [ 0.000000e+00, %737 ]
  %749 = phi float [ %726, %712 ], [ 0.000000e+00, %737 ]
  %750 = phi float [ %727, %712 ], [ 0.000000e+00, %737 ]
  %751 = phi float [ %714, %712 ], [ %739, %737 ]
  %752 = phi float [ %715, %712 ], [ %740, %737 ]
  %753 = phi float [ %716, %712 ], [ %741, %737 ]
  %754 = phi float [ %718, %712 ], [ 0.000000e+00, %737 ]
  %755 = fmul float %711, %753
  %756 = fmul float %711, %752
  %757 = fmul float %711, %751
  %758 = call float @dx.op.dot2.f32(i32 54, float %705, float %706, float %705, float %706)  ; Dot2(ax,ay,bx,by)
  %759 = fsub fast float 1.000000e+00, %758
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = call float @dx.op.unary.f32(i32 24, float %760)  ; Sqrt(value)
  %762 = fmul fast float %761, %43
  %763 = fmul fast float %761, %44
  %764 = fmul fast float %761, %45
  %765 = fmul fast float %705, %39
  %766 = fmul fast float %705, %40
  %767 = fmul fast float %705, %41
  %768 = fmul fast float %109, %706
  %769 = fmul fast float %110, %706
  %770 = fmul fast float %111, %706
  %771 = fadd fast float %768, %765
  %772 = fadd fast float %771, %762
  %773 = fadd fast float %769, %766
  %774 = fadd fast float %773, %763
  %775 = fadd fast float %770, %767
  %776 = fadd fast float %775, %764
  %777 = call float @dx.op.dot3.f32(i32 55, float %772, float %774, float %776, float %772, float %774, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = call float @dx.op.unary.f32(i32 25, float %777)  ; Rsqrt(value)
  %779 = fmul fast float %772, %778
  %780 = fmul fast float %774, %778
  %781 = fmul fast float %776, %778
  %782 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 25, float %782)  ; Rsqrt(value)
  %784 = fmul fast float %783, %97
  %785 = fmul fast float %783, %98
  %786 = fmul fast float %783, %99
  %787 = fsub fast float -0.000000e+00, %784
  %788 = fsub fast float -0.000000e+00, %785
  %789 = fsub fast float -0.000000e+00, %786
  %790 = fadd fast float %637, 0xBFB99999A0000000
  %791 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %792 = fmul fast float %791, 0x3FF1C71C80000000
  %793 = call float @dx.op.binary.f32(i32 36, float %637, float 0x3FB99999A0000000)  ; FMin(a,b)
  %794 = fsub fast float 1.000000e+00, %792
  %795 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %796 = fmul fast float %795, %654
  %797 = fmul fast float %795, %657
  %798 = fmul fast float %795, %660
  %799 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %800 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %801 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %802 = fmul fast float %792, %654
  %803 = fmul fast float %792, %657
  %804 = fmul fast float %792, %660
  %805 = fadd fast float %802, %793
  %806 = fadd fast float %803, %793
  %807 = fadd fast float %804, %793
  %808 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %809 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %810 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %811 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %812 = call float @dx.op.dot3.f32(i32 55, float %799, float %800, float %801, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %813 = add i32 %32, 32
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 255
  %817 = uitofp i32 %816 to float
  %818 = lshr i32 %815, 8
  %819 = and i32 %818, 255
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, %812
  %822 = fadd fast float %821, %817
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %825 = add i32 %32, 132
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = add i32 %827, 0
  %829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %829, %dx.types.Handle %59, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = and i32 %153, 8192
  %833 = icmp eq i32 %832, 0
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  br i1 %833, label %846, label %836, !dx.controlflow.hints !75

; <label>:836                                     ; preds = %742
  %837 = add i32 %150, 176
  %838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  %840 = extractvalue %dx.types.ResRet.f32 %838, 1
  %841 = fcmp fast oge float %839, 0.000000e+00
  %842 = select i1 %841, float %839, float %835
  %843 = fmul fast float %831, %112
  %844 = fmul fast float %843, %840
  %845 = fadd fast float %844, %842
  br label %857

; <label>:846                                     ; preds = %742
  %847 = add i32 %32, 104
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = extractvalue %dx.types.ResRet.i32 %848, 1
  %851 = bitcast i32 %849 to float
  %852 = bitcast i32 %850 to float
  %853 = fcmp fast oge float %851, 0.000000e+00
  %854 = select i1 %853, float %851, float %835
  %855 = fmul fast float %852, %831
  %856 = fadd fast float %854, %855
  br label %857

; <label>:857                                     ; preds = %846, %836
  %858 = phi float [ %845, %836 ], [ %856, %846 ]
  %859 = fmul fast float %616, %615
  %860 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = lshr i32 %861, 18
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F4C00EBA0000000
  %865 = call float @dx.op.unary.f32(i32 21, float %864)  ; Exp(value)
  %866 = fadd fast float %865, -1.000000e+00
  %867 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %868 = extractvalue %dx.types.Dimensions %867, 0
  %869 = sitofp i32 %868 to float
  %870 = extractvalue %dx.types.Dimensions %867, 1
  %871 = sitofp i32 %870 to float
  %872 = fcmp fast oge float %241, %869
  %873 = fcmp fast oge float %242, %871
  %874 = or i1 %872, %873
  %875 = select i1 %874, float 0x4197782600000000, float %866
  %876 = icmp eq i32 %149, 3
  %877 = fcmp fast ogt float %55, %875
  %878 = and i1 %267, %877
  %879 = or i1 %876, %878
  %880 = icmp eq i32 %149, 2
  %881 = fcmp fast ole float %55, %875
  %882 = and i1 %880, %881
  %883 = or i1 %882, %879
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %886 = fcmp fast ogt float %885, 0.000000e+00
  br i1 %886, label %887, label %894

; <label>:887                                     ; preds = %857
  %888 = fmul fast float %780, 0xBFDF454380000000
  %889 = fmul fast float %781, 0x3FDF454380000000
  %890 = fmul fast float %779, 0xBFDF454380000000
  %891 = call float @dx.op.dot4.f32(i32 56, float %757, float %756, float %755, float %754, float 0x3FD20DD760000000, float %888, float %889, float %890)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %892 = call float @dx.op.dot4.f32(i32 56, float %747, float %748, float %749, float %750, float 0x3FD20DD760000000, float %888, float %889, float %890)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %893 = call float @dx.op.dot4.f32(i32 56, float %743, float %744, float %745, float %746, float 0x3FD20DD760000000, float %888, float %889, float %890)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %894

; <label>:894                                     ; preds = %887, %857
  %895 = phi float [ %891, %887 ], [ %757, %857 ]
  %896 = phi float [ %892, %887 ], [ %756, %857 ]
  %897 = phi float [ %893, %887 ], [ %755, %857 ]
  %898 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %787, float %788, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  br i1 %886, label %900, label %1000

; <label>:900                                     ; preds = %894
  %901 = fsub fast float -0.000000e+00, %746
  %902 = fsub fast float %901, %750
  %903 = fsub fast float %902, %754
  %904 = fsub fast float -0.000000e+00, %744
  %905 = fsub fast float %904, %748
  %906 = fsub fast float %905, %756
  %907 = fadd fast float %749, %745
  %908 = fadd fast float %907, %755
  %909 = call float @dx.op.dot3.f32(i32 55, float %903, float %906, float %908, float %903, float %906, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = call float @dx.op.unary.f32(i32 25, float %909)  ; Rsqrt(value)
  %911 = fmul fast float %910, %903
  %912 = fmul fast float %910, %906
  %913 = fmul fast float %910, %908
  %914 = fmul fast float %912, 0xBFD4D8D7C0000000
  %915 = fmul fast float %913, 0x3FD4D8D7C0000000
  %916 = fmul fast float %911, 0xBFD4D8D7C0000000
  %917 = call float @dx.op.dot4.f32(i32 56, float %757, float %756, float %755, float %754, float 0x3FD20DD760000000, float %914, float %915, float %916)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %918 = call float @dx.op.dot4.f32(i32 56, float %747, float %748, float %749, float %750, float 0x3FD20DD760000000, float %914, float %915, float %916)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %919 = call float @dx.op.dot4.f32(i32 56, float %743, float %744, float %745, float %746, float 0x3FD20DD760000000, float %914, float %915, float %916)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %920 = fmul fast float %917, 0x4003333340000000
  %921 = fmul fast float %757, 0x3FE5AA35A0000000
  %922 = fsub fast float %920, %921
  %923 = fmul fast float %918, 0x4003333340000000
  %924 = fmul fast float %747, 0x3FE5AA35A0000000
  %925 = fsub fast float %923, %924
  %926 = fmul fast float %919, 0x4003333340000000
  %927 = fmul fast float %743, 0x3FE5AA35A0000000
  %928 = fsub fast float %926, %927
  %929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %922)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %925)  ; FMax(a,b)
  %931 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %928)  ; FMax(a,b)
  %932 = fsub fast float %911, %784
  %933 = fsub fast float %912, %785
  %934 = fsub fast float %913, %786
  %935 = call float @dx.op.dot3.f32(i32 55, float %932, float %933, float %934, float %932, float %933, float %934)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = call float @dx.op.unary.f32(i32 25, float %935)  ; Rsqrt(value)
  %937 = fmul fast float %936, %932
  %938 = fmul fast float %936, %933
  %939 = fmul fast float %936, %934
  %940 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %911, float %912, float %913)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = call float @dx.op.unary.f32(i32 6, float %940)  ; FAbs(value)
  %942 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float %937, float %938, float %939)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = fmul fast float %942, %942
  %944 = call float @dx.op.dot3.f32(i32 55, float %787, float %788, float %789, float %937, float %938, float %939)  ; Dot3(ax,ay,az,bx,by,bz)
  %945 = call float @dx.op.unary.f32(i32 6, float %944)  ; FAbs(value)
  %946 = fsub fast float 1.000000e+00, %811
  %947 = call float @dx.op.binary.f32(i32 35, float %946, float 0x3F847AE140000000)  ; FMax(a,b)
  %948 = fmul fast float %947, %947
  %949 = fmul fast float %948, %948
  %950 = fsub fast float 1.000000e+00, %949
  %951 = fmul fast float %899, %899
  %952 = fmul fast float %951, %950
  %953 = fadd fast float %952, %949
  %954 = bitcast float %953 to i32
  %955 = ashr i32 %954, 1
  %956 = add nsw i32 %955, 532487669
  %957 = bitcast i32 %956 to float
  %958 = fadd fast float %957, %899
  %959 = fmul fast float %949, %943
  %960 = fsub fast float 1.000000e+00, %943
  %961 = fadd fast float %960, %959
  %962 = fmul fast float %941, %941
  %963 = fmul fast float %962, %950
  %964 = fadd fast float %963, %949
  %965 = bitcast float %964 to i32
  %966 = ashr i32 %965, 1
  %967 = add nsw i32 %966, 532487669
  %968 = bitcast i32 %967 to float
  %969 = fadd fast float %968, %941
  %970 = fmul fast float %961, %961
  %971 = fmul fast float %970, %958
  %972 = fmul fast float %971, %969
  %973 = fdiv fast float 1.000000e+00, %972
  %974 = fmul fast float %949, %973
  %975 = fsub fast float 1.000000e+00, %945
  %976 = bitcast float %975 to i32
  %977 = sitofp i32 %976 to float
  %978 = fmul fast float %977, 5.000000e+00
  %979 = fadd fast float %978, 0xC1EFBF8940000000
  %980 = fptosi float %979 to i32
  %981 = bitcast i32 %980 to float
  %982 = fsub fast float 1.000000e+00, %808
  %983 = fsub fast float 1.000000e+00, %809
  %984 = fsub fast float 1.000000e+00, %810
  %985 = fmul fast float %981, %982
  %986 = fmul fast float %981, %983
  %987 = fmul fast float %981, %984
  %988 = fadd fast float %985, %808
  %989 = fadd fast float %986, %809
  %990 = fadd fast float %987, %810
  %991 = fmul fast float %974, %929
  %992 = fmul fast float %991, %988
  %993 = fmul fast float %974, %930
  %994 = fmul fast float %993, %989
  %995 = fmul fast float %974, %931
  %996 = fmul fast float %995, %990
  %997 = call float @dx.op.binary.f32(i32 35, float %992, float 0.000000e+00)  ; FMax(a,b)
  %998 = call float @dx.op.binary.f32(i32 35, float %994, float 0.000000e+00)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 35, float %996, float 0.000000e+00)  ; FMax(a,b)
  br label %1000

; <label>:1000                                    ; preds = %900, %894
  %1001 = phi float [ %997, %900 ], [ 0.000000e+00, %894 ]
  %1002 = phi float [ %998, %900 ], [ 0.000000e+00, %894 ]
  %1003 = phi float [ %999, %900 ], [ 0.000000e+00, %894 ]
  %1004 = fmul fast float %899, 9.843750e-01
  %1005 = fmul fast float %811, 9.843750e-01
  %1006 = fadd fast float %1004, 7.812500e-03
  %1007 = fadd fast float %1005, 7.812500e-03
  %1008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1011 = fmul fast float %1009, %808
  %1012 = fmul fast float %1009, %809
  %1013 = fmul fast float %1009, %810
  %1014 = fadd fast float %1011, %1010
  %1015 = fadd fast float %1012, %1010
  %1016 = fadd fast float %1013, %1010
  %1017 = call float @dx.op.binary.f32(i32 35, float %1015, float %1016)  ; FMax(a,b)
  %1018 = call float @dx.op.binary.f32(i32 35, float %1014, float %1017)  ; FMax(a,b)
  %1019 = fsub fast float 1.000000e+00, %1018
  %1020 = call float @dx.op.dot3.f32(i32 55, float %784, float %785, float %786, float %779, float %780, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = fmul fast float %1020, 2.000000e+00
  %1022 = fmul fast float %1021, %779
  %1023 = fmul fast float %1021, %780
  %1024 = fmul fast float %1021, %781
  %1025 = fsub fast float %784, %1022
  %1026 = fsub fast float %785, %1023
  %1027 = fsub fast float %786, %1024
  br i1 %886, label %1028, label %1035

; <label>:1028                                    ; preds = %1000
  %1029 = fmul fast float %1026, 0xBFDF454380000000
  %1030 = fmul fast float %1027, 0x3FDF454380000000
  %1031 = fmul fast float %1025, 0xBFDF454380000000
  %1032 = call float @dx.op.dot4.f32(i32 56, float %757, float %756, float %755, float %754, float 0x3FD20DD760000000, float %1029, float %1030, float %1031)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1033 = call float @dx.op.dot4.f32(i32 56, float %747, float %748, float %749, float %750, float 0x3FD20DD760000000, float %1029, float %1030, float %1031)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1034 = call float @dx.op.dot4.f32(i32 56, float %743, float %744, float %745, float %746, float 0x3FD20DD760000000, float %1029, float %1030, float %1031)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1035

; <label>:1035                                    ; preds = %1028, %1000
  %1036 = phi float [ %1032, %1028 ], [ %757, %1000 ]
  %1037 = phi float [ %1033, %1028 ], [ %756, %1000 ]
  %1038 = phi float [ %1034, %1028 ], [ %755, %1000 ]
  %1039 = call float @dx.op.dot3.f32(i32 55, float %1036, float %1037, float %1038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 3
  %1043 = fmul fast float %1041, %62
  %1044 = fmul fast float %1042, %63
  %1045 = fptoui float %1043 to i32
  %1046 = fptoui float %1044 to i32
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1050 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1051 = fadd fast float %55, -4.000000e+00
  %1052 = call float @dx.op.binary.f32(i32 35, float %1051, float 0.000000e+00)  ; FMax(a,b)
  %1053 = fadd fast float %1052, %1048
  %1054 = fmul fast float %1053, %1049
  %1055 = call float @dx.op.unary.f32(i32 23, float %1054)  ; Log(value)
  %1056 = fmul fast float %1055, %1050
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 2
  %1059 = fmul fast float %1056, %1058
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.i32 %1061, 1
  %1063 = add i32 %1062, -1
  %1064 = uitofp i32 %1062 to float
  %1065 = fmul fast float %1064, %1060
  %1066 = fptoui float %1065 to i32
  %1067 = call i32 @dx.op.binary.i32(i32 40, i32 %1066, i32 %1063)  ; UMin(a,b)
  %1068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.i32 %1068, 2
  %1070 = extractvalue %dx.types.CBufRet.i32 %1068, 3
  %1071 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1046, i32 %1069, i32 %1045)  ; UMad(a,b,c)
  %1072 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1067, i32 %1070, i32 %1071)  ; UMad(a,b,c)
  %1073 = call float @dx.op.binary.f32(i32 35, float %55, float 0.000000e+00)  ; FMax(a,b)
  %1074 = fptoui float %1073 to i32
  %1075 = lshr i32 %1074, 5
  %1076 = call i32 @dx.op.binary.i32(i32 40, i32 %1075, i32 8191)  ; UMin(a,b)
  %1077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.i32 %1077, 2
  %1079 = add nsw i32 %1078, -1
  %1080 = call i32 @dx.op.binary.i32(i32 37, i32 %1079, i32 0)  ; IMax(a,b)
  %1081 = shl i32 %1076, 2
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = lshr i32 %1083, 16
  %1085 = and i32 %1083, 65535
  %1086 = lshr i32 %1083, 21
  %1087 = lshr i32 %1085, 5
  %1088 = call i32 @dx.op.binary.i32(i32 40, i32 %1087, i32 %1080)  ; UMin(a,b)
  %1089 = icmp ugt i32 %1086, %1088
  br i1 %1089, label %1452, label %1090

; <label>:1090                                    ; preds = %1035
  br label %1091

; <label>:1091                                    ; preds = %1444, %1090
  %1092 = phi float [ %1445, %1444 ], [ 0.000000e+00, %1090 ]
  %1093 = phi float [ %1446, %1444 ], [ 0.000000e+00, %1090 ]
  %1094 = phi float [ %1447, %1444 ], [ 0.000000e+00, %1090 ]
  %1095 = phi float [ %1448, %1444 ], [ 1.000000e+00, %1090 ]
  %1096 = phi i32 [ %1449, %1444 ], [ %1086, %1090 ]
  %1097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.i32 %1097, 2
  %1099 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1072, i32 %1098, i32 %1096)  ; UMad(a,b,c)
  %1100 = shl i32 %1099, 2
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = shl i32 %1096, 5
  %1104 = sub nsw i32 %1084, %1103
  %1105 = call i32 @dx.op.binary.i32(i32 37, i32 %1104, i32 0)  ; IMax(a,b)
  %1106 = call i32 @dx.op.binary.i32(i32 38, i32 %1105, i32 31)  ; IMin(a,b)
  %1107 = sub nsw i32 1, %1084
  %1108 = add nsw i32 %1107, %1085
  %1109 = call i32 @dx.op.binary.i32(i32 37, i32 %1108, i32 0)  ; IMax(a,b)
  %1110 = call i32 @dx.op.binary.i32(i32 38, i32 %1109, i32 32)  ; IMin(a,b)
  %1111 = and i32 %1110, 31
  %1112 = shl i32 -1, %1111
  %1113 = xor i32 %1112, -1
  %1114 = and i32 %1106, 31
  %1115 = shl i32 %1113, %1114
  %1116 = icmp eq i32 %1110, 32
  %1117 = select i1 %1116, i32 -1, i32 %1115
  %1118 = and i32 %1117, %1102
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1444, label %1120

; <label>:1120                                    ; preds = %1091
  br label %1121

; <label>:1121                                    ; preds = %1227, %1120
  %1122 = phi float [ %1228, %1227 ], [ %1092, %1120 ]
  %1123 = phi float [ %1229, %1227 ], [ %1093, %1120 ]
  %1124 = phi float [ %1230, %1227 ], [ %1094, %1120 ]
  %1125 = phi float [ %1231, %1227 ], [ %1095, %1120 ]
  %1126 = phi i32 [ %1131, %1227 ], [ %1118, %1120 ]
  %1127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1126)  ; FirstbitLo(value)
  %1128 = add i32 %1127, %1103
  %1129 = and i32 %1127, 31
  %1130 = shl i32 1, %1129
  %1131 = xor i32 %1130, %1126
  %1132 = mul i32 %1128, 72
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = add i32 %1132, 12
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %1132, 16
  %1141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = add i32 %1132, 28
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = add i32 %1132, 32
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = add i32 %1132, 48
  %1155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = add i32 %1132, 56
  %1159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = add i32 %1132, 64
  %1163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = mul i32 %1128, 60
  %1167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1167, 2
  %1171 = add i32 %1166, 12
  %1172 = add i32 %1166, 48
  %1173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1177 = and i32 %1139, 32767
  %1178 = bitcast float %1134 to i32
  %1179 = icmp eq i32 %1178, -1
  %1180 = bitcast float %1135 to i32
  %1181 = and i32 %1139, 32768
  %1182 = icmp ne i32 %1181, 0
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = fsub fast float %1168, %1184
  %1188 = fsub fast float %1169, %1185
  %1189 = fsub fast float %1170, %1186
  %1190 = fsub fast float %97, %1187
  %1191 = fsub fast float %98, %1188
  %1192 = fsub fast float %99, %1189
  %1193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1194, float %1195, float %1196)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = add i32 %1166, 24
  %1199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1200, float %1201, float %1202)  ; Dot3(ax,ay,az,bx,by,bz)
  %1204 = add i32 %1166, 36
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1206, float %1207, float %1208)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = call float @dx.op.unary.f32(i32 6, float %1197)  ; FAbs(value)
  %1211 = call float @dx.op.unary.f32(i32 6, float %1203)  ; FAbs(value)
  %1212 = call float @dx.op.unary.f32(i32 6, float %1209)  ; FAbs(value)
  %1213 = fsub fast float %1174, %1210
  %1214 = fsub fast float %1175, %1211
  %1215 = fsub fast float %1176, %1212
  %1216 = fmul fast float %1213, %1142
  %1217 = fmul fast float %1214, %1143
  %1218 = fmul fast float %1215, %1144
  %1219 = call float @dx.op.binary.f32(i32 36, float %1217, float %1218)  ; FMin(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1216, float %1219)  ; FMin(a,b)
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = call float @dx.op.binary.f32(i32 36, float %1125, float %1221)  ; FMin(a,b)
  %1223 = uitofp i1 %1182 to float
  %1224 = fsub fast float 1.000000e+00, %1223
  %1225 = fmul fast float %1222, %1224
  %1226 = fcmp fast ogt float %1225, 0.000000e+00
  br i1 %1226, label %1233, label %1227

; <label>:1227                                    ; preds = %1375, %1121
  %1228 = phi float [ %1439, %1375 ], [ %1122, %1121 ]
  %1229 = phi float [ %1440, %1375 ], [ %1123, %1121 ]
  %1230 = phi float [ %1441, %1375 ], [ %1124, %1121 ]
  %1231 = phi float [ %1442, %1375 ], [ %1125, %1121 ]
  %1232 = icmp eq i32 %1126, %1130
  br i1 %1232, label %1443, label %1121

; <label>:1233                                    ; preds = %1121
  br i1 %1179, label %1291, label %1234

; <label>:1234                                    ; preds = %1233
  %1235 = fsub fast float -0.000000e+00, %1194
  %1236 = fsub fast float -0.000000e+00, %1195
  %1237 = fsub fast float -0.000000e+00, %1196
  %1238 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float %1235, float %1236, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = fsub fast float -0.000000e+00, %1238
  %1240 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1235, float %1236, float %1237)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = fadd fast float %1240, %1157
  %1242 = fadd fast float %1156, %1240
  %1243 = fsub fast float -0.000000e+00, %1242
  %1244 = fcmp ogt float %1238, -0.000000e+00
  %1245 = select i1 %1244, float %1243, float %1241
  %1246 = call float @dx.op.unary.f32(i32 6, float %1239)  ; FAbs(value)
  %1247 = fdiv fast float 1.000000e+00, %1246
  %1248 = fmul fast float %1245, %1247
  %1249 = call float @dx.op.binary.f32(i32 35, float %1248, float 0.000000e+00)  ; FMax(a,b)
  %1250 = fsub fast float -0.000000e+00, %1200
  %1251 = fsub fast float -0.000000e+00, %1201
  %1252 = fsub fast float -0.000000e+00, %1202
  %1253 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float %1250, float %1251, float %1252)  ; Dot3(ax,ay,az,bx,by,bz)
  %1254 = fsub fast float -0.000000e+00, %1253
  %1255 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1250, float %1251, float %1252)  ; Dot3(ax,ay,az,bx,by,bz)
  %1256 = fadd fast float %1255, %1161
  %1257 = fadd fast float %1160, %1255
  %1258 = fsub fast float -0.000000e+00, %1257
  %1259 = fcmp ogt float %1253, -0.000000e+00
  %1260 = select i1 %1259, float %1258, float %1256
  %1261 = call float @dx.op.unary.f32(i32 6, float %1254)  ; FAbs(value)
  %1262 = fdiv fast float 1.000000e+00, %1261
  %1263 = fmul fast float %1260, %1262
  %1264 = call float @dx.op.binary.f32(i32 35, float %1263, float 0.000000e+00)  ; FMax(a,b)
  %1265 = fsub fast float -0.000000e+00, %1206
  %1266 = fsub fast float -0.000000e+00, %1207
  %1267 = fsub fast float -0.000000e+00, %1208
  %1268 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float %1265, float %1266, float %1267)  ; Dot3(ax,ay,az,bx,by,bz)
  %1269 = fsub fast float -0.000000e+00, %1268
  %1270 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float %1265, float %1266, float %1267)  ; Dot3(ax,ay,az,bx,by,bz)
  %1271 = fadd fast float %1270, %1165
  %1272 = fadd fast float %1164, %1270
  %1273 = fsub fast float -0.000000e+00, %1272
  %1274 = fcmp ogt float %1268, -0.000000e+00
  %1275 = select i1 %1274, float %1273, float %1271
  %1276 = call float @dx.op.unary.f32(i32 6, float %1269)  ; FAbs(value)
  %1277 = fdiv fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1275, %1277
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float 0.000000e+00)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 36, float %1264, float %1279)  ; FMin(a,b)
  %1281 = call float @dx.op.binary.f32(i32 36, float %1249, float %1280)  ; FMin(a,b)
  %1282 = fmul fast float %1281, %1025
  %1283 = fmul fast float %1281, %1026
  %1284 = fmul fast float %1281, %1027
  %1285 = fadd fast float %1282, %97
  %1286 = fadd fast float %1283, %98
  %1287 = fadd fast float %1284, %99
  %1288 = fsub fast float %1285, %1134
  %1289 = fsub fast float %1286, %1135
  %1290 = fsub fast float %1287, %1136
  br label %1298

; <label>:1291                                    ; preds = %1233
  %1292 = fmul fast float %1025, 8.096000e+03
  %1293 = fmul fast float %1026, 8.096000e+03
  %1294 = fmul fast float %1027, 8.096000e+03
  %1295 = fadd fast float %1292, %97
  %1296 = fadd fast float %1293, %98
  %1297 = fadd fast float %1294, %99
  br label %1298

; <label>:1298                                    ; preds = %1291, %1234
  %1299 = phi float [ %1025, %1291 ], [ %1288, %1234 ]
  %1300 = phi float [ %1026, %1291 ], [ %1289, %1234 ]
  %1301 = phi float [ %1027, %1291 ], [ %1290, %1234 ]
  %1302 = phi float [ %1295, %1291 ], [ %1285, %1234 ]
  %1303 = phi float [ %1296, %1291 ], [ %1286, %1234 ]
  %1304 = phi float [ %1297, %1291 ], [ %1287, %1234 ]
  %1305 = fcmp fast olt float %1153, 1.000000e+00
  br i1 %1305, label %1306, label %1337, !dx.controlflow.hints !76

; <label>:1306                                    ; preds = %1298
  %1307 = fmul fast float %1301, %1151
  %1308 = fmul fast float %1300, %1152
  %1309 = fsub fast float %1307, %1308
  %1310 = fmul fast float %1299, %1152
  %1311 = fmul fast float %1301, %1150
  %1312 = fsub fast float %1310, %1311
  %1313 = fmul fast float %1300, %1150
  %1314 = fmul fast float %1299, %1151
  %1315 = fsub fast float %1313, %1314
  %1316 = fmul fast float %1309, 2.000000e+00
  %1317 = fmul fast float %1312, 2.000000e+00
  %1318 = fmul fast float %1315, 2.000000e+00
  %1319 = fmul fast float %1316, %1153
  %1320 = fmul fast float %1317, %1153
  %1321 = fmul fast float %1318, %1153
  %1322 = fmul fast float %1318, %1151
  %1323 = fmul fast float %1317, %1152
  %1324 = fmul fast float %1316, %1152
  %1325 = fmul fast float %1318, %1150
  %1326 = fmul fast float %1317, %1150
  %1327 = fmul fast float %1316, %1151
  %1328 = fadd fast float %1322, %1299
  %1329 = fadd fast float %1328, %1319
  %1330 = fsub fast float %1329, %1323
  %1331 = fsub fast float %1300, %1325
  %1332 = fadd fast float %1331, %1320
  %1333 = fadd fast float %1332, %1324
  %1334 = fadd fast float %1321, %1301
  %1335 = fsub fast float %1334, %1327
  %1336 = fadd fast float %1335, %1326
  br label %1337

; <label>:1337                                    ; preds = %1306, %1298
  %1338 = phi float [ %1330, %1306 ], [ %1299, %1298 ]
  %1339 = phi float [ %1333, %1306 ], [ %1300, %1298 ]
  %1340 = phi float [ %1336, %1306 ], [ %1301, %1298 ]
  br i1 %1179, label %1372, label %1341

; <label>:1341                                    ; preds = %1337
  %1342 = fmul fast float %811, 0x400187C840000000
  %1343 = fadd fast float %1342, 0xC00EFC2120000000
  %1344 = fmul fast float %1343, %811
  %1345 = fadd fast float %1344, 0x3FE5D16340000000
  %1346 = fmul fast float %1345, %811
  %1347 = fadd fast float %1346, 1.000000e+00
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = fsub fast float %1302, %97
  %1350 = fsub fast float %1303, %98
  %1351 = fsub fast float %1304, %99
  %1352 = fsub fast float %1302, %1134
  %1353 = fsub fast float %1303, %1135
  %1354 = fsub fast float %1304, %1136
  %1355 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1349, float %1350, float %1351)  ; Dot3(ax,ay,az,bx,by,bz)
  %1356 = call float @dx.op.dot3.f32(i32 55, float %1352, float %1353, float %1354, float %1352, float %1353, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1357 = fadd fast float %1356, 0x3EE4F8B580000000
  %1358 = fdiv fast float %1355, %1357
  %1359 = bitcast float %1358 to i32
  %1360 = ashr i32 %1359, 1
  %1361 = add nsw i32 %1360, 532487669
  %1362 = bitcast i32 %1361 to float
  %1363 = fmul fast float %1362, %1348
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = fmul fast float %1364, 0x4009981AE0000000
  %1366 = fsub fast float 0x40111BBD80000000, %1365
  %1367 = fmul fast float %1366, %1364
  %1368 = fadd fast float %1367, 0xC0009F6020000000
  %1369 = fmul fast float %1368, %1364
  %1370 = fadd fast float %1369, 1.000000e+00
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  br label %1375

; <label>:1372                                    ; preds = %1337
  %1373 = icmp ne i32 %1180, -1
  %1374 = zext i1 %1373 to i32
  br label %1375

; <label>:1375                                    ; preds = %1372, %1341
  %1376 = phi float [ %811, %1372 ], [ %1371, %1341 ]
  %1377 = phi i32 [ %1374, %1372 ], [ 0, %1341 ]
  %1378 = fmul float %1376, 5.000000e+00
  %1379 = fsub float 5.000000e+00, %1378
  %1380 = icmp ne i32 %1377, 0
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1383 = fadd fast float %1382, %1379
  %1384 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1383)  ; FMax(a,b)
  %1385 = call float @dx.op.unary.f32(i32 6, float %1338)  ; FAbs(value)
  %1386 = call float @dx.op.unary.f32(i32 6, float %1339)  ; FAbs(value)
  %1387 = fadd fast float %1386, %1385
  %1388 = call float @dx.op.unary.f32(i32 6, float %1340)  ; FAbs(value)
  %1389 = fadd fast float %1387, %1388
  %1390 = fcmp fast oeq float %1389, 0.000000e+00
  %1391 = fdiv fast float 1.000000e+00, %1389
  %1392 = select i1 %1390, float 1.000000e+00, float %1391
  %1393 = fmul fast float %1392, %1338
  %1394 = fmul fast float %1392, %1339
  %1395 = call float @dx.op.unary.f32(i32 6, float %1394)  ; FAbs(value)
  %1396 = call float @dx.op.unary.f32(i32 6, float %1393)  ; FAbs(value)
  %1397 = fsub fast float 1.000000e+00, %1395
  %1398 = fsub fast float 1.000000e+00, %1396
  %1399 = fcmp fast oge float %1393, 0.000000e+00
  %1400 = fcmp fast oge float %1394, 0.000000e+00
  %1401 = select i1 %1399, float 1.000000e+00, float -1.000000e+00
  %1402 = select i1 %1400, float 1.000000e+00, float -1.000000e+00
  %1403 = fcmp fast ole float %1340, 0.000000e+00
  %1404 = fmul fast float %1401, %1397
  %1405 = fmul fast float %1402, %1398
  %1406 = select i1 %1403, float %1404, float %1393
  %1407 = select i1 %1403, float %1405, float %1394
  %1408 = fmul fast float %1406, 5.000000e-01
  %1409 = fmul fast float %1407, 5.000000e-01
  %1410 = fadd fast float %1408, 5.000000e-01
  %1411 = fadd fast float %1409, 5.000000e-01
  %1412 = uitofp i32 %1177 to float
  %1413 = call float @dx.op.binary.f32(i32 36, float %1384, float 3.000000e+00)  ; FMin(a,b)
  %1414 = fadd fast float %1413, 2.000000e+00
  %1415 = call float @dx.op.unary.f32(i32 21, float %1414)  ; Exp(value)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1417 = fmul fast float %1416, %1415
  %1418 = fmul fast float %1417, 2.000000e+00
  %1419 = fsub fast float 1.000000e+00, %1418
  %1420 = fmul fast float %1410, %1419
  %1421 = fmul fast float %1411, %1419
  %1422 = fadd fast float %1420, %1417
  %1423 = fadd fast float %1421, %1417
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1422, float %1423, float %1412, float undef, i32 0, i32 0, i32 undef, float %1384)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 3
  %1430 = fmul fast float %1429, %1147
  %1431 = call float @dx.op.binary.f32(i32 36, float %1039, float %1430)  ; FMin(a,b)
  %1432 = select i1 %1380, float %1431, float %1430
  %1433 = fmul fast float %1425, %1225
  %1434 = fmul fast float %1433, %1432
  %1435 = fmul fast float %1426, %1225
  %1436 = fmul fast float %1435, %1432
  %1437 = fmul fast float %1427, %1225
  %1438 = fmul fast float %1437, %1432
  %1439 = fadd fast float %1434, %1122
  %1440 = fadd fast float %1436, %1123
  %1441 = fadd fast float %1438, %1124
  %1442 = fsub fast float %1125, %1225
  br label %1227

; <label>:1443                                    ; preds = %1227
  br label %1444

; <label>:1444                                    ; preds = %1443, %1091
  %1445 = phi float [ %1092, %1091 ], [ %1228, %1443 ]
  %1446 = phi float [ %1093, %1091 ], [ %1229, %1443 ]
  %1447 = phi float [ %1094, %1091 ], [ %1230, %1443 ]
  %1448 = phi float [ %1095, %1091 ], [ %1231, %1443 ]
  %1449 = add i32 %1096, 1
  %1450 = icmp ugt i32 %1449, %1088
  br i1 %1450, label %1451, label %1091, !llvm.loop !77

; <label>:1451                                    ; preds = %1444
  br label %1452

; <label>:1452                                    ; preds = %1451, %1035
  %1453 = phi float [ 0.000000e+00, %1035 ], [ %1445, %1451 ]
  %1454 = phi float [ 0.000000e+00, %1035 ], [ %1446, %1451 ]
  %1455 = phi float [ 0.000000e+00, %1035 ], [ %1447, %1451 ]
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1454, float %1455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = select i1 %133, float 0.000000e+00, float %1453
  %1458 = select i1 %133, float %1456, float %1454
  %1459 = select i1 %133, float 0.000000e+00, float %1455
  %1460 = fmul fast float %1457, %1014
  %1461 = fmul fast float %1458, %1015
  %1462 = fmul fast float %1459, %1016
  %1463 = call float @dx.op.binary.f32(i32 35, float %1460, float 0.000000e+00)  ; FMax(a,b)
  %1464 = call float @dx.op.binary.f32(i32 35, float %1461, float 0.000000e+00)  ; FMax(a,b)
  %1465 = call float @dx.op.binary.f32(i32 35, float %1462, float 0.000000e+00)  ; FMax(a,b)
  %1466 = fadd fast float %1463, %1001
  %1467 = fadd fast float %1464, %1002
  %1468 = fadd fast float %1465, %1003
  %1469 = fmul fast float %1466, %615
  %1470 = fmul fast float %1467, %615
  %1471 = fmul fast float %1468, %615
  %1472 = fsub fast float 1.000000e+00, %615
  %1473 = call float @dx.op.dot3.f32(i32 55, float %1472, float %1472, float %1472, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = fmul fast float %858, %824
  %1476 = fsub fast float 1.000000e+00, %859
  %1477 = fsub fast float %1476, %824
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 3
  %1481 = fmul fast float %1480, %1478
  %1482 = fadd fast float %1481, %1475
  %1483 = and i32 %153, 1048576
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1569, label %1485, !dx.controlflow.hints !79

; <label>:1485                                    ; preds = %1452
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 2
  %1488 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1489 = fmul fast float %1487, %62
  %1490 = fmul fast float %1488, %63
  %1491 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1492 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1493 = select i1 %883, i32 2, i32 0
  %1494 = or i32 %1493, 1
  %1495 = uitofp i32 %1494 to float
  %1496 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1491, float %1492, float %1495, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.ResRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.ResRet.f32 %1496, 2
  %1500 = extractvalue %dx.types.ResRet.f32 %1496, 3
  %1501 = add nuw nsw i32 %1493, 2
  %1502 = uitofp i32 %1501 to float
  %1503 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1491, float %1492, float %1502, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = extractvalue %dx.types.ResRet.f32 %1503, 3
  %1508 = call float @dx.op.binary.f32(i32 35, float %1498, float %1499)  ; FMax(a,b)
  %1509 = call float @dx.op.binary.f32(i32 35, float %1497, float %1508)  ; FMax(a,b)
  %1510 = call float @dx.op.binary.f32(i32 35, float %1509, float %1500)  ; FMax(a,b)
  %1511 = call float @dx.op.binary.f32(i32 36, float %1505, float %1506)  ; FMin(a,b)
  %1512 = call float @dx.op.binary.f32(i32 36, float %1504, float %1511)  ; FMin(a,b)
  %1513 = call float @dx.op.binary.f32(i32 36, float %1512, float %1507)  ; FMin(a,b)
  %1514 = fmul fast float %1510, 2.550000e+02
  %1515 = fadd fast float %1514, 0x3F70101020000000
  %1516 = fptoui float %1515 to i32
  %1517 = fmul fast float %1513, 2.550000e+02
  %1518 = fadd fast float %1517, 0x3F70101020000000
  %1519 = fptoui float %1518 to i32
  %1520 = icmp ult i32 %1516, %1519
  br i1 %1520, label %1521, label %1562

; <label>:1521                                    ; preds = %1485
  %1522 = fcmp fast ogt float %54, 9.843750e-01
  %1523 = select i1 %1522, float -4.000000e+00, float %1051
  %1524 = call float @dx.op.binary.f32(i32 35, float %1523, float 0.000000e+00)  ; FMax(a,b)
  %1525 = fadd fast float %1048, %1524
  %1526 = fmul fast float %1525, %1049
  %1527 = call float @dx.op.unary.f32(i32 23, float %1526)  ; Log(value)
  %1528 = fmul fast float %1050, %1527
  %1529 = fmul fast float %1528, %1058
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = uitofp i32 %1516 to float
  %1532 = uitofp i32 %1519 to float
  %1533 = fadd fast float %1531, 5.000000e-01
  %1534 = fadd fast float %1532, 5.000000e-01
  %1535 = fmul fast float %1058, %1533
  %1536 = fmul fast float %1058, %1534
  %1537 = fadd fast float %1535, 0x3F0FFB4800000000
  %1538 = fadd fast float %1536, 0xBF0FFB4800000000
  %1539 = call float @dx.op.binary.f32(i32 35, float %1530, float %1537)  ; FMax(a,b)
  %1540 = call float @dx.op.binary.f32(i32 36, float %1539, float %1538)  ; FMin(a,b)
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 1
  %1543 = extractvalue %dx.types.CBufRet.f32 %1541, 2
  %1544 = extractvalue %dx.types.CBufRet.f32 %1541, 0
  %1545 = select i1 %883, float %1544, float 0.000000e+00
  %1546 = fmul fast float %1542, %1540
  %1547 = fadd fast float %1545, %1546
  %1548 = fadd fast float %1545, %1543
  %1549 = fsub fast float %1542, %1543
  %1550 = fadd fast float %1549, %1545
  %1551 = call float @dx.op.binary.f32(i32 35, float %1547, float %1548)  ; FMax(a,b)
  %1552 = call float @dx.op.binary.f32(i32 36, float %1551, float %1550)  ; FMin(a,b)
  %1553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1491, float %1492, float %1552, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.ResRet.f32 %1553, 1
  %1556 = extractvalue %dx.types.ResRet.f32 %1553, 2
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 1
  %1559 = fmul fast float %1558, %1554
  %1560 = fmul fast float %1558, %1555
  %1561 = fmul fast float %1558, %1556
  br label %1562

; <label>:1562                                    ; preds = %1521, %1485
  %1563 = phi float [ %1559, %1521 ], [ 1.000000e+00, %1485 ]
  %1564 = phi float [ %1560, %1521 ], [ 1.000000e+00, %1485 ]
  %1565 = phi float [ %1561, %1521 ], [ 1.000000e+00, %1485 ]
  %1566 = fmul fast float %1563, %1469
  %1567 = fmul fast float %1564, %1470
  %1568 = fmul fast float %1565, %1471
  br label %1569

; <label>:1569                                    ; preds = %1562, %1452
  %1570 = phi float [ %1566, %1562 ], [ %1469, %1452 ]
  %1571 = phi float [ %1567, %1562 ], [ %1470, %1452 ]
  %1572 = phi float [ %1568, %1562 ], [ %1471, %1452 ]
  %1573 = and i32 %153, 2097152
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1579, label %1575, !dx.controlflow.hints !80

; <label>:1575                                    ; preds = %1569
  %1576 = add i32 %150, 192
  %1577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  br label %1582

; <label>:1579                                    ; preds = %1569
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 3
  br label %1582

; <label>:1582                                    ; preds = %1579, %1575
  %1583 = phi float [ %1578, %1575 ], [ %1581, %1579 ]
  %1584 = fmul fast float %799, %615
  %1585 = fmul fast float %1584, %895
  %1586 = fmul fast float %1585, %1019
  %1587 = fmul fast float %800, %615
  %1588 = fmul fast float %1587, %896
  %1589 = fmul fast float %1588, %1019
  %1590 = fmul fast float %801, %615
  %1591 = fmul fast float %1590, %897
  %1592 = fmul fast float %1591, %1019
  br i1 %878, label %1593, label %1726

; <label>:1593                                    ; preds = %1582
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 2
  %1596 = extractvalue %dx.types.CBufRet.f32 %1594, 3
  %1597 = fmul fast float %1595, %62
  %1598 = fmul fast float %1596, %63
  %1599 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1600 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1601 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1599, float %1600, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.ResRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.ResRet.f32 %1601, 2
  %1605 = extractvalue %dx.types.ResRet.f32 %1601, 3
  %1606 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1599, float %1600, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.ResRet.f32 %1606, 2
  %1610 = extractvalue %dx.types.ResRet.f32 %1606, 3
  %1611 = call float @dx.op.binary.f32(i32 35, float %1603, float %1604)  ; FMax(a,b)
  %1612 = call float @dx.op.binary.f32(i32 35, float %1602, float %1611)  ; FMax(a,b)
  %1613 = call float @dx.op.binary.f32(i32 35, float %1612, float %1605)  ; FMax(a,b)
  %1614 = call float @dx.op.binary.f32(i32 36, float %1608, float %1609)  ; FMin(a,b)
  %1615 = call float @dx.op.binary.f32(i32 36, float %1607, float %1614)  ; FMin(a,b)
  %1616 = call float @dx.op.binary.f32(i32 36, float %1615, float %1610)  ; FMin(a,b)
  %1617 = fmul fast float %1613, 2.550000e+02
  %1618 = fadd fast float %1617, 0x3F70101020000000
  %1619 = fptoui float %1618 to i32
  %1620 = fmul fast float %1616, 2.550000e+02
  %1621 = fadd fast float %1620, 0x3F70101020000000
  %1622 = fptoui float %1621 to i32
  %1623 = icmp ult i32 %1619, %1622
  br i1 %1623, label %1624, label %1668

; <label>:1624                                    ; preds = %1593
  %1625 = fcmp fast ogt float %54, 9.843750e-01
  %1626 = select i1 %1625, float -4.000000e+00, float %1051
  %1627 = call float @dx.op.binary.f32(i32 35, float %1626, float 0.000000e+00)  ; FMax(a,b)
  %1628 = fadd fast float %1048, %1627
  %1629 = fmul fast float %1628, %1049
  %1630 = call float @dx.op.unary.f32(i32 23, float %1629)  ; Log(value)
  %1631 = fmul fast float %1050, %1630
  %1632 = fmul fast float %1631, %1058
  %1633 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1634 = uitofp i32 %1619 to float
  %1635 = uitofp i32 %1622 to float
  %1636 = fadd fast float %1634, 5.000000e-01
  %1637 = fadd fast float %1635, 5.000000e-01
  %1638 = fmul fast float %1058, %1636
  %1639 = fmul fast float %1058, %1637
  %1640 = fadd fast float %1638, 0x3F0FFB4800000000
  %1641 = fadd fast float %1639, 0xBF0FFB4800000000
  %1642 = call float @dx.op.binary.f32(i32 35, float %1633, float %1640)  ; FMax(a,b)
  %1643 = call float @dx.op.binary.f32(i32 36, float %1642, float %1641)  ; FMin(a,b)
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1646 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1647 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1648 = fmul fast float %1645, %1643
  %1649 = fadd fast float %1647, %1648
  %1650 = fadd fast float %1647, %1646
  %1651 = fsub fast float %1645, %1646
  %1652 = fadd fast float %1651, %1647
  %1653 = call float @dx.op.binary.f32(i32 35, float %1649, float %1650)  ; FMax(a,b)
  %1654 = call float @dx.op.binary.f32(i32 36, float %1653, float %1652)  ; FMin(a,b)
  %1655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1599, float %1600, float %1654, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.ResRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.ResRet.f32 %1655, 2
  %1659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1599, float %1600, float %1654, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1660 = extractvalue %dx.types.ResRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.ResRet.f32 %1659, 1
  %1662 = extractvalue %dx.types.ResRet.f32 %1659, 2
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1665 = fmul fast float %1664, %1660
  %1666 = fmul fast float %1664, %1661
  %1667 = fmul fast float %1664, %1662
  br label %1668

; <label>:1668                                    ; preds = %1624, %1593
  %1669 = phi float [ %1656, %1624 ], [ 1.000000e+00, %1593 ]
  %1670 = phi float [ %1657, %1624 ], [ 1.000000e+00, %1593 ]
  %1671 = phi float [ %1658, %1624 ], [ 1.000000e+00, %1593 ]
  %1672 = phi float [ %1665, %1624 ], [ 0.000000e+00, %1593 ]
  %1673 = phi float [ %1666, %1624 ], [ 0.000000e+00, %1593 ]
  %1674 = phi float [ %1667, %1624 ], [ 0.000000e+00, %1593 ]
  %1675 = fmul fast float %1672, %1474
  %1676 = fmul fast float %1673, %1474
  %1677 = fmul fast float %1674, %1474
  %1678 = call float @dx.op.dot3.f32(i32 55, float %1669, float %1670, float %1671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1679 = call float @dx.op.dot3.f32(i32 55, float %1675, float %1676, float %1677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1680 = select i1 %133, float %1678, float %1669
  %1681 = select i1 %133, float %1678, float %1670
  %1682 = select i1 %133, float 1.000000e+00, float %1671
  %1683 = select i1 %133, float %1679, float %1675
  %1684 = select i1 %133, float 0.000000e+00, float %1676
  %1685 = select i1 %133, float 0.000000e+00, float %1677
  %1686 = fmul fast float %1680, %1586
  %1687 = fmul fast float %1681, %1589
  %1688 = fmul fast float %1682, %1592
  %1689 = fadd fast float %1686, %1683
  %1690 = fadd fast float %1687, %1684
  %1691 = fadd fast float %1685, %1688
  %1692 = fmul fast float %1680, %1570
  %1693 = fmul fast float %1681, %1571
  %1694 = fmul fast float %1682, %1572
  %1695 = fmul fast float %67, %1595
  %1696 = fmul fast float %69, %1596
  %1697 = fsub fast float 1.000000e+00, %1695
  %1698 = fsub fast float 1.000000e+00, %1696
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.CBufRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1703 = fmul fast float %1697, %1700
  %1704 = fmul fast float %1697, %1701
  %1705 = fmul fast float %1697, %1702
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 0
  %1708 = extractvalue %dx.types.CBufRet.f32 %1706, 1
  %1709 = extractvalue %dx.types.CBufRet.f32 %1706, 2
  %1710 = fmul fast float %1698, %1707
  %1711 = fmul fast float %1698, %1708
  %1712 = fmul fast float %1698, %1709
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1717 = fadd fast float %1710, %1714
  %1718 = fadd fast float %1717, %1703
  %1719 = fadd fast float %1711, %1715
  %1720 = fadd fast float %1719, %1704
  %1721 = fadd fast float %1712, %1716
  %1722 = fadd fast float %1721, %1705
  %1723 = fmul fast float %1718, %875
  %1724 = fmul fast float %1720, %875
  %1725 = fmul fast float %1722, %875
  br label %1726

; <label>:1726                                    ; preds = %1668, %1582
  %1727 = phi float [ %1723, %1668 ], [ %97, %1582 ]
  %1728 = phi float [ %1724, %1668 ], [ %98, %1582 ]
  %1729 = phi float [ %1725, %1668 ], [ %99, %1582 ]
  %1730 = phi float [ %875, %1668 ], [ %55, %1582 ]
  %1731 = phi float [ %1689, %1668 ], [ %1586, %1582 ]
  %1732 = phi float [ %1690, %1668 ], [ %1589, %1582 ]
  %1733 = phi float [ %1691, %1668 ], [ %1592, %1582 ]
  %1734 = phi float [ %1692, %1668 ], [ %1570, %1582 ]
  %1735 = phi float [ %1693, %1668 ], [ %1571, %1582 ]
  %1736 = phi float [ %1694, %1668 ], [ %1572, %1582 ]
  %1737 = phi float [ %1669, %1668 ], [ 1.000000e+00, %1582 ]
  br i1 %883, label %2793, label %1738

; <label>:1738                                    ; preds = %1726
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1742 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1743 = extractvalue %dx.types.CBufRet.f32 %1739, 3
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1747 = extractvalue %dx.types.CBufRet.f32 %1744, 2
  %1748 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 0
  %1751 = extractvalue %dx.types.CBufRet.f32 %1749, 1
  %1752 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %1753 = extractvalue %dx.types.CBufRet.f32 %1749, 3
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 0
  %1756 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1757 = extractvalue %dx.types.CBufRet.f32 %1754, 2
  %1758 = extractvalue %dx.types.CBufRet.f32 %1754, 3
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 3
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 3
  %1763 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1764 = extractvalue %dx.types.CBufRet.f32 %1761, 1
  %1765 = extractvalue %dx.types.CBufRet.f32 %1761, 2
  %1766 = fcmp fast olt float %1765, -5.000000e-01
  %1767 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1728, float %1729, float %1727, float %1728, float %1729)  ; Dot3(ax,ay,az,bx,by,bz)
  %1768 = call float @dx.op.unary.f32(i32 25, float %1767)  ; Rsqrt(value)
  %1769 = fmul fast float %1768, %1767
  %1770 = fmul fast float %1768, %1727
  %1771 = fmul fast float %1768, %1728
  %1772 = fmul fast float %1768, %1729
  %1773 = fadd fast float %1769, %1743
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1771, float %1772, float %1740, float %1741, float %1742)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.i32 %1775, 1
  %1777 = and i32 %1776, 1
  %1778 = icmp ne i32 %1777, 0
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1781 = fcmp fast ogt float %1780, 0.000000e+00
  %1782 = and i1 %1778, %1781
  br i1 %1782, label %1783, label %2189, !dx.controlflow.hints !81

; <label>:1783                                    ; preds = %1738
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 3
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1790 = fsub fast float %1787, %1789
  %1791 = and i32 %1776, 2
  %1792 = extractvalue %dx.types.CBufRet.i32 %1775, 0
  %1793 = call i32 @dx.op.binary.i32(i32 40, i32 %1792, i32 3)  ; UMin(a,b)
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1798 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1799 = fsub fast float %1795, %1797
  %1800 = fsub fast float %1796, %1798
  %1801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1801, 0
  %1803 = fcmp fast ogt float %1802, 0.000000e+00
  %1804 = fsub fast float -0.000000e+00, %1799
  %1805 = fsub fast float -0.000000e+00, %1800
  %1806 = call float @dx.op.dot2.f32(i32 54, float %1770, float %1771, float %1770, float %1771)  ; Dot2(ax,ay,bx,by)
  %1807 = call float @dx.op.dot2.f32(i32 54, float %1770, float %1771, float %1804, float %1805)  ; Dot2(ax,ay,bx,by)
  %1808 = fmul fast float %1807, 2.000000e+00
  %1809 = call float @dx.op.dot2.f32(i32 54, float %1804, float %1805, float %1804, float %1805)  ; Dot2(ax,ay,bx,by)
  %1810 = fmul fast float %1802, %1802
  %1811 = fsub fast float %1809, %1810
  %1812 = fmul fast float %1808, %1808
  %1813 = fmul fast float %1806, 4.000000e+00
  %1814 = fmul fast float %1813, %1811
  %1815 = fsub fast float %1812, %1814
  %1816 = fcmp fast ogt float %1815, 0.000000e+00
  br i1 %1816, label %1817, label %1832

; <label>:1817                                    ; preds = %1783
  %1818 = fcmp fast ogt float %1808, 0.000000e+00
  %1819 = call float @dx.op.unary.f32(i32 24, float %1815)  ; Sqrt(value)
  %1820 = fsub fast float -0.000000e+00, %1819
  %1821 = select i1 %1818, float %1819, float %1820
  %1822 = fadd fast float %1821, %1808
  %1823 = fmul float %1822, -5.000000e-01
  %1824 = fdiv fast float %1823, %1806
  %1825 = call float @dx.op.binary.f32(i32 35, float %1824, float 0.000000e+00)  ; FMax(a,b)
  %1826 = call float @dx.op.binary.f32(i32 36, float %1769, float %1825)  ; FMin(a,b)
  %1827 = fdiv fast float %1811, %1823
  %1828 = call float @dx.op.binary.f32(i32 35, float %1827, float 0.000000e+00)  ; FMax(a,b)
  %1829 = call float @dx.op.binary.f32(i32 36, float %1769, float %1828)  ; FMin(a,b)
  %1830 = call float @dx.op.binary.f32(i32 36, float %1826, float %1829)  ; FMin(a,b)
  %1831 = call float @dx.op.binary.f32(i32 35, float %1826, float %1829)  ; FMax(a,b)
  br label %1832

; <label>:1832                                    ; preds = %1817, %1783
  %1833 = phi float [ %1831, %1817 ], [ -1.000000e+00, %1783 ]
  %1834 = phi float [ %1830, %1817 ], [ -1.000000e+00, %1783 ]
  %1835 = phi i1 [ true, %1817 ], [ false, %1783 ]
  %1836 = and i1 %1803, %1835
  br i1 %1836, label %1837, label %1839

; <label>:1837                                    ; preds = %1832
  %1838 = fcmp fast oeq float %1834, %1833
  br i1 %1838, label %2142, label %1840

; <label>:1839                                    ; preds = %1832
  br i1 %1803, label %2142, label %1840

; <label>:1840                                    ; preds = %1839, %1837
  %1841 = phi float [ %1769, %1839 ], [ %1833, %1837 ]
  %1842 = phi float [ 0.000000e+00, %1839 ], [ %1834, %1837 ]
  %1843 = icmp ne i32 %1791, 0
  %1844 = fmul fast float %1841, %1772
  %1845 = fadd fast float %1844, %1785
  %1846 = fmul fast float %1845, %1841
  %1847 = select i1 %1843, float 0.000000e+00, float %1846
  %1848 = fcmp fast oeq float %1772, 0.000000e+00
  %1849 = fdiv fast float %1790, %1772
  %1850 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1849)  ; FMax(a,b)
  %1851 = select i1 %1848, float %1841, float %1850
  %1852 = call float @dx.op.binary.f32(i32 36, float %1841, float %1851)  ; FMin(a,b)
  %1853 = fcmp fast ogt float %1772, 0.000000e+00
  %1854 = fcmp fast olt float %1790, 0.000000e+00
  br i1 %1853, label %1855, label %1912

; <label>:1855                                    ; preds = %1840
  %1856 = icmp eq i32 %1791, 0
  br i1 %1854, label %1857, label %1901

; <label>:1857                                    ; preds = %1855
  %1858 = select i1 %1856, float %1841, float 0.000000e+00
  %1859 = fsub fast float -0.000000e+00, %1858
  %1860 = call float @dx.op.unary.f32(i32 6, float %1859)  ; FAbs(value)
  %1861 = fmul fast float %1858, %1772
  %1862 = fadd fast float %1861, %1785
  %1863 = fmul fast float %1860, %1862
  %1864 = fsub fast float %1847, %1863
  %1865 = fsub fast float %1841, %1860
  %1866 = select i1 %1856, float %1865, float 0.000000e+00
  %1867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1867, 0
  %1869 = extractvalue %dx.types.CBufRet.f32 %1867, 1
  %1870 = extractvalue %dx.types.CBufRet.f32 %1867, 2
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.CBufRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.CBufRet.f32 %1871, 2
  %1875 = extractvalue %dx.types.CBufRet.f32 %1871, 3
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 3
  %1878 = call float @dx.op.binary.f32(i32 36, float %1864, float %1877)  ; FMin(a,b)
  %1879 = fmul fast float %1875, %1866
  %1880 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1881 = fsub fast float %1872, %1868
  %1882 = fsub fast float %1873, %1869
  %1883 = fsub fast float %1874, %1870
  %1884 = fmul fast float %1880, %1881
  %1885 = fmul fast float %1880, %1882
  %1886 = fmul fast float %1880, %1883
  %1887 = fadd fast float %1884, %1868
  %1888 = fadd fast float %1885, %1869
  %1889 = fadd fast float %1886, %1870
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1893 = fadd fast float %1892, %1891
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1896 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1897 = fadd fast float %1896, %1895
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = fmul fast float %1894, %1878
  %1900 = fmul fast float %1899, %1898
  br label %2142

; <label>:1901                                    ; preds = %1855
  br i1 %1856, label %1902, label %1923

; <label>:1902                                    ; preds = %1901
  %1903 = call float @dx.op.binary.f32(i32 36, float %1852, float %1842)  ; FMin(a,b)
  %1904 = fsub fast float %1852, %1903
  %1905 = fsub fast float %1904, %1841
  %1906 = call float @dx.op.unary.f32(i32 6, float %1905)  ; FAbs(value)
  %1907 = fadd fast float %1904, %1841
  %1908 = fmul fast float %1907, %1772
  %1909 = fadd fast float %1908, %1785
  %1910 = fmul fast float %1909, %1906
  %1911 = fsub fast float %1847, %1910
  br label %1923

; <label>:1912                                    ; preds = %1840
  br i1 %1854, label %1913, label %1923

; <label>:1913                                    ; preds = %1912
  %1914 = call float @dx.op.binary.f32(i32 35, float %1842, float %1852)  ; FMax(a,b)
  %1915 = icmp eq i32 %1791, 0
  %1916 = select i1 %1915, float %1852, float 0.000000e+00
  %1917 = fsub fast float -0.000000e+00, %1916
  %1918 = call float @dx.op.unary.f32(i32 6, float %1917)  ; FAbs(value)
  %1919 = fmul fast float %1916, %1772
  %1920 = fadd fast float %1919, %1785
  %1921 = fmul fast float %1918, %1920
  %1922 = fsub fast float %1847, %1921
  br label %1923

; <label>:1923                                    ; preds = %1913, %1912, %1902, %1901
  %1924 = phi float [ %1842, %1901 ], [ %1842, %1902 ], [ %1914, %1913 ], [ %1842, %1912 ]
  %1925 = phi float [ 0.000000e+00, %1901 ], [ %1906, %1902 ], [ %1918, %1913 ], [ 0.000000e+00, %1912 ]
  %1926 = phi float [ %1847, %1901 ], [ %1911, %1902 ], [ %1922, %1913 ], [ %1847, %1912 ]
  %1927 = phi float [ %1852, %1901 ], [ %1852, %1902 ], [ %1841, %1913 ], [ %1841, %1912 ]
  %1928 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1928, align 4, !tbaa !82, !noalias !86
  %1929 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1929, align 4, !tbaa !82, !noalias !86
  %1930 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1930, align 4, !tbaa !82, !noalias !86
  %1931 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 0
  store float -1.000000e+00, float* %1931, align 4, !tbaa !82, !noalias !86
  %1932 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 1
  store float -1.000000e+00, float* %1932, align 4, !tbaa !82, !noalias !86
  %1933 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 2
  store float -1.000000e+00, float* %1933, align 4, !tbaa !82, !noalias !86
  %1934 = icmp sgt i32 %1793, 0
  br i1 %1934, label %1935, label %1996

; <label>:1935                                    ; preds = %1923
  br label %1936

; <label>:1936                                    ; preds = %1985, %1935
  %1937 = phi i32 [ %1986, %1985 ], [ 0, %1935 ]
  %1938 = phi i32 [ %1987, %1985 ], [ 0, %1935 ]
  %1939 = add nuw i32 %1938, 171
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1939)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.CBufRet.f32 %1940, 1
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.CBufRet.f32 %1943, 1
  %1946 = fsub fast float %1941, %1944
  %1947 = fsub fast float %1942, %1945
  %1948 = extractvalue %dx.types.CBufRet.f32 %1940, 2
  %1949 = fsub fast float -0.000000e+00, %1946
  %1950 = fsub fast float -0.000000e+00, %1947
  %1951 = call float @dx.op.dot2.f32(i32 54, float %1770, float %1771, float %1949, float %1950)  ; Dot2(ax,ay,bx,by)
  %1952 = fmul fast float %1951, 2.000000e+00
  %1953 = call float @dx.op.dot2.f32(i32 54, float %1949, float %1950, float %1949, float %1950)  ; Dot2(ax,ay,bx,by)
  %1954 = fmul fast float %1948, %1948
  %1955 = fsub fast float %1953, %1954
  %1956 = fmul fast float %1952, %1952
  %1957 = fmul fast float %1813, %1955
  %1958 = fsub fast float %1956, %1957
  %1959 = fcmp fast ogt float %1958, 0.000000e+00
  br i1 %1959, label %1960, label %1975

; <label>:1960                                    ; preds = %1936
  %1961 = fcmp fast ogt float %1952, 0.000000e+00
  %1962 = call float @dx.op.unary.f32(i32 24, float %1958)  ; Sqrt(value)
  %1963 = fsub fast float -0.000000e+00, %1962
  %1964 = select i1 %1961, float %1962, float %1963
  %1965 = fadd fast float %1964, %1952
  %1966 = fmul float %1965, -5.000000e-01
  %1967 = fdiv fast float %1966, %1806
  %1968 = call float @dx.op.binary.f32(i32 35, float %1967, float 0.000000e+00)  ; FMax(a,b)
  %1969 = call float @dx.op.binary.f32(i32 36, float %1841, float %1968)  ; FMin(a,b)
  %1970 = fdiv fast float %1955, %1966
  %1971 = call float @dx.op.binary.f32(i32 35, float %1970, float 0.000000e+00)  ; FMax(a,b)
  %1972 = call float @dx.op.binary.f32(i32 36, float %1841, float %1971)  ; FMin(a,b)
  %1973 = call float @dx.op.binary.f32(i32 36, float %1969, float %1972)  ; FMin(a,b)
  %1974 = call float @dx.op.binary.f32(i32 35, float %1969, float %1972)  ; FMax(a,b)
  br label %1975

; <label>:1975                                    ; preds = %1960, %1936
  %1976 = phi float [ %1974, %1960 ], [ -1.000000e+00, %1936 ]
  %1977 = phi float [ %1973, %1960 ], [ -1.000000e+00, %1936 ]
  %1978 = phi i1 [ true, %1960 ], [ false, %1936 ]
  br i1 %1978, label %1979, label %1985

; <label>:1979                                    ; preds = %1975
  %1980 = call float @dx.op.binary.f32(i32 35, float %1924, float %1977)  ; FMax(a,b)
  %1981 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1938
  store float %1980, float* %1981, align 4, !tbaa !82, !noalias !86
  %1982 = call float @dx.op.binary.f32(i32 35, float %1924, float %1976)  ; FMax(a,b)
  %1983 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 %1938
  store float %1982, float* %1983, align 4, !tbaa !82, !noalias !86
  %1984 = add nsw i32 %1937, 1
  br label %1985

; <label>:1985                                    ; preds = %1979, %1975
  %1986 = phi i32 [ %1984, %1979 ], [ %1937, %1975 ]
  %1987 = add nuw nsw i32 %1938, 1
  %1988 = icmp eq i32 %1987, %1793
  br i1 %1988, label %1989, label %1936

; <label>:1989                                    ; preds = %1985
  %1990 = load float, float* %1930, align 4, !tbaa !82, !alias.scope !102, !noalias !105
  %1991 = load float, float* %1929, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  %1992 = load float, float* %1928, align 4, !tbaa !82, !alias.scope !110, !noalias !111
  %1993 = load float, float* %1933, align 4, !tbaa !82, !alias.scope !112, !noalias !115
  %1994 = load float, float* %1932, align 4, !tbaa !82, !alias.scope !118, !noalias !119
  %1995 = load float, float* %1931, align 4, !tbaa !82, !alias.scope !120, !noalias !121
  br label %1996

; <label>:1996                                    ; preds = %1989, %1923
  %1997 = phi float [ -1.000000e+00, %1923 ], [ %1995, %1989 ]
  %1998 = phi float [ -1.000000e+00, %1923 ], [ %1994, %1989 ]
  %1999 = phi float [ -1.000000e+00, %1923 ], [ %1993, %1989 ]
  %2000 = phi float [ -1.000000e+00, %1923 ], [ %1992, %1989 ]
  %2001 = phi float [ -1.000000e+00, %1923 ], [ %1991, %1989 ]
  %2002 = phi float [ -1.000000e+00, %1923 ], [ %1990, %1989 ]
  %2003 = phi i32 [ 0, %1923 ], [ %1986, %1989 ]
  %2004 = call float @dx.op.binary.f32(i32 36, float %2001, float %2002)  ; FMin(a,b)
  %2005 = call float @dx.op.binary.f32(i32 36, float %2000, float %2004)  ; FMin(a,b)
  %2006 = call float @dx.op.binary.f32(i32 35, float %2000, float %2001)  ; FMax(a,b)
  %2007 = call float @dx.op.binary.f32(i32 36, float %2006, float %2002)  ; FMin(a,b)
  %2008 = call float @dx.op.binary.f32(i32 36, float %2000, float %2001)  ; FMin(a,b)
  %2009 = call float @dx.op.binary.f32(i32 35, float %2008, float %2007)  ; FMax(a,b)
  %2010 = call float @dx.op.binary.f32(i32 35, float %2001, float %2002)  ; FMax(a,b)
  %2011 = call float @dx.op.binary.f32(i32 35, float %2000, float %2010)  ; FMax(a,b)
  store float %2005, float* %1928, align 4, !tbaa !82, !alias.scope !110, !noalias !111
  store float %2009, float* %1929, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  store float %2011, float* %1930, align 4, !tbaa !82, !alias.scope !102, !noalias !105
  %2012 = call float @dx.op.binary.f32(i32 36, float %1998, float %1999)  ; FMin(a,b)
  %2013 = call float @dx.op.binary.f32(i32 36, float %1997, float %2012)  ; FMin(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %1997, float %1998)  ; FMax(a,b)
  %2015 = call float @dx.op.binary.f32(i32 36, float %2014, float %1999)  ; FMin(a,b)
  %2016 = call float @dx.op.binary.f32(i32 36, float %1997, float %1998)  ; FMin(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float %2016, float %2015)  ; FMax(a,b)
  %2018 = call float @dx.op.binary.f32(i32 35, float %1998, float %1999)  ; FMax(a,b)
  %2019 = call float @dx.op.binary.f32(i32 35, float %1997, float %2018)  ; FMax(a,b)
  store float %2013, float* %1931, align 4, !tbaa !82, !alias.scope !120, !noalias !121
  store float %2017, float* %1932, align 4, !tbaa !82, !alias.scope !118, !noalias !119
  store float %2019, float* %1933, align 4, !tbaa !82, !alias.scope !112, !noalias !115
  %2020 = sub nsw i32 3, %2003
  %2021 = icmp sgt i32 %2020, 2
  br i1 %2021, label %2022, label %2060

; <label>:2022                                    ; preds = %1996
  %2023 = icmp eq i32 %1791, 0
  %2024 = fsub fast float %1841, %1925
  %2025 = select i1 %2023, float %2024, float %1925
  %2026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2027 = extractvalue %dx.types.CBufRet.f32 %2026, 0
  %2028 = extractvalue %dx.types.CBufRet.f32 %2026, 1
  %2029 = extractvalue %dx.types.CBufRet.f32 %2026, 2
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.CBufRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.CBufRet.f32 %2030, 2
  %2034 = extractvalue %dx.types.CBufRet.f32 %2030, 3
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 3
  %2037 = call float @dx.op.binary.f32(i32 36, float %1926, float %2036)  ; FMin(a,b)
  %2038 = fmul fast float %2034, %2025
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = fsub fast float %2031, %2027
  %2041 = fsub fast float %2032, %2028
  %2042 = fsub fast float %2033, %2029
  %2043 = fmul fast float %2039, %2040
  %2044 = fmul fast float %2039, %2041
  %2045 = fmul fast float %2039, %2042
  %2046 = fadd fast float %2043, %2027
  %2047 = fadd fast float %2044, %2028
  %2048 = fadd fast float %2045, %2029
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2052 = fadd fast float %2051, %2050
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2049, 2
  %2055 = extractvalue %dx.types.CBufRet.f32 %2049, 3
  %2056 = fadd fast float %2055, %2054
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fmul fast float %2053, %2037
  %2059 = fmul fast float %2058, %2057
  br label %2142

; <label>:2060                                    ; preds = %1996
  %2061 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2020
  %2062 = load float, float* %2061, align 4, !tbaa !82, !noalias !86
  %2063 = fcmp fast olt float %2062, %1927
  %2064 = icmp sgt i32 %2003, 0
  %2065 = and i1 %2064, %2063
  br i1 %2065, label %2066, label %2103

; <label>:2066                                    ; preds = %2060
  br label %2067

; <label>:2067                                    ; preds = %2096, %2066
  %2068 = phi float [ %2097, %2096 ], [ %1925, %2066 ]
  %2069 = phi float [ %2098, %2096 ], [ %1926, %2066 ]
  %2070 = phi float [ %2078, %2096 ], [ %2062, %2066 ]
  %2071 = phi i32 [ %2075, %2096 ], [ %2020, %2066 ]
  %2072 = getelementptr inbounds [3 x float], [3 x float]* %57, i32 0, i32 %2071
  %2073 = load float, float* %2072, align 4, !tbaa !82, !noalias !86
  %2074 = icmp slt i32 %2071, 2
  %2075 = add nsw i32 %2071, 1
  %2076 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2075
  %2077 = load float, float* %2076, align 4, !tbaa !82, !noalias !86
  %2078 = select i1 %2074, float %2077, float %1841
  %2079 = call float @dx.op.binary.f32(i32 36, float %2078, float %2073)  ; FMin(a,b)
  %2080 = call float @dx.op.binary.f32(i32 36, float %1927, float %2079)  ; FMin(a,b)
  %2081 = icmp eq i32 %1791, 0
  %2082 = fadd fast float %2080, %2070
  %2083 = fmul fast float %2082, %1772
  %2084 = fadd fast float %2083, %1785
  br i1 %2081, label %2090, label %2085

; <label>:2085                                    ; preds = %2067
  %2086 = fsub fast float %2080, %2070
  %2087 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2086)  ; FMax(a,b)
  %2088 = fmul fast float %2087, %2084
  %2089 = fadd fast float %2088, %2069
  br label %2096

; <label>:2090                                    ; preds = %2067
  %2091 = fsub fast float %2070, %2080
  %2092 = call float @dx.op.unary.f32(i32 6, float %2091)  ; FAbs(value)
  %2093 = fadd fast float %2092, %2068
  %2094 = fmul fast float %2092, %2084
  %2095 = fsub fast float %2069, %2094
  br label %2096

; <label>:2096                                    ; preds = %2090, %2085
  %2097 = phi float [ %2087, %2085 ], [ %2093, %2090 ]
  %2098 = phi float [ %2089, %2085 ], [ %2095, %2090 ]
  %2099 = fcmp fast olt float %2078, %1927
  %2100 = icmp slt i32 %2075, 3
  %2101 = and i1 %2100, %2099
  br i1 %2101, label %2067, label %2102

; <label>:2102                                    ; preds = %2096
  br label %2103

; <label>:2103                                    ; preds = %2102, %2060
  %2104 = phi float [ %1925, %2060 ], [ %2097, %2102 ]
  %2105 = phi float [ %1926, %2060 ], [ %2098, %2102 ]
  %2106 = fsub fast float %1841, %2104
  %2107 = select i1 %1843, float %2104, float %2106
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.CBufRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.CBufRet.f32 %2112, 2
  %2116 = extractvalue %dx.types.CBufRet.f32 %2112, 3
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2119 = call float @dx.op.binary.f32(i32 36, float %2105, float %2118)  ; FMin(a,b)
  %2120 = fmul fast float %2116, %2107
  %2121 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2122 = fsub fast float %2113, %2109
  %2123 = fsub fast float %2114, %2110
  %2124 = fsub fast float %2115, %2111
  %2125 = fmul fast float %2121, %2122
  %2126 = fmul fast float %2121, %2123
  %2127 = fmul fast float %2121, %2124
  %2128 = fadd fast float %2125, %2109
  %2129 = fadd fast float %2126, %2110
  %2130 = fadd fast float %2127, %2111
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2134 = fadd fast float %2133, %2132
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2131, 2
  %2137 = extractvalue %dx.types.CBufRet.f32 %2131, 3
  %2138 = fadd fast float %2137, %2136
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fmul fast float %2135, %2119
  %2141 = fmul fast float %2140, %2139
  br label %2142

; <label>:2142                                    ; preds = %2103, %2022, %1857, %1839, %1837
  %2143 = phi float [ %1866, %1857 ], [ %2025, %2022 ], [ %2107, %2103 ], [ 0.000000e+00, %1837 ], [ 0.000000e+00, %1839 ]
  %2144 = phi float [ %1900, %1857 ], [ %2059, %2022 ], [ %2141, %2103 ], [ 0.000000e+00, %1837 ], [ 0.000000e+00, %1839 ]
  %2145 = phi float [ %1887, %1857 ], [ %2046, %2022 ], [ %2128, %2103 ], [ 0.000000e+00, %1837 ], [ 0.000000e+00, %1839 ]
  %2146 = phi float [ %1888, %1857 ], [ %2047, %2022 ], [ %2129, %2103 ], [ 0.000000e+00, %1837 ], [ 0.000000e+00, %1839 ]
  %2147 = phi float [ %1889, %1857 ], [ %2048, %2022 ], [ %2130, %2103 ], [ 0.000000e+00, %1837 ], [ 0.000000e+00, %1839 ]
  %2148 = fmul fast float %1780, %2144
  %2149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.f32 %2149, 2
  %2151 = fsub fast float %1787, %2150
  %2152 = fcmp fast olt float %2148, -2.000000e+01
  %2153 = call float @dx.op.unary.f32(i32 21, float %2148)  ; Exp(value)
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2156 = extractvalue %dx.types.CBufRet.f32 %2154, 3
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 2
  %2159 = fmul fast float %2156, %2151
  %2160 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2161 = fsub fast float 1.000000e+00, %2160
  %2162 = fmul fast float %1772, 5.000000e-01
  %2163 = fadd fast float %2162, 5.000000e-01
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = fsub fast float 1.000000e+00, %2164
  %2166 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2161)  ; FMax(a,b)
  %2167 = fdiv fast float %2165, %2166
  %2168 = fsub fast float %2151, %1729
  %2169 = call float @dx.op.unary.f32(i32 6, float %2168)  ; FAbs(value)
  %2170 = fmul fast float %2169, %2155
  %2171 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2172 = fsub fast float 1.000000e+00, %2170
  %2173 = fmul fast float %2172, %2171
  %2174 = fadd fast float %2173, %2170
  %2175 = fmul fast float %2158, %2151
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = fsub fast float 1.000000e+00, %2174
  %2178 = fmul fast float %2177, %2176
  %2179 = fadd fast float %2178, %2174
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = fadd fast float %2153, -1.000000e+00
  %2182 = select i1 %2152, float -1.000000e+00, float %2181
  %2183 = fmul fast float %2180, %2182
  %2184 = fadd fast float %2183, 1.000000e+00
  %2185 = fsub fast float -0.000000e+00, %2183
  %2186 = fmul fast float %2145, %2185
  %2187 = fmul fast float %2146, %2185
  %2188 = fmul fast float %2147, %2185
  br label %2189

; <label>:2189                                    ; preds = %2142, %1738
  %2190 = phi float [ %2143, %2142 ], [ 0.000000e+00, %1738 ]
  %2191 = phi float [ %2184, %2142 ], [ 1.000000e+00, %1738 ]
  %2192 = phi float [ %2186, %2142 ], [ 0.000000e+00, %1738 ]
  %2193 = phi float [ %2187, %2142 ], [ 0.000000e+00, %1738 ]
  %2194 = phi float [ %2188, %2142 ], [ 0.000000e+00, %1738 ]
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2197 = fsub fast float 1.000000e+00, %2191
  %2198 = fmul fast float %2197, %1773
  %2199 = fmul fast float %2198, %2196
  %2200 = fsub fast float %1773, %2199
  br i1 %1766, label %2201, label %2230, !dx.controlflow.hints !122

; <label>:2201                                    ; preds = %2189
  %2202 = fmul fast float %1774, %1763
  %2203 = fadd fast float %2202, %1764
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = fmul fast float %1745, %2200
  %2206 = fsub fast float -0.000000e+00, %2205
  %2207 = fmul fast float %1746, %2200
  %2208 = fsub fast float -0.000000e+00, %2207
  %2209 = call float @dx.op.unary.f32(i32 21, float %2206)  ; Exp(value)
  %2210 = call float @dx.op.unary.f32(i32 21, float %2208)  ; Exp(value)
  %2211 = call float @dx.op.binary.f32(i32 35, float %1753, float %2209)  ; FMax(a,b)
  %2212 = call float @dx.op.binary.f32(i32 35, float %1753, float %2210)  ; FMax(a,b)
  %2213 = fsub fast float %2212, %2211
  %2214 = fmul fast float %2213, %2204
  %2215 = fadd fast float %2214, %2211
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fsub fast float %1750, %1755
  %2218 = fsub fast float %1751, %1756
  %2219 = fsub fast float %1752, %1757
  %2220 = fmul fast float %2204, %2217
  %2221 = fmul fast float %2204, %2218
  %2222 = fmul fast float %2204, %2219
  %2223 = fadd fast float %2220, %1755
  %2224 = fadd fast float %2221, %1756
  %2225 = fadd fast float %2222, %1757
  %2226 = fsub fast float 1.000000e+00, %2216
  %2227 = fmul fast float %2226, %2223
  %2228 = fmul fast float %2226, %2224
  %2229 = fmul fast float %2226, %2225
  br label %2289

; <label>:2230                                    ; preds = %2189
  %2231 = fmul fast float %2200, %1762
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = fsub fast float 2.000000e+00, %2232
  %2234 = fmul fast float %2232, 9.921875e-01
  %2235 = fmul fast float %2234, %2233
  %2236 = fadd fast float %2235, 3.906250e-03
  %2237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2236, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = fsub fast float %2232, %2238
  %2240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2239)  ; FMax(a,b)
  %2241 = fmul fast float %1748, %1729
  %2242 = call float @dx.op.unary.f32(i32 6, float %2241)  ; FAbs(value)
  %2243 = fcmp fast ogt float %2242, 0x3EB0C6F7A0000000
  br i1 %2243, label %2244, label %2250, !dx.controlflow.hints !123

; <label>:2244                                    ; preds = %2230
  %2245 = fmul fast float %2241, 0xBFF7154760000000
  %2246 = call float @dx.op.unary.f32(i32 21, float %2245)  ; Exp(value)
  %2247 = fsub fast float 1.000000e+00, %2246
  %2248 = fdiv fast float %2247, %2241
  %2249 = fmul fast float %2248, %1758
  br label %2250

; <label>:2250                                    ; preds = %2244, %2230
  %2251 = phi float [ %2249, %2244 ], [ %1758, %2230 ]
  %2252 = fadd fast float %2251, %1760
  %2253 = fmul fast float %2252, %2240
  %2254 = fmul fast float %1745, %2253
  %2255 = fsub fast float -0.000000e+00, %2254
  %2256 = fmul fast float %1746, %2253
  %2257 = fsub fast float -0.000000e+00, %2256
  %2258 = fmul fast float %1747, %2253
  %2259 = fsub fast float -0.000000e+00, %2258
  %2260 = call float @dx.op.unary.f32(i32 21, float %2255)  ; Exp(value)
  %2261 = call float @dx.op.unary.f32(i32 21, float %2257)  ; Exp(value)
  %2262 = call float @dx.op.unary.f32(i32 21, float %2259)  ; Exp(value)
  %2263 = fmul fast float %1774, %1774
  %2264 = fadd fast float %2263, 1.000000e+00
  %2265 = fmul fast float %2264, 0x3FAE8EC8A0000000
  %2266 = fmul fast float %2265, %1755
  %2267 = fmul fast float %2265, %1756
  %2268 = fmul fast float %2265, %1757
  %2269 = fmul fast float %1774, %1753
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = fmul fast float %1753, %1753
  %2272 = fsub fast float 1.000000e+00, %2271
  %2273 = fmul fast float %2272, 0x3FB45F3060000000
  %2274 = fmul fast float %2270, %2270
  %2275 = fdiv fast float 1.000000e+00, %2274
  %2276 = fmul fast float %2273, %2275
  %2277 = fmul fast float %2276, %1750
  %2278 = fmul fast float %2276, %1751
  %2279 = fmul fast float %2276, %1752
  %2280 = fadd fast float %2277, %2266
  %2281 = fadd fast float %2278, %2267
  %2282 = fadd fast float %2279, %2268
  %2283 = fsub fast float 1.000000e+00, %2260
  %2284 = fsub fast float 1.000000e+00, %2261
  %2285 = fsub fast float 1.000000e+00, %2262
  %2286 = fmul fast float %2280, %2283
  %2287 = fmul fast float %2281, %2284
  %2288 = fmul fast float %2282, %2285
  br label %2289

; <label>:2289                                    ; preds = %2250, %2201
  %2290 = phi float [ %2227, %2201 ], [ %2286, %2250 ]
  %2291 = phi float [ %2228, %2201 ], [ %2287, %2250 ]
  %2292 = phi float [ %2229, %2201 ], [ %2288, %2250 ]
  %2293 = phi float [ %2216, %2201 ], [ %2260, %2250 ]
  %2294 = phi float [ %2216, %2201 ], [ %2261, %2250 ]
  %2295 = phi float [ %2216, %2201 ], [ %2262, %2250 ]
  br i1 %1782, label %2296, label %2494, !dx.controlflow.hints !124

; <label>:2296                                    ; preds = %2289
  %2297 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2298 = fmul fast float %2297, %2197
  %2299 = fsub fast float %2192, %2290
  %2300 = fsub fast float %2193, %2291
  %2301 = fsub fast float %2194, %2292
  %2302 = fmul fast float %2298, %2299
  %2303 = fmul fast float %2298, %2300
  %2304 = fmul fast float %2298, %2301
  %2305 = fadd fast float %2302, %2290
  %2306 = fadd fast float %2303, %2291
  %2307 = fadd fast float %2304, %2292
  %2308 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2293)  ; FMax(a,b)
  %2309 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2294)  ; FMax(a,b)
  %2310 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2295)  ; FMax(a,b)
  %2311 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2191)  ; FMax(a,b)
  %2312 = call float @dx.op.binary.f32(i32 35, float %2190, float %2200)  ; FMax(a,b)
  %2313 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2312)  ; FMax(a,b)
  %2314 = fdiv fast float %2190, %2313
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2316 = fdiv fast float %2200, %2313
  %2317 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2318 = fcmp fast une float %2311, 1.000000e+00
  br i1 %2318, label %2319, label %2332, !dx.controlflow.hints !125

; <label>:2319                                    ; preds = %2296
  %2320 = call float @dx.op.unary.f32(i32 23, float %2311)  ; Log(value)
  %2321 = fmul fast float %2320, 0x3FE62E4300000000
  %2322 = fmul fast float %2192, %2321
  %2323 = fsub fast float -0.000000e+00, %2322
  %2324 = fmul fast float %2193, %2321
  %2325 = fsub fast float -0.000000e+00, %2324
  %2326 = fmul fast float %2194, %2321
  %2327 = fsub fast float -0.000000e+00, %2326
  %2328 = fsub fast float 1.000000e+00, %2311
  %2329 = fdiv fast float %2323, %2328
  %2330 = fdiv fast float %2325, %2328
  %2331 = fdiv fast float %2327, %2328
  br label %2332

; <label>:2332                                    ; preds = %2319, %2296
  %2333 = phi float [ %2329, %2319 ], [ %2192, %2296 ]
  %2334 = phi float [ %2330, %2319 ], [ %2193, %2296 ]
  %2335 = phi float [ %2331, %2319 ], [ %2194, %2296 ]
  %2336 = phi float [ %2321, %2319 ], [ 0.000000e+00, %2296 ]
  %2337 = fcmp fast une float %2308, 1.000000e+00
  br i1 %2337, label %2338, label %2345, !dx.controlflow.hints !126

; <label>:2338                                    ; preds = %2332
  %2339 = call float @dx.op.unary.f32(i32 23, float %2308)  ; Log(value)
  %2340 = fmul fast float %2339, 0x3FE62E4300000000
  %2341 = fmul fast float %2305, %2340
  %2342 = fsub fast float -0.000000e+00, %2341
  %2343 = fsub fast float 1.000000e+00, %2308
  %2344 = fdiv fast float %2342, %2343
  br label %2345

; <label>:2345                                    ; preds = %2338, %2332
  %2346 = phi float [ %2344, %2338 ], [ %2305, %2332 ]
  %2347 = phi float [ %2340, %2338 ], [ 0.000000e+00, %2332 ]
  %2348 = fcmp fast une float %2309, 1.000000e+00
  br i1 %2348, label %2349, label %2356, !dx.controlflow.hints !126

; <label>:2349                                    ; preds = %2345
  %2350 = call float @dx.op.unary.f32(i32 23, float %2309)  ; Log(value)
  %2351 = fmul fast float %2350, 0x3FE62E4300000000
  %2352 = fmul fast float %2306, %2351
  %2353 = fsub fast float -0.000000e+00, %2352
  %2354 = fsub fast float 1.000000e+00, %2309
  %2355 = fdiv fast float %2353, %2354
  br label %2356

; <label>:2356                                    ; preds = %2349, %2345
  %2357 = phi float [ %2355, %2349 ], [ %2306, %2345 ]
  %2358 = phi float [ %2351, %2349 ], [ 0.000000e+00, %2345 ]
  %2359 = fcmp fast une float %2310, 1.000000e+00
  br i1 %2359, label %2360, label %2367, !dx.controlflow.hints !126

; <label>:2360                                    ; preds = %2356
  %2361 = call float @dx.op.unary.f32(i32 23, float %2310)  ; Log(value)
  %2362 = fmul fast float %2361, 0x3FE62E4300000000
  %2363 = fmul fast float %2307, %2362
  %2364 = fsub fast float -0.000000e+00, %2363
  %2365 = fsub fast float 1.000000e+00, %2310
  %2366 = fdiv fast float %2364, %2365
  br label %2367

; <label>:2367                                    ; preds = %2360, %2356
  %2368 = phi float [ %2366, %2360 ], [ %2307, %2356 ]
  %2369 = phi float [ %2362, %2360 ], [ 0.000000e+00, %2356 ]
  %2370 = fmul fast float %2333, %2317
  %2371 = fmul fast float %2334, %2317
  %2372 = fmul fast float %2335, %2317
  %2373 = fmul fast float %2336, %2317
  %2374 = fmul fast float %2346, %2315
  %2375 = fmul fast float %2357, %2315
  %2376 = fmul fast float %2368, %2315
  %2377 = fmul fast float %2347, %2315
  %2378 = fmul fast float %2358, %2315
  %2379 = fmul fast float %2369, %2315
  %2380 = fadd fast float %2374, %2370
  %2381 = fadd fast float %2375, %2371
  %2382 = fadd fast float %2376, %2372
  %2383 = fadd fast float %2377, %2373
  %2384 = fadd fast float %2378, %2373
  %2385 = fadd fast float %2379, %2373
  %2386 = fcmp fast une float %2383, 0.000000e+00
  br i1 %2386, label %2387, label %2394, !dx.controlflow.hints !127

; <label>:2387                                    ; preds = %2367
  %2388 = fmul fast float %2383, 0x3FF7154760000000
  %2389 = call float @dx.op.unary.f32(i32 21, float %2388)  ; Exp(value)
  %2390 = fsub fast float 1.000000e+00, %2389
  %2391 = fmul fast float %2380, %2390
  %2392 = fsub fast float -0.000000e+00, %2391
  %2393 = fdiv fast float %2392, %2383
  br label %2394

; <label>:2394                                    ; preds = %2387, %2367
  %2395 = phi float [ %2389, %2387 ], [ 1.000000e+00, %2367 ]
  %2396 = phi float [ %2393, %2387 ], [ %2380, %2367 ]
  %2397 = fcmp fast une float %2384, 0.000000e+00
  br i1 %2397, label %2398, label %2405, !dx.controlflow.hints !127

; <label>:2398                                    ; preds = %2394
  %2399 = fmul fast float %2384, 0x3FF7154760000000
  %2400 = call float @dx.op.unary.f32(i32 21, float %2399)  ; Exp(value)
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = fmul fast float %2381, %2401
  %2403 = fsub fast float -0.000000e+00, %2402
  %2404 = fdiv fast float %2403, %2384
  br label %2405

; <label>:2405                                    ; preds = %2398, %2394
  %2406 = phi float [ %2400, %2398 ], [ 1.000000e+00, %2394 ]
  %2407 = phi float [ %2404, %2398 ], [ %2381, %2394 ]
  %2408 = fcmp fast une float %2385, 0.000000e+00
  br i1 %2408, label %2409, label %2416, !dx.controlflow.hints !127

; <label>:2409                                    ; preds = %2405
  %2410 = fmul fast float %2385, 0x3FF7154760000000
  %2411 = call float @dx.op.unary.f32(i32 21, float %2410)  ; Exp(value)
  %2412 = fsub fast float 1.000000e+00, %2411
  %2413 = fmul fast float %2382, %2412
  %2414 = fsub fast float -0.000000e+00, %2413
  %2415 = fdiv fast float %2414, %2385
  br label %2416

; <label>:2416                                    ; preds = %2409, %2405
  %2417 = phi float [ %2411, %2409 ], [ 1.000000e+00, %2405 ]
  %2418 = phi float [ %2415, %2409 ], [ %2382, %2405 ]
  %2419 = fcmp fast ogt float %2315, %2317
  br i1 %2419, label %2420, label %2440

; <label>:2420                                    ; preds = %2416
  %2421 = fsub fast float 1.000000e+00, %2317
  %2422 = fmul fast float %2333, %2421
  %2423 = fmul fast float %2334, %2421
  %2424 = fmul fast float %2335, %2421
  %2425 = fmul fast float %2336, %2421
  %2426 = fcmp fast une float %2425, 0.000000e+00
  br i1 %2426, label %2427, label %2478, !dx.controlflow.hints !128

; <label>:2427                                    ; preds = %2420
  %2428 = fmul fast float %2425, 0x3FF7154760000000
  %2429 = call float @dx.op.unary.f32(i32 21, float %2428)  ; Exp(value)
  %2430 = fsub fast float 1.000000e+00, %2429
  %2431 = fmul fast float %2422, %2430
  %2432 = fsub fast float -0.000000e+00, %2431
  %2433 = fmul fast float %2423, %2430
  %2434 = fsub fast float -0.000000e+00, %2433
  %2435 = fmul fast float %2424, %2430
  %2436 = fsub fast float -0.000000e+00, %2435
  %2437 = fdiv fast float %2432, %2425
  %2438 = fdiv fast float %2434, %2425
  %2439 = fdiv fast float %2436, %2425
  br label %2478

; <label>:2440                                    ; preds = %2416
  %2441 = fsub fast float 1.000000e+00, %2315
  %2442 = fmul fast float %2346, %2441
  %2443 = fmul fast float %2357, %2441
  %2444 = fmul fast float %2368, %2441
  %2445 = fmul fast float %2347, %2441
  %2446 = fmul fast float %2358, %2441
  %2447 = fmul fast float %2369, %2441
  %2448 = fcmp fast une float %2445, 0.000000e+00
  br i1 %2448, label %2449, label %2456, !dx.controlflow.hints !127

; <label>:2449                                    ; preds = %2440
  %2450 = fmul fast float %2445, 0x3FF7154760000000
  %2451 = call float @dx.op.unary.f32(i32 21, float %2450)  ; Exp(value)
  %2452 = fsub fast float 1.000000e+00, %2451
  %2453 = fmul fast float %2442, %2452
  %2454 = fsub fast float -0.000000e+00, %2453
  %2455 = fdiv fast float %2454, %2445
  br label %2456

; <label>:2456                                    ; preds = %2449, %2440
  %2457 = phi float [ %2455, %2449 ], [ %2442, %2440 ]
  %2458 = phi float [ %2451, %2449 ], [ 1.000000e+00, %2440 ]
  %2459 = fcmp fast une float %2446, 0.000000e+00
  br i1 %2459, label %2460, label %2467, !dx.controlflow.hints !127

; <label>:2460                                    ; preds = %2456
  %2461 = fmul fast float %2446, 0x3FF7154760000000
  %2462 = call float @dx.op.unary.f32(i32 21, float %2461)  ; Exp(value)
  %2463 = fsub fast float 1.000000e+00, %2462
  %2464 = fmul fast float %2443, %2463
  %2465 = fsub fast float -0.000000e+00, %2464
  %2466 = fdiv fast float %2465, %2446
  br label %2467

; <label>:2467                                    ; preds = %2460, %2456
  %2468 = phi float [ %2466, %2460 ], [ %2443, %2456 ]
  %2469 = phi float [ %2462, %2460 ], [ 1.000000e+00, %2456 ]
  %2470 = fcmp fast une float %2447, 0.000000e+00
  br i1 %2470, label %2471, label %2478, !dx.controlflow.hints !127

; <label>:2471                                    ; preds = %2467
  %2472 = fmul fast float %2447, 0x3FF7154760000000
  %2473 = call float @dx.op.unary.f32(i32 21, float %2472)  ; Exp(value)
  %2474 = fsub fast float 1.000000e+00, %2473
  %2475 = fmul fast float %2444, %2474
  %2476 = fsub fast float -0.000000e+00, %2475
  %2477 = fdiv fast float %2476, %2447
  br label %2478

; <label>:2478                                    ; preds = %2471, %2467, %2427, %2420
  %2479 = phi float [ %2477, %2471 ], [ %2439, %2427 ], [ %2424, %2420 ], [ %2444, %2467 ]
  %2480 = phi float [ %2468, %2471 ], [ %2438, %2427 ], [ %2423, %2420 ], [ %2468, %2467 ]
  %2481 = phi float [ %2457, %2471 ], [ %2437, %2427 ], [ %2422, %2420 ], [ %2457, %2467 ]
  %2482 = phi float [ %2473, %2471 ], [ %2429, %2427 ], [ 1.000000e+00, %2420 ], [ 1.000000e+00, %2467 ]
  %2483 = phi float [ %2469, %2471 ], [ %2429, %2427 ], [ 1.000000e+00, %2420 ], [ %2469, %2467 ]
  %2484 = phi float [ %2458, %2471 ], [ %2429, %2427 ], [ 1.000000e+00, %2420 ], [ %2458, %2467 ]
  %2485 = fmul fast float %2484, %2396
  %2486 = fmul fast float %2483, %2407
  %2487 = fmul fast float %2482, %2418
  %2488 = fadd fast float %2485, %2481
  %2489 = fadd fast float %2486, %2480
  %2490 = fadd fast float %2487, %2479
  %2491 = fmul fast float %2484, %2395
  %2492 = fmul fast float %2483, %2406
  %2493 = fmul fast float %2482, %2417
  br label %2494

; <label>:2494                                    ; preds = %2478, %2289
  %2495 = phi float [ %2493, %2478 ], [ %2295, %2289 ]
  %2496 = phi float [ %2492, %2478 ], [ %2294, %2289 ]
  %2497 = phi float [ %2491, %2478 ], [ %2293, %2289 ]
  %2498 = phi float [ %2490, %2478 ], [ %2292, %2289 ]
  %2499 = phi float [ %2489, %2478 ], [ %2291, %2289 ]
  %2500 = phi float [ %2488, %2478 ], [ %2290, %2289 ]
  %2501 = fmul fast float %2500, %1474
  %2502 = fmul fast float %2499, %1474
  %2503 = fmul fast float %2498, %1474
  %2504 = fmul fast float %2497, %1737
  %2505 = call float @dx.op.dot3.f32(i32 55, float %2497, float %2496, float %2495, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2506 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2502, float %2503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2507 = select i1 %133, float %2505, float %2497
  %2508 = select i1 %133, float %2505, float %2496
  %2509 = select i1 %133, float 1.000000e+00, float %2495
  %2510 = select i1 %133, float %2506, float %2501
  %2511 = select i1 %133, float 0.000000e+00, float %2502
  %2512 = select i1 %133, float 0.000000e+00, float %2503
  %2513 = fmul fast float %2507, %1731
  %2514 = fmul fast float %2508, %1732
  %2515 = fmul fast float %2509, %1733
  %2516 = fadd fast float %2513, %2510
  %2517 = fadd fast float %2514, %2511
  %2518 = fadd fast float %2512, %2515
  %2519 = fmul fast float %2507, %1734
  %2520 = fmul fast float %2508, %1735
  %2521 = fmul fast float %2509, %1736
  %2522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.i32 %2522, 0
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2793, label %2525, !dx.controlflow.hints !129

; <label>:2525                                    ; preds = %2494
  %2526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2526, 2
  %2528 = extractvalue %dx.types.CBufRet.f32 %2526, 3
  %2529 = fmul fast float %2527, %62
  %2530 = fmul fast float %2528, %63
  %2531 = fmul fast float %2529, 2.000000e+00
  %2532 = fmul fast float %2530, 2.000000e+00
  %2533 = fsub fast float 1.000000e+00, %2531
  %2534 = fsub fast float 1.000000e+00, %2532
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.CBufRet.f32 %2535, 1
  %2538 = extractvalue %dx.types.CBufRet.f32 %2535, 2
  %2539 = fmul fast float %2533, %2536
  %2540 = fmul fast float %2533, %2537
  %2541 = fmul fast float %2533, %2538
  %2542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2542, 0
  %2544 = extractvalue %dx.types.CBufRet.f32 %2542, 1
  %2545 = extractvalue %dx.types.CBufRet.f32 %2542, 2
  %2546 = fmul fast float %2534, %2543
  %2547 = fmul fast float %2534, %2544
  %2548 = fmul fast float %2534, %2545
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.CBufRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2553 = fadd fast float %2546, %2550
  %2554 = fadd fast float %2553, %2539
  %2555 = fadd fast float %2547, %2551
  %2556 = fadd fast float %2555, %2540
  %2557 = fadd fast float %2548, %2552
  %2558 = fadd fast float %2557, %2541
  %2559 = fmul fast float %2554, %1730
  %2560 = fmul fast float %2556, %1730
  %2561 = fmul fast float %2558, %1730
  %2562 = fmul fast float %2559, %2559
  %2563 = fmul fast float %2560, %2560
  %2564 = fadd fast float %2562, %2563
  %2565 = fmul fast float %2561, %2561
  %2566 = fadd fast float %2564, %2565
  %2567 = call float @dx.op.unary.f32(i32 24, float %2566)  ; Sqrt(value)
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = fsub fast float %2567, %2569
  %2571 = extractvalue %dx.types.CBufRet.f32 %2568, 2
  %2572 = fmul fast float %2570, %2571
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2574 = fadd fast float %2573, -5.000000e-01
  %2575 = fmul fast float %2574, 2.000000e+00
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 2
  %2578 = call float @dx.op.binary.f32(i32 36, float %2577, float %2575)  ; FMin(a,b)
  %2579 = fsub fast float -0.000000e+00, %2577
  %2580 = fcmp fast ogt float %2578, %2579
  br i1 %2580, label %2581, label %2793, !dx.controlflow.hints !130

; <label>:2581                                    ; preds = %2525
  %2582 = fmul fast float %2578, 5.000000e-01
  %2583 = fadd fast float %2582, 5.000000e-01
  %2584 = call float @dx.op.unary.f32(i32 22, float %2583)  ; Frc(value)
  %2585 = call float @dx.op.unary.f32(i32 27, float %2584)  ; Round_ni(value)
  %2586 = call float @dx.op.unary.f32(i32 22, float %2584)  ; Frc(value)
  %2587 = fmul fast float %2586, 2.000000e+00
  %2588 = fadd fast float %2587, -1.000000e+00
  %2589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2529, float %2530, float %2585, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2590 = extractvalue %dx.types.ResRet.f32 %2589, 0
  %2591 = extractvalue %dx.types.ResRet.f32 %2589, 1
  %2592 = extractvalue %dx.types.ResRet.f32 %2589, 2
  %2593 = extractvalue %dx.types.ResRet.f32 %2589, 3
  %2594 = fadd fast float %2590, -5.000000e-01
  %2595 = fadd fast float %2592, -5.000000e-01
  %2596 = fmul fast float %2594, 0xBFD5555560000000
  %2597 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2595, float %2596)  ; FMad(a,b,c)
  %2598 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2591, float 0.000000e+00)  ; FMad(a,b,c)
  %2599 = fadd fast float %2598, %2593
  %2600 = fmul fast float %2594, -7.500000e-01
  %2601 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2595, float %2600)  ; FMad(a,b,c)
  %2602 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2591, float 0.000000e+00)  ; FMad(a,b,c)
  %2603 = fadd fast float %2602, %2593
  %2604 = call float @dx.op.binary.f32(i32 35, float %2597, float -1.000000e+00)  ; FMax(a,b)
  %2605 = call float @dx.op.binary.f32(i32 35, float %2599, float -1.000000e+00)  ; FMax(a,b)
  %2606 = call float @dx.op.binary.f32(i32 35, float %2601, float -1.000000e+00)  ; FMax(a,b)
  %2607 = call float @dx.op.binary.f32(i32 35, float %2603, float -1.000000e+00)  ; FMax(a,b)
  %2608 = call float @dx.op.binary.f32(i32 36, float %2604, float 1.000000e+00)  ; FMin(a,b)
  %2609 = call float @dx.op.binary.f32(i32 36, float %2605, float 1.000000e+00)  ; FMin(a,b)
  %2610 = call float @dx.op.binary.f32(i32 36, float %2606, float 1.000000e+00)  ; FMin(a,b)
  %2611 = call float @dx.op.binary.f32(i32 36, float %2607, float 1.000000e+00)  ; FMin(a,b)
  %2612 = fcmp fast olt float %2608, 0x3FEFFF8020000000
  br i1 %2612, label %2613, label %2728, !dx.controlflow.hints !131

; <label>:2613                                    ; preds = %2581
  %2614 = extractvalue %dx.types.CBufRet.f32 %2576, 3
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2618 = extractvalue %dx.types.CBufRet.f32 %2615, 2
  %2619 = extractvalue %dx.types.CBufRet.f32 %2615, 3
  %2620 = fsub fast float %2616, %2608
  %2621 = fsub fast float %2617, %2609
  %2622 = fsub fast float %2618, %2610
  %2623 = fsub fast float %2619, %2611
  %2624 = fmul fast float %2620, %2614
  %2625 = fmul fast float %2621, %2614
  %2626 = fmul fast float %2622, %2614
  %2627 = fmul fast float %2623, %2614
  %2628 = fadd fast float %2624, %2608
  %2629 = fadd fast float %2625, %2609
  %2630 = fsub fast float -0.000000e+00, %2629
  %2631 = fadd fast float %2626, %2610
  %2632 = fadd fast float %2627, %2611
  %2633 = fmul fast float %2628, %2628
  %2634 = fsub fast float %2629, %2633
  %2635 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2634)  ; FMax(a,b)
  %2636 = fdiv fast float 1.000000e+00, %2635
  %2637 = fmul fast float %2629, %2628
  %2638 = fsub fast float %2631, %2637
  %2639 = fsub fast float %2588, %2628
  %2640 = fmul fast float %2588, %2588
  %2641 = fsub fast float %2640, %2629
  %2642 = fmul fast float %2639, %2636
  %2643 = fmul fast float %2642, %2638
  %2644 = fsub fast float %2641, %2643
  %2645 = fmul fast float %2629, %2629
  %2646 = fsub fast float %2632, %2645
  %2647 = fmul fast float %2638, %2638
  %2648 = fmul fast float %2647, %2636
  %2649 = fsub fast float %2646, %2648
  %2650 = fdiv fast float %2644, %2649
  %2651 = fmul fast float %2638, %2650
  %2652 = fsub fast float %2639, %2651
  %2653 = fmul fast float %2652, %2636
  %2654 = fmul fast float %2653, %2628
  %2655 = fsub fast float 1.000000e+00, %2654
  %2656 = fmul fast float %2629, %2650
  %2657 = fsub fast float %2655, %2656
  %2658 = fmul fast float %2653, %2653
  %2659 = fmul fast float %2650, 4.000000e+00
  %2660 = fmul fast float %2659, %2657
  %2661 = fsub fast float %2658, %2660
  %2662 = call float @dx.op.unary.f32(i32 24, float %2661)  ; Sqrt(value)
  %2663 = fcmp fast oge float %2653, 0.000000e+00
  %2664 = fsub fast float -0.000000e+00, %2662
  %2665 = select i1 %2663, float %2664, float %2662
  %2666 = fsub fast float %2665, %2653
  %2667 = fdiv fast float %2666, %2650
  %2668 = fdiv fast float %2657, %2666
  %2669 = fmul fast float %2667, 5.000000e-01
  %2670 = fmul fast float %2668, 2.000000e+00
  %2671 = select i1 %2663, float %2669, float %2670
  %2672 = select i1 %2663, float %2670, float %2669
  %2673 = call float @dx.op.binary.f32(i32 35, float %2671, float %2672)  ; FMax(a,b)
  %2674 = call float @dx.op.binary.f32(i32 36, float %2671, float %2672)  ; FMin(a,b)
  %2675 = fcmp fast ogt float %2588, %2674
  br i1 %2675, label %2676, label %2686

; <label>:2676                                    ; preds = %2613
  %2677 = fsub fast float %2588, %2674
  %2678 = fsub fast float %2673, %2674
  %2679 = fmul fast float %2677, %2678
  %2680 = fmul fast float %2673, %2588
  %2681 = fadd fast float %2673, %2588
  %2682 = fmul fast float %2681, %2628
  %2683 = fadd fast float %2680, %2629
  %2684 = fsub fast float %2683, %2682
  %2685 = fdiv fast float %2684, %2679
  br label %2686

; <label>:2686                                    ; preds = %2676, %2613
  %2687 = phi float [ %2685, %2676 ], [ 0.000000e+00, %2613 ]
  %2688 = fcmp fast ogt float %2588, %2673
  %2689 = fsub fast float %2588, %2673
  br i1 %2688, label %2690, label %2700

; <label>:2690                                    ; preds = %2686
  %2691 = fsub fast float %2673, %2674
  %2692 = fmul fast float %2691, %2689
  %2693 = fmul fast float %2674, %2588
  %2694 = fadd fast float %2674, %2588
  %2695 = fmul fast float %2694, %2628
  %2696 = fsub fast float %2630, %2693
  %2697 = fadd fast float %2696, %2695
  %2698 = fdiv fast float %2697, %2692
  %2699 = fadd fast float %2698, %2687
  br label %2700

; <label>:2700                                    ; preds = %2690, %2686
  %2701 = phi float [ %2699, %2690 ], [ %2687, %2686 ]
  %2702 = fsub fast float %2588, %2674
  %2703 = fmul fast float %2702, %2689
  %2704 = fmul fast float %2674, %2673
  %2705 = fadd fast float %2674, %2673
  %2706 = fmul fast float %2705, %2628
  %2707 = fadd fast float %2704, %2629
  %2708 = fsub fast float %2707, %2706
  %2709 = fdiv fast float %2708, %2703
  %2710 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  %2711 = fcmp fast oeq float %1583, 0.000000e+00
  %2712 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2713 = fcmp fast oeq float %2712, 0.000000e+00
  %2714 = or i1 %2711, %2713
  %2715 = fmul fast float %2712, 2.000000e+00
  %2716 = fadd fast float %2577, %2578
  %2717 = fdiv fast float %2716, %2715
  %2718 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  %2719 = fmul fast float %2718, 2.000000e+00
  %2720 = fsub fast float 3.000000e+00, %2719
  %2721 = fmul fast float %2718, %2718
  %2722 = fmul fast float %2721, %2720
  %2723 = select i1 %2714, float 1.000000e+00, float %2722
  %2724 = fmul fast float %2709, %1583
  %2725 = fadd fast float %2710, %2724
  %2726 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2727 = fmul fast float %2723, %2726
  br label %2728

; <label>:2728                                    ; preds = %2700, %2581
  %2729 = phi float [ %2727, %2700 ], [ 0.000000e+00, %2581 ]
  %2730 = fsub fast float 1.000000e+00, %2729
  %2731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2529, float %2530, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.i32 %2733, 2
  %2735 = icmp eq i32 %2734, 0
  br i1 %2735, label %2741, label %2736

; <label>:2736                                    ; preds = %2728
  %2737 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2738 = fadd fast float %2732, -1.000000e+00
  %2739 = fmul fast float %2737, %2738
  %2740 = fadd fast float %2739, 1.000000e+00
  br label %2741

; <label>:2741                                    ; preds = %2736, %2728
  %2742 = phi float [ %2740, %2736 ], [ %2730, %2728 ]
  %2743 = call float @dx.op.binary.f32(i32 35, float %2732, float %2742)  ; FMax(a,b)
  %2744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2745 = extractvalue %dx.types.CBufRet.i32 %2744, 2
  %2746 = and i32 %2745, 1
  %2747 = icmp eq i32 %2746, 0
  %2748 = fcmp fast une float %2743, 1.000000e+00
  %2749 = and i1 %2748, %2747
  br i1 %2749, label %2750, label %2769

; <label>:2750                                    ; preds = %2741
  %2751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2529, float %2530, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2755, 1
  %2757 = fmul fast float %2756, %2752
  %2758 = fmul fast float %2756, %2753
  %2759 = fmul fast float %2756, %2754
  %2760 = fcmp fast ogt float %2732, 0x3FEFFF2E40000000
  %2761 = fsub fast float 1.000000e+00, %2743
  %2762 = fsub fast float 1.000000e+00, %2732
  %2763 = fdiv fast float %2761, %2762
  %2764 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2765 = select i1 %2760, float 0.000000e+00, float %2764
  %2766 = fmul fast float %2757, %2765
  %2767 = fmul fast float %2758, %2765
  %2768 = fmul fast float %2759, %2765
  br label %2769

; <label>:2769                                    ; preds = %2750, %2741
  %2770 = phi float [ 0.000000e+00, %2741 ], [ %2766, %2750 ]
  %2771 = phi float [ 0.000000e+00, %2741 ], [ %2767, %2750 ]
  %2772 = phi float [ 0.000000e+00, %2741 ], [ %2768, %2750 ]
  %2773 = fmul fast float %2770, %1474
  %2774 = fmul fast float %2771, %1474
  %2775 = fmul fast float %2772, %1474
  %2776 = fmul fast float %2743, %2504
  %2777 = call float @dx.op.dot3.f32(i32 55, float %2743, float %2743, float %2743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2778 = call float @dx.op.dot3.f32(i32 55, float %2773, float %2774, float %2775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2779 = select i1 %133, float %2777, float %2743
  %2780 = select i1 %133, float 1.000000e+00, float %2743
  %2781 = select i1 %133, float %2778, float %2773
  %2782 = select i1 %133, float 0.000000e+00, float %2774
  %2783 = select i1 %133, float 0.000000e+00, float %2775
  %2784 = fmul fast float %2779, %2516
  %2785 = fmul fast float %2779, %2517
  %2786 = fmul fast float %2780, %2518
  %2787 = fadd fast float %2784, %2781
  %2788 = fadd fast float %2785, %2782
  %2789 = fadd fast float %2783, %2786
  %2790 = fmul fast float %2779, %2519
  %2791 = fmul fast float %2779, %2520
  %2792 = fmul fast float %2780, %2521
  br label %2793

; <label>:2793                                    ; preds = %2769, %2525, %2494, %1726
  %2794 = phi float [ %1731, %1726 ], [ %2516, %2494 ], [ %2787, %2769 ], [ %2516, %2525 ]
  %2795 = phi float [ %1732, %1726 ], [ %2517, %2494 ], [ %2788, %2769 ], [ %2517, %2525 ]
  %2796 = phi float [ %1733, %1726 ], [ %2518, %2494 ], [ %2789, %2769 ], [ %2518, %2525 ]
  %2797 = phi float [ %1734, %1726 ], [ %2519, %2494 ], [ %2790, %2769 ], [ %2519, %2525 ]
  %2798 = phi float [ %1735, %1726 ], [ %2520, %2494 ], [ %2791, %2769 ], [ %2520, %2525 ]
  %2799 = phi float [ %1736, %1726 ], [ %2521, %2494 ], [ %2792, %2769 ], [ %2521, %2525 ]
  %2800 = phi float [ %1737, %1726 ], [ %2504, %2494 ], [ %2776, %2769 ], [ %2504, %2525 ]
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 2
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 3
  %2804 = fmul fast float %2802, %62
  %2805 = fmul fast float %2803, %63
  %2806 = call float @dx.op.unary.f32(i32 7, float %2804)  ; Saturate(value)
  %2807 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2808 = select i1 %883, i32 2, i32 0
  %2809 = or i32 %2808, 1
  %2810 = uitofp i32 %2809 to float
  %2811 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2806, float %2807, float %2810, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.ResRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.ResRet.f32 %2811, 2
  %2815 = extractvalue %dx.types.ResRet.f32 %2811, 3
  %2816 = add nuw nsw i32 %2808, 2
  %2817 = uitofp i32 %2816 to float
  %2818 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2806, float %2807, float %2817, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  %2820 = extractvalue %dx.types.ResRet.f32 %2818, 1
  %2821 = extractvalue %dx.types.ResRet.f32 %2818, 2
  %2822 = extractvalue %dx.types.ResRet.f32 %2818, 3
  %2823 = call float @dx.op.binary.f32(i32 35, float %2813, float %2814)  ; FMax(a,b)
  %2824 = call float @dx.op.binary.f32(i32 35, float %2812, float %2823)  ; FMax(a,b)
  %2825 = call float @dx.op.binary.f32(i32 35, float %2824, float %2815)  ; FMax(a,b)
  %2826 = call float @dx.op.binary.f32(i32 36, float %2820, float %2821)  ; FMin(a,b)
  %2827 = call float @dx.op.binary.f32(i32 36, float %2819, float %2826)  ; FMin(a,b)
  %2828 = call float @dx.op.binary.f32(i32 36, float %2827, float %2822)  ; FMin(a,b)
  %2829 = fmul fast float %2825, 2.550000e+02
  %2830 = fadd fast float %2829, 0x3F70101020000000
  %2831 = fptoui float %2830 to i32
  %2832 = fmul fast float %2828, 2.550000e+02
  %2833 = fadd fast float %2832, 0x3F70101020000000
  %2834 = fptoui float %2833 to i32
  %2835 = icmp ult i32 %2831, %2834
  br i1 %2835, label %2836, label %2882

; <label>:2836                                    ; preds = %2793
  %2837 = fcmp fast ogt float %54, 9.843750e-01
  %2838 = fadd fast float %1730, -4.000000e+00
  %2839 = select i1 %2837, float -4.000000e+00, float %2838
  %2840 = call float @dx.op.binary.f32(i32 35, float %2839, float 0.000000e+00)  ; FMax(a,b)
  %2841 = fadd fast float %1048, %2840
  %2842 = fmul fast float %2841, %1049
  %2843 = call float @dx.op.unary.f32(i32 23, float %2842)  ; Log(value)
  %2844 = fmul fast float %1050, %2843
  %2845 = fmul fast float %2844, %1058
  %2846 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2847 = uitofp i32 %2831 to float
  %2848 = uitofp i32 %2834 to float
  %2849 = fadd fast float %2847, 5.000000e-01
  %2850 = fadd fast float %2848, 5.000000e-01
  %2851 = fmul fast float %1058, %2849
  %2852 = fmul fast float %1058, %2850
  %2853 = fadd fast float %2851, 0x3F0FFB4800000000
  %2854 = fadd fast float %2852, 0xBF0FFB4800000000
  %2855 = call float @dx.op.binary.f32(i32 35, float %2846, float %2853)  ; FMax(a,b)
  %2856 = call float @dx.op.binary.f32(i32 36, float %2855, float %2854)  ; FMin(a,b)
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 1
  %2859 = extractvalue %dx.types.CBufRet.f32 %2857, 2
  %2860 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2861 = select i1 %883, float %2860, float 0.000000e+00
  %2862 = fmul fast float %2858, %2856
  %2863 = fadd fast float %2861, %2862
  %2864 = fadd fast float %2861, %2859
  %2865 = fsub fast float %2858, %2859
  %2866 = fadd fast float %2865, %2861
  %2867 = call float @dx.op.binary.f32(i32 35, float %2863, float %2864)  ; FMax(a,b)
  %2868 = call float @dx.op.binary.f32(i32 36, float %2867, float %2866)  ; FMin(a,b)
  %2869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2806, float %2807, float %2868, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2870 = extractvalue %dx.types.ResRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.ResRet.f32 %2869, 1
  %2872 = extractvalue %dx.types.ResRet.f32 %2869, 2
  %2873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2806, float %2807, float %2868, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.ResRet.f32 %2873, 1
  %2876 = extractvalue %dx.types.ResRet.f32 %2873, 2
  %2877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2878 = extractvalue %dx.types.CBufRet.f32 %2877, 1
  %2879 = fmul fast float %2878, %2874
  %2880 = fmul fast float %2878, %2875
  %2881 = fmul fast float %2878, %2876
  br label %2882

; <label>:2882                                    ; preds = %2836, %2793
  %2883 = phi float [ %2870, %2836 ], [ 1.000000e+00, %2793 ]
  %2884 = phi float [ %2871, %2836 ], [ 1.000000e+00, %2793 ]
  %2885 = phi float [ %2872, %2836 ], [ 1.000000e+00, %2793 ]
  %2886 = phi float [ %2879, %2836 ], [ 0.000000e+00, %2793 ]
  %2887 = phi float [ %2880, %2836 ], [ 0.000000e+00, %2793 ]
  %2888 = phi float [ %2881, %2836 ], [ 0.000000e+00, %2793 ]
  %2889 = fmul fast float %2886, %1474
  %2890 = fmul fast float %2887, %1474
  %2891 = fmul fast float %2888, %1474
  %2892 = fmul fast float %2883, %2800
  %2893 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2889, float %2890, float %2891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2895 = select i1 %133, float %2893, float %2883
  %2896 = select i1 %133, float %2893, float %2884
  %2897 = select i1 %133, float 1.000000e+00, float %2885
  %2898 = select i1 %133, float %2894, float %2889
  %2899 = select i1 %133, float 0.000000e+00, float %2890
  %2900 = select i1 %133, float 0.000000e+00, float %2891
  %2901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.i32 %2901, 3
  %2903 = and i32 %2902, 3
  %2904 = icmp ne i32 %2903, 0
  %2905 = and i32 %2902, 4
  %2906 = icmp ne i32 %2905, 0
  %2907 = and i1 %2904, %2906
  %2908 = and i1 %133, %2907
  br i1 %2908, label %2909, label %2915

; <label>:2909                                    ; preds = %2882
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2912 = fadd fast float %2892, -1.000000e+00
  %2913 = fmul fast float %2911, %2912
  %2914 = fadd fast float %2913, 1.000000e+00
  br label %2915

; <label>:2915                                    ; preds = %2909, %2882
  %2916 = phi float [ %2914, %2909 ], [ %2892, %2882 ]
  %2917 = fadd fast float %2797, %2794
  %2918 = fmul fast float %2895, %2917
  %2919 = fadd fast float %2918, %2898
  %2920 = fadd fast float %2798, %2795
  %2921 = fmul fast float %2896, %2920
  %2922 = fadd fast float %2921, %2899
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  br i1 %133, label %2925, label %2947

; <label>:2925                                    ; preds = %2915
  %2926 = fadd fast float %2919, %2922
  %2927 = fmul fast float %2924, %2926
  %2928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2929 = extractvalue %dx.types.CBufRet.f32 %2928, 3
  %2930 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %2931 = fsub fast float %1482, %2930
  %2932 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %2933 = fmul fast float %2931, %2932
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = fsub fast float %2934, %2929
  %2936 = fmul fast float %2935, %2916
  %2937 = fadd fast float %2936, %2929
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2940 = fsub fast float %2937, %2939
  %2941 = fmul fast float %2940, 1.000000e+01
  %2942 = call float @dx.op.unary.f32(i32 7, float %2941)  ; Saturate(value)
  %2943 = fsub fast float %859, %1474
  %2944 = fmul fast float %2942, %2943
  %2945 = fadd fast float %2944, %1474
  %2946 = fmul fast float %2945, %2937
  br label %2959

; <label>:2947                                    ; preds = %2915
  %2948 = fadd fast float %2799, %2796
  %2949 = fmul fast float %2897, %2948
  %2950 = fadd fast float %2949, %2900
  %2951 = fmul fast float %2924, %2919
  %2952 = fmul fast float %2924, %2922
  %2953 = fmul fast float %2924, %2950
  %2954 = call float @dx.op.binary.f32(i32 35, float %2952, float %2953)  ; FMax(a,b)
  %2955 = call float @dx.op.binary.f32(i32 35, float %2951, float %2954)  ; FMax(a,b)
  %2956 = call float @dx.op.binary.f32(i32 35, float %2955, float %1474)  ; FMax(a,b)
  %2957 = fcmp fast ugt float %2956, 0x3F10000000000000
  br i1 %2957, label %2959, label %2958

; <label>:2958                                    ; preds = %2947
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2959

; <label>:2959                                    ; preds = %2958, %2947, %2925
  %2960 = phi float [ %2927, %2925 ], [ %2951, %2958 ], [ %2951, %2947 ]
  %2961 = phi float [ %2946, %2925 ], [ %2952, %2958 ], [ %2952, %2947 ]
  %2962 = phi float [ %2945, %2925 ], [ %2953, %2958 ], [ %2953, %2947 ]
  %2963 = phi float [ %2945, %2925 ], [ %1474, %2958 ], [ %1474, %2947 ]
  %2964 = fadd fast float %551, 0x3FE3C6EF40000000
  %2965 = call float @dx.op.unary.f32(i32 22, float %2964)  ; Frc(value)
  %2966 = call float @dx.op.unary.f32(i32 23, float %2960)  ; Log(value)
  %2967 = fadd fast float %2966, -7.000000e+00
  %2968 = call float @dx.op.unary.f32(i32 21, float %2967)  ; Exp(value)
  %2969 = fmul fast float %2965, 2.000000e+00
  %2970 = fadd fast float %2969, -1.000000e+00
  %2971 = fmul fast float %2968, %2970
  %2972 = fcmp fast ogt float %2960, 0.000000e+00
  %2973 = select i1 %2972, float %2971, float 0.000000e+00
  %2974 = fadd fast float %2973, %2960
  %2975 = fadd fast float %551, 0x3FF3C6EF40000000
  %2976 = call float @dx.op.unary.f32(i32 22, float %2975)  ; Frc(value)
  %2977 = call float @dx.op.unary.f32(i32 23, float %2961)  ; Log(value)
  %2978 = fadd fast float %2977, -7.000000e+00
  %2979 = call float @dx.op.unary.f32(i32 21, float %2978)  ; Exp(value)
  %2980 = fmul fast float %2976, 2.000000e+00
  %2981 = fadd fast float %2980, -1.000000e+00
  %2982 = fmul fast float %2979, %2981
  %2983 = fcmp fast ogt float %2961, 0.000000e+00
  %2984 = select i1 %2983, float %2982, float 0.000000e+00
  %2985 = fadd fast float %2984, %2961
  %2986 = fadd fast float %551, 0x3FFDAA66E0000000
  %2987 = call float @dx.op.unary.f32(i32 22, float %2986)  ; Frc(value)
  %2988 = call float @dx.op.unary.f32(i32 23, float %2962)  ; Log(value)
  %2989 = fadd fast float %2988, -6.000000e+00
  %2990 = call float @dx.op.unary.f32(i32 21, float %2989)  ; Exp(value)
  %2991 = fmul fast float %2987, 2.000000e+00
  %2992 = fadd fast float %2991, -1.000000e+00
  %2993 = fmul fast float %2990, %2992
  %2994 = fcmp fast ogt float %2962, 0.000000e+00
  %2995 = select i1 %2994, float %2993, float 0.000000e+00
  %2996 = fadd fast float %2995, %2962
  %2997 = select i1 %133, float %2961, float %2985
  %2998 = select i1 %133, float %2962, float %2996
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2999 = call float @dx.op.binary.f32(i32 36, float %2974, float 3.225500e+04)  ; FMin(a,b)
  %3000 = call float @dx.op.binary.f32(i32 36, float %2997, float 3.225500e+04)  ; FMin(a,b)
  %3001 = call float @dx.op.binary.f32(i32 36, float %2998, float 3.225500e+04)  ; FMin(a,b)
  %3002 = call float @dx.op.binary.f32(i32 36, float %2963, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2999)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3000)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3001)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3002)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!42 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !68}
!44 = !{!45, !64, null}
!45 = !{!46, !49, !50, !52, !55, !57, !59, !61, !62, !63}
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
!62 = !{i32 8, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 3, i32 8, i8 0, !54}
!63 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!64 = !{!65, !66}
!65 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !48}
!66 = !{i32 1, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 1, i8 0, !48}
!67 = !{i32 1}
!68 = !{i32 0, i64 24}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = !{!83, !83, i64 0}
!83 = !{!"float", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{!87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!87 = distinct !{!87, !88, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!88 = distinct !{!88, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!89 = distinct !{!89, !90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!90 = distinct !{!90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!91 = distinct !{!91, !90, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!92 = distinct !{!92, !93, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!93 = distinct !{!93, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!94 = distinct !{!94, !93, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!95 = distinct !{!95, !93, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!96 = distinct !{!96, !97, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!97 = distinct !{!97, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!98 = distinct !{!98, !97, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!99 = distinct !{!99, !97, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!100 = distinct !{!100, !101, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!101 = distinct !{!101, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"\01?sort@@YAXAIAM00@Z: %c"}
!104 = distinct !{!104, !"\01?sort@@YAXAIAM00@Z"}
!105 = !{!106, !107, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!106 = distinct !{!106, !104, !"\01?sort@@YAXAIAM00@Z: %a"}
!107 = distinct !{!107, !104, !"\01?sort@@YAXAIAM00@Z: %b"}
!108 = !{!107}
!109 = !{!106, !103, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!110 = !{!106}
!111 = !{!107, !103, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!112 = !{!113}
!113 = distinct !{!113, !114, !"\01?sort@@YAXAIAM00@Z: %c"}
!114 = distinct !{!114, !"\01?sort@@YAXAIAM00@Z"}
!115 = !{!116, !117, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!116 = distinct !{!116, !114, !"\01?sort@@YAXAIAM00@Z: %a"}
!117 = distinct !{!117, !114, !"\01?sort@@YAXAIAM00@Z: %b"}
!118 = !{!117}
!119 = !{!116, !113, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!120 = !{!116}
!121 = !{!117, !113, !87, !89, !91, !92, !94, !95, !96, !98, !99, !100}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 2}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}

