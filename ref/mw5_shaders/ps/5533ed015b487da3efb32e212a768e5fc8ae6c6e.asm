;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1   xyz         3     NONE   float   xyz 
; TEXCOORD                 2   xyzw        4     NONE   float   xyz 
; TEXCOORD                 3   xyzw        5     NONE   float   xyzw
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
; shader hash: 866b6eb56fa67528662057e4670ed2fc
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
; TEXCOORD                 1                 linear       
; TEXCOORD                 2        nointerpolation       
; TEXCOORD                 3                 linear       
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          2d      T9     t12,space2     1
;                                   texture     f32          3d     T10     t44,space2     1
;                                   texture     f32          3d     T11     t45,space2     1
;                                   texture     f32     2darray     T12     t47,space2     1
;                                   textureunorm_f32     2darray     T13     t85,space2     1
;                                   texture     f32          2d     T14     t83,space2     1
;                                   texture     f32          2d     T15     t86,space2     1
;                                   texture     f32     2darray     T16             t1     1
;                                   texture    byte         r/o     T17             t2     1
;                                   texture     f32          3d     T18     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 39, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 28, 29, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 30, 31, 32, 33, 34, 35, 36, 38 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = fmul fast float %60, %53
  %62 = fmul fast float %60, %54
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %66 = fmul fast float %61, 2.000000e+00
  %67 = fmul fast float %66, %64
  %68 = fmul fast float %62, 2.000000e+00
  %69 = fmul fast float %68, %65
  %70 = fsub fast float 1.000000e+00, %67
  %71 = fsub fast float 1.000000e+00, %69
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fmul fast float %70, %73
  %77 = fmul fast float %70, %74
  %78 = fmul fast float %70, %75
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fmul fast float %71, %80
  %84 = fmul fast float %71, %81
  %85 = fmul fast float %71, %82
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 0
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %89 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %90 = fadd fast float %83, %87
  %91 = fadd fast float %90, %76
  %92 = fadd fast float %84, %88
  %93 = fadd fast float %92, %77
  %94 = fadd fast float %85, %89
  %95 = fadd fast float %94, %78
  %96 = fmul fast float %91, %56
  %97 = fmul fast float %93, %56
  %98 = fmul fast float %95, %56
  %99 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.i32 %99, 3
  %101 = and i32 %100, 3
  %102 = icmp ne i32 %101, 0
  %103 = and i32 %100, 4
  %104 = icmp ne i32 %103, 0
  %105 = and i1 %102, %104
  br i1 %105, label %106, label %115

; <label>:106                                     ; preds = %0
  %107 = fmul fast float %65, %62
  %108 = fmul fast float %64, %61
  %109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %20, float %108, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fsub fast float 1.000000e+00, %110
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = fcmp fast olt float %111, %113
  br label %118

; <label>:115                                     ; preds = %0
  %116 = icmp eq i32 %103, 0
  %117 = and i1 %102, %116
  br label %118

; <label>:118                                     ; preds = %115, %106
  %119 = phi i1 [ %114, %106 ], [ %117, %115 ]
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %123 = fmul fast float %121, %61
  %124 = fmul fast float %122, %62
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %126, 114688
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %128, float %123, float 0.000000e+00
  %130 = select i1 %128, float %124, float 0.000000e+00
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %21, float %129, float %130, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = fmul fast float %132, 2.550000e+02
  %134 = fptoui float %133 to i32
  %135 = select i1 %128, i32 %134, i32 0
  %136 = mul i32 %25, 208
  %137 = add i32 %136, 188
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %100, 114688
  %141 = and i32 %100, 8
  %142 = icmp ne i32 %141, 0
  %143 = or i1 %119, %142
  %144 = select i1 %143, i32 %140, i32 16384
  %145 = and i32 %144, %139
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %118
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %148

; <label>:148                                     ; preds = %147, %118
  %149 = and i32 %139, 512
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %175, label %151

; <label>:151                                     ; preds = %148
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %155 = fmul fast float %153, %61
  %156 = fmul fast float %154, %62
  %157 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %159 = fdiv fast float %157, %158
  %160 = fcmp fast ogt float %159, 0x3FFC71C720000000
  br i1 %160, label %161, label %167

; <label>:161                                     ; preds = %151
  %162 = fdiv fast float 0x3FFC71C720000000, %159
  %163 = fmul fast float %162, %156
  %164 = fsub fast float 1.000000e+00, %162
  %165 = fmul fast float %164, 5.000000e-01
  %166 = fadd fast float %165, %163
  br label %175

; <label>:167                                     ; preds = %151
  %168 = fcmp fast olt float %159, 0x3FFC71C720000000
  br i1 %168, label %169, label %175

; <label>:169                                     ; preds = %167
  %170 = fmul fast float %155, 5.625000e-01
  %171 = fmul fast float %170, %159
  %172 = fmul fast float %159, 2.812500e-01
  %173 = fsub fast float 5.000000e-01, %172
  %174 = fadd fast float %173, %171
  br label %175

; <label>:175                                     ; preds = %169, %167, %161, %148
  %176 = phi float [ %47, %148 ], [ %155, %161 ], [ %174, %169 ], [ %155, %167 ]
  %177 = phi float [ %48, %148 ], [ %166, %161 ], [ %156, %169 ], [ %156, %167 ]
  %178 = fadd fast float %47, %41
  %179 = fadd fast float %48, %42
  %180 = add i32 %26, 72
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = extractvalue %dx.types.ResRet.i32 %181, 1
  %184 = bitcast i32 %182 to float
  %185 = bitcast i32 %183 to float
  %186 = fmul fast float %184, %47
  %187 = fmul fast float %185, %48
  %188 = call float @dx.op.unary.f32(i32 22, float %186)  ; Frc(value)
  %189 = call float @dx.op.unary.f32(i32 22, float %187)  ; Frc(value)
  %190 = and i32 %139, 16
  %191 = icmp ne i32 %190, 0
  %192 = select i1 %191, float 1.000000e+00, float %52
  %193 = icmp eq i32 %190, 0
  br i1 %193, label %213, label %194, !dx.controlflow.hints !66

; <label>:194                                     ; preds = %175
  %195 = add i32 %136, 64
  %196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = fadd fast float %197, 1.000000e+00
  %199 = fmul fast float %198, %52
  %200 = fsub fast float %199, %197
  %201 = fsub fast float %198, %200
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = fsub fast float 1.000000e+00, %199
  %204 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %205 = fsub fast float %202, %204
  %206 = fsub fast float %192, %204
  %207 = fdiv fast float %206, %205
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = fmul fast float %208, 2.000000e+00
  %210 = fsub fast float 3.000000e+00, %209
  %211 = fmul fast float %208, %208
  %212 = fmul fast float %211, %210
  br label %213

; <label>:213                                     ; preds = %194, %175
  %214 = phi float [ %212, %194 ], [ %192, %175 ]
  %215 = fcmp fast ogt float %214, 0.000000e+00
  br i1 %215, label %217, label %216

; <label>:216                                     ; preds = %213
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %217

; <label>:217                                     ; preds = %216, %213
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %220 = fsub fast float %44, %219
  %221 = fsub fast float %45, %219
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %22, float %220, float %221, float undef, float undef, i32 0, i32 0, i32 undef, float %46)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fmul fast float %223, %214
  %225 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %226 = fmul fast float %61, 5.000000e-01
  %227 = fmul fast float %62, 5.000000e-01
  %228 = fptosi float %226 to i32
  %229 = fptosi float %227 to i32
  %230 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = lshr i32 %231, 18
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F4C00EBA0000000
  %235 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %236 = fadd fast float %235, -1.000000e+00
  %237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %238 = extractvalue %dx.types.Dimensions %237, 0
  %239 = sitofp i32 %238 to float
  %240 = extractvalue %dx.types.Dimensions %237, 1
  %241 = sitofp i32 %240 to float
  %242 = fcmp fast oge float %226, %239
  %243 = fcmp fast oge float %227, %241
  %244 = or i1 %242, %243
  %245 = select i1 %244, float 0x4197782600000000, float %236
  %246 = fsub fast float %245, %56
  %247 = fcmp fast ogt float %246, 0.000000e+00
  %248 = and i32 %135, -2
  %249 = icmp eq i32 %248, 2
  %250 = and i1 %249, %247
  %251 = xor i1 %247, true
  %252 = icmp eq i32 %135, 1
  %253 = and i1 %252, %251
  %254 = or i1 %250, %253
  %255 = and i32 %139, 262144
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %256, %254
  %258 = xor i1 %254, true
  %259 = and i32 %139, 131072
  %260 = icmp ne i32 %259, 0
  %261 = and i1 %260, %258
  %262 = or i1 %257, %261
  br i1 %262, label %263, label %264

; <label>:263                                     ; preds = %217
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %264

; <label>:264                                     ; preds = %263, %217
  %265 = and i32 %139, 32
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %543, label %267, !dx.controlflow.hints !67

