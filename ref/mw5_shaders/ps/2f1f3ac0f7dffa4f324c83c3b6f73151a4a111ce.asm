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
; shader hash: 7f94fc573161623b84ad59b1a939d090
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
  %190 = and i32 %151, 16
  %191 = icmp ne i32 %190, 0
  %192 = select i1 %191, float 1.000000e+00, float %50
  %193 = add i32 %31, 80
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = add i32 %195, 0
  %197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %197, %dx.types.Handle %58, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float %199, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fmul fast float %201, %192
  %203 = icmp eq i32 %190, 0
  br i1 %203, label %223, label %204, !dx.controlflow.hints !70

; <label>:204                                     ; preds = %187
  %205 = add i32 %148, 64
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fadd fast float %207, 1.000000e+00
  %209 = fmul fast float %208, %50
  %210 = fsub fast float %209, %207
  %211 = fsub fast float %208, %210
  %212 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %213 = fsub fast float 1.000000e+00, %209
  %214 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %215 = fsub fast float %212, %214
  %216 = fsub fast float %202, %214
  %217 = fdiv fast float %216, %215
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fmul fast float %218, 2.000000e+00
  %220 = fsub fast float 3.000000e+00, %219
  %221 = fmul fast float %218, %218
  %222 = fmul fast float %221, %220
  br label %223

; <label>:223                                     ; preds = %204, %187
  %224 = phi float [ %222, %204 ], [ %202, %187 ]
  %225 = fcmp fast ogt float %224, 0.000000e+00
  br i1 %225, label %227, label %226

; <label>:226                                     ; preds = %223
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %227

; <label>:227                                     ; preds = %226, %223
  %228 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %229 = fmul fast float %61, 5.000000e-01
  %230 = fmul fast float %62, 5.000000e-01
  %231 = fptosi float %229 to i32
  %232 = fptosi float %230 to i32
  %233 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = lshr i32 %234, 18
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F4C00EBA0000000
  %238 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %239 = fadd fast float %238, -1.000000e+00
  %240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %241 = extractvalue %dx.types.Dimensions %240, 0
  %242 = sitofp i32 %241 to float
  %243 = extractvalue %dx.types.Dimensions %240, 1
  %244 = sitofp i32 %243 to float
  %245 = fcmp fast oge float %229, %242
  %246 = fcmp fast oge float %230, %244
  %247 = or i1 %245, %246
  %248 = select i1 %247, float 0x4197782600000000, float %239
  %249 = fsub fast float %248, %54
  %250 = fcmp fast ogt float %249, 0.000000e+00
  %251 = and i32 %147, -2
  %252 = icmp eq i32 %251, 2
  %253 = and i1 %252, %250
  %254 = xor i1 %250, true
  %255 = icmp eq i32 %147, 1
  %256 = and i1 %255, %254
  %257 = or i1 %253, %256
  %258 = and i32 %151, 262144
  %259 = icmp ne i32 %258, 0
  %260 = and i1 %259, %257
  %261 = xor i1 %257, true
  %262 = and i32 %151, 131072
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %263, %261
  %265 = or i1 %260, %264
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %227
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %267

; <label>:267                                     ; preds = %266, %227
  %268 = and i32 %151, 32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %519, label %270, !dx.controlflow.hints !71

; <label>:270                                     ; preds = %267
  %271 = add i32 %148, 80
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = add i32 %148, 96
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = add i32 %148, 112
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = add i32 %148, 128
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 4096
  %297 = icmp ne i32 %296, 0
  %298 = fcmp fast une float %281, 0.000000e+00
  %299 = and i32 %295, 64
  %300 = icmp ne i32 %299, 0
  %301 = and i32 %295, 128
  %302 = icmp eq i32 %301, 0
  %303 = and i32 %295, 2048
  %304 = icmp eq i32 %303, 0
  %305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %306 = extractvalue %dx.types.Dimensions %305, 0
  %307 = sitofp i32 %306 to float
  %308 = extractvalue %dx.types.Dimensions %305, 1
  %309 = sitofp i32 %308 to float
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %313 = fmul fast float %311, %61
  %314 = fmul fast float %312, %62
  %315 = fmul fast float %313, %307
  %316 = fmul fast float %314, %309
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %319 = fsub fast float -0.000000e+00, %318
  %320 = fptoui float %319 to i32
  %321 = fptoui float %315 to i32
  %322 = fptoui float %316 to i32
  %323 = and i32 %320, 31
  %324 = lshr i32 %321, %323
  %325 = lshr i32 %322, %323
  %326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %320, i32 %324, i32 %325, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = fcmp fast ogt float %327, -1.000000e+00
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = select i1 %328, float %330, float 1.000000e+00
  %332 = fadd fast float %327, 1.000000e+00
  %333 = fmul fast float %331, %332
  %334 = call float @dx.op.unary.f32(i32 6, float %333)  ; FAbs(value)
  %335 = extractvalue %dx.types.CBufRet.f32 %329, 3
  %336 = fcmp fast oge float %334, %335
  %337 = select i1 %336, float 0x4197782600000000, float %334
  br i1 %304, label %415, label %338, !dx.controlflow.hints !72

; <label>:338                                     ; preds = %270
  %339 = fmul fast float %66, %311
  %340 = fmul fast float %68, %312
  %341 = fsub fast float 1.000000e+00, %339
  %342 = fsub fast float 1.000000e+00, %340
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fmul fast float %341, %344
  %348 = fmul fast float %341, %345
  %349 = fmul fast float %341, %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fmul fast float %342, %351
  %355 = fmul fast float %342, %352
  %356 = fmul fast float %342, %353
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fadd fast float %354, %358
  %362 = fadd fast float %361, %347
  %363 = fadd fast float %355, %359
  %364 = fadd fast float %363, %348
  %365 = fadd fast float %356, %360
  %366 = fadd fast float %365, %349
  %367 = fmul fast float %362, %337
  %368 = fmul fast float %364, %337
  %369 = fmul fast float %366, %337
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = fsub fast float %371, %32
  %375 = fadd fast float %374, %367
  %376 = fsub fast float %372, %33
  %377 = fadd fast float %376, %368
  %378 = fsub fast float %373, %34
  %379 = fadd fast float %378, %369
  %380 = fmul fast float %35, %35
  %381 = call float @dx.op.dot3.f32(i32 55, float %375, float %377, float %379, float %375, float %377, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = fsub fast float %380, %381
  %383 = fmul fast float %280, %380
  %384 = fmul fast float %279, %380
  %385 = fcmp fast olt float %382, %383
  %386 = fcmp fast ogt float %382, %384
  %387 = or i1 %385, %386
  %388 = select i1 %387, float 0.000000e+00, float %382
  %389 = fsub fast float %279, %280
  %390 = fmul fast float %389, %380
  %391 = fsub fast float %388, %383
  %392 = fdiv fast float %391, %390
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = fmul fast float %393, 2.000000e+00
  %395 = fsub fast float 3.000000e+00, %394
  %396 = fmul fast float %393, %393
  %397 = fmul fast float %396, %395
  %398 = fmul fast float %284, %47
  %399 = fmul fast float %285, %48
  %400 = fmul fast float %286, %49
  %401 = fsub fast float %398, %290
  %402 = fsub fast float %399, %291
  %403 = fsub fast float %400, %292
  %404 = fsub fast float %287, %293
  %405 = fmul fast float %397, %401
  %406 = fmul fast float %397, %402
  %407 = fmul fast float %397, %403
  %408 = fmul fast float %397, %404
  %409 = fadd fast float %405, %290
  %410 = fadd fast float %406, %291
  %411 = fadd fast float %407, %292
  %412 = fadd fast float %408, %293
  %413 = fmul fast float %273, %273
  %414 = fmul fast float %413, %388
  br label %510

; <label>:415                                     ; preds = %270
  %416 = and i32 %295, 256
  %417 = icmp eq i32 %416, 0
  %418 = fsub fast float %337, %54
  br i1 %417, label %467, label %419

; <label>:419                                     ; preds = %415
  %420 = fadd fast float %279, %54
  %421 = fcmp fast olt float %337, %54
  %422 = fcmp fast ogt float %337, %420
  %423 = or i1 %421, %422
  %424 = select i1 %423, float 0.000000e+00, float %418
  %425 = call float @dx.op.unary.f32(i32 83, float %337)  ; DerivCoarseX(value)
  %426 = call float @dx.op.unary.f32(i32 84, float %337)  ; DerivCoarseY(value)
  %427 = fmul fast float %425, %425
  %428 = fmul fast float %426, %426
  %429 = fadd fast float %428, %427
  %430 = call float @dx.op.unary.f32(i32 24, float %429)  ; Sqrt(value)
  %431 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %432 = fmul fast float %431, %430
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, %280
  %435 = fdiv fast float %418, %434
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %436, %436
  %440 = fmul fast float %439, %438
  %441 = fsub fast float %337, %420
  %442 = fadd fast float %441, %434
  %443 = fdiv fast float %442, %434
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fmul fast float %444, 2.000000e+00
  %446 = fsub fast float 3.000000e+00, %445
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %447, %446
  %449 = fsub fast float %440, %448
  %450 = fmul fast float %284, %47
  %451 = fmul fast float %285, %48
  %452 = fmul fast float %286, %49
  %453 = fsub fast float %450, %290
  %454 = fsub fast float %451, %291
  %455 = fsub fast float %452, %292
  %456 = fsub fast float %287, %293
  %457 = fmul fast float %449, %453
  %458 = fmul fast float %449, %454
  %459 = fmul fast float %449, %455
  %460 = fmul fast float %449, %456
  %461 = fadd fast float %457, %290
  %462 = fadd fast float %458, %291
  %463 = fadd fast float %459, %292
  %464 = fadd fast float %460, %293
  %465 = fmul fast float %424, %273
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  br label %510

; <label>:467                                     ; preds = %415
  br i1 %298, label %468, label %481

; <label>:468                                     ; preds = %467
  %469 = fdiv fast float 5.000000e+01, %35
  %470 = select i1 %300, float %469, float 1.000000e+00
  %471 = fmul fast float %470, %273
  %472 = fmul fast float %45, 2.000000e+00
  %473 = fmul fast float %46, 2.000000e+00
  %474 = fadd fast float %472, -1.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = call float @dx.op.dot2.f32(i32 54, float %474, float %475, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %477 = fmul fast float %281, %35
  %478 = fmul fast float %477, %476
  %479 = fsub fast float %418, %478
  %480 = fmul fast float %471, %479
  br label %510

; <label>:481                                     ; preds = %467
  br i1 %302, label %502, label %482

; <label>:482                                     ; preds = %481
  %483 = fmul fast float %35, 0x3F947AE140000000
  %484 = select i1 %300, float %483, float 1.000000e+00
  %485 = fdiv fast float 1.000000e+00, %484
  %486 = fmul fast float %484, %274
  %487 = fmul fast float %484, %275
  %488 = fmul fast float %485, %276
  %489 = call float @dx.op.unary.f32(i32 6, float %418)  ; FAbs(value)
  %490 = fcmp fast olt float %489, %486
  br i1 %490, label %491, label %495, !dx.controlflow.hints !73

; <label>:491                                     ; preds = %482
  %492 = fmul fast float %485, %273
  %493 = fmul fast float %492, %489
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  br label %510

; <label>:495                                     ; preds = %482
  %496 = fcmp fast ogt float %489, %487
  br i1 %496, label %497, label %510

; <label>:497                                     ; preds = %495
  %498 = fsub fast float %489, %487
  %499 = fmul fast float %488, %498
  %500 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  %501 = fsub fast float 1.000000e+00, %500
  br label %510

; <label>:502                                     ; preds = %481
  %503 = fdiv fast float 5.000000e+01, %35
  %504 = select i1 %300, float %503, float 1.000000e+00
  %505 = fmul fast float %504, %273
  %506 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %507 = select i1 %297, float %506, float 0x47EFFFFFE0000000
  %508 = call float @dx.op.binary.f32(i32 36, float %418, float %507)  ; FMin(a,b)
  %509 = fmul fast float %505, %508
  br label %510

; <label>:510                                     ; preds = %502, %497, %495, %491, %468, %419, %338
  %511 = phi float [ %414, %338 ], [ %466, %419 ], [ %480, %468 ], [ %509, %502 ], [ %494, %491 ], [ %501, %497 ], [ %489, %495 ]
  %512 = phi float [ %409, %338 ], [ %461, %419 ], [ %47, %468 ], [ %47, %502 ], [ %47, %491 ], [ %47, %497 ], [ %47, %495 ]
  %513 = phi float [ %410, %338 ], [ %462, %419 ], [ %48, %468 ], [ %48, %502 ], [ %48, %491 ], [ %48, %497 ], [ %48, %495 ]
  %514 = phi float [ %411, %338 ], [ %463, %419 ], [ %49, %468 ], [ %49, %502 ], [ %49, %491 ], [ %49, %497 ], [ %49, %495 ]
  %515 = phi float [ %412, %338 ], [ %464, %419 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %502 ], [ 1.000000e+00, %491 ], [ 1.000000e+00, %497 ], [ 1.000000e+00, %495 ]
  %516 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %517 = fmul fast float %515, %228
  %518 = fmul fast float %517, %516
  br label %519

; <label>:519                                     ; preds = %510, %267
  %520 = phi float [ %512, %510 ], [ %47, %267 ]
  %521 = phi float [ %513, %510 ], [ %48, %267 ]
  %522 = phi float [ %514, %510 ], [ %49, %267 ]
  %523 = phi float [ %518, %510 ], [ %228, %267 ]
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %526 = fptosi float %54 to i32
  %527 = sitofp i32 %526 to float
  %528 = fadd fast float %525, %527
  %529 = fmul fast float %528, 0x3FE3C6EF40000000
  %530 = frem fast float %61, 2.560000e+02
  %531 = frem fast float %62, 2.560000e+02
  %532 = fptoui float %530 to i32
  %533 = fptoui float %531 to i32
  %534 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %532, i32 %533, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = fadd fast float %535, %529
  %537 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %538 = and i32 %151, 1
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %596, label %540, !dx.controlflow.hints !74

; <label>:540                                     ; preds = %519
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 2
  %543 = extractvalue %dx.types.ResRet.f32 %541, 3
  %544 = add i32 %148, 16
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = add i32 %148, 32
  %550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = and i32 %151, 2
  %555 = icmp eq i32 %554, 0
  %556 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %557 = call float @dx.op.unary.f32(i32 25, float %556)  ; Rsqrt(value)
  %558 = fmul fast float %557, %42
  %559 = fmul fast float %557, %43
  %560 = fmul fast float %557, %44
  %561 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.unary.f32(i32 25, float %561)  ; Rsqrt(value)
  %563 = fmul fast float %562, %96
  %564 = fmul fast float %562, %97
  %565 = fmul fast float %562, %98
  %566 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float %558, float %559, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = fmul fast float %566, %566
  %568 = fmul fast float %567, %542
  %569 = fadd fast float %568, %543
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  br i1 %555, label %571, label %581, !dx.controlflow.hints !75

; <label>:571                                     ; preds = %540
  %572 = extractvalue %dx.types.ResRet.f32 %541, 1
  %573 = extractvalue %dx.types.ResRet.f32 %541, 0
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = fmul fast float %575, %561
  %577 = fsub fast float %573, %576
  %578 = fmul fast float %577, %572
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %580 = fmul fast float %579, %570
  br label %581

; <label>:581                                     ; preds = %571, %540
  %582 = phi float [ %580, %571 ], [ %570, %540 ]
  %583 = fsub fast float %546, %551
  %584 = fsub fast float %547, %552
  %585 = fsub fast float %548, %553
  %586 = fmul fast float %582, %583
  %587 = fmul fast float %582, %584
  %588 = fmul fast float %582, %585
  %589 = fadd fast float %586, %551
  %590 = fadd fast float %587, %552
  %591 = fadd fast float %588, %553
  %592 = fmul fast float %589, %520
  %593 = fmul fast float %590, %521
  %594 = fmul fast float %591, %522
  %595 = fmul fast float %582, %523
  br label %596

; <label>:596                                     ; preds = %581, %519
  %597 = phi float [ %592, %581 ], [ %520, %519 ]
  %598 = phi float [ %593, %581 ], [ %521, %519 ]
  %599 = phi float [ %594, %581 ], [ %522, %519 ]
  %600 = phi float [ %595, %581 ], [ %523, %519 ]
  %601 = add i32 %31, 72
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %603, 0
  %605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %606 = add i32 %31, 24
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %605, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = and i32 %608, 255
  %615 = uitofp i32 %614 to float
  %616 = lshr i32 %608, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %613, %615
  %620 = fadd fast float %619, %618
  %621 = fmul fast float %620, 0x3F70101000000000
  %622 = add i32 %31, 56
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %624, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = lshr i32 %624, 16
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F70101020000000
  %636 = fmul fast float %610, %597
  %637 = fmul fast float %627, %627
  %638 = fmul fast float %637, %636
  %639 = fmul fast float %611, %598
  %640 = fmul fast float %631, %631
  %641 = fmul fast float %640, %639
  %642 = fmul fast float %612, %599
  %643 = fmul fast float %635, %635
  %644 = fmul fast float %643, %642
  %645 = add i32 %31, 28
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = add i32 %31, 76
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = add i32 %650, 0
  %652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %652, %dx.types.Handle %57, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 3
  %657 = and i32 %647, 255
  %658 = uitofp i32 %657 to float
  %659 = lshr i32 %647, 8
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = lshr i32 %647, 16
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101000000000
  %666 = fmul fast float %654, %658
  %667 = fadd fast float %666, %661
  %668 = fmul fast float %667, 0x3F70101000000000
  %669 = fadd fast float %655, -5.000000e-01
  %670 = fadd fast float %656, -5.000000e-01
  %671 = fmul fast float %669, %665
  %672 = fmul fast float %670, %665
  %673 = fadd fast float %671, 5.000000e-01
  %674 = fadd fast float %672, 5.000000e-01
  %675 = fmul fast float %673, 2.000000e+00
  %676 = fadd fast float %675, -1.000000e+00
  %677 = fmul fast float %674, 2.000000e+00
  %678 = fadd fast float %677, -1.000000e+00
  %679 = fadd fast float %676, %678
  %680 = fmul fast float %679, 5.000000e-01
  %681 = fsub fast float %676, %678
  %682 = fmul fast float %681, 5.000000e-01
  %683 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %684 = fsub fast float 1.000000e+00, %683
  %685 = call float @dx.op.unary.f32(i32 6, float %682)  ; FAbs(value)
  %686 = fsub fast float %684, %685
  %687 = call float @dx.op.dot3.f32(i32 55, float %680, float %682, float %686, float %680, float %682, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 25, float %687)  ; Rsqrt(value)
  %689 = fmul fast float %680, %688
  %690 = fmul fast float %682, %688
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 3
  %693 = fcmp fast ogt float %692, 0.000000e+00
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 1
  br i1 %693, label %696, label %721

; <label>:696                                     ; preds = %596
  %697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = extractvalue %dx.types.ResRet.f32 %697, 1
  %700 = extractvalue %dx.types.ResRet.f32 %697, 2
  %701 = extractvalue %dx.types.ResRet.f32 %697, 3
  %702 = fmul fast float %695, %701
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = extractvalue %dx.types.ResRet.f32 %703, 3
  %708 = fmul fast float %695, %704
  %709 = fmul fast float %695, %705
  %710 = fmul fast float %695, %706
  %711 = fmul fast float %695, %707
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %36, float %37, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = extractvalue %dx.types.ResRet.f32 %712, 3
  %717 = fmul fast float %695, %713
  %718 = fmul fast float %695, %714
  %719 = fmul fast float %695, %715
  %720 = fmul fast float %695, %716
  br label %726

; <label>:721                                     ; preds = %596
  %722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = extractvalue %dx.types.ResRet.f32 %722, 1
  %725 = extractvalue %dx.types.ResRet.f32 %722, 2
  br label %726

; <label>:726                                     ; preds = %721, %696
  %727 = phi float [ %717, %696 ], [ 0.000000e+00, %721 ]
  %728 = phi float [ %718, %696 ], [ 0.000000e+00, %721 ]
  %729 = phi float [ %719, %696 ], [ 0.000000e+00, %721 ]
  %730 = phi float [ %720, %696 ], [ 0.000000e+00, %721 ]
  %731 = phi float [ %708, %696 ], [ 0.000000e+00, %721 ]
  %732 = phi float [ %709, %696 ], [ 0.000000e+00, %721 ]
  %733 = phi float [ %710, %696 ], [ 0.000000e+00, %721 ]
  %734 = phi float [ %711, %696 ], [ 0.000000e+00, %721 ]
  %735 = phi float [ %698, %696 ], [ %723, %721 ]
  %736 = phi float [ %699, %696 ], [ %724, %721 ]
  %737 = phi float [ %700, %696 ], [ %725, %721 ]
  %738 = phi float [ %702, %696 ], [ 0.000000e+00, %721 ]
  %739 = fmul float %695, %737
  %740 = fmul float %695, %736
  %741 = fmul float %695, %735
  %742 = call float @dx.op.dot2.f32(i32 54, float %689, float %690, float %689, float %690)  ; Dot2(ax,ay,bx,by)
  %743 = fsub fast float 1.000000e+00, %742
  %744 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %745 = call float @dx.op.unary.f32(i32 24, float %744)  ; Sqrt(value)
  %746 = fmul fast float %745, %42
  %747 = fmul fast float %745, %43
  %748 = fmul fast float %745, %44
  %749 = fmul fast float %689, %38
  %750 = fmul fast float %689, %39
  %751 = fmul fast float %689, %40
  %752 = fmul fast float %108, %690
  %753 = fmul fast float %109, %690
  %754 = fmul fast float %110, %690
  %755 = fadd fast float %752, %749
  %756 = fadd fast float %755, %746
  %757 = fadd fast float %753, %750
  %758 = fadd fast float %757, %747
  %759 = fadd fast float %754, %751
  %760 = fadd fast float %759, %748
  %761 = call float @dx.op.dot3.f32(i32 55, float %756, float %758, float %760, float %756, float %758, float %760)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = call float @dx.op.unary.f32(i32 25, float %761)  ; Rsqrt(value)
  %763 = fmul fast float %756, %762
  %764 = fmul fast float %758, %762
  %765 = fmul fast float %760, %762
  %766 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = call float @dx.op.unary.f32(i32 25, float %766)  ; Rsqrt(value)
  %768 = fmul fast float %767, %96
  %769 = fmul fast float %767, %97
  %770 = fmul fast float %767, %98
  %771 = fsub fast float -0.000000e+00, %768
  %772 = fsub fast float -0.000000e+00, %769
  %773 = fsub fast float -0.000000e+00, %770
  %774 = fadd fast float %621, 0xBFB99999A0000000
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = fmul fast float %775, 0x3FF1C71C80000000
  %777 = call float @dx.op.binary.f32(i32 36, float %621, float 0x3FB99999A0000000)  ; FMin(a,b)
  %778 = fsub fast float 1.000000e+00, %776
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = fmul fast float %779, %638
  %781 = fmul fast float %779, %641
  %782 = fmul fast float %779, %644
  %783 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %784 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %785 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %786 = fmul fast float %776, %638
  %787 = fmul fast float %776, %641
  %788 = fmul fast float %776, %644
  %789 = fadd fast float %786, %777
  %790 = fadd fast float %787, %777
  %791 = fadd fast float %788, %777
  %792 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %793 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %794 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %795 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %796 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = add i32 %31, 32
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = lshr i32 %799, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = fmul fast float %804, %796
  %806 = fadd fast float %805, %801
  %807 = fmul fast float %806, 0x3F70101020000000
  %808 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %809 = and i32 %151, 8192
  %810 = icmp eq i32 %809, 0
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 0
  br i1 %810, label %819, label %813, !dx.controlflow.hints !76

; <label>:813                                     ; preds = %726
  %814 = add i32 %148, 176
  %815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = fcmp fast oge float %816, 0.000000e+00
  %818 = select i1 %817, float %816, float %812
  br label %819

; <label>:819                                     ; preds = %813, %726
  %820 = phi float [ %818, %813 ], [ %812, %726 ]
  %821 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = lshr i32 %822, 18
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F4C00EBA0000000
  %826 = call float @dx.op.unary.f32(i32 21, float %825)  ; Exp(value)
  %827 = fadd fast float %826, -1.000000e+00
  %828 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %829 = extractvalue %dx.types.Dimensions %828, 0
  %830 = sitofp i32 %829 to float
  %831 = extractvalue %dx.types.Dimensions %828, 1
  %832 = sitofp i32 %831 to float
  %833 = fcmp fast oge float %229, %830
  %834 = fcmp fast oge float %230, %832
  %835 = or i1 %833, %834
  %836 = select i1 %835, float 0x4197782600000000, float %827
  %837 = icmp eq i32 %147, 3
  %838 = fcmp fast ogt float %54, %836
  %839 = and i1 %255, %838
  %840 = or i1 %837, %839
  %841 = icmp eq i32 %147, 2
  %842 = fcmp fast ole float %54, %836
  %843 = and i1 %841, %842
  %844 = or i1 %843, %840
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %847 = fcmp fast ogt float %846, 0.000000e+00
  br i1 %847, label %848, label %855

; <label>:848                                     ; preds = %819
  %849 = fmul fast float %764, 0xBFDF454380000000
  %850 = fmul fast float %765, 0x3FDF454380000000
  %851 = fmul fast float %763, 0xBFDF454380000000
  %852 = call float @dx.op.dot4.f32(i32 56, float %741, float %740, float %739, float %738, float 0x3FD20DD760000000, float %849, float %850, float %851)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %853 = call float @dx.op.dot4.f32(i32 56, float %731, float %732, float %733, float %734, float 0x3FD20DD760000000, float %849, float %850, float %851)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %854 = call float @dx.op.dot4.f32(i32 56, float %727, float %728, float %729, float %730, float 0x3FD20DD760000000, float %849, float %850, float %851)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %855

; <label>:855                                     ; preds = %848, %819
  %856 = phi float [ %852, %848 ], [ %741, %819 ]
  %857 = phi float [ %853, %848 ], [ %740, %819 ]
  %858 = phi float [ %854, %848 ], [ %739, %819 ]
  %859 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %771, float %772, float %773)  ; Dot3(ax,ay,az,bx,by,bz)
  %860 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  br i1 %847, label %861, label %961

; <label>:861                                     ; preds = %855
  %862 = fsub fast float -0.000000e+00, %730
  %863 = fsub fast float %862, %734
  %864 = fsub fast float %863, %738
  %865 = fsub fast float -0.000000e+00, %728
  %866 = fsub fast float %865, %732
  %867 = fsub fast float %866, %740
  %868 = fadd fast float %733, %729
  %869 = fadd fast float %868, %739
  %870 = call float @dx.op.dot3.f32(i32 55, float %864, float %867, float %869, float %864, float %867, float %869)  ; Dot3(ax,ay,az,bx,by,bz)
  %871 = call float @dx.op.unary.f32(i32 25, float %870)  ; Rsqrt(value)
  %872 = fmul fast float %871, %864
  %873 = fmul fast float %871, %867
  %874 = fmul fast float %871, %869
  %875 = fmul fast float %873, 0xBFD4D8D7C0000000
  %876 = fmul fast float %874, 0x3FD4D8D7C0000000
  %877 = fmul fast float %872, 0xBFD4D8D7C0000000
  %878 = call float @dx.op.dot4.f32(i32 56, float %741, float %740, float %739, float %738, float 0x3FD20DD760000000, float %875, float %876, float %877)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %879 = call float @dx.op.dot4.f32(i32 56, float %731, float %732, float %733, float %734, float 0x3FD20DD760000000, float %875, float %876, float %877)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %880 = call float @dx.op.dot4.f32(i32 56, float %727, float %728, float %729, float %730, float 0x3FD20DD760000000, float %875, float %876, float %877)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %881 = fmul fast float %878, 0x4003333340000000
  %882 = fmul fast float %741, 0x3FE5AA35A0000000
  %883 = fsub fast float %881, %882
  %884 = fmul fast float %879, 0x4003333340000000
  %885 = fmul fast float %731, 0x3FE5AA35A0000000
  %886 = fsub fast float %884, %885
  %887 = fmul fast float %880, 0x4003333340000000
  %888 = fmul fast float %727, 0x3FE5AA35A0000000
  %889 = fsub fast float %887, %888
  %890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %883)  ; FMax(a,b)
  %891 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %886)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %889)  ; FMax(a,b)
  %893 = fsub fast float %872, %768
  %894 = fsub fast float %873, %769
  %895 = fsub fast float %874, %770
  %896 = call float @dx.op.dot3.f32(i32 55, float %893, float %894, float %895, float %893, float %894, float %895)  ; Dot3(ax,ay,az,bx,by,bz)
  %897 = call float @dx.op.unary.f32(i32 25, float %896)  ; Rsqrt(value)
  %898 = fmul fast float %897, %893
  %899 = fmul fast float %897, %894
  %900 = fmul fast float %897, %895
  %901 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %872, float %873, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = call float @dx.op.unary.f32(i32 6, float %901)  ; FAbs(value)
  %903 = call float @dx.op.dot3.f32(i32 55, float %763, float %764, float %765, float %898, float %899, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = fmul fast float %903, %903
  %905 = call float @dx.op.dot3.f32(i32 55, float %771, float %772, float %773, float %898, float %899, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.unary.f32(i32 6, float %905)  ; FAbs(value)
  %907 = fsub fast float 1.000000e+00, %795
  %908 = call float @dx.op.binary.f32(i32 35, float %907, float 0x3F847AE140000000)  ; FMax(a,b)
  %909 = fmul fast float %908, %908
  %910 = fmul fast float %909, %909
  %911 = fsub fast float 1.000000e+00, %910
  %912 = fmul fast float %860, %860
  %913 = fmul fast float %912, %911
  %914 = fadd fast float %913, %910
  %915 = bitcast float %914 to i32
  %916 = ashr i32 %915, 1
  %917 = add nsw i32 %916, 532487669
  %918 = bitcast i32 %917 to float
  %919 = fadd fast float %918, %860
  %920 = fmul fast float %910, %904
  %921 = fsub fast float 1.000000e+00, %904
  %922 = fadd fast float %921, %920
  %923 = fmul fast float %902, %902
  %924 = fmul fast float %923, %911
  %925 = fadd fast float %924, %910
  %926 = bitcast float %925 to i32
  %927 = ashr i32 %926, 1
  %928 = add nsw i32 %927, 532487669
  %929 = bitcast i32 %928 to float
  %930 = fadd fast float %929, %902
  %931 = fmul fast float %922, %922
  %932 = fmul fast float %931, %919
  %933 = fmul fast float %932, %930
  %934 = fdiv fast float 1.000000e+00, %933
  %935 = fmul fast float %910, %934
  %936 = fsub fast float 1.000000e+00, %906
  %937 = bitcast float %936 to i32
  %938 = sitofp i32 %937 to float
  %939 = fmul fast float %938, 5.000000e+00
  %940 = fadd fast float %939, 0xC1EFBF8940000000
  %941 = fptosi float %940 to i32
  %942 = bitcast i32 %941 to float
  %943 = fsub fast float 1.000000e+00, %792
  %944 = fsub fast float 1.000000e+00, %793
  %945 = fsub fast float 1.000000e+00, %794
  %946 = fmul fast float %942, %943
  %947 = fmul fast float %942, %944
  %948 = fmul fast float %942, %945
  %949 = fadd fast float %946, %792
  %950 = fadd fast float %947, %793
  %951 = fadd fast float %948, %794
  %952 = fmul fast float %935, %890
  %953 = fmul fast float %952, %949
  %954 = fmul fast float %935, %891
  %955 = fmul fast float %954, %950
  %956 = fmul fast float %935, %892
  %957 = fmul fast float %956, %951
  %958 = call float @dx.op.binary.f32(i32 35, float %953, float 0.000000e+00)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 35, float %955, float 0.000000e+00)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 35, float %957, float 0.000000e+00)  ; FMax(a,b)
  br label %961

