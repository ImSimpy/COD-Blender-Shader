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
; COLOR                    3   xyz         9     NONE    uint   xyz 
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
; shader hash: 7a19287daa9164cd156be154cd2b674a
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 37, 38 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 37, 38 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 37, 38 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 37, 38 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 32, 33, 34, 35, 36, 37, 38 }
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
  %31 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = alloca [3 x float], align 4
  %60 = alloca [3 x float], align 4
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = fmul fast float %64, %55
  %66 = fmul fast float %64, %56
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %70 = fmul fast float %65, 2.000000e+00
  %71 = fmul fast float %70, %68
  %72 = fmul fast float %66, 2.000000e+00
  %73 = fmul fast float %72, %69
  %74 = fsub fast float 1.000000e+00, %71
  %75 = fsub fast float 1.000000e+00, %73
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fmul fast float %74, %77
  %81 = fmul fast float %74, %78
  %82 = fmul fast float %74, %79
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fmul fast float %75, %84
  %88 = fmul fast float %75, %85
  %89 = fmul fast float %75, %86
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = fadd fast float %87, %91
  %95 = fadd fast float %94, %80
  %96 = fadd fast float %88, %92
  %97 = fadd fast float %96, %81
  %98 = fadd fast float %89, %93
  %99 = fadd fast float %98, %82
  %100 = fmul fast float %95, %58
  %101 = fmul fast float %97, %58
  %102 = fmul fast float %99, %58
  %103 = fmul fast float %44, %41
  %104 = fmul fast float %45, %40
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %45, %39
  %107 = fmul fast float %43, %41
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %43, %40
  %110 = fmul fast float %44, %39
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %105, %42
  %113 = fmul fast float %108, %42
  %114 = fmul fast float %111, %42
  %115 = bitcast i32 %31 to float
  %116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.i32 %116, 3
  %118 = and i32 %117, 3
  %119 = icmp ne i32 %118, 0
  %120 = and i32 %117, 4
  %121 = icmp ne i32 %120, 0
  %122 = and i1 %119, %121
  br i1 %122, label %123, label %132

; <label>:123                                     ; preds = %0
  %124 = fmul fast float %69, %66
  %125 = fmul fast float %68, %65
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %26, float %125, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fsub fast float 1.000000e+00, %127
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = fcmp fast olt float %128, %130
  br label %135

; <label>:132                                     ; preds = %0
  %133 = icmp eq i32 %120, 0
  %134 = and i1 %119, %133
  br label %135

; <label>:135                                     ; preds = %132, %123
  %136 = phi i1 [ %131, %123 ], [ %134, %132 ]
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %65
  %141 = fmul fast float %139, %66
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %143, 114688
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float %140, float 0.000000e+00
  %147 = select i1 %145, float %141, float 0.000000e+00
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %27, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fptoui float %150 to i32
  %152 = select i1 %145, i32 %151, i32 0
  %153 = mul i32 %30, 208
  %154 = add i32 %153, 188
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %117, 114688
  %158 = and i32 %117, 8
  %159 = icmp ne i32 %158, 0
  %160 = or i1 %136, %159
  %161 = select i1 %160, i32 %157, i32 16384
  %162 = and i32 %161, %156
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

; <label>:164                                     ; preds = %135
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %165

; <label>:165                                     ; preds = %164, %135
  %166 = and i32 %156, 512
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %192, label %168

; <label>:168                                     ; preds = %165
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %172 = fmul fast float %170, %65
  %173 = fmul fast float %171, %66
  %174 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %176 = fdiv fast float %174, %175
  %177 = fcmp fast ogt float %176, 0x3FFC71C720000000
  br i1 %177, label %178, label %184

; <label>:178                                     ; preds = %168
  %179 = fdiv fast float 0x3FFC71C720000000, %176
  %180 = fmul fast float %179, %173
  %181 = fsub fast float 1.000000e+00, %179
  %182 = fmul fast float %181, 5.000000e-01
  %183 = fadd fast float %182, %180
  br label %192

; <label>:184                                     ; preds = %168
  %185 = fcmp fast olt float %176, 0x3FFC71C720000000
  br i1 %185, label %186, label %192

; <label>:186                                     ; preds = %184
  %187 = fmul fast float %172, 5.625000e-01
  %188 = fmul fast float %187, %176
  %189 = fmul fast float %176, 2.812500e-01
  %190 = fsub fast float 5.000000e-01, %189
  %191 = fadd fast float %190, %188
  br label %192

; <label>:192                                     ; preds = %186, %184, %178, %165
  %193 = phi float [ %49, %165 ], [ %172, %178 ], [ %191, %186 ], [ %172, %184 ]
  %194 = phi float [ %50, %165 ], [ %183, %178 ], [ %173, %186 ], [ %173, %184 ]
  %195 = fadd fast float %49, %46
  %196 = fadd fast float %50, %47
  %197 = add i32 %32, 72
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = bitcast i32 %199 to float
  %202 = bitcast i32 %200 to float
  %203 = fmul fast float %201, %49
  %204 = fmul fast float %202, %50
  %205 = call float @dx.op.unary.f32(i32 22, float %203)  ; Frc(value)
  %206 = call float @dx.op.unary.f32(i32 22, float %204)  ; Frc(value)
  %207 = and i32 %156, 16
  %208 = icmp ne i32 %207, 0
  %209 = select i1 %208, float 1.000000e+00, float %54
  %210 = add i32 %32, 128
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = add i32 %212, 0
  %214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %214, %dx.types.Handle %62, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float %216, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add i32 %220, 0
  %222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %222, %dx.types.Handle %62, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float %224, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fsub fast float %226, %218
  %228 = fmul fast float %227, %48
  %229 = fadd fast float %228, %218
  %230 = fmul fast float %229, %209
  %231 = icmp eq i32 %207, 0
  br i1 %231, label %251, label %232, !dx.controlflow.hints !71

; <label>:232                                     ; preds = %192
  %233 = add i32 %153, 64
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = fadd fast float %235, 1.000000e+00
  %237 = fmul fast float %236, %54
  %238 = fsub fast float %237, %235
  %239 = fsub fast float %236, %238
  %240 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %241 = fsub fast float 1.000000e+00, %237
  %242 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %243 = fsub fast float %240, %242
  %244 = fsub fast float %230, %242
  %245 = fdiv fast float %244, %243
  %246 = call float @dx.op.unary.f32(i32 7, float %245)  ; Saturate(value)
  %247 = fmul fast float %246, 2.000000e+00
  %248 = fsub fast float 3.000000e+00, %247
  %249 = fmul fast float %246, %246
  %250 = fmul fast float %249, %248
  br label %251

; <label>:251                                     ; preds = %232, %192
  %252 = phi float [ %250, %232 ], [ %230, %192 ]
  %253 = fcmp fast ogt float %252, 0.000000e+00
  br i1 %253, label %255, label %254

; <label>:254                                     ; preds = %251
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %255

; <label>:255                                     ; preds = %254, %251
  %256 = call float @dx.op.unary.f32(i32 7, float %252)  ; Saturate(value)
  %257 = fmul fast float %65, 5.000000e-01
  %258 = fmul fast float %66, 5.000000e-01
  %259 = fptosi float %257 to i32
  %260 = fptosi float %258 to i32
  %261 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %259, i32 %260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = lshr i32 %262, 18
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F4C00EBA0000000
  %266 = call float @dx.op.unary.f32(i32 21, float %265)  ; Exp(value)
  %267 = fadd fast float %266, -1.000000e+00
  %268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %269 = extractvalue %dx.types.Dimensions %268, 0
  %270 = sitofp i32 %269 to float
  %271 = extractvalue %dx.types.Dimensions %268, 1
  %272 = sitofp i32 %271 to float
  %273 = fcmp fast oge float %257, %270
  %274 = fcmp fast oge float %258, %272
  %275 = or i1 %273, %274
  %276 = select i1 %275, float 0x4197782600000000, float %267
  %277 = fsub fast float %276, %58
  %278 = fcmp fast ogt float %277, 0.000000e+00
  %279 = and i32 %152, -2
  %280 = icmp eq i32 %279, 2
  %281 = and i1 %280, %278
  %282 = xor i1 %278, true
  %283 = icmp eq i32 %152, 1
  %284 = and i1 %283, %282
  %285 = or i1 %281, %284
  %286 = and i32 %156, 262144
  %287 = icmp ne i32 %286, 0
  %288 = and i1 %287, %285
  %289 = xor i1 %285, true
  %290 = and i32 %156, 131072
  %291 = icmp ne i32 %290, 0
  %292 = and i1 %291, %289
  %293 = or i1 %288, %292
  br i1 %293, label %294, label %295

; <label>:294                                     ; preds = %255
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %295

; <label>:295                                     ; preds = %294, %255
  %296 = and i32 %156, 32
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %548, label %298, !dx.controlflow.hints !72

; <label>:298                                     ; preds = %295
  %299 = add i32 %153, 80
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = extractvalue %dx.types.ResRet.f32 %300, 1
  %303 = extractvalue %dx.types.ResRet.f32 %300, 2
  %304 = extractvalue %dx.types.ResRet.f32 %300, 3
  %305 = add i32 %153, 96
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = add i32 %153, 112
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = extractvalue %dx.types.ResRet.f32 %311, 2
  %315 = extractvalue %dx.types.ResRet.f32 %311, 3
  %316 = add i32 %153, 128
  %317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = extractvalue %dx.types.ResRet.f32 %317, 3
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 4096
  %325 = icmp ne i32 %324, 0
  %326 = fcmp fast une float %309, 0.000000e+00
  %327 = and i32 %323, 64
  %328 = icmp ne i32 %327, 0
  %329 = and i32 %323, 128
  %330 = icmp eq i32 %329, 0
  %331 = and i32 %323, 2048
  %332 = icmp eq i32 %331, 0
  %333 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %334 = extractvalue %dx.types.Dimensions %333, 0
  %335 = sitofp i32 %334 to float
  %336 = extractvalue %dx.types.Dimensions %333, 1
  %337 = sitofp i32 %336 to float
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %341 = fmul fast float %339, %65
  %342 = fmul fast float %340, %66
  %343 = fmul fast float %341, %335
  %344 = fmul fast float %342, %337
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %347 = fsub fast float -0.000000e+00, %346
  %348 = fptoui float %347 to i32
  %349 = fptoui float %343 to i32
  %350 = fptoui float %344 to i32
  %351 = and i32 %348, 31
  %352 = lshr i32 %349, %351
  %353 = lshr i32 %350, %351
  %354 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %348, i32 %352, i32 %353, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = fcmp fast ogt float %355, -1.000000e+00
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %359 = select i1 %356, float %358, float 1.000000e+00
  %360 = fadd fast float %355, 1.000000e+00
  %361 = fmul fast float %359, %360
  %362 = call float @dx.op.unary.f32(i32 6, float %361)  ; FAbs(value)
  %363 = extractvalue %dx.types.CBufRet.f32 %357, 3
  %364 = fcmp fast oge float %362, %363
  %365 = select i1 %364, float 0x4197782600000000, float %362
  br i1 %332, label %443, label %366, !dx.controlflow.hints !73

; <label>:366                                     ; preds = %298
  %367 = fmul fast float %70, %339
  %368 = fmul fast float %72, %340
  %369 = fsub fast float 1.000000e+00, %367
  %370 = fsub fast float 1.000000e+00, %368
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %375 = fmul fast float %369, %372
  %376 = fmul fast float %369, %373
  %377 = fmul fast float %369, %374
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %382 = fmul fast float %370, %379
  %383 = fmul fast float %370, %380
  %384 = fmul fast float %370, %381
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %389 = fadd fast float %382, %386
  %390 = fadd fast float %389, %375
  %391 = fadd fast float %383, %387
  %392 = fadd fast float %391, %376
  %393 = fadd fast float %384, %388
  %394 = fadd fast float %393, %377
  %395 = fmul fast float %390, %365
  %396 = fmul fast float %392, %365
  %397 = fmul fast float %394, %365
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = fsub fast float %399, %33
  %403 = fadd fast float %402, %395
  %404 = fsub fast float %400, %34
  %405 = fadd fast float %404, %396
  %406 = fsub fast float %401, %35
  %407 = fadd fast float %406, %397
  %408 = fmul fast float %36, %36
  %409 = call float @dx.op.dot3.f32(i32 55, float %403, float %405, float %407, float %403, float %405, float %407)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fsub fast float %408, %409
  %411 = fmul fast float %308, %408
  %412 = fmul fast float %307, %408
  %413 = fcmp fast olt float %410, %411
  %414 = fcmp fast ogt float %410, %412
  %415 = or i1 %413, %414
  %416 = select i1 %415, float 0.000000e+00, float %410
  %417 = fsub fast float %307, %308
  %418 = fmul fast float %417, %408
  %419 = fsub fast float %416, %411
  %420 = fdiv fast float %419, %418
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = fmul fast float %421, 2.000000e+00
  %423 = fsub fast float 3.000000e+00, %422
  %424 = fmul fast float %421, %421
  %425 = fmul fast float %424, %423
  %426 = fmul fast float %312, %51
  %427 = fmul fast float %313, %52
  %428 = fmul fast float %314, %53
  %429 = fsub fast float %426, %318
  %430 = fsub fast float %427, %319
  %431 = fsub fast float %428, %320
  %432 = fsub fast float %315, %321
  %433 = fmul fast float %425, %429
  %434 = fmul fast float %425, %430
  %435 = fmul fast float %425, %431
  %436 = fmul fast float %425, %432
  %437 = fadd fast float %433, %318
  %438 = fadd fast float %434, %319
  %439 = fadd fast float %435, %320
  %440 = fadd fast float %436, %321
  %441 = fmul fast float %301, %301
  %442 = fmul fast float %441, %416
  br label %538

; <label>:443                                     ; preds = %298
  %444 = and i32 %323, 256
  %445 = icmp eq i32 %444, 0
  %446 = fsub fast float %365, %58
  br i1 %445, label %495, label %447

; <label>:447                                     ; preds = %443
  %448 = fadd fast float %307, %58
  %449 = fcmp fast olt float %365, %58
  %450 = fcmp fast ogt float %365, %448
  %451 = or i1 %449, %450
  %452 = select i1 %451, float 0.000000e+00, float %446
  %453 = call float @dx.op.unary.f32(i32 83, float %365)  ; DerivCoarseX(value)
  %454 = call float @dx.op.unary.f32(i32 84, float %365)  ; DerivCoarseY(value)
  %455 = fmul fast float %453, %453
  %456 = fmul fast float %454, %454
  %457 = fadd fast float %456, %455
  %458 = call float @dx.op.unary.f32(i32 24, float %457)  ; Sqrt(value)
  %459 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %460 = fmul fast float %459, %458
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fmul fast float %461, %308
  %463 = fdiv fast float %446, %462
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = fmul fast float %464, 2.000000e+00
  %466 = fsub fast float 3.000000e+00, %465
  %467 = fmul fast float %464, %464
  %468 = fmul fast float %467, %466
  %469 = fsub fast float %365, %448
  %470 = fadd fast float %469, %462
  %471 = fdiv fast float %470, %462
  %472 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %473 = fmul fast float %472, 2.000000e+00
  %474 = fsub fast float 3.000000e+00, %473
  %475 = fmul fast float %472, %472
  %476 = fmul fast float %475, %474
  %477 = fsub fast float %468, %476
  %478 = fmul fast float %312, %51
  %479 = fmul fast float %313, %52
  %480 = fmul fast float %314, %53
  %481 = fsub fast float %478, %318
  %482 = fsub fast float %479, %319
  %483 = fsub fast float %480, %320
  %484 = fsub fast float %315, %321
  %485 = fmul fast float %477, %481
  %486 = fmul fast float %477, %482
  %487 = fmul fast float %477, %483
  %488 = fmul fast float %477, %484
  %489 = fadd fast float %485, %318
  %490 = fadd fast float %486, %319
  %491 = fadd fast float %487, %320
  %492 = fadd fast float %488, %321
  %493 = fmul fast float %452, %301
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  br label %538

; <label>:495                                     ; preds = %443
  br i1 %326, label %496, label %509

; <label>:496                                     ; preds = %495
  %497 = fdiv fast float 5.000000e+01, %36
  %498 = select i1 %328, float %497, float 1.000000e+00
  %499 = fmul fast float %498, %301
  %500 = fmul fast float %205, 2.000000e+00
  %501 = fmul fast float %206, 2.000000e+00
  %502 = fadd fast float %500, -1.000000e+00
  %503 = fadd fast float %501, -1.000000e+00
  %504 = call float @dx.op.dot2.f32(i32 54, float %502, float %503, float %502, float %503)  ; Dot2(ax,ay,bx,by)
  %505 = fmul fast float %309, %36
  %506 = fmul fast float %505, %504
  %507 = fsub fast float %446, %506
  %508 = fmul fast float %499, %507
  br label %538

; <label>:509                                     ; preds = %495
  br i1 %330, label %530, label %510

; <label>:510                                     ; preds = %509
  %511 = fmul fast float %36, 0x3F947AE140000000
  %512 = select i1 %328, float %511, float 1.000000e+00
  %513 = fdiv fast float 1.000000e+00, %512
  %514 = fmul fast float %512, %302
  %515 = fmul fast float %512, %303
  %516 = fmul fast float %513, %304
  %517 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %518 = fcmp fast olt float %517, %514
  br i1 %518, label %519, label %523, !dx.controlflow.hints !74

; <label>:519                                     ; preds = %510
  %520 = fmul fast float %513, %301
  %521 = fmul fast float %520, %517
  %522 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  br label %538

; <label>:523                                     ; preds = %510
  %524 = fcmp fast ogt float %517, %515
  br i1 %524, label %525, label %538

; <label>:525                                     ; preds = %523
  %526 = fsub fast float %517, %515
  %527 = fmul fast float %516, %526
  %528 = call float @dx.op.unary.f32(i32 6, float %527)  ; FAbs(value)
  %529 = fsub fast float 1.000000e+00, %528
  br label %538

; <label>:530                                     ; preds = %509
  %531 = fdiv fast float 5.000000e+01, %36
  %532 = select i1 %328, float %531, float 1.000000e+00
  %533 = fmul fast float %532, %301
  %534 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %535 = select i1 %325, float %534, float 0x47EFFFFFE0000000
  %536 = call float @dx.op.binary.f32(i32 36, float %446, float %535)  ; FMin(a,b)
  %537 = fmul fast float %533, %536
  br label %538

; <label>:538                                     ; preds = %530, %525, %523, %519, %496, %447, %366
  %539 = phi float [ %442, %366 ], [ %494, %447 ], [ %508, %496 ], [ %537, %530 ], [ %522, %519 ], [ %529, %525 ], [ %517, %523 ]
  %540 = phi float [ %437, %366 ], [ %489, %447 ], [ %51, %496 ], [ %51, %530 ], [ %51, %519 ], [ %51, %525 ], [ %51, %523 ]
  %541 = phi float [ %438, %366 ], [ %490, %447 ], [ %52, %496 ], [ %52, %530 ], [ %52, %519 ], [ %52, %525 ], [ %52, %523 ]
  %542 = phi float [ %439, %366 ], [ %491, %447 ], [ %53, %496 ], [ %53, %530 ], [ %53, %519 ], [ %53, %525 ], [ %53, %523 ]
  %543 = phi float [ %440, %366 ], [ %492, %447 ], [ 1.000000e+00, %496 ], [ 1.000000e+00, %530 ], [ 1.000000e+00, %519 ], [ 1.000000e+00, %525 ], [ 1.000000e+00, %523 ]
  %544 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %545 = fmul fast float %544, %54
  %546 = fmul fast float %543, %256
  %547 = fmul fast float %546, %544
  br label %548

; <label>:548                                     ; preds = %538, %295
  %549 = phi float [ %540, %538 ], [ %51, %295 ]
  %550 = phi float [ %541, %538 ], [ %52, %295 ]
  %551 = phi float [ %542, %538 ], [ %53, %295 ]
  %552 = phi float [ %547, %538 ], [ %256, %295 ]
  %553 = phi float [ %545, %538 ], [ %54, %295 ]
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %556 = fptosi float %58 to i32
  %557 = sitofp i32 %556 to float
  %558 = fadd fast float %555, %557
  %559 = fmul fast float %558, 0x3FE3C6EF40000000
  %560 = frem fast float %65, 2.560000e+02
  %561 = frem fast float %66, 2.560000e+02
  %562 = fptoui float %560 to i32
  %563 = fptoui float %561 to i32
  %564 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %562, i32 %563, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = fadd fast float %565, %559
  %567 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %568 = and i32 %156, 1
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %627, label %570, !dx.controlflow.hints !75