; <label>:267                                     ; preds = %264
  %268 = add i32 %136, 80
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = add i32 %136, 96
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = add i32 %136, 112
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = extractvalue %dx.types.ResRet.f32 %280, 3
  %285 = add i32 %136, 128
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 4096
  %294 = icmp ne i32 %293, 0
  %295 = fcmp fast une float %278, 0.000000e+00
  %296 = and i32 %292, 64
  %297 = icmp ne i32 %296, 0
  %298 = and i32 %292, 128
  %299 = icmp eq i32 %298, 0
  %300 = and i32 %292, 2048
  %301 = icmp eq i32 %300, 0
  %302 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %14, i32 0)  ; GetDimensions(handle,mipLevel)
  %303 = extractvalue %dx.types.Dimensions %302, 0
  %304 = sitofp i32 %303 to float
  %305 = extractvalue %dx.types.Dimensions %302, 1
  %306 = sitofp i32 %305 to float
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 3
  %310 = fmul fast float %308, %61
  %311 = fmul fast float %309, %62
  %312 = fmul fast float %310, %304
  %313 = fmul fast float %311, %306
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = fsub fast float -0.000000e+00, %315
  %317 = fptoui float %316 to i32
  %318 = fptoui float %312 to i32
  %319 = fptoui float %313 to i32
  %320 = and i32 %317, 31
  %321 = lshr i32 %318, %320
  %322 = lshr i32 %319, %320
  %323 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 %317, i32 %321, i32 %322, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = fcmp fast ogt float %324, -1.000000e+00
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %328 = select i1 %325, float %327, float 1.000000e+00
  %329 = fadd fast float %324, 1.000000e+00
  %330 = fmul fast float %328, %329
  %331 = call float @dx.op.unary.f32(i32 6, float %330)  ; FAbs(value)
  %332 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %333 = fcmp fast oge float %331, %332
  %334 = select i1 %333, float 0x4197782600000000, float %331
  br i1 %301, label %424, label %335, !dx.controlflow.hints !68

; <label>:335                                     ; preds = %267
  %336 = fmul fast float %66, %308
  %337 = fmul fast float %68, %309
  %338 = fsub fast float 1.000000e+00, %336
  %339 = fsub fast float 1.000000e+00, %337
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fmul fast float %338, %341
  %345 = fmul fast float %338, %342
  %346 = fmul fast float %338, %343
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = fmul fast float %339, %348
  %352 = fmul fast float %339, %349
  %353 = fmul fast float %339, %350
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %358 = fadd fast float %351, %355
  %359 = fadd fast float %358, %344
  %360 = fadd fast float %352, %356
  %361 = fadd fast float %360, %345
  %362 = fadd fast float %353, %357
  %363 = fadd fast float %362, %346
  %364 = fmul fast float %359, %334
  %365 = fmul fast float %361, %334
  %366 = fmul fast float %363, %334
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = fsub fast float %368, %27
  %372 = fadd fast float %371, %364
  %373 = fsub fast float %369, %28
  %374 = fadd fast float %373, %365
  %375 = fsub fast float %370, %29
  %376 = fadd fast float %375, %366
  %377 = fmul fast float %30, %30
  %378 = call float @dx.op.dot3.f32(i32 55, float %372, float %374, float %376, float %372, float %374, float %376)  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = fsub fast float %377, %378
  %380 = fmul fast float %277, %377
  %381 = fmul fast float %276, %377
  %382 = fcmp fast olt float %379, %380
  %383 = fcmp fast ogt float %379, %381
  %384 = or i1 %382, %383
  %385 = select i1 %384, float 0.000000e+00, float %379
  %386 = fsub fast float %276, %277
  %387 = fmul fast float %386, %377
  %388 = fsub fast float %385, %380
  %389 = fdiv fast float %388, %387
  %390 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %391 = fmul fast float %390, 2.000000e+00
  %392 = fsub fast float 3.000000e+00, %391
  %393 = fmul fast float %390, %390
  %394 = fmul fast float %393, %392
  %395 = fmul fast float %281, %49
  %396 = fmul fast float %282, %50
  %397 = fmul fast float %283, %51
  %398 = fsub fast float %395, %287
  %399 = fsub fast float %396, %288
  %400 = fsub fast float %397, %289
  %401 = fsub fast float %284, %290
  %402 = fmul fast float %394, %398
  %403 = fmul fast float %394, %399
  %404 = fmul fast float %394, %400
  %405 = fmul fast float %394, %401
  %406 = fadd fast float %402, %287
  %407 = fadd fast float %403, %288
  %408 = fadd fast float %404, %289
  %409 = fadd fast float %405, %290
  %410 = fmul fast float %281, %31
  %411 = fmul fast float %282, %32
  %412 = fmul fast float %283, %33
  %413 = fsub fast float %410, %287
  %414 = fsub fast float %411, %288
  %415 = fsub fast float %412, %289
  %416 = fmul fast float %394, %413
  %417 = fmul fast float %394, %414
  %418 = fmul fast float %394, %415
  %419 = fadd fast float %416, %287
  %420 = fadd fast float %417, %288
  %421 = fadd fast float %418, %289
  %422 = fmul fast float %270, %270
  %423 = fmul fast float %422, %385
  br label %531

; <label>:424                                     ; preds = %267
  %425 = and i32 %292, 256
  %426 = icmp eq i32 %425, 0
  %427 = fsub fast float %334, %56
  br i1 %426, label %488, label %428

; <label>:428                                     ; preds = %424
  %429 = fadd fast float %276, %56
  %430 = fcmp fast olt float %334, %56
  %431 = fcmp fast ogt float %334, %429
  %432 = or i1 %430, %431
  %433 = select i1 %432, float 0.000000e+00, float %427
  %434 = call float @dx.op.unary.f32(i32 83, float %334)  ; DerivCoarseX(value)
  %435 = call float @dx.op.unary.f32(i32 84, float %334)  ; DerivCoarseY(value)
  %436 = fmul fast float %434, %434
  %437 = fmul fast float %435, %435
  %438 = fadd fast float %437, %436
  %439 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %440 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %441 = fmul fast float %440, %439
  %442 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %443 = fmul fast float %442, %277
  %444 = fdiv fast float %427, %443
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = fmul fast float %445, 2.000000e+00
  %447 = fsub fast float 3.000000e+00, %446
  %448 = fmul fast float %445, %445
  %449 = fmul fast float %448, %447
  %450 = fsub fast float %334, %429
  %451 = fadd fast float %450, %443
  %452 = fdiv fast float %451, %443
  %453 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %454 = fmul fast float %453, 2.000000e+00
  %455 = fsub fast float 3.000000e+00, %454
  %456 = fmul fast float %453, %453
  %457 = fmul fast float %456, %455
  %458 = fsub fast float %449, %457
  %459 = fmul fast float %281, %49
  %460 = fmul fast float %282, %50
  %461 = fmul fast float %283, %51
  %462 = fsub fast float %459, %287
  %463 = fsub fast float %460, %288
  %464 = fsub fast float %461, %289
  %465 = fsub fast float %284, %290
  %466 = fmul fast float %458, %462
  %467 = fmul fast float %458, %463
  %468 = fmul fast float %458, %464
  %469 = fmul fast float %458, %465
  %470 = fadd fast float %466, %287
  %471 = fadd fast float %467, %288
  %472 = fadd fast float %468, %289
  %473 = fadd fast float %469, %290
  %474 = fmul fast float %281, %31
  %475 = fmul fast float %282, %32
  %476 = fmul fast float %283, %33
  %477 = fsub fast float %474, %287
  %478 = fsub fast float %475, %288
  %479 = fsub fast float %476, %289
  %480 = fmul fast float %458, %477
  %481 = fmul fast float %458, %478
  %482 = fmul fast float %458, %479
  %483 = fadd fast float %480, %287
  %484 = fadd fast float %481, %288
  %485 = fadd fast float %482, %289
  %486 = fmul fast float %433, %270
  %487 = call float @dx.op.unary.f32(i32 6, float %486)  ; FAbs(value)
  br label %531

; <label>:488                                     ; preds = %424
  br i1 %295, label %489, label %502

; <label>:489                                     ; preds = %488
  %490 = fdiv fast float 5.000000e+01, %30
  %491 = select i1 %297, float %490, float 1.000000e+00
  %492 = fmul fast float %491, %270
  %493 = fmul fast float %188, 2.000000e+00
  %494 = fmul fast float %189, 2.000000e+00
  %495 = fadd fast float %493, -1.000000e+00
  %496 = fadd fast float %494, -1.000000e+00
  %497 = call float @dx.op.dot2.f32(i32 54, float %495, float %496, float %495, float %496)  ; Dot2(ax,ay,bx,by)
  %498 = fmul fast float %278, %30
  %499 = fmul fast float %498, %497
  %500 = fsub fast float %427, %499
  %501 = fmul fast float %492, %500
  br label %531

; <label>:502                                     ; preds = %488
  br i1 %299, label %523, label %503

; <label>:503                                     ; preds = %502
  %504 = fmul fast float %30, 0x3F947AE140000000
  %505 = select i1 %297, float %504, float 1.000000e+00
  %506 = fdiv fast float 1.000000e+00, %505
  %507 = fmul fast float %505, %271
  %508 = fmul fast float %505, %272
  %509 = fmul fast float %506, %273
  %510 = call float @dx.op.unary.f32(i32 6, float %427)  ; FAbs(value)
  %511 = fcmp fast olt float %510, %507
  br i1 %511, label %512, label %516, !dx.controlflow.hints !69

; <label>:512                                     ; preds = %503
  %513 = fmul fast float %506, %270
  %514 = fmul fast float %513, %510
  %515 = call float @dx.op.unary.f32(i32 6, float %514)  ; FAbs(value)
  br label %531

; <label>:516                                     ; preds = %503
  %517 = fcmp fast ogt float %510, %508
  br i1 %517, label %518, label %531