; <label>:961                                     ; preds = %861, %855
  %962 = phi float [ %958, %861 ], [ 0.000000e+00, %855 ]
  %963 = phi float [ %959, %861 ], [ 0.000000e+00, %855 ]
  %964 = phi float [ %960, %861 ], [ 0.000000e+00, %855 ]
  %965 = fmul fast float %860, 9.843750e-01
  %966 = fmul fast float %795, 9.843750e-01
  %967 = fadd fast float %965, 7.812500e-03
  %968 = fadd fast float %966, 7.812500e-03
  %969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %967, float %968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %970 = extractvalue %dx.types.ResRet.f32 %969, 2
  %971 = extractvalue %dx.types.ResRet.f32 %969, 3
  %972 = fmul fast float %970, %792
  %973 = fmul fast float %970, %793
  %974 = fmul fast float %970, %794
  %975 = fadd fast float %972, %971
  %976 = fadd fast float %973, %971
  %977 = fadd fast float %974, %971
  %978 = call float @dx.op.binary.f32(i32 35, float %976, float %977)  ; FMax(a,b)
  %979 = call float @dx.op.binary.f32(i32 35, float %975, float %978)  ; FMax(a,b)
  %980 = fsub fast float 1.000000e+00, %979
  %981 = call float @dx.op.dot3.f32(i32 55, float %768, float %769, float %770, float %763, float %764, float %765)  ; Dot3(ax,ay,az,bx,by,bz)
  %982 = fmul fast float %981, 2.000000e+00
  %983 = fmul fast float %982, %763
  %984 = fmul fast float %982, %764
  %985 = fmul fast float %982, %765
  %986 = fsub fast float %768, %983
  %987 = fsub fast float %769, %984
  %988 = fsub fast float %770, %985
  br i1 %847, label %989, label %996

; <label>:989                                     ; preds = %961
  %990 = fmul fast float %987, 0xBFDF454380000000
  %991 = fmul fast float %988, 0x3FDF454380000000
  %992 = fmul fast float %986, 0xBFDF454380000000
  %993 = call float @dx.op.dot4.f32(i32 56, float %741, float %740, float %739, float %738, float 0x3FD20DD760000000, float %990, float %991, float %992)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %994 = call float @dx.op.dot4.f32(i32 56, float %731, float %732, float %733, float %734, float 0x3FD20DD760000000, float %990, float %991, float %992)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %995 = call float @dx.op.dot4.f32(i32 56, float %727, float %728, float %729, float %730, float 0x3FD20DD760000000, float %990, float %991, float %992)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %996

; <label>:996                                     ; preds = %989, %961
  %997 = phi float [ %993, %989 ], [ %741, %961 ]
  %998 = phi float [ %994, %989 ], [ %740, %961 ]
  %999 = phi float [ %995, %989 ], [ %739, %961 ]
  %1000 = call float @dx.op.dot3.f32(i32 55, float %997, float %998, float %999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 2
  %1003 = extractvalue %dx.types.CBufRet.f32 %1001, 3
  %1004 = fmul fast float %1002, %61
  %1005 = fmul fast float %1003, %62
  %1006 = fptoui float %1004 to i32
  %1007 = fptoui float %1005 to i32
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  %1012 = fadd fast float %54, -4.000000e+00
  %1013 = call float @dx.op.binary.f32(i32 35, float %1012, float 0.000000e+00)  ; FMax(a,b)
  %1014 = fadd fast float %1013, %1009
  %1015 = fmul fast float %1014, %1010
  %1016 = call float @dx.op.unary.f32(i32 23, float %1015)  ; Log(value)
  %1017 = fmul fast float %1016, %1011
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1020 = fmul fast float %1017, %1019
  %1021 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.i32 %1022, 1
  %1024 = add i32 %1023, -1
  %1025 = uitofp i32 %1023 to float
  %1026 = fmul fast float %1025, %1021
  %1027 = fptoui float %1026 to i32
  %1028 = call i32 @dx.op.binary.i32(i32 40, i32 %1027, i32 %1024)  ; UMin(a,b)
  %1029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.i32 %1029, 2
  %1031 = extractvalue %dx.types.CBufRet.i32 %1029, 3
  %1032 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1007, i32 %1030, i32 %1006)  ; UMad(a,b,c)
  %1033 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1028, i32 %1031, i32 %1032)  ; UMad(a,b,c)
  %1034 = call float @dx.op.binary.f32(i32 35, float %54, float 0.000000e+00)  ; FMax(a,b)
  %1035 = fptoui float %1034 to i32
  %1036 = lshr i32 %1035, 5
  %1037 = call i32 @dx.op.binary.i32(i32 40, i32 %1036, i32 8191)  ; UMin(a,b)
  %1038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.i32 %1038, 2
  %1040 = add nsw i32 %1039, -1
  %1041 = call i32 @dx.op.binary.i32(i32 37, i32 %1040, i32 0)  ; IMax(a,b)
  %1042 = shl i32 %1037, 2
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = lshr i32 %1044, 16
  %1046 = and i32 %1044, 65535
  %1047 = lshr i32 %1044, 21
  %1048 = lshr i32 %1046, 5
  %1049 = call i32 @dx.op.binary.i32(i32 40, i32 %1048, i32 %1041)  ; UMin(a,b)
  %1050 = icmp ugt i32 %1047, %1049
  br i1 %1050, label %1413, label %1051

