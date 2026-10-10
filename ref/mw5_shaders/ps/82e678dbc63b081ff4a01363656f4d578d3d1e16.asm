;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1   xyz         3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyz 
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
; shader hash: 7095bec89937806a1f0acd5c49630f00
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
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = fmul fast float %51, %44
  %53 = fmul fast float %51, %45
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %57 = fmul fast float %52, 2.000000e+00
  %58 = fmul fast float %57, %55
  %59 = fmul fast float %53, 2.000000e+00
  %60 = fmul fast float %59, %56
  %61 = fsub fast float 1.000000e+00, %58
  %62 = fsub fast float 1.000000e+00, %60
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %61, %64
  %68 = fmul fast float %61, %65
  %69 = fmul fast float %61, %66
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = fmul fast float %62, %71
  %75 = fmul fast float %62, %72
  %76 = fmul fast float %62, %73
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = fadd fast float %74, %78
  %82 = fadd fast float %81, %67
  %83 = fadd fast float %75, %79
  %84 = fadd fast float %83, %68
  %85 = fadd fast float %76, %80
  %86 = fadd fast float %85, %69
  %87 = fmul fast float %82, %47
  %88 = fmul fast float %84, %47
  %89 = fmul fast float %86, %47
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 4
  %95 = icmp ne i32 %94, 0
  %96 = and i1 %93, %95
  br i1 %96, label %97, label %106

; <label>:97                                      ; preds = %0
  %98 = fmul fast float %56, %53
  %99 = fmul fast float %55, %52
  %100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %99, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fsub fast float 1.000000e+00, %101
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast olt float %102, %104
  br label %109

; <label>:106                                     ; preds = %0
  %107 = icmp eq i32 %94, 0
  %108 = and i1 %93, %107
  br label %109

; <label>:109                                     ; preds = %106, %97
  %110 = phi i1 [ %105, %97 ], [ %108, %106 ]
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %112, %52
  %115 = fmul fast float %113, %53
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %117, 114688
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, float %114, float 0.000000e+00
  %121 = select i1 %119, float %115, float 0.000000e+00
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %120, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fmul fast float %123, 2.550000e+02
  %125 = fptoui float %124 to i32
  %126 = select i1 %119, i32 %125, i32 0
  %127 = mul i32 %24, 208
  %128 = add i32 %127, 188
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = and i32 %91, 114688
  %132 = and i32 %91, 8
  %133 = icmp ne i32 %132, 0
  %134 = or i1 %110, %133
  %135 = select i1 %134, i32 %131, i32 16384
  %136 = and i32 %135, %130
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %109
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %139

; <label>:139                                     ; preds = %138, %109
  %140 = and i32 %130, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %166, label %142

; <label>:142                                     ; preds = %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %52
  %147 = fmul fast float %145, %53
  %148 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %150 = fdiv fast float %148, %149
  %151 = fcmp fast ogt float %150, 0x3FFC71C720000000
  br i1 %151, label %152, label %158

; <label>:152                                     ; preds = %142
  %153 = fdiv fast float 0x3FFC71C720000000, %150
  %154 = fmul fast float %153, %147
  %155 = fsub fast float 1.000000e+00, %153
  %156 = fmul fast float %155, 5.000000e-01
  %157 = fadd fast float %156, %154
  br label %166

; <label>:158                                     ; preds = %142
  %159 = fcmp fast olt float %150, 0x3FFC71C720000000
  br i1 %159, label %160, label %166

; <label>:160                                     ; preds = %158
  %161 = fmul fast float %146, 5.625000e-01
  %162 = fmul fast float %161, %150
  %163 = fmul fast float %150, 2.812500e-01
  %164 = fsub fast float 5.000000e-01, %163
  %165 = fadd fast float %164, %162
  br label %166

; <label>:166                                     ; preds = %160, %158, %152, %139
  %167 = phi float [ %38, %139 ], [ %146, %152 ], [ %165, %160 ], [ %146, %158 ]
  %168 = phi float [ %39, %139 ], [ %157, %152 ], [ %147, %160 ], [ %147, %158 ]
  %169 = add i32 %25, 72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = bitcast i32 %171 to float
  %174 = bitcast i32 %172 to float
  %175 = fmul fast float %173, %38
  %176 = fmul fast float %174, %39
  %177 = call float @dx.op.unary.f32(i32 22, float %175)  ; Frc(value)
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = and i32 %130, 16
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float 1.000000e+00, float %43
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %202, label %183, !dx.controlflow.hints !63

; <label>:183                                     ; preds = %166
  %184 = add i32 %127, 64
  %185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fadd fast float %186, 1.000000e+00
  %188 = fmul fast float %187, %43
  %189 = fsub fast float %188, %186
  %190 = fsub fast float %187, %189
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fsub fast float 1.000000e+00, %188
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fsub fast float %191, %193
  %195 = fsub fast float %181, %193
  %196 = fdiv fast float %195, %194
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fmul fast float %197, 2.000000e+00
  %199 = fsub fast float 3.000000e+00, %198
  %200 = fmul fast float %197, %197
  %201 = fmul fast float %200, %199
  br label %202

; <label>:202                                     ; preds = %183, %166
  %203 = phi float [ %201, %183 ], [ %181, %166 ]
  %204 = fcmp fast ogt float %203, 0.000000e+00
  br i1 %204, label %206, label %205

; <label>:205                                     ; preds = %202
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %206

; <label>:206                                     ; preds = %205, %202
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %209 = fsub fast float %35, %208
  %210 = fsub fast float %36, %208
  %211 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %21, float %209, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float %37)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = fmul fast float %212, %203
  %214 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %215 = fmul fast float %52, 5.000000e-01
  %216 = fmul fast float %53, 5.000000e-01
  %217 = fptosi float %215 to i32
  %218 = fptosi float %216 to i32
  %219 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = lshr i32 %220, 18
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F4C00EBA0000000
  %224 = call float @dx.op.unary.f32(i32 21, float %223)  ; Exp(value)
  %225 = fadd fast float %224, -1.000000e+00
  %226 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %227 = extractvalue %dx.types.Dimensions %226, 0
  %228 = sitofp i32 %227 to float
  %229 = extractvalue %dx.types.Dimensions %226, 1
  %230 = sitofp i32 %229 to float
  %231 = fcmp fast oge float %215, %228
  %232 = fcmp fast oge float %216, %230
  %233 = or i1 %231, %232
  %234 = select i1 %233, float 0x4197782600000000, float %225
  %235 = fsub fast float %234, %47
  %236 = fcmp fast ogt float %235, 0.000000e+00
  %237 = and i32 %126, -2
  %238 = icmp eq i32 %237, 2
  %239 = and i1 %238, %236
  %240 = xor i1 %236, true
  %241 = icmp eq i32 %126, 1
  %242 = and i1 %241, %240
  %243 = or i1 %239, %242
  %244 = and i32 %130, 262144
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %245, %243
  %247 = xor i1 %243, true
  %248 = and i32 %130, 131072
  %249 = icmp ne i32 %248, 0
  %250 = and i1 %249, %247
  %251 = or i1 %246, %250
  br i1 %251, label %252, label %253

; <label>:252                                     ; preds = %206
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %253