; <label>:518                                     ; preds = %516
  %519 = fsub fast float %510, %508
  %520 = fmul fast float %509, %519
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %522 = fsub fast float 1.000000e+00, %521
  br label %531

; <label>:523                                     ; preds = %502
  %524 = fdiv fast float 5.000000e+01, %30
  %525 = select i1 %297, float %524, float 1.000000e+00
  %526 = fmul fast float %525, %270
  %527 = call float @dx.op.unary.f32(i32 6, float %246)  ; FAbs(value)
  %528 = select i1 %294, float %527, float 0x47EFFFFFE0000000
  %529 = call float @dx.op.binary.f32(i32 36, float %427, float %528)  ; FMin(a,b)
  %530 = fmul fast float %526, %529
  br label %531

; <label>:531                                     ; preds = %523, %518, %516, %512, %489, %428, %335
  %532 = phi float [ %423, %335 ], [ %487, %428 ], [ %501, %489 ], [ %530, %523 ], [ %515, %512 ], [ %522, %518 ], [ %510, %516 ]
  %533 = phi float [ %419, %335 ], [ %483, %428 ], [ %31, %489 ], [ %31, %523 ], [ %31, %512 ], [ %31, %518 ], [ %31, %516 ]
  %534 = phi float [ %420, %335 ], [ %484, %428 ], [ %32, %489 ], [ %32, %523 ], [ %32, %512 ], [ %32, %518 ], [ %32, %516 ]
  %535 = phi float [ %421, %335 ], [ %485, %428 ], [ %33, %489 ], [ %33, %523 ], [ %33, %512 ], [ %33, %518 ], [ %33, %516 ]
  %536 = phi float [ %406, %335 ], [ %470, %428 ], [ %49, %489 ], [ %49, %523 ], [ %49, %512 ], [ %49, %518 ], [ %49, %516 ]
  %537 = phi float [ %407, %335 ], [ %471, %428 ], [ %50, %489 ], [ %50, %523 ], [ %50, %512 ], [ %50, %518 ], [ %50, %516 ]
  %538 = phi float [ %408, %335 ], [ %472, %428 ], [ %51, %489 ], [ %51, %523 ], [ %51, %512 ], [ %51, %518 ], [ %51, %516 ]
  %539 = phi float [ %409, %335 ], [ %473, %428 ], [ 1.000000e+00, %489 ], [ 1.000000e+00, %523 ], [ 1.000000e+00, %512 ], [ 1.000000e+00, %518 ], [ 1.000000e+00, %516 ]
  %540 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  %541 = fmul fast float %539, %225
  %542 = fmul fast float %541, %540
  br label %543

; <label>:543                                     ; preds = %531, %264
  %544 = phi float [ %536, %531 ], [ %49, %264 ]
  %545 = phi float [ %537, %531 ], [ %50, %264 ]
  %546 = phi float [ %538, %531 ], [ %51, %264 ]
  %547 = phi float [ %542, %531 ], [ %225, %264 ]
  %548 = phi float [ %533, %531 ], [ %31, %264 ]
  %549 = phi float [ %534, %531 ], [ %32, %264 ]
  %550 = phi float [ %535, %531 ], [ %33, %264 ]
  %551 = fmul fast float %548, %34
  %552 = fmul fast float %549, %34
  %553 = fmul fast float %550, %34
  %554 = fmul fast float %548, %40
  %555 = fmul fast float %549, %40
  %556 = fmul fast float %550, %40
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %559 = fptosi float %56 to i32
  %560 = sitofp i32 %559 to float
  %561 = fadd fast float %558, %560
  %562 = fmul fast float %561, 0x3FE3C6EF40000000
  %563 = frem fast float %61, 2.560000e+02
  %564 = frem fast float %62, 2.560000e+02
  %565 = fptoui float %563 to i32
  %566 = fptoui float %564 to i32
  %567 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %565, i32 %566, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = fadd fast float %568, %562
  %570 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %571 = and i32 %139, 1
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %632, label %573, !dx.controlflow.hints !70