; <label>:1051                                    ; preds = %996
  br label %1052

; <label>:1052                                    ; preds = %1405, %1051
  %1053 = phi float [ %1406, %1405 ], [ 0.000000e+00, %1051 ]
  %1054 = phi float [ %1407, %1405 ], [ 0.000000e+00, %1051 ]
  %1055 = phi float [ %1408, %1405 ], [ 0.000000e+00, %1051 ]
  %1056 = phi float [ %1409, %1405 ], [ 1.000000e+00, %1051 ]
  %1057 = phi i32 [ %1410, %1405 ], [ %1047, %1051 ]
  %1058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.i32 %1058, 2
  %1060 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1033, i32 %1059, i32 %1057)  ; UMad(a,b,c)
  %1061 = shl i32 %1060, 2
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = shl i32 %1057, 5
  %1065 = sub nsw i32 %1045, %1064
  %1066 = call i32 @dx.op.binary.i32(i32 37, i32 %1065, i32 0)  ; IMax(a,b)
  %1067 = call i32 @dx.op.binary.i32(i32 38, i32 %1066, i32 31)  ; IMin(a,b)
  %1068 = sub nsw i32 1, %1045
  %1069 = add nsw i32 %1068, %1046
  %1070 = call i32 @dx.op.binary.i32(i32 37, i32 %1069, i32 0)  ; IMax(a,b)
  %1071 = call i32 @dx.op.binary.i32(i32 38, i32 %1070, i32 32)  ; IMin(a,b)
  %1072 = and i32 %1071, 31
  %1073 = shl i32 -1, %1072
  %1074 = xor i32 %1073, -1
  %1075 = and i32 %1067, 31
  %1076 = shl i32 %1074, %1075
  %1077 = icmp eq i32 %1071, 32
  %1078 = select i1 %1077, i32 -1, i32 %1076
  %1079 = and i32 %1078, %1063
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1405, label %1081

; <label>:1081                                    ; preds = %1052
  br label %1082

; <label>:1082                                    ; preds = %1188, %1081
  %1083 = phi float [ %1189, %1188 ], [ %1053, %1081 ]
  %1084 = phi float [ %1190, %1188 ], [ %1054, %1081 ]
  %1085 = phi float [ %1191, %1188 ], [ %1055, %1081 ]
  %1086 = phi float [ %1192, %1188 ], [ %1056, %1081 ]
  %1087 = phi i32 [ %1092, %1188 ], [ %1079, %1081 ]
  %1088 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1087)  ; FirstbitLo(value)
  %1089 = add i32 %1088, %1064
  %1090 = and i32 %1088, 31
  %1091 = shl i32 1, %1090
  %1092 = xor i32 %1091, %1087
  %1093 = mul i32 %1089, 72
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.ResRet.f32 %1094, 1
  %1097 = extractvalue %dx.types.ResRet.f32 %1094, 2
  %1098 = add i32 %1093, 12
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = add i32 %1093, 16
  %1102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = add i32 %1093, 28
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = add i32 %1093, 32
  %1110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = extractvalue %dx.types.ResRet.f32 %1110, 3
  %1115 = add i32 %1093, 48
  %1116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = add i32 %1093, 56
  %1120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = add i32 %1093, 64
  %1124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = mul i32 %1089, 60
  %1128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = add i32 %1127, 12
  %1133 = add i32 %1127, 48
  %1134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = and i32 %1100, 32767
  %1139 = bitcast float %1095 to i32
  %1140 = icmp eq i32 %1139, -1
  %1141 = bitcast float %1096 to i32
  %1142 = and i32 %1100, 32768
  %1143 = icmp ne i32 %1142, 0
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1148 = fsub fast float %1129, %1145
  %1149 = fsub fast float %1130, %1146
  %1150 = fsub fast float %1131, %1147
  %1151 = fsub fast float %96, %1148
  %1152 = fsub fast float %97, %1149
  %1153 = fsub fast float %98, %1150
  %1154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1152, float %1153, float %1155, float %1156, float %1157)  ; Dot3(ax,ay,az,bx,by,bz)
  %1159 = add i32 %1127, 24
  %1160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1152, float %1153, float %1161, float %1162, float %1163)  ; Dot3(ax,ay,az,bx,by,bz)
  %1165 = add i32 %1127, 36
  %1166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1152, float %1153, float %1167, float %1168, float %1169)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1172 = call float @dx.op.unary.f32(i32 6, float %1164)  ; FAbs(value)
  %1173 = call float @dx.op.unary.f32(i32 6, float %1170)  ; FAbs(value)
  %1174 = fsub fast float %1135, %1171
  %1175 = fsub fast float %1136, %1172
  %1176 = fsub fast float %1137, %1173
  %1177 = fmul fast float %1174, %1103
  %1178 = fmul fast float %1175, %1104
  %1179 = fmul fast float %1176, %1105
  %1180 = call float @dx.op.binary.f32(i32 36, float %1178, float %1179)  ; FMin(a,b)
  %1181 = call float @dx.op.binary.f32(i32 36, float %1177, float %1180)  ; FMin(a,b)
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1183 = call float @dx.op.binary.f32(i32 36, float %1086, float %1182)  ; FMin(a,b)
  %1184 = uitofp i1 %1143 to float
  %1185 = fsub fast float 1.000000e+00, %1184
  %1186 = fmul fast float %1183, %1185
  %1187 = fcmp fast ogt float %1186, 0.000000e+00
  br i1 %1187, label %1194, label %1188

; <label>:1188                                    ; preds = %1336, %1082
  %1189 = phi float [ %1400, %1336 ], [ %1083, %1082 ]
  %1190 = phi float [ %1401, %1336 ], [ %1084, %1082 ]
  %1191 = phi float [ %1402, %1336 ], [ %1085, %1082 ]
  %1192 = phi float [ %1403, %1336 ], [ %1086, %1082 ]
  %1193 = icmp eq i32 %1087, %1091
  br i1 %1193, label %1404, label %1082

; <label>:1194                                    ; preds = %1082
  br i1 %1140, label %1252, label %1195

; <label>:1195                                    ; preds = %1194
  %1196 = fsub fast float -0.000000e+00, %1155
  %1197 = fsub fast float -0.000000e+00, %1156
  %1198 = fsub fast float -0.000000e+00, %1157
  %1199 = call float @dx.op.dot3.f32(i32 55, float %986, float %987, float %988, float %1196, float %1197, float %1198)  ; Dot3(ax,ay,az,bx,by,bz)
  %1200 = fsub fast float -0.000000e+00, %1199
  %1201 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1152, float %1153, float %1196, float %1197, float %1198)  ; Dot3(ax,ay,az,bx,by,bz)
  %1202 = fadd fast float %1201, %1118
  %1203 = fadd fast float %1117, %1201
  %1204 = fsub fast float -0.000000e+00, %1203
  %1205 = fcmp ogt float %1199, -0.000000e+00
  %1206 = select i1 %1205, float %1204, float %1202
  %1207 = call float @dx.op.unary.f32(i32 6, float %1200)  ; FAbs(value)
  %1208 = fdiv fast float 1.000000e+00, %1207
  %1209 = fmul fast float %1206, %1208
  %1210 = call float @dx.op.binary.f32(i32 35, float %1209, float 0.000000e+00)  ; FMax(a,b)
  %1211 = fsub fast float -0.000000e+00, %1161
  %1212 = fsub fast float -0.000000e+00, %1162
  %1213 = fsub fast float -0.000000e+00, %1163
  %1214 = call float @dx.op.dot3.f32(i32 55, float %986, float %987, float %988, float %1211, float %1212, float %1213)  ; Dot3(ax,ay,az,bx,by,bz)
  %1215 = fsub fast float -0.000000e+00, %1214
  %1216 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1152, float %1153, float %1211, float %1212, float %1213)  ; Dot3(ax,ay,az,bx,by,bz)
  %1217 = fadd fast float %1216, %1122
  %1218 = fadd fast float %1121, %1216
  %1219 = fsub fast float -0.000000e+00, %1218
  %1220 = fcmp ogt float %1214, -0.000000e+00
  %1221 = select i1 %1220, float %1219, float %1217
  %1222 = call float @dx.op.unary.f32(i32 6, float %1215)  ; FAbs(value)
  %1223 = fdiv fast float 1.000000e+00, %1222
  %1224 = fmul fast float %1221, %1223
  %1225 = call float @dx.op.binary.f32(i32 35, float %1224, float 0.000000e+00)  ; FMax(a,b)
  %1226 = fsub fast float -0.000000e+00, %1167
  %1227 = fsub fast float -0.000000e+00, %1168
  %1228 = fsub fast float -0.000000e+00, %1169
  %1229 = call float @dx.op.dot3.f32(i32 55, float %986, float %987, float %988, float %1226, float %1227, float %1228)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = fsub fast float -0.000000e+00, %1229
  %1231 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1152, float %1153, float %1226, float %1227, float %1228)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = fadd fast float %1231, %1126
  %1233 = fadd fast float %1125, %1231
  %1234 = fsub fast float -0.000000e+00, %1233
  %1235 = fcmp ogt float %1229, -0.000000e+00
  %1236 = select i1 %1235, float %1234, float %1232
  %1237 = call float @dx.op.unary.f32(i32 6, float %1230)  ; FAbs(value)
  %1238 = fdiv fast float 1.000000e+00, %1237
  %1239 = fmul fast float %1236, %1238
  %1240 = call float @dx.op.binary.f32(i32 35, float %1239, float 0.000000e+00)  ; FMax(a,b)
  %1241 = call float @dx.op.binary.f32(i32 36, float %1225, float %1240)  ; FMin(a,b)
  %1242 = call float @dx.op.binary.f32(i32 36, float %1210, float %1241)  ; FMin(a,b)
  %1243 = fmul fast float %1242, %986
  %1244 = fmul fast float %1242, %987
  %1245 = fmul fast float %1242, %988
  %1246 = fadd fast float %1243, %96
  %1247 = fadd fast float %1244, %97
  %1248 = fadd fast float %1245, %98
  %1249 = fsub fast float %1246, %1095
  %1250 = fsub fast float %1247, %1096
  %1251 = fsub fast float %1248, %1097
  br label %1259

; <label>:1252                                    ; preds = %1194
  %1253 = fmul fast float %986, 8.096000e+03
  %1254 = fmul fast float %987, 8.096000e+03
  %1255 = fmul fast float %988, 8.096000e+03
  %1256 = fadd fast float %1253, %96
  %1257 = fadd fast float %1254, %97
  %1258 = fadd fast float %1255, %98
  br label %1259

; <label>:1259                                    ; preds = %1252, %1195
  %1260 = phi float [ %986, %1252 ], [ %1249, %1195 ]
  %1261 = phi float [ %987, %1252 ], [ %1250, %1195 ]
  %1262 = phi float [ %988, %1252 ], [ %1251, %1195 ]
  %1263 = phi float [ %1256, %1252 ], [ %1246, %1195 ]
  %1264 = phi float [ %1257, %1252 ], [ %1247, %1195 ]
  %1265 = phi float [ %1258, %1252 ], [ %1248, %1195 ]
  %1266 = fcmp fast olt float %1114, 1.000000e+00
  br i1 %1266, label %1267, label %1298, !dx.controlflow.hints !77

; <label>:1267                                    ; preds = %1259
  %1268 = fmul fast float %1262, %1112
  %1269 = fmul fast float %1261, %1113
  %1270 = fsub fast float %1268, %1269
  %1271 = fmul fast float %1260, %1113
  %1272 = fmul fast float %1262, %1111
  %1273 = fsub fast float %1271, %1272
  %1274 = fmul fast float %1261, %1111
  %1275 = fmul fast float %1260, %1112
  %1276 = fsub fast float %1274, %1275
  %1277 = fmul fast float %1270, 2.000000e+00
  %1278 = fmul fast float %1273, 2.000000e+00
  %1279 = fmul fast float %1276, 2.000000e+00
  %1280 = fmul fast float %1277, %1114
  %1281 = fmul fast float %1278, %1114
  %1282 = fmul fast float %1279, %1114
  %1283 = fmul fast float %1279, %1112
  %1284 = fmul fast float %1278, %1113
  %1285 = fmul fast float %1277, %1113
  %1286 = fmul fast float %1279, %1111
  %1287 = fmul fast float %1278, %1111
  %1288 = fmul fast float %1277, %1112
  %1289 = fadd fast float %1283, %1260
  %1290 = fadd fast float %1289, %1280
  %1291 = fsub fast float %1290, %1284
  %1292 = fsub fast float %1261, %1286
  %1293 = fadd fast float %1292, %1281
  %1294 = fadd fast float %1293, %1285
  %1295 = fadd fast float %1282, %1262
  %1296 = fsub fast float %1295, %1288
  %1297 = fadd fast float %1296, %1287
  br label %1298

; <label>:1298                                    ; preds = %1267, %1259
  %1299 = phi float [ %1291, %1267 ], [ %1260, %1259 ]
  %1300 = phi float [ %1294, %1267 ], [ %1261, %1259 ]
  %1301 = phi float [ %1297, %1267 ], [ %1262, %1259 ]
  br i1 %1140, label %1333, label %1302

; <label>:1302                                    ; preds = %1298
  %1303 = fmul fast float %795, 0x400187C840000000
  %1304 = fadd fast float %1303, 0xC00EFC2120000000
  %1305 = fmul fast float %1304, %795
  %1306 = fadd fast float %1305, 0x3FE5D16340000000
  %1307 = fmul fast float %1306, %795
  %1308 = fadd fast float %1307, 1.000000e+00
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = fsub fast float %1263, %96
  %1311 = fsub fast float %1264, %97
  %1312 = fsub fast float %1265, %98
  %1313 = fsub fast float %1263, %1095
  %1314 = fsub fast float %1264, %1096
  %1315 = fsub fast float %1265, %1097
  %1316 = call float @dx.op.dot3.f32(i32 55, float %1310, float %1311, float %1312, float %1310, float %1311, float %1312)  ; Dot3(ax,ay,az,bx,by,bz)
  %1317 = call float @dx.op.dot3.f32(i32 55, float %1313, float %1314, float %1315, float %1313, float %1314, float %1315)  ; Dot3(ax,ay,az,bx,by,bz)
  %1318 = fadd fast float %1317, 0x3EE4F8B580000000
  %1319 = fdiv fast float %1316, %1318
  %1320 = bitcast float %1319 to i32
  %1321 = ashr i32 %1320, 1
  %1322 = add nsw i32 %1321, 532487669
  %1323 = bitcast i32 %1322 to float
  %1324 = fmul fast float %1323, %1309
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = fmul fast float %1325, 0x4009981AE0000000
  %1327 = fsub fast float 0x40111BBD80000000, %1326
  %1328 = fmul fast float %1327, %1325
  %1329 = fadd fast float %1328, 0xC0009F6020000000
  %1330 = fmul fast float %1329, %1325
  %1331 = fadd fast float %1330, 1.000000e+00
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  br label %1336

; <label>:1333                                    ; preds = %1298
  %1334 = icmp ne i32 %1141, -1
  %1335 = zext i1 %1334 to i32
  br label %1336

; <label>:1336                                    ; preds = %1333, %1302
  %1337 = phi float [ %795, %1333 ], [ %1332, %1302 ]
  %1338 = phi i32 [ %1335, %1333 ], [ 0, %1302 ]
  %1339 = fmul float %1337, 5.000000e+00
  %1340 = fsub float 5.000000e+00, %1339
  %1341 = icmp ne i32 %1338, 0
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 3
  %1344 = fadd fast float %1343, %1340
  %1345 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1344)  ; FMax(a,b)
  %1346 = call float @dx.op.unary.f32(i32 6, float %1299)  ; FAbs(value)
  %1347 = call float @dx.op.unary.f32(i32 6, float %1300)  ; FAbs(value)
  %1348 = fadd fast float %1347, %1346
  %1349 = call float @dx.op.unary.f32(i32 6, float %1301)  ; FAbs(value)
  %1350 = fadd fast float %1348, %1349
  %1351 = fcmp fast oeq float %1350, 0.000000e+00
  %1352 = fdiv fast float 1.000000e+00, %1350
  %1353 = select i1 %1351, float 1.000000e+00, float %1352
  %1354 = fmul fast float %1353, %1299
  %1355 = fmul fast float %1353, %1300
  %1356 = call float @dx.op.unary.f32(i32 6, float %1355)  ; FAbs(value)
  %1357 = call float @dx.op.unary.f32(i32 6, float %1354)  ; FAbs(value)
  %1358 = fsub fast float 1.000000e+00, %1356
  %1359 = fsub fast float 1.000000e+00, %1357
  %1360 = fcmp fast oge float %1354, 0.000000e+00
  %1361 = fcmp fast oge float %1355, 0.000000e+00
  %1362 = select i1 %1360, float 1.000000e+00, float -1.000000e+00
  %1363 = select i1 %1361, float 1.000000e+00, float -1.000000e+00
  %1364 = fcmp fast ole float %1301, 0.000000e+00
  %1365 = fmul fast float %1362, %1358
  %1366 = fmul fast float %1363, %1359
  %1367 = select i1 %1364, float %1365, float %1354
  %1368 = select i1 %1364, float %1366, float %1355
  %1369 = fmul fast float %1367, 5.000000e-01
  %1370 = fmul fast float %1368, 5.000000e-01
  %1371 = fadd fast float %1369, 5.000000e-01
  %1372 = fadd fast float %1370, 5.000000e-01
  %1373 = uitofp i32 %1138 to float
  %1374 = call float @dx.op.binary.f32(i32 36, float %1345, float 3.000000e+00)  ; FMin(a,b)
  %1375 = fadd fast float %1374, 2.000000e+00
  %1376 = call float @dx.op.unary.f32(i32 21, float %1375)  ; Exp(value)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1342, 1
  %1378 = fmul fast float %1377, %1376
  %1379 = fmul fast float %1378, 2.000000e+00
  %1380 = fsub fast float 1.000000e+00, %1379
  %1381 = fmul fast float %1371, %1380
  %1382 = fmul fast float %1372, %1380
  %1383 = fadd fast float %1381, %1378
  %1384 = fadd fast float %1382, %1378
  %1385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1383, float %1384, float %1373, float undef, i32 0, i32 0, i32 undef, float %1345)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = extractvalue %dx.types.ResRet.f32 %1385, 1
  %1388 = extractvalue %dx.types.ResRet.f32 %1385, 2
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 3
  %1391 = fmul fast float %1390, %1108
  %1392 = call float @dx.op.binary.f32(i32 36, float %1000, float %1391)  ; FMin(a,b)
  %1393 = select i1 %1341, float %1392, float %1391
  %1394 = fmul fast float %1386, %1186
  %1395 = fmul fast float %1394, %1393
  %1396 = fmul fast float %1387, %1186
  %1397 = fmul fast float %1396, %1393
  %1398 = fmul fast float %1388, %1186
  %1399 = fmul fast float %1398, %1393
  %1400 = fadd fast float %1395, %1083
  %1401 = fadd fast float %1397, %1084
  %1402 = fadd fast float %1399, %1085
  %1403 = fsub fast float %1086, %1186
  br label %1188