; <label>:570                                     ; preds = %548
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 2
  %573 = extractvalue %dx.types.ResRet.f32 %571, 3
  %574 = add i32 %153, 16
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = extractvalue %dx.types.ResRet.f32 %575, 2
  %579 = add i32 %153, 32
  %580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = extractvalue %dx.types.ResRet.f32 %580, 1
  %583 = extractvalue %dx.types.ResRet.f32 %580, 2
  %584 = and i32 %156, 2
  %585 = icmp eq i32 %584, 0
  %586 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = call float @dx.op.unary.f32(i32 25, float %586)  ; Rsqrt(value)
  %588 = fmul fast float %587, %43
  %589 = fmul fast float %587, %44
  %590 = fmul fast float %587, %45
  %591 = call float @dx.op.dot3.f32(i32 55, float %100, float %101, float %102, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %592 = call float @dx.op.unary.f32(i32 25, float %591)  ; Rsqrt(value)
  %593 = fmul fast float %592, %100
  %594 = fmul fast float %592, %101
  %595 = fmul fast float %592, %102
  %596 = call float @dx.op.dot3.f32(i32 55, float %593, float %594, float %595, float %588, float %589, float %590)  ; Dot3(ax,ay,az,bx,by,bz)
  %597 = fmul fast float %596, %596
  %598 = fmul fast float %597, %572
  %599 = fadd fast float %598, %573
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  br i1 %585, label %601, label %611, !dx.controlflow.hints !76

; <label>:601                                     ; preds = %570
  %602 = extractvalue %dx.types.ResRet.f32 %571, 1
  %603 = extractvalue %dx.types.ResRet.f32 %571, 0
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 3
  %606 = fmul fast float %605, %591
  %607 = fsub fast float %603, %606
  %608 = fmul fast float %607, %602
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = fmul fast float %609, %600
  br label %611

; <label>:611                                     ; preds = %601, %570
  %612 = phi float [ %610, %601 ], [ %600, %570 ]
  %613 = fsub fast float %576, %581
  %614 = fsub fast float %577, %582
  %615 = fsub fast float %578, %583
  %616 = fmul fast float %612, %613
  %617 = fmul fast float %612, %614
  %618 = fmul fast float %612, %615
  %619 = fadd fast float %616, %581
  %620 = fadd fast float %617, %582
  %621 = fadd fast float %618, %583
  %622 = fmul fast float %619, %549
  %623 = fmul fast float %620, %550
  %624 = fmul fast float %621, %551
  %625 = fmul fast float %612, %552
  %626 = fmul fast float %612, %553
  br label %627

; <label>:627                                     ; preds = %611, %548
  %628 = phi float [ %622, %611 ], [ %549, %548 ]
  %629 = phi float [ %623, %611 ], [ %550, %548 ]
  %630 = phi float [ %624, %611 ], [ %551, %548 ]
  %631 = phi float [ %625, %611 ], [ %552, %548 ]
  %632 = phi float [ %626, %611 ], [ %553, %548 ]
  %633 = add i32 %32, 120
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = add i32 %32, 24
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %637, %dx.types.Handle %61, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = extractvalue %dx.types.ResRet.f32 %641, 3
  %646 = and i32 %640, 255
  %647 = uitofp i32 %646 to float
  %648 = lshr i32 %640, 8
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %645, %647
  %652 = fadd fast float %651, %650
  %653 = add i32 %32, 56
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 255
  %657 = uitofp i32 %656 to float
  %658 = fmul fast float %657, 0x3F70101020000000
  %659 = lshr i32 %655, 8
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F70101020000000
  %663 = lshr i32 %655, 16
  %664 = and i32 %663, 255
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101020000000
  %667 = fmul fast float %658, %658
  %668 = fmul fast float %667, %642
  %669 = fmul fast float %662, %662
  %670 = fmul fast float %669, %643
  %671 = fmul fast float %666, %666
  %672 = fmul fast float %671, %644
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %676, %dx.types.Handle %61, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = extractvalue %dx.types.ResRet.f32 %679, 1
  %682 = extractvalue %dx.types.ResRet.f32 %679, 2
  %683 = extractvalue %dx.types.ResRet.f32 %679, 3
  %684 = and i32 %678, 255
  %685 = uitofp i32 %684 to float
  %686 = lshr i32 %678, 8
  %687 = and i32 %686, 255
  %688 = uitofp i32 %687 to float
  %689 = fmul fast float %683, %685
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 255
  %693 = uitofp i32 %692 to float
  %694 = fmul fast float %693, 0x3F70101020000000
  %695 = lshr i32 %691, 8
  %696 = and i32 %695, 255
  %697 = uitofp i32 %696 to float
  %698 = fmul fast float %697, 0x3F70101020000000
  %699 = lshr i32 %691, 16
  %700 = and i32 %699, 255
  %701 = uitofp i32 %700 to float
  %702 = fmul fast float %701, 0x3F70101020000000
  %703 = fmul fast float %694, %694
  %704 = fmul fast float %703, %680
  %705 = fmul fast float %698, %698
  %706 = fmul fast float %705, %681
  %707 = fmul fast float %702, %702
  %708 = fmul fast float %707, %682
  %709 = fsub fast float %704, %668
  %710 = fsub fast float %706, %670
  %711 = fsub fast float %708, %672
  %712 = fmul fast float %709, %48
  %713 = fmul fast float %710, %48
  %714 = fmul fast float %711, %48
  %715 = fadd fast float %712, %668
  %716 = fadd fast float %713, %670
  %717 = fadd fast float %714, %672
  %718 = fsub fast float %688, %652
  %719 = fadd fast float %718, %689
  %720 = fmul fast float %719, %48
  %721 = fadd fast float %720, %652
  %722 = fmul fast float %721, 0x3F70101000000000
  %723 = fmul fast float %715, %628
  %724 = fmul fast float %716, %629
  %725 = fmul fast float %717, %630
  %726 = add i32 %32, 28
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = add i32 %32, 124
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %731, 0
  %733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %733, %dx.types.Handle %61, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 3
  %738 = and i32 %728, 255
  %739 = uitofp i32 %738 to float
  %740 = lshr i32 %728, 8
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = lshr i32 %728, 16
  %744 = and i32 %743, 255
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101000000000
  %747 = fmul fast float %735, %739
  %748 = fadd fast float %747, %742
  %749 = fadd fast float %736, -5.000000e-01
  %750 = fadd fast float %737, -5.000000e-01
  %751 = fmul fast float %749, %746
  %752 = fmul fast float %750, %746
  %753 = fadd fast float %751, 5.000000e-01
  %754 = fadd fast float %752, 5.000000e-01
  %755 = fmul fast float %753, 2.000000e+00
  %756 = fadd fast float %755, -1.000000e+00
  %757 = fmul fast float %754, 2.000000e+00
  %758 = fadd fast float %757, -1.000000e+00
  %759 = fadd fast float %756, %758
  %760 = fmul fast float %759, 5.000000e-01
  %761 = fsub fast float %756, %758
  %762 = fmul fast float %761, 5.000000e-01
  %763 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %764 = fsub fast float 1.000000e+00, %763
  %765 = call float @dx.op.unary.f32(i32 6, float %762)  ; FAbs(value)
  %766 = fsub fast float %764, %765
  %767 = call float @dx.op.dot3.f32(i32 55, float %760, float %762, float %766, float %760, float %762, float %766)  ; Dot3(ax,ay,az,bx,by,bz)
  %768 = call float @dx.op.unary.f32(i32 25, float %767)  ; Rsqrt(value)
  %769 = fmul fast float %760, %768
  %770 = fmul fast float %762, %768
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %774, 0
  %776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %776, %dx.types.Handle %61, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 3
  %781 = and i32 %772, 255
  %782 = uitofp i32 %781 to float
  %783 = lshr i32 %772, 8
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = lshr i32 %772, 16
  %787 = and i32 %786, 255
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %788, 0x3F70101000000000
  %790 = fmul fast float %778, %782
  %791 = fadd fast float %779, -5.000000e-01
  %792 = fadd fast float %780, -5.000000e-01
  %793 = fmul fast float %791, %789
  %794 = fmul fast float %792, %789
  %795 = fadd fast float %793, 5.000000e-01
  %796 = fadd fast float %794, 5.000000e-01
  %797 = fmul fast float %795, 2.000000e+00
  %798 = fadd fast float %797, -1.000000e+00
  %799 = fmul fast float %796, 2.000000e+00
  %800 = fadd fast float %799, -1.000000e+00
  %801 = fadd fast float %798, %800
  %802 = fmul fast float %801, 5.000000e-01
  %803 = fsub fast float %798, %800
  %804 = fmul fast float %803, 5.000000e-01
  %805 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %806 = fsub fast float 1.000000e+00, %805
  %807 = call float @dx.op.unary.f32(i32 6, float %804)  ; FAbs(value)
  %808 = fsub fast float %806, %807
  %809 = call float @dx.op.dot3.f32(i32 55, float %802, float %804, float %808, float %802, float %804, float %808)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = call float @dx.op.unary.f32(i32 25, float %809)  ; Rsqrt(value)
  %811 = fmul fast float %802, %810
  %812 = fmul fast float %804, %810
  %813 = fsub fast float %811, %769
  %814 = fsub fast float %812, %770
  %815 = fmul fast float %813, %48
  %816 = fmul fast float %814, %48
  %817 = fadd fast float %815, %769
  %818 = fadd fast float %816, %770
  %819 = fsub fast float %785, %748
  %820 = fadd fast float %819, %790
  %821 = fmul fast float %820, %48
  %822 = fadd fast float %821, %748
  %823 = fmul fast float %822, 0x3F70101000000000
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 3
  %826 = fcmp fast ogt float %825, 0.000000e+00
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 1
  br i1 %826, label %829, label %854

; <label>:829                                     ; preds = %627
  %830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = extractvalue %dx.types.ResRet.f32 %830, 3
  %835 = fmul fast float %828, %834
  %836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = extractvalue %dx.types.ResRet.f32 %836, 3
  %841 = fmul fast float %828, %837
  %842 = fmul fast float %828, %838
  %843 = fmul fast float %828, %839
  %844 = fmul fast float %828, %840
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %26, float %37, float %38, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = extractvalue %dx.types.ResRet.f32 %845, 3
  %850 = fmul fast float %828, %846
  %851 = fmul fast float %828, %847
  %852 = fmul fast float %828, %848
  %853 = fmul fast float %828, %849
  br label %859

; <label>:854                                     ; preds = %627
  %855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %26, float %37, float %38, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  br label %859

; <label>:859                                     ; preds = %854, %829
  %860 = phi float [ %850, %829 ], [ 0.000000e+00, %854 ]
  %861 = phi float [ %851, %829 ], [ 0.000000e+00, %854 ]
  %862 = phi float [ %852, %829 ], [ 0.000000e+00, %854 ]
  %863 = phi float [ %853, %829 ], [ 0.000000e+00, %854 ]
  %864 = phi float [ %841, %829 ], [ 0.000000e+00, %854 ]
  %865 = phi float [ %842, %829 ], [ 0.000000e+00, %854 ]
  %866 = phi float [ %843, %829 ], [ 0.000000e+00, %854 ]
  %867 = phi float [ %844, %829 ], [ 0.000000e+00, %854 ]
  %868 = phi float [ %831, %829 ], [ %856, %854 ]
  %869 = phi float [ %832, %829 ], [ %857, %854 ]
  %870 = phi float [ %833, %829 ], [ %858, %854 ]
  %871 = phi float [ %835, %829 ], [ 0.000000e+00, %854 ]
  %872 = fmul float %828, %870
  %873 = fmul float %828, %869
  %874 = fmul float %828, %868
  %875 = call float @dx.op.dot2.f32(i32 54, float %817, float %818, float %817, float %818)  ; Dot2(ax,ay,bx,by)
  %876 = fsub fast float 1.000000e+00, %875
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = call float @dx.op.unary.f32(i32 24, float %877)  ; Sqrt(value)
  %879 = fmul fast float %878, %43
  %880 = fmul fast float %878, %44
  %881 = fmul fast float %878, %45
  %882 = fmul fast float %817, %39
  %883 = fmul fast float %817, %40
  %884 = fmul fast float %817, %41
  %885 = fmul fast float %112, %818
  %886 = fmul fast float %113, %818
  %887 = fmul fast float %114, %818
  %888 = fadd fast float %885, %882
  %889 = fadd fast float %888, %879
  %890 = fadd fast float %886, %883
  %891 = fadd fast float %890, %880
  %892 = fadd fast float %887, %884
  %893 = fadd fast float %892, %881
  %894 = call float @dx.op.dot3.f32(i32 55, float %889, float %891, float %893, float %889, float %891, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = call float @dx.op.unary.f32(i32 25, float %894)  ; Rsqrt(value)
  %896 = fmul fast float %889, %895
  %897 = fmul fast float %891, %895
  %898 = fmul fast float %893, %895
  %899 = call float @dx.op.dot3.f32(i32 55, float %100, float %101, float %102, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = call float @dx.op.unary.f32(i32 25, float %899)  ; Rsqrt(value)
  %901 = fmul fast float %900, %100
  %902 = fmul fast float %900, %101
  %903 = fmul fast float %900, %102
  %904 = fsub fast float -0.000000e+00, %901
  %905 = fsub fast float -0.000000e+00, %902
  %906 = fsub fast float -0.000000e+00, %903
  %907 = fadd fast float %722, 0xBFB99999A0000000
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = fmul fast float %908, 0x3FF1C71C80000000
  %910 = call float @dx.op.binary.f32(i32 36, float %722, float 0x3FB99999A0000000)  ; FMin(a,b)
  %911 = fsub fast float 1.000000e+00, %909
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fmul fast float %912, %723
  %914 = fmul fast float %912, %724
  %915 = fmul fast float %912, %725
  %916 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %917 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %918 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %919 = fmul fast float %909, %723
  %920 = fmul fast float %909, %724
  %921 = fmul fast float %909, %725
  %922 = fadd fast float %919, %910
  %923 = fadd fast float %920, %910
  %924 = fadd fast float %921, %910
  %925 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %926 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %927 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %928 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %929 = call float @dx.op.dot3.f32(i32 55, float %916, float %917, float %918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %930 = add i32 %32, 32
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = lshr i32 %932, 8
  %936 = and i32 %935, 255
  %937 = uitofp i32 %936 to float
  %938 = fmul fast float %937, %929
  %939 = fadd fast float %938, %934
  %940 = fmul fast float %939, 0x3F70101020000000
  %941 = call float @dx.op.unary.f32(i32 7, float %940)  ; Saturate(value)
  %942 = add i32 %32, 132
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = add i32 %944, 0
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %946, %dx.types.Handle %62, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = and i32 %156, 8192
  %950 = icmp eq i32 %949, 0
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  br i1 %950, label %963, label %953, !dx.controlflow.hints !77

; <label>:953                                     ; preds = %859
  %954 = add i32 %153, 176
  %955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = fcmp fast oge float %956, 0.000000e+00
  %959 = select i1 %958, float %956, float %952
  %960 = fmul fast float %948, %115
  %961 = fmul fast float %960, %957
  %962 = fadd fast float %961, %959
  br label %974

; <label>:963                                     ; preds = %859
  %964 = add i32 %32, 104
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = extractvalue %dx.types.ResRet.i32 %965, 1
  %968 = bitcast i32 %966 to float
  %969 = bitcast i32 %967 to float
  %970 = fcmp fast oge float %968, 0.000000e+00
  %971 = select i1 %970, float %968, float %952
  %972 = fmul fast float %969, %948
  %973 = fadd fast float %971, %972
  br label %974

; <label>:974                                     ; preds = %963, %953
  %975 = phi float [ %962, %953 ], [ %973, %963 ]
  %976 = fmul fast float %632, %631
  %977 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %259, i32 %260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = lshr i32 %978, 18
  %980 = uitofp i32 %979 to float
  %981 = fmul fast float %980, 0x3F4C00EBA0000000
  %982 = call float @dx.op.unary.f32(i32 21, float %981)  ; Exp(value)
  %983 = fadd fast float %982, -1.000000e+00
  %984 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %985 = extractvalue %dx.types.Dimensions %984, 0
  %986 = sitofp i32 %985 to float
  %987 = extractvalue %dx.types.Dimensions %984, 1
  %988 = sitofp i32 %987 to float
  %989 = fcmp fast oge float %257, %986
  %990 = fcmp fast oge float %258, %988
  %991 = or i1 %989, %990
  %992 = select i1 %991, float 0x4197782600000000, float %983
  %993 = icmp eq i32 %152, 3
  %994 = fcmp fast ogt float %58, %992
  %995 = and i1 %283, %994
  %996 = or i1 %993, %995
  %997 = icmp eq i32 %152, 2
  %998 = fcmp fast ole float %58, %992
  %999 = and i1 %997, %998
  %1000 = or i1 %999, %996
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 3
  %1003 = fcmp fast ogt float %1002, 0.000000e+00
  br i1 %1003, label %1004, label %1011

; <label>:1004                                    ; preds = %974
  %1005 = fmul fast float %897, 0xBFDF454380000000
  %1006 = fmul fast float %898, 0x3FDF454380000000
  %1007 = fmul fast float %896, 0xBFDF454380000000
  %1008 = call float @dx.op.dot4.f32(i32 56, float %874, float %873, float %872, float %871, float 0x3FD20DD760000000, float %1005, float %1006, float %1007)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1009 = call float @dx.op.dot4.f32(i32 56, float %864, float %865, float %866, float %867, float 0x3FD20DD760000000, float %1005, float %1006, float %1007)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1010 = call float @dx.op.dot4.f32(i32 56, float %860, float %861, float %862, float %863, float 0x3FD20DD760000000, float %1005, float %1006, float %1007)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1011

; <label>:1011                                    ; preds = %1004, %974
  %1012 = phi float [ %1008, %1004 ], [ %874, %974 ]
  %1013 = phi float [ %1009, %1004 ], [ %873, %974 ]
  %1014 = phi float [ %1010, %1004 ], [ %872, %974 ]
  %1015 = call float @dx.op.dot3.f32(i32 55, float %896, float %897, float %898, float %904, float %905, float %906)  ; Dot3(ax,ay,az,bx,by,bz)
  %1016 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  br i1 %1003, label %1017, label %1117

; <label>:1017                                    ; preds = %1011
  %1018 = fsub fast float -0.000000e+00, %863
  %1019 = fsub fast float %1018, %867
  %1020 = fsub fast float %1019, %871
  %1021 = fsub fast float -0.000000e+00, %861
  %1022 = fsub fast float %1021, %865
  %1023 = fsub fast float %1022, %873
  %1024 = fadd fast float %866, %862
  %1025 = fadd fast float %1024, %872
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1023, float %1025, float %1020, float %1023, float %1025)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call float @dx.op.unary.f32(i32 25, float %1026)  ; Rsqrt(value)
  %1028 = fmul fast float %1027, %1020
  %1029 = fmul fast float %1027, %1023
  %1030 = fmul fast float %1027, %1025
  %1031 = fmul fast float %1029, 0xBFD4D8D7C0000000
  %1032 = fmul fast float %1030, 0x3FD4D8D7C0000000
  %1033 = fmul fast float %1028, 0xBFD4D8D7C0000000
  %1034 = call float @dx.op.dot4.f32(i32 56, float %874, float %873, float %872, float %871, float 0x3FD20DD760000000, float %1031, float %1032, float %1033)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1035 = call float @dx.op.dot4.f32(i32 56, float %864, float %865, float %866, float %867, float 0x3FD20DD760000000, float %1031, float %1032, float %1033)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1036 = call float @dx.op.dot4.f32(i32 56, float %860, float %861, float %862, float %863, float 0x3FD20DD760000000, float %1031, float %1032, float %1033)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1037 = fmul fast float %1034, 0x4003333340000000
  %1038 = fmul fast float %874, 0x3FE5AA35A0000000
  %1039 = fsub fast float %1037, %1038
  %1040 = fmul fast float %1035, 0x4003333340000000
  %1041 = fmul fast float %864, 0x3FE5AA35A0000000
  %1042 = fsub fast float %1040, %1041
  %1043 = fmul fast float %1036, 0x4003333340000000
  %1044 = fmul fast float %860, 0x3FE5AA35A0000000
  %1045 = fsub fast float %1043, %1044
  %1046 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1039)  ; FMax(a,b)
  %1047 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1042)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1045)  ; FMax(a,b)
  %1049 = fsub fast float %1028, %901
  %1050 = fsub fast float %1029, %902
  %1051 = fsub fast float %1030, %903
  %1052 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1050, float %1051, float %1049, float %1050, float %1051)  ; Dot3(ax,ay,az,bx,by,bz)
  %1053 = call float @dx.op.unary.f32(i32 25, float %1052)  ; Rsqrt(value)
  %1054 = fmul fast float %1053, %1049
  %1055 = fmul fast float %1053, %1050
  %1056 = fmul fast float %1053, %1051
  %1057 = call float @dx.op.dot3.f32(i32 55, float %896, float %897, float %898, float %1028, float %1029, float %1030)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = call float @dx.op.unary.f32(i32 6, float %1057)  ; FAbs(value)
  %1059 = call float @dx.op.dot3.f32(i32 55, float %896, float %897, float %898, float %1054, float %1055, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = fmul fast float %1059, %1059
  %1061 = call float @dx.op.dot3.f32(i32 55, float %904, float %905, float %906, float %1054, float %1055, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1063 = fsub fast float 1.000000e+00, %928
  %1064 = call float @dx.op.binary.f32(i32 35, float %1063, float 0x3F847AE140000000)  ; FMax(a,b)
  %1065 = fmul fast float %1064, %1064
  %1066 = fmul fast float %1065, %1065
  %1067 = fsub fast float 1.000000e+00, %1066
  %1068 = fmul fast float %1016, %1016
  %1069 = fmul fast float %1068, %1067
  %1070 = fadd fast float %1069, %1066
  %1071 = bitcast float %1070 to i32
  %1072 = ashr i32 %1071, 1
  %1073 = add nsw i32 %1072, 532487669
  %1074 = bitcast i32 %1073 to float
  %1075 = fadd fast float %1074, %1016
  %1076 = fmul fast float %1066, %1060
  %1077 = fsub fast float 1.000000e+00, %1060
  %1078 = fadd fast float %1077, %1076
  %1079 = fmul fast float %1058, %1058
  %1080 = fmul fast float %1079, %1067
  %1081 = fadd fast float %1080, %1066
  %1082 = bitcast float %1081 to i32
  %1083 = ashr i32 %1082, 1
  %1084 = add nsw i32 %1083, 532487669
  %1085 = bitcast i32 %1084 to float
  %1086 = fadd fast float %1085, %1058
  %1087 = fmul fast float %1078, %1078
  %1088 = fmul fast float %1087, %1075
  %1089 = fmul fast float %1088, %1086
  %1090 = fdiv fast float 1.000000e+00, %1089
  %1091 = fmul fast float %1066, %1090
  %1092 = fsub fast float 1.000000e+00, %1062
  %1093 = bitcast float %1092 to i32
  %1094 = sitofp i32 %1093 to float
  %1095 = fmul fast float %1094, 5.000000e+00
  %1096 = fadd fast float %1095, 0xC1EFBF8940000000
  %1097 = fptosi float %1096 to i32
  %1098 = bitcast i32 %1097 to float
  %1099 = fsub fast float 1.000000e+00, %925
  %1100 = fsub fast float 1.000000e+00, %926
  %1101 = fsub fast float 1.000000e+00, %927
  %1102 = fmul fast float %1098, %1099
  %1103 = fmul fast float %1098, %1100
  %1104 = fmul fast float %1098, %1101
  %1105 = fadd fast float %1102, %925
  %1106 = fadd fast float %1103, %926
  %1107 = fadd fast float %1104, %927
  %1108 = fmul fast float %1091, %1046
  %1109 = fmul fast float %1108, %1105
  %1110 = fmul fast float %1091, %1047
  %1111 = fmul fast float %1110, %1106
  %1112 = fmul fast float %1091, %1048
  %1113 = fmul fast float %1112, %1107
  %1114 = call float @dx.op.binary.f32(i32 35, float %1109, float 0.000000e+00)  ; FMax(a,b)
  %1115 = call float @dx.op.binary.f32(i32 35, float %1111, float 0.000000e+00)  ; FMax(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float %1113, float 0.000000e+00)  ; FMax(a,b)
  br label %1117

; <label>:1117                                    ; preds = %1017, %1011
  %1118 = phi float [ %1114, %1017 ], [ 0.000000e+00, %1011 ]
  %1119 = phi float [ %1115, %1017 ], [ 0.000000e+00, %1011 ]
  %1120 = phi float [ %1116, %1017 ], [ 0.000000e+00, %1011 ]
  %1121 = fmul fast float %1016, 9.843750e-01
  %1122 = fmul fast float %928, 9.843750e-01
  %1123 = fadd fast float %1121, 7.812500e-03
  %1124 = fadd fast float %1122, 7.812500e-03
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %26, float %1123, float %1124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 2
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 3
  %1128 = fmul fast float %1126, %925
  %1129 = fmul fast float %1126, %926
  %1130 = fmul fast float %1126, %927
  %1131 = fadd fast float %1128, %1127
  %1132 = fadd fast float %1129, %1127
  %1133 = fadd fast float %1130, %1127
  %1134 = call float @dx.op.binary.f32(i32 35, float %1132, float %1133)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1131, float %1134)  ; FMax(a,b)
  %1136 = fsub fast float 1.000000e+00, %1135
  %1137 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float %896, float %897, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = fmul fast float %1137, 2.000000e+00
  %1139 = fmul fast float %1138, %896
  %1140 = fmul fast float %1138, %897
  %1141 = fmul fast float %1138, %898
  %1142 = fsub fast float %901, %1139
  %1143 = fsub fast float %902, %1140
  %1144 = fsub fast float %903, %1141
  br i1 %1003, label %1145, label %1152

; <label>:1145                                    ; preds = %1117
  %1146 = fmul fast float %1143, 0xBFDF454380000000
  %1147 = fmul fast float %1144, 0x3FDF454380000000
  %1148 = fmul fast float %1142, 0xBFDF454380000000
  %1149 = call float @dx.op.dot4.f32(i32 56, float %874, float %873, float %872, float %871, float 0x3FD20DD760000000, float %1146, float %1147, float %1148)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1150 = call float @dx.op.dot4.f32(i32 56, float %864, float %865, float %866, float %867, float 0x3FD20DD760000000, float %1146, float %1147, float %1148)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1151 = call float @dx.op.dot4.f32(i32 56, float %860, float %861, float %862, float %863, float 0x3FD20DD760000000, float %1146, float %1147, float %1148)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %1152

; <label>:1152                                    ; preds = %1145, %1117
  %1153 = phi float [ %1149, %1145 ], [ %874, %1117 ]
  %1154 = phi float [ %1150, %1145 ], [ %873, %1117 ]
  %1155 = phi float [ %1151, %1145 ], [ %872, %1117 ]
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1153, float %1154, float %1155, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1159 = extractvalue %dx.types.CBufRet.f32 %1157, 3
  %1160 = fmul fast float %1158, %65
  %1161 = fmul fast float %1159, %66
  %1162 = fptoui float %1160 to i32
  %1163 = fptoui float %1161 to i32
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1167 = extractvalue %dx.types.CBufRet.f32 %1164, 3
  %1168 = fadd fast float %58, -4.000000e+00
  %1169 = call float @dx.op.binary.f32(i32 35, float %1168, float 0.000000e+00)  ; FMax(a,b)
  %1170 = fadd fast float %1169, %1165
  %1171 = fmul fast float %1170, %1166
  %1172 = call float @dx.op.unary.f32(i32 23, float %1171)  ; Log(value)
  %1173 = fmul fast float %1172, %1167
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1176 = fmul fast float %1173, %1175
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.i32 %1178, 1
  %1180 = add i32 %1179, -1
  %1181 = uitofp i32 %1179 to float
  %1182 = fmul fast float %1181, %1177
  %1183 = fptoui float %1182 to i32
  %1184 = call i32 @dx.op.binary.i32(i32 40, i32 %1183, i32 %1180)  ; UMin(a,b)
  %1185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.i32 %1185, 2
  %1187 = extractvalue %dx.types.CBufRet.i32 %1185, 3
  %1188 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1163, i32 %1186, i32 %1162)  ; UMad(a,b,c)
  %1189 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1184, i32 %1187, i32 %1188)  ; UMad(a,b,c)
  %1190 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %1191 = fptoui float %1190 to i32
  %1192 = lshr i32 %1191, 5
  %1193 = call i32 @dx.op.binary.i32(i32 40, i32 %1192, i32 8191)  ; UMin(a,b)
  %1194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.i32 %1194, 2
  %1196 = add nsw i32 %1195, -1
  %1197 = call i32 @dx.op.binary.i32(i32 37, i32 %1196, i32 0)  ; IMax(a,b)
  %1198 = shl i32 %1193, 2
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = lshr i32 %1200, 16
  %1202 = and i32 %1200, 65535
  %1203 = lshr i32 %1200, 21
  %1204 = lshr i32 %1202, 5
  %1205 = call i32 @dx.op.binary.i32(i32 40, i32 %1204, i32 %1197)  ; UMin(a,b)
  %1206 = icmp ugt i32 %1203, %1205
  br i1 %1206, label %1569, label %1207