; <label>:573                                     ; preds = %543
  %574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 2
  %576 = extractvalue %dx.types.ResRet.f32 %574, 3
  %577 = add i32 %136, 16
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = add i32 %136, 32
  %583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = and i32 %139, 2
  %588 = icmp eq i32 %587, 0
  %589 = call float @dx.op.dot3.f32(i32 55, float %37, float %38, float %39, float %37, float %38, float %39)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = call float @dx.op.unary.f32(i32 25, float %589)  ; Rsqrt(value)
  %591 = fmul fast float %590, %37
  %592 = fmul fast float %590, %38
  %593 = fmul fast float %590, %39
  %594 = call float @dx.op.dot3.f32(i32 55, float %96, float %97, float %98, float %96, float %97, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = call float @dx.op.unary.f32(i32 25, float %594)  ; Rsqrt(value)
  %596 = fmul fast float %595, %96
  %597 = fmul fast float %595, %97
  %598 = fmul fast float %595, %98
  %599 = call float @dx.op.dot3.f32(i32 55, float %596, float %597, float %598, float %591, float %592, float %593)  ; Dot3(ax,ay,az,bx,by,bz)
  %600 = fmul fast float %599, %599
  %601 = fmul fast float %600, %575
  %602 = fadd fast float %601, %576
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  br i1 %588, label %604, label %614, !dx.controlflow.hints !71

; <label>:604                                     ; preds = %573
  %605 = extractvalue %dx.types.ResRet.f32 %574, 1
  %606 = extractvalue %dx.types.ResRet.f32 %574, 0
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 3
  %609 = fmul fast float %608, %594
  %610 = fsub fast float %606, %609
  %611 = fmul fast float %610, %605
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %613 = fmul fast float %612, %603
  br label %614

; <label>:614                                     ; preds = %604, %573
  %615 = phi float [ %613, %604 ], [ %603, %573 ]
  %616 = fsub fast float %579, %584
  %617 = fsub fast float %580, %585
  %618 = fsub fast float %581, %586
  %619 = fmul fast float %615, %616
  %620 = fmul fast float %615, %617
  %621 = fmul fast float %615, %618
  %622 = fadd fast float %619, %584
  %623 = fadd fast float %620, %585
  %624 = fadd fast float %621, %586
  %625 = fmul fast float %622, %544
  %626 = fmul fast float %623, %545
  %627 = fmul fast float %624, %546
  %628 = fmul fast float %622, %551
  %629 = fmul fast float %623, %552
  %630 = fmul fast float %624, %553
  %631 = fmul fast float %615, %547
  br label %632

; <label>:632                                     ; preds = %614, %543
  %633 = phi float [ %625, %614 ], [ %544, %543 ]
  %634 = phi float [ %626, %614 ], [ %545, %543 ]
  %635 = phi float [ %627, %614 ], [ %546, %543 ]
  %636 = phi float [ %631, %614 ], [ %547, %543 ]
  %637 = phi float [ %628, %614 ], [ %551, %543 ]
  %638 = phi float [ %629, %614 ], [ %552, %543 ]
  %639 = phi float [ %630, %614 ], [ %553, %543 ]
  %640 = add i32 %26, 104
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = add i32 %642, 0
  %644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %644, %dx.types.Handle %57, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = add i32 %26, 56
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = and i32 %651, 255
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, 0x3F70101020000000
  %655 = lshr i32 %651, 8
  %656 = and i32 %655, 255
  %657 = uitofp i32 %656 to float
  %658 = fmul fast float %657, 0x3F70101020000000
  %659 = lshr i32 %651, 16
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F70101020000000
  %663 = fmul fast float %654, %654
  %664 = fmul fast float %663, %646
  %665 = fmul fast float %658, %658
  %666 = fmul fast float %665, %647
  %667 = fmul fast float %662, %662
  %668 = fmul fast float %667, %648
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add i32 %670, 0
  %672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %672, %dx.types.Handle %57, float %178, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  %682 = lshr i32 %678, 8
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = fmul fast float %684, 0x3F70101020000000
  %686 = lshr i32 %678, 16
  %687 = and i32 %686, 255
  %688 = uitofp i32 %687 to float
  %689 = fmul fast float %688, 0x3F70101020000000
  %690 = fmul fast float %681, %681
  %691 = fmul fast float %690, %674
  %692 = fmul fast float %685, %685
  %693 = fmul fast float %692, %675
  %694 = fmul fast float %689, %689
  %695 = fmul fast float %694, %676
  %696 = fsub fast float %691, %664
  %697 = fsub fast float %693, %666
  %698 = fsub fast float %695, %668
  %699 = fmul fast float %696, %43
  %700 = fmul fast float %697, %43
  %701 = fmul fast float %698, %43
  %702 = fadd fast float %699, %664
  %703 = fadd fast float %700, %666
  %704 = fadd fast float %701, %668
  %705 = fmul fast float %702, %633
  %706 = fmul fast float %703, %634
  %707 = fmul fast float %704, %635
  %708 = add i32 %26, 108
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = add i32 %710, 0
  %712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %712, %dx.types.Handle %57, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = add i32 %26, 44
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = shl i32 %719, 4
  %721 = and i32 %720, 32752
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = lshr i32 %719, 7
  %724 = and i32 %723, 32752
  %725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %724)  ; LegacyF16ToF32(value)
  %726 = lshr i32 %719, 22
  %727 = shl nuw nsw i32 %726, 5
  %728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %727)  ; LegacyF16ToF32(value)
  %729 = fmul fast float %722, %714
  %730 = fmul fast float %725, %715
  %731 = fmul fast float %728, %716
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 0
  %734 = fmul fast float %729, %733
  %735 = fmul fast float %730, %733
  %736 = fmul fast float %731, %733
  %737 = add i32 %26, 48
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = lshr i32 %739, 22
  %741 = shl nuw nsw i32 %740, 5
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = fmul fast float %742, %734
  %744 = select i1 %119, float %743, float %734
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %57, float %178, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = shl i32 %754, 4
  %756 = and i32 %755, 32752
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = lshr i32 %754, 7
  %759 = and i32 %758, 32752
  %760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %759)  ; LegacyF16ToF32(value)
  %761 = lshr i32 %754, 22
  %762 = shl nuw nsw i32 %761, 5
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = fmul fast float %757, %750
  %765 = fmul fast float %760, %751
  %766 = fmul fast float %763, %752
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = fmul fast float %764, %768
  %770 = fmul fast float %765, %768
  %771 = fmul fast float %766, %768
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = lshr i32 %773, 22
  %775 = shl nuw nsw i32 %774, 5
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = fmul fast float %776, %769
  %778 = select i1 %119, float %777, float %769
  %779 = fsub fast float %778, %744
  %780 = fsub fast float %770, %735
  %781 = fsub fast float %771, %736
  %782 = fmul fast float %779, %43
  %783 = fmul fast float %780, %43
  %784 = fmul fast float %781, %43
  %785 = fadd fast float %782, %744
  %786 = fadd fast float %783, %735
  %787 = fadd fast float %784, %736
  %788 = add i32 %26, 40
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 255
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101020000000
  %794 = fmul fast float %793, %793
  %795 = add i32 %26, 112
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = add i32 %797, 0
  %799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %799, %dx.types.Handle %58, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = fmul fast float %794, %801
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = fmul fast float %806, 0x3F70101020000000
  %808 = fmul fast float %807, %807
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = add i32 %810, 0
  %812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %811, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %813 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %812, %dx.types.Handle %58, float %178, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = fmul fast float %808, %814
  %816 = fsub fast float %815, %802
  %817 = fmul fast float %816, %43
  %818 = fadd fast float %817, %802
  %819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %20, float %35, float %36, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %825 = fmul fast float %824, %820
  %826 = fmul fast float %824, %821
  %827 = fmul fast float %824, %822
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = fmul fast float %705, %829
  %831 = fmul fast float %706, %829
  %832 = fmul fast float %707, %829
  %833 = fmul fast float %785, %637
  %834 = fmul fast float %786, %638
  %835 = fmul fast float %787, %639
  %836 = call float @dx.op.dot3.f32(i32 55, float %833, float %834, float %835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %837 = select i1 %119, float 0.000000e+00, float %833
  %838 = select i1 %119, float %836, float %834
  %839 = select i1 %119, float 0.000000e+00, float %835
  %840 = fmul fast float %554, %785
  %841 = fmul fast float %555, %786
  %842 = fmul fast float %556, %787
  %843 = call float @dx.op.dot3.f32(i32 55, float %830, float %831, float %832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %844 = add i32 %26, 32
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = lshr i32 %846, 8
  %850 = and i32 %849, 255
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, %843
  %853 = fadd fast float %852, %848
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = and i32 %139, 8192
  %857 = icmp eq i32 %856, 0
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  br i1 %857, label %866, label %860, !dx.controlflow.hints !72

; <label>:860                                     ; preds = %632
  %861 = add i32 %136, 176
  %862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = fcmp fast oge float %863, 0.000000e+00
  %865 = select i1 %864, float %863, float %859
  br label %866

; <label>:866                                     ; preds = %860, %632
  %867 = phi float [ %865, %860 ], [ %859, %632 ]
  %868 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %11, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = lshr i32 %869, 18
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F4C00EBA0000000
  %873 = call float @dx.op.unary.f32(i32 21, float %872)  ; Exp(value)
  %874 = fadd fast float %873, -1.000000e+00
  %875 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %876 = extractvalue %dx.types.Dimensions %875, 0
  %877 = sitofp i32 %876 to float
  %878 = extractvalue %dx.types.Dimensions %875, 1
  %879 = sitofp i32 %878 to float
  %880 = fcmp fast oge float %226, %877
  %881 = fcmp fast oge float %227, %879
  %882 = or i1 %880, %881
  %883 = select i1 %882, float 0x4197782600000000, float %874
  %884 = icmp eq i32 %135, 3
  %885 = fcmp fast ogt float %56, %883
  %886 = and i1 %252, %885
  %887 = or i1 %884, %886
  %888 = icmp eq i32 %135, 2
  %889 = fcmp fast ole float %56, %883
  %890 = and i1 %888, %889
  %891 = or i1 %890, %887
  %892 = fmul fast float %840, %825
  %893 = fmul fast float %841, %826
  %894 = fmul fast float %842, %827
  %895 = fadd fast float %892, %837
  %896 = fadd fast float %838, %893
  %897 = fadd fast float %894, %839
  %898 = fmul fast float %895, %636
  %899 = fmul fast float %896, %636
  %900 = fmul fast float %897, %636
  %901 = fmul fast float %825, %636
  %902 = fmul fast float %826, %636
  %903 = fmul fast float %827, %636
  %904 = fadd fast float %818, -1.000000e+00
  %905 = fmul fast float %904, %636
  %906 = fadd fast float %905, 1.000000e+00
  %907 = call float @dx.op.dot3.f32(i32 55, float %906, float %906, float %906, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = fsub fast float 1.000000e+00, %907
  %909 = fmul fast float %867, %855
  %910 = fsub fast float 1.000000e+00, %855
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %914 = fmul fast float %913, %911
  %915 = fadd fast float %914, %909
  %916 = and i32 %139, 1048576
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %1009, label %918, !dx.controlflow.hints !73

; <label>:918                                     ; preds = %866
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %922 = fmul fast float %920, %61
  %923 = fmul fast float %921, %62
  %924 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %925 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %926 = select i1 %891, i32 2, i32 0
  %927 = or i32 %926, 1
  %928 = uitofp i32 %927 to float
  %929 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %20, float %924, float %925, float %928, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = extractvalue %dx.types.ResRet.f32 %929, 1
  %932 = extractvalue %dx.types.ResRet.f32 %929, 2
  %933 = extractvalue %dx.types.ResRet.f32 %929, 3
  %934 = add nuw nsw i32 %926, 2
  %935 = uitofp i32 %934 to float
  %936 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %20, float %924, float %925, float %935, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = extractvalue %dx.types.ResRet.f32 %936, 3
  %941 = call float @dx.op.binary.f32(i32 35, float %931, float %932)  ; FMax(a,b)
  %942 = call float @dx.op.binary.f32(i32 35, float %930, float %941)  ; FMax(a,b)
  %943 = call float @dx.op.binary.f32(i32 35, float %942, float %933)  ; FMax(a,b)
  %944 = call float @dx.op.binary.f32(i32 36, float %938, float %939)  ; FMin(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %937, float %944)  ; FMin(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %945, float %940)  ; FMin(a,b)
  %947 = fmul fast float %943, 2.550000e+02
  %948 = fadd fast float %947, 0x3F70101020000000
  %949 = fptoui float %948 to i32
  %950 = fmul fast float %946, 2.550000e+02
  %951 = fadd fast float %950, 0x3F70101020000000
  %952 = fptoui float %951 to i32
  %953 = icmp ult i32 %949, %952
  br i1 %953, label %954, label %1002

; <label>:954                                     ; preds = %918
  %955 = fcmp fast ogt float %55, 9.843750e-01
  %956 = fadd fast float %56, -4.000000e+00
  %957 = select i1 %955, float -4.000000e+00, float %956
  %958 = call float @dx.op.binary.f32(i32 35, float %957, float 0.000000e+00)  ; FMax(a,b)
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = fadd fast float %960, %958
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %963 = fmul fast float %961, %962
  %964 = call float @dx.op.unary.f32(i32 23, float %963)  ; Log(value)
  %965 = extractvalue %dx.types.CBufRet.f32 %959, 3
  %966 = fmul fast float %965, %964
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %969 = fmul fast float %966, %968
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %971 = uitofp i32 %949 to float
  %972 = uitofp i32 %952 to float
  %973 = fadd fast float %971, 5.000000e-01
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fmul fast float %968, %973
  %976 = fmul fast float %968, %974
  %977 = fadd fast float %975, 0x3F0FFB4800000000
  %978 = fadd fast float %976, 0xBF0FFB4800000000
  %979 = call float @dx.op.binary.f32(i32 35, float %970, float %977)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 36, float %979, float %978)  ; FMin(a,b)
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %985 = select i1 %891, float %984, float 0.000000e+00
  %986 = fmul fast float %982, %980
  %987 = fadd fast float %985, %986
  %988 = fadd fast float %985, %983
  %989 = fsub fast float %982, %983
  %990 = fadd fast float %989, %985
  %991 = call float @dx.op.binary.f32(i32 35, float %987, float %988)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 36, float %991, float %990)  ; FMin(a,b)
  %993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %19, float %924, float %925, float %992, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %999 = fmul fast float %998, %994
  %1000 = fmul fast float %998, %995
  %1001 = fmul fast float %998, %996
  br label %1002

; <label>:1002                                    ; preds = %954, %918
  %1003 = phi float [ %999, %954 ], [ 1.000000e+00, %918 ]
  %1004 = phi float [ %1000, %954 ], [ 1.000000e+00, %918 ]
  %1005 = phi float [ %1001, %954 ], [ 1.000000e+00, %918 ]
  %1006 = fmul fast float %1003, %898
  %1007 = fmul fast float %1004, %899
  %1008 = fmul fast float %1005, %900
  br label %1009

; <label>:1009                                    ; preds = %1002, %866
  %1010 = phi float [ %1006, %1002 ], [ %898, %866 ]
  %1011 = phi float [ %1007, %1002 ], [ %899, %866 ]
  %1012 = phi float [ %1008, %1002 ], [ %900, %866 ]
  %1013 = and i32 %139, 2097152
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1019, label %1015, !dx.controlflow.hints !74

; <label>:1015                                    ; preds = %1009
  %1016 = add i32 %136, 192
  %1017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  br label %1022

; <label>:1019                                    ; preds = %1009
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 3
  br label %1022

; <label>:1022                                    ; preds = %1019, %1015
  %1023 = phi float [ %1018, %1015 ], [ %1021, %1019 ]
  %1024 = fmul fast float %901, %830
  %1025 = fmul fast float %902, %831
  %1026 = fmul fast float %903, %832
  br i1 %886, label %1027, label %1136

; <label>:1027                                    ; preds = %1022
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 3
  %1031 = fmul fast float %1029, %61
  %1032 = fmul fast float %1030, %62
  %1033 = call float @dx.op.unary.f32(i32 7, float %1031)  ; Saturate(value)
  %1034 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1035 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %20, float %1033, float %1034, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1040 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %20, float %1033, float %1034, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = extractvalue %dx.types.ResRet.f32 %1040, 3
  %1045 = call float @dx.op.binary.f32(i32 35, float %1037, float %1038)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 35, float %1036, float %1045)  ; FMax(a,b)
  %1047 = call float @dx.op.binary.f32(i32 35, float %1046, float %1039)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 36, float %1042, float %1043)  ; FMin(a,b)
  %1049 = call float @dx.op.binary.f32(i32 36, float %1041, float %1048)  ; FMin(a,b)
  %1050 = call float @dx.op.binary.f32(i32 36, float %1049, float %1044)  ; FMin(a,b)
  %1051 = fmul fast float %1047, 2.550000e+02
  %1052 = fadd fast float %1051, 0x3F70101020000000
  %1053 = fptoui float %1052 to i32
  %1054 = fmul fast float %1050, 2.550000e+02
  %1055 = fadd fast float %1054, 0x3F70101020000000
  %1056 = fptoui float %1055 to i32
  %1057 = icmp ult i32 %1053, %1056
  br i1 %1057, label %1058, label %1109