; <label>:1404                                    ; preds = %1188
  br label %1405

; <label>:1405                                    ; preds = %1404, %1052
  %1406 = phi float [ %1053, %1052 ], [ %1189, %1404 ]
  %1407 = phi float [ %1054, %1052 ], [ %1190, %1404 ]
  %1408 = phi float [ %1055, %1052 ], [ %1191, %1404 ]
  %1409 = phi float [ %1056, %1052 ], [ %1192, %1404 ]
  %1410 = add i32 %1057, 1
  %1411 = icmp ugt i32 %1410, %1049
  br i1 %1411, label %1412, label %1052, !llvm.loop !78

; <label>:1412                                    ; preds = %1405
  br label %1413

; <label>:1413                                    ; preds = %1412, %996
  %1414 = phi float [ 0.000000e+00, %996 ], [ %1406, %1412 ]
  %1415 = phi float [ 0.000000e+00, %996 ], [ %1407, %1412 ]
  %1416 = phi float [ 0.000000e+00, %996 ], [ %1408, %1412 ]
  %1417 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = select i1 %131, float 0.000000e+00, float %1414
  %1419 = select i1 %131, float %1417, float %1415
  %1420 = select i1 %131, float 0.000000e+00, float %1416
  %1421 = fmul fast float %1418, %975
  %1422 = fmul fast float %1419, %976
  %1423 = fmul fast float %1420, %977
  %1424 = call float @dx.op.binary.f32(i32 35, float %1421, float 0.000000e+00)  ; FMax(a,b)
  %1425 = call float @dx.op.binary.f32(i32 35, float %1422, float 0.000000e+00)  ; FMax(a,b)
  %1426 = call float @dx.op.binary.f32(i32 35, float %1423, float 0.000000e+00)  ; FMax(a,b)
  %1427 = fadd fast float %1424, %962
  %1428 = fadd fast float %1425, %963
  %1429 = fadd fast float %1426, %964
  %1430 = fmul fast float %1427, %600
  %1431 = fmul fast float %1428, %600
  %1432 = fmul fast float %1429, %600
  %1433 = fsub fast float 1.000000e+00, %600
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1433, float %1433, float %1433, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = fmul fast float %820, %808
  %1437 = fsub fast float 1.000000e+00, %808
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 3
  %1441 = fmul fast float %1440, %1438
  %1442 = fadd fast float %1441, %1436
  %1443 = and i32 %151, 1048576
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1529, label %1445, !dx.controlflow.hints !80

; <label>:1445                                    ; preds = %1413
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 2
  %1448 = extractvalue %dx.types.CBufRet.f32 %1446, 3
  %1449 = fmul fast float %1447, %61
  %1450 = fmul fast float %1448, %62
  %1451 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1452 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1453 = select i1 %844, i32 2, i32 0
  %1454 = or i32 %1453, 1
  %1455 = uitofp i32 %1454 to float
  %1456 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1451, float %1452, float %1455, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = extractvalue %dx.types.ResRet.f32 %1456, 3
  %1461 = add nuw nsw i32 %1453, 2
  %1462 = uitofp i32 %1461 to float
  %1463 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1451, float %1452, float %1462, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = call float @dx.op.binary.f32(i32 35, float %1458, float %1459)  ; FMax(a,b)
  %1469 = call float @dx.op.binary.f32(i32 35, float %1457, float %1468)  ; FMax(a,b)
  %1470 = call float @dx.op.binary.f32(i32 35, float %1469, float %1460)  ; FMax(a,b)
  %1471 = call float @dx.op.binary.f32(i32 36, float %1465, float %1466)  ; FMin(a,b)
  %1472 = call float @dx.op.binary.f32(i32 36, float %1464, float %1471)  ; FMin(a,b)
  %1473 = call float @dx.op.binary.f32(i32 36, float %1472, float %1467)  ; FMin(a,b)
  %1474 = fmul fast float %1470, 2.550000e+02
  %1475 = fadd fast float %1474, 0x3F70101020000000
  %1476 = fptoui float %1475 to i32
  %1477 = fmul fast float %1473, 2.550000e+02
  %1478 = fadd fast float %1477, 0x3F70101020000000
  %1479 = fptoui float %1478 to i32
  %1480 = icmp ult i32 %1476, %1479
  br i1 %1480, label %1481, label %1522

; <label>:1481                                    ; preds = %1445
  %1482 = fcmp fast ogt float %53, 9.843750e-01
  %1483 = select i1 %1482, float -4.000000e+00, float %1012
  %1484 = call float @dx.op.binary.f32(i32 35, float %1483, float 0.000000e+00)  ; FMax(a,b)
  %1485 = fadd fast float %1009, %1484
  %1486 = fmul fast float %1485, %1010
  %1487 = call float @dx.op.unary.f32(i32 23, float %1486)  ; Log(value)
  %1488 = fmul fast float %1011, %1487
  %1489 = fmul fast float %1488, %1019
  %1490 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1491 = uitofp i32 %1476 to float
  %1492 = uitofp i32 %1479 to float
  %1493 = fadd fast float %1491, 5.000000e-01
  %1494 = fadd fast float %1492, 5.000000e-01
  %1495 = fmul fast float %1019, %1493
  %1496 = fmul fast float %1019, %1494
  %1497 = fadd fast float %1495, 0x3F0FFB4800000000
  %1498 = fadd fast float %1496, 0xBF0FFB4800000000
  %1499 = call float @dx.op.binary.f32(i32 35, float %1490, float %1497)  ; FMax(a,b)
  %1500 = call float @dx.op.binary.f32(i32 36, float %1499, float %1498)  ; FMin(a,b)
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 1
  %1503 = extractvalue %dx.types.CBufRet.f32 %1501, 2
  %1504 = extractvalue %dx.types.CBufRet.f32 %1501, 0
  %1505 = select i1 %844, float %1504, float 0.000000e+00
  %1506 = fmul fast float %1502, %1500
  %1507 = fadd fast float %1505, %1506
  %1508 = fadd fast float %1505, %1503
  %1509 = fsub fast float %1502, %1503
  %1510 = fadd fast float %1509, %1505
  %1511 = call float @dx.op.binary.f32(i32 35, float %1507, float %1508)  ; FMax(a,b)
  %1512 = call float @dx.op.binary.f32(i32 36, float %1511, float %1510)  ; FMin(a,b)
  %1513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1451, float %1452, float %1512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.ResRet.f32 %1513, 2
  %1517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.f32 %1517, 1
  %1519 = fmul fast float %1518, %1514
  %1520 = fmul fast float %1518, %1515
  %1521 = fmul fast float %1518, %1516
  br label %1522

; <label>:1522                                    ; preds = %1481, %1445
  %1523 = phi float [ %1519, %1481 ], [ 1.000000e+00, %1445 ]
  %1524 = phi float [ %1520, %1481 ], [ 1.000000e+00, %1445 ]
  %1525 = phi float [ %1521, %1481 ], [ 1.000000e+00, %1445 ]
  %1526 = fmul fast float %1523, %1430
  %1527 = fmul fast float %1524, %1431
  %1528 = fmul fast float %1525, %1432
  br label %1529

; <label>:1529                                    ; preds = %1522, %1413
  %1530 = phi float [ %1526, %1522 ], [ %1430, %1413 ]
  %1531 = phi float [ %1527, %1522 ], [ %1431, %1413 ]
  %1532 = phi float [ %1528, %1522 ], [ %1432, %1413 ]
  %1533 = and i32 %151, 2097152
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1539, label %1535, !dx.controlflow.hints !81

; <label>:1535                                    ; preds = %1529
  %1536 = add i32 %148, 192
  %1537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  br label %1542

; <label>:1539                                    ; preds = %1529
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 3
  br label %1542

; <label>:1542                                    ; preds = %1539, %1535
  %1543 = phi float [ %1538, %1535 ], [ %1541, %1539 ]
  %1544 = fmul fast float %783, %600
  %1545 = fmul fast float %1544, %856
  %1546 = fmul fast float %1545, %980
  %1547 = fmul fast float %784, %600
  %1548 = fmul fast float %1547, %857
  %1549 = fmul fast float %1548, %980
  %1550 = fmul fast float %785, %600
  %1551 = fmul fast float %1550, %858
  %1552 = fmul fast float %1551, %980
  br i1 %839, label %1553, label %1686

; <label>:1553                                    ; preds = %1542
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 2
  %1556 = extractvalue %dx.types.CBufRet.f32 %1554, 3
  %1557 = fmul fast float %1555, %61
  %1558 = fmul fast float %1556, %62
  %1559 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1561 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1559, float %1560, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = extractvalue %dx.types.ResRet.f32 %1561, 3
  %1566 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1559, float %1560, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = extractvalue %dx.types.ResRet.f32 %1566, 3
  %1571 = call float @dx.op.binary.f32(i32 35, float %1563, float %1564)  ; FMax(a,b)
  %1572 = call float @dx.op.binary.f32(i32 35, float %1562, float %1571)  ; FMax(a,b)
  %1573 = call float @dx.op.binary.f32(i32 35, float %1572, float %1565)  ; FMax(a,b)
  %1574 = call float @dx.op.binary.f32(i32 36, float %1568, float %1569)  ; FMin(a,b)
  %1575 = call float @dx.op.binary.f32(i32 36, float %1567, float %1574)  ; FMin(a,b)
  %1576 = call float @dx.op.binary.f32(i32 36, float %1575, float %1570)  ; FMin(a,b)
  %1577 = fmul fast float %1573, 2.550000e+02
  %1578 = fadd fast float %1577, 0x3F70101020000000
  %1579 = fptoui float %1578 to i32
  %1580 = fmul fast float %1576, 2.550000e+02
  %1581 = fadd fast float %1580, 0x3F70101020000000
  %1582 = fptoui float %1581 to i32
  %1583 = icmp ult i32 %1579, %1582
  br i1 %1583, label %1584, label %1628

; <label>:1584                                    ; preds = %1553
  %1585 = fcmp fast ogt float %53, 9.843750e-01
  %1586 = select i1 %1585, float -4.000000e+00, float %1012
  %1587 = call float @dx.op.binary.f32(i32 35, float %1586, float 0.000000e+00)  ; FMax(a,b)
  %1588 = fadd fast float %1009, %1587
  %1589 = fmul fast float %1588, %1010
  %1590 = call float @dx.op.unary.f32(i32 23, float %1589)  ; Log(value)
  %1591 = fmul fast float %1011, %1590
  %1592 = fmul fast float %1591, %1019
  %1593 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1594 = uitofp i32 %1579 to float
  %1595 = uitofp i32 %1582 to float
  %1596 = fadd fast float %1594, 5.000000e-01
  %1597 = fadd fast float %1595, 5.000000e-01
  %1598 = fmul fast float %1019, %1596
  %1599 = fmul fast float %1019, %1597
  %1600 = fadd fast float %1598, 0x3F0FFB4800000000
  %1601 = fadd fast float %1599, 0xBF0FFB4800000000
  %1602 = call float @dx.op.binary.f32(i32 35, float %1593, float %1600)  ; FMax(a,b)
  %1603 = call float @dx.op.binary.f32(i32 36, float %1602, float %1601)  ; FMin(a,b)
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1606 = extractvalue %dx.types.CBufRet.f32 %1604, 2
  %1607 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1608 = fmul fast float %1605, %1603
  %1609 = fadd fast float %1607, %1608
  %1610 = fadd fast float %1607, %1606
  %1611 = fsub fast float %1605, %1606
  %1612 = fadd fast float %1611, %1607
  %1613 = call float @dx.op.binary.f32(i32 35, float %1609, float %1610)  ; FMax(a,b)
  %1614 = call float @dx.op.binary.f32(i32 36, float %1613, float %1612)  ; FMin(a,b)
  %1615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1559, float %1560, float %1614, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  %1617 = extractvalue %dx.types.ResRet.f32 %1615, 1
  %1618 = extractvalue %dx.types.ResRet.f32 %1615, 2
  %1619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1559, float %1560, float %1614, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.ResRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.ResRet.f32 %1619, 2
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 1
  %1625 = fmul fast float %1624, %1620
  %1626 = fmul fast float %1624, %1621
  %1627 = fmul fast float %1624, %1622
  br label %1628

; <label>:1628                                    ; preds = %1584, %1553
  %1629 = phi float [ %1616, %1584 ], [ 1.000000e+00, %1553 ]
  %1630 = phi float [ %1617, %1584 ], [ 1.000000e+00, %1553 ]
  %1631 = phi float [ %1618, %1584 ], [ 1.000000e+00, %1553 ]
  %1632 = phi float [ %1625, %1584 ], [ 0.000000e+00, %1553 ]
  %1633 = phi float [ %1626, %1584 ], [ 0.000000e+00, %1553 ]
  %1634 = phi float [ %1627, %1584 ], [ 0.000000e+00, %1553 ]
  %1635 = fmul fast float %1632, %1435
  %1636 = fmul fast float %1633, %1435
  %1637 = fmul fast float %1634, %1435
  %1638 = call float @dx.op.dot3.f32(i32 55, float %1629, float %1630, float %1631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1639 = call float @dx.op.dot3.f32(i32 55, float %1635, float %1636, float %1637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1640 = select i1 %131, float %1638, float %1629
  %1641 = select i1 %131, float %1638, float %1630
  %1642 = select i1 %131, float 1.000000e+00, float %1631
  %1643 = select i1 %131, float %1639, float %1635
  %1644 = select i1 %131, float 0.000000e+00, float %1636
  %1645 = select i1 %131, float 0.000000e+00, float %1637
  %1646 = fmul fast float %1640, %1546
  %1647 = fmul fast float %1641, %1549
  %1648 = fmul fast float %1642, %1552
  %1649 = fadd fast float %1646, %1643
  %1650 = fadd fast float %1647, %1644
  %1651 = fadd fast float %1645, %1648
  %1652 = fmul fast float %1640, %1530
  %1653 = fmul fast float %1641, %1531
  %1654 = fmul fast float %1642, %1532
  %1655 = fmul fast float %66, %1555
  %1656 = fmul fast float %68, %1556
  %1657 = fsub fast float 1.000000e+00, %1655
  %1658 = fsub fast float 1.000000e+00, %1656
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.CBufRet.f32 %1659, 1
  %1662 = extractvalue %dx.types.CBufRet.f32 %1659, 2
  %1663 = fmul fast float %1657, %1660
  %1664 = fmul fast float %1657, %1661
  %1665 = fmul fast float %1657, %1662
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.CBufRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.CBufRet.f32 %1666, 2
  %1670 = fmul fast float %1658, %1667
  %1671 = fmul fast float %1658, %1668
  %1672 = fmul fast float %1658, %1669
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.CBufRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1677 = fadd fast float %1670, %1674
  %1678 = fadd fast float %1677, %1663
  %1679 = fadd fast float %1671, %1675
  %1680 = fadd fast float %1679, %1664
  %1681 = fadd fast float %1672, %1676
  %1682 = fadd fast float %1681, %1665
  %1683 = fmul fast float %1678, %836
  %1684 = fmul fast float %1680, %836
  %1685 = fmul fast float %1682, %836
  br label %1686

; <label>:1686                                    ; preds = %1628, %1542
  %1687 = phi float [ %1683, %1628 ], [ %96, %1542 ]
  %1688 = phi float [ %1684, %1628 ], [ %97, %1542 ]
  %1689 = phi float [ %1685, %1628 ], [ %98, %1542 ]
  %1690 = phi float [ %836, %1628 ], [ %54, %1542 ]
  %1691 = phi float [ %1649, %1628 ], [ %1546, %1542 ]
  %1692 = phi float [ %1650, %1628 ], [ %1549, %1542 ]
  %1693 = phi float [ %1651, %1628 ], [ %1552, %1542 ]
  %1694 = phi float [ %1652, %1628 ], [ %1530, %1542 ]
  %1695 = phi float [ %1653, %1628 ], [ %1531, %1542 ]
  %1696 = phi float [ %1654, %1628 ], [ %1532, %1542 ]
  %1697 = phi float [ %1629, %1628 ], [ 1.000000e+00, %1542 ]
  br i1 %844, label %2753, label %1698

; <label>:1698                                    ; preds = %1686
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.CBufRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1703 = extractvalue %dx.types.CBufRet.f32 %1699, 3
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.CBufRet.f32 %1704, 1
  %1707 = extractvalue %dx.types.CBufRet.f32 %1704, 2
  %1708 = extractvalue %dx.types.CBufRet.f32 %1704, 3
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1713 = extractvalue %dx.types.CBufRet.f32 %1709, 3
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1717 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1718 = extractvalue %dx.types.CBufRet.f32 %1714, 3
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 3
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 3
  %1723 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1724 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1725 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1726 = fcmp fast olt float %1725, -5.000000e-01
  %1727 = call float @dx.op.dot3.f32(i32 55, float %1687, float %1688, float %1689, float %1687, float %1688, float %1689)  ; Dot3(ax,ay,az,bx,by,bz)
  %1728 = call float @dx.op.unary.f32(i32 25, float %1727)  ; Rsqrt(value)
  %1729 = fmul fast float %1728, %1727
  %1730 = fmul fast float %1728, %1687
  %1731 = fmul fast float %1728, %1688
  %1732 = fmul fast float %1728, %1689
  %1733 = fadd fast float %1729, %1703
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1730, float %1731, float %1732, float %1700, float %1701, float %1702)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.i32 %1735, 1
  %1737 = and i32 %1736, 1
  %1738 = icmp ne i32 %1737, 0
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1741 = fcmp fast ogt float %1740, 0.000000e+00
  %1742 = and i1 %1738, %1741
  br i1 %1742, label %1743, label %2149, !dx.controlflow.hints !82

; <label>:1743                                    ; preds = %1698
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 2
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1750 = fsub fast float %1747, %1749
  %1751 = and i32 %1736, 2
  %1752 = extractvalue %dx.types.CBufRet.i32 %1735, 0
  %1753 = call i32 @dx.op.binary.i32(i32 40, i32 %1752, i32 3)  ; UMin(a,b)
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 0
  %1756 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1757 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1758 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1759 = fsub fast float %1755, %1757
  %1760 = fsub fast float %1756, %1758
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1763 = fcmp fast ogt float %1762, 0.000000e+00
  %1764 = fsub fast float -0.000000e+00, %1759
  %1765 = fsub fast float -0.000000e+00, %1760
  %1766 = call float @dx.op.dot2.f32(i32 54, float %1730, float %1731, float %1730, float %1731)  ; Dot2(ax,ay,bx,by)
  %1767 = call float @dx.op.dot2.f32(i32 54, float %1730, float %1731, float %1764, float %1765)  ; Dot2(ax,ay,bx,by)
  %1768 = fmul fast float %1767, 2.000000e+00
  %1769 = call float @dx.op.dot2.f32(i32 54, float %1764, float %1765, float %1764, float %1765)  ; Dot2(ax,ay,bx,by)
  %1770 = fmul fast float %1762, %1762
  %1771 = fsub fast float %1769, %1770
  %1772 = fmul fast float %1768, %1768
  %1773 = fmul fast float %1766, 4.000000e+00
  %1774 = fmul fast float %1773, %1771
  %1775 = fsub fast float %1772, %1774
  %1776 = fcmp fast ogt float %1775, 0.000000e+00
  br i1 %1776, label %1777, label %1792

; <label>:1777                                    ; preds = %1743
  %1778 = fcmp fast ogt float %1768, 0.000000e+00
  %1779 = call float @dx.op.unary.f32(i32 24, float %1775)  ; Sqrt(value)
  %1780 = fsub fast float -0.000000e+00, %1779
  %1781 = select i1 %1778, float %1779, float %1780
  %1782 = fadd fast float %1781, %1768
  %1783 = fmul float %1782, -5.000000e-01
  %1784 = fdiv fast float %1783, %1766
  %1785 = call float @dx.op.binary.f32(i32 35, float %1784, float 0.000000e+00)  ; FMax(a,b)
  %1786 = call float @dx.op.binary.f32(i32 36, float %1729, float %1785)  ; FMin(a,b)
  %1787 = fdiv fast float %1771, %1783
  %1788 = call float @dx.op.binary.f32(i32 35, float %1787, float 0.000000e+00)  ; FMax(a,b)
  %1789 = call float @dx.op.binary.f32(i32 36, float %1729, float %1788)  ; FMin(a,b)
  %1790 = call float @dx.op.binary.f32(i32 36, float %1786, float %1789)  ; FMin(a,b)
  %1791 = call float @dx.op.binary.f32(i32 35, float %1786, float %1789)  ; FMax(a,b)
  br label %1792

; <label>:1792                                    ; preds = %1777, %1743
  %1793 = phi float [ %1791, %1777 ], [ -1.000000e+00, %1743 ]
  %1794 = phi float [ %1790, %1777 ], [ -1.000000e+00, %1743 ]
  %1795 = phi i1 [ true, %1777 ], [ false, %1743 ]
  %1796 = and i1 %1763, %1795
  br i1 %1796, label %1797, label %1799

; <label>:1797                                    ; preds = %1792
  %1798 = fcmp fast oeq float %1794, %1793
  br i1 %1798, label %2102, label %1800

; <label>:1799                                    ; preds = %1792
  br i1 %1763, label %2102, label %1800

; <label>:1800                                    ; preds = %1799, %1797
  %1801 = phi float [ %1729, %1799 ], [ %1793, %1797 ]
  %1802 = phi float [ 0.000000e+00, %1799 ], [ %1794, %1797 ]
  %1803 = icmp ne i32 %1751, 0
  %1804 = fmul fast float %1801, %1732
  %1805 = fadd fast float %1804, %1745
  %1806 = fmul fast float %1805, %1801
  %1807 = select i1 %1803, float 0.000000e+00, float %1806
  %1808 = fcmp fast oeq float %1732, 0.000000e+00
  %1809 = fdiv fast float %1750, %1732
  %1810 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1809)  ; FMax(a,b)
  %1811 = select i1 %1808, float %1801, float %1810
  %1812 = call float @dx.op.binary.f32(i32 36, float %1801, float %1811)  ; FMin(a,b)
  %1813 = fcmp fast ogt float %1732, 0.000000e+00
  %1814 = fcmp fast olt float %1750, 0.000000e+00
  br i1 %1813, label %1815, label %1872