; <label>:1207                                    ; preds = %1152
  br label %1208

; <label>:1208                                    ; preds = %1561, %1207
  %1209 = phi float [ %1562, %1561 ], [ 0.000000e+00, %1207 ]
  %1210 = phi float [ %1563, %1561 ], [ 0.000000e+00, %1207 ]
  %1211 = phi float [ %1564, %1561 ], [ 0.000000e+00, %1207 ]
  %1212 = phi float [ %1565, %1561 ], [ 1.000000e+00, %1207 ]
  %1213 = phi i32 [ %1566, %1561 ], [ %1203, %1207 ]
  %1214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.i32 %1214, 2
  %1216 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1189, i32 %1215, i32 %1213)  ; UMad(a,b,c)
  %1217 = shl i32 %1216, 2
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = shl i32 %1213, 5
  %1221 = sub nsw i32 %1201, %1220
  %1222 = call i32 @dx.op.binary.i32(i32 37, i32 %1221, i32 0)  ; IMax(a,b)
  %1223 = call i32 @dx.op.binary.i32(i32 38, i32 %1222, i32 31)  ; IMin(a,b)
  %1224 = sub nsw i32 1, %1201
  %1225 = add nsw i32 %1224, %1202
  %1226 = call i32 @dx.op.binary.i32(i32 37, i32 %1225, i32 0)  ; IMax(a,b)
  %1227 = call i32 @dx.op.binary.i32(i32 38, i32 %1226, i32 32)  ; IMin(a,b)
  %1228 = and i32 %1227, 31
  %1229 = shl i32 -1, %1228
  %1230 = xor i32 %1229, -1
  %1231 = and i32 %1223, 31
  %1232 = shl i32 %1230, %1231
  %1233 = icmp eq i32 %1227, 32
  %1234 = select i1 %1233, i32 -1, i32 %1232
  %1235 = and i32 %1234, %1219
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1561, label %1237

; <label>:1237                                    ; preds = %1208
  br label %1238

; <label>:1238                                    ; preds = %1344, %1237
  %1239 = phi float [ %1345, %1344 ], [ %1209, %1237 ]
  %1240 = phi float [ %1346, %1344 ], [ %1210, %1237 ]
  %1241 = phi float [ %1347, %1344 ], [ %1211, %1237 ]
  %1242 = phi float [ %1348, %1344 ], [ %1212, %1237 ]
  %1243 = phi i32 [ %1248, %1344 ], [ %1235, %1237 ]
  %1244 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1243)  ; FirstbitLo(value)
  %1245 = add i32 %1244, %1220
  %1246 = and i32 %1244, 31
  %1247 = shl i32 1, %1246
  %1248 = xor i32 %1247, %1243
  %1249 = mul i32 %1245, 72
  %1250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = add i32 %1249, 12
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = add i32 %1249, 16
  %1258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = extractvalue %dx.types.ResRet.f32 %1258, 1
  %1261 = extractvalue %dx.types.ResRet.f32 %1258, 2
  %1262 = add i32 %1249, 28
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = add i32 %1249, 32
  %1266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.ResRet.f32 %1266, 3
  %1271 = add i32 %1249, 48
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.f32 %1272, 1
  %1275 = add i32 %1249, 56
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = add i32 %1249, 64
  %1280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = mul i32 %1245, 60
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = add i32 %1283, 12
  %1289 = add i32 %1283, 48
  %1290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.ResRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.ResRet.f32 %1290, 2
  %1294 = and i32 %1256, 32767
  %1295 = bitcast float %1251 to i32
  %1296 = icmp eq i32 %1295, -1
  %1297 = bitcast float %1252 to i32
  %1298 = and i32 %1256, 32768
  %1299 = icmp ne i32 %1298, 0
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1304 = fsub fast float %1285, %1301
  %1305 = fsub fast float %1286, %1302
  %1306 = fsub fast float %1287, %1303
  %1307 = fsub fast float %100, %1304
  %1308 = fsub fast float %101, %1305
  %1309 = fsub fast float %102, %1306
  %1310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float %1311, float %1312, float %1313)  ; Dot3(ax,ay,az,bx,by,bz)
  %1315 = add i32 %1283, 24
  %1316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float %1317, float %1318, float %1319)  ; Dot3(ax,ay,az,bx,by,bz)
  %1321 = add i32 %1283, 36
  %1322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = extractvalue %dx.types.ResRet.f32 %1322, 1
  %1325 = extractvalue %dx.types.ResRet.f32 %1322, 2
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = call float @dx.op.unary.f32(i32 6, float %1314)  ; FAbs(value)
  %1328 = call float @dx.op.unary.f32(i32 6, float %1320)  ; FAbs(value)
  %1329 = call float @dx.op.unary.f32(i32 6, float %1326)  ; FAbs(value)
  %1330 = fsub fast float %1291, %1327
  %1331 = fsub fast float %1292, %1328
  %1332 = fsub fast float %1293, %1329
  %1333 = fmul fast float %1330, %1259
  %1334 = fmul fast float %1331, %1260
  %1335 = fmul fast float %1332, %1261
  %1336 = call float @dx.op.binary.f32(i32 36, float %1334, float %1335)  ; FMin(a,b)
  %1337 = call float @dx.op.binary.f32(i32 36, float %1333, float %1336)  ; FMin(a,b)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1242, float %1338)  ; FMin(a,b)
  %1340 = uitofp i1 %1299 to float
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = fmul fast float %1339, %1341
  %1343 = fcmp fast ogt float %1342, 0.000000e+00
  br i1 %1343, label %1350, label %1344

; <label>:1344                                    ; preds = %1492, %1238
  %1345 = phi float [ %1556, %1492 ], [ %1239, %1238 ]
  %1346 = phi float [ %1557, %1492 ], [ %1240, %1238 ]
  %1347 = phi float [ %1558, %1492 ], [ %1241, %1238 ]
  %1348 = phi float [ %1559, %1492 ], [ %1242, %1238 ]
  %1349 = icmp eq i32 %1243, %1247
  br i1 %1349, label %1560, label %1238

; <label>:1350                                    ; preds = %1238
  br i1 %1296, label %1408, label %1351

; <label>:1351                                    ; preds = %1350
  %1352 = fsub fast float -0.000000e+00, %1311
  %1353 = fsub fast float -0.000000e+00, %1312
  %1354 = fsub fast float -0.000000e+00, %1313
  %1355 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1144, float %1352, float %1353, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1356 = fsub fast float -0.000000e+00, %1355
  %1357 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float %1352, float %1353, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1358 = fadd fast float %1357, %1274
  %1359 = fadd fast float %1273, %1357
  %1360 = fsub fast float -0.000000e+00, %1359
  %1361 = fcmp ogt float %1355, -0.000000e+00
  %1362 = select i1 %1361, float %1360, float %1358
  %1363 = call float @dx.op.unary.f32(i32 6, float %1356)  ; FAbs(value)
  %1364 = fdiv fast float 1.000000e+00, %1363
  %1365 = fmul fast float %1362, %1364
  %1366 = call float @dx.op.binary.f32(i32 35, float %1365, float 0.000000e+00)  ; FMax(a,b)
  %1367 = fsub fast float -0.000000e+00, %1317
  %1368 = fsub fast float -0.000000e+00, %1318
  %1369 = fsub fast float -0.000000e+00, %1319
  %1370 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1144, float %1367, float %1368, float %1369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1371 = fsub fast float -0.000000e+00, %1370
  %1372 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float %1367, float %1368, float %1369)  ; Dot3(ax,ay,az,bx,by,bz)
  %1373 = fadd fast float %1372, %1278
  %1374 = fadd fast float %1277, %1372
  %1375 = fsub fast float -0.000000e+00, %1374
  %1376 = fcmp ogt float %1370, -0.000000e+00
  %1377 = select i1 %1376, float %1375, float %1373
  %1378 = call float @dx.op.unary.f32(i32 6, float %1371)  ; FAbs(value)
  %1379 = fdiv fast float 1.000000e+00, %1378
  %1380 = fmul fast float %1377, %1379
  %1381 = call float @dx.op.binary.f32(i32 35, float %1380, float 0.000000e+00)  ; FMax(a,b)
  %1382 = fsub fast float -0.000000e+00, %1323
  %1383 = fsub fast float -0.000000e+00, %1324
  %1384 = fsub fast float -0.000000e+00, %1325
  %1385 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1144, float %1382, float %1383, float %1384)  ; Dot3(ax,ay,az,bx,by,bz)
  %1386 = fsub fast float -0.000000e+00, %1385
  %1387 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float %1382, float %1383, float %1384)  ; Dot3(ax,ay,az,bx,by,bz)
  %1388 = fadd fast float %1387, %1282
  %1389 = fadd fast float %1281, %1387
  %1390 = fsub fast float -0.000000e+00, %1389
  %1391 = fcmp ogt float %1385, -0.000000e+00
  %1392 = select i1 %1391, float %1390, float %1388
  %1393 = call float @dx.op.unary.f32(i32 6, float %1386)  ; FAbs(value)
  %1394 = fdiv fast float 1.000000e+00, %1393
  %1395 = fmul fast float %1392, %1394
  %1396 = call float @dx.op.binary.f32(i32 35, float %1395, float 0.000000e+00)  ; FMax(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1381, float %1396)  ; FMin(a,b)
  %1398 = call float @dx.op.binary.f32(i32 36, float %1366, float %1397)  ; FMin(a,b)
  %1399 = fmul fast float %1398, %1142
  %1400 = fmul fast float %1398, %1143
  %1401 = fmul fast float %1398, %1144
  %1402 = fadd fast float %1399, %100
  %1403 = fadd fast float %1400, %101
  %1404 = fadd fast float %1401, %102
  %1405 = fsub fast float %1402, %1251
  %1406 = fsub fast float %1403, %1252
  %1407 = fsub fast float %1404, %1253
  br label %1415

; <label>:1408                                    ; preds = %1350
  %1409 = fmul fast float %1142, 8.096000e+03
  %1410 = fmul fast float %1143, 8.096000e+03
  %1411 = fmul fast float %1144, 8.096000e+03
  %1412 = fadd fast float %1409, %100
  %1413 = fadd fast float %1410, %101
  %1414 = fadd fast float %1411, %102
  br label %1415

; <label>:1415                                    ; preds = %1408, %1351
  %1416 = phi float [ %1142, %1408 ], [ %1405, %1351 ]
  %1417 = phi float [ %1143, %1408 ], [ %1406, %1351 ]
  %1418 = phi float [ %1144, %1408 ], [ %1407, %1351 ]
  %1419 = phi float [ %1412, %1408 ], [ %1402, %1351 ]
  %1420 = phi float [ %1413, %1408 ], [ %1403, %1351 ]
  %1421 = phi float [ %1414, %1408 ], [ %1404, %1351 ]
  %1422 = fcmp fast olt float %1270, 1.000000e+00
  br i1 %1422, label %1423, label %1454, !dx.controlflow.hints !78