; <label>:1058                                    ; preds = %1027
  %1059 = fcmp fast ogt float %55, 9.843750e-01
  %1060 = fadd fast float %56, -4.000000e+00
  %1061 = select i1 %1059, float -4.000000e+00, float %1060
  %1062 = call float @dx.op.binary.f32(i32 35, float %1061, float 0.000000e+00)  ; FMax(a,b)
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = fadd fast float %1064, %1062
  %1066 = extractvalue %dx.types.CBufRet.f32 %1063, 2
  %1067 = fmul fast float %1065, %1066
  %1068 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1063, 3
  %1070 = fmul fast float %1069, %1068
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1073 = fmul fast float %1070, %1072
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  %1075 = uitofp i32 %1053 to float
  %1076 = uitofp i32 %1056 to float
  %1077 = fadd fast float %1075, 5.000000e-01
  %1078 = fadd fast float %1076, 5.000000e-01
  %1079 = fmul fast float %1072, %1077
  %1080 = fmul fast float %1072, %1078
  %1081 = fadd fast float %1079, 0x3F0FFB4800000000
  %1082 = fadd fast float %1080, 0xBF0FFB4800000000
  %1083 = call float @dx.op.binary.f32(i32 35, float %1074, float %1081)  ; FMax(a,b)
  %1084 = call float @dx.op.binary.f32(i32 36, float %1083, float %1082)  ; FMin(a,b)
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1088 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1089 = fmul fast float %1086, %1084
  %1090 = fadd fast float %1088, %1089
  %1091 = fadd fast float %1088, %1087
  %1092 = fsub fast float %1086, %1087
  %1093 = fadd fast float %1092, %1088
  %1094 = call float @dx.op.binary.f32(i32 35, float %1090, float %1091)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 36, float %1094, float %1093)  ; FMin(a,b)
  %1096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %1033, float %1034, float %1095, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1033, float %1034, float %1095, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.ResRet.f32 %1100, 2
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1106 = fmul fast float %1105, %1101
  %1107 = fmul fast float %1105, %1102
  %1108 = fmul fast float %1105, %1103
  br label %1109

; <label>:1109                                    ; preds = %1058, %1027
  %1110 = phi float [ %1097, %1058 ], [ 1.000000e+00, %1027 ]
  %1111 = phi float [ %1098, %1058 ], [ 1.000000e+00, %1027 ]
  %1112 = phi float [ %1099, %1058 ], [ 1.000000e+00, %1027 ]
  %1113 = phi float [ %1106, %1058 ], [ 0.000000e+00, %1027 ]
  %1114 = phi float [ %1107, %1058 ], [ 0.000000e+00, %1027 ]
  %1115 = phi float [ %1108, %1058 ], [ 0.000000e+00, %1027 ]
  %1116 = fmul fast float %1113, %908
  %1117 = fmul fast float %1114, %908
  %1118 = fmul fast float %1115, %908
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1110, float %1111, float %1112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call float @dx.op.dot3.f32(i32 55, float %1116, float %1117, float %1118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = select i1 %119, float %1119, float %1110
  %1122 = select i1 %119, float %1119, float %1111
  %1123 = select i1 %119, float 1.000000e+00, float %1112
  %1124 = select i1 %119, float %1120, float %1116
  %1125 = select i1 %119, float 0.000000e+00, float %1117
  %1126 = select i1 %119, float 0.000000e+00, float %1118
  %1127 = fmul fast float %1121, %1024
  %1128 = fmul fast float %1122, %1025
  %1129 = fmul fast float %1123, %1026
  %1130 = fadd fast float %1127, %1124
  %1131 = fadd fast float %1128, %1125
  %1132 = fadd fast float %1126, %1129
  %1133 = fmul fast float %1121, %1010
  %1134 = fmul fast float %1122, %1011
  %1135 = fmul fast float %1123, %1012
  br label %1136

; <label>:1136                                    ; preds = %1109, %1022
  %1137 = phi float [ %883, %1109 ], [ %56, %1022 ]
  %1138 = phi float [ %1130, %1109 ], [ %1024, %1022 ]
  %1139 = phi float [ %1131, %1109 ], [ %1025, %1022 ]
  %1140 = phi float [ %1132, %1109 ], [ %1026, %1022 ]
  %1141 = phi float [ %1133, %1109 ], [ %1010, %1022 ]
  %1142 = phi float [ %1134, %1109 ], [ %1011, %1022 ]
  %1143 = phi float [ %1135, %1109 ], [ %1012, %1022 ]
  %1144 = phi float [ %1110, %1109 ], [ 1.000000e+00, %1022 ]
  br i1 %891, label %1446, label %1145

; <label>:1145                                    ; preds = %1136
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %35, float %36, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %20, float %35, float %36, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1150, 2
  %1154 = fmul fast float %1147, %908
  %1155 = fmul fast float %1148, %908
  %1156 = fmul fast float %1149, %908
  %1157 = fmul fast float %1151, %1144
  %1158 = call float @dx.op.dot3.f32(i32 55, float %1151, float %1152, float %1153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1154, float %1155, float %1156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = select i1 %119, float %1158, float %1151
  %1161 = select i1 %119, float %1158, float %1152
  %1162 = select i1 %119, float 1.000000e+00, float %1153
  %1163 = select i1 %119, float %1159, float %1154
  %1164 = select i1 %119, float 0.000000e+00, float %1155
  %1165 = select i1 %119, float 0.000000e+00, float %1156
  %1166 = fmul fast float %1160, %1138
  %1167 = fmul fast float %1161, %1139
  %1168 = fmul fast float %1162, %1140
  %1169 = fadd fast float %1166, %1163
  %1170 = fadd fast float %1167, %1164
  %1171 = fadd fast float %1168, %1165
  %1172 = fmul fast float %1160, %1141
  %1173 = fmul fast float %1161, %1142
  %1174 = fmul fast float %1162, %1143
  %1175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.i32 %1175, 0
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1446, label %1178, !dx.controlflow.hints !75

; <label>:1178                                    ; preds = %1145
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 2
  %1181 = extractvalue %dx.types.CBufRet.f32 %1179, 3
  %1182 = fmul fast float %1180, %61
  %1183 = fmul fast float %1181, %62
  %1184 = fmul fast float %1182, 2.000000e+00
  %1185 = fmul fast float %1183, 2.000000e+00
  %1186 = fsub fast float 1.000000e+00, %1184
  %1187 = fsub fast float 1.000000e+00, %1185
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.CBufRet.f32 %1188, 1
  %1191 = extractvalue %dx.types.CBufRet.f32 %1188, 2
  %1192 = fmul fast float %1186, %1189
  %1193 = fmul fast float %1186, %1190
  %1194 = fmul fast float %1186, %1191
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1199 = fmul fast float %1187, %1196
  %1200 = fmul fast float %1187, %1197
  %1201 = fmul fast float %1187, %1198
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1206 = fadd fast float %1199, %1203
  %1207 = fadd fast float %1206, %1192
  %1208 = fadd fast float %1200, %1204
  %1209 = fadd fast float %1208, %1193
  %1210 = fadd fast float %1201, %1205
  %1211 = fadd fast float %1210, %1194
  %1212 = fmul fast float %1207, %1137
  %1213 = fmul fast float %1209, %1137
  %1214 = fmul fast float %1211, %1137
  %1215 = fmul fast float %1212, %1212
  %1216 = fmul fast float %1213, %1213
  %1217 = fadd fast float %1215, %1216
  %1218 = fmul fast float %1214, %1214
  %1219 = fadd fast float %1217, %1218
  %1220 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = fsub fast float %1220, %1222
  %1224 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1225 = fmul fast float %1223, %1224
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fadd fast float %1226, -5.000000e-01
  %1228 = fmul fast float %1227, 2.000000e+00
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1231 = call float @dx.op.binary.f32(i32 36, float %1230, float %1228)  ; FMin(a,b)
  %1232 = fsub fast float -0.000000e+00, %1230
  %1233 = fcmp fast ogt float %1231, %1232
  br i1 %1233, label %1234, label %1446, !dx.controlflow.hints !76

; <label>:1234                                    ; preds = %1178
  %1235 = fmul fast float %1231, 5.000000e-01
  %1236 = fadd fast float %1235, 5.000000e-01
  %1237 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1238 = call float @dx.op.unary.f32(i32 27, float %1237)  ; Round_ni(value)
  %1239 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1240 = fmul fast float %1239, 2.000000e+00
  %1241 = fadd fast float %1240, -1.000000e+00
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %20, float %1182, float %1183, float %1238, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.ResRet.f32 %1242, 3
  %1247 = fadd fast float %1243, -5.000000e-01
  %1248 = fadd fast float %1245, -5.000000e-01
  %1249 = fmul fast float %1247, 0xBFD5555560000000
  %1250 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1248, float %1249)  ; FMad(a,b,c)
  %1251 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1244, float 0.000000e+00)  ; FMad(a,b,c)
  %1252 = fadd fast float %1251, %1246
  %1253 = fmul fast float %1247, -7.500000e-01
  %1254 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1248, float %1253)  ; FMad(a,b,c)
  %1255 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1244, float 0.000000e+00)  ; FMad(a,b,c)
  %1256 = fadd fast float %1255, %1246
  %1257 = call float @dx.op.binary.f32(i32 35, float %1250, float -1.000000e+00)  ; FMax(a,b)
  %1258 = call float @dx.op.binary.f32(i32 35, float %1252, float -1.000000e+00)  ; FMax(a,b)
  %1259 = call float @dx.op.binary.f32(i32 35, float %1254, float -1.000000e+00)  ; FMax(a,b)
  %1260 = call float @dx.op.binary.f32(i32 35, float %1256, float -1.000000e+00)  ; FMax(a,b)
  %1261 = call float @dx.op.binary.f32(i32 36, float %1257, float 1.000000e+00)  ; FMin(a,b)
  %1262 = call float @dx.op.binary.f32(i32 36, float %1258, float 1.000000e+00)  ; FMin(a,b)
  %1263 = call float @dx.op.binary.f32(i32 36, float %1259, float 1.000000e+00)  ; FMin(a,b)
  %1264 = call float @dx.op.binary.f32(i32 36, float %1260, float 1.000000e+00)  ; FMin(a,b)
  %1265 = fcmp fast olt float %1261, 0x3FEFFF8020000000
  br i1 %1265, label %1266, label %1381, !dx.controlflow.hints !77