; <label>:253                                     ; preds = %252, %206
  %254 = and i32 %130, 32
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %505, label %256, !dx.controlflow.hints !64

; <label>:256                                     ; preds = %253
  %257 = add i32 %127, 80
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = extractvalue %dx.types.ResRet.f32 %258, 3
  %263 = add i32 %127, 96
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = add i32 %127, 112
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = add i32 %127, 128
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = extractvalue %dx.types.ResRet.f32 %275, 3
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 4096
  %283 = icmp ne i32 %282, 0
  %284 = fcmp fast une float %267, 0.000000e+00
  %285 = and i32 %281, 64
  %286 = icmp ne i32 %285, 0
  %287 = and i32 %281, 128
  %288 = icmp eq i32 %287, 0
  %289 = and i32 %281, 2048
  %290 = icmp eq i32 %289, 0
  %291 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %292 = extractvalue %dx.types.Dimensions %291, 0
  %293 = sitofp i32 %292 to float
  %294 = extractvalue %dx.types.Dimensions %291, 1
  %295 = sitofp i32 %294 to float
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %299 = fmul fast float %297, %52
  %300 = fmul fast float %298, %53
  %301 = fmul fast float %299, %293
  %302 = fmul fast float %300, %295
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = fsub fast float -0.000000e+00, %304
  %306 = fptoui float %305 to i32
  %307 = fptoui float %301 to i32
  %308 = fptoui float %302 to i32
  %309 = and i32 %306, 31
  %310 = lshr i32 %307, %309
  %311 = lshr i32 %308, %309
  %312 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %306, i32 %310, i32 %311, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = fcmp fast ogt float %313, -1.000000e+00
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %317 = select i1 %314, float %316, float 1.000000e+00
  %318 = fadd fast float %313, 1.000000e+00
  %319 = fmul fast float %317, %318
  %320 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %321 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %322 = fcmp fast oge float %320, %321
  %323 = select i1 %322, float 0x4197782600000000, float %320
  br i1 %290, label %401, label %324, !dx.controlflow.hints !65