; <label>:1423                                    ; preds = %1415
  %1424 = fmul fast float %1418, %1268
  %1425 = fmul fast float %1417, %1269
  %1426 = fsub fast float %1424, %1425
  %1427 = fmul fast float %1416, %1269
  %1428 = fmul fast float %1418, %1267
  %1429 = fsub fast float %1427, %1428
  %1430 = fmul fast float %1417, %1267
  %1431 = fmul fast float %1416, %1268
  %1432 = fsub fast float %1430, %1431
  %1433 = fmul fast float %1426, 2.000000e+00
  %1434 = fmul fast float %1429, 2.000000e+00
  %1435 = fmul fast float %1432, 2.000000e+00
  %1436 = fmul fast float %1433, %1270
  %1437 = fmul fast float %1434, %1270
  %1438 = fmul fast float %1435, %1270
  %1439 = fmul fast float %1435, %1268
  %1440 = fmul fast float %1434, %1269
  %1441 = fmul fast float %1433, %1269
  %1442 = fmul fast float %1435, %1267
  %1443 = fmul fast float %1434, %1267
  %1444 = fmul fast float %1433, %1268
  %1445 = fadd fast float %1439, %1416
  %1446 = fadd fast float %1445, %1436
  %1447 = fsub fast float %1446, %1440
  %1448 = fsub fast float %1417, %1442
  %1449 = fadd fast float %1448, %1437
  %1450 = fadd fast float %1449, %1441
  %1451 = fadd fast float %1438, %1418
  %1452 = fsub fast float %1451, %1444
  %1453 = fadd fast float %1452, %1443
  br label %1454

; <label>:1454                                    ; preds = %1423, %1415
  %1455 = phi float [ %1447, %1423 ], [ %1416, %1415 ]
  %1456 = phi float [ %1450, %1423 ], [ %1417, %1415 ]
  %1457 = phi float [ %1453, %1423 ], [ %1418, %1415 ]
  br i1 %1296, label %1489, label %1458

; <label>:1458                                    ; preds = %1454
  %1459 = fmul fast float %928, 0x400187C840000000
  %1460 = fadd fast float %1459, 0xC00EFC2120000000
  %1461 = fmul fast float %1460, %928
  %1462 = fadd fast float %1461, 0x3FE5D16340000000
  %1463 = fmul fast float %1462, %928
  %1464 = fadd fast float %1463, 1.000000e+00
  %1465 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1466 = fsub fast float %1419, %100
  %1467 = fsub fast float %1420, %101
  %1468 = fsub fast float %1421, %102
  %1469 = fsub fast float %1419, %1251
  %1470 = fsub fast float %1420, %1252
  %1471 = fsub fast float %1421, %1253
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1466, float %1467, float %1468, float %1466, float %1467, float %1468)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.dot3.f32(i32 55, float %1469, float %1470, float %1471, float %1469, float %1470, float %1471)  ; Dot3(ax,ay,az,bx,by,bz)
  %1474 = fadd fast float %1473, 0x3EE4F8B580000000
  %1475 = fdiv fast float %1472, %1474
  %1476 = bitcast float %1475 to i32
  %1477 = ashr i32 %1476, 1
  %1478 = add nsw i32 %1477, 532487669
  %1479 = bitcast i32 %1478 to float
  %1480 = fmul fast float %1479, %1465
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1482 = fmul fast float %1481, 0x4009981AE0000000
  %1483 = fsub fast float 0x40111BBD80000000, %1482
  %1484 = fmul fast float %1483, %1481
  %1485 = fadd fast float %1484, 0xC0009F6020000000
  %1486 = fmul fast float %1485, %1481
  %1487 = fadd fast float %1486, 1.000000e+00
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  br label %1492

; <label>:1489                                    ; preds = %1454
  %1490 = icmp ne i32 %1297, -1
  %1491 = zext i1 %1490 to i32
  br label %1492

; <label>:1492                                    ; preds = %1489, %1458
  %1493 = phi float [ %928, %1489 ], [ %1488, %1458 ]
  %1494 = phi i32 [ %1491, %1489 ], [ 0, %1458 ]
  %1495 = fmul float %1493, 5.000000e+00
  %1496 = fsub float 5.000000e+00, %1495
  %1497 = icmp ne i32 %1494, 0
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 3
  %1500 = fadd fast float %1499, %1496
  %1501 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1500)  ; FMax(a,b)
  %1502 = call float @dx.op.unary.f32(i32 6, float %1455)  ; FAbs(value)
  %1503 = call float @dx.op.unary.f32(i32 6, float %1456)  ; FAbs(value)
  %1504 = fadd fast float %1503, %1502
  %1505 = call float @dx.op.unary.f32(i32 6, float %1457)  ; FAbs(value)
  %1506 = fadd fast float %1504, %1505
  %1507 = fcmp fast oeq float %1506, 0.000000e+00
  %1508 = fdiv fast float 1.000000e+00, %1506
  %1509 = select i1 %1507, float 1.000000e+00, float %1508
  %1510 = fmul fast float %1509, %1455
  %1511 = fmul fast float %1509, %1456
  %1512 = call float @dx.op.unary.f32(i32 6, float %1511)  ; FAbs(value)
  %1513 = call float @dx.op.unary.f32(i32 6, float %1510)  ; FAbs(value)
  %1514 = fsub fast float 1.000000e+00, %1512
  %1515 = fsub fast float 1.000000e+00, %1513
  %1516 = fcmp fast oge float %1510, 0.000000e+00
  %1517 = fcmp fast oge float %1511, 0.000000e+00
  %1518 = select i1 %1516, float 1.000000e+00, float -1.000000e+00
  %1519 = select i1 %1517, float 1.000000e+00, float -1.000000e+00
  %1520 = fcmp fast ole float %1457, 0.000000e+00
  %1521 = fmul fast float %1518, %1514
  %1522 = fmul fast float %1519, %1515
  %1523 = select i1 %1520, float %1521, float %1510
  %1524 = select i1 %1520, float %1522, float %1511
  %1525 = fmul fast float %1523, 5.000000e-01
  %1526 = fmul fast float %1524, 5.000000e-01
  %1527 = fadd fast float %1525, 5.000000e-01
  %1528 = fadd fast float %1526, 5.000000e-01
  %1529 = uitofp i32 %1294 to float
  %1530 = call float @dx.op.binary.f32(i32 36, float %1501, float 3.000000e+00)  ; FMin(a,b)
  %1531 = fadd fast float %1530, 2.000000e+00
  %1532 = call float @dx.op.unary.f32(i32 21, float %1531)  ; Exp(value)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1498, 1
  %1534 = fmul fast float %1533, %1532
  %1535 = fmul fast float %1534, 2.000000e+00
  %1536 = fsub fast float 1.000000e+00, %1535
  %1537 = fmul fast float %1527, %1536
  %1538 = fmul fast float %1528, %1536
  %1539 = fadd fast float %1537, %1534
  %1540 = fadd fast float %1538, %1534
  %1541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %25, float %1539, float %1540, float %1529, float undef, i32 0, i32 0, i32 undef, float %1501)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = extractvalue %dx.types.ResRet.f32 %1541, 1
  %1544 = extractvalue %dx.types.ResRet.f32 %1541, 2
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 3
  %1547 = fmul fast float %1546, %1264
  %1548 = call float @dx.op.binary.f32(i32 36, float %1156, float %1547)  ; FMin(a,b)
  %1549 = select i1 %1497, float %1548, float %1547
  %1550 = fmul fast float %1542, %1342
  %1551 = fmul fast float %1550, %1549
  %1552 = fmul fast float %1543, %1342
  %1553 = fmul fast float %1552, %1549
  %1554 = fmul fast float %1544, %1342
  %1555 = fmul fast float %1554, %1549
  %1556 = fadd fast float %1551, %1239
  %1557 = fadd fast float %1553, %1240
  %1558 = fadd fast float %1555, %1241
  %1559 = fsub fast float %1242, %1342
  br label %1344

; <label>:1560                                    ; preds = %1344
  br label %1561

; <label>:1561                                    ; preds = %1560, %1208
  %1562 = phi float [ %1209, %1208 ], [ %1345, %1560 ]
  %1563 = phi float [ %1210, %1208 ], [ %1346, %1560 ]
  %1564 = phi float [ %1211, %1208 ], [ %1347, %1560 ]
  %1565 = phi float [ %1212, %1208 ], [ %1348, %1560 ]
  %1566 = add i32 %1213, 1
  %1567 = icmp ugt i32 %1566, %1205
  br i1 %1567, label %1568, label %1208, !llvm.loop !79

; <label>:1568                                    ; preds = %1561
  br label %1569

; <label>:1569                                    ; preds = %1568, %1152
  %1570 = phi float [ 0.000000e+00, %1152 ], [ %1562, %1568 ]
  %1571 = phi float [ 0.000000e+00, %1152 ], [ %1563, %1568 ]
  %1572 = phi float [ 0.000000e+00, %1152 ], [ %1564, %1568 ]
  %1573 = call float @dx.op.dot3.f32(i32 55, float %1570, float %1571, float %1572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1574 = select i1 %136, float 0.000000e+00, float %1570
  %1575 = select i1 %136, float %1573, float %1571
  %1576 = select i1 %136, float 0.000000e+00, float %1572
  %1577 = fmul fast float %1574, %1131
  %1578 = fmul fast float %1575, %1132
  %1579 = fmul fast float %1576, %1133
  %1580 = call float @dx.op.binary.f32(i32 35, float %1577, float 0.000000e+00)  ; FMax(a,b)
  %1581 = call float @dx.op.binary.f32(i32 35, float %1578, float 0.000000e+00)  ; FMax(a,b)
  %1582 = call float @dx.op.binary.f32(i32 35, float %1579, float 0.000000e+00)  ; FMax(a,b)
  %1583 = fadd fast float %1580, %1118
  %1584 = fadd fast float %1581, %1119
  %1585 = fadd fast float %1582, %1120
  %1586 = fmul fast float %1583, %631
  %1587 = fmul fast float %1584, %631
  %1588 = fmul fast float %1585, %631
  %1589 = fsub fast float 1.000000e+00, %631
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1589, float %1589, float %1589, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = fsub fast float 1.000000e+00, %1590
  %1592 = fmul fast float %975, %941
  %1593 = fsub fast float 1.000000e+00, %976
  %1594 = fsub fast float %1593, %941
  %1595 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1597 = extractvalue %dx.types.CBufRet.f32 %1596, 3
  %1598 = fmul fast float %1597, %1595
  %1599 = fadd fast float %1598, %1592
  %1600 = and i32 %156, 1048576
  %1601 = icmp eq i32 %1600, 0
  br i1 %1601, label %1686, label %1602, !dx.controlflow.hints !81

; <label>:1602                                    ; preds = %1569
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1606 = fmul fast float %1604, %65
  %1607 = fmul fast float %1605, %66
  %1608 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1609 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1610 = select i1 %1000, i32 2, i32 0
  %1611 = or i32 %1610, 1
  %1612 = uitofp i32 %1611 to float
  %1613 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1608, float %1609, float %1612, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = extractvalue %dx.types.ResRet.f32 %1613, 3
  %1618 = add nuw nsw i32 %1610, 2
  %1619 = uitofp i32 %1618 to float
  %1620 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1608, float %1609, float %1619, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.ResRet.f32 %1620, 1
  %1623 = extractvalue %dx.types.ResRet.f32 %1620, 2
  %1624 = extractvalue %dx.types.ResRet.f32 %1620, 3
  %1625 = call float @dx.op.binary.f32(i32 35, float %1615, float %1616)  ; FMax(a,b)
  %1626 = call float @dx.op.binary.f32(i32 35, float %1614, float %1625)  ; FMax(a,b)
  %1627 = call float @dx.op.binary.f32(i32 35, float %1626, float %1617)  ; FMax(a,b)
  %1628 = call float @dx.op.binary.f32(i32 36, float %1622, float %1623)  ; FMin(a,b)
  %1629 = call float @dx.op.binary.f32(i32 36, float %1621, float %1628)  ; FMin(a,b)
  %1630 = call float @dx.op.binary.f32(i32 36, float %1629, float %1624)  ; FMin(a,b)
  %1631 = fmul fast float %1627, 2.550000e+02
  %1632 = fadd fast float %1631, 0x3F70101020000000
  %1633 = fptoui float %1632 to i32
  %1634 = fmul fast float %1630, 2.550000e+02
  %1635 = fadd fast float %1634, 0x3F70101020000000
  %1636 = fptoui float %1635 to i32
  %1637 = icmp ult i32 %1633, %1636
  br i1 %1637, label %1638, label %1679

; <label>:1638                                    ; preds = %1602
  %1639 = fcmp fast ogt float %57, 9.843750e-01
  %1640 = select i1 %1639, float -4.000000e+00, float %1168
  %1641 = call float @dx.op.binary.f32(i32 35, float %1640, float 0.000000e+00)  ; FMax(a,b)
  %1642 = fadd fast float %1165, %1641
  %1643 = fmul fast float %1642, %1166
  %1644 = call float @dx.op.unary.f32(i32 23, float %1643)  ; Log(value)
  %1645 = fmul fast float %1167, %1644
  %1646 = fmul fast float %1645, %1175
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = uitofp i32 %1633 to float
  %1649 = uitofp i32 %1636 to float
  %1650 = fadd fast float %1648, 5.000000e-01
  %1651 = fadd fast float %1649, 5.000000e-01
  %1652 = fmul fast float %1175, %1650
  %1653 = fmul fast float %1175, %1651
  %1654 = fadd fast float %1652, 0x3F0FFB4800000000
  %1655 = fadd fast float %1653, 0xBF0FFB4800000000
  %1656 = call float @dx.op.binary.f32(i32 35, float %1647, float %1654)  ; FMax(a,b)
  %1657 = call float @dx.op.binary.f32(i32 36, float %1656, float %1655)  ; FMin(a,b)
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1661 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1662 = select i1 %1000, float %1661, float 0.000000e+00
  %1663 = fmul fast float %1659, %1657
  %1664 = fadd fast float %1662, %1663
  %1665 = fadd fast float %1662, %1660
  %1666 = fsub fast float %1659, %1660
  %1667 = fadd fast float %1666, %1662
  %1668 = call float @dx.op.binary.f32(i32 35, float %1664, float %1665)  ; FMax(a,b)
  %1669 = call float @dx.op.binary.f32(i32 36, float %1668, float %1667)  ; FMin(a,b)
  %1670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1608, float %1609, float %1669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 1
  %1676 = fmul fast float %1675, %1671
  %1677 = fmul fast float %1675, %1672
  %1678 = fmul fast float %1675, %1673
  br label %1679

; <label>:1679                                    ; preds = %1638, %1602
  %1680 = phi float [ %1676, %1638 ], [ 1.000000e+00, %1602 ]
  %1681 = phi float [ %1677, %1638 ], [ 1.000000e+00, %1602 ]
  %1682 = phi float [ %1678, %1638 ], [ 1.000000e+00, %1602 ]
  %1683 = fmul fast float %1680, %1586
  %1684 = fmul fast float %1681, %1587
  %1685 = fmul fast float %1682, %1588
  br label %1686

; <label>:1686                                    ; preds = %1679, %1569
  %1687 = phi float [ %1683, %1679 ], [ %1586, %1569 ]
  %1688 = phi float [ %1684, %1679 ], [ %1587, %1569 ]
  %1689 = phi float [ %1685, %1679 ], [ %1588, %1569 ]
  %1690 = and i32 %156, 2097152
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1696, label %1692, !dx.controlflow.hints !82

; <label>:1692                                    ; preds = %1686
  %1693 = add i32 %153, 192
  %1694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  br label %1699

; <label>:1696                                    ; preds = %1686
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 3
  br label %1699

; <label>:1699                                    ; preds = %1696, %1692
  %1700 = phi float [ %1695, %1692 ], [ %1698, %1696 ]
  %1701 = fmul fast float %916, %631
  %1702 = fmul fast float %1701, %1012
  %1703 = fmul fast float %1702, %1136
  %1704 = fmul fast float %917, %631
  %1705 = fmul fast float %1704, %1013
  %1706 = fmul fast float %1705, %1136
  %1707 = fmul fast float %918, %631
  %1708 = fmul fast float %1707, %1014
  %1709 = fmul fast float %1708, %1136
  br i1 %995, label %1710, label %1843

; <label>:1710                                    ; preds = %1699
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 3
  %1714 = fmul fast float %1712, %65
  %1715 = fmul fast float %1713, %66
  %1716 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1717 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1718 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1716, float %1717, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = extractvalue %dx.types.ResRet.f32 %1718, 3
  %1723 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %1716, float %1717, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = extractvalue %dx.types.ResRet.f32 %1723, 3
  %1728 = call float @dx.op.binary.f32(i32 35, float %1720, float %1721)  ; FMax(a,b)
  %1729 = call float @dx.op.binary.f32(i32 35, float %1719, float %1728)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 35, float %1729, float %1722)  ; FMax(a,b)
  %1731 = call float @dx.op.binary.f32(i32 36, float %1725, float %1726)  ; FMin(a,b)
  %1732 = call float @dx.op.binary.f32(i32 36, float %1724, float %1731)  ; FMin(a,b)
  %1733 = call float @dx.op.binary.f32(i32 36, float %1732, float %1727)  ; FMin(a,b)
  %1734 = fmul fast float %1730, 2.550000e+02
  %1735 = fadd fast float %1734, 0x3F70101020000000
  %1736 = fptoui float %1735 to i32
  %1737 = fmul fast float %1733, 2.550000e+02
  %1738 = fadd fast float %1737, 0x3F70101020000000
  %1739 = fptoui float %1738 to i32
  %1740 = icmp ult i32 %1736, %1739
  br i1 %1740, label %1741, label %1785

; <label>:1741                                    ; preds = %1710
  %1742 = fcmp fast ogt float %57, 9.843750e-01
  %1743 = select i1 %1742, float -4.000000e+00, float %1168
  %1744 = call float @dx.op.binary.f32(i32 35, float %1743, float 0.000000e+00)  ; FMax(a,b)
  %1745 = fadd fast float %1165, %1744
  %1746 = fmul fast float %1745, %1166
  %1747 = call float @dx.op.unary.f32(i32 23, float %1746)  ; Log(value)
  %1748 = fmul fast float %1167, %1747
  %1749 = fmul fast float %1748, %1175
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  %1751 = uitofp i32 %1736 to float
  %1752 = uitofp i32 %1739 to float
  %1753 = fadd fast float %1751, 5.000000e-01
  %1754 = fadd fast float %1752, 5.000000e-01
  %1755 = fmul fast float %1175, %1753
  %1756 = fmul fast float %1175, %1754
  %1757 = fadd fast float %1755, 0x3F0FFB4800000000
  %1758 = fadd fast float %1756, 0xBF0FFB4800000000
  %1759 = call float @dx.op.binary.f32(i32 35, float %1750, float %1757)  ; FMax(a,b)
  %1760 = call float @dx.op.binary.f32(i32 36, float %1759, float %1758)  ; FMin(a,b)
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1761, 2
  %1764 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1765 = fmul fast float %1762, %1760
  %1766 = fadd fast float %1764, %1765
  %1767 = fadd fast float %1764, %1763
  %1768 = fsub fast float %1762, %1763
  %1769 = fadd fast float %1768, %1764
  %1770 = call float @dx.op.binary.f32(i32 35, float %1766, float %1767)  ; FMax(a,b)
  %1771 = call float @dx.op.binary.f32(i32 36, float %1770, float %1769)  ; FMin(a,b)
  %1772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1716, float %1717, float %1771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %1716, float %1717, float %1771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.ResRet.f32 %1776, 2
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1782 = fmul fast float %1781, %1777
  %1783 = fmul fast float %1781, %1778
  %1784 = fmul fast float %1781, %1779
  br label %1785