; <label>:1266                                    ; preds = %1234
  %1267 = extractvalue %dx.types.CBufRet.f32 %1229, 3
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1272 = extractvalue %dx.types.CBufRet.f32 %1268, 3
  %1273 = fsub fast float %1269, %1261
  %1274 = fsub fast float %1270, %1262
  %1275 = fsub fast float %1271, %1263
  %1276 = fsub fast float %1272, %1264
  %1277 = fmul fast float %1273, %1267
  %1278 = fmul fast float %1274, %1267
  %1279 = fmul fast float %1275, %1267
  %1280 = fmul fast float %1276, %1267
  %1281 = fadd fast float %1277, %1261
  %1282 = fadd fast float %1278, %1262
  %1283 = fsub fast float -0.000000e+00, %1282
  %1284 = fadd fast float %1279, %1263
  %1285 = fadd fast float %1280, %1264
  %1286 = fmul fast float %1281, %1281
  %1287 = fsub fast float %1282, %1286
  %1288 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1287)  ; FMax(a,b)
  %1289 = fdiv fast float 1.000000e+00, %1288
  %1290 = fmul fast float %1282, %1281
  %1291 = fsub fast float %1284, %1290
  %1292 = fsub fast float %1241, %1281
  %1293 = fmul fast float %1241, %1241
  %1294 = fsub fast float %1293, %1282
  %1295 = fmul fast float %1292, %1289
  %1296 = fmul fast float %1295, %1291
  %1297 = fsub fast float %1294, %1296
  %1298 = fmul fast float %1282, %1282
  %1299 = fsub fast float %1285, %1298
  %1300 = fmul fast float %1291, %1291
  %1301 = fmul fast float %1300, %1289
  %1302 = fsub fast float %1299, %1301
  %1303 = fdiv fast float %1297, %1302
  %1304 = fmul fast float %1291, %1303
  %1305 = fsub fast float %1292, %1304
  %1306 = fmul fast float %1305, %1289
  %1307 = fmul fast float %1306, %1281
  %1308 = fsub fast float 1.000000e+00, %1307
  %1309 = fmul fast float %1282, %1303
  %1310 = fsub fast float %1308, %1309
  %1311 = fmul fast float %1306, %1306
  %1312 = fmul fast float %1303, 4.000000e+00
  %1313 = fmul fast float %1312, %1310
  %1314 = fsub fast float %1311, %1313
  %1315 = call float @dx.op.unary.f32(i32 24, float %1314)  ; Sqrt(value)
  %1316 = fcmp fast oge float %1306, 0.000000e+00
  %1317 = fsub fast float -0.000000e+00, %1315
  %1318 = select i1 %1316, float %1317, float %1315
  %1319 = fsub fast float %1318, %1306
  %1320 = fdiv fast float %1319, %1303
  %1321 = fdiv fast float %1310, %1319
  %1322 = fmul fast float %1320, 5.000000e-01
  %1323 = fmul fast float %1321, 2.000000e+00
  %1324 = select i1 %1316, float %1322, float %1323
  %1325 = select i1 %1316, float %1323, float %1322
  %1326 = call float @dx.op.binary.f32(i32 35, float %1324, float %1325)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 36, float %1324, float %1325)  ; FMin(a,b)
  %1328 = fcmp fast ogt float %1241, %1327
  br i1 %1328, label %1329, label %1339

; <label>:1329                                    ; preds = %1266
  %1330 = fsub fast float %1241, %1327
  %1331 = fsub fast float %1326, %1327
  %1332 = fmul fast float %1330, %1331
  %1333 = fmul fast float %1326, %1241
  %1334 = fadd fast float %1326, %1241
  %1335 = fmul fast float %1334, %1281
  %1336 = fadd fast float %1333, %1282
  %1337 = fsub fast float %1336, %1335
  %1338 = fdiv fast float %1337, %1332
  br label %1339

; <label>:1339                                    ; preds = %1329, %1266
  %1340 = phi float [ %1338, %1329 ], [ 0.000000e+00, %1266 ]
  %1341 = fcmp fast ogt float %1241, %1326
  %1342 = fsub fast float %1241, %1326
  br i1 %1341, label %1343, label %1353

; <label>:1343                                    ; preds = %1339
  %1344 = fsub fast float %1326, %1327
  %1345 = fmul fast float %1344, %1342
  %1346 = fmul fast float %1327, %1241
  %1347 = fadd fast float %1327, %1241
  %1348 = fmul fast float %1347, %1281
  %1349 = fsub fast float %1283, %1346
  %1350 = fadd fast float %1349, %1348
  %1351 = fdiv fast float %1350, %1345
  %1352 = fadd fast float %1351, %1340
  br label %1353

; <label>:1353                                    ; preds = %1343, %1339
  %1354 = phi float [ %1352, %1343 ], [ %1340, %1339 ]
  %1355 = fsub fast float %1241, %1327
  %1356 = fmul fast float %1355, %1342
  %1357 = fmul fast float %1327, %1326
  %1358 = fadd fast float %1327, %1326
  %1359 = fmul fast float %1358, %1281
  %1360 = fadd fast float %1357, %1282
  %1361 = fsub fast float %1360, %1359
  %1362 = fdiv fast float %1361, %1356
  %1363 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1364 = fcmp fast oeq float %1023, 0.000000e+00
  %1365 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1366 = fcmp fast oeq float %1365, 0.000000e+00
  %1367 = or i1 %1364, %1366
  %1368 = fmul fast float %1365, 2.000000e+00
  %1369 = fadd fast float %1230, %1231
  %1370 = fdiv fast float %1369, %1368
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = fmul fast float %1371, 2.000000e+00
  %1373 = fsub fast float 3.000000e+00, %1372
  %1374 = fmul fast float %1371, %1371
  %1375 = fmul fast float %1374, %1373
  %1376 = select i1 %1367, float 1.000000e+00, float %1375
  %1377 = fmul fast float %1362, %1023
  %1378 = fadd fast float %1363, %1377
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fmul fast float %1376, %1379
  br label %1381