; <label>:324                                     ; preds = %256
  %325 = fmul fast float %57, %297
  %326 = fmul fast float %59, %298
  %327 = fsub fast float 1.000000e+00, %325
  %328 = fsub fast float 1.000000e+00, %326
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fmul fast float %327, %330
  %334 = fmul fast float %327, %331
  %335 = fmul fast float %327, %332
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fmul fast float %328, %337
  %341 = fmul fast float %328, %338
  %342 = fmul fast float %328, %339
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fadd fast float %340, %344
  %348 = fadd fast float %347, %333
  %349 = fadd fast float %341, %345
  %350 = fadd fast float %349, %334
  %351 = fadd fast float %342, %346
  %352 = fadd fast float %351, %335
  %353 = fmul fast float %348, %323
  %354 = fmul fast float %350, %323
  %355 = fmul fast float %352, %323
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fsub fast float %357, %26
  %361 = fadd fast float %360, %353
  %362 = fsub fast float %358, %27
  %363 = fadd fast float %362, %354
  %364 = fsub fast float %359, %28
  %365 = fadd fast float %364, %355
  %366 = fmul fast float %29, %29
  %367 = call float @dx.op.dot3.f32(i32 55, float %361, float %363, float %365, float %361, float %363, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %368 = fsub fast float %366, %367
  %369 = fmul fast float %266, %366
  %370 = fmul fast float %265, %366
  %371 = fcmp fast olt float %368, %369
  %372 = fcmp fast ogt float %368, %370
  %373 = or i1 %371, %372
  %374 = select i1 %373, float 0.000000e+00, float %368
  %375 = fsub fast float %265, %266
  %376 = fmul fast float %375, %366
  %377 = fsub fast float %374, %369
  %378 = fdiv fast float %377, %376
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = fmul fast float %379, 2.000000e+00
  %381 = fsub fast float 3.000000e+00, %380
  %382 = fmul fast float %379, %379
  %383 = fmul fast float %382, %381
  %384 = fmul fast float %270, %40
  %385 = fmul fast float %271, %41
  %386 = fmul fast float %272, %42
  %387 = fsub fast float %384, %276
  %388 = fsub fast float %385, %277
  %389 = fsub fast float %386, %278
  %390 = fsub fast float %273, %279
  %391 = fmul fast float %383, %387
  %392 = fmul fast float %383, %388
  %393 = fmul fast float %383, %389
  %394 = fmul fast float %383, %390
  %395 = fadd fast float %391, %276
  %396 = fadd fast float %392, %277
  %397 = fadd fast float %393, %278
  %398 = fadd fast float %394, %279
  %399 = fmul fast float %259, %259
  %400 = fmul fast float %399, %374
  br label %496

; <label>:401                                     ; preds = %256
  %402 = and i32 %281, 256
  %403 = icmp eq i32 %402, 0
  %404 = fsub fast float %323, %47
  br i1 %403, label %453, label %405

; <label>:405                                     ; preds = %401
  %406 = fadd fast float %265, %47
  %407 = fcmp fast olt float %323, %47
  %408 = fcmp fast ogt float %323, %406
  %409 = or i1 %407, %408
  %410 = select i1 %409, float 0.000000e+00, float %404
  %411 = call float @dx.op.unary.f32(i32 83, float %323)  ; DerivCoarseX(value)
  %412 = call float @dx.op.unary.f32(i32 84, float %323)  ; DerivCoarseY(value)
  %413 = fmul fast float %411, %411
  %414 = fmul fast float %412, %412
  %415 = fadd fast float %414, %413
  %416 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %417 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %418 = fmul fast float %417, %416
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fmul fast float %419, %266
  %421 = fdiv fast float %404, %420
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %422, 2.000000e+00
  %424 = fsub fast float 3.000000e+00, %423
  %425 = fmul fast float %422, %422
  %426 = fmul fast float %425, %424
  %427 = fsub fast float %323, %406
  %428 = fadd fast float %427, %420
  %429 = fdiv fast float %428, %420
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %430, %430
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %426, %434
  %436 = fmul fast float %270, %40
  %437 = fmul fast float %271, %41
  %438 = fmul fast float %272, %42
  %439 = fsub fast float %436, %276
  %440 = fsub fast float %437, %277
  %441 = fsub fast float %438, %278
  %442 = fsub fast float %273, %279
  %443 = fmul fast float %435, %439
  %444 = fmul fast float %435, %440
  %445 = fmul fast float %435, %441
  %446 = fmul fast float %435, %442
  %447 = fadd fast float %443, %276
  %448 = fadd fast float %444, %277
  %449 = fadd fast float %445, %278
  %450 = fadd fast float %446, %279
  %451 = fmul fast float %410, %259
  %452 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  br label %496

; <label>:453                                     ; preds = %401
  br i1 %284, label %454, label %467

; <label>:454                                     ; preds = %453
  %455 = fdiv fast float 5.000000e+01, %29
  %456 = select i1 %286, float %455, float 1.000000e+00
  %457 = fmul fast float %456, %259
  %458 = fmul fast float %177, 2.000000e+00
  %459 = fmul fast float %178, 2.000000e+00
  %460 = fadd fast float %458, -1.000000e+00
  %461 = fadd fast float %459, -1.000000e+00
  %462 = call float @dx.op.dot2.f32(i32 54, float %460, float %461, float %460, float %461)  ; Dot2(ax,ay,bx,by)
  %463 = fmul fast float %267, %29
  %464 = fmul fast float %463, %462
  %465 = fsub fast float %404, %464
  %466 = fmul fast float %457, %465
  br label %496

; <label>:467                                     ; preds = %453
  br i1 %288, label %488, label %468

; <label>:468                                     ; preds = %467
  %469 = fmul fast float %29, 0x3F947AE140000000
  %470 = select i1 %286, float %469, float 1.000000e+00
  %471 = fdiv fast float 1.000000e+00, %470
  %472 = fmul fast float %470, %260
  %473 = fmul fast float %470, %261
  %474 = fmul fast float %471, %262
  %475 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  %476 = fcmp fast olt float %475, %472
  br i1 %476, label %477, label %481, !dx.controlflow.hints !66

; <label>:477                                     ; preds = %468
  %478 = fmul fast float %471, %259
  %479 = fmul fast float %478, %475
  %480 = call float @dx.op.unary.f32(i32 6, float %479)  ; FAbs(value)
  br label %496

; <label>:481                                     ; preds = %468
  %482 = fcmp fast ogt float %475, %473
  br i1 %482, label %483, label %496

; <label>:483                                     ; preds = %481
  %484 = fsub fast float %475, %473
  %485 = fmul fast float %474, %484
  %486 = call float @dx.op.unary.f32(i32 6, float %485)  ; FAbs(value)
  %487 = fsub fast float 1.000000e+00, %486
  br label %496

; <label>:488                                     ; preds = %467
  %489 = fdiv fast float 5.000000e+01, %29
  %490 = select i1 %286, float %489, float 1.000000e+00
  %491 = fmul fast float %490, %259
  %492 = call float @dx.op.unary.f32(i32 6, float %235)  ; FAbs(value)
  %493 = select i1 %283, float %492, float 0x47EFFFFFE0000000
  %494 = call float @dx.op.binary.f32(i32 36, float %404, float %493)  ; FMin(a,b)
  %495 = fmul fast float %491, %494
  br label %496

; <label>:496                                     ; preds = %488, %483, %481, %477, %454, %405, %324
  %497 = phi float [ %400, %324 ], [ %452, %405 ], [ %466, %454 ], [ %495, %488 ], [ %480, %477 ], [ %487, %483 ], [ %475, %481 ]
  %498 = phi float [ %395, %324 ], [ %447, %405 ], [ %40, %454 ], [ %40, %488 ], [ %40, %477 ], [ %40, %483 ], [ %40, %481 ]
  %499 = phi float [ %396, %324 ], [ %448, %405 ], [ %41, %454 ], [ %41, %488 ], [ %41, %477 ], [ %41, %483 ], [ %41, %481 ]
  %500 = phi float [ %397, %324 ], [ %449, %405 ], [ %42, %454 ], [ %42, %488 ], [ %42, %477 ], [ %42, %483 ], [ %42, %481 ]
  %501 = phi float [ %398, %324 ], [ %450, %405 ], [ 1.000000e+00, %454 ], [ 1.000000e+00, %488 ], [ 1.000000e+00, %477 ], [ 1.000000e+00, %483 ], [ 1.000000e+00, %481 ]
  %502 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %503 = fmul fast float %501, %214
  %504 = fmul fast float %503, %502
  br label %505

; <label>:505                                     ; preds = %496, %253
  %506 = phi float [ %498, %496 ], [ %40, %253 ]
  %507 = phi float [ %499, %496 ], [ %41, %253 ]
  %508 = phi float [ %500, %496 ], [ %42, %253 ]
  %509 = phi float [ %504, %496 ], [ %214, %253 ]
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %512 = fptosi float %47 to i32
  %513 = sitofp i32 %512 to float
  %514 = fadd fast float %511, %513
  %515 = fmul fast float %514, 0x3FE3C6EF40000000
  %516 = frem fast float %52, 2.560000e+02
  %517 = frem fast float %53, 2.560000e+02
  %518 = fptoui float %516 to i32
  %519 = fptoui float %517 to i32
  %520 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %518, i32 %519, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = fadd fast float %521, %515
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = and i32 %130, 1
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %582, label %526, !dx.controlflow.hints !67

; <label>:526                                     ; preds = %505
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 2
  %529 = extractvalue %dx.types.ResRet.f32 %527, 3
  %530 = add i32 %127, 16
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = add i32 %127, 32
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = and i32 %130, 2
  %541 = icmp eq i32 %540, 0
  %542 = call float @dx.op.dot3.f32(i32 55, float %32, float %33, float %34, float %32, float %33, float %34)  ; Dot3(ax,ay,az,bx,by,bz)
  %543 = call float @dx.op.unary.f32(i32 25, float %542)  ; Rsqrt(value)
  %544 = fmul fast float %543, %32
  %545 = fmul fast float %543, %33
  %546 = fmul fast float %543, %34
  %547 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = call float @dx.op.unary.f32(i32 25, float %547)  ; Rsqrt(value)
  %549 = fmul fast float %548, %87
  %550 = fmul fast float %548, %88
  %551 = fmul fast float %548, %89
  %552 = call float @dx.op.dot3.f32(i32 55, float %549, float %550, float %551, float %544, float %545, float %546)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = fmul fast float %552, %552
  %554 = fmul fast float %553, %528
  %555 = fadd fast float %554, %529
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  br i1 %541, label %557, label %567, !dx.controlflow.hints !68

; <label>:557                                     ; preds = %526
  %558 = extractvalue %dx.types.ResRet.f32 %527, 1
  %559 = extractvalue %dx.types.ResRet.f32 %527, 0
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %561, %547
  %563 = fsub fast float %559, %562
  %564 = fmul fast float %563, %558
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fmul fast float %565, %556
  br label %567

; <label>:567                                     ; preds = %557, %526
  %568 = phi float [ %566, %557 ], [ %556, %526 ]
  %569 = fsub fast float %532, %537
  %570 = fsub fast float %533, %538
  %571 = fsub fast float %534, %539
  %572 = fmul fast float %568, %569
  %573 = fmul fast float %568, %570
  %574 = fmul fast float %568, %571
  %575 = fadd fast float %572, %537
  %576 = fadd fast float %573, %538
  %577 = fadd fast float %574, %539
  %578 = fmul fast float %575, %506
  %579 = fmul fast float %576, %507
  %580 = fmul fast float %577, %508
  %581 = fmul fast float %568, %509
  br label %582

; <label>:582                                     ; preds = %567, %505
  %583 = phi float [ %578, %567 ], [ %506, %505 ]
  %584 = phi float [ %579, %567 ], [ %507, %505 ]
  %585 = phi float [ %580, %567 ], [ %508, %505 ]
  %586 = phi float [ %581, %567 ], [ %509, %505 ]
  %587 = add i32 %25, 104
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = add i32 %589, 0
  %591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %591, %dx.types.Handle %48, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = add i32 %25, 56
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %598, 8
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %598, 16
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = add i32 %25, 40
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = fmul fast float %615, %615
  %617 = add i32 %25, 108
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %49, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = fmul fast float %616, %623
  %625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %30, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 1
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = fmul fast float %593, %583
  %634 = fmul fast float %601, %601
  %635 = fmul fast float %634, %633
  %636 = fmul fast float %635, %632
  %637 = fmul fast float %594, %584
  %638 = fmul fast float %605, %605
  %639 = fmul fast float %638, %637
  %640 = fmul fast float %639, %632
  %641 = fmul fast float %595, %585
  %642 = fmul fast float %609, %609
  %643 = fmul fast float %642, %641
  %644 = fmul fast float %643, %632
  %645 = call float @dx.op.dot3.f32(i32 55, float %636, float %640, float %644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %646 = add i32 %25, 32
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = lshr i32 %648, 8
  %652 = and i32 %651, 255
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, %645
  %655 = fadd fast float %654, %650
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %658 = and i32 %130, 8192
  %659 = icmp eq i32 %658, 0
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  br i1 %659, label %668, label %662, !dx.controlflow.hints !69

; <label>:662                                     ; preds = %582
  %663 = add i32 %127, 176
  %664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = fcmp fast oge float %665, 0.000000e+00
  %667 = select i1 %666, float %665, float %661
  br label %668

; <label>:668                                     ; preds = %662, %582
  %669 = phi float [ %667, %662 ], [ %661, %582 ]
  %670 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = lshr i32 %671, 18
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F4C00EBA0000000
  %675 = call float @dx.op.unary.f32(i32 21, float %674)  ; Exp(value)
  %676 = fadd fast float %675, -1.000000e+00
  %677 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %678 = extractvalue %dx.types.Dimensions %677, 0
  %679 = sitofp i32 %678 to float
  %680 = extractvalue %dx.types.Dimensions %677, 1
  %681 = sitofp i32 %680 to float
  %682 = fcmp fast oge float %215, %679
  %683 = fcmp fast oge float %216, %681
  %684 = or i1 %682, %683
  %685 = select i1 %684, float 0x4197782600000000, float %676
  %686 = fadd fast float %624, -1.000000e+00
  %687 = fmul fast float %686, %586
  %688 = fadd fast float %687, 1.000000e+00
  %689 = call float @dx.op.dot3.f32(i32 55, float %688, float %688, float %688, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = fsub fast float 1.000000e+00, %689
  %691 = fmul fast float %669, %657
  %692 = fsub fast float 1.000000e+00, %657
  %693 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 3
  %696 = fmul fast float %695, %693
  %697 = fadd fast float %696, %691
  %698 = and i32 %130, 2097152
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %704, label %700, !dx.controlflow.hints !70

; <label>:700                                     ; preds = %668
  %701 = add i32 %127, 192
  %702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  br label %707

; <label>:704                                     ; preds = %668
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 3
  br label %707

; <label>:707                                     ; preds = %704, %700
  %708 = phi float [ %703, %700 ], [ %706, %704 ]
  %709 = fmul fast float %626, %586
  %710 = fmul fast float %709, %630
  %711 = fmul fast float %710, %636
  %712 = fmul fast float %627, %586
  %713 = fmul fast float %712, %630
  %714 = fmul fast float %713, %640
  %715 = fmul fast float %628, %586
  %716 = fmul fast float %715, %630
  %717 = fmul fast float %716, %644
  %718 = icmp eq i32 %126, 3
  %719 = fcmp fast ogt float %47, %685
  %720 = and i1 %241, %719
  %721 = or i1 %718, %720
  %722 = icmp eq i32 %126, 2
  %723 = fcmp fast ole float %47, %685
  %724 = and i1 %722, %723
  %725 = or i1 %724, %721
  br i1 %720, label %726, label %832

; <label>:726                                     ; preds = %707
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %729 = extractvalue %dx.types.CBufRet.f32 %727, 3
  %730 = fmul fast float %728, %52
  %731 = fmul fast float %729, %53
  %732 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %733 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %734 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %732, float %733, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = extractvalue %dx.types.ResRet.f32 %734, 3
  %739 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %732, float %733, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = extractvalue %dx.types.ResRet.f32 %739, 1
  %742 = extractvalue %dx.types.ResRet.f32 %739, 2
  %743 = extractvalue %dx.types.ResRet.f32 %739, 3
  %744 = call float @dx.op.binary.f32(i32 35, float %736, float %737)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 35, float %735, float %744)  ; FMax(a,b)
  %746 = call float @dx.op.binary.f32(i32 35, float %745, float %738)  ; FMax(a,b)
  %747 = call float @dx.op.binary.f32(i32 36, float %741, float %742)  ; FMin(a,b)
  %748 = call float @dx.op.binary.f32(i32 36, float %740, float %747)  ; FMin(a,b)
  %749 = call float @dx.op.binary.f32(i32 36, float %748, float %743)  ; FMin(a,b)
  %750 = fmul fast float %746, 2.550000e+02
  %751 = fadd fast float %750, 0x3F70101020000000
  %752 = fptoui float %751 to i32
  %753 = fmul fast float %749, 2.550000e+02
  %754 = fadd fast float %753, 0x3F70101020000000
  %755 = fptoui float %754 to i32
  %756 = icmp ult i32 %752, %755
  br i1 %756, label %757, label %808

; <label>:757                                     ; preds = %726
  %758 = fcmp fast ogt float %46, 9.843750e-01
  %759 = fadd fast float %47, -4.000000e+00
  %760 = select i1 %758, float -4.000000e+00, float %759
  %761 = call float @dx.op.binary.f32(i32 35, float %760, float 0.000000e+00)  ; FMax(a,b)
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = fadd fast float %763, %761
  %765 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %766 = fmul fast float %764, %765
  %767 = call float @dx.op.unary.f32(i32 23, float %766)  ; Log(value)
  %768 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %769 = fmul fast float %768, %767
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %772 = fmul fast float %769, %771
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = uitofp i32 %752 to float
  %775 = uitofp i32 %755 to float
  %776 = fadd fast float %774, 5.000000e-01
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fmul fast float %771, %776
  %779 = fmul fast float %771, %777
  %780 = fadd fast float %778, 0x3F0FFB4800000000
  %781 = fadd fast float %779, 0xBF0FFB4800000000
  %782 = call float @dx.op.binary.f32(i32 35, float %773, float %780)  ; FMax(a,b)
  %783 = call float @dx.op.binary.f32(i32 36, float %782, float %781)  ; FMin(a,b)
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 1
  %786 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %787 = extractvalue %dx.types.CBufRet.f32 %784, 0
  %788 = fmul fast float %785, %783
  %789 = fadd fast float %787, %788
  %790 = fadd fast float %787, %786
  %791 = fsub fast float %785, %786
  %792 = fadd fast float %791, %787
  %793 = call float @dx.op.binary.f32(i32 35, float %789, float %790)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %793, float %792)  ; FMin(a,b)
  %795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %732, float %733, float %794, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %732, float %733, float %794, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  %802 = extractvalue %dx.types.ResRet.f32 %799, 2
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %805 = fmul fast float %804, %800
  %806 = fmul fast float %804, %801
  %807 = fmul fast float %804, %802
  br label %808

; <label>:808                                     ; preds = %757, %726
  %809 = phi float [ %796, %757 ], [ 1.000000e+00, %726 ]
  %810 = phi float [ %797, %757 ], [ 1.000000e+00, %726 ]
  %811 = phi float [ %798, %757 ], [ 1.000000e+00, %726 ]
  %812 = phi float [ %805, %757 ], [ 0.000000e+00, %726 ]
  %813 = phi float [ %806, %757 ], [ 0.000000e+00, %726 ]
  %814 = phi float [ %807, %757 ], [ 0.000000e+00, %726 ]
  %815 = fmul fast float %812, %690
  %816 = fmul fast float %813, %690
  %817 = fmul fast float %814, %690
  %818 = call float @dx.op.dot3.f32(i32 55, float %809, float %810, float %811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %820 = select i1 %110, float %818, float %809
  %821 = select i1 %110, float %818, float %810
  %822 = select i1 %110, float 1.000000e+00, float %811
  %823 = select i1 %110, float %819, float %815
  %824 = select i1 %110, float 0.000000e+00, float %816
  %825 = select i1 %110, float 0.000000e+00, float %817
  %826 = fmul fast float %820, %711
  %827 = fmul fast float %821, %714
  %828 = fmul fast float %822, %717
  %829 = fadd fast float %826, %823
  %830 = fadd fast float %827, %824
  %831 = fadd fast float %825, %828
  br label %832

; <label>:832                                     ; preds = %808, %707
  %833 = phi float [ %685, %808 ], [ %47, %707 ]
  %834 = phi float [ %829, %808 ], [ %711, %707 ]
  %835 = phi float [ %830, %808 ], [ %714, %707 ]
  %836 = phi float [ %831, %808 ], [ %717, %707 ]
  %837 = phi float [ %809, %808 ], [ 1.000000e+00, %707 ]
  br i1 %725, label %1133, label %838

; <label>:838                                     ; preds = %832
  %839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %30, float %31, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %30, float %31, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = fmul fast float %840, %690
  %848 = fmul fast float %841, %690
  %849 = fmul fast float %842, %690
  %850 = fmul fast float %844, %837
  %851 = call float @dx.op.dot3.f32(i32 55, float %844, float %845, float %846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = call float @dx.op.dot3.f32(i32 55, float %847, float %848, float %849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %853 = select i1 %110, float %851, float %844
  %854 = select i1 %110, float %851, float %845
  %855 = select i1 %110, float 1.000000e+00, float %846
  %856 = select i1 %110, float %852, float %847
  %857 = select i1 %110, float 0.000000e+00, float %848
  %858 = select i1 %110, float 0.000000e+00, float %849
  %859 = fmul fast float %853, %834
  %860 = fmul fast float %854, %835
  %861 = fmul fast float %855, %836
  %862 = fadd fast float %859, %856
  %863 = fadd fast float %860, %857
  %864 = fadd fast float %861, %858
  %865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.i32 %865, 0
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %1133, label %868, !dx.controlflow.hints !71

; <label>:868                                     ; preds = %838
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %871 = extractvalue %dx.types.CBufRet.f32 %869, 3
  %872 = fmul fast float %870, %52
  %873 = fmul fast float %871, %53
  %874 = fmul fast float %872, 2.000000e+00
  %875 = fmul fast float %873, 2.000000e+00
  %876 = fsub fast float 1.000000e+00, %874
  %877 = fsub fast float 1.000000e+00, %875
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %881 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %882 = fmul fast float %876, %879
  %883 = fmul fast float %876, %880
  %884 = fmul fast float %876, %881
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %889 = fmul fast float %877, %886
  %890 = fmul fast float %877, %887
  %891 = fmul fast float %877, %888
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %896 = fadd fast float %889, %893
  %897 = fadd fast float %896, %882
  %898 = fadd fast float %890, %894
  %899 = fadd fast float %898, %883
  %900 = fadd fast float %891, %895
  %901 = fadd fast float %900, %884
  %902 = fmul fast float %897, %833
  %903 = fmul fast float %899, %833
  %904 = fmul fast float %901, %833
  %905 = fmul fast float %902, %902
  %906 = fmul fast float %903, %903
  %907 = fadd fast float %905, %906
  %908 = fmul fast float %904, %904
  %909 = fadd fast float %907, %908
  %910 = call float @dx.op.unary.f32(i32 24, float %909)  ; Sqrt(value)
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = fsub fast float %910, %912
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %915 = fmul fast float %913, %914
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = fadd fast float %916, -5.000000e-01
  %918 = fmul fast float %917, 2.000000e+00
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %921 = call float @dx.op.binary.f32(i32 36, float %920, float %918)  ; FMin(a,b)
  %922 = fsub fast float -0.000000e+00, %920
  %923 = fcmp fast ogt float %921, %922
  br i1 %923, label %924, label %1133, !dx.controlflow.hints !72

; <label>:924                                     ; preds = %868
  %925 = fmul fast float %921, 5.000000e-01
  %926 = fadd fast float %925, 5.000000e-01
  %927 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %928 = call float @dx.op.unary.f32(i32 27, float %927)  ; Round_ni(value)
  %929 = call float @dx.op.unary.f32(i32 22, float %927)  ; Frc(value)
  %930 = fmul fast float %929, 2.000000e+00
  %931 = fadd fast float %930, -1.000000e+00
  %932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %872, float %873, float %928, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = extractvalue %dx.types.ResRet.f32 %932, 2
  %936 = extractvalue %dx.types.ResRet.f32 %932, 3
  %937 = fadd fast float %933, -5.000000e-01
  %938 = fadd fast float %935, -5.000000e-01
  %939 = fmul fast float %937, 0xBFD5555560000000
  %940 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %938, float %939)  ; FMad(a,b,c)
  %941 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %934, float 0.000000e+00)  ; FMad(a,b,c)
  %942 = fadd fast float %941, %936
  %943 = fmul fast float %937, -7.500000e-01
  %944 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %938, float %943)  ; FMad(a,b,c)
  %945 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %934, float 0.000000e+00)  ; FMad(a,b,c)
  %946 = fadd fast float %945, %936
  %947 = call float @dx.op.binary.f32(i32 35, float %940, float -1.000000e+00)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 35, float %942, float -1.000000e+00)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 35, float %944, float -1.000000e+00)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 35, float %946, float -1.000000e+00)  ; FMax(a,b)
  %951 = call float @dx.op.binary.f32(i32 36, float %947, float 1.000000e+00)  ; FMin(a,b)
  %952 = call float @dx.op.binary.f32(i32 36, float %948, float 1.000000e+00)  ; FMin(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %949, float 1.000000e+00)  ; FMin(a,b)
  %954 = call float @dx.op.binary.f32(i32 36, float %950, float 1.000000e+00)  ; FMin(a,b)
  %955 = fcmp fast olt float %951, 0x3FEFFF8020000000
  br i1 %955, label %956, label %1071, !dx.controlflow.hints !73