; <label>:1815                                    ; preds = %1800
  %1816 = icmp eq i32 %1751, 0
  br i1 %1814, label %1817, label %1861

; <label>:1817                                    ; preds = %1815
  %1818 = select i1 %1816, float %1801, float 0.000000e+00
  %1819 = fsub fast float -0.000000e+00, %1818
  %1820 = call float @dx.op.unary.f32(i32 6, float %1819)  ; FAbs(value)
  %1821 = fmul fast float %1818, %1732
  %1822 = fadd fast float %1821, %1745
  %1823 = fmul fast float %1820, %1822
  %1824 = fsub fast float %1807, %1823
  %1825 = fsub fast float %1801, %1820
  %1826 = select i1 %1816, float %1825, float 0.000000e+00
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.CBufRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.CBufRet.f32 %1827, 2
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1838 = call float @dx.op.binary.f32(i32 36, float %1824, float %1837)  ; FMin(a,b)
  %1839 = fmul fast float %1835, %1826
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1841 = fsub fast float %1832, %1828
  %1842 = fsub fast float %1833, %1829
  %1843 = fsub fast float %1834, %1830
  %1844 = fmul fast float %1840, %1841
  %1845 = fmul fast float %1840, %1842
  %1846 = fmul fast float %1840, %1843
  %1847 = fadd fast float %1844, %1828
  %1848 = fadd fast float %1845, %1829
  %1849 = fadd fast float %1846, %1830
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1853 = fadd fast float %1852, %1851
  %1854 = call float @dx.op.unary.f32(i32 7, float %1853)  ; Saturate(value)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1856 = extractvalue %dx.types.CBufRet.f32 %1850, 3
  %1857 = fadd fast float %1856, %1855
  %1858 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1859 = fmul fast float %1854, %1838
  %1860 = fmul fast float %1859, %1858
  br label %2102

; <label>:1861                                    ; preds = %1815
  br i1 %1816, label %1862, label %1883

; <label>:1862                                    ; preds = %1861
  %1863 = call float @dx.op.binary.f32(i32 36, float %1812, float %1802)  ; FMin(a,b)
  %1864 = fsub fast float %1812, %1863
  %1865 = fsub fast float %1864, %1801
  %1866 = call float @dx.op.unary.f32(i32 6, float %1865)  ; FAbs(value)
  %1867 = fadd fast float %1864, %1801
  %1868 = fmul fast float %1867, %1732
  %1869 = fadd fast float %1868, %1745
  %1870 = fmul fast float %1869, %1866
  %1871 = fsub fast float %1807, %1870
  br label %1883

; <label>:1872                                    ; preds = %1800
  br i1 %1814, label %1873, label %1883

; <label>:1873                                    ; preds = %1872
  %1874 = call float @dx.op.binary.f32(i32 35, float %1802, float %1812)  ; FMax(a,b)
  %1875 = icmp eq i32 %1751, 0
  %1876 = select i1 %1875, float %1812, float 0.000000e+00
  %1877 = fsub fast float -0.000000e+00, %1876
  %1878 = call float @dx.op.unary.f32(i32 6, float %1877)  ; FAbs(value)
  %1879 = fmul fast float %1876, %1732
  %1880 = fadd fast float %1879, %1745
  %1881 = fmul fast float %1878, %1880
  %1882 = fsub fast float %1807, %1881
  br label %1883

; <label>:1883                                    ; preds = %1873, %1872, %1862, %1861
  %1884 = phi float [ %1802, %1861 ], [ %1802, %1862 ], [ %1874, %1873 ], [ %1802, %1872 ]
  %1885 = phi float [ 0.000000e+00, %1861 ], [ %1866, %1862 ], [ %1878, %1873 ], [ 0.000000e+00, %1872 ]
  %1886 = phi float [ %1807, %1861 ], [ %1871, %1862 ], [ %1882, %1873 ], [ %1807, %1872 ]
  %1887 = phi float [ %1812, %1861 ], [ %1812, %1862 ], [ %1801, %1873 ], [ %1801, %1872 ]
  %1888 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 0
  store float -1.000000e+00, float* %1888, align 4, !tbaa !83, !noalias !87
  %1889 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 1
  store float -1.000000e+00, float* %1889, align 4, !tbaa !83, !noalias !87
  %1890 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 2
  store float -1.000000e+00, float* %1890, align 4, !tbaa !83, !noalias !87
  %1891 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 0
  store float -1.000000e+00, float* %1891, align 4, !tbaa !83, !noalias !87
  %1892 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 1
  store float -1.000000e+00, float* %1892, align 4, !tbaa !83, !noalias !87
  %1893 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 2
  store float -1.000000e+00, float* %1893, align 4, !tbaa !83, !noalias !87
  %1894 = icmp sgt i32 %1753, 0
  br i1 %1894, label %1895, label %1956

; <label>:1895                                    ; preds = %1883
  br label %1896

; <label>:1896                                    ; preds = %1945, %1895
  %1897 = phi i32 [ %1946, %1945 ], [ 0, %1895 ]
  %1898 = phi i32 [ %1947, %1945 ], [ 0, %1895 ]
  %1899 = add nuw i32 %1898, 171
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1899)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.CBufRet.f32 %1903, 1
  %1906 = fsub fast float %1901, %1904
  %1907 = fsub fast float %1902, %1905
  %1908 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1909 = fsub fast float -0.000000e+00, %1906
  %1910 = fsub fast float -0.000000e+00, %1907
  %1911 = call float @dx.op.dot2.f32(i32 54, float %1730, float %1731, float %1909, float %1910)  ; Dot2(ax,ay,bx,by)
  %1912 = fmul fast float %1911, 2.000000e+00
  %1913 = call float @dx.op.dot2.f32(i32 54, float %1909, float %1910, float %1909, float %1910)  ; Dot2(ax,ay,bx,by)
  %1914 = fmul fast float %1908, %1908
  %1915 = fsub fast float %1913, %1914
  %1916 = fmul fast float %1912, %1912
  %1917 = fmul fast float %1773, %1915
  %1918 = fsub fast float %1916, %1917
  %1919 = fcmp fast ogt float %1918, 0.000000e+00
  br i1 %1919, label %1920, label %1935

; <label>:1920                                    ; preds = %1896
  %1921 = fcmp fast ogt float %1912, 0.000000e+00
  %1922 = call float @dx.op.unary.f32(i32 24, float %1918)  ; Sqrt(value)
  %1923 = fsub fast float -0.000000e+00, %1922
  %1924 = select i1 %1921, float %1922, float %1923
  %1925 = fadd fast float %1924, %1912
  %1926 = fmul float %1925, -5.000000e-01
  %1927 = fdiv fast float %1926, %1766
  %1928 = call float @dx.op.binary.f32(i32 35, float %1927, float 0.000000e+00)  ; FMax(a,b)
  %1929 = call float @dx.op.binary.f32(i32 36, float %1801, float %1928)  ; FMin(a,b)
  %1930 = fdiv fast float %1915, %1926
  %1931 = call float @dx.op.binary.f32(i32 35, float %1930, float 0.000000e+00)  ; FMax(a,b)
  %1932 = call float @dx.op.binary.f32(i32 36, float %1801, float %1931)  ; FMin(a,b)
  %1933 = call float @dx.op.binary.f32(i32 36, float %1929, float %1932)  ; FMin(a,b)
  %1934 = call float @dx.op.binary.f32(i32 35, float %1929, float %1932)  ; FMax(a,b)
  br label %1935

; <label>:1935                                    ; preds = %1920, %1896
  %1936 = phi float [ %1934, %1920 ], [ -1.000000e+00, %1896 ]
  %1937 = phi float [ %1933, %1920 ], [ -1.000000e+00, %1896 ]
  %1938 = phi i1 [ true, %1920 ], [ false, %1896 ]
  br i1 %1938, label %1939, label %1945

; <label>:1939                                    ; preds = %1935
  %1940 = call float @dx.op.binary.f32(i32 35, float %1884, float %1937)  ; FMax(a,b)
  %1941 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1898
  store float %1940, float* %1941, align 4, !tbaa !83, !noalias !87
  %1942 = call float @dx.op.binary.f32(i32 35, float %1884, float %1936)  ; FMax(a,b)
  %1943 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %1898
  store float %1942, float* %1943, align 4, !tbaa !83, !noalias !87
  %1944 = add nsw i32 %1897, 1
  br label %1945

; <label>:1945                                    ; preds = %1939, %1935
  %1946 = phi i32 [ %1944, %1939 ], [ %1897, %1935 ]
  %1947 = add nuw nsw i32 %1898, 1
  %1948 = icmp eq i32 %1947, %1753
  br i1 %1948, label %1949, label %1896

; <label>:1949                                    ; preds = %1945
  %1950 = load float, float* %1890, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %1951 = load float, float* %1889, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  %1952 = load float, float* %1888, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  %1953 = load float, float* %1893, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %1954 = load float, float* %1892, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  %1955 = load float, float* %1891, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  br label %1956

; <label>:1956                                    ; preds = %1949, %1883
  %1957 = phi float [ -1.000000e+00, %1883 ], [ %1955, %1949 ]
  %1958 = phi float [ -1.000000e+00, %1883 ], [ %1954, %1949 ]
  %1959 = phi float [ -1.000000e+00, %1883 ], [ %1953, %1949 ]
  %1960 = phi float [ -1.000000e+00, %1883 ], [ %1952, %1949 ]
  %1961 = phi float [ -1.000000e+00, %1883 ], [ %1951, %1949 ]
  %1962 = phi float [ -1.000000e+00, %1883 ], [ %1950, %1949 ]
  %1963 = phi i32 [ 0, %1883 ], [ %1946, %1949 ]
  %1964 = call float @dx.op.binary.f32(i32 36, float %1961, float %1962)  ; FMin(a,b)
  %1965 = call float @dx.op.binary.f32(i32 36, float %1960, float %1964)  ; FMin(a,b)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1960, float %1961)  ; FMax(a,b)
  %1967 = call float @dx.op.binary.f32(i32 36, float %1966, float %1962)  ; FMin(a,b)
  %1968 = call float @dx.op.binary.f32(i32 36, float %1960, float %1961)  ; FMin(a,b)
  %1969 = call float @dx.op.binary.f32(i32 35, float %1968, float %1967)  ; FMax(a,b)
  %1970 = call float @dx.op.binary.f32(i32 35, float %1961, float %1962)  ; FMax(a,b)
  %1971 = call float @dx.op.binary.f32(i32 35, float %1960, float %1970)  ; FMax(a,b)
  store float %1965, float* %1888, align 4, !tbaa !83, !alias.scope !111, !noalias !112
  store float %1969, float* %1889, align 4, !tbaa !83, !alias.scope !109, !noalias !110
  store float %1971, float* %1890, align 4, !tbaa !83, !alias.scope !103, !noalias !106
  %1972 = call float @dx.op.binary.f32(i32 36, float %1958, float %1959)  ; FMin(a,b)
  %1973 = call float @dx.op.binary.f32(i32 36, float %1957, float %1972)  ; FMin(a,b)
  %1974 = call float @dx.op.binary.f32(i32 35, float %1957, float %1958)  ; FMax(a,b)
  %1975 = call float @dx.op.binary.f32(i32 36, float %1974, float %1959)  ; FMin(a,b)
  %1976 = call float @dx.op.binary.f32(i32 36, float %1957, float %1958)  ; FMin(a,b)
  %1977 = call float @dx.op.binary.f32(i32 35, float %1976, float %1975)  ; FMax(a,b)
  %1978 = call float @dx.op.binary.f32(i32 35, float %1958, float %1959)  ; FMax(a,b)
  %1979 = call float @dx.op.binary.f32(i32 35, float %1957, float %1978)  ; FMax(a,b)
  store float %1973, float* %1891, align 4, !tbaa !83, !alias.scope !121, !noalias !122
  store float %1977, float* %1892, align 4, !tbaa !83, !alias.scope !119, !noalias !120
  store float %1979, float* %1893, align 4, !tbaa !83, !alias.scope !113, !noalias !116
  %1980 = sub nsw i32 3, %1963
  %1981 = icmp sgt i32 %1980, 2
  br i1 %1981, label %1982, label %2020

; <label>:1982                                    ; preds = %1956
  %1983 = icmp eq i32 %1751, 0
  %1984 = fsub fast float %1801, %1885
  %1985 = select i1 %1983, float %1984, float %1885
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.CBufRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.CBufRet.f32 %1986, 2
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.CBufRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.CBufRet.f32 %1990, 2
  %1994 = extractvalue %dx.types.CBufRet.f32 %1990, 3
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 3
  %1997 = call float @dx.op.binary.f32(i32 36, float %1886, float %1996)  ; FMin(a,b)
  %1998 = fmul fast float %1994, %1985
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fsub fast float %1991, %1987
  %2001 = fsub fast float %1992, %1988
  %2002 = fsub fast float %1993, %1989
  %2003 = fmul fast float %1999, %2000
  %2004 = fmul fast float %1999, %2001
  %2005 = fmul fast float %1999, %2002
  %2006 = fadd fast float %2003, %1987
  %2007 = fadd fast float %2004, %1988
  %2008 = fadd fast float %2005, %1989
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2012 = fadd fast float %2011, %2010
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2009, 2
  %2015 = extractvalue %dx.types.CBufRet.f32 %2009, 3
  %2016 = fadd fast float %2015, %2014
  %2017 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  %2018 = fmul fast float %2013, %1997
  %2019 = fmul fast float %2018, %2017
  br label %2102

; <label>:2020                                    ; preds = %1956
  %2021 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %1980
  %2022 = load float, float* %2021, align 4, !tbaa !83, !noalias !87
  %2023 = fcmp fast olt float %2022, %1887
  %2024 = icmp sgt i32 %1963, 0
  %2025 = and i1 %2024, %2023
  br i1 %2025, label %2026, label %2063

; <label>:2026                                    ; preds = %2020
  br label %2027