; <label>:1381                                    ; preds = %1353, %1234
  %1382 = phi float [ %1380, %1353 ], [ 0.000000e+00, %1234 ]
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %20, float %1182, float %1183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.i32 %1386, 2
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1394, label %1389

; <label>:1389                                    ; preds = %1381
  %1390 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1391 = fadd fast float %1385, -1.000000e+00
  %1392 = fmul fast float %1390, %1391
  %1393 = fadd fast float %1392, 1.000000e+00
  br label %1394

; <label>:1394                                    ; preds = %1389, %1381
  %1395 = phi float [ %1393, %1389 ], [ %1383, %1381 ]
  %1396 = call float @dx.op.binary.f32(i32 35, float %1385, float %1395)  ; FMax(a,b)
  %1397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.i32 %1397, 2
  %1399 = and i32 %1398, 1
  %1400 = icmp eq i32 %1399, 0
  %1401 = fcmp fast une float %1396, 1.000000e+00
  %1402 = and i1 %1401, %1400
  br i1 %1402, label %1403, label %1422

; <label>:1403                                    ; preds = %1394
  %1404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %20, float %1182, float %1183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.ResRet.f32 %1404, 2
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 1
  %1410 = fmul fast float %1409, %1405
  %1411 = fmul fast float %1409, %1406
  %1412 = fmul fast float %1409, %1407
  %1413 = fcmp fast ogt float %1385, 0x3FEFFF2E40000000
  %1414 = fsub fast float 1.000000e+00, %1396
  %1415 = fsub fast float 1.000000e+00, %1385
  %1416 = fdiv fast float %1414, %1415
  %1417 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1418 = select i1 %1413, float 0.000000e+00, float %1417
  %1419 = fmul fast float %1410, %1418
  %1420 = fmul fast float %1411, %1418
  %1421 = fmul fast float %1412, %1418
  br label %1422

; <label>:1422                                    ; preds = %1403, %1394
  %1423 = phi float [ 0.000000e+00, %1394 ], [ %1419, %1403 ]
  %1424 = phi float [ 0.000000e+00, %1394 ], [ %1420, %1403 ]
  %1425 = phi float [ 0.000000e+00, %1394 ], [ %1421, %1403 ]
  %1426 = fmul fast float %1423, %908
  %1427 = fmul fast float %1424, %908
  %1428 = fmul fast float %1425, %908
  %1429 = fmul fast float %1396, %1157
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1396, float %1396, float %1396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = call float @dx.op.dot3.f32(i32 55, float %1426, float %1427, float %1428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1432 = select i1 %119, float %1430, float %1396
  %1433 = select i1 %119, float 1.000000e+00, float %1396
  %1434 = select i1 %119, float %1431, float %1426
  %1435 = select i1 %119, float 0.000000e+00, float %1427
  %1436 = select i1 %119, float 0.000000e+00, float %1428
  %1437 = fmul fast float %1432, %1169
  %1438 = fmul fast float %1432, %1170
  %1439 = fmul fast float %1433, %1171
  %1440 = fadd fast float %1437, %1434
  %1441 = fadd fast float %1438, %1435
  %1442 = fadd fast float %1436, %1439
  %1443 = fmul fast float %1432, %1172
  %1444 = fmul fast float %1432, %1173
  %1445 = fmul fast float %1433, %1174
  br label %1446

; <label>:1446                                    ; preds = %1422, %1178, %1145, %1136
  %1447 = phi float [ %1138, %1136 ], [ %1169, %1145 ], [ %1440, %1422 ], [ %1169, %1178 ]
  %1448 = phi float [ %1139, %1136 ], [ %1170, %1145 ], [ %1441, %1422 ], [ %1170, %1178 ]
  %1449 = phi float [ %1140, %1136 ], [ %1171, %1145 ], [ %1442, %1422 ], [ %1171, %1178 ]
  %1450 = phi float [ %1141, %1136 ], [ %1172, %1145 ], [ %1443, %1422 ], [ %1172, %1178 ]
  %1451 = phi float [ %1142, %1136 ], [ %1173, %1145 ], [ %1444, %1422 ], [ %1173, %1178 ]
  %1452 = phi float [ %1143, %1136 ], [ %1174, %1145 ], [ %1445, %1422 ], [ %1174, %1178 ]
  %1453 = phi float [ %1144, %1136 ], [ %1157, %1145 ], [ %1429, %1422 ], [ %1157, %1178 ]
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 2
  %1456 = extractvalue %dx.types.CBufRet.f32 %1454, 3
  %1457 = fmul fast float %1455, %61
  %1458 = fmul fast float %1456, %62
  %1459 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1460 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1461 = select i1 %891, i32 2, i32 0
  %1462 = or i32 %1461, 1
  %1463 = uitofp i32 %1462 to float
  %1464 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %20, float %1459, float %1460, float %1463, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.ResRet.f32 %1464, 1
  %1467 = extractvalue %dx.types.ResRet.f32 %1464, 2
  %1468 = extractvalue %dx.types.ResRet.f32 %1464, 3
  %1469 = add nuw nsw i32 %1461, 2
  %1470 = uitofp i32 %1469 to float
  %1471 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %20, float %1459, float %1460, float %1470, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.ResRet.f32 %1471, 2
  %1475 = extractvalue %dx.types.ResRet.f32 %1471, 3
  %1476 = call float @dx.op.binary.f32(i32 35, float %1466, float %1467)  ; FMax(a,b)
  %1477 = call float @dx.op.binary.f32(i32 35, float %1465, float %1476)  ; FMax(a,b)
  %1478 = call float @dx.op.binary.f32(i32 35, float %1477, float %1468)  ; FMax(a,b)
  %1479 = call float @dx.op.binary.f32(i32 36, float %1473, float %1474)  ; FMin(a,b)
  %1480 = call float @dx.op.binary.f32(i32 36, float %1472, float %1479)  ; FMin(a,b)
  %1481 = call float @dx.op.binary.f32(i32 36, float %1480, float %1475)  ; FMin(a,b)
  %1482 = fmul fast float %1478, 2.550000e+02
  %1483 = fadd fast float %1482, 0x3F70101020000000
  %1484 = fptoui float %1483 to i32
  %1485 = fmul fast float %1481, 2.550000e+02
  %1486 = fadd fast float %1485, 0x3F70101020000000
  %1487 = fptoui float %1486 to i32
  %1488 = icmp ult i32 %1484, %1487
  br i1 %1488, label %1489, label %1541

; <label>:1489                                    ; preds = %1446
  %1490 = fcmp fast ogt float %55, 9.843750e-01
  %1491 = fadd fast float %1137, -4.000000e+00
  %1492 = select i1 %1490, float -4.000000e+00, float %1491
  %1493 = call float @dx.op.binary.f32(i32 35, float %1492, float 0.000000e+00)  ; FMax(a,b)
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = fadd fast float %1495, %1493
  %1497 = extractvalue %dx.types.CBufRet.f32 %1494, 2
  %1498 = fmul fast float %1496, %1497
  %1499 = call float @dx.op.unary.f32(i32 23, float %1498)  ; Log(value)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1501 = fmul fast float %1500, %1499
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 2
  %1504 = fmul fast float %1501, %1503
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1506 = uitofp i32 %1484 to float
  %1507 = uitofp i32 %1487 to float
  %1508 = fadd fast float %1506, 5.000000e-01
  %1509 = fadd fast float %1507, 5.000000e-01
  %1510 = fmul fast float %1503, %1508
  %1511 = fmul fast float %1503, %1509
  %1512 = fadd fast float %1510, 0x3F0FFB4800000000
  %1513 = fadd fast float %1511, 0xBF0FFB4800000000
  %1514 = call float @dx.op.binary.f32(i32 35, float %1505, float %1512)  ; FMax(a,b)
  %1515 = call float @dx.op.binary.f32(i32 36, float %1514, float %1513)  ; FMin(a,b)
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1516, 2
  %1519 = extractvalue %dx.types.CBufRet.f32 %1516, 0
  %1520 = select i1 %891, float %1519, float 0.000000e+00
  %1521 = fmul fast float %1517, %1515
  %1522 = fadd fast float %1520, %1521
  %1523 = fadd fast float %1520, %1518
  %1524 = fsub fast float %1517, %1518
  %1525 = fadd fast float %1524, %1520
  %1526 = call float @dx.op.binary.f32(i32 35, float %1522, float %1523)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 36, float %1526, float %1525)  ; FMin(a,b)
  %1528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %1459, float %1460, float %1527, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.ResRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.ResRet.f32 %1528, 2
  %1532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %19, float %1459, float %1460, float %1527, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = extractvalue %dx.types.ResRet.f32 %1532, 1
  %1535 = extractvalue %dx.types.ResRet.f32 %1532, 2
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1538 = fmul fast float %1537, %1533
  %1539 = fmul fast float %1537, %1534
  %1540 = fmul fast float %1537, %1535
  br label %1541