; <label>:956                                     ; preds = %924
  %957 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %962 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %963 = fsub fast float %959, %951
  %964 = fsub fast float %960, %952
  %965 = fsub fast float %961, %953
  %966 = fsub fast float %962, %954
  %967 = fmul fast float %963, %957
  %968 = fmul fast float %964, %957
  %969 = fmul fast float %965, %957
  %970 = fmul fast float %966, %957
  %971 = fadd fast float %967, %951
  %972 = fadd fast float %968, %952
  %973 = fsub fast float -0.000000e+00, %972
  %974 = fadd fast float %969, %953
  %975 = fadd fast float %970, %954
  %976 = fmul fast float %971, %971
  %977 = fsub fast float %972, %976
  %978 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %977)  ; FMax(a,b)
  %979 = fdiv fast float 1.000000e+00, %978
  %980 = fmul fast float %972, %971
  %981 = fsub fast float %974, %980
  %982 = fsub fast float %931, %971
  %983 = fmul fast float %931, %931
  %984 = fsub fast float %983, %972
  %985 = fmul fast float %982, %979
  %986 = fmul fast float %985, %981
  %987 = fsub fast float %984, %986
  %988 = fmul fast float %972, %972
  %989 = fsub fast float %975, %988
  %990 = fmul fast float %981, %981
  %991 = fmul fast float %990, %979
  %992 = fsub fast float %989, %991
  %993 = fdiv fast float %987, %992
  %994 = fmul fast float %981, %993
  %995 = fsub fast float %982, %994
  %996 = fmul fast float %995, %979
  %997 = fmul fast float %996, %971
  %998 = fsub fast float 1.000000e+00, %997
  %999 = fmul fast float %972, %993
  %1000 = fsub fast float %998, %999
  %1001 = fmul fast float %996, %996
  %1002 = fmul fast float %993, 4.000000e+00
  %1003 = fmul fast float %1002, %1000
  %1004 = fsub fast float %1001, %1003
  %1005 = call float @dx.op.unary.f32(i32 24, float %1004)  ; Sqrt(value)
  %1006 = fcmp fast oge float %996, 0.000000e+00
  %1007 = fsub fast float -0.000000e+00, %1005
  %1008 = select i1 %1006, float %1007, float %1005
  %1009 = fsub fast float %1008, %996
  %1010 = fdiv fast float %1009, %993
  %1011 = fdiv fast float %1000, %1009
  %1012 = fmul fast float %1010, 5.000000e-01
  %1013 = fmul fast float %1011, 2.000000e+00
  %1014 = select i1 %1006, float %1012, float %1013
  %1015 = select i1 %1006, float %1013, float %1012
  %1016 = call float @dx.op.binary.f32(i32 35, float %1014, float %1015)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 36, float %1014, float %1015)  ; FMin(a,b)
  %1018 = fcmp fast ogt float %931, %1017
  br i1 %1018, label %1019, label %1029