; <label>:2027                                    ; preds = %2056, %2026
  %2028 = phi float [ %2057, %2056 ], [ %1885, %2026 ]
  %2029 = phi float [ %2058, %2056 ], [ %1886, %2026 ]
  %2030 = phi float [ %2038, %2056 ], [ %2022, %2026 ]
  %2031 = phi i32 [ %2035, %2056 ], [ %1980, %2026 ]
  %2032 = getelementptr inbounds [3 x float], [3 x float]* %56, i32 0, i32 %2031
  %2033 = load float, float* %2032, align 4, !tbaa !83, !noalias !87
  %2034 = icmp slt i32 %2031, 2
  %2035 = add nsw i32 %2031, 1
  %2036 = getelementptr inbounds [3 x float], [3 x float]* %55, i32 0, i32 %2035
  %2037 = load float, float* %2036, align 4, !tbaa !83, !noalias !87
  %2038 = select i1 %2034, float %2037, float %1801
  %2039 = call float @dx.op.binary.f32(i32 36, float %2038, float %2033)  ; FMin(a,b)
  %2040 = call float @dx.op.binary.f32(i32 36, float %1887, float %2039)  ; FMin(a,b)
  %2041 = icmp eq i32 %1751, 0
  %2042 = fadd fast float %2040, %2030
  %2043 = fmul fast float %2042, %1732
  %2044 = fadd fast float %2043, %1745
  br i1 %2041, label %2050, label %2045

; <label>:2045                                    ; preds = %2027
  %2046 = fsub fast float %2040, %2030
  %2047 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2046)  ; FMax(a,b)
  %2048 = fmul fast float %2047, %2044
  %2049 = fadd fast float %2048, %2029
  br label %2056

; <label>:2050                                    ; preds = %2027
  %2051 = fsub fast float %2030, %2040
  %2052 = call float @dx.op.unary.f32(i32 6, float %2051)  ; FAbs(value)
  %2053 = fadd fast float %2052, %2028
  %2054 = fmul fast float %2052, %2044
  %2055 = fsub fast float %2029, %2054
  br label %2056

; <label>:2056                                    ; preds = %2050, %2045
  %2057 = phi float [ %2047, %2045 ], [ %2053, %2050 ]
  %2058 = phi float [ %2049, %2045 ], [ %2055, %2050 ]
  %2059 = fcmp fast olt float %2038, %1887
  %2060 = icmp slt i32 %2035, 3
  %2061 = and i1 %2060, %2059
  br i1 %2061, label %2027, label %2062

; <label>:2062                                    ; preds = %2056
  br label %2063

; <label>:2063                                    ; preds = %2062, %2020
  %2064 = phi float [ %1885, %2020 ], [ %2057, %2062 ]
  %2065 = phi float [ %1886, %2020 ], [ %2058, %2062 ]
  %2066 = fsub fast float %1801, %2064
  %2067 = select i1 %1803, float %2064, float %2066
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2071 = extractvalue %dx.types.CBufRet.f32 %2068, 2
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.CBufRet.f32 %2072, 3
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2079 = call float @dx.op.binary.f32(i32 36, float %2065, float %2078)  ; FMin(a,b)
  %2080 = fmul fast float %2076, %2067
  %2081 = call float @dx.op.unary.f32(i32 7, float %2080)  ; Saturate(value)
  %2082 = fsub fast float %2073, %2069
  %2083 = fsub fast float %2074, %2070
  %2084 = fsub fast float %2075, %2071
  %2085 = fmul fast float %2081, %2082
  %2086 = fmul fast float %2081, %2083
  %2087 = fmul fast float %2081, %2084
  %2088 = fadd fast float %2085, %2069
  %2089 = fadd fast float %2086, %2070
  %2090 = fadd fast float %2087, %2071
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2091, 0
  %2093 = extractvalue %dx.types.CBufRet.f32 %2091, 1
  %2094 = fadd fast float %2093, %2092
  %2095 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2096 = extractvalue %dx.types.CBufRet.f32 %2091, 2
  %2097 = extractvalue %dx.types.CBufRet.f32 %2091, 3
  %2098 = fadd fast float %2097, %2096
  %2099 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2100 = fmul fast float %2095, %2079
  %2101 = fmul fast float %2100, %2099
  br label %2102

; <label>:2102                                    ; preds = %2063, %1982, %1817, %1799, %1797
  %2103 = phi float [ %1826, %1817 ], [ %1985, %1982 ], [ %2067, %2063 ], [ 0.000000e+00, %1797 ], [ 0.000000e+00, %1799 ]
  %2104 = phi float [ %1860, %1817 ], [ %2019, %1982 ], [ %2101, %2063 ], [ 0.000000e+00, %1797 ], [ 0.000000e+00, %1799 ]
  %2105 = phi float [ %1847, %1817 ], [ %2006, %1982 ], [ %2088, %2063 ], [ 0.000000e+00, %1797 ], [ 0.000000e+00, %1799 ]
  %2106 = phi float [ %1848, %1817 ], [ %2007, %1982 ], [ %2089, %2063 ], [ 0.000000e+00, %1797 ], [ 0.000000e+00, %1799 ]
  %2107 = phi float [ %1849, %1817 ], [ %2008, %1982 ], [ %2090, %2063 ], [ 0.000000e+00, %1797 ], [ 0.000000e+00, %1799 ]
  %2108 = fmul fast float %1740, %2104
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2111 = fsub fast float %1747, %2110
  %2112 = fcmp fast olt float %2108, -2.000000e+01
  %2113 = call float @dx.op.unary.f32(i32 21, float %2108)  ; Exp(value)
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 2
  %2116 = extractvalue %dx.types.CBufRet.f32 %2114, 3
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2119 = fmul fast float %2116, %2111
  %2120 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2121 = fsub fast float 1.000000e+00, %2120
  %2122 = fmul fast float %1732, 5.000000e-01
  %2123 = fadd fast float %2122, 5.000000e-01
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = fsub fast float 1.000000e+00, %2124
  %2126 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2121)  ; FMax(a,b)
  %2127 = fdiv fast float %2125, %2126
  %2128 = fsub fast float %2111, %1689
  %2129 = call float @dx.op.unary.f32(i32 6, float %2128)  ; FAbs(value)
  %2130 = fmul fast float %2129, %2115
  %2131 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2132 = fsub fast float 1.000000e+00, %2130
  %2133 = fmul fast float %2132, %2131
  %2134 = fadd fast float %2133, %2130
  %2135 = fmul fast float %2118, %2111
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2137 = fsub fast float 1.000000e+00, %2134
  %2138 = fmul fast float %2137, %2136
  %2139 = fadd fast float %2138, %2134
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  %2141 = fadd fast float %2113, -1.000000e+00
  %2142 = select i1 %2112, float -1.000000e+00, float %2141
  %2143 = fmul fast float %2140, %2142
  %2144 = fadd fast float %2143, 1.000000e+00
  %2145 = fsub fast float -0.000000e+00, %2143
  %2146 = fmul fast float %2105, %2145
  %2147 = fmul fast float %2106, %2145
  %2148 = fmul fast float %2107, %2145
  br label %2149

; <label>:2149                                    ; preds = %2102, %1698
  %2150 = phi float [ %2103, %2102 ], [ 0.000000e+00, %1698 ]
  %2151 = phi float [ %2144, %2102 ], [ 1.000000e+00, %1698 ]
  %2152 = phi float [ %2146, %2102 ], [ 0.000000e+00, %1698 ]
  %2153 = phi float [ %2147, %2102 ], [ 0.000000e+00, %1698 ]
  %2154 = phi float [ %2148, %2102 ], [ 0.000000e+00, %1698 ]
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 1
  %2157 = fsub fast float 1.000000e+00, %2151
  %2158 = fmul fast float %2157, %1733
  %2159 = fmul fast float %2158, %2156
  %2160 = fsub fast float %1733, %2159
  br i1 %1726, label %2161, label %2190, !dx.controlflow.hints !123

; <label>:2161                                    ; preds = %2149
  %2162 = fmul fast float %1734, %1723
  %2163 = fadd fast float %2162, %1724
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = fmul fast float %1705, %2160
  %2166 = fsub fast float -0.000000e+00, %2165
  %2167 = fmul fast float %1706, %2160
  %2168 = fsub fast float -0.000000e+00, %2167
  %2169 = call float @dx.op.unary.f32(i32 21, float %2166)  ; Exp(value)
  %2170 = call float @dx.op.unary.f32(i32 21, float %2168)  ; Exp(value)
  %2171 = call float @dx.op.binary.f32(i32 35, float %1713, float %2169)  ; FMax(a,b)
  %2172 = call float @dx.op.binary.f32(i32 35, float %1713, float %2170)  ; FMax(a,b)
  %2173 = fsub fast float %2172, %2171
  %2174 = fmul fast float %2173, %2164
  %2175 = fadd fast float %2174, %2171
  %2176 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2177 = fsub fast float %1710, %1715
  %2178 = fsub fast float %1711, %1716
  %2179 = fsub fast float %1712, %1717
  %2180 = fmul fast float %2164, %2177
  %2181 = fmul fast float %2164, %2178
  %2182 = fmul fast float %2164, %2179
  %2183 = fadd fast float %2180, %1715
  %2184 = fadd fast float %2181, %1716
  %2185 = fadd fast float %2182, %1717
  %2186 = fsub fast float 1.000000e+00, %2176
  %2187 = fmul fast float %2186, %2183
  %2188 = fmul fast float %2186, %2184
  %2189 = fmul fast float %2186, %2185
  br label %2249

; <label>:2190                                    ; preds = %2149
  %2191 = fmul fast float %2160, %1722
  %2192 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2193 = fsub fast float 2.000000e+00, %2192
  %2194 = fmul fast float %2192, 9.921875e-01
  %2195 = fmul fast float %2194, %2193
  %2196 = fadd fast float %2195, 3.906250e-03
  %2197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2196, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  %2199 = fsub fast float %2192, %2198
  %2200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2199)  ; FMax(a,b)
  %2201 = fmul fast float %1708, %1689
  %2202 = call float @dx.op.unary.f32(i32 6, float %2201)  ; FAbs(value)
  %2203 = fcmp fast ogt float %2202, 0x3EB0C6F7A0000000
  br i1 %2203, label %2204, label %2210, !dx.controlflow.hints !124

; <label>:2204                                    ; preds = %2190
  %2205 = fmul fast float %2201, 0xBFF7154760000000
  %2206 = call float @dx.op.unary.f32(i32 21, float %2205)  ; Exp(value)
  %2207 = fsub fast float 1.000000e+00, %2206
  %2208 = fdiv fast float %2207, %2201
  %2209 = fmul fast float %2208, %1718
  br label %2210

; <label>:2210                                    ; preds = %2204, %2190
  %2211 = phi float [ %2209, %2204 ], [ %1718, %2190 ]
  %2212 = fadd fast float %2211, %1720
  %2213 = fmul fast float %2212, %2200
  %2214 = fmul fast float %1705, %2213
  %2215 = fsub fast float -0.000000e+00, %2214
  %2216 = fmul fast float %1706, %2213
  %2217 = fsub fast float -0.000000e+00, %2216
  %2218 = fmul fast float %1707, %2213
  %2219 = fsub fast float -0.000000e+00, %2218
  %2220 = call float @dx.op.unary.f32(i32 21, float %2215)  ; Exp(value)
  %2221 = call float @dx.op.unary.f32(i32 21, float %2217)  ; Exp(value)
  %2222 = call float @dx.op.unary.f32(i32 21, float %2219)  ; Exp(value)
  %2223 = fmul fast float %1734, %1734
  %2224 = fadd fast float %2223, 1.000000e+00
  %2225 = fmul fast float %2224, 0x3FAE8EC8A0000000
  %2226 = fmul fast float %2225, %1715
  %2227 = fmul fast float %2225, %1716
  %2228 = fmul fast float %2225, %1717
  %2229 = fmul fast float %1734, %1713
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fmul fast float %1713, %1713
  %2232 = fsub fast float 1.000000e+00, %2231
  %2233 = fmul fast float %2232, 0x3FB45F3060000000
  %2234 = fmul fast float %2230, %2230
  %2235 = fdiv fast float 1.000000e+00, %2234
  %2236 = fmul fast float %2233, %2235
  %2237 = fmul fast float %2236, %1710
  %2238 = fmul fast float %2236, %1711
  %2239 = fmul fast float %2236, %1712
  %2240 = fadd fast float %2237, %2226
  %2241 = fadd fast float %2238, %2227
  %2242 = fadd fast float %2239, %2228
  %2243 = fsub fast float 1.000000e+00, %2220
  %2244 = fsub fast float 1.000000e+00, %2221
  %2245 = fsub fast float 1.000000e+00, %2222
  %2246 = fmul fast float %2240, %2243
  %2247 = fmul fast float %2241, %2244
  %2248 = fmul fast float %2242, %2245
  br label %2249

; <label>:2249                                    ; preds = %2210, %2161
  %2250 = phi float [ %2187, %2161 ], [ %2246, %2210 ]
  %2251 = phi float [ %2188, %2161 ], [ %2247, %2210 ]
  %2252 = phi float [ %2189, %2161 ], [ %2248, %2210 ]
  %2253 = phi float [ %2176, %2161 ], [ %2220, %2210 ]
  %2254 = phi float [ %2176, %2161 ], [ %2221, %2210 ]
  %2255 = phi float [ %2176, %2161 ], [ %2222, %2210 ]
  br i1 %1742, label %2256, label %2454, !dx.controlflow.hints !125

; <label>:2256                                    ; preds = %2249
  %2257 = extractvalue %dx.types.CBufRet.f32 %2155, 0
  %2258 = fmul fast float %2257, %2157
  %2259 = fsub fast float %2152, %2250
  %2260 = fsub fast float %2153, %2251
  %2261 = fsub fast float %2154, %2252
  %2262 = fmul fast float %2258, %2259
  %2263 = fmul fast float %2258, %2260
  %2264 = fmul fast float %2258, %2261
  %2265 = fadd fast float %2262, %2250
  %2266 = fadd fast float %2263, %2251
  %2267 = fadd fast float %2264, %2252
  %2268 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2253)  ; FMax(a,b)
  %2269 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2254)  ; FMax(a,b)
  %2270 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2255)  ; FMax(a,b)
  %2271 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2151)  ; FMax(a,b)
  %2272 = call float @dx.op.binary.f32(i32 35, float %2150, float %2160)  ; FMax(a,b)
  %2273 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2272)  ; FMax(a,b)
  %2274 = fdiv fast float %2150, %2273
  %2275 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2276 = fdiv fast float %2160, %2273
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fcmp fast une float %2271, 1.000000e+00
  br i1 %2278, label %2279, label %2292, !dx.controlflow.hints !126

; <label>:2279                                    ; preds = %2256
  %2280 = call float @dx.op.unary.f32(i32 23, float %2271)  ; Log(value)
  %2281 = fmul fast float %2280, 0x3FE62E4300000000
  %2282 = fmul fast float %2152, %2281
  %2283 = fsub fast float -0.000000e+00, %2282
  %2284 = fmul fast float %2153, %2281
  %2285 = fsub fast float -0.000000e+00, %2284
  %2286 = fmul fast float %2154, %2281
  %2287 = fsub fast float -0.000000e+00, %2286
  %2288 = fsub fast float 1.000000e+00, %2271
  %2289 = fdiv fast float %2283, %2288
  %2290 = fdiv fast float %2285, %2288
  %2291 = fdiv fast float %2287, %2288
  br label %2292

; <label>:2292                                    ; preds = %2279, %2256
  %2293 = phi float [ %2289, %2279 ], [ %2152, %2256 ]
  %2294 = phi float [ %2290, %2279 ], [ %2153, %2256 ]
  %2295 = phi float [ %2291, %2279 ], [ %2154, %2256 ]
  %2296 = phi float [ %2281, %2279 ], [ 0.000000e+00, %2256 ]
  %2297 = fcmp fast une float %2268, 1.000000e+00
  br i1 %2297, label %2298, label %2305, !dx.controlflow.hints !127

; <label>:2298                                    ; preds = %2292
  %2299 = call float @dx.op.unary.f32(i32 23, float %2268)  ; Log(value)
  %2300 = fmul fast float %2299, 0x3FE62E4300000000
  %2301 = fmul fast float %2265, %2300
  %2302 = fsub fast float -0.000000e+00, %2301
  %2303 = fsub fast float 1.000000e+00, %2268
  %2304 = fdiv fast float %2302, %2303
  br label %2305

; <label>:2305                                    ; preds = %2298, %2292
  %2306 = phi float [ %2304, %2298 ], [ %2265, %2292 ]
  %2307 = phi float [ %2300, %2298 ], [ 0.000000e+00, %2292 ]
  %2308 = fcmp fast une float %2269, 1.000000e+00
  br i1 %2308, label %2309, label %2316, !dx.controlflow.hints !127

; <label>:2309                                    ; preds = %2305
  %2310 = call float @dx.op.unary.f32(i32 23, float %2269)  ; Log(value)
  %2311 = fmul fast float %2310, 0x3FE62E4300000000
  %2312 = fmul fast float %2266, %2311
  %2313 = fsub fast float -0.000000e+00, %2312
  %2314 = fsub fast float 1.000000e+00, %2269
  %2315 = fdiv fast float %2313, %2314
  br label %2316

; <label>:2316                                    ; preds = %2309, %2305
  %2317 = phi float [ %2315, %2309 ], [ %2266, %2305 ]
  %2318 = phi float [ %2311, %2309 ], [ 0.000000e+00, %2305 ]
  %2319 = fcmp fast une float %2270, 1.000000e+00
  br i1 %2319, label %2320, label %2327, !dx.controlflow.hints !127

; <label>:2320                                    ; preds = %2316
  %2321 = call float @dx.op.unary.f32(i32 23, float %2270)  ; Log(value)
  %2322 = fmul fast float %2321, 0x3FE62E4300000000
  %2323 = fmul fast float %2267, %2322
  %2324 = fsub fast float -0.000000e+00, %2323
  %2325 = fsub fast float 1.000000e+00, %2270
  %2326 = fdiv fast float %2324, %2325
  br label %2327

; <label>:2327                                    ; preds = %2320, %2316
  %2328 = phi float [ %2326, %2320 ], [ %2267, %2316 ]
  %2329 = phi float [ %2322, %2320 ], [ 0.000000e+00, %2316 ]
  %2330 = fmul fast float %2293, %2277
  %2331 = fmul fast float %2294, %2277
  %2332 = fmul fast float %2295, %2277
  %2333 = fmul fast float %2296, %2277
  %2334 = fmul fast float %2306, %2275
  %2335 = fmul fast float %2317, %2275
  %2336 = fmul fast float %2328, %2275
  %2337 = fmul fast float %2307, %2275
  %2338 = fmul fast float %2318, %2275
  %2339 = fmul fast float %2329, %2275
  %2340 = fadd fast float %2334, %2330
  %2341 = fadd fast float %2335, %2331
  %2342 = fadd fast float %2336, %2332
  %2343 = fadd fast float %2337, %2333
  %2344 = fadd fast float %2338, %2333
  %2345 = fadd fast float %2339, %2333
  %2346 = fcmp fast une float %2343, 0.000000e+00
  br i1 %2346, label %2347, label %2354, !dx.controlflow.hints !128