; <label>:1785                                    ; preds = %1741, %1710
  %1786 = phi float [ %1773, %1741 ], [ 1.000000e+00, %1710 ]
  %1787 = phi float [ %1774, %1741 ], [ 1.000000e+00, %1710 ]
  %1788 = phi float [ %1775, %1741 ], [ 1.000000e+00, %1710 ]
  %1789 = phi float [ %1782, %1741 ], [ 0.000000e+00, %1710 ]
  %1790 = phi float [ %1783, %1741 ], [ 0.000000e+00, %1710 ]
  %1791 = phi float [ %1784, %1741 ], [ 0.000000e+00, %1710 ]
  %1792 = fmul fast float %1789, %1591
  %1793 = fmul fast float %1790, %1591
  %1794 = fmul fast float %1791, %1591
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = call float @dx.op.dot3.f32(i32 55, float %1792, float %1793, float %1794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1797 = select i1 %136, float %1795, float %1786
  %1798 = select i1 %136, float %1795, float %1787
  %1799 = select i1 %136, float 1.000000e+00, float %1788
  %1800 = select i1 %136, float %1796, float %1792
  %1801 = select i1 %136, float 0.000000e+00, float %1793
  %1802 = select i1 %136, float 0.000000e+00, float %1794
  %1803 = fmul fast float %1797, %1703
  %1804 = fmul fast float %1798, %1706
  %1805 = fmul fast float %1799, %1709
  %1806 = fadd fast float %1803, %1800
  %1807 = fadd fast float %1804, %1801
  %1808 = fadd fast float %1802, %1805
  %1809 = fmul fast float %1797, %1687
  %1810 = fmul fast float %1798, %1688
  %1811 = fmul fast float %1799, %1689
  %1812 = fmul fast float %70, %1712
  %1813 = fmul fast float %72, %1713
  %1814 = fsub fast float 1.000000e+00, %1812
  %1815 = fsub fast float 1.000000e+00, %1813
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1819 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1820 = fmul fast float %1814, %1817
  %1821 = fmul fast float %1814, %1818
  %1822 = fmul fast float %1814, %1819
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1827 = fmul fast float %1815, %1824
  %1828 = fmul fast float %1815, %1825
  %1829 = fmul fast float %1815, %1826
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1833 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1834 = fadd fast float %1827, %1831
  %1835 = fadd fast float %1834, %1820
  %1836 = fadd fast float %1828, %1832
  %1837 = fadd fast float %1836, %1821
  %1838 = fadd fast float %1829, %1833
  %1839 = fadd fast float %1838, %1822
  %1840 = fmul fast float %1835, %992
  %1841 = fmul fast float %1837, %992
  %1842 = fmul fast float %1839, %992
  br label %1843

; <label>:1843                                    ; preds = %1785, %1699
  %1844 = phi float [ %1840, %1785 ], [ %100, %1699 ]
  %1845 = phi float [ %1841, %1785 ], [ %101, %1699 ]
  %1846 = phi float [ %1842, %1785 ], [ %102, %1699 ]
  %1847 = phi float [ %992, %1785 ], [ %58, %1699 ]
  %1848 = phi float [ %1806, %1785 ], [ %1703, %1699 ]
  %1849 = phi float [ %1807, %1785 ], [ %1706, %1699 ]
  %1850 = phi float [ %1808, %1785 ], [ %1709, %1699 ]
  %1851 = phi float [ %1809, %1785 ], [ %1687, %1699 ]
  %1852 = phi float [ %1810, %1785 ], [ %1688, %1699 ]
  %1853 = phi float [ %1811, %1785 ], [ %1689, %1699 ]
  %1854 = phi float [ %1786, %1785 ], [ 1.000000e+00, %1699 ]
  br i1 %1000, label %2910, label %1855

; <label>:1855                                    ; preds = %1843
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1858 = extractvalue %dx.types.CBufRet.f32 %1856, 1
  %1859 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1860 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.CBufRet.f32 %1861, 1
  %1864 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %1865 = extractvalue %dx.types.CBufRet.f32 %1861, 3
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.CBufRet.f32 %1866, 2
  %1870 = extractvalue %dx.types.CBufRet.f32 %1866, 3
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.CBufRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.CBufRet.f32 %1871, 2
  %1875 = extractvalue %dx.types.CBufRet.f32 %1871, 3
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 3
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 3
  %1880 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1881 = extractvalue %dx.types.CBufRet.f32 %1878, 1
  %1882 = extractvalue %dx.types.CBufRet.f32 %1878, 2
  %1883 = fcmp fast olt float %1882, -5.000000e-01
  %1884 = call float @dx.op.dot3.f32(i32 55, float %1844, float %1845, float %1846, float %1844, float %1845, float %1846)  ; Dot3(ax,ay,az,bx,by,bz)
  %1885 = call float @dx.op.unary.f32(i32 25, float %1884)  ; Rsqrt(value)
  %1886 = fmul fast float %1885, %1884
  %1887 = fmul fast float %1885, %1844
  %1888 = fmul fast float %1885, %1845
  %1889 = fmul fast float %1885, %1846
  %1890 = fadd fast float %1886, %1860
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %1857, float %1858, float %1859)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.i32 %1892, 1
  %1894 = and i32 %1893, 1
  %1895 = icmp ne i32 %1894, 0
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 2
  %1898 = fcmp fast ogt float %1897, 0.000000e+00
  %1899 = and i1 %1895, %1898
  br i1 %1899, label %1900, label %2306, !dx.controlflow.hints !83

; <label>:1900                                    ; preds = %1855
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 3
  %1903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1903, 2
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1907 = fsub fast float %1904, %1906
  %1908 = and i32 %1893, 2
  %1909 = extractvalue %dx.types.CBufRet.i32 %1892, 0
  %1910 = call i32 @dx.op.binary.i32(i32 40, i32 %1909, i32 3)  ; UMin(a,b)
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.CBufRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1915 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1916 = fsub fast float %1912, %1914
  %1917 = fsub fast float %1913, %1915
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 0
  %1920 = fcmp fast ogt float %1919, 0.000000e+00
  %1921 = fsub fast float -0.000000e+00, %1916
  %1922 = fsub fast float -0.000000e+00, %1917
  %1923 = call float @dx.op.dot2.f32(i32 54, float %1887, float %1888, float %1887, float %1888)  ; Dot2(ax,ay,bx,by)
  %1924 = call float @dx.op.dot2.f32(i32 54, float %1887, float %1888, float %1921, float %1922)  ; Dot2(ax,ay,bx,by)
  %1925 = fmul fast float %1924, 2.000000e+00
  %1926 = call float @dx.op.dot2.f32(i32 54, float %1921, float %1922, float %1921, float %1922)  ; Dot2(ax,ay,bx,by)
  %1927 = fmul fast float %1919, %1919
  %1928 = fsub fast float %1926, %1927
  %1929 = fmul fast float %1925, %1925
  %1930 = fmul fast float %1923, 4.000000e+00
  %1931 = fmul fast float %1930, %1928
  %1932 = fsub fast float %1929, %1931
  %1933 = fcmp fast ogt float %1932, 0.000000e+00
  br i1 %1933, label %1934, label %1949

; <label>:1934                                    ; preds = %1900
  %1935 = fcmp fast ogt float %1925, 0.000000e+00
  %1936 = call float @dx.op.unary.f32(i32 24, float %1932)  ; Sqrt(value)
  %1937 = fsub fast float -0.000000e+00, %1936
  %1938 = select i1 %1935, float %1936, float %1937
  %1939 = fadd fast float %1938, %1925
  %1940 = fmul float %1939, -5.000000e-01
  %1941 = fdiv fast float %1940, %1923
  %1942 = call float @dx.op.binary.f32(i32 35, float %1941, float 0.000000e+00)  ; FMax(a,b)
  %1943 = call float @dx.op.binary.f32(i32 36, float %1886, float %1942)  ; FMin(a,b)
  %1944 = fdiv fast float %1928, %1940
  %1945 = call float @dx.op.binary.f32(i32 35, float %1944, float 0.000000e+00)  ; FMax(a,b)
  %1946 = call float @dx.op.binary.f32(i32 36, float %1886, float %1945)  ; FMin(a,b)
  %1947 = call float @dx.op.binary.f32(i32 36, float %1943, float %1946)  ; FMin(a,b)
  %1948 = call float @dx.op.binary.f32(i32 35, float %1943, float %1946)  ; FMax(a,b)
  br label %1949

; <label>:1949                                    ; preds = %1934, %1900
  %1950 = phi float [ %1948, %1934 ], [ -1.000000e+00, %1900 ]
  %1951 = phi float [ %1947, %1934 ], [ -1.000000e+00, %1900 ]
  %1952 = phi i1 [ true, %1934 ], [ false, %1900 ]
  %1953 = and i1 %1920, %1952
  br i1 %1953, label %1954, label %1956

; <label>:1954                                    ; preds = %1949
  %1955 = fcmp fast oeq float %1951, %1950
  br i1 %1955, label %2259, label %1957

; <label>:1956                                    ; preds = %1949
  br i1 %1920, label %2259, label %1957

; <label>:1957                                    ; preds = %1956, %1954
  %1958 = phi float [ %1886, %1956 ], [ %1950, %1954 ]
  %1959 = phi float [ 0.000000e+00, %1956 ], [ %1951, %1954 ]
  %1960 = icmp ne i32 %1908, 0
  %1961 = fmul fast float %1958, %1889
  %1962 = fadd fast float %1961, %1902
  %1963 = fmul fast float %1962, %1958
  %1964 = select i1 %1960, float 0.000000e+00, float %1963
  %1965 = fcmp fast oeq float %1889, 0.000000e+00
  %1966 = fdiv fast float %1907, %1889
  %1967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1966)  ; FMax(a,b)
  %1968 = select i1 %1965, float %1958, float %1967
  %1969 = call float @dx.op.binary.f32(i32 36, float %1958, float %1968)  ; FMin(a,b)
  %1970 = fcmp fast ogt float %1889, 0.000000e+00
  %1971 = fcmp fast olt float %1907, 0.000000e+00
  br i1 %1970, label %1972, label %2029

; <label>:1972                                    ; preds = %1957
  %1973 = icmp eq i32 %1908, 0
  br i1 %1971, label %1974, label %2018

; <label>:1974                                    ; preds = %1972
  %1975 = select i1 %1973, float %1958, float 0.000000e+00
  %1976 = fsub fast float -0.000000e+00, %1975
  %1977 = call float @dx.op.unary.f32(i32 6, float %1976)  ; FAbs(value)
  %1978 = fmul fast float %1975, %1889
  %1979 = fadd fast float %1978, %1902
  %1980 = fmul fast float %1977, %1979
  %1981 = fsub fast float %1964, %1980
  %1982 = fsub fast float %1958, %1977
  %1983 = select i1 %1973, float %1982, float 0.000000e+00
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 0
  %1986 = extractvalue %dx.types.CBufRet.f32 %1984, 1
  %1987 = extractvalue %dx.types.CBufRet.f32 %1984, 2
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1992 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 3
  %1995 = call float @dx.op.binary.f32(i32 36, float %1981, float %1994)  ; FMin(a,b)
  %1996 = fmul fast float %1992, %1983
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fsub fast float %1989, %1985
  %1999 = fsub fast float %1990, %1986
  %2000 = fsub fast float %1991, %1987
  %2001 = fmul fast float %1997, %1998
  %2002 = fmul fast float %1997, %1999
  %2003 = fmul fast float %1997, %2000
  %2004 = fadd fast float %2001, %1985
  %2005 = fadd fast float %2002, %1986
  %2006 = fadd fast float %2003, %1987
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 0
  %2009 = extractvalue %dx.types.CBufRet.f32 %2007, 1
  %2010 = fadd fast float %2009, %2008
  %2011 = call float @dx.op.unary.f32(i32 7, float %2010)  ; Saturate(value)
  %2012 = extractvalue %dx.types.CBufRet.f32 %2007, 2
  %2013 = extractvalue %dx.types.CBufRet.f32 %2007, 3
  %2014 = fadd fast float %2013, %2012
  %2015 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2016 = fmul fast float %2011, %1995
  %2017 = fmul fast float %2016, %2015
  br label %2259

; <label>:2018                                    ; preds = %1972
  br i1 %1973, label %2019, label %2040

; <label>:2019                                    ; preds = %2018
  %2020 = call float @dx.op.binary.f32(i32 36, float %1969, float %1959)  ; FMin(a,b)
  %2021 = fsub fast float %1969, %2020
  %2022 = fsub fast float %2021, %1958
  %2023 = call float @dx.op.unary.f32(i32 6, float %2022)  ; FAbs(value)
  %2024 = fadd fast float %2021, %1958
  %2025 = fmul fast float %2024, %1889
  %2026 = fadd fast float %2025, %1902
  %2027 = fmul fast float %2026, %2023
  %2028 = fsub fast float %1964, %2027
  br label %2040

; <label>:2029                                    ; preds = %1957
  br i1 %1971, label %2030, label %2040

; <label>:2030                                    ; preds = %2029
  %2031 = call float @dx.op.binary.f32(i32 35, float %1959, float %1969)  ; FMax(a,b)
  %2032 = icmp eq i32 %1908, 0
  %2033 = select i1 %2032, float %1969, float 0.000000e+00
  %2034 = fsub fast float -0.000000e+00, %2033
  %2035 = call float @dx.op.unary.f32(i32 6, float %2034)  ; FAbs(value)
  %2036 = fmul fast float %2033, %1889
  %2037 = fadd fast float %2036, %1902
  %2038 = fmul fast float %2035, %2037
  %2039 = fsub fast float %1964, %2038
  br label %2040

; <label>:2040                                    ; preds = %2030, %2029, %2019, %2018
  %2041 = phi float [ %1959, %2018 ], [ %1959, %2019 ], [ %2031, %2030 ], [ %1959, %2029 ]
  %2042 = phi float [ 0.000000e+00, %2018 ], [ %2023, %2019 ], [ %2035, %2030 ], [ 0.000000e+00, %2029 ]
  %2043 = phi float [ %1964, %2018 ], [ %2028, %2019 ], [ %2039, %2030 ], [ %1964, %2029 ]
  %2044 = phi float [ %1969, %2018 ], [ %1969, %2019 ], [ %1958, %2030 ], [ %1958, %2029 ]
  %2045 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 0
  store float -1.000000e+00, float* %2045, align 4, !tbaa !84, !noalias !88
  %2046 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 1
  store float -1.000000e+00, float* %2046, align 4, !tbaa !84, !noalias !88
  %2047 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 2
  store float -1.000000e+00, float* %2047, align 4, !tbaa !84, !noalias !88
  %2048 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 0
  store float -1.000000e+00, float* %2048, align 4, !tbaa !84, !noalias !88
  %2049 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 1
  store float -1.000000e+00, float* %2049, align 4, !tbaa !84, !noalias !88
  %2050 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 2
  store float -1.000000e+00, float* %2050, align 4, !tbaa !84, !noalias !88
  %2051 = icmp sgt i32 %1910, 0
  br i1 %2051, label %2052, label %2113

; <label>:2052                                    ; preds = %2040
  br label %2053

; <label>:2053                                    ; preds = %2102, %2052
  %2054 = phi i32 [ %2103, %2102 ], [ 0, %2052 ]
  %2055 = phi i32 [ %2104, %2102 ], [ 0, %2052 ]
  %2056 = add nuw i32 %2055, 171
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2056)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2061 = extractvalue %dx.types.CBufRet.f32 %2060, 0
  %2062 = extractvalue %dx.types.CBufRet.f32 %2060, 1
  %2063 = fsub fast float %2058, %2061
  %2064 = fsub fast float %2059, %2062
  %2065 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  %2066 = fsub fast float -0.000000e+00, %2063
  %2067 = fsub fast float -0.000000e+00, %2064
  %2068 = call float @dx.op.dot2.f32(i32 54, float %1887, float %1888, float %2066, float %2067)  ; Dot2(ax,ay,bx,by)
  %2069 = fmul fast float %2068, 2.000000e+00
  %2070 = call float @dx.op.dot2.f32(i32 54, float %2066, float %2067, float %2066, float %2067)  ; Dot2(ax,ay,bx,by)
  %2071 = fmul fast float %2065, %2065
  %2072 = fsub fast float %2070, %2071
  %2073 = fmul fast float %2069, %2069
  %2074 = fmul fast float %1930, %2072
  %2075 = fsub fast float %2073, %2074
  %2076 = fcmp fast ogt float %2075, 0.000000e+00
  br i1 %2076, label %2077, label %2092

; <label>:2077                                    ; preds = %2053
  %2078 = fcmp fast ogt float %2069, 0.000000e+00
  %2079 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2080 = fsub fast float -0.000000e+00, %2079
  %2081 = select i1 %2078, float %2079, float %2080
  %2082 = fadd fast float %2081, %2069
  %2083 = fmul float %2082, -5.000000e-01
  %2084 = fdiv fast float %2083, %1923
  %2085 = call float @dx.op.binary.f32(i32 35, float %2084, float 0.000000e+00)  ; FMax(a,b)
  %2086 = call float @dx.op.binary.f32(i32 36, float %1958, float %2085)  ; FMin(a,b)
  %2087 = fdiv fast float %2072, %2083
  %2088 = call float @dx.op.binary.f32(i32 35, float %2087, float 0.000000e+00)  ; FMax(a,b)
  %2089 = call float @dx.op.binary.f32(i32 36, float %1958, float %2088)  ; FMin(a,b)
  %2090 = call float @dx.op.binary.f32(i32 36, float %2086, float %2089)  ; FMin(a,b)
  %2091 = call float @dx.op.binary.f32(i32 35, float %2086, float %2089)  ; FMax(a,b)
  br label %2092

; <label>:2092                                    ; preds = %2077, %2053
  %2093 = phi float [ %2091, %2077 ], [ -1.000000e+00, %2053 ]
  %2094 = phi float [ %2090, %2077 ], [ -1.000000e+00, %2053 ]
  %2095 = phi i1 [ true, %2077 ], [ false, %2053 ]
  br i1 %2095, label %2096, label %2102

; <label>:2096                                    ; preds = %2092
  %2097 = call float @dx.op.binary.f32(i32 35, float %2041, float %2094)  ; FMax(a,b)
  %2098 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %2055
  store float %2097, float* %2098, align 4, !tbaa !84, !noalias !88
  %2099 = call float @dx.op.binary.f32(i32 35, float %2041, float %2093)  ; FMax(a,b)
  %2100 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 %2055
  store float %2099, float* %2100, align 4, !tbaa !84, !noalias !88
  %2101 = add nsw i32 %2054, 1
  br label %2102

; <label>:2102                                    ; preds = %2096, %2092
  %2103 = phi i32 [ %2101, %2096 ], [ %2054, %2092 ]
  %2104 = add nuw nsw i32 %2055, 1
  %2105 = icmp eq i32 %2104, %1910
  br i1 %2105, label %2106, label %2053

; <label>:2106                                    ; preds = %2102
  %2107 = load float, float* %2047, align 4, !tbaa !84, !alias.scope !104, !noalias !107
  %2108 = load float, float* %2046, align 4, !tbaa !84, !alias.scope !110, !noalias !111
  %2109 = load float, float* %2045, align 4, !tbaa !84, !alias.scope !112, !noalias !113
  %2110 = load float, float* %2050, align 4, !tbaa !84, !alias.scope !114, !noalias !117
  %2111 = load float, float* %2049, align 4, !tbaa !84, !alias.scope !120, !noalias !121
  %2112 = load float, float* %2048, align 4, !tbaa !84, !alias.scope !122, !noalias !123
  br label %2113