; <label>:1019                                    ; preds = %956
  %1020 = fsub fast float %931, %1017
  %1021 = fsub fast float %1016, %1017
  %1022 = fmul fast float %1020, %1021
  %1023 = fmul fast float %1016, %931
  %1024 = fadd fast float %1016, %931
  %1025 = fmul fast float %1024, %971
  %1026 = fadd fast float %1023, %972
  %1027 = fsub fast float %1026, %1025
  %1028 = fdiv fast float %1027, %1022
  br label %1029

; <label>:1029                                    ; preds = %1019, %956
  %1030 = phi float [ %1028, %1019 ], [ 0.000000e+00, %956 ]
  %1031 = fcmp fast ogt float %931, %1016
  %1032 = fsub fast float %931, %1016
  br i1 %1031, label %1033, label %1043

; <label>:1033                                    ; preds = %1029
  %1034 = fsub fast float %1016, %1017
  %1035 = fmul fast float %1034, %1032
  %1036 = fmul fast float %1017, %931
  %1037 = fadd fast float %1017, %931
  %1038 = fmul fast float %1037, %971
  %1039 = fsub fast float %973, %1036
  %1040 = fadd fast float %1039, %1038
  %1041 = fdiv fast float %1040, %1035
  %1042 = fadd fast float %1041, %1030
  br label %1043