; <label>:2347                                    ; preds = %2327
  %2348 = fmul fast float %2343, 0x3FF7154760000000
  %2349 = call float @dx.op.unary.f32(i32 21, float %2348)  ; Exp(value)
  %2350 = fsub fast float 1.000000e+00, %2349
  %2351 = fmul fast float %2340, %2350
  %2352 = fsub fast float -0.000000e+00, %2351
  %2353 = fdiv fast float %2352, %2343
  br label %2354

; <label>:2354                                    ; preds = %2347, %2327
  %2355 = phi float [ %2349, %2347 ], [ 1.000000e+00, %2327 ]
  %2356 = phi float [ %2353, %2347 ], [ %2340, %2327 ]
  %2357 = fcmp fast une float %2344, 0.000000e+00
  br i1 %2357, label %2358, label %2365, !dx.controlflow.hints !128

; <label>:2358                                    ; preds = %2354
  %2359 = fmul fast float %2344, 0x3FF7154760000000
  %2360 = call float @dx.op.unary.f32(i32 21, float %2359)  ; Exp(value)
  %2361 = fsub fast float 1.000000e+00, %2360
  %2362 = fmul fast float %2341, %2361
  %2363 = fsub fast float -0.000000e+00, %2362
  %2364 = fdiv fast float %2363, %2344
  br label %2365

; <label>:2365                                    ; preds = %2358, %2354
  %2366 = phi float [ %2360, %2358 ], [ 1.000000e+00, %2354 ]
  %2367 = phi float [ %2364, %2358 ], [ %2341, %2354 ]
  %2368 = fcmp fast une float %2345, 0.000000e+00
  br i1 %2368, label %2369, label %2376, !dx.controlflow.hints !128

; <label>:2369                                    ; preds = %2365
  %2370 = fmul fast float %2345, 0x3FF7154760000000
  %2371 = call float @dx.op.unary.f32(i32 21, float %2370)  ; Exp(value)
  %2372 = fsub fast float 1.000000e+00, %2371
  %2373 = fmul fast float %2342, %2372
  %2374 = fsub fast float -0.000000e+00, %2373
  %2375 = fdiv fast float %2374, %2345
  br label %2376

; <label>:2376                                    ; preds = %2369, %2365
  %2377 = phi float [ %2371, %2369 ], [ 1.000000e+00, %2365 ]
  %2378 = phi float [ %2375, %2369 ], [ %2342, %2365 ]
  %2379 = fcmp fast ogt float %2275, %2277
  br i1 %2379, label %2380, label %2400

; <label>:2380                                    ; preds = %2376
  %2381 = fsub fast float 1.000000e+00, %2277
  %2382 = fmul fast float %2293, %2381
  %2383 = fmul fast float %2294, %2381
  %2384 = fmul fast float %2295, %2381
  %2385 = fmul fast float %2296, %2381
  %2386 = fcmp fast une float %2385, 0.000000e+00
  br i1 %2386, label %2387, label %2438, !dx.controlflow.hints !129

; <label>:2387                                    ; preds = %2380
  %2388 = fmul fast float %2385, 0x3FF7154760000000
  %2389 = call float @dx.op.unary.f32(i32 21, float %2388)  ; Exp(value)
  %2390 = fsub fast float 1.000000e+00, %2389
  %2391 = fmul fast float %2382, %2390
  %2392 = fsub fast float -0.000000e+00, %2391
  %2393 = fmul fast float %2383, %2390
  %2394 = fsub fast float -0.000000e+00, %2393
  %2395 = fmul fast float %2384, %2390
  %2396 = fsub fast float -0.000000e+00, %2395
  %2397 = fdiv fast float %2392, %2385
  %2398 = fdiv fast float %2394, %2385
  %2399 = fdiv fast float %2396, %2385
  br label %2438

; <label>:2400                                    ; preds = %2376
  %2401 = fsub fast float 1.000000e+00, %2275
  %2402 = fmul fast float %2306, %2401
  %2403 = fmul fast float %2317, %2401
  %2404 = fmul fast float %2328, %2401
  %2405 = fmul fast float %2307, %2401
  %2406 = fmul fast float %2318, %2401
  %2407 = fmul fast float %2329, %2401
  %2408 = fcmp fast une float %2405, 0.000000e+00
  br i1 %2408, label %2409, label %2416, !dx.controlflow.hints !128

; <label>:2409                                    ; preds = %2400
  %2410 = fmul fast float %2405, 0x3FF7154760000000
  %2411 = call float @dx.op.unary.f32(i32 21, float %2410)  ; Exp(value)
  %2412 = fsub fast float 1.000000e+00, %2411
  %2413 = fmul fast float %2402, %2412
  %2414 = fsub fast float -0.000000e+00, %2413
  %2415 = fdiv fast float %2414, %2405
  br label %2416

; <label>:2416                                    ; preds = %2409, %2400
  %2417 = phi float [ %2415, %2409 ], [ %2402, %2400 ]
  %2418 = phi float [ %2411, %2409 ], [ 1.000000e+00, %2400 ]
  %2419 = fcmp fast une float %2406, 0.000000e+00
  br i1 %2419, label %2420, label %2427, !dx.controlflow.hints !128

; <label>:2420                                    ; preds = %2416
  %2421 = fmul fast float %2406, 0x3FF7154760000000
  %2422 = call float @dx.op.unary.f32(i32 21, float %2421)  ; Exp(value)
  %2423 = fsub fast float 1.000000e+00, %2422
  %2424 = fmul fast float %2403, %2423
  %2425 = fsub fast float -0.000000e+00, %2424
  %2426 = fdiv fast float %2425, %2406
  br label %2427

; <label>:2427                                    ; preds = %2420, %2416
  %2428 = phi float [ %2426, %2420 ], [ %2403, %2416 ]
  %2429 = phi float [ %2422, %2420 ], [ 1.000000e+00, %2416 ]
  %2430 = fcmp fast une float %2407, 0.000000e+00
  br i1 %2430, label %2431, label %2438, !dx.controlflow.hints !128

; <label>:2431                                    ; preds = %2427
  %2432 = fmul fast float %2407, 0x3FF7154760000000
  %2433 = call float @dx.op.unary.f32(i32 21, float %2432)  ; Exp(value)
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = fmul fast float %2404, %2434
  %2436 = fsub fast float -0.000000e+00, %2435
  %2437 = fdiv fast float %2436, %2407
  br label %2438

; <label>:2438                                    ; preds = %2431, %2427, %2387, %2380
  %2439 = phi float [ %2437, %2431 ], [ %2399, %2387 ], [ %2384, %2380 ], [ %2404, %2427 ]
  %2440 = phi float [ %2428, %2431 ], [ %2398, %2387 ], [ %2383, %2380 ], [ %2428, %2427 ]
  %2441 = phi float [ %2417, %2431 ], [ %2397, %2387 ], [ %2382, %2380 ], [ %2417, %2427 ]
  %2442 = phi float [ %2433, %2431 ], [ %2389, %2387 ], [ 1.000000e+00, %2380 ], [ 1.000000e+00, %2427 ]
  %2443 = phi float [ %2429, %2431 ], [ %2389, %2387 ], [ 1.000000e+00, %2380 ], [ %2429, %2427 ]
  %2444 = phi float [ %2418, %2431 ], [ %2389, %2387 ], [ 1.000000e+00, %2380 ], [ %2418, %2427 ]
  %2445 = fmul fast float %2444, %2356
  %2446 = fmul fast float %2443, %2367
  %2447 = fmul fast float %2442, %2378
  %2448 = fadd fast float %2445, %2441
  %2449 = fadd fast float %2446, %2440
  %2450 = fadd fast float %2447, %2439
  %2451 = fmul fast float %2444, %2355
  %2452 = fmul fast float %2443, %2366
  %2453 = fmul fast float %2442, %2377
  br label %2454

; <label>:2454                                    ; preds = %2438, %2249
  %2455 = phi float [ %2453, %2438 ], [ %2255, %2249 ]
  %2456 = phi float [ %2452, %2438 ], [ %2254, %2249 ]
  %2457 = phi float [ %2451, %2438 ], [ %2253, %2249 ]
  %2458 = phi float [ %2450, %2438 ], [ %2252, %2249 ]
  %2459 = phi float [ %2449, %2438 ], [ %2251, %2249 ]
  %2460 = phi float [ %2448, %2438 ], [ %2250, %2249 ]
  %2461 = fmul fast float %2460, %1435
  %2462 = fmul fast float %2459, %1435
  %2463 = fmul fast float %2458, %1435
  %2464 = fmul fast float %2457, %1697
  %2465 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2456, float %2455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2466 = call float @dx.op.dot3.f32(i32 55, float %2461, float %2462, float %2463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2467 = select i1 %131, float %2465, float %2457
  %2468 = select i1 %131, float %2465, float %2456
  %2469 = select i1 %131, float 1.000000e+00, float %2455
  %2470 = select i1 %131, float %2466, float %2461
  %2471 = select i1 %131, float 0.000000e+00, float %2462
  %2472 = select i1 %131, float 0.000000e+00, float %2463
  %2473 = fmul fast float %2467, %1691
  %2474 = fmul fast float %2468, %1692
  %2475 = fmul fast float %2469, %1693
  %2476 = fadd fast float %2473, %2470
  %2477 = fadd fast float %2474, %2471
  %2478 = fadd fast float %2472, %2475
  %2479 = fmul fast float %2467, %1694
  %2480 = fmul fast float %2468, %1695
  %2481 = fmul fast float %2469, %1696
  %2482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.i32 %2482, 0
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2753, label %2485, !dx.controlflow.hints !130

; <label>:2485                                    ; preds = %2454
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 2
  %2488 = extractvalue %dx.types.CBufRet.f32 %2486, 3
  %2489 = fmul fast float %2487, %61
  %2490 = fmul fast float %2488, %62
  %2491 = fmul fast float %2489, 2.000000e+00
  %2492 = fmul fast float %2490, 2.000000e+00
  %2493 = fsub fast float 1.000000e+00, %2491
  %2494 = fsub fast float 1.000000e+00, %2492
  %2495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.CBufRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.CBufRet.f32 %2495, 2
  %2499 = fmul fast float %2493, %2496
  %2500 = fmul fast float %2493, %2497
  %2501 = fmul fast float %2493, %2498
  %2502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2503 = extractvalue %dx.types.CBufRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.CBufRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.CBufRet.f32 %2502, 2
  %2506 = fmul fast float %2494, %2503
  %2507 = fmul fast float %2494, %2504
  %2508 = fmul fast float %2494, %2505
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2511 = extractvalue %dx.types.CBufRet.f32 %2509, 1
  %2512 = extractvalue %dx.types.CBufRet.f32 %2509, 2
  %2513 = fadd fast float %2506, %2510
  %2514 = fadd fast float %2513, %2499
  %2515 = fadd fast float %2507, %2511
  %2516 = fadd fast float %2515, %2500
  %2517 = fadd fast float %2508, %2512
  %2518 = fadd fast float %2517, %2501
  %2519 = fmul fast float %2514, %1690
  %2520 = fmul fast float %2516, %1690
  %2521 = fmul fast float %2518, %1690
  %2522 = fmul fast float %2519, %2519
  %2523 = fmul fast float %2520, %2520
  %2524 = fadd fast float %2522, %2523
  %2525 = fmul fast float %2521, %2521
  %2526 = fadd fast float %2524, %2525
  %2527 = call float @dx.op.unary.f32(i32 24, float %2526)  ; Sqrt(value)
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = fsub fast float %2527, %2529
  %2531 = extractvalue %dx.types.CBufRet.f32 %2528, 2
  %2532 = fmul fast float %2530, %2531
  %2533 = call float @dx.op.unary.f32(i32 7, float %2532)  ; Saturate(value)
  %2534 = fadd fast float %2533, -5.000000e-01
  %2535 = fmul fast float %2534, 2.000000e+00
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 2
  %2538 = call float @dx.op.binary.f32(i32 36, float %2537, float %2535)  ; FMin(a,b)
  %2539 = fsub fast float -0.000000e+00, %2537
  %2540 = fcmp fast ogt float %2538, %2539
  br i1 %2540, label %2541, label %2753, !dx.controlflow.hints !131

; <label>:2541                                    ; preds = %2485
  %2542 = fmul fast float %2538, 5.000000e-01
  %2543 = fadd fast float %2542, 5.000000e-01
  %2544 = call float @dx.op.unary.f32(i32 22, float %2543)  ; Frc(value)
  %2545 = call float @dx.op.unary.f32(i32 27, float %2544)  ; Round_ni(value)
  %2546 = call float @dx.op.unary.f32(i32 22, float %2544)  ; Frc(value)
  %2547 = fmul fast float %2546, 2.000000e+00
  %2548 = fadd fast float %2547, -1.000000e+00
  %2549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2489, float %2490, float %2545, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.ResRet.f32 %2549, 2
  %2553 = extractvalue %dx.types.ResRet.f32 %2549, 3
  %2554 = fadd fast float %2550, -5.000000e-01
  %2555 = fadd fast float %2552, -5.000000e-01
  %2556 = fmul fast float %2554, 0xBFD5555560000000
  %2557 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2555, float %2556)  ; FMad(a,b,c)
  %2558 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2551, float 0.000000e+00)  ; FMad(a,b,c)
  %2559 = fadd fast float %2558, %2553
  %2560 = fmul fast float %2554, -7.500000e-01
  %2561 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2555, float %2560)  ; FMad(a,b,c)
  %2562 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2551, float 0.000000e+00)  ; FMad(a,b,c)
  %2563 = fadd fast float %2562, %2553
  %2564 = call float @dx.op.binary.f32(i32 35, float %2557, float -1.000000e+00)  ; FMax(a,b)
  %2565 = call float @dx.op.binary.f32(i32 35, float %2559, float -1.000000e+00)  ; FMax(a,b)
  %2566 = call float @dx.op.binary.f32(i32 35, float %2561, float -1.000000e+00)  ; FMax(a,b)
  %2567 = call float @dx.op.binary.f32(i32 35, float %2563, float -1.000000e+00)  ; FMax(a,b)
  %2568 = call float @dx.op.binary.f32(i32 36, float %2564, float 1.000000e+00)  ; FMin(a,b)
  %2569 = call float @dx.op.binary.f32(i32 36, float %2565, float 1.000000e+00)  ; FMin(a,b)
  %2570 = call float @dx.op.binary.f32(i32 36, float %2566, float 1.000000e+00)  ; FMin(a,b)
  %2571 = call float @dx.op.binary.f32(i32 36, float %2567, float 1.000000e+00)  ; FMin(a,b)
  %2572 = fcmp fast olt float %2568, 0x3FEFFF8020000000
  br i1 %2572, label %2573, label %2688, !dx.controlflow.hints !132

; <label>:2573                                    ; preds = %2541
  %2574 = extractvalue %dx.types.CBufRet.f32 %2536, 3
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2579 = extractvalue %dx.types.CBufRet.f32 %2575, 3
  %2580 = fsub fast float %2576, %2568
  %2581 = fsub fast float %2577, %2569
  %2582 = fsub fast float %2578, %2570
  %2583 = fsub fast float %2579, %2571
  %2584 = fmul fast float %2580, %2574
  %2585 = fmul fast float %2581, %2574
  %2586 = fmul fast float %2582, %2574
  %2587 = fmul fast float %2583, %2574
  %2588 = fadd fast float %2584, %2568
  %2589 = fadd fast float %2585, %2569
  %2590 = fsub fast float -0.000000e+00, %2589
  %2591 = fadd fast float %2586, %2570
  %2592 = fadd fast float %2587, %2571
  %2593 = fmul fast float %2588, %2588
  %2594 = fsub fast float %2589, %2593
  %2595 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2594)  ; FMax(a,b)
  %2596 = fdiv fast float 1.000000e+00, %2595
  %2597 = fmul fast float %2589, %2588
  %2598 = fsub fast float %2591, %2597
  %2599 = fsub fast float %2548, %2588
  %2600 = fmul fast float %2548, %2548
  %2601 = fsub fast float %2600, %2589
  %2602 = fmul fast float %2599, %2596
  %2603 = fmul fast float %2602, %2598
  %2604 = fsub fast float %2601, %2603
  %2605 = fmul fast float %2589, %2589
  %2606 = fsub fast float %2592, %2605
  %2607 = fmul fast float %2598, %2598
  %2608 = fmul fast float %2607, %2596
  %2609 = fsub fast float %2606, %2608
  %2610 = fdiv fast float %2604, %2609
  %2611 = fmul fast float %2598, %2610
  %2612 = fsub fast float %2599, %2611
  %2613 = fmul fast float %2612, %2596
  %2614 = fmul fast float %2613, %2588
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2589, %2610
  %2617 = fsub fast float %2615, %2616
  %2618 = fmul fast float %2613, %2613
  %2619 = fmul fast float %2610, 4.000000e+00
  %2620 = fmul fast float %2619, %2617
  %2621 = fsub fast float %2618, %2620
  %2622 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2623 = fcmp fast oge float %2613, 0.000000e+00
  %2624 = fsub fast float -0.000000e+00, %2622
  %2625 = select i1 %2623, float %2624, float %2622
  %2626 = fsub fast float %2625, %2613
  %2627 = fdiv fast float %2626, %2610
  %2628 = fdiv fast float %2617, %2626
  %2629 = fmul fast float %2627, 5.000000e-01
  %2630 = fmul fast float %2628, 2.000000e+00
  %2631 = select i1 %2623, float %2629, float %2630
  %2632 = select i1 %2623, float %2630, float %2629
  %2633 = call float @dx.op.binary.f32(i32 35, float %2631, float %2632)  ; FMax(a,b)
  %2634 = call float @dx.op.binary.f32(i32 36, float %2631, float %2632)  ; FMin(a,b)
  %2635 = fcmp fast ogt float %2548, %2634
  br i1 %2635, label %2636, label %2646

; <label>:2636                                    ; preds = %2573
  %2637 = fsub fast float %2548, %2634
  %2638 = fsub fast float %2633, %2634
  %2639 = fmul fast float %2637, %2638
  %2640 = fmul fast float %2633, %2548
  %2641 = fadd fast float %2633, %2548
  %2642 = fmul fast float %2641, %2588
  %2643 = fadd fast float %2640, %2589
  %2644 = fsub fast float %2643, %2642
  %2645 = fdiv fast float %2644, %2639
  br label %2646

; <label>:2646                                    ; preds = %2636, %2573
  %2647 = phi float [ %2645, %2636 ], [ 0.000000e+00, %2573 ]
  %2648 = fcmp fast ogt float %2548, %2633
  %2649 = fsub fast float %2548, %2633
  br i1 %2648, label %2650, label %2660