; <label>:2113                                    ; preds = %2106, %2040
  %2114 = phi float [ -1.000000e+00, %2040 ], [ %2112, %2106 ]
  %2115 = phi float [ -1.000000e+00, %2040 ], [ %2111, %2106 ]
  %2116 = phi float [ -1.000000e+00, %2040 ], [ %2110, %2106 ]
  %2117 = phi float [ -1.000000e+00, %2040 ], [ %2109, %2106 ]
  %2118 = phi float [ -1.000000e+00, %2040 ], [ %2108, %2106 ]
  %2119 = phi float [ -1.000000e+00, %2040 ], [ %2107, %2106 ]
  %2120 = phi i32 [ 0, %2040 ], [ %2103, %2106 ]
  %2121 = call float @dx.op.binary.f32(i32 36, float %2118, float %2119)  ; FMin(a,b)
  %2122 = call float @dx.op.binary.f32(i32 36, float %2117, float %2121)  ; FMin(a,b)
  %2123 = call float @dx.op.binary.f32(i32 35, float %2117, float %2118)  ; FMax(a,b)
  %2124 = call float @dx.op.binary.f32(i32 36, float %2123, float %2119)  ; FMin(a,b)
  %2125 = call float @dx.op.binary.f32(i32 36, float %2117, float %2118)  ; FMin(a,b)
  %2126 = call float @dx.op.binary.f32(i32 35, float %2125, float %2124)  ; FMax(a,b)
  %2127 = call float @dx.op.binary.f32(i32 35, float %2118, float %2119)  ; FMax(a,b)
  %2128 = call float @dx.op.binary.f32(i32 35, float %2117, float %2127)  ; FMax(a,b)
  store float %2122, float* %2045, align 4, !tbaa !84, !alias.scope !112, !noalias !113
  store float %2126, float* %2046, align 4, !tbaa !84, !alias.scope !110, !noalias !111
  store float %2128, float* %2047, align 4, !tbaa !84, !alias.scope !104, !noalias !107
  %2129 = call float @dx.op.binary.f32(i32 36, float %2115, float %2116)  ; FMin(a,b)
  %2130 = call float @dx.op.binary.f32(i32 36, float %2114, float %2129)  ; FMin(a,b)
  %2131 = call float @dx.op.binary.f32(i32 35, float %2114, float %2115)  ; FMax(a,b)
  %2132 = call float @dx.op.binary.f32(i32 36, float %2131, float %2116)  ; FMin(a,b)
  %2133 = call float @dx.op.binary.f32(i32 36, float %2114, float %2115)  ; FMin(a,b)
  %2134 = call float @dx.op.binary.f32(i32 35, float %2133, float %2132)  ; FMax(a,b)
  %2135 = call float @dx.op.binary.f32(i32 35, float %2115, float %2116)  ; FMax(a,b)
  %2136 = call float @dx.op.binary.f32(i32 35, float %2114, float %2135)  ; FMax(a,b)
  store float %2130, float* %2048, align 4, !tbaa !84, !alias.scope !122, !noalias !123
  store float %2134, float* %2049, align 4, !tbaa !84, !alias.scope !120, !noalias !121
  store float %2136, float* %2050, align 4, !tbaa !84, !alias.scope !114, !noalias !117
  %2137 = sub nsw i32 3, %2120
  %2138 = icmp sgt i32 %2137, 2
  br i1 %2138, label %2139, label %2177

; <label>:2139                                    ; preds = %2113
  %2140 = icmp eq i32 %1908, 0
  %2141 = fsub fast float %1958, %2042
  %2142 = select i1 %2140, float %2141, float %2042
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 0
  %2145 = extractvalue %dx.types.CBufRet.f32 %2143, 1
  %2146 = extractvalue %dx.types.CBufRet.f32 %2143, 2
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.CBufRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.CBufRet.f32 %2147, 2
  %2151 = extractvalue %dx.types.CBufRet.f32 %2147, 3
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 3
  %2154 = call float @dx.op.binary.f32(i32 36, float %2043, float %2153)  ; FMin(a,b)
  %2155 = fmul fast float %2151, %2142
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = fsub fast float %2148, %2144
  %2158 = fsub fast float %2149, %2145
  %2159 = fsub fast float %2150, %2146
  %2160 = fmul fast float %2156, %2157
  %2161 = fmul fast float %2156, %2158
  %2162 = fmul fast float %2156, %2159
  %2163 = fadd fast float %2160, %2144
  %2164 = fadd fast float %2161, %2145
  %2165 = fadd fast float %2162, %2146
  %2166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2167 = extractvalue %dx.types.CBufRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.CBufRet.f32 %2166, 1
  %2169 = fadd fast float %2168, %2167
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2166, 2
  %2172 = extractvalue %dx.types.CBufRet.f32 %2166, 3
  %2173 = fadd fast float %2172, %2171
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fmul fast float %2170, %2154
  %2176 = fmul fast float %2175, %2174
  br label %2259

; <label>:2177                                    ; preds = %2113
  %2178 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %2137
  %2179 = load float, float* %2178, align 4, !tbaa !84, !noalias !88
  %2180 = fcmp fast olt float %2179, %2044
  %2181 = icmp sgt i32 %2120, 0
  %2182 = and i1 %2181, %2180
  br i1 %2182, label %2183, label %2220

; <label>:2183                                    ; preds = %2177
  br label %2184

; <label>:2184                                    ; preds = %2213, %2183
  %2185 = phi float [ %2214, %2213 ], [ %2042, %2183 ]
  %2186 = phi float [ %2215, %2213 ], [ %2043, %2183 ]
  %2187 = phi float [ %2195, %2213 ], [ %2179, %2183 ]
  %2188 = phi i32 [ %2192, %2213 ], [ %2137, %2183 ]
  %2189 = getelementptr inbounds [3 x float], [3 x float]* %60, i32 0, i32 %2188
  %2190 = load float, float* %2189, align 4, !tbaa !84, !noalias !88
  %2191 = icmp slt i32 %2188, 2
  %2192 = add nsw i32 %2188, 1
  %2193 = getelementptr inbounds [3 x float], [3 x float]* %59, i32 0, i32 %2192
  %2194 = load float, float* %2193, align 4, !tbaa !84, !noalias !88
  %2195 = select i1 %2191, float %2194, float %1958
  %2196 = call float @dx.op.binary.f32(i32 36, float %2195, float %2190)  ; FMin(a,b)
  %2197 = call float @dx.op.binary.f32(i32 36, float %2044, float %2196)  ; FMin(a,b)
  %2198 = icmp eq i32 %1908, 0
  %2199 = fadd fast float %2197, %2187
  %2200 = fmul fast float %2199, %1889
  %2201 = fadd fast float %2200, %1902
  br i1 %2198, label %2207, label %2202

; <label>:2202                                    ; preds = %2184
  %2203 = fsub fast float %2197, %2187
  %2204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2203)  ; FMax(a,b)
  %2205 = fmul fast float %2204, %2201
  %2206 = fadd fast float %2205, %2186
  br label %2213

; <label>:2207                                    ; preds = %2184
  %2208 = fsub fast float %2187, %2197
  %2209 = call float @dx.op.unary.f32(i32 6, float %2208)  ; FAbs(value)
  %2210 = fadd fast float %2209, %2185
  %2211 = fmul fast float %2209, %2201
  %2212 = fsub fast float %2186, %2211
  br label %2213

; <label>:2213                                    ; preds = %2207, %2202
  %2214 = phi float [ %2204, %2202 ], [ %2210, %2207 ]
  %2215 = phi float [ %2206, %2202 ], [ %2212, %2207 ]
  %2216 = fcmp fast olt float %2195, %2044
  %2217 = icmp slt i32 %2192, 3
  %2218 = and i1 %2217, %2216
  br i1 %2218, label %2184, label %2219

; <label>:2219                                    ; preds = %2213
  br label %2220

; <label>:2220                                    ; preds = %2219, %2177
  %2221 = phi float [ %2042, %2177 ], [ %2214, %2219 ]
  %2222 = phi float [ %2043, %2177 ], [ %2215, %2219 ]
  %2223 = fsub fast float %1958, %2221
  %2224 = select i1 %1960, float %2221, float %2223
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 0
  %2227 = extractvalue %dx.types.CBufRet.f32 %2225, 1
  %2228 = extractvalue %dx.types.CBufRet.f32 %2225, 2
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.CBufRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.CBufRet.f32 %2229, 2
  %2233 = extractvalue %dx.types.CBufRet.f32 %2229, 3
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 3
  %2236 = call float @dx.op.binary.f32(i32 36, float %2222, float %2235)  ; FMin(a,b)
  %2237 = fmul fast float %2233, %2224
  %2238 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  %2239 = fsub fast float %2230, %2226
  %2240 = fsub fast float %2231, %2227
  %2241 = fsub fast float %2232, %2228
  %2242 = fmul fast float %2238, %2239
  %2243 = fmul fast float %2238, %2240
  %2244 = fmul fast float %2238, %2241
  %2245 = fadd fast float %2242, %2226
  %2246 = fadd fast float %2243, %2227
  %2247 = fadd fast float %2244, %2228
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.CBufRet.f32 %2248, 1
  %2251 = fadd fast float %2250, %2249
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2248, 2
  %2254 = extractvalue %dx.types.CBufRet.f32 %2248, 3
  %2255 = fadd fast float %2254, %2253
  %2256 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2257 = fmul fast float %2252, %2236
  %2258 = fmul fast float %2257, %2256
  br label %2259

; <label>:2259                                    ; preds = %2220, %2139, %1974, %1956, %1954
  %2260 = phi float [ %1983, %1974 ], [ %2142, %2139 ], [ %2224, %2220 ], [ 0.000000e+00, %1954 ], [ 0.000000e+00, %1956 ]
  %2261 = phi float [ %2017, %1974 ], [ %2176, %2139 ], [ %2258, %2220 ], [ 0.000000e+00, %1954 ], [ 0.000000e+00, %1956 ]
  %2262 = phi float [ %2004, %1974 ], [ %2163, %2139 ], [ %2245, %2220 ], [ 0.000000e+00, %1954 ], [ 0.000000e+00, %1956 ]
  %2263 = phi float [ %2005, %1974 ], [ %2164, %2139 ], [ %2246, %2220 ], [ 0.000000e+00, %1954 ], [ 0.000000e+00, %1956 ]
  %2264 = phi float [ %2006, %1974 ], [ %2165, %2139 ], [ %2247, %2220 ], [ 0.000000e+00, %1954 ], [ 0.000000e+00, %1956 ]
  %2265 = fmul fast float %1897, %2261
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 2
  %2268 = fsub fast float %1904, %2267
  %2269 = fcmp fast olt float %2265, -2.000000e+01
  %2270 = call float @dx.op.unary.f32(i32 21, float %2265)  ; Exp(value)
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 2
  %2273 = extractvalue %dx.types.CBufRet.f32 %2271, 3
  %2274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %2275 = extractvalue %dx.types.CBufRet.f32 %2274, 2
  %2276 = fmul fast float %2273, %2268
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fsub fast float 1.000000e+00, %2277
  %2279 = fmul fast float %1889, 5.000000e-01
  %2280 = fadd fast float %2279, 5.000000e-01
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2278)  ; FMax(a,b)
  %2284 = fdiv fast float %2282, %2283
  %2285 = fsub fast float %2268, %1846
  %2286 = call float @dx.op.unary.f32(i32 6, float %2285)  ; FAbs(value)
  %2287 = fmul fast float %2286, %2272
  %2288 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2289 = fsub fast float 1.000000e+00, %2287
  %2290 = fmul fast float %2289, %2288
  %2291 = fadd fast float %2290, %2287
  %2292 = fmul fast float %2275, %2268
  %2293 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2294 = fsub fast float 1.000000e+00, %2291
  %2295 = fmul fast float %2294, %2293
  %2296 = fadd fast float %2295, %2291
  %2297 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2298 = fadd fast float %2270, -1.000000e+00
  %2299 = select i1 %2269, float -1.000000e+00, float %2298
  %2300 = fmul fast float %2297, %2299
  %2301 = fadd fast float %2300, 1.000000e+00
  %2302 = fsub fast float -0.000000e+00, %2300
  %2303 = fmul fast float %2262, %2302
  %2304 = fmul fast float %2263, %2302
  %2305 = fmul fast float %2264, %2302
  br label %2306

; <label>:2306                                    ; preds = %2259, %1855
  %2307 = phi float [ %2260, %2259 ], [ 0.000000e+00, %1855 ]
  %2308 = phi float [ %2301, %2259 ], [ 1.000000e+00, %1855 ]
  %2309 = phi float [ %2303, %2259 ], [ 0.000000e+00, %1855 ]
  %2310 = phi float [ %2304, %2259 ], [ 0.000000e+00, %1855 ]
  %2311 = phi float [ %2305, %2259 ], [ 0.000000e+00, %1855 ]
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 1
  %2314 = fsub fast float 1.000000e+00, %2308
  %2315 = fmul fast float %2314, %1890
  %2316 = fmul fast float %2315, %2313
  %2317 = fsub fast float %1890, %2316
  br i1 %1883, label %2318, label %2347, !dx.controlflow.hints !124

; <label>:2318                                    ; preds = %2306
  %2319 = fmul fast float %1891, %1880
  %2320 = fadd fast float %2319, %1881
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2322 = fmul fast float %1862, %2317
  %2323 = fsub fast float -0.000000e+00, %2322
  %2324 = fmul fast float %1863, %2317
  %2325 = fsub fast float -0.000000e+00, %2324
  %2326 = call float @dx.op.unary.f32(i32 21, float %2323)  ; Exp(value)
  %2327 = call float @dx.op.unary.f32(i32 21, float %2325)  ; Exp(value)
  %2328 = call float @dx.op.binary.f32(i32 35, float %1870, float %2326)  ; FMax(a,b)
  %2329 = call float @dx.op.binary.f32(i32 35, float %1870, float %2327)  ; FMax(a,b)
  %2330 = fsub fast float %2329, %2328
  %2331 = fmul fast float %2330, %2321
  %2332 = fadd fast float %2331, %2328
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2334 = fsub fast float %1867, %1872
  %2335 = fsub fast float %1868, %1873
  %2336 = fsub fast float %1869, %1874
  %2337 = fmul fast float %2321, %2334
  %2338 = fmul fast float %2321, %2335
  %2339 = fmul fast float %2321, %2336
  %2340 = fadd fast float %2337, %1872
  %2341 = fadd fast float %2338, %1873
  %2342 = fadd fast float %2339, %1874
  %2343 = fsub fast float 1.000000e+00, %2333
  %2344 = fmul fast float %2343, %2340
  %2345 = fmul fast float %2343, %2341
  %2346 = fmul fast float %2343, %2342
  br label %2406

; <label>:2347                                    ; preds = %2306
  %2348 = fmul fast float %2317, %1879
  %2349 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2350 = fsub fast float 2.000000e+00, %2349
  %2351 = fmul fast float %2349, 9.921875e-01
  %2352 = fmul fast float %2351, %2350
  %2353 = fadd fast float %2352, 3.906250e-03
  %2354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %2353, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2355 = extractvalue %dx.types.ResRet.f32 %2354, 0
  %2356 = fsub fast float %2349, %2355
  %2357 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2356)  ; FMax(a,b)
  %2358 = fmul fast float %1865, %1846
  %2359 = call float @dx.op.unary.f32(i32 6, float %2358)  ; FAbs(value)
  %2360 = fcmp fast ogt float %2359, 0x3EB0C6F7A0000000
  br i1 %2360, label %2361, label %2367, !dx.controlflow.hints !125

; <label>:2361                                    ; preds = %2347
  %2362 = fmul fast float %2358, 0xBFF7154760000000
  %2363 = call float @dx.op.unary.f32(i32 21, float %2362)  ; Exp(value)
  %2364 = fsub fast float 1.000000e+00, %2363
  %2365 = fdiv fast float %2364, %2358
  %2366 = fmul fast float %2365, %1875
  br label %2367

; <label>:2367                                    ; preds = %2361, %2347
  %2368 = phi float [ %2366, %2361 ], [ %1875, %2347 ]
  %2369 = fadd fast float %2368, %1877
  %2370 = fmul fast float %2369, %2357
  %2371 = fmul fast float %1862, %2370
  %2372 = fsub fast float -0.000000e+00, %2371
  %2373 = fmul fast float %1863, %2370
  %2374 = fsub fast float -0.000000e+00, %2373
  %2375 = fmul fast float %1864, %2370
  %2376 = fsub fast float -0.000000e+00, %2375
  %2377 = call float @dx.op.unary.f32(i32 21, float %2372)  ; Exp(value)
  %2378 = call float @dx.op.unary.f32(i32 21, float %2374)  ; Exp(value)
  %2379 = call float @dx.op.unary.f32(i32 21, float %2376)  ; Exp(value)
  %2380 = fmul fast float %1891, %1891
  %2381 = fadd fast float %2380, 1.000000e+00
  %2382 = fmul fast float %2381, 0x3FAE8EC8A0000000
  %2383 = fmul fast float %2382, %1872
  %2384 = fmul fast float %2382, %1873
  %2385 = fmul fast float %2382, %1874
  %2386 = fmul fast float %1891, %1870
  %2387 = fsub fast float 1.000000e+00, %2386
  %2388 = fmul fast float %1870, %1870
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, 0x3FB45F3060000000
  %2391 = fmul fast float %2387, %2387
  %2392 = fdiv fast float 1.000000e+00, %2391
  %2393 = fmul fast float %2390, %2392
  %2394 = fmul fast float %2393, %1867
  %2395 = fmul fast float %2393, %1868
  %2396 = fmul fast float %2393, %1869
  %2397 = fadd fast float %2394, %2383
  %2398 = fadd fast float %2395, %2384
  %2399 = fadd fast float %2396, %2385
  %2400 = fsub fast float 1.000000e+00, %2377
  %2401 = fsub fast float 1.000000e+00, %2378
  %2402 = fsub fast float 1.000000e+00, %2379
  %2403 = fmul fast float %2397, %2400
  %2404 = fmul fast float %2398, %2401
  %2405 = fmul fast float %2399, %2402
  br label %2406

; <label>:2406                                    ; preds = %2367, %2318
  %2407 = phi float [ %2344, %2318 ], [ %2403, %2367 ]
  %2408 = phi float [ %2345, %2318 ], [ %2404, %2367 ]
  %2409 = phi float [ %2346, %2318 ], [ %2405, %2367 ]
  %2410 = phi float [ %2333, %2318 ], [ %2377, %2367 ]
  %2411 = phi float [ %2333, %2318 ], [ %2378, %2367 ]
  %2412 = phi float [ %2333, %2318 ], [ %2379, %2367 ]
  br i1 %1899, label %2413, label %2611, !dx.controlflow.hints !126

; <label>:2413                                    ; preds = %2406
  %2414 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2415 = fmul fast float %2414, %2314
  %2416 = fsub fast float %2309, %2407
  %2417 = fsub fast float %2310, %2408
  %2418 = fsub fast float %2311, %2409
  %2419 = fmul fast float %2415, %2416
  %2420 = fmul fast float %2415, %2417
  %2421 = fmul fast float %2415, %2418
  %2422 = fadd fast float %2419, %2407
  %2423 = fadd fast float %2420, %2408
  %2424 = fadd fast float %2421, %2409
  %2425 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2410)  ; FMax(a,b)
  %2426 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2411)  ; FMax(a,b)
  %2427 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2412)  ; FMax(a,b)
  %2428 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %2308)  ; FMax(a,b)
  %2429 = call float @dx.op.binary.f32(i32 35, float %2307, float %2317)  ; FMax(a,b)
  %2430 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %2429)  ; FMax(a,b)
  %2431 = fdiv fast float %2307, %2430
  %2432 = call float @dx.op.unary.f32(i32 7, float %2431)  ; Saturate(value)
  %2433 = fdiv fast float %2317, %2430
  %2434 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2435 = fcmp fast une float %2428, 1.000000e+00
  br i1 %2435, label %2436, label %2449, !dx.controlflow.hints !127

; <label>:2436                                    ; preds = %2413
  %2437 = call float @dx.op.unary.f32(i32 23, float %2428)  ; Log(value)
  %2438 = fmul fast float %2437, 0x3FE62E4300000000
  %2439 = fmul fast float %2309, %2438
  %2440 = fsub fast float -0.000000e+00, %2439
  %2441 = fmul fast float %2310, %2438
  %2442 = fsub fast float -0.000000e+00, %2441
  %2443 = fmul fast float %2311, %2438
  %2444 = fsub fast float -0.000000e+00, %2443
  %2445 = fsub fast float 1.000000e+00, %2428
  %2446 = fdiv fast float %2440, %2445
  %2447 = fdiv fast float %2442, %2445
  %2448 = fdiv fast float %2444, %2445
  br label %2449

; <label>:2449                                    ; preds = %2436, %2413
  %2450 = phi float [ %2446, %2436 ], [ %2309, %2413 ]
  %2451 = phi float [ %2447, %2436 ], [ %2310, %2413 ]
  %2452 = phi float [ %2448, %2436 ], [ %2311, %2413 ]
  %2453 = phi float [ %2438, %2436 ], [ 0.000000e+00, %2413 ]
  %2454 = fcmp fast une float %2425, 1.000000e+00
  br i1 %2454, label %2455, label %2462, !dx.controlflow.hints !128

; <label>:2455                                    ; preds = %2449
  %2456 = call float @dx.op.unary.f32(i32 23, float %2425)  ; Log(value)
  %2457 = fmul fast float %2456, 0x3FE62E4300000000
  %2458 = fmul fast float %2422, %2457
  %2459 = fsub fast float -0.000000e+00, %2458
  %2460 = fsub fast float 1.000000e+00, %2425
  %2461 = fdiv fast float %2459, %2460
  br label %2462