; <label>:1541                                    ; preds = %1489, %1446
  %1542 = phi float [ %1529, %1489 ], [ 1.000000e+00, %1446 ]
  %1543 = phi float [ %1530, %1489 ], [ 1.000000e+00, %1446 ]
  %1544 = phi float [ %1531, %1489 ], [ 1.000000e+00, %1446 ]
  %1545 = phi float [ %1538, %1489 ], [ 0.000000e+00, %1446 ]
  %1546 = phi float [ %1539, %1489 ], [ 0.000000e+00, %1446 ]
  %1547 = phi float [ %1540, %1489 ], [ 0.000000e+00, %1446 ]
  %1548 = fmul fast float %1545, %908
  %1549 = fmul fast float %1546, %908
  %1550 = fmul fast float %1547, %908
  %1551 = fmul fast float %1542, %1453
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1543, float %1544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1549, float %1550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = select i1 %119, float %1552, float %1542
  %1555 = select i1 %119, float %1552, float %1543
  %1556 = select i1 %119, float 1.000000e+00, float %1544
  %1557 = select i1 %119, float %1553, float %1548
  %1558 = select i1 %119, float 0.000000e+00, float %1549
  %1559 = select i1 %119, float 0.000000e+00, float %1550
  %1560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %24, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.i32 %1560, 3
  %1562 = and i32 %1561, 3
  %1563 = icmp ne i32 %1562, 0
  %1564 = and i32 %1561, 4
  %1565 = icmp ne i32 %1564, 0
  %1566 = and i1 %1563, %1565
  %1567 = and i1 %119, %1566
  br i1 %1567, label %1568, label %1574

; <label>:1568                                    ; preds = %1541
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1571 = fadd fast float %1551, -1.000000e+00
  %1572 = fmul fast float %1570, %1571
  %1573 = fadd fast float %1572, 1.000000e+00
  br label %1574

; <label>:1574                                    ; preds = %1568, %1541
  %1575 = phi float [ %1573, %1568 ], [ %1551, %1541 ]
  %1576 = fadd fast float %1450, %1447
  %1577 = fmul fast float %1554, %1576
  %1578 = fadd fast float %1577, %1557
  %1579 = fadd fast float %1451, %1448
  %1580 = fmul fast float %1555, %1579
  %1581 = fadd fast float %1580, %1558
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  br i1 %119, label %1584, label %1605

; <label>:1584                                    ; preds = %1574
  %1585 = fadd fast float %1578, %1581
  %1586 = fmul fast float %1583, %1585
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 3
  %1589 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %1590 = fsub fast float %915, %1589
  %1591 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %1592 = fmul fast float %1590, %1591
  %1593 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1594 = fsub fast float %1593, %1588
  %1595 = fmul fast float %1594, %1575
  %1596 = fadd fast float %1595, %1588
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = fsub fast float %1596, %1598
  %1600 = fmul fast float %1599, 1.000000e+01
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1602 = fmul fast float %1601, %908
  %1603 = fsub fast float %908, %1602
  %1604 = fmul fast float %1603, %1596
  br label %1617

; <label>:1605                                    ; preds = %1574
  %1606 = fadd fast float %1452, %1449
  %1607 = fmul fast float %1556, %1606
  %1608 = fadd fast float %1607, %1559
  %1609 = fmul fast float %1583, %1578
  %1610 = fmul fast float %1583, %1581
  %1611 = fmul fast float %1583, %1608
  %1612 = call float @dx.op.binary.f32(i32 35, float %1610, float %1611)  ; FMax(a,b)
  %1613 = call float @dx.op.binary.f32(i32 35, float %1609, float %1612)  ; FMax(a,b)
  %1614 = call float @dx.op.binary.f32(i32 35, float %1613, float %908)  ; FMax(a,b)
  %1615 = fcmp fast ugt float %1614, 0x3F10000000000000
  br i1 %1615, label %1617, label %1616

; <label>:1616                                    ; preds = %1605
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1617

; <label>:1617                                    ; preds = %1616, %1605, %1584
  %1618 = phi float [ %1586, %1584 ], [ %1609, %1616 ], [ %1609, %1605 ]
  %1619 = phi float [ %1604, %1584 ], [ %1610, %1616 ], [ %1610, %1605 ]
  %1620 = phi float [ %1603, %1584 ], [ %1611, %1616 ], [ %1611, %1605 ]
  %1621 = phi float [ %1603, %1584 ], [ %908, %1616 ], [ %908, %1605 ]
  %1622 = fadd fast float %570, 0x3FE3C6EF40000000
  %1623 = call float @dx.op.unary.f32(i32 22, float %1622)  ; Frc(value)
  %1624 = call float @dx.op.unary.f32(i32 23, float %1618)  ; Log(value)
  %1625 = fadd fast float %1624, -7.000000e+00
  %1626 = call float @dx.op.unary.f32(i32 21, float %1625)  ; Exp(value)
  %1627 = fmul fast float %1623, 2.000000e+00
  %1628 = fadd fast float %1627, -1.000000e+00
  %1629 = fmul fast float %1626, %1628
  %1630 = fcmp fast ogt float %1618, 0.000000e+00
  %1631 = select i1 %1630, float %1629, float 0.000000e+00
  %1632 = fadd fast float %1631, %1618
  %1633 = fadd fast float %570, 0x3FF3C6EF40000000
  %1634 = call float @dx.op.unary.f32(i32 22, float %1633)  ; Frc(value)
  %1635 = call float @dx.op.unary.f32(i32 23, float %1619)  ; Log(value)
  %1636 = fadd fast float %1635, -7.000000e+00
  %1637 = call float @dx.op.unary.f32(i32 21, float %1636)  ; Exp(value)
  %1638 = fmul fast float %1634, 2.000000e+00
  %1639 = fadd fast float %1638, -1.000000e+00
  %1640 = fmul fast float %1637, %1639
  %1641 = fcmp fast ogt float %1619, 0.000000e+00
  %1642 = select i1 %1641, float %1640, float 0.000000e+00
  %1643 = fadd fast float %1642, %1619
  %1644 = fadd fast float %570, 0x3FFDAA66E0000000
  %1645 = call float @dx.op.unary.f32(i32 22, float %1644)  ; Frc(value)
  %1646 = call float @dx.op.unary.f32(i32 23, float %1620)  ; Log(value)
  %1647 = fadd fast float %1646, -6.000000e+00
  %1648 = call float @dx.op.unary.f32(i32 21, float %1647)  ; Exp(value)
  %1649 = fmul fast float %1645, 2.000000e+00
  %1650 = fadd fast float %1649, -1.000000e+00
  %1651 = fmul fast float %1648, %1650
  %1652 = fcmp fast ogt float %1620, 0.000000e+00
  %1653 = select i1 %1652, float %1651, float 0.000000e+00
  %1654 = fadd fast float %1653, %1620
  %1655 = select i1 %119, float %1619, float %1643
  %1656 = select i1 %119, float %1620, float %1654
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1657 = call float @dx.op.binary.f32(i32 36, float %1632, float 3.225500e+04)  ; FMin(a,b)
  %1658 = call float @dx.op.binary.f32(i32 36, float %1655, float 3.225500e+04)  ; FMin(a,b)
  %1659 = call float @dx.op.binary.f32(i32 36, float %1656, float 3.225500e+04)  ; FMin(a,b)
  %1660 = call float @dx.op.binary.f32(i32 36, float %1621, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1657)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1658)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1659)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1660)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!37}
!dx.entryPoints = !{!38}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !28, !31}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !22}
!22 = !{i32 0, i32 14}
!23 = !{i32 14, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!27 = !{i32 18, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!28 = !{!29, !30}
!29 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!30 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!31 = !{!32, !33, !34, !35, !36}
!32 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!33 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!34 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!35 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!36 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!37 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!38 = !{void ()* @ps_main, !"ps_main", !39, !4, !65}
!39 = !{!40, !62, null}
!40 = !{!41, !44, !45, !47, !50, !52, !54, !56, !58, !59, !61}
!41 = !{i32 0, !"SV_Position", i8 9, i8 3, !42, i8 4, i32 1, i8 4, i32 0, i8 0, !43}
!42 = !{i32 0}
!43 = !{i32 3, i32 15}
!44 = !{i32 1, !"COLOR", i8 9, i8 0, !42, i8 2, i32 1, i8 4, i32 1, i8 0, !43}
!45 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 2, i8 0, !46}
!46 = !{i32 3, i32 3}
!47 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 3, i8 0, !49}
!48 = !{i32 1}
!49 = !{i32 3, i32 7}
!50 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !51, i8 1, i32 1, i8 4, i32 4, i8 0, !49}
!51 = !{i32 2}
!52 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 5, i8 0, !43}
!53 = !{i32 3}
!54 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !55, i8 3, i32 1, i8 2, i32 6, i8 0, !46}
!55 = !{i32 5}
!56 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !57, i8 2, i32 1, i8 4, i32 7, i8 0, !43}
!57 = !{i32 8}
!58 = !{i32 8, !"QUAD_POSITION", i8 9, i8 0, !42, i8 1, i32 1, i8 4, i32 8, i8 0, !43}
!59 = !{i32 9, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 3, i32 9, i8 0, !60}
!60 = !{i32 3, i32 5}
!61 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !42, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!62 = !{!63, !64}
!63 = !{i32 0, !"SV_Target", i8 9, i8 16, !42, i8 0, i32 1, i8 4, i32 0, i8 0, !43}
!64 = !{i32 1, !"SV_Target", i8 9, i8 16, !48, i8 0, i32 1, i8 4, i32 1, i8 0, !43}
!65 = !{i32 0, i64 24}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