; <label>:2650                                    ; preds = %2646
  %2651 = fsub fast float %2633, %2634
  %2652 = fmul fast float %2651, %2649
  %2653 = fmul fast float %2634, %2548
  %2654 = fadd fast float %2634, %2548
  %2655 = fmul fast float %2654, %2588
  %2656 = fsub fast float %2590, %2653
  %2657 = fadd fast float %2656, %2655
  %2658 = fdiv fast float %2657, %2652
  %2659 = fadd fast float %2658, %2647
  br label %2660

; <label>:2660                                    ; preds = %2650, %2646
  %2661 = phi float [ %2659, %2650 ], [ %2647, %2646 ]
  %2662 = fsub fast float %2548, %2634
  %2663 = fmul fast float %2662, %2649
  %2664 = fmul fast float %2634, %2633
  %2665 = fadd fast float %2634, %2633
  %2666 = fmul fast float %2665, %2588
  %2667 = fadd fast float %2664, %2589
  %2668 = fsub fast float %2667, %2666
  %2669 = fdiv fast float %2668, %2663
  %2670 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  %2671 = fcmp fast oeq float %1543, 0.000000e+00
  %2672 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2673 = fcmp fast oeq float %2672, 0.000000e+00
  %2674 = or i1 %2671, %2673
  %2675 = fmul fast float %2672, 2.000000e+00
  %2676 = fadd fast float %2537, %2538
  %2677 = fdiv fast float %2676, %2675
  %2678 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  %2679 = fmul fast float %2678, 2.000000e+00
  %2680 = fsub fast float 3.000000e+00, %2679
  %2681 = fmul fast float %2678, %2678
  %2682 = fmul fast float %2681, %2680
  %2683 = select i1 %2674, float 1.000000e+00, float %2682
  %2684 = fmul fast float %2669, %1543
  %2685 = fadd fast float %2670, %2684
  %2686 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2687 = fmul fast float %2683, %2686
  br label %2688

; <label>:2688                                    ; preds = %2660, %2541
  %2689 = phi float [ %2687, %2660 ], [ 0.000000e+00, %2541 ]
  %2690 = fsub fast float 1.000000e+00, %2689
  %2691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2489, float %2490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 0
  %2693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.i32 %2693, 2
  %2695 = icmp eq i32 %2694, 0
  br i1 %2695, label %2701, label %2696

; <label>:2696                                    ; preds = %2688
  %2697 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2698 = fadd fast float %2692, -1.000000e+00
  %2699 = fmul fast float %2697, %2698
  %2700 = fadd fast float %2699, 1.000000e+00
  br label %2701

; <label>:2701                                    ; preds = %2696, %2688
  %2702 = phi float [ %2700, %2696 ], [ %2690, %2688 ]
  %2703 = call float @dx.op.binary.f32(i32 35, float %2692, float %2702)  ; FMax(a,b)
  %2704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.i32 %2704, 2
  %2706 = and i32 %2705, 1
  %2707 = icmp eq i32 %2706, 0
  %2708 = fcmp fast une float %2703, 1.000000e+00
  %2709 = and i1 %2708, %2707
  br i1 %2709, label %2710, label %2729

; <label>:2710                                    ; preds = %2701
  %2711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2489, float %2490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.ResRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.ResRet.f32 %2711, 2
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2717 = fmul fast float %2716, %2712
  %2718 = fmul fast float %2716, %2713
  %2719 = fmul fast float %2716, %2714
  %2720 = fcmp fast ogt float %2692, 0x3FEFFF2E40000000
  %2721 = fsub fast float 1.000000e+00, %2703
  %2722 = fsub fast float 1.000000e+00, %2692
  %2723 = fdiv fast float %2721, %2722
  %2724 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2725 = select i1 %2720, float 0.000000e+00, float %2724
  %2726 = fmul fast float %2717, %2725
  %2727 = fmul fast float %2718, %2725
  %2728 = fmul fast float %2719, %2725
  br label %2729

; <label>:2729                                    ; preds = %2710, %2701
  %2730 = phi float [ 0.000000e+00, %2701 ], [ %2726, %2710 ]
  %2731 = phi float [ 0.000000e+00, %2701 ], [ %2727, %2710 ]
  %2732 = phi float [ 0.000000e+00, %2701 ], [ %2728, %2710 ]
  %2733 = fmul fast float %2730, %1435
  %2734 = fmul fast float %2731, %1435
  %2735 = fmul fast float %2732, %1435
  %2736 = fmul fast float %2703, %2464
  %2737 = call float @dx.op.dot3.f32(i32 55, float %2703, float %2703, float %2703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2738 = call float @dx.op.dot3.f32(i32 55, float %2733, float %2734, float %2735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2739 = select i1 %131, float %2737, float %2703
  %2740 = select i1 %131, float 1.000000e+00, float %2703
  %2741 = select i1 %131, float %2738, float %2733
  %2742 = select i1 %131, float 0.000000e+00, float %2734
  %2743 = select i1 %131, float 0.000000e+00, float %2735
  %2744 = fmul fast float %2739, %2476
  %2745 = fmul fast float %2739, %2477
  %2746 = fmul fast float %2740, %2478
  %2747 = fadd fast float %2744, %2741
  %2748 = fadd fast float %2745, %2742
  %2749 = fadd fast float %2743, %2746
  %2750 = fmul fast float %2739, %2479
  %2751 = fmul fast float %2739, %2480
  %2752 = fmul fast float %2740, %2481
  br label %2753

; <label>:2753                                    ; preds = %2729, %2485, %2454, %1686
  %2754 = phi float [ %1691, %1686 ], [ %2476, %2454 ], [ %2747, %2729 ], [ %2476, %2485 ]
  %2755 = phi float [ %1692, %1686 ], [ %2477, %2454 ], [ %2748, %2729 ], [ %2477, %2485 ]
  %2756 = phi float [ %1693, %1686 ], [ %2478, %2454 ], [ %2749, %2729 ], [ %2478, %2485 ]
  %2757 = phi float [ %1694, %1686 ], [ %2479, %2454 ], [ %2750, %2729 ], [ %2479, %2485 ]
  %2758 = phi float [ %1695, %1686 ], [ %2480, %2454 ], [ %2751, %2729 ], [ %2480, %2485 ]
  %2759 = phi float [ %1696, %1686 ], [ %2481, %2454 ], [ %2752, %2729 ], [ %2481, %2485 ]
  %2760 = phi float [ %1697, %1686 ], [ %2464, %2454 ], [ %2736, %2729 ], [ %2464, %2485 ]
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %2763 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %2764 = fmul fast float %2762, %61
  %2765 = fmul fast float %2763, %62
  %2766 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2767 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2768 = select i1 %844, i32 2, i32 0
  %2769 = or i32 %2768, 1
  %2770 = uitofp i32 %2769 to float
  %2771 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2766, float %2767, float %2770, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.ResRet.f32 %2771, 2
  %2775 = extractvalue %dx.types.ResRet.f32 %2771, 3
  %2776 = add nuw nsw i32 %2768, 2
  %2777 = uitofp i32 %2776 to float
  %2778 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2766, float %2767, float %2777, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2779 = extractvalue %dx.types.ResRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.ResRet.f32 %2778, 1
  %2781 = extractvalue %dx.types.ResRet.f32 %2778, 2
  %2782 = extractvalue %dx.types.ResRet.f32 %2778, 3
  %2783 = call float @dx.op.binary.f32(i32 35, float %2773, float %2774)  ; FMax(a,b)
  %2784 = call float @dx.op.binary.f32(i32 35, float %2772, float %2783)  ; FMax(a,b)
  %2785 = call float @dx.op.binary.f32(i32 35, float %2784, float %2775)  ; FMax(a,b)
  %2786 = call float @dx.op.binary.f32(i32 36, float %2780, float %2781)  ; FMin(a,b)
  %2787 = call float @dx.op.binary.f32(i32 36, float %2779, float %2786)  ; FMin(a,b)
  %2788 = call float @dx.op.binary.f32(i32 36, float %2787, float %2782)  ; FMin(a,b)
  %2789 = fmul fast float %2785, 2.550000e+02
  %2790 = fadd fast float %2789, 0x3F70101020000000
  %2791 = fptoui float %2790 to i32
  %2792 = fmul fast float %2788, 2.550000e+02
  %2793 = fadd fast float %2792, 0x3F70101020000000
  %2794 = fptoui float %2793 to i32
  %2795 = icmp ult i32 %2791, %2794
  br i1 %2795, label %2796, label %2842

; <label>:2796                                    ; preds = %2753
  %2797 = fcmp fast ogt float %53, 9.843750e-01
  %2798 = fadd fast float %1690, -4.000000e+00
  %2799 = select i1 %2797, float -4.000000e+00, float %2798
  %2800 = call float @dx.op.binary.f32(i32 35, float %2799, float 0.000000e+00)  ; FMax(a,b)
  %2801 = fadd fast float %1009, %2800
  %2802 = fmul fast float %2801, %1010
  %2803 = call float @dx.op.unary.f32(i32 23, float %2802)  ; Log(value)
  %2804 = fmul fast float %1011, %2803
  %2805 = fmul fast float %2804, %1019
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2807 = uitofp i32 %2791 to float
  %2808 = uitofp i32 %2794 to float
  %2809 = fadd fast float %2807, 5.000000e-01
  %2810 = fadd fast float %2808, 5.000000e-01
  %2811 = fmul fast float %1019, %2809
  %2812 = fmul fast float %1019, %2810
  %2813 = fadd fast float %2811, 0x3F0FFB4800000000
  %2814 = fadd fast float %2812, 0xBF0FFB4800000000
  %2815 = call float @dx.op.binary.f32(i32 35, float %2806, float %2813)  ; FMax(a,b)
  %2816 = call float @dx.op.binary.f32(i32 36, float %2815, float %2814)  ; FMin(a,b)
  %2817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2818 = extractvalue %dx.types.CBufRet.f32 %2817, 1
  %2819 = extractvalue %dx.types.CBufRet.f32 %2817, 2
  %2820 = extractvalue %dx.types.CBufRet.f32 %2817, 0
  %2821 = select i1 %844, float %2820, float 0.000000e+00
  %2822 = fmul fast float %2818, %2816
  %2823 = fadd fast float %2821, %2822
  %2824 = fadd fast float %2821, %2819
  %2825 = fsub fast float %2818, %2819
  %2826 = fadd fast float %2825, %2821
  %2827 = call float @dx.op.binary.f32(i32 35, float %2823, float %2824)  ; FMax(a,b)
  %2828 = call float @dx.op.binary.f32(i32 36, float %2827, float %2826)  ; FMin(a,b)
  %2829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2766, float %2767, float %2828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2830 = extractvalue %dx.types.ResRet.f32 %2829, 0
  %2831 = extractvalue %dx.types.ResRet.f32 %2829, 1
  %2832 = extractvalue %dx.types.ResRet.f32 %2829, 2
  %2833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2766, float %2767, float %2828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 1
  %2839 = fmul fast float %2838, %2834
  %2840 = fmul fast float %2838, %2835
  %2841 = fmul fast float %2838, %2836
  br label %2842

; <label>:2842                                    ; preds = %2796, %2753
  %2843 = phi float [ %2830, %2796 ], [ 1.000000e+00, %2753 ]
  %2844 = phi float [ %2831, %2796 ], [ 1.000000e+00, %2753 ]
  %2845 = phi float [ %2832, %2796 ], [ 1.000000e+00, %2753 ]
  %2846 = phi float [ %2839, %2796 ], [ 0.000000e+00, %2753 ]
  %2847 = phi float [ %2840, %2796 ], [ 0.000000e+00, %2753 ]
  %2848 = phi float [ %2841, %2796 ], [ 0.000000e+00, %2753 ]
  %2849 = fmul fast float %2846, %1435
  %2850 = fmul fast float %2847, %1435
  %2851 = fmul fast float %2848, %1435
  %2852 = fmul fast float %2843, %2760
  %2853 = call float @dx.op.dot3.f32(i32 55, float %2843, float %2844, float %2845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2850, float %2851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = select i1 %131, float %2853, float %2843
  %2856 = select i1 %131, float %2853, float %2844
  %2857 = select i1 %131, float 1.000000e+00, float %2845
  %2858 = select i1 %131, float %2854, float %2849
  %2859 = select i1 %131, float 0.000000e+00, float %2850
  %2860 = select i1 %131, float 0.000000e+00, float %2851
  %2861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.i32 %2861, 3
  %2863 = and i32 %2862, 3
  %2864 = icmp ne i32 %2863, 0
  %2865 = and i32 %2862, 4
  %2866 = icmp ne i32 %2865, 0
  %2867 = and i1 %2864, %2866
  %2868 = and i1 %131, %2867
  br i1 %2868, label %2869, label %2875

; <label>:2869                                    ; preds = %2842
  %2870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.f32 %2870, 1
  %2872 = fadd fast float %2852, -1.000000e+00
  %2873 = fmul fast float %2871, %2872
  %2874 = fadd fast float %2873, 1.000000e+00
  br label %2875

; <label>:2875                                    ; preds = %2869, %2842
  %2876 = phi float [ %2874, %2869 ], [ %2852, %2842 ]
  %2877 = fadd fast float %2757, %2754
  %2878 = fmul fast float %2855, %2877
  %2879 = fadd fast float %2878, %2858
  %2880 = fadd fast float %2758, %2755
  %2881 = fmul fast float %2856, %2880
  %2882 = fadd fast float %2881, %2859
  %2883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2884 = extractvalue %dx.types.CBufRet.f32 %2883, 0
  br i1 %131, label %2885, label %2906

; <label>:2885                                    ; preds = %2875
  %2886 = fadd fast float %2879, %2882
  %2887 = fmul fast float %2884, %2886
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 3
  %2890 = extractvalue %dx.types.CBufRet.f32 %1439, 1
  %2891 = fsub fast float %1442, %2890
  %2892 = extractvalue %dx.types.CBufRet.f32 %1439, 2
  %2893 = fmul fast float %2891, %2892
  %2894 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  %2895 = fsub fast float %2894, %2889
  %2896 = fmul fast float %2895, %2876
  %2897 = fadd fast float %2896, %2889
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 0
  %2900 = fsub fast float %2897, %2899
  %2901 = fmul fast float %2900, 1.000000e+01
  %2902 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2903 = fmul fast float %2902, %1435
  %2904 = fsub fast float %1435, %2903
  %2905 = fmul fast float %2904, %2897
  br label %2918

; <label>:2906                                    ; preds = %2875
  %2907 = fadd fast float %2759, %2756
  %2908 = fmul fast float %2857, %2907
  %2909 = fadd fast float %2908, %2860
  %2910 = fmul fast float %2884, %2879
  %2911 = fmul fast float %2884, %2882
  %2912 = fmul fast float %2884, %2909
  %2913 = call float @dx.op.binary.f32(i32 35, float %2911, float %2912)  ; FMax(a,b)
  %2914 = call float @dx.op.binary.f32(i32 35, float %2910, float %2913)  ; FMax(a,b)
  %2915 = call float @dx.op.binary.f32(i32 35, float %2914, float %1435)  ; FMax(a,b)
  %2916 = fcmp fast ugt float %2915, 0x3F10000000000000
  br i1 %2916, label %2918, label %2917

; <label>:2917                                    ; preds = %2906
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2918

; <label>:2918                                    ; preds = %2917, %2906, %2885
  %2919 = phi float [ %2887, %2885 ], [ %2910, %2917 ], [ %2910, %2906 ]
  %2920 = phi float [ %2905, %2885 ], [ %2911, %2917 ], [ %2911, %2906 ]
  %2921 = phi float [ %2904, %2885 ], [ %2912, %2917 ], [ %2912, %2906 ]
  %2922 = phi float [ %2904, %2885 ], [ %1435, %2917 ], [ %1435, %2906 ]
  %2923 = fadd fast float %537, 0x3FE3C6EF40000000
  %2924 = call float @dx.op.unary.f32(i32 22, float %2923)  ; Frc(value)
  %2925 = call float @dx.op.unary.f32(i32 23, float %2919)  ; Log(value)
  %2926 = fadd fast float %2925, -7.000000e+00
  %2927 = call float @dx.op.unary.f32(i32 21, float %2926)  ; Exp(value)
  %2928 = fmul fast float %2924, 2.000000e+00
  %2929 = fadd fast float %2928, -1.000000e+00
  %2930 = fmul fast float %2927, %2929
  %2931 = fcmp fast ogt float %2919, 0.000000e+00
  %2932 = select i1 %2931, float %2930, float 0.000000e+00
  %2933 = fadd fast float %2932, %2919
  %2934 = fadd fast float %537, 0x3FF3C6EF40000000
  %2935 = call float @dx.op.unary.f32(i32 22, float %2934)  ; Frc(value)
  %2936 = call float @dx.op.unary.f32(i32 23, float %2920)  ; Log(value)
  %2937 = fadd fast float %2936, -7.000000e+00
  %2938 = call float @dx.op.unary.f32(i32 21, float %2937)  ; Exp(value)
  %2939 = fmul fast float %2935, 2.000000e+00
  %2940 = fadd fast float %2939, -1.000000e+00
  %2941 = fmul fast float %2938, %2940
  %2942 = fcmp fast ogt float %2920, 0.000000e+00
  %2943 = select i1 %2942, float %2941, float 0.000000e+00
  %2944 = fadd fast float %2943, %2920
  %2945 = fadd fast float %537, 0x3FFDAA66E0000000
  %2946 = call float @dx.op.unary.f32(i32 22, float %2945)  ; Frc(value)
  %2947 = call float @dx.op.unary.f32(i32 23, float %2921)  ; Log(value)
  %2948 = fadd fast float %2947, -6.000000e+00
  %2949 = call float @dx.op.unary.f32(i32 21, float %2948)  ; Exp(value)
  %2950 = fmul fast float %2946, 2.000000e+00
  %2951 = fadd fast float %2950, -1.000000e+00
  %2952 = fmul fast float %2949, %2951
  %2953 = fcmp fast ogt float %2921, 0.000000e+00
  %2954 = select i1 %2953, float %2952, float 0.000000e+00
  %2955 = fadd fast float %2954, %2921
  %2956 = select i1 %131, float %2920, float %2944
  %2957 = select i1 %131, float %2921, float %2955
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2958 = call float @dx.op.binary.f32(i32 36, float %2933, float 3.225500e+04)  ; FMin(a,b)
  %2959 = call float @dx.op.binary.f32(i32 36, float %2956, float 3.225500e+04)  ; FMin(a,b)
  %2960 = call float @dx.op.binary.f32(i32 36, float %2957, float 3.225500e+04)  ; FMin(a,b)
  %2961 = call float @dx.op.binary.f32(i32 36, float %2922, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2958)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2960)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2961)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