; <label>:2462                                    ; preds = %2455, %2449
  %2463 = phi float [ %2461, %2455 ], [ %2422, %2449 ]
  %2464 = phi float [ %2457, %2455 ], [ 0.000000e+00, %2449 ]
  %2465 = fcmp fast une float %2426, 1.000000e+00
  br i1 %2465, label %2466, label %2473, !dx.controlflow.hints !128

; <label>:2466                                    ; preds = %2462
  %2467 = call float @dx.op.unary.f32(i32 23, float %2426)  ; Log(value)
  %2468 = fmul fast float %2467, 0x3FE62E4300000000
  %2469 = fmul fast float %2423, %2468
  %2470 = fsub fast float -0.000000e+00, %2469
  %2471 = fsub fast float 1.000000e+00, %2426
  %2472 = fdiv fast float %2470, %2471
  br label %2473

; <label>:2473                                    ; preds = %2466, %2462
  %2474 = phi float [ %2472, %2466 ], [ %2423, %2462 ]
  %2475 = phi float [ %2468, %2466 ], [ 0.000000e+00, %2462 ]
  %2476 = fcmp fast une float %2427, 1.000000e+00
  br i1 %2476, label %2477, label %2484, !dx.controlflow.hints !128

; <label>:2477                                    ; preds = %2473
  %2478 = call float @dx.op.unary.f32(i32 23, float %2427)  ; Log(value)
  %2479 = fmul fast float %2478, 0x3FE62E4300000000
  %2480 = fmul fast float %2424, %2479
  %2481 = fsub fast float -0.000000e+00, %2480
  %2482 = fsub fast float 1.000000e+00, %2427
  %2483 = fdiv fast float %2481, %2482
  br label %2484

; <label>:2484                                    ; preds = %2477, %2473
  %2485 = phi float [ %2483, %2477 ], [ %2424, %2473 ]
  %2486 = phi float [ %2479, %2477 ], [ 0.000000e+00, %2473 ]
  %2487 = fmul fast float %2450, %2434
  %2488 = fmul fast float %2451, %2434
  %2489 = fmul fast float %2452, %2434
  %2490 = fmul fast float %2453, %2434
  %2491 = fmul fast float %2463, %2432
  %2492 = fmul fast float %2474, %2432
  %2493 = fmul fast float %2485, %2432
  %2494 = fmul fast float %2464, %2432
  %2495 = fmul fast float %2475, %2432
  %2496 = fmul fast float %2486, %2432
  %2497 = fadd fast float %2491, %2487
  %2498 = fadd fast float %2492, %2488
  %2499 = fadd fast float %2493, %2489
  %2500 = fadd fast float %2494, %2490
  %2501 = fadd fast float %2495, %2490
  %2502 = fadd fast float %2496, %2490
  %2503 = fcmp fast une float %2500, 0.000000e+00
  br i1 %2503, label %2504, label %2511, !dx.controlflow.hints !129

; <label>:2504                                    ; preds = %2484
  %2505 = fmul fast float %2500, 0x3FF7154760000000
  %2506 = call float @dx.op.unary.f32(i32 21, float %2505)  ; Exp(value)
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2497, %2507
  %2509 = fsub fast float -0.000000e+00, %2508
  %2510 = fdiv fast float %2509, %2500
  br label %2511

; <label>:2511                                    ; preds = %2504, %2484
  %2512 = phi float [ %2506, %2504 ], [ 1.000000e+00, %2484 ]
  %2513 = phi float [ %2510, %2504 ], [ %2497, %2484 ]
  %2514 = fcmp fast une float %2501, 0.000000e+00
  br i1 %2514, label %2515, label %2522, !dx.controlflow.hints !129

; <label>:2515                                    ; preds = %2511
  %2516 = fmul fast float %2501, 0x3FF7154760000000
  %2517 = call float @dx.op.unary.f32(i32 21, float %2516)  ; Exp(value)
  %2518 = fsub fast float 1.000000e+00, %2517
  %2519 = fmul fast float %2498, %2518
  %2520 = fsub fast float -0.000000e+00, %2519
  %2521 = fdiv fast float %2520, %2501
  br label %2522

; <label>:2522                                    ; preds = %2515, %2511
  %2523 = phi float [ %2517, %2515 ], [ 1.000000e+00, %2511 ]
  %2524 = phi float [ %2521, %2515 ], [ %2498, %2511 ]
  %2525 = fcmp fast une float %2502, 0.000000e+00
  br i1 %2525, label %2526, label %2533, !dx.controlflow.hints !129

; <label>:2526                                    ; preds = %2522
  %2527 = fmul fast float %2502, 0x3FF7154760000000
  %2528 = call float @dx.op.unary.f32(i32 21, float %2527)  ; Exp(value)
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2499, %2529
  %2531 = fsub fast float -0.000000e+00, %2530
  %2532 = fdiv fast float %2531, %2502
  br label %2533

; <label>:2533                                    ; preds = %2526, %2522
  %2534 = phi float [ %2528, %2526 ], [ 1.000000e+00, %2522 ]
  %2535 = phi float [ %2532, %2526 ], [ %2499, %2522 ]
  %2536 = fcmp fast ogt float %2432, %2434
  br i1 %2536, label %2537, label %2557

; <label>:2537                                    ; preds = %2533
  %2538 = fsub fast float 1.000000e+00, %2434
  %2539 = fmul fast float %2450, %2538
  %2540 = fmul fast float %2451, %2538
  %2541 = fmul fast float %2452, %2538
  %2542 = fmul fast float %2453, %2538
  %2543 = fcmp fast une float %2542, 0.000000e+00
  br i1 %2543, label %2544, label %2595, !dx.controlflow.hints !130

; <label>:2544                                    ; preds = %2537
  %2545 = fmul fast float %2542, 0x3FF7154760000000
  %2546 = call float @dx.op.unary.f32(i32 21, float %2545)  ; Exp(value)
  %2547 = fsub fast float 1.000000e+00, %2546
  %2548 = fmul fast float %2539, %2547
  %2549 = fsub fast float -0.000000e+00, %2548
  %2550 = fmul fast float %2540, %2547
  %2551 = fsub fast float -0.000000e+00, %2550
  %2552 = fmul fast float %2541, %2547
  %2553 = fsub fast float -0.000000e+00, %2552
  %2554 = fdiv fast float %2549, %2542
  %2555 = fdiv fast float %2551, %2542
  %2556 = fdiv fast float %2553, %2542
  br label %2595

; <label>:2557                                    ; preds = %2533
  %2558 = fsub fast float 1.000000e+00, %2432
  %2559 = fmul fast float %2463, %2558
  %2560 = fmul fast float %2474, %2558
  %2561 = fmul fast float %2485, %2558
  %2562 = fmul fast float %2464, %2558
  %2563 = fmul fast float %2475, %2558
  %2564 = fmul fast float %2486, %2558
  %2565 = fcmp fast une float %2562, 0.000000e+00
  br i1 %2565, label %2566, label %2573, !dx.controlflow.hints !129

; <label>:2566                                    ; preds = %2557
  %2567 = fmul fast float %2562, 0x3FF7154760000000
  %2568 = call float @dx.op.unary.f32(i32 21, float %2567)  ; Exp(value)
  %2569 = fsub fast float 1.000000e+00, %2568
  %2570 = fmul fast float %2559, %2569
  %2571 = fsub fast float -0.000000e+00, %2570
  %2572 = fdiv fast float %2571, %2562
  br label %2573

; <label>:2573                                    ; preds = %2566, %2557
  %2574 = phi float [ %2572, %2566 ], [ %2559, %2557 ]
  %2575 = phi float [ %2568, %2566 ], [ 1.000000e+00, %2557 ]
  %2576 = fcmp fast une float %2563, 0.000000e+00
  br i1 %2576, label %2577, label %2584, !dx.controlflow.hints !129

; <label>:2577                                    ; preds = %2573
  %2578 = fmul fast float %2563, 0x3FF7154760000000
  %2579 = call float @dx.op.unary.f32(i32 21, float %2578)  ; Exp(value)
  %2580 = fsub fast float 1.000000e+00, %2579
  %2581 = fmul fast float %2560, %2580
  %2582 = fsub fast float -0.000000e+00, %2581
  %2583 = fdiv fast float %2582, %2563
  br label %2584

; <label>:2584                                    ; preds = %2577, %2573
  %2585 = phi float [ %2583, %2577 ], [ %2560, %2573 ]
  %2586 = phi float [ %2579, %2577 ], [ 1.000000e+00, %2573 ]
  %2587 = fcmp fast une float %2564, 0.000000e+00
  br i1 %2587, label %2588, label %2595, !dx.controlflow.hints !129

; <label>:2588                                    ; preds = %2584
  %2589 = fmul fast float %2564, 0x3FF7154760000000
  %2590 = call float @dx.op.unary.f32(i32 21, float %2589)  ; Exp(value)
  %2591 = fsub fast float 1.000000e+00, %2590
  %2592 = fmul fast float %2561, %2591
  %2593 = fsub fast float -0.000000e+00, %2592
  %2594 = fdiv fast float %2593, %2564
  br label %2595

; <label>:2595                                    ; preds = %2588, %2584, %2544, %2537
  %2596 = phi float [ %2594, %2588 ], [ %2556, %2544 ], [ %2541, %2537 ], [ %2561, %2584 ]
  %2597 = phi float [ %2585, %2588 ], [ %2555, %2544 ], [ %2540, %2537 ], [ %2585, %2584 ]
  %2598 = phi float [ %2574, %2588 ], [ %2554, %2544 ], [ %2539, %2537 ], [ %2574, %2584 ]
  %2599 = phi float [ %2590, %2588 ], [ %2546, %2544 ], [ 1.000000e+00, %2537 ], [ 1.000000e+00, %2584 ]
  %2600 = phi float [ %2586, %2588 ], [ %2546, %2544 ], [ 1.000000e+00, %2537 ], [ %2586, %2584 ]
  %2601 = phi float [ %2575, %2588 ], [ %2546, %2544 ], [ 1.000000e+00, %2537 ], [ %2575, %2584 ]
  %2602 = fmul fast float %2601, %2513
  %2603 = fmul fast float %2600, %2524
  %2604 = fmul fast float %2599, %2535
  %2605 = fadd fast float %2602, %2598
  %2606 = fadd fast float %2603, %2597
  %2607 = fadd fast float %2604, %2596
  %2608 = fmul fast float %2601, %2512
  %2609 = fmul fast float %2600, %2523
  %2610 = fmul fast float %2599, %2534
  br label %2611

; <label>:2611                                    ; preds = %2595, %2406
  %2612 = phi float [ %2610, %2595 ], [ %2412, %2406 ]
  %2613 = phi float [ %2609, %2595 ], [ %2411, %2406 ]
  %2614 = phi float [ %2608, %2595 ], [ %2410, %2406 ]
  %2615 = phi float [ %2607, %2595 ], [ %2409, %2406 ]
  %2616 = phi float [ %2606, %2595 ], [ %2408, %2406 ]
  %2617 = phi float [ %2605, %2595 ], [ %2407, %2406 ]
  %2618 = fmul fast float %2617, %1591
  %2619 = fmul fast float %2616, %1591
  %2620 = fmul fast float %2615, %1591
  %2621 = fmul fast float %2614, %1854
  %2622 = call float @dx.op.dot3.f32(i32 55, float %2614, float %2613, float %2612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2623 = call float @dx.op.dot3.f32(i32 55, float %2618, float %2619, float %2620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2624 = select i1 %136, float %2622, float %2614
  %2625 = select i1 %136, float %2622, float %2613
  %2626 = select i1 %136, float 1.000000e+00, float %2612
  %2627 = select i1 %136, float %2623, float %2618
  %2628 = select i1 %136, float 0.000000e+00, float %2619
  %2629 = select i1 %136, float 0.000000e+00, float %2620
  %2630 = fmul fast float %2624, %1848
  %2631 = fmul fast float %2625, %1849
  %2632 = fmul fast float %2626, %1850
  %2633 = fadd fast float %2630, %2627
  %2634 = fadd fast float %2631, %2628
  %2635 = fadd fast float %2629, %2632
  %2636 = fmul fast float %2624, %1851
  %2637 = fmul fast float %2625, %1852
  %2638 = fmul fast float %2626, %1853
  %2639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.i32 %2639, 0
  %2641 = icmp eq i32 %2640, 0
  br i1 %2641, label %2910, label %2642, !dx.controlflow.hints !131

; <label>:2642                                    ; preds = %2611
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 2
  %2645 = extractvalue %dx.types.CBufRet.f32 %2643, 3
  %2646 = fmul fast float %2644, %65
  %2647 = fmul fast float %2645, %66
  %2648 = fmul fast float %2646, 2.000000e+00
  %2649 = fmul fast float %2647, 2.000000e+00
  %2650 = fsub fast float 1.000000e+00, %2648
  %2651 = fsub fast float 1.000000e+00, %2649
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = extractvalue %dx.types.CBufRet.f32 %2652, 1
  %2655 = extractvalue %dx.types.CBufRet.f32 %2652, 2
  %2656 = fmul fast float %2650, %2653
  %2657 = fmul fast float %2650, %2654
  %2658 = fmul fast float %2650, %2655
  %2659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2660 = extractvalue %dx.types.CBufRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.CBufRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.CBufRet.f32 %2659, 2
  %2663 = fmul fast float %2651, %2660
  %2664 = fmul fast float %2651, %2661
  %2665 = fmul fast float %2651, %2662
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2670 = fadd fast float %2663, %2667
  %2671 = fadd fast float %2670, %2656
  %2672 = fadd fast float %2664, %2668
  %2673 = fadd fast float %2672, %2657
  %2674 = fadd fast float %2665, %2669
  %2675 = fadd fast float %2674, %2658
  %2676 = fmul fast float %2671, %1847
  %2677 = fmul fast float %2673, %1847
  %2678 = fmul fast float %2675, %1847
  %2679 = fmul fast float %2676, %2676
  %2680 = fmul fast float %2677, %2677
  %2681 = fadd fast float %2679, %2680
  %2682 = fmul fast float %2678, %2678
  %2683 = fadd fast float %2681, %2682
  %2684 = call float @dx.op.unary.f32(i32 24, float %2683)  ; Sqrt(value)
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2687 = fsub fast float %2684, %2686
  %2688 = extractvalue %dx.types.CBufRet.f32 %2685, 2
  %2689 = fmul fast float %2687, %2688
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2691 = fadd fast float %2690, -5.000000e-01
  %2692 = fmul fast float %2691, 2.000000e+00
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2695 = call float @dx.op.binary.f32(i32 36, float %2694, float %2692)  ; FMin(a,b)
  %2696 = fsub fast float -0.000000e+00, %2694
  %2697 = fcmp fast ogt float %2695, %2696
  br i1 %2697, label %2698, label %2910, !dx.controlflow.hints !132

; <label>:2698                                    ; preds = %2642
  %2699 = fmul fast float %2695, 5.000000e-01
  %2700 = fadd fast float %2699, 5.000000e-01
  %2701 = call float @dx.op.unary.f32(i32 22, float %2700)  ; Frc(value)
  %2702 = call float @dx.op.unary.f32(i32 27, float %2701)  ; Round_ni(value)
  %2703 = call float @dx.op.unary.f32(i32 22, float %2701)  ; Frc(value)
  %2704 = fmul fast float %2703, 2.000000e+00
  %2705 = fadd fast float %2704, -1.000000e+00
  %2706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %26, float %2646, float %2647, float %2702, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2707 = extractvalue %dx.types.ResRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.ResRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.ResRet.f32 %2706, 2
  %2710 = extractvalue %dx.types.ResRet.f32 %2706, 3
  %2711 = fadd fast float %2707, -5.000000e-01
  %2712 = fadd fast float %2709, -5.000000e-01
  %2713 = fmul fast float %2711, 0xBFD5555560000000
  %2714 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2712, float %2713)  ; FMad(a,b,c)
  %2715 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2708, float 0.000000e+00)  ; FMad(a,b,c)
  %2716 = fadd fast float %2715, %2710
  %2717 = fmul fast float %2711, -7.500000e-01
  %2718 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2712, float %2717)  ; FMad(a,b,c)
  %2719 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2708, float 0.000000e+00)  ; FMad(a,b,c)
  %2720 = fadd fast float %2719, %2710
  %2721 = call float @dx.op.binary.f32(i32 35, float %2714, float -1.000000e+00)  ; FMax(a,b)
  %2722 = call float @dx.op.binary.f32(i32 35, float %2716, float -1.000000e+00)  ; FMax(a,b)
  %2723 = call float @dx.op.binary.f32(i32 35, float %2718, float -1.000000e+00)  ; FMax(a,b)
  %2724 = call float @dx.op.binary.f32(i32 35, float %2720, float -1.000000e+00)  ; FMax(a,b)
  %2725 = call float @dx.op.binary.f32(i32 36, float %2721, float 1.000000e+00)  ; FMin(a,b)
  %2726 = call float @dx.op.binary.f32(i32 36, float %2722, float 1.000000e+00)  ; FMin(a,b)
  %2727 = call float @dx.op.binary.f32(i32 36, float %2723, float 1.000000e+00)  ; FMin(a,b)
  %2728 = call float @dx.op.binary.f32(i32 36, float %2724, float 1.000000e+00)  ; FMin(a,b)
  %2729 = fcmp fast olt float %2725, 0x3FEFFF8020000000
  br i1 %2729, label %2730, label %2845, !dx.controlflow.hints !133

; <label>:2730                                    ; preds = %2698
  %2731 = extractvalue %dx.types.CBufRet.f32 %2693, 3
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2735 = extractvalue %dx.types.CBufRet.f32 %2732, 2
  %2736 = extractvalue %dx.types.CBufRet.f32 %2732, 3
  %2737 = fsub fast float %2733, %2725
  %2738 = fsub fast float %2734, %2726
  %2739 = fsub fast float %2735, %2727
  %2740 = fsub fast float %2736, %2728
  %2741 = fmul fast float %2737, %2731
  %2742 = fmul fast float %2738, %2731
  %2743 = fmul fast float %2739, %2731
  %2744 = fmul fast float %2740, %2731
  %2745 = fadd fast float %2741, %2725
  %2746 = fadd fast float %2742, %2726
  %2747 = fsub fast float -0.000000e+00, %2746
  %2748 = fadd fast float %2743, %2727
  %2749 = fadd fast float %2744, %2728
  %2750 = fmul fast float %2745, %2745
  %2751 = fsub fast float %2746, %2750
  %2752 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2751)  ; FMax(a,b)
  %2753 = fdiv fast float 1.000000e+00, %2752
  %2754 = fmul fast float %2746, %2745
  %2755 = fsub fast float %2748, %2754
  %2756 = fsub fast float %2705, %2745
  %2757 = fmul fast float %2705, %2705
  %2758 = fsub fast float %2757, %2746
  %2759 = fmul fast float %2756, %2753
  %2760 = fmul fast float %2759, %2755
  %2761 = fsub fast float %2758, %2760
  %2762 = fmul fast float %2746, %2746
  %2763 = fsub fast float %2749, %2762
  %2764 = fmul fast float %2755, %2755
  %2765 = fmul fast float %2764, %2753
  %2766 = fsub fast float %2763, %2765
  %2767 = fdiv fast float %2761, %2766
  %2768 = fmul fast float %2755, %2767
  %2769 = fsub fast float %2756, %2768
  %2770 = fmul fast float %2769, %2753
  %2771 = fmul fast float %2770, %2745
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2746, %2767
  %2774 = fsub fast float %2772, %2773
  %2775 = fmul fast float %2770, %2770
  %2776 = fmul fast float %2767, 4.000000e+00
  %2777 = fmul fast float %2776, %2774
  %2778 = fsub fast float %2775, %2777
  %2779 = call float @dx.op.unary.f32(i32 24, float %2778)  ; Sqrt(value)
  %2780 = fcmp fast oge float %2770, 0.000000e+00
  %2781 = fsub fast float -0.000000e+00, %2779
  %2782 = select i1 %2780, float %2781, float %2779
  %2783 = fsub fast float %2782, %2770
  %2784 = fdiv fast float %2783, %2767
  %2785 = fdiv fast float %2774, %2783
  %2786 = fmul fast float %2784, 5.000000e-01
  %2787 = fmul fast float %2785, 2.000000e+00
  %2788 = select i1 %2780, float %2786, float %2787
  %2789 = select i1 %2780, float %2787, float %2786
  %2790 = call float @dx.op.binary.f32(i32 35, float %2788, float %2789)  ; FMax(a,b)
  %2791 = call float @dx.op.binary.f32(i32 36, float %2788, float %2789)  ; FMin(a,b)
  %2792 = fcmp fast ogt float %2705, %2791
  br i1 %2792, label %2793, label %2803