; <label>:1043                                    ; preds = %1033, %1029
  %1044 = phi float [ %1042, %1033 ], [ %1030, %1029 ]
  %1045 = fsub fast float %931, %1017
  %1046 = fmul fast float %1045, %1032
  %1047 = fmul fast float %1017, %1016
  %1048 = fadd fast float %1017, %1016
  %1049 = fmul fast float %1048, %971
  %1050 = fadd fast float %1047, %972
  %1051 = fsub fast float %1050, %1049
  %1052 = fdiv fast float %1051, %1046
  %1053 = call float @dx.op.unary.f32(i32 7, float %1044)  ; Saturate(value)
  %1054 = fcmp fast oeq float %708, 0.000000e+00
  %1055 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %1056 = fcmp fast oeq float %1055, 0.000000e+00
  %1057 = or i1 %1054, %1056
  %1058 = fmul fast float %1055, 2.000000e+00
  %1059 = fadd fast float %920, %921
  %1060 = fdiv fast float %1059, %1058
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = fmul fast float %1061, 2.000000e+00
  %1063 = fsub fast float 3.000000e+00, %1062
  %1064 = fmul fast float %1061, %1061
  %1065 = fmul fast float %1064, %1063
  %1066 = select i1 %1057, float 1.000000e+00, float %1065
  %1067 = fmul fast float %1052, %708
  %1068 = fadd fast float %1053, %1067
  %1069 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1070 = fmul fast float %1066, %1069
  br label %1071

; <label>:1071                                    ; preds = %1043, %924
  %1072 = phi float [ %1070, %1043 ], [ 0.000000e+00, %924 ]
  %1073 = fsub fast float 1.000000e+00, %1072
  %1074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.i32 %1076, 2
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1084, label %1079

; <label>:1079                                    ; preds = %1071
  %1080 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1081 = fadd fast float %1075, -1.000000e+00
  %1082 = fmul fast float %1080, %1081
  %1083 = fadd fast float %1082, 1.000000e+00
  br label %1084

; <label>:1084                                    ; preds = %1079, %1071
  %1085 = phi float [ %1083, %1079 ], [ %1073, %1071 ]
  %1086 = call float @dx.op.binary.f32(i32 35, float %1075, float %1085)  ; FMax(a,b)
  %1087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.i32 %1087, 2
  %1089 = and i32 %1088, 1
  %1090 = icmp eq i32 %1089, 0
  %1091 = fcmp fast une float %1086, 1.000000e+00
  %1092 = and i1 %1091, %1090
  br i1 %1092, label %1093, label %1112

; <label>:1093                                    ; preds = %1084
  %1094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %872, float %873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.ResRet.f32 %1094, 1
  %1097 = extractvalue %dx.types.ResRet.f32 %1094, 2
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1100 = fmul fast float %1099, %1095
  %1101 = fmul fast float %1099, %1096
  %1102 = fmul fast float %1099, %1097
  %1103 = fcmp fast ogt float %1075, 0x3FEFFF2E40000000
  %1104 = fsub fast float 1.000000e+00, %1086
  %1105 = fsub fast float 1.000000e+00, %1075
  %1106 = fdiv fast float %1104, %1105
  %1107 = call float @dx.op.unary.f32(i32 7, float %1106)  ; Saturate(value)
  %1108 = select i1 %1103, float 0.000000e+00, float %1107
  %1109 = fmul fast float %1100, %1108
  %1110 = fmul fast float %1101, %1108
  %1111 = fmul fast float %1102, %1108
  br label %1112