; <label>:2793                                    ; preds = %2730
  %2794 = fsub fast float %2705, %2791
  %2795 = fsub fast float %2790, %2791
  %2796 = fmul fast float %2794, %2795
  %2797 = fmul fast float %2790, %2705
  %2798 = fadd fast float %2790, %2705
  %2799 = fmul fast float %2798, %2745
  %2800 = fadd fast float %2797, %2746
  %2801 = fsub fast float %2800, %2799
  %2802 = fdiv fast float %2801, %2796
  br label %2803

; <label>:2803                                    ; preds = %2793, %2730
  %2804 = phi float [ %2802, %2793 ], [ 0.000000e+00, %2730 ]
  %2805 = fcmp fast ogt float %2705, %2790
  %2806 = fsub fast float %2705, %2790
  br i1 %2805, label %2807, label %2817

; <label>:2807                                    ; preds = %2803
  %2808 = fsub fast float %2790, %2791
  %2809 = fmul fast float %2808, %2806
  %2810 = fmul fast float %2791, %2705
  %2811 = fadd fast float %2791, %2705
  %2812 = fmul fast float %2811, %2745
  %2813 = fsub fast float %2747, %2810
  %2814 = fadd fast float %2813, %2812
  %2815 = fdiv fast float %2814, %2809
  %2816 = fadd fast float %2815, %2804
  br label %2817

; <label>:2817                                    ; preds = %2807, %2803
  %2818 = phi float [ %2816, %2807 ], [ %2804, %2803 ]
  %2819 = fsub fast float %2705, %2791
  %2820 = fmul fast float %2819, %2806
  %2821 = fmul fast float %2791, %2790
  %2822 = fadd fast float %2791, %2790
  %2823 = fmul fast float %2822, %2745
  %2824 = fadd fast float %2821, %2746
  %2825 = fsub fast float %2824, %2823
  %2826 = fdiv fast float %2825, %2820
  %2827 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2828 = fcmp fast oeq float %1700, 0.000000e+00
  %2829 = extractvalue %dx.types.CBufRet.f32 %2693, 0
  %2830 = fcmp fast oeq float %2829, 0.000000e+00
  %2831 = or i1 %2828, %2830
  %2832 = fmul fast float %2829, 2.000000e+00
  %2833 = fadd fast float %2694, %2695
  %2834 = fdiv fast float %2833, %2832
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2836 = fmul fast float %2835, 2.000000e+00
  %2837 = fsub fast float 3.000000e+00, %2836
  %2838 = fmul fast float %2835, %2835
  %2839 = fmul fast float %2838, %2837
  %2840 = select i1 %2831, float 1.000000e+00, float %2839
  %2841 = fmul fast float %2826, %1700
  %2842 = fadd fast float %2827, %2841
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = fmul fast float %2840, %2843
  br label %2845

; <label>:2845                                    ; preds = %2817, %2698
  %2846 = phi float [ %2844, %2817 ], [ 0.000000e+00, %2698 ]
  %2847 = fsub fast float 1.000000e+00, %2846
  %2848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.i32 %2850, 2
  %2852 = icmp eq i32 %2851, 0
  br i1 %2852, label %2858, label %2853

; <label>:2853                                    ; preds = %2845
  %2854 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2855 = fadd fast float %2849, -1.000000e+00
  %2856 = fmul fast float %2854, %2855
  %2857 = fadd fast float %2856, 1.000000e+00
  br label %2858

; <label>:2858                                    ; preds = %2853, %2845
  %2859 = phi float [ %2857, %2853 ], [ %2847, %2845 ]
  %2860 = call float @dx.op.binary.f32(i32 35, float %2849, float %2859)  ; FMax(a,b)
  %2861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.i32 %2861, 2
  %2863 = and i32 %2862, 1
  %2864 = icmp eq i32 %2863, 0
  %2865 = fcmp fast une float %2860, 1.000000e+00
  %2866 = and i1 %2865, %2864
  br i1 %2866, label %2867, label %2886

; <label>:2867                                    ; preds = %2858
  %2868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %26, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2869 = extractvalue %dx.types.ResRet.f32 %2868, 0
  %2870 = extractvalue %dx.types.ResRet.f32 %2868, 1
  %2871 = extractvalue %dx.types.ResRet.f32 %2868, 2
  %2872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.f32 %2872, 1
  %2874 = fmul fast float %2873, %2869
  %2875 = fmul fast float %2873, %2870
  %2876 = fmul fast float %2873, %2871
  %2877 = fcmp fast ogt float %2849, 0x3FEFFF2E40000000
  %2878 = fsub fast float 1.000000e+00, %2860
  %2879 = fsub fast float 1.000000e+00, %2849
  %2880 = fdiv fast float %2878, %2879
  %2881 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2882 = select i1 %2877, float 0.000000e+00, float %2881
  %2883 = fmul fast float %2874, %2882
  %2884 = fmul fast float %2875, %2882
  %2885 = fmul fast float %2876, %2882
  br label %2886

; <label>:2886                                    ; preds = %2867, %2858
  %2887 = phi float [ 0.000000e+00, %2858 ], [ %2883, %2867 ]
  %2888 = phi float [ 0.000000e+00, %2858 ], [ %2884, %2867 ]
  %2889 = phi float [ 0.000000e+00, %2858 ], [ %2885, %2867 ]
  %2890 = fmul fast float %2887, %1591
  %2891 = fmul fast float %2888, %1591
  %2892 = fmul fast float %2889, %1591
  %2893 = fmul fast float %2860, %2621
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2860, float %2860, float %2860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2895 = call float @dx.op.dot3.f32(i32 55, float %2890, float %2891, float %2892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2896 = select i1 %136, float %2894, float %2860
  %2897 = select i1 %136, float 1.000000e+00, float %2860
  %2898 = select i1 %136, float %2895, float %2890
  %2899 = select i1 %136, float 0.000000e+00, float %2891
  %2900 = select i1 %136, float 0.000000e+00, float %2892
  %2901 = fmul fast float %2896, %2633
  %2902 = fmul fast float %2896, %2634
  %2903 = fmul fast float %2897, %2635
  %2904 = fadd fast float %2901, %2898
  %2905 = fadd fast float %2902, %2899
  %2906 = fadd fast float %2900, %2903
  %2907 = fmul fast float %2896, %2636
  %2908 = fmul fast float %2896, %2637
  %2909 = fmul fast float %2897, %2638
  br label %2910

; <label>:2910                                    ; preds = %2886, %2642, %2611, %1843
  %2911 = phi float [ %1848, %1843 ], [ %2633, %2611 ], [ %2904, %2886 ], [ %2633, %2642 ]
  %2912 = phi float [ %1849, %1843 ], [ %2634, %2611 ], [ %2905, %2886 ], [ %2634, %2642 ]
  %2913 = phi float [ %1850, %1843 ], [ %2635, %2611 ], [ %2906, %2886 ], [ %2635, %2642 ]
  %2914 = phi float [ %1851, %1843 ], [ %2636, %2611 ], [ %2907, %2886 ], [ %2636, %2642 ]
  %2915 = phi float [ %1852, %1843 ], [ %2637, %2611 ], [ %2908, %2886 ], [ %2637, %2642 ]
  %2916 = phi float [ %1853, %1843 ], [ %2638, %2611 ], [ %2909, %2886 ], [ %2638, %2642 ]
  %2917 = phi float [ %1854, %1843 ], [ %2621, %2611 ], [ %2893, %2886 ], [ %2621, %2642 ]
  %2918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2918, 2
  %2920 = extractvalue %dx.types.CBufRet.f32 %2918, 3
  %2921 = fmul fast float %2919, %65
  %2922 = fmul fast float %2920, %66
  %2923 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  %2924 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2925 = select i1 %1000, i32 2, i32 0
  %2926 = or i32 %2925, 1
  %2927 = uitofp i32 %2926 to float
  %2928 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2923, float %2924, float %2927, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.ResRet.f32 %2928, 2
  %2932 = extractvalue %dx.types.ResRet.f32 %2928, 3
  %2933 = add nuw nsw i32 %2925, 2
  %2934 = uitofp i32 %2933 to float
  %2935 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %2923, float %2924, float %2934, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  %2939 = extractvalue %dx.types.ResRet.f32 %2935, 3
  %2940 = call float @dx.op.binary.f32(i32 35, float %2930, float %2931)  ; FMax(a,b)
  %2941 = call float @dx.op.binary.f32(i32 35, float %2929, float %2940)  ; FMax(a,b)
  %2942 = call float @dx.op.binary.f32(i32 35, float %2941, float %2932)  ; FMax(a,b)
  %2943 = call float @dx.op.binary.f32(i32 36, float %2937, float %2938)  ; FMin(a,b)
  %2944 = call float @dx.op.binary.f32(i32 36, float %2936, float %2943)  ; FMin(a,b)
  %2945 = call float @dx.op.binary.f32(i32 36, float %2944, float %2939)  ; FMin(a,b)
  %2946 = fmul fast float %2942, 2.550000e+02
  %2947 = fadd fast float %2946, 0x3F70101020000000
  %2948 = fptoui float %2947 to i32
  %2949 = fmul fast float %2945, 2.550000e+02
  %2950 = fadd fast float %2949, 0x3F70101020000000
  %2951 = fptoui float %2950 to i32
  %2952 = icmp ult i32 %2948, %2951
  br i1 %2952, label %2953, label %2999

; <label>:2953                                    ; preds = %2910
  %2954 = fcmp fast ogt float %57, 9.843750e-01
  %2955 = fadd fast float %1847, -4.000000e+00
  %2956 = select i1 %2954, float -4.000000e+00, float %2955
  %2957 = call float @dx.op.binary.f32(i32 35, float %2956, float 0.000000e+00)  ; FMax(a,b)
  %2958 = fadd fast float %1165, %2957
  %2959 = fmul fast float %2958, %1166
  %2960 = call float @dx.op.unary.f32(i32 23, float %2959)  ; Log(value)
  %2961 = fmul fast float %1167, %2960
  %2962 = fmul fast float %2961, %1175
  %2963 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2964 = uitofp i32 %2948 to float
  %2965 = uitofp i32 %2951 to float
  %2966 = fadd fast float %2964, 5.000000e-01
  %2967 = fadd fast float %2965, 5.000000e-01
  %2968 = fmul fast float %1175, %2966
  %2969 = fmul fast float %1175, %2967
  %2970 = fadd fast float %2968, 0x3F0FFB4800000000
  %2971 = fadd fast float %2969, 0xBF0FFB4800000000
  %2972 = call float @dx.op.binary.f32(i32 35, float %2963, float %2970)  ; FMax(a,b)
  %2973 = call float @dx.op.binary.f32(i32 36, float %2972, float %2971)  ; FMin(a,b)
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 1
  %2976 = extractvalue %dx.types.CBufRet.f32 %2974, 2
  %2977 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2978 = select i1 %1000, float %2977, float 0.000000e+00
  %2979 = fmul fast float %2975, %2973
  %2980 = fadd fast float %2978, %2979
  %2981 = fadd fast float %2978, %2976
  %2982 = fsub fast float %2975, %2976
  %2983 = fadd fast float %2982, %2978
  %2984 = call float @dx.op.binary.f32(i32 35, float %2980, float %2981)  ; FMax(a,b)
  %2985 = call float @dx.op.binary.f32(i32 36, float %2984, float %2983)  ; FMin(a,b)
  %2986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %2923, float %2924, float %2985, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.ResRet.f32 %2986, 2
  %2990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %2923, float %2924, float %2985, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2994, 1
  %2996 = fmul fast float %2995, %2991
  %2997 = fmul fast float %2995, %2992
  %2998 = fmul fast float %2995, %2993
  br label %2999

; <label>:2999                                    ; preds = %2953, %2910
  %3000 = phi float [ %2987, %2953 ], [ 1.000000e+00, %2910 ]
  %3001 = phi float [ %2988, %2953 ], [ 1.000000e+00, %2910 ]
  %3002 = phi float [ %2989, %2953 ], [ 1.000000e+00, %2910 ]
  %3003 = phi float [ %2996, %2953 ], [ 0.000000e+00, %2910 ]
  %3004 = phi float [ %2997, %2953 ], [ 0.000000e+00, %2910 ]
  %3005 = phi float [ %2998, %2953 ], [ 0.000000e+00, %2910 ]
  %3006 = fmul fast float %3003, %1591
  %3007 = fmul fast float %3004, %1591
  %3008 = fmul fast float %3005, %1591
  %3009 = fmul fast float %3000, %2917
  %3010 = call float @dx.op.dot3.f32(i32 55, float %3000, float %3001, float %3002, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3011 = call float @dx.op.dot3.f32(i32 55, float %3006, float %3007, float %3008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3012 = select i1 %136, float %3010, float %3000
  %3013 = select i1 %136, float %3010, float %3001
  %3014 = select i1 %136, float 1.000000e+00, float %3002
  %3015 = select i1 %136, float %3011, float %3006
  %3016 = select i1 %136, float 0.000000e+00, float %3007
  %3017 = select i1 %136, float 0.000000e+00, float %3008
  %3018 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3019 = extractvalue %dx.types.CBufRet.i32 %3018, 3
  %3020 = and i32 %3019, 3
  %3021 = icmp ne i32 %3020, 0
  %3022 = and i32 %3019, 4
  %3023 = icmp ne i32 %3022, 0
  %3024 = and i1 %3021, %3023
  %3025 = and i1 %136, %3024
  br i1 %3025, label %3026, label %3032

; <label>:3026                                    ; preds = %2999
  %3027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.f32 %3027, 1
  %3029 = fadd fast float %3009, -1.000000e+00
  %3030 = fmul fast float %3028, %3029
  %3031 = fadd fast float %3030, 1.000000e+00
  br label %3032

; <label>:3032                                    ; preds = %3026, %2999
  %3033 = phi float [ %3031, %3026 ], [ %3009, %2999 ]
  %3034 = fadd fast float %2914, %2911
  %3035 = fmul fast float %3012, %3034
  %3036 = fadd fast float %3035, %3015
  %3037 = fadd fast float %2915, %2912
  %3038 = fmul fast float %3013, %3037
  %3039 = fadd fast float %3038, %3016
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  br i1 %136, label %3042, label %3064

; <label>:3042                                    ; preds = %3032
  %3043 = fadd fast float %3036, %3039
  %3044 = fmul fast float %3041, %3043
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 3
  %3047 = extractvalue %dx.types.CBufRet.f32 %1596, 1
  %3048 = fsub fast float %1599, %3047
  %3049 = extractvalue %dx.types.CBufRet.f32 %1596, 2
  %3050 = fmul fast float %3048, %3049
  %3051 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3052 = fsub fast float %3051, %3046
  %3053 = fmul fast float %3052, %3033
  %3054 = fadd fast float %3053, %3046
  %3055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3056 = extractvalue %dx.types.CBufRet.f32 %3055, 0
  %3057 = fsub fast float %3054, %3056
  %3058 = fmul fast float %3057, 1.000000e+01
  %3059 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3060 = fsub fast float %976, %1591
  %3061 = fmul fast float %3059, %3060
  %3062 = fadd fast float %3061, %1591
  %3063 = fmul fast float %3062, %3054
  br label %3076

; <label>:3064                                    ; preds = %3032
  %3065 = fadd fast float %2916, %2913
  %3066 = fmul fast float %3014, %3065
  %3067 = fadd fast float %3066, %3017
  %3068 = fmul fast float %3041, %3036
  %3069 = fmul fast float %3041, %3039
  %3070 = fmul fast float %3041, %3067
  %3071 = call float @dx.op.binary.f32(i32 35, float %3069, float %3070)  ; FMax(a,b)
  %3072 = call float @dx.op.binary.f32(i32 35, float %3068, float %3071)  ; FMax(a,b)
  %3073 = call float @dx.op.binary.f32(i32 35, float %3072, float %1591)  ; FMax(a,b)
  %3074 = fcmp fast ugt float %3073, 0x3F10000000000000
  br i1 %3074, label %3076, label %3075

; <label>:3075                                    ; preds = %3064
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %3076

; <label>:3076                                    ; preds = %3075, %3064, %3042
  %3077 = phi float [ %3044, %3042 ], [ %3068, %3075 ], [ %3068, %3064 ]
  %3078 = phi float [ %3063, %3042 ], [ %3069, %3075 ], [ %3069, %3064 ]
  %3079 = phi float [ %3062, %3042 ], [ %3070, %3075 ], [ %3070, %3064 ]
  %3080 = phi float [ %3062, %3042 ], [ %1591, %3075 ], [ %1591, %3064 ]
  %3081 = fadd fast float %567, 0x3FE3C6EF40000000
  %3082 = call float @dx.op.unary.f32(i32 22, float %3081)  ; Frc(value)
  %3083 = call float @dx.op.unary.f32(i32 23, float %3077)  ; Log(value)
  %3084 = fadd fast float %3083, -7.000000e+00
  %3085 = call float @dx.op.unary.f32(i32 21, float %3084)  ; Exp(value)
  %3086 = fmul fast float %3082, 2.000000e+00
  %3087 = fadd fast float %3086, -1.000000e+00
  %3088 = fmul fast float %3085, %3087
  %3089 = fcmp fast ogt float %3077, 0.000000e+00
  %3090 = select i1 %3089, float %3088, float 0.000000e+00
  %3091 = fadd fast float %3090, %3077
  %3092 = fadd fast float %567, 0x3FF3C6EF40000000
  %3093 = call float @dx.op.unary.f32(i32 22, float %3092)  ; Frc(value)
  %3094 = call float @dx.op.unary.f32(i32 23, float %3078)  ; Log(value)
  %3095 = fadd fast float %3094, -7.000000e+00
  %3096 = call float @dx.op.unary.f32(i32 21, float %3095)  ; Exp(value)
  %3097 = fmul fast float %3093, 2.000000e+00
  %3098 = fadd fast float %3097, -1.000000e+00
  %3099 = fmul fast float %3096, %3098
  %3100 = fcmp fast ogt float %3078, 0.000000e+00
  %3101 = select i1 %3100, float %3099, float 0.000000e+00
  %3102 = fadd fast float %3101, %3078
  %3103 = fadd fast float %567, 0x3FFDAA66E0000000
  %3104 = call float @dx.op.unary.f32(i32 22, float %3103)  ; Frc(value)
  %3105 = call float @dx.op.unary.f32(i32 23, float %3079)  ; Log(value)
  %3106 = fadd fast float %3105, -6.000000e+00
  %3107 = call float @dx.op.unary.f32(i32 21, float %3106)  ; Exp(value)
  %3108 = fmul fast float %3104, 2.000000e+00
  %3109 = fadd fast float %3108, -1.000000e+00
  %3110 = fmul fast float %3107, %3109
  %3111 = fcmp fast ogt float %3079, 0.000000e+00
  %3112 = select i1 %3111, float %3110, float 0.000000e+00
  %3113 = fadd fast float %3112, %3079
  %3114 = select i1 %136, float %3078, float %3102
  %3115 = select i1 %136, float %3079, float %3113
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %3116 = call float @dx.op.binary.f32(i32 36, float %3091, float 3.225500e+04)  ; FMin(a,b)
  %3117 = call float @dx.op.binary.f32(i32 36, float %3114, float 3.225500e+04)  ; FMin(a,b)
  %3118 = call float @dx.op.binary.f32(i32 36, float %3115, float 3.225500e+04)  ; FMin(a,b)
  %3119 = call float @dx.op.binary.f32(i32 36, float %3080, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3116)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3117)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3118)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %3119)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %3080)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %3080)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %3080)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %3080)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!42 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !70}
!44 = !{!45, !66, null}
!45 = !{!46, !49, !50, !52, !55, !57, !59, !61, !63, !64, !65}
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
!64 = !{i32 9, !"COLOR", i8 5, i8 0, !56, i8 1, i32 1, i8 3, i32 9, i8 0, !54}
!65 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!66 = !{!67, !68}
!67 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !48}
!68 = !{i32 1, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 1, i8 0, !48}
!69 = !{i32 1}
!70 = !{i32 0, i64 24}
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