; <label>:1112                                    ; preds = %1093, %1084
  %1113 = phi float [ 0.000000e+00, %1084 ], [ %1109, %1093 ]
  %1114 = phi float [ 0.000000e+00, %1084 ], [ %1110, %1093 ]
  %1115 = phi float [ 0.000000e+00, %1084 ], [ %1111, %1093 ]
  %1116 = fmul fast float %1113, %690
  %1117 = fmul fast float %1114, %690
  %1118 = fmul fast float %1115, %690
  %1119 = fmul fast float %1086, %850
  %1120 = call float @dx.op.dot3.f32(i32 55, float %1086, float %1086, float %1086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = call float @dx.op.dot3.f32(i32 55, float %1116, float %1117, float %1118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = select i1 %110, float %1120, float %1086
  %1123 = select i1 %110, float 1.000000e+00, float %1086
  %1124 = select i1 %110, float %1121, float %1116
  %1125 = select i1 %110, float 0.000000e+00, float %1117
  %1126 = select i1 %110, float 0.000000e+00, float %1118
  %1127 = fmul fast float %1122, %862
  %1128 = fmul fast float %1122, %863
  %1129 = fmul fast float %1123, %864
  %1130 = fadd fast float %1127, %1124
  %1131 = fadd fast float %1128, %1125
  %1132 = fadd fast float %1126, %1129
  br label %1133

; <label>:1133                                    ; preds = %1112, %868, %838, %832
  %1134 = phi float [ %834, %832 ], [ %862, %838 ], [ %1130, %1112 ], [ %862, %868 ]
  %1135 = phi float [ %835, %832 ], [ %863, %838 ], [ %1131, %1112 ], [ %863, %868 ]
  %1136 = phi float [ %836, %832 ], [ %864, %838 ], [ %1132, %1112 ], [ %864, %868 ]
  %1137 = phi float [ %837, %832 ], [ %850, %838 ], [ %1119, %1112 ], [ %850, %868 ]
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 3
  %1141 = fmul fast float %1139, %52
  %1142 = fmul fast float %1140, %53
  %1143 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1144 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1145 = select i1 %725, i32 2, i32 0
  %1146 = or i32 %1145, 1
  %1147 = uitofp i32 %1146 to float
  %1148 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1143, float %1144, float %1147, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.ResRet.f32 %1148, 1
  %1151 = extractvalue %dx.types.ResRet.f32 %1148, 2
  %1152 = extractvalue %dx.types.ResRet.f32 %1148, 3
  %1153 = add nuw nsw i32 %1145, 2
  %1154 = uitofp i32 %1153 to float
  %1155 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1143, float %1144, float %1154, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1159 = extractvalue %dx.types.ResRet.f32 %1155, 3
  %1160 = call float @dx.op.binary.f32(i32 35, float %1150, float %1151)  ; FMax(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float %1149, float %1160)  ; FMax(a,b)
  %1162 = call float @dx.op.binary.f32(i32 35, float %1161, float %1152)  ; FMax(a,b)
  %1163 = call float @dx.op.binary.f32(i32 36, float %1157, float %1158)  ; FMin(a,b)
  %1164 = call float @dx.op.binary.f32(i32 36, float %1156, float %1163)  ; FMin(a,b)
  %1165 = call float @dx.op.binary.f32(i32 36, float %1164, float %1159)  ; FMin(a,b)
  %1166 = fmul fast float %1162, 2.550000e+02
  %1167 = fadd fast float %1166, 0x3F70101020000000
  %1168 = fptoui float %1167 to i32
  %1169 = fmul fast float %1165, 2.550000e+02
  %1170 = fadd fast float %1169, 0x3F70101020000000
  %1171 = fptoui float %1170 to i32
  %1172 = icmp ult i32 %1168, %1171
  br i1 %1172, label %1173, label %1225

; <label>:1173                                    ; preds = %1133
  %1174 = fcmp fast ogt float %46, 9.843750e-01
  %1175 = fadd fast float %833, -4.000000e+00
  %1176 = select i1 %1174, float -4.000000e+00, float %1175
  %1177 = call float @dx.op.binary.f32(i32 35, float %1176, float 0.000000e+00)  ; FMax(a,b)
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1180 = fadd fast float %1179, %1177
  %1181 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1182 = fmul fast float %1180, %1181
  %1183 = call float @dx.op.unary.f32(i32 23, float %1182)  ; Log(value)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1178, 3
  %1185 = fmul fast float %1184, %1183
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 2
  %1188 = fmul fast float %1185, %1187
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1190 = uitofp i32 %1168 to float
  %1191 = uitofp i32 %1171 to float
  %1192 = fadd fast float %1190, 5.000000e-01
  %1193 = fadd fast float %1191, 5.000000e-01
  %1194 = fmul fast float %1187, %1192
  %1195 = fmul fast float %1187, %1193
  %1196 = fadd fast float %1194, 0x3F0FFB4800000000
  %1197 = fadd fast float %1195, 0xBF0FFB4800000000
  %1198 = call float @dx.op.binary.f32(i32 35, float %1189, float %1196)  ; FMax(a,b)
  %1199 = call float @dx.op.binary.f32(i32 36, float %1198, float %1197)  ; FMin(a,b)
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 1
  %1202 = extractvalue %dx.types.CBufRet.f32 %1200, 2
  %1203 = extractvalue %dx.types.CBufRet.f32 %1200, 0
  %1204 = select i1 %725, float %1203, float 0.000000e+00
  %1205 = fmul fast float %1201, %1199
  %1206 = fadd fast float %1204, %1205
  %1207 = fadd fast float %1204, %1202
  %1208 = fsub fast float %1201, %1202
  %1209 = fadd fast float %1208, %1204
  %1210 = call float @dx.op.binary.f32(i32 35, float %1206, float %1207)  ; FMax(a,b)
  %1211 = call float @dx.op.binary.f32(i32 36, float %1210, float %1209)  ; FMin(a,b)
  %1212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %1143, float %1144, float %1211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1143, float %1144, float %1211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1222 = fmul fast float %1221, %1217
  %1223 = fmul fast float %1221, %1218
  %1224 = fmul fast float %1221, %1219
  br label %1225

; <label>:1225                                    ; preds = %1173, %1133
  %1226 = phi float [ %1213, %1173 ], [ 1.000000e+00, %1133 ]
  %1227 = phi float [ %1214, %1173 ], [ 1.000000e+00, %1133 ]
  %1228 = phi float [ %1215, %1173 ], [ 1.000000e+00, %1133 ]
  %1229 = phi float [ %1222, %1173 ], [ 0.000000e+00, %1133 ]
  %1230 = phi float [ %1223, %1173 ], [ 0.000000e+00, %1133 ]
  %1231 = phi float [ %1224, %1173 ], [ 0.000000e+00, %1133 ]
  %1232 = fmul fast float %1229, %690
  %1233 = fmul fast float %1230, %690
  %1234 = fmul fast float %1231, %690
  %1235 = fmul fast float %1226, %1137
  %1236 = call float @dx.op.dot3.f32(i32 55, float %1226, float %1227, float %1228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1233, float %1234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = select i1 %110, float %1236, float %1226
  %1239 = select i1 %110, float %1236, float %1227
  %1240 = select i1 %110, float 1.000000e+00, float %1228
  %1241 = select i1 %110, float %1237, float %1232
  %1242 = select i1 %110, float 0.000000e+00, float %1233
  %1243 = select i1 %110, float 0.000000e+00, float %1234
  %1244 = fmul fast float %1238, %1134
  %1245 = fmul fast float %1239, %1135
  %1246 = fmul fast float %1240, %1136
  %1247 = fadd fast float %1244, %1241
  %1248 = fadd fast float %1245, %1242
  %1249 = fadd fast float %1243, %1246
  %1250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.i32 %1250, 3
  %1252 = and i32 %1251, 3
  %1253 = icmp ne i32 %1252, 0
  %1254 = and i32 %1251, 4
  %1255 = icmp ne i32 %1254, 0
  %1256 = and i1 %1253, %1255
  %1257 = and i1 %110, %1256
  br i1 %1257, label %1258, label %1264

; <label>:1258                                    ; preds = %1225
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 1
  %1261 = fadd fast float %1235, -1.000000e+00
  %1262 = fmul fast float %1260, %1261
  %1263 = fadd fast float %1262, 1.000000e+00
  br label %1264

; <label>:1264                                    ; preds = %1258, %1225
  %1265 = phi float [ %1263, %1258 ], [ %1235, %1225 ]
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  br i1 %110, label %1268, label %1289

; <label>:1268                                    ; preds = %1264
  %1269 = fadd fast float %1247, %1248
  %1270 = fmul fast float %1267, %1269
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 3
  %1273 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %1274 = fsub fast float %697, %1273
  %1275 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %1276 = fmul fast float %1274, %1275
  %1277 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1278 = fsub fast float %1277, %1272
  %1279 = fmul fast float %1278, %1265
  %1280 = fadd fast float %1279, %1272
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = fsub fast float %1280, %1282
  %1284 = fmul fast float %1283, 1.000000e+01
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1286 = fmul fast float %1285, %690
  %1287 = fsub fast float %690, %1286
  %1288 = fmul fast float %1287, %1280
  br label %1298

; <label>:1289                                    ; preds = %1264
  %1290 = fmul fast float %1267, %1247
  %1291 = fmul fast float %1267, %1248
  %1292 = fmul fast float %1267, %1249
  %1293 = call float @dx.op.binary.f32(i32 35, float %1291, float %1292)  ; FMax(a,b)
  %1294 = call float @dx.op.binary.f32(i32 35, float %1290, float %1293)  ; FMax(a,b)
  %1295 = call float @dx.op.binary.f32(i32 35, float %1294, float %690)  ; FMax(a,b)
  %1296 = fcmp fast ugt float %1295, 0x3F10000000000000
  br i1 %1296, label %1298, label %1297

; <label>:1297                                    ; preds = %1289
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1298

; <label>:1298                                    ; preds = %1297, %1289, %1268
  %1299 = phi float [ %1270, %1268 ], [ %1290, %1297 ], [ %1290, %1289 ]
  %1300 = phi float [ %1288, %1268 ], [ %1291, %1297 ], [ %1291, %1289 ]
  %1301 = phi float [ %1287, %1268 ], [ %1292, %1297 ], [ %1292, %1289 ]
  %1302 = phi float [ %1287, %1268 ], [ %690, %1297 ], [ %690, %1289 ]
  %1303 = fadd fast float %523, 0x3FE3C6EF40000000
  %1304 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1305 = call float @dx.op.unary.f32(i32 23, float %1299)  ; Log(value)
  %1306 = fadd fast float %1305, -7.000000e+00
  %1307 = call float @dx.op.unary.f32(i32 21, float %1306)  ; Exp(value)
  %1308 = fmul fast float %1304, 2.000000e+00
  %1309 = fadd fast float %1308, -1.000000e+00
  %1310 = fmul fast float %1307, %1309
  %1311 = fcmp fast ogt float %1299, 0.000000e+00
  %1312 = select i1 %1311, float %1310, float 0.000000e+00
  %1313 = fadd fast float %1312, %1299
  %1314 = fadd fast float %523, 0x3FF3C6EF40000000
  %1315 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1316 = call float @dx.op.unary.f32(i32 23, float %1300)  ; Log(value)
  %1317 = fadd fast float %1316, -7.000000e+00
  %1318 = call float @dx.op.unary.f32(i32 21, float %1317)  ; Exp(value)
  %1319 = fmul fast float %1315, 2.000000e+00
  %1320 = fadd fast float %1319, -1.000000e+00
  %1321 = fmul fast float %1318, %1320
  %1322 = fcmp fast ogt float %1300, 0.000000e+00
  %1323 = select i1 %1322, float %1321, float 0.000000e+00
  %1324 = fadd fast float %1323, %1300
  %1325 = fadd fast float %523, 0x3FFDAA66E0000000
  %1326 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1327 = call float @dx.op.unary.f32(i32 23, float %1301)  ; Log(value)
  %1328 = fadd fast float %1327, -6.000000e+00
  %1329 = call float @dx.op.unary.f32(i32 21, float %1328)  ; Exp(value)
  %1330 = fmul fast float %1326, 2.000000e+00
  %1331 = fadd fast float %1330, -1.000000e+00
  %1332 = fmul fast float %1329, %1331
  %1333 = fcmp fast ogt float %1301, 0.000000e+00
  %1334 = select i1 %1333, float %1332, float 0.000000e+00
  %1335 = fadd fast float %1334, %1301
  %1336 = select i1 %110, float %1300, float %1324
  %1337 = select i1 %110, float %1301, float %1335
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1338 = call float @dx.op.binary.f32(i32 36, float %1313, float 3.225500e+04)  ; FMin(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1336, float 3.225500e+04)  ; FMin(a,b)
  %1340 = call float @dx.op.binary.f32(i32 36, float %1337, float 3.225500e+04)  ; FMin(a,b)
  %1341 = call float @dx.op.binary.f32(i32 36, float %1302, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1339)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1341)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1302)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1302)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1302)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1302)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!36}
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26}
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
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34, !35}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!36 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!37 = !{void ()* @ps_main, !"ps_main", !38, !4, !62}
!38 = !{!39, !59, null}
!39 = !{!40, !43, !44, !46, !49, !51, !53, !55, !56, !58}
!40 = !{i32 0, !"SV_Position", i8 9, i8 3, !41, i8 4, i32 1, i8 4, i32 0, i8 0, !42}
!41 = !{i32 0}
!42 = !{i32 3, i32 15}
!43 = !{i32 1, !"COLOR", i8 9, i8 0, !41, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!44 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 2, i8 0, !45}
!45 = !{i32 3, i32 3}
!46 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 3, i8 0, !48}
!47 = !{i32 1}
!48 = !{i32 3, i32 7}
!49 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!50 = !{i32 3}
!51 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !52, i8 3, i32 1, i8 2, i32 5, i8 0, !45}
!52 = !{i32 5}
!53 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !54, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!54 = !{i32 8}
!55 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !41, i8 1, i32 1, i8 4, i32 7, i8 0, !42}
!56 = !{i32 8, !"COLOR", i8 5, i8 0, !50, i8 1, i32 1, i8 3, i32 8, i8 0, !57}
!57 = !{i32 3, i32 5}
!58 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !41, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!59 = !{!60, !61}
!60 = !{i32 0, !"SV_Target", i8 9, i8 16, !41, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!61 = !{i32 1, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 1, i8 0, !42}
!62 = !{i32 0, i64 24}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

