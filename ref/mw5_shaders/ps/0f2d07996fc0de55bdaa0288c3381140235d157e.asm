;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 8   xyzw        4     NONE   float       
; QUAD_POSITION            0   xyzw        5     NONE   float   xyzw
; COLOR                    3   xyz         6     NONE    uint   x z 
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
; shader hash: ea2e8c42c4ad58b7e7dd5ed464ecae4e
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
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4             t0     1
;                                   texture     f32          2d      T5     t57,space2     1
;                                   texture    byte         r/o      T6     t69,space1     1
;                                   texture     u32          2d      T7     t56,space2     1
;                                   texture     f32          1d      T8     t30,space2     1
;                                   texture     f32          3d      T9     t44,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32          2d     T14     t86,space2     1
;                                   texture    byte         r/o     T15             t1     1
;
;
; ViewId state:
;
; Number of inputs: 27, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 22, 23, 24, 26 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 22, 23, 24, 26 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 22, 23, 24, 26 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 22, 23, 24, 26 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 22, 23, 24, 26 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 22, 23, 24, 26 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 22, 23, 24, 26 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 22, 23, 24, 26 }
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = fmul fast float %41, %33
  %43 = fmul fast float %41, %34
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 3
  %47 = fmul fast float %42, 2.000000e+00
  %48 = fmul fast float %47, %45
  %49 = fmul fast float %43, 2.000000e+00
  %50 = fmul fast float %49, %46
  %51 = fsub fast float 1.000000e+00, %48
  %52 = fsub fast float 1.000000e+00, %50
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fmul fast float %51, %54
  %58 = fmul fast float %51, %55
  %59 = fmul fast float %51, %56
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %52, %61
  %65 = fmul fast float %52, %62
  %66 = fmul fast float %52, %63
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fadd fast float %64, %68
  %72 = fadd fast float %71, %57
  %73 = fadd fast float %65, %69
  %74 = fadd fast float %73, %58
  %75 = fadd fast float %66, %70
  %76 = fadd fast float %75, %59
  %77 = fmul fast float %72, %36
  %78 = fmul fast float %74, %36
  %79 = fmul fast float %76, %36
  %80 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.i32 %80, 3
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 0
  %84 = and i32 %81, 4
  %85 = icmp ne i32 %84, 0
  %86 = and i1 %83, %85
  br i1 %86, label %87, label %96

; <label>:87                                      ; preds = %0
  %88 = fmul fast float %46, %43
  %89 = fmul fast float %45, %42
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %89, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = fsub fast float 1.000000e+00, %91
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fcmp fast olt float %92, %94
  br label %99

; <label>:96                                      ; preds = %0
  %97 = icmp eq i32 %84, 0
  %98 = and i1 %83, %97
  br label %99

; <label>:99                                      ; preds = %96, %87
  %100 = phi i1 [ %95, %87 ], [ %98, %96 ]
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %102, %42
  %105 = fmul fast float %103, %43
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = and i32 %107, 114688
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %109, float %104, float 0.000000e+00
  %111 = select i1 %109, float %105, float 0.000000e+00
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %110, float %111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fmul fast float %113, 2.550000e+02
  %115 = fptoui float %114 to i32
  %116 = select i1 %109, i32 %115, i32 0
  %117 = mul i32 %21, 208
  %118 = add i32 %117, 188
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %81, 114688
  %122 = and i32 %81, 8
  %123 = icmp ne i32 %122, 0
  %124 = or i1 %100, %123
  %125 = select i1 %124, i32 %121, i32 16384
  %126 = and i32 %125, %120
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %99
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %129

; <label>:129                                     ; preds = %128, %99
  %130 = and i32 %120, 512
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %156, label %132

; <label>:132                                     ; preds = %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %134, %42
  %137 = fmul fast float %135, %43
  %138 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %140 = fdiv fast float %138, %139
  %141 = fcmp fast ogt float %140, 0x3FFC71C720000000
  br i1 %141, label %142, label %148

; <label>:142                                     ; preds = %132
  %143 = fdiv fast float 0x3FFC71C720000000, %140
  %144 = fmul fast float %143, %137
  %145 = fsub fast float 1.000000e+00, %143
  %146 = fmul fast float %145, 5.000000e-01
  %147 = fadd fast float %146, %144
  br label %156

; <label>:148                                     ; preds = %132
  %149 = fcmp fast olt float %140, 0x3FFC71C720000000
  br i1 %149, label %150, label %156

; <label>:150                                     ; preds = %148
  %151 = fmul fast float %136, 5.625000e-01
  %152 = fmul fast float %151, %140
  %153 = fmul fast float %140, 2.812500e-01
  %154 = fsub fast float 5.000000e-01, %153
  %155 = fadd fast float %154, %152
  br label %156

; <label>:156                                     ; preds = %150, %148, %142, %129
  %157 = phi float [ %30, %129 ], [ %136, %142 ], [ %155, %150 ], [ %136, %148 ]
  %158 = phi float [ %31, %129 ], [ %147, %142 ], [ %137, %150 ], [ %137, %148 ]
  %159 = add i32 %22, 72
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = extractvalue %dx.types.ResRet.i32 %160, 1
  %163 = bitcast i32 %161 to float
  %164 = bitcast i32 %162 to float
  %165 = fmul fast float %163, %30
  %166 = fmul fast float %164, %31
  %167 = call float @dx.op.unary.f32(i32 22, float %165)  ; Frc(value)
  %168 = call float @dx.op.unary.f32(i32 22, float %166)  ; Frc(value)
  %169 = and i32 %120, 16
  %170 = icmp ne i32 %169, 0
  %171 = select i1 %170, float 1.000000e+00, float %32
  %172 = icmp eq i32 %169, 0
  br i1 %172, label %192, label %173, !dx.controlflow.hints !58

; <label>:173                                     ; preds = %156
  %174 = add i32 %117, 64
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fadd fast float %176, 1.000000e+00
  %178 = fmul fast float %177, %32
  %179 = fsub fast float %178, %176
  %180 = fsub fast float %177, %179
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = fsub fast float 1.000000e+00, %178
  %183 = call float @dx.op.unary.f32(i32 7, float %182)  ; Saturate(value)
  %184 = fsub fast float %181, %183
  %185 = fsub fast float %171, %183
  %186 = fdiv fast float %185, %184
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = fmul fast float %187, 2.000000e+00
  %189 = fsub fast float 3.000000e+00, %188
  %190 = fmul fast float %187, %187
  %191 = fmul fast float %190, %189
  br label %192

; <label>:192                                     ; preds = %173, %156
  %193 = phi float [ %191, %173 ], [ %171, %156 ]
  %194 = fcmp fast ogt float %193, 0.000000e+00
  br i1 %194, label %196, label %195

; <label>:195                                     ; preds = %192
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %196

; <label>:196                                     ; preds = %195, %192
  %197 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %198 = fmul fast float %42, 5.000000e-01
  %199 = fmul fast float %43, 5.000000e-01
  %200 = fptosi float %198 to i32
  %201 = fptosi float %199 to i32
  %202 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %200, i32 %201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = lshr i32 %203, 18
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F4C00EBA0000000
  %207 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %208 = fadd fast float %207, -1.000000e+00
  %209 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %210 = extractvalue %dx.types.Dimensions %209, 0
  %211 = sitofp i32 %210 to float
  %212 = extractvalue %dx.types.Dimensions %209, 1
  %213 = sitofp i32 %212 to float
  %214 = fcmp fast oge float %198, %211
  %215 = fcmp fast oge float %199, %213
  %216 = or i1 %214, %215
  %217 = select i1 %216, float 0x4197782600000000, float %208
  %218 = fsub fast float %217, %36
  %219 = fcmp fast ogt float %218, 0.000000e+00
  %220 = and i32 %116, -2
  %221 = icmp eq i32 %220, 2
  %222 = and i1 %221, %219
  %223 = xor i1 %219, true
  %224 = icmp eq i32 %116, 1
  %225 = and i1 %224, %223
  %226 = or i1 %222, %225
  %227 = and i32 %120, 262144
  %228 = icmp ne i32 %227, 0
  %229 = and i1 %228, %226
  %230 = xor i1 %226, true
  %231 = and i32 %120, 131072
  %232 = icmp ne i32 %231, 0
  %233 = and i1 %232, %230
  %234 = or i1 %229, %233
  br i1 %234, label %235, label %236

; <label>:235                                     ; preds = %196
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %236

; <label>:236                                     ; preds = %235, %196
  %237 = and i32 %120, 32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %456, label %239, !dx.controlflow.hints !59

; <label>:239                                     ; preds = %236
  %240 = add i32 %117, 80
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = extractvalue %dx.types.ResRet.f32 %241, 2
  %245 = extractvalue %dx.types.ResRet.f32 %241, 3
  %246 = add i32 %117, 96
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = add i32 %117, 112
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 3
  %254 = add i32 %117, 128
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 3
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 4096
  %260 = icmp ne i32 %259, 0
  %261 = fcmp fast une float %250, 0.000000e+00
  %262 = and i32 %258, 64
  %263 = icmp ne i32 %262, 0
  %264 = and i32 %258, 128
  %265 = icmp eq i32 %264, 0
  %266 = and i32 %258, 2048
  %267 = icmp eq i32 %266, 0
  %268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %269 = extractvalue %dx.types.Dimensions %268, 0
  %270 = sitofp i32 %269 to float
  %271 = extractvalue %dx.types.Dimensions %268, 1
  %272 = sitofp i32 %271 to float
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %275 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %276 = fmul fast float %274, %42
  %277 = fmul fast float %275, %43
  %278 = fmul fast float %276, %270
  %279 = fmul fast float %277, %272
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %282 = fsub fast float -0.000000e+00, %281
  %283 = fptoui float %282 to i32
  %284 = fptoui float %278 to i32
  %285 = fptoui float %279 to i32
  %286 = and i32 %283, 31
  %287 = lshr i32 %284, %286
  %288 = lshr i32 %285, %286
  %289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %283, i32 %287, i32 %288, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = fcmp fast ogt float %290, -1.000000e+00
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %294 = select i1 %291, float %293, float 1.000000e+00
  %295 = fadd fast float %290, 1.000000e+00
  %296 = fmul fast float %294, %295
  %297 = call float @dx.op.unary.f32(i32 6, float %296)  ; FAbs(value)
  %298 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %299 = fcmp fast oge float %297, %298
  %300 = select i1 %299, float 0x4197782600000000, float %297
  br i1 %267, label %366, label %301, !dx.controlflow.hints !60

; <label>:301                                     ; preds = %239
  %302 = fmul fast float %47, %274
  %303 = fmul fast float %49, %275
  %304 = fsub fast float 1.000000e+00, %302
  %305 = fsub fast float 1.000000e+00, %303
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %310 = fmul fast float %304, %307
  %311 = fmul fast float %304, %308
  %312 = fmul fast float %304, %309
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = fmul fast float %305, %314
  %318 = fmul fast float %305, %315
  %319 = fmul fast float %305, %316
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fadd fast float %317, %321
  %325 = fadd fast float %324, %310
  %326 = fadd fast float %318, %322
  %327 = fadd fast float %326, %311
  %328 = fadd fast float %319, %323
  %329 = fadd fast float %328, %312
  %330 = fmul fast float %325, %300
  %331 = fmul fast float %327, %300
  %332 = fmul fast float %329, %300
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = fsub fast float %334, %23
  %338 = fadd fast float %337, %330
  %339 = fsub fast float %335, %24
  %340 = fadd fast float %339, %331
  %341 = fsub fast float %336, %25
  %342 = fadd fast float %341, %332
  %343 = fmul fast float %26, %26
  %344 = call float @dx.op.dot3.f32(i32 55, float %338, float %340, float %342, float %338, float %340, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = fsub fast float %343, %344
  %346 = fmul fast float %249, %343
  %347 = fmul fast float %248, %343
  %348 = fcmp fast olt float %345, %346
  %349 = fcmp fast ogt float %345, %347
  %350 = or i1 %348, %349
  %351 = select i1 %350, float 0.000000e+00, float %345
  %352 = fsub fast float %248, %249
  %353 = fmul fast float %352, %343
  %354 = fsub fast float %351, %346
  %355 = fdiv fast float %354, %353
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = fmul fast float %356, 2.000000e+00
  %358 = fsub fast float 3.000000e+00, %357
  %359 = fsub fast float %253, %256
  %360 = fmul fast float %356, %356
  %361 = fmul fast float %360, %359
  %362 = fmul fast float %361, %358
  %363 = fadd fast float %362, %256
  %364 = fmul fast float %242, %242
  %365 = fmul fast float %364, %351
  br label %449

; <label>:366                                     ; preds = %239
  %367 = and i32 %258, 256
  %368 = icmp eq i32 %367, 0
  %369 = fsub fast float %300, %36
  br i1 %368, label %406, label %370

; <label>:370                                     ; preds = %366
  %371 = fadd fast float %248, %36
  %372 = fcmp fast olt float %300, %36
  %373 = fcmp fast ogt float %300, %371
  %374 = or i1 %372, %373
  %375 = select i1 %374, float 0.000000e+00, float %369
  %376 = call float @dx.op.unary.f32(i32 83, float %300)  ; DerivCoarseX(value)
  %377 = call float @dx.op.unary.f32(i32 84, float %300)  ; DerivCoarseY(value)
  %378 = fmul fast float %376, %376
  %379 = fmul fast float %377, %377
  %380 = fadd fast float %379, %378
  %381 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %382 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %383 = fmul fast float %382, %381
  %384 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %385 = fmul fast float %384, %249
  %386 = fdiv fast float %369, %385
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fmul fast float %387, 2.000000e+00
  %389 = fsub fast float 3.000000e+00, %388
  %390 = fmul fast float %387, %387
  %391 = fmul fast float %390, %389
  %392 = fsub fast float %300, %371
  %393 = fadd fast float %392, %385
  %394 = fdiv fast float %393, %385
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = fmul fast float %395, 2.000000e+00
  %397 = fsub fast float 3.000000e+00, %396
  %398 = fmul fast float %395, %395
  %399 = fmul fast float %398, %397
  %400 = fsub fast float %391, %399
  %401 = fsub fast float %253, %256
  %402 = fmul fast float %400, %401
  %403 = fadd fast float %402, %256
  %404 = fmul fast float %375, %242
  %405 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  br label %449

; <label>:406                                     ; preds = %366
  br i1 %261, label %407, label %420

; <label>:407                                     ; preds = %406
  %408 = fdiv fast float 5.000000e+01, %26
  %409 = select i1 %263, float %408, float 1.000000e+00
  %410 = fmul fast float %409, %242
  %411 = fmul fast float %167, 2.000000e+00
  %412 = fmul fast float %168, 2.000000e+00
  %413 = fadd fast float %411, -1.000000e+00
  %414 = fadd fast float %412, -1.000000e+00
  %415 = call float @dx.op.dot2.f32(i32 54, float %413, float %414, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  %416 = fmul fast float %250, %26
  %417 = fmul fast float %416, %415
  %418 = fsub fast float %369, %417
  %419 = fmul fast float %410, %418
  br label %449

; <label>:420                                     ; preds = %406
  br i1 %265, label %441, label %421

; <label>:421                                     ; preds = %420
  %422 = fmul fast float %26, 0x3F947AE140000000
  %423 = select i1 %263, float %422, float 1.000000e+00
  %424 = fdiv fast float 1.000000e+00, %423
  %425 = fmul fast float %423, %243
  %426 = fmul fast float %423, %244
  %427 = fmul fast float %424, %245
  %428 = call float @dx.op.unary.f32(i32 6, float %369)  ; FAbs(value)
  %429 = fcmp fast olt float %428, %425
  br i1 %429, label %430, label %434, !dx.controlflow.hints !61

; <label>:430                                     ; preds = %421
  %431 = fmul fast float %424, %242
  %432 = fmul fast float %431, %428
  %433 = call float @dx.op.unary.f32(i32 6, float %432)  ; FAbs(value)
  br label %449

; <label>:434                                     ; preds = %421
  %435 = fcmp fast ogt float %428, %426
  br i1 %435, label %436, label %449

; <label>:436                                     ; preds = %434
  %437 = fsub fast float %428, %426
  %438 = fmul fast float %427, %437
  %439 = call float @dx.op.unary.f32(i32 6, float %438)  ; FAbs(value)
  %440 = fsub fast float 1.000000e+00, %439
  br label %449

; <label>:441                                     ; preds = %420
  %442 = fdiv fast float 5.000000e+01, %26
  %443 = select i1 %263, float %442, float 1.000000e+00
  %444 = fmul fast float %443, %242
  %445 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %446 = select i1 %260, float %445, float 0x47EFFFFFE0000000
  %447 = call float @dx.op.binary.f32(i32 36, float %369, float %446)  ; FMin(a,b)
  %448 = fmul fast float %444, %447
  br label %449

; <label>:449                                     ; preds = %441, %436, %434, %430, %407, %370, %301
  %450 = phi float [ %365, %301 ], [ %405, %370 ], [ %419, %407 ], [ %448, %441 ], [ %433, %430 ], [ %440, %436 ], [ %428, %434 ]
  %451 = phi float [ %363, %301 ], [ %403, %370 ], [ 1.000000e+00, %407 ], [ 1.000000e+00, %441 ], [ 1.000000e+00, %430 ], [ 1.000000e+00, %436 ], [ 1.000000e+00, %434 ]
  %452 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %453 = fmul fast float %452, %32
  %454 = fmul fast float %451, %197
  %455 = fmul fast float %454, %452
  br label %456

; <label>:456                                     ; preds = %449, %236
  %457 = phi float [ %455, %449 ], [ %197, %236 ]
  %458 = phi float [ %453, %449 ], [ %32, %236 ]
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 2
  %461 = fptosi float %36 to i32
  %462 = sitofp i32 %461 to float
  %463 = fadd fast float %460, %462
  %464 = fmul fast float %463, 0x3FE3C6EF40000000
  %465 = frem fast float %42, 2.560000e+02
  %466 = frem fast float %43, 2.560000e+02
  %467 = fptoui float %465 to i32
  %468 = fptoui float %466 to i32
  %469 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %467, i32 %468, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = fadd fast float %470, %464
  %472 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %473 = and i32 %120, 1
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %510, label %475, !dx.controlflow.hints !62

; <label>:475                                     ; preds = %456
  %476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 2
  %478 = extractvalue %dx.types.ResRet.f32 %476, 3
  %479 = and i32 %120, 2
  %480 = icmp eq i32 %479, 0
  %481 = call float @dx.op.dot3.f32(i32 55, float %27, float %28, float %29, float %27, float %28, float %29)  ; Dot3(ax,ay,az,bx,by,bz)
  %482 = call float @dx.op.unary.f32(i32 25, float %481)  ; Rsqrt(value)
  %483 = fmul fast float %482, %27
  %484 = fmul fast float %482, %28
  %485 = fmul fast float %482, %29
  %486 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %487 = call float @dx.op.unary.f32(i32 25, float %486)  ; Rsqrt(value)
  %488 = fmul fast float %487, %77
  %489 = fmul fast float %487, %78
  %490 = fmul fast float %487, %79
  %491 = call float @dx.op.dot3.f32(i32 55, float %488, float %489, float %490, float %483, float %484, float %485)  ; Dot3(ax,ay,az,bx,by,bz)
  %492 = fmul fast float %491, %491
  %493 = fmul fast float %492, %477
  %494 = fadd fast float %493, %478
  %495 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  br i1 %480, label %496, label %506, !dx.controlflow.hints !63

; <label>:496                                     ; preds = %475
  %497 = extractvalue %dx.types.ResRet.f32 %476, 1
  %498 = extractvalue %dx.types.ResRet.f32 %476, 0
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 3
  %501 = fmul fast float %500, %486
  %502 = fsub fast float %498, %501
  %503 = fmul fast float %502, %497
  %504 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %505 = fmul fast float %504, %495
  br label %506

; <label>:506                                     ; preds = %496, %475
  %507 = phi float [ %505, %496 ], [ %495, %475 ]
  %508 = fmul fast float %507, %457
  %509 = fmul fast float %507, %458
  br label %510

; <label>:510                                     ; preds = %506, %456
  %511 = phi float [ %508, %506 ], [ %457, %456 ]
  %512 = phi float [ %509, %506 ], [ %458, %456 ]
  %513 = add i32 %22, 40
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 255
  %517 = uitofp i32 %516 to float
  %518 = fmul fast float %517, 0x3F70101020000000
  %519 = fmul fast float %518, %518
  %520 = add i32 %22, 120
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = add i32 %522, 0
  %524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %524, %dx.types.Handle %39, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = fmul fast float %519, %526
  %528 = add i32 %22, 32
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = and i32 %530, 255
  %532 = uitofp i32 %531 to float
  %533 = lshr i32 %530, 8
  %534 = and i32 %533, 255
  %535 = uitofp i32 %534 to float
  %536 = fadd fast float %535, %532
  %537 = fmul fast float %536, 0x3F70101020000000
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = and i32 %120, 8192
  %540 = icmp eq i32 %539, 0
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  br i1 %540, label %549, label %543, !dx.controlflow.hints !64

; <label>:543                                     ; preds = %510
  %544 = add i32 %117, 176
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fcmp fast oge float %546, 0.000000e+00
  %548 = select i1 %547, float %546, float %542
  br label %556

; <label>:549                                     ; preds = %510
  %550 = add i32 %22, 104
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = bitcast i32 %552 to float
  %554 = fcmp fast oge float %553, 0.000000e+00
  %555 = select i1 %554, float %553, float %542
  br label %556

; <label>:556                                     ; preds = %549, %543
  %557 = phi float [ %548, %543 ], [ %555, %549 ]
  %558 = fsub fast float 1.000000e+00, %527
  %559 = fmul fast float %558, %512
  %560 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %200, i32 %201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = lshr i32 %561, 18
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F4C00EBA0000000
  %565 = call float @dx.op.unary.f32(i32 21, float %564)  ; Exp(value)
  %566 = fadd fast float %565, -1.000000e+00
  %567 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %568 = extractvalue %dx.types.Dimensions %567, 0
  %569 = sitofp i32 %568 to float
  %570 = extractvalue %dx.types.Dimensions %567, 1
  %571 = sitofp i32 %570 to float
  %572 = fcmp fast oge float %198, %569
  %573 = fcmp fast oge float %199, %571
  %574 = or i1 %572, %573
  %575 = select i1 %574, float 0x4197782600000000, float %566
  %576 = fadd fast float %527, -1.000000e+00
  %577 = fmul fast float %576, %511
  %578 = fadd fast float %577, 1.000000e+00
  %579 = call float @dx.op.dot3.f32(i32 55, float %578, float %578, float %578, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = fsub fast float 1.000000e+00, %579
  %581 = fmul fast float %557, %538
  %582 = fsub fast float 1.000000e+00, %538
  %583 = fsub fast float %582, %559
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %587 = fmul fast float %586, %584
  %588 = fadd fast float %587, %581
  %589 = and i32 %120, 2097152
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %595, label %591, !dx.controlflow.hints !65

; <label>:591                                     ; preds = %556
  %592 = add i32 %117, 192
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  br label %598

; <label>:595                                     ; preds = %556
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 3
  br label %598

; <label>:598                                     ; preds = %595, %591
  %599 = phi float [ %594, %591 ], [ %597, %595 ]
  %600 = icmp eq i32 %116, 3
  %601 = fcmp fast ogt float %36, %575
  %602 = and i1 %224, %601
  %603 = or i1 %600, %602
  %604 = icmp eq i32 %116, 2
  %605 = fcmp fast ole float %36, %575
  %606 = and i1 %604, %605
  %607 = or i1 %606, %603
  br i1 %602, label %608, label %731

; <label>:608                                     ; preds = %598
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %611 = extractvalue %dx.types.CBufRet.f32 %609, 3
  %612 = fmul fast float %610, %42
  %613 = fmul fast float %611, %43
  %614 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %615 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %616 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %614, float %615, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = extractvalue %dx.types.ResRet.f32 %616, 3
  %621 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %614, float %615, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = extractvalue %dx.types.ResRet.f32 %621, 3
  %626 = call float @dx.op.binary.f32(i32 35, float %618, float %619)  ; FMax(a,b)
  %627 = call float @dx.op.binary.f32(i32 35, float %617, float %626)  ; FMax(a,b)
  %628 = call float @dx.op.binary.f32(i32 35, float %627, float %620)  ; FMax(a,b)
  %629 = call float @dx.op.binary.f32(i32 36, float %623, float %624)  ; FMin(a,b)
  %630 = call float @dx.op.binary.f32(i32 36, float %622, float %629)  ; FMin(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float %630, float %625)  ; FMin(a,b)
  %632 = fmul fast float %628, 2.550000e+02
  %633 = fadd fast float %632, 0x3F70101020000000
  %634 = fptoui float %633 to i32
  %635 = fmul fast float %631, 2.550000e+02
  %636 = fadd fast float %635, 0x3F70101020000000
  %637 = fptoui float %636 to i32
  %638 = icmp ult i32 %634, %637
  br i1 %638, label %639, label %688

; <label>:639                                     ; preds = %608
  %640 = fcmp fast ogt float %35, 9.843750e-01
  %641 = fadd fast float %36, -4.000000e+00
  %642 = select i1 %640, float -4.000000e+00, float %641
  %643 = call float @dx.op.binary.f32(i32 35, float %642, float 0.000000e+00)  ; FMax(a,b)
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = fadd fast float %645, %643
  %647 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %648 = fmul fast float %646, %647
  %649 = call float @dx.op.unary.f32(i32 23, float %648)  ; Log(value)
  %650 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %651 = fmul fast float %650, %649
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %654 = fmul fast float %651, %653
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = uitofp i32 %634 to float
  %657 = uitofp i32 %637 to float
  %658 = fadd fast float %656, 5.000000e-01
  %659 = fadd fast float %657, 5.000000e-01
  %660 = fmul fast float %653, %658
  %661 = fmul fast float %653, %659
  %662 = fadd fast float %660, 0x3F0FFB4800000000
  %663 = fadd fast float %661, 0xBF0FFB4800000000
  %664 = call float @dx.op.binary.f32(i32 35, float %655, float %662)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %664, float %663)  ; FMin(a,b)
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 1
  %668 = extractvalue %dx.types.CBufRet.f32 %666, 2
  %669 = extractvalue %dx.types.CBufRet.f32 %666, 0
  %670 = fmul fast float %667, %665
  %671 = fadd fast float %669, %670
  %672 = fadd fast float %669, %668
  %673 = fsub fast float %667, %668
  %674 = fadd fast float %673, %669
  %675 = call float @dx.op.binary.f32(i32 35, float %671, float %672)  ; FMax(a,b)
  %676 = call float @dx.op.binary.f32(i32 36, float %675, float %674)  ; FMin(a,b)
  %677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %614, float %615, float %676, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %614, float %615, float %676, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = extractvalue %dx.types.ResRet.f32 %679, 1
  %682 = extractvalue %dx.types.ResRet.f32 %679, 2
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 1
  %685 = fmul fast float %684, %680
  %686 = fmul fast float %684, %681
  %687 = fmul fast float %684, %682
  br label %688

; <label>:688                                     ; preds = %639, %608
  %689 = phi float [ %678, %639 ], [ 1.000000e+00, %608 ]
  %690 = phi float [ %685, %639 ], [ 0.000000e+00, %608 ]
  %691 = phi float [ %686, %639 ], [ 0.000000e+00, %608 ]
  %692 = phi float [ %687, %639 ], [ 0.000000e+00, %608 ]
  %693 = fmul fast float %690, %580
  %694 = fmul fast float %691, %580
  %695 = fmul fast float %692, %580
  %696 = call float @dx.op.dot3.f32(i32 55, float %693, float %694, float %695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = select i1 %100, float %696, float %693
  %698 = select i1 %100, float 0.000000e+00, float %694
  %699 = select i1 %100, float 0.000000e+00, float %695
  %700 = fmul fast float %47, %610
  %701 = fmul fast float %49, %611
  %702 = fsub fast float 1.000000e+00, %700
  %703 = fsub fast float 1.000000e+00, %701
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %708 = fmul fast float %702, %705
  %709 = fmul fast float %702, %706
  %710 = fmul fast float %702, %707
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 0
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %714 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %715 = fmul fast float %703, %712
  %716 = fmul fast float %703, %713
  %717 = fmul fast float %703, %714
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 0
  %720 = extractvalue %dx.types.CBufRet.f32 %718, 1
  %721 = extractvalue %dx.types.CBufRet.f32 %718, 2
  %722 = fadd fast float %715, %719
  %723 = fadd fast float %722, %708
  %724 = fadd fast float %716, %720
  %725 = fadd fast float %724, %709
  %726 = fadd fast float %717, %721
  %727 = fadd fast float %726, %710
  %728 = fmul fast float %723, %575
  %729 = fmul fast float %725, %575
  %730 = fmul fast float %727, %575
  br label %731

; <label>:731                                     ; preds = %688, %598
  %732 = phi float [ %728, %688 ], [ %77, %598 ]
  %733 = phi float [ %729, %688 ], [ %78, %598 ]
  %734 = phi float [ %730, %688 ], [ %79, %598 ]
  %735 = phi float [ %575, %688 ], [ %36, %598 ]
  %736 = phi float [ %697, %688 ], [ 0.000000e+00, %598 ]
  %737 = phi float [ %698, %688 ], [ 0.000000e+00, %598 ]
  %738 = phi float [ %699, %688 ], [ 0.000000e+00, %598 ]
  %739 = phi float [ %689, %688 ], [ 1.000000e+00, %598 ]
  br i1 %607, label %1789, label %740

; <label>:740                                     ; preds = %731
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %743 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %744 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %745 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %749 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %750 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 0
  %753 = extractvalue %dx.types.CBufRet.f32 %751, 1
  %754 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %755 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %758 = extractvalue %dx.types.CBufRet.f32 %756, 1
  %759 = extractvalue %dx.types.CBufRet.f32 %756, 2
  %760 = extractvalue %dx.types.CBufRet.f32 %756, 3
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %766 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %768 = fcmp fast olt float %767, -5.000000e-01
  %769 = call float @dx.op.dot3.f32(i32 55, float %732, float %733, float %734, float %732, float %733, float %734)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call float @dx.op.unary.f32(i32 25, float %769)  ; Rsqrt(value)
  %771 = fmul fast float %770, %769
  %772 = fmul fast float %770, %732
  %773 = fmul fast float %770, %733
  %774 = fmul fast float %770, %734
  %775 = fadd fast float %771, %745
  %776 = call float @dx.op.dot3.f32(i32 55, float %772, float %773, float %774, float %742, float %743, float %744)  ; Dot3(ax,ay,az,bx,by,bz)
  %777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.i32 %777, 1
  %779 = and i32 %778, 1
  %780 = icmp ne i32 %779, 0
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %783 = fcmp fast ogt float %782, 0.000000e+00
  %784 = and i1 %780, %783
  br i1 %784, label %785, label %1191, !dx.controlflow.hints !66

; <label>:785                                     ; preds = %740
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 3
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %792 = fsub fast float %789, %791
  %793 = and i32 %778, 2
  %794 = extractvalue %dx.types.CBufRet.i32 %777, 0
  %795 = call i32 @dx.op.binary.i32(i32 40, i32 %794, i32 3)  ; UMin(a,b)
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 0
  %798 = extractvalue %dx.types.CBufRet.f32 %796, 1
  %799 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %800 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %801 = fsub fast float %797, %799
  %802 = fsub fast float %798, %800
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = fcmp fast ogt float %804, 0.000000e+00
  %806 = fsub fast float -0.000000e+00, %801
  %807 = fsub fast float -0.000000e+00, %802
  %808 = call float @dx.op.dot2.f32(i32 54, float %772, float %773, float %772, float %773)  ; Dot2(ax,ay,bx,by)
  %809 = call float @dx.op.dot2.f32(i32 54, float %772, float %773, float %806, float %807)  ; Dot2(ax,ay,bx,by)
  %810 = fmul fast float %809, 2.000000e+00
  %811 = call float @dx.op.dot2.f32(i32 54, float %806, float %807, float %806, float %807)  ; Dot2(ax,ay,bx,by)
  %812 = fmul fast float %804, %804
  %813 = fsub fast float %811, %812
  %814 = fmul fast float %810, %810
  %815 = fmul fast float %808, 4.000000e+00
  %816 = fmul fast float %815, %813
  %817 = fsub fast float %814, %816
  %818 = fcmp fast ogt float %817, 0.000000e+00
  br i1 %818, label %819, label %834

; <label>:819                                     ; preds = %785
  %820 = fcmp fast ogt float %810, 0.000000e+00
  %821 = call float @dx.op.unary.f32(i32 24, float %817)  ; Sqrt(value)
  %822 = fsub fast float -0.000000e+00, %821
  %823 = select i1 %820, float %821, float %822
  %824 = fadd fast float %823, %810
  %825 = fmul float %824, -5.000000e-01
  %826 = fdiv fast float %825, %808
  %827 = call float @dx.op.binary.f32(i32 35, float %826, float 0.000000e+00)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 36, float %771, float %827)  ; FMin(a,b)
  %829 = fdiv fast float %813, %825
  %830 = call float @dx.op.binary.f32(i32 35, float %829, float 0.000000e+00)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 36, float %771, float %830)  ; FMin(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %828, float %831)  ; FMin(a,b)
  %833 = call float @dx.op.binary.f32(i32 35, float %828, float %831)  ; FMax(a,b)
  br label %834

; <label>:834                                     ; preds = %819, %785
  %835 = phi float [ %833, %819 ], [ -1.000000e+00, %785 ]
  %836 = phi float [ %832, %819 ], [ -1.000000e+00, %785 ]
  %837 = phi i1 [ true, %819 ], [ false, %785 ]
  %838 = and i1 %805, %837
  br i1 %838, label %839, label %841

; <label>:839                                     ; preds = %834
  %840 = fcmp fast oeq float %836, %835
  br i1 %840, label %1144, label %842

; <label>:841                                     ; preds = %834
  br i1 %805, label %1144, label %842

; <label>:842                                     ; preds = %841, %839
  %843 = phi float [ %771, %841 ], [ %835, %839 ]
  %844 = phi float [ 0.000000e+00, %841 ], [ %836, %839 ]
  %845 = icmp ne i32 %793, 0
  %846 = fmul fast float %843, %774
  %847 = fadd fast float %846, %787
  %848 = fmul fast float %847, %843
  %849 = select i1 %845, float 0.000000e+00, float %848
  %850 = fcmp fast oeq float %774, 0.000000e+00
  %851 = fdiv fast float %792, %774
  %852 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %851)  ; FMax(a,b)
  %853 = select i1 %850, float %843, float %852
  %854 = call float @dx.op.binary.f32(i32 36, float %843, float %853)  ; FMin(a,b)
  %855 = fcmp fast ogt float %774, 0.000000e+00
  %856 = fcmp fast olt float %792, 0.000000e+00
  br i1 %855, label %857, label %914

; <label>:857                                     ; preds = %842
  %858 = icmp eq i32 %793, 0
  br i1 %856, label %859, label %903

; <label>:859                                     ; preds = %857
  %860 = select i1 %858, float %843, float 0.000000e+00
  %861 = fsub fast float -0.000000e+00, %860
  %862 = call float @dx.op.unary.f32(i32 6, float %861)  ; FAbs(value)
  %863 = fmul fast float %860, %774
  %864 = fadd fast float %863, %787
  %865 = fmul fast float %862, %864
  %866 = fsub fast float %849, %865
  %867 = fsub fast float %843, %862
  %868 = select i1 %858, float %867, float 0.000000e+00
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = extractvalue %dx.types.CBufRet.f32 %869, 1
  %872 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %877 = extractvalue %dx.types.CBufRet.f32 %873, 3
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %880 = call float @dx.op.binary.f32(i32 36, float %866, float %879)  ; FMin(a,b)
  %881 = fmul fast float %877, %868
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = fsub fast float %874, %870
  %884 = fsub fast float %875, %871
  %885 = fsub fast float %876, %872
  %886 = fmul fast float %882, %883
  %887 = fmul fast float %882, %884
  %888 = fmul fast float %882, %885
  %889 = fadd fast float %886, %870
  %890 = fadd fast float %887, %871
  %891 = fadd fast float %888, %872
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = fadd fast float %894, %893
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %898 = extractvalue %dx.types.CBufRet.f32 %892, 3
  %899 = fadd fast float %898, %897
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = fmul fast float %896, %880
  %902 = fmul fast float %901, %900
  br label %1144

; <label>:903                                     ; preds = %857
  br i1 %858, label %904, label %925

; <label>:904                                     ; preds = %903
  %905 = call float @dx.op.binary.f32(i32 36, float %854, float %844)  ; FMin(a,b)
  %906 = fsub fast float %854, %905
  %907 = fsub fast float %906, %843
  %908 = call float @dx.op.unary.f32(i32 6, float %907)  ; FAbs(value)
  %909 = fadd fast float %906, %843
  %910 = fmul fast float %909, %774
  %911 = fadd fast float %910, %787
  %912 = fmul fast float %911, %908
  %913 = fsub fast float %849, %912
  br label %925

; <label>:914                                     ; preds = %842
  br i1 %856, label %915, label %925

; <label>:915                                     ; preds = %914
  %916 = call float @dx.op.binary.f32(i32 35, float %844, float %854)  ; FMax(a,b)
  %917 = icmp eq i32 %793, 0
  %918 = select i1 %917, float %854, float 0.000000e+00
  %919 = fsub fast float -0.000000e+00, %918
  %920 = call float @dx.op.unary.f32(i32 6, float %919)  ; FAbs(value)
  %921 = fmul fast float %918, %774
  %922 = fadd fast float %921, %787
  %923 = fmul fast float %920, %922
  %924 = fsub fast float %849, %923
  br label %925

; <label>:925                                     ; preds = %915, %914, %904, %903
  %926 = phi float [ %844, %903 ], [ %844, %904 ], [ %916, %915 ], [ %844, %914 ]
  %927 = phi float [ 0.000000e+00, %903 ], [ %908, %904 ], [ %920, %915 ], [ 0.000000e+00, %914 ]
  %928 = phi float [ %849, %903 ], [ %913, %904 ], [ %924, %915 ], [ %849, %914 ]
  %929 = phi float [ %854, %903 ], [ %854, %904 ], [ %843, %915 ], [ %843, %914 ]
  %930 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 0
  store float -1.000000e+00, float* %930, align 4, !tbaa !67, !noalias !71
  %931 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 1
  store float -1.000000e+00, float* %931, align 4, !tbaa !67, !noalias !71
  %932 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 2
  store float -1.000000e+00, float* %932, align 4, !tbaa !67, !noalias !71
  %933 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  store float -1.000000e+00, float* %933, align 4, !tbaa !67, !noalias !71
  %934 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 1
  store float -1.000000e+00, float* %934, align 4, !tbaa !67, !noalias !71
  %935 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 2
  store float -1.000000e+00, float* %935, align 4, !tbaa !67, !noalias !71
  %936 = icmp sgt i32 %795, 0
  br i1 %936, label %937, label %998

; <label>:937                                     ; preds = %925
  br label %938

; <label>:938                                     ; preds = %987, %937
  %939 = phi i32 [ %988, %987 ], [ 0, %937 ]
  %940 = phi i32 [ %989, %987 ], [ 0, %937 ]
  %941 = add nuw i32 %940, 171
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %941)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %948 = fsub fast float %943, %946
  %949 = fsub fast float %944, %947
  %950 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %951 = fsub fast float -0.000000e+00, %948
  %952 = fsub fast float -0.000000e+00, %949
  %953 = call float @dx.op.dot2.f32(i32 54, float %772, float %773, float %951, float %952)  ; Dot2(ax,ay,bx,by)
  %954 = fmul fast float %953, 2.000000e+00
  %955 = call float @dx.op.dot2.f32(i32 54, float %951, float %952, float %951, float %952)  ; Dot2(ax,ay,bx,by)
  %956 = fmul fast float %950, %950
  %957 = fsub fast float %955, %956
  %958 = fmul fast float %954, %954
  %959 = fmul fast float %815, %957
  %960 = fsub fast float %958, %959
  %961 = fcmp fast ogt float %960, 0.000000e+00
  br i1 %961, label %962, label %977

; <label>:962                                     ; preds = %938
  %963 = fcmp fast ogt float %954, 0.000000e+00
  %964 = call float @dx.op.unary.f32(i32 24, float %960)  ; Sqrt(value)
  %965 = fsub fast float -0.000000e+00, %964
  %966 = select i1 %963, float %964, float %965
  %967 = fadd fast float %966, %954
  %968 = fmul float %967, -5.000000e-01
  %969 = fdiv fast float %968, %808
  %970 = call float @dx.op.binary.f32(i32 35, float %969, float 0.000000e+00)  ; FMax(a,b)
  %971 = call float @dx.op.binary.f32(i32 36, float %843, float %970)  ; FMin(a,b)
  %972 = fdiv fast float %957, %968
  %973 = call float @dx.op.binary.f32(i32 35, float %972, float 0.000000e+00)  ; FMax(a,b)
  %974 = call float @dx.op.binary.f32(i32 36, float %843, float %973)  ; FMin(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %971, float %974)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %971, float %974)  ; FMax(a,b)
  br label %977

; <label>:977                                     ; preds = %962, %938
  %978 = phi float [ %976, %962 ], [ -1.000000e+00, %938 ]
  %979 = phi float [ %975, %962 ], [ -1.000000e+00, %938 ]
  %980 = phi i1 [ true, %962 ], [ false, %938 ]
  br i1 %980, label %981, label %987

; <label>:981                                     ; preds = %977
  %982 = call float @dx.op.binary.f32(i32 35, float %926, float %979)  ; FMax(a,b)
  %983 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %940
  store float %982, float* %983, align 4, !tbaa !67, !noalias !71
  %984 = call float @dx.op.binary.f32(i32 35, float %926, float %978)  ; FMax(a,b)
  %985 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %940
  store float %984, float* %985, align 4, !tbaa !67, !noalias !71
  %986 = add nsw i32 %939, 1
  br label %987

; <label>:987                                     ; preds = %981, %977
  %988 = phi i32 [ %986, %981 ], [ %939, %977 ]
  %989 = add nuw nsw i32 %940, 1
  %990 = icmp eq i32 %989, %795
  br i1 %990, label %991, label %938

; <label>:991                                     ; preds = %987
  %992 = load float, float* %932, align 4, !tbaa !67, !alias.scope !87, !noalias !90
  %993 = load float, float* %931, align 4, !tbaa !67, !alias.scope !93, !noalias !94
  %994 = load float, float* %930, align 4, !tbaa !67, !alias.scope !95, !noalias !96
  %995 = load float, float* %935, align 4, !tbaa !67, !alias.scope !97, !noalias !100
  %996 = load float, float* %934, align 4, !tbaa !67, !alias.scope !103, !noalias !104
  %997 = load float, float* %933, align 4, !tbaa !67, !alias.scope !105, !noalias !106
  br label %998

; <label>:998                                     ; preds = %991, %925
  %999 = phi float [ -1.000000e+00, %925 ], [ %997, %991 ]
  %1000 = phi float [ -1.000000e+00, %925 ], [ %996, %991 ]
  %1001 = phi float [ -1.000000e+00, %925 ], [ %995, %991 ]
  %1002 = phi float [ -1.000000e+00, %925 ], [ %994, %991 ]
  %1003 = phi float [ -1.000000e+00, %925 ], [ %993, %991 ]
  %1004 = phi float [ -1.000000e+00, %925 ], [ %992, %991 ]
  %1005 = phi i32 [ 0, %925 ], [ %988, %991 ]
  %1006 = call float @dx.op.binary.f32(i32 36, float %1003, float %1004)  ; FMin(a,b)
  %1007 = call float @dx.op.binary.f32(i32 36, float %1002, float %1006)  ; FMin(a,b)
  %1008 = call float @dx.op.binary.f32(i32 35, float %1002, float %1003)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 36, float %1008, float %1004)  ; FMin(a,b)
  %1010 = call float @dx.op.binary.f32(i32 36, float %1002, float %1003)  ; FMin(a,b)
  %1011 = call float @dx.op.binary.f32(i32 35, float %1010, float %1009)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 35, float %1003, float %1004)  ; FMax(a,b)
  %1013 = call float @dx.op.binary.f32(i32 35, float %1002, float %1012)  ; FMax(a,b)
  store float %1007, float* %930, align 4, !tbaa !67, !alias.scope !95, !noalias !96
  store float %1011, float* %931, align 4, !tbaa !67, !alias.scope !93, !noalias !94
  store float %1013, float* %932, align 4, !tbaa !67, !alias.scope !87, !noalias !90
  %1014 = call float @dx.op.binary.f32(i32 36, float %1000, float %1001)  ; FMin(a,b)
  %1015 = call float @dx.op.binary.f32(i32 36, float %999, float %1014)  ; FMin(a,b)
  %1016 = call float @dx.op.binary.f32(i32 35, float %999, float %1000)  ; FMax(a,b)
  %1017 = call float @dx.op.binary.f32(i32 36, float %1016, float %1001)  ; FMin(a,b)
  %1018 = call float @dx.op.binary.f32(i32 36, float %999, float %1000)  ; FMin(a,b)
  %1019 = call float @dx.op.binary.f32(i32 35, float %1018, float %1017)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 35, float %1000, float %1001)  ; FMax(a,b)
  %1021 = call float @dx.op.binary.f32(i32 35, float %999, float %1020)  ; FMax(a,b)
  store float %1015, float* %933, align 4, !tbaa !67, !alias.scope !105, !noalias !106
  store float %1019, float* %934, align 4, !tbaa !67, !alias.scope !103, !noalias !104
  store float %1021, float* %935, align 4, !tbaa !67, !alias.scope !97, !noalias !100
  %1022 = sub nsw i32 3, %1005
  %1023 = icmp sgt i32 %1022, 2
  br i1 %1023, label %1024, label %1062

; <label>:1024                                    ; preds = %998
  %1025 = icmp eq i32 %793, 0
  %1026 = fsub fast float %843, %927
  %1027 = select i1 %1025, float %1026, float %927
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.CBufRet.f32 %1032, 3
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1039 = call float @dx.op.binary.f32(i32 36, float %928, float %1038)  ; FMin(a,b)
  %1040 = fmul fast float %1036, %1027
  %1041 = call float @dx.op.unary.f32(i32 7, float %1040)  ; Saturate(value)
  %1042 = fsub fast float %1033, %1029
  %1043 = fsub fast float %1034, %1030
  %1044 = fsub fast float %1035, %1031
  %1045 = fmul fast float %1041, %1042
  %1046 = fmul fast float %1041, %1043
  %1047 = fmul fast float %1041, %1044
  %1048 = fadd fast float %1045, %1029
  %1049 = fadd fast float %1046, %1030
  %1050 = fadd fast float %1047, %1031
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1054 = fadd fast float %1053, %1052
  %1055 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1057 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1058 = fadd fast float %1057, %1056
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = fmul fast float %1055, %1039
  %1061 = fmul fast float %1060, %1059
  br label %1144

; <label>:1062                                    ; preds = %998
  %1063 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %1022
  %1064 = load float, float* %1063, align 4, !tbaa !67, !noalias !71
  %1065 = fcmp fast olt float %1064, %929
  %1066 = icmp sgt i32 %1005, 0
  %1067 = and i1 %1066, %1065
  br i1 %1067, label %1068, label %1105

; <label>:1068                                    ; preds = %1062
  br label %1069

; <label>:1069                                    ; preds = %1098, %1068
  %1070 = phi float [ %1099, %1098 ], [ %927, %1068 ]
  %1071 = phi float [ %1100, %1098 ], [ %928, %1068 ]
  %1072 = phi float [ %1080, %1098 ], [ %1064, %1068 ]
  %1073 = phi i32 [ %1077, %1098 ], [ %1022, %1068 ]
  %1074 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1073
  %1075 = load float, float* %1074, align 4, !tbaa !67, !noalias !71
  %1076 = icmp slt i32 %1073, 2
  %1077 = add nsw i32 %1073, 1
  %1078 = getelementptr inbounds [3 x float], [3 x float]* %37, i32 0, i32 %1077
  %1079 = load float, float* %1078, align 4, !tbaa !67, !noalias !71
  %1080 = select i1 %1076, float %1079, float %843
  %1081 = call float @dx.op.binary.f32(i32 36, float %1080, float %1075)  ; FMin(a,b)
  %1082 = call float @dx.op.binary.f32(i32 36, float %929, float %1081)  ; FMin(a,b)
  %1083 = icmp eq i32 %793, 0
  %1084 = fadd fast float %1082, %1072
  %1085 = fmul fast float %1084, %774
  %1086 = fadd fast float %1085, %787
  br i1 %1083, label %1092, label %1087

; <label>:1087                                    ; preds = %1069
  %1088 = fsub fast float %1082, %1072
  %1089 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1088)  ; FMax(a,b)
  %1090 = fmul fast float %1089, %1086
  %1091 = fadd fast float %1090, %1071
  br label %1098

; <label>:1092                                    ; preds = %1069
  %1093 = fsub fast float %1072, %1082
  %1094 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1095 = fadd fast float %1094, %1070
  %1096 = fmul fast float %1094, %1086
  %1097 = fsub fast float %1071, %1096
  br label %1098

; <label>:1098                                    ; preds = %1092, %1087
  %1099 = phi float [ %1089, %1087 ], [ %1095, %1092 ]
  %1100 = phi float [ %1091, %1087 ], [ %1097, %1092 ]
  %1101 = fcmp fast olt float %1080, %929
  %1102 = icmp slt i32 %1077, 3
  %1103 = and i1 %1102, %1101
  br i1 %1103, label %1069, label %1104

; <label>:1104                                    ; preds = %1098
  br label %1105

; <label>:1105                                    ; preds = %1104, %1062
  %1106 = phi float [ %927, %1062 ], [ %1099, %1104 ]
  %1107 = phi float [ %928, %1062 ], [ %1100, %1104 ]
  %1108 = fsub fast float %843, %1106
  %1109 = select i1 %845, float %1106, float %1108
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.CBufRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.CBufRet.f32 %1114, 3
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 3
  %1121 = call float @dx.op.binary.f32(i32 36, float %1107, float %1120)  ; FMin(a,b)
  %1122 = fmul fast float %1118, %1109
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = fsub fast float %1115, %1111
  %1125 = fsub fast float %1116, %1112
  %1126 = fsub fast float %1117, %1113
  %1127 = fmul fast float %1123, %1124
  %1128 = fmul fast float %1123, %1125
  %1129 = fmul fast float %1123, %1126
  %1130 = fadd fast float %1127, %1111
  %1131 = fadd fast float %1128, %1112
  %1132 = fadd fast float %1129, %1113
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1136 = fadd fast float %1135, %1134
  %1137 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1139 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1140 = fadd fast float %1139, %1138
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1142 = fmul fast float %1137, %1121
  %1143 = fmul fast float %1142, %1141
  br label %1144

; <label>:1144                                    ; preds = %1105, %1024, %859, %841, %839
  %1145 = phi float [ %868, %859 ], [ %1027, %1024 ], [ %1109, %1105 ], [ 0.000000e+00, %839 ], [ 0.000000e+00, %841 ]
  %1146 = phi float [ %902, %859 ], [ %1061, %1024 ], [ %1143, %1105 ], [ 0.000000e+00, %839 ], [ 0.000000e+00, %841 ]
  %1147 = phi float [ %889, %859 ], [ %1048, %1024 ], [ %1130, %1105 ], [ 0.000000e+00, %839 ], [ 0.000000e+00, %841 ]
  %1148 = phi float [ %890, %859 ], [ %1049, %1024 ], [ %1131, %1105 ], [ 0.000000e+00, %839 ], [ 0.000000e+00, %841 ]
  %1149 = phi float [ %891, %859 ], [ %1050, %1024 ], [ %1132, %1105 ], [ 0.000000e+00, %839 ], [ 0.000000e+00, %841 ]
  %1150 = fmul fast float %782, %1146
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1153 = fsub fast float %789, %1152
  %1154 = fcmp fast olt float %1150, -2.000000e+01
  %1155 = call float @dx.op.unary.f32(i32 21, float %1150)  ; Exp(value)
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1161 = fmul fast float %1158, %1153
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1163 = fsub fast float 1.000000e+00, %1162
  %1164 = fmul fast float %774, 5.000000e-01
  %1165 = fadd fast float %1164, 5.000000e-01
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1167 = fsub fast float 1.000000e+00, %1166
  %1168 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1163)  ; FMax(a,b)
  %1169 = fdiv fast float %1167, %1168
  %1170 = fsub fast float %1153, %734
  %1171 = call float @dx.op.unary.f32(i32 6, float %1170)  ; FAbs(value)
  %1172 = fmul fast float %1171, %1157
  %1173 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1174 = fsub fast float 1.000000e+00, %1172
  %1175 = fmul fast float %1174, %1173
  %1176 = fadd fast float %1175, %1172
  %1177 = fmul fast float %1160, %1153
  %1178 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1179 = fsub fast float 1.000000e+00, %1176
  %1180 = fmul fast float %1179, %1178
  %1181 = fadd fast float %1180, %1176
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1183 = fadd fast float %1155, -1.000000e+00
  %1184 = select i1 %1154, float -1.000000e+00, float %1183
  %1185 = fmul fast float %1182, %1184
  %1186 = fadd fast float %1185, 1.000000e+00
  %1187 = fsub fast float -0.000000e+00, %1185
  %1188 = fmul fast float %1147, %1187
  %1189 = fmul fast float %1148, %1187
  %1190 = fmul fast float %1149, %1187
  br label %1191

; <label>:1191                                    ; preds = %1144, %740
  %1192 = phi float [ %1145, %1144 ], [ 0.000000e+00, %740 ]
  %1193 = phi float [ %1186, %1144 ], [ 1.000000e+00, %740 ]
  %1194 = phi float [ %1188, %1144 ], [ 0.000000e+00, %740 ]
  %1195 = phi float [ %1189, %1144 ], [ 0.000000e+00, %740 ]
  %1196 = phi float [ %1190, %1144 ], [ 0.000000e+00, %740 ]
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1199 = fsub fast float 1.000000e+00, %1193
  %1200 = fmul fast float %1199, %775
  %1201 = fmul fast float %1200, %1198
  %1202 = fsub fast float %775, %1201
  br i1 %768, label %1203, label %1232, !dx.controlflow.hints !107

; <label>:1203                                    ; preds = %1191
  %1204 = fmul fast float %776, %765
  %1205 = fadd fast float %1204, %766
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fmul fast float %747, %1202
  %1208 = fsub fast float -0.000000e+00, %1207
  %1209 = fmul fast float %748, %1202
  %1210 = fsub fast float -0.000000e+00, %1209
  %1211 = call float @dx.op.unary.f32(i32 21, float %1208)  ; Exp(value)
  %1212 = call float @dx.op.unary.f32(i32 21, float %1210)  ; Exp(value)
  %1213 = call float @dx.op.binary.f32(i32 35, float %755, float %1211)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 35, float %755, float %1212)  ; FMax(a,b)
  %1215 = fsub fast float %1214, %1213
  %1216 = fmul fast float %1215, %1206
  %1217 = fadd fast float %1216, %1213
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fsub fast float %752, %757
  %1220 = fsub fast float %753, %758
  %1221 = fsub fast float %754, %759
  %1222 = fmul fast float %1206, %1219
  %1223 = fmul fast float %1206, %1220
  %1224 = fmul fast float %1206, %1221
  %1225 = fadd fast float %1222, %757
  %1226 = fadd fast float %1223, %758
  %1227 = fadd fast float %1224, %759
  %1228 = fsub fast float 1.000000e+00, %1218
  %1229 = fmul fast float %1228, %1225
  %1230 = fmul fast float %1228, %1226
  %1231 = fmul fast float %1228, %1227
  br label %1291

; <label>:1232                                    ; preds = %1191
  %1233 = fmul fast float %1202, %764
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = fsub fast float 2.000000e+00, %1234
  %1236 = fmul fast float %1234, 9.921875e-01
  %1237 = fmul fast float %1236, %1235
  %1238 = fadd fast float %1237, 3.906250e-03
  %1239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1238, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = fsub fast float %1234, %1240
  %1242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1241)  ; FMax(a,b)
  %1243 = fmul fast float %750, %734
  %1244 = call float @dx.op.unary.f32(i32 6, float %1243)  ; FAbs(value)
  %1245 = fcmp fast ogt float %1244, 0x3EB0C6F7A0000000
  br i1 %1245, label %1246, label %1252, !dx.controlflow.hints !108

; <label>:1246                                    ; preds = %1232
  %1247 = fmul fast float %1243, 0xBFF7154760000000
  %1248 = call float @dx.op.unary.f32(i32 21, float %1247)  ; Exp(value)
  %1249 = fsub fast float 1.000000e+00, %1248
  %1250 = fdiv fast float %1249, %1243
  %1251 = fmul fast float %1250, %760
  br label %1252

; <label>:1252                                    ; preds = %1246, %1232
  %1253 = phi float [ %1251, %1246 ], [ %760, %1232 ]
  %1254 = fadd fast float %1253, %762
  %1255 = fmul fast float %1254, %1242
  %1256 = fmul fast float %747, %1255
  %1257 = fsub fast float -0.000000e+00, %1256
  %1258 = fmul fast float %748, %1255
  %1259 = fsub fast float -0.000000e+00, %1258
  %1260 = fmul fast float %749, %1255
  %1261 = fsub fast float -0.000000e+00, %1260
  %1262 = call float @dx.op.unary.f32(i32 21, float %1257)  ; Exp(value)
  %1263 = call float @dx.op.unary.f32(i32 21, float %1259)  ; Exp(value)
  %1264 = call float @dx.op.unary.f32(i32 21, float %1261)  ; Exp(value)
  %1265 = fmul fast float %776, %776
  %1266 = fadd fast float %1265, 1.000000e+00
  %1267 = fmul fast float %1266, 0x3FAE8EC8A0000000
  %1268 = fmul fast float %1267, %757
  %1269 = fmul fast float %1267, %758
  %1270 = fmul fast float %1267, %759
  %1271 = fmul fast float %776, %755
  %1272 = fsub fast float 1.000000e+00, %1271
  %1273 = fmul fast float %755, %755
  %1274 = fsub fast float 1.000000e+00, %1273
  %1275 = fmul fast float %1274, 0x3FB45F3060000000
  %1276 = fmul fast float %1272, %1272
  %1277 = fdiv fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1275, %1277
  %1279 = fmul fast float %1278, %752
  %1280 = fmul fast float %1278, %753
  %1281 = fmul fast float %1278, %754
  %1282 = fadd fast float %1279, %1268
  %1283 = fadd fast float %1280, %1269
  %1284 = fadd fast float %1281, %1270
  %1285 = fsub fast float 1.000000e+00, %1262
  %1286 = fsub fast float 1.000000e+00, %1263
  %1287 = fsub fast float 1.000000e+00, %1264
  %1288 = fmul fast float %1282, %1285
  %1289 = fmul fast float %1283, %1286
  %1290 = fmul fast float %1284, %1287
  br label %1291

; <label>:1291                                    ; preds = %1252, %1203
  %1292 = phi float [ %1229, %1203 ], [ %1288, %1252 ]
  %1293 = phi float [ %1230, %1203 ], [ %1289, %1252 ]
  %1294 = phi float [ %1231, %1203 ], [ %1290, %1252 ]
  %1295 = phi float [ %1218, %1203 ], [ %1262, %1252 ]
  %1296 = phi float [ %1218, %1203 ], [ %1263, %1252 ]
  %1297 = phi float [ %1218, %1203 ], [ %1264, %1252 ]
  br i1 %784, label %1298, label %1496, !dx.controlflow.hints !109

; <label>:1298                                    ; preds = %1291
  %1299 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1300 = fmul fast float %1299, %1199
  %1301 = fsub fast float %1194, %1292
  %1302 = fsub fast float %1195, %1293
  %1303 = fsub fast float %1196, %1294
  %1304 = fmul fast float %1300, %1301
  %1305 = fmul fast float %1300, %1302
  %1306 = fmul fast float %1300, %1303
  %1307 = fadd fast float %1304, %1292
  %1308 = fadd fast float %1305, %1293
  %1309 = fadd fast float %1306, %1294
  %1310 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1295)  ; FMax(a,b)
  %1311 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1296)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1297)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1193)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 35, float %1192, float %1202)  ; FMax(a,b)
  %1315 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1314)  ; FMax(a,b)
  %1316 = fdiv fast float %1192, %1315
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = fdiv fast float %1202, %1315
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = fcmp fast une float %1313, 1.000000e+00
  br i1 %1320, label %1321, label %1334, !dx.controlflow.hints !110

; <label>:1321                                    ; preds = %1298
  %1322 = call float @dx.op.unary.f32(i32 23, float %1313)  ; Log(value)
  %1323 = fmul fast float %1322, 0x3FE62E4300000000
  %1324 = fmul fast float %1194, %1323
  %1325 = fsub fast float -0.000000e+00, %1324
  %1326 = fmul fast float %1195, %1323
  %1327 = fsub fast float -0.000000e+00, %1326
  %1328 = fmul fast float %1196, %1323
  %1329 = fsub fast float -0.000000e+00, %1328
  %1330 = fsub fast float 1.000000e+00, %1313
  %1331 = fdiv fast float %1325, %1330
  %1332 = fdiv fast float %1327, %1330
  %1333 = fdiv fast float %1329, %1330
  br label %1334

; <label>:1334                                    ; preds = %1321, %1298
  %1335 = phi float [ %1331, %1321 ], [ %1194, %1298 ]
  %1336 = phi float [ %1332, %1321 ], [ %1195, %1298 ]
  %1337 = phi float [ %1333, %1321 ], [ %1196, %1298 ]
  %1338 = phi float [ %1323, %1321 ], [ 0.000000e+00, %1298 ]
  %1339 = fcmp fast une float %1310, 1.000000e+00
  br i1 %1339, label %1340, label %1347, !dx.controlflow.hints !111

; <label>:1340                                    ; preds = %1334
  %1341 = call float @dx.op.unary.f32(i32 23, float %1310)  ; Log(value)
  %1342 = fmul fast float %1341, 0x3FE62E4300000000
  %1343 = fmul fast float %1307, %1342
  %1344 = fsub fast float -0.000000e+00, %1343
  %1345 = fsub fast float 1.000000e+00, %1310
  %1346 = fdiv fast float %1344, %1345
  br label %1347

; <label>:1347                                    ; preds = %1340, %1334
  %1348 = phi float [ %1346, %1340 ], [ %1307, %1334 ]
  %1349 = phi float [ %1342, %1340 ], [ 0.000000e+00, %1334 ]
  %1350 = fcmp fast une float %1311, 1.000000e+00
  br i1 %1350, label %1351, label %1358, !dx.controlflow.hints !111

; <label>:1351                                    ; preds = %1347
  %1352 = call float @dx.op.unary.f32(i32 23, float %1311)  ; Log(value)
  %1353 = fmul fast float %1352, 0x3FE62E4300000000
  %1354 = fmul fast float %1308, %1353
  %1355 = fsub fast float -0.000000e+00, %1354
  %1356 = fsub fast float 1.000000e+00, %1311
  %1357 = fdiv fast float %1355, %1356
  br label %1358

; <label>:1358                                    ; preds = %1351, %1347
  %1359 = phi float [ %1357, %1351 ], [ %1308, %1347 ]
  %1360 = phi float [ %1353, %1351 ], [ 0.000000e+00, %1347 ]
  %1361 = fcmp fast une float %1312, 1.000000e+00
  br i1 %1361, label %1362, label %1369, !dx.controlflow.hints !111

; <label>:1362                                    ; preds = %1358
  %1363 = call float @dx.op.unary.f32(i32 23, float %1312)  ; Log(value)
  %1364 = fmul fast float %1363, 0x3FE62E4300000000
  %1365 = fmul fast float %1309, %1364
  %1366 = fsub fast float -0.000000e+00, %1365
  %1367 = fsub fast float 1.000000e+00, %1312
  %1368 = fdiv fast float %1366, %1367
  br label %1369

; <label>:1369                                    ; preds = %1362, %1358
  %1370 = phi float [ %1368, %1362 ], [ %1309, %1358 ]
  %1371 = phi float [ %1364, %1362 ], [ 0.000000e+00, %1358 ]
  %1372 = fmul fast float %1335, %1319
  %1373 = fmul fast float %1336, %1319
  %1374 = fmul fast float %1337, %1319
  %1375 = fmul fast float %1338, %1319
  %1376 = fmul fast float %1348, %1317
  %1377 = fmul fast float %1359, %1317
  %1378 = fmul fast float %1370, %1317
  %1379 = fmul fast float %1349, %1317
  %1380 = fmul fast float %1360, %1317
  %1381 = fmul fast float %1371, %1317
  %1382 = fadd fast float %1376, %1372
  %1383 = fadd fast float %1377, %1373
  %1384 = fadd fast float %1378, %1374
  %1385 = fadd fast float %1379, %1375
  %1386 = fadd fast float %1380, %1375
  %1387 = fadd fast float %1381, %1375
  %1388 = fcmp fast une float %1385, 0.000000e+00
  br i1 %1388, label %1389, label %1396, !dx.controlflow.hints !112

; <label>:1389                                    ; preds = %1369
  %1390 = fmul fast float %1385, 0x3FF7154760000000
  %1391 = call float @dx.op.unary.f32(i32 21, float %1390)  ; Exp(value)
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = fmul fast float %1382, %1392
  %1394 = fsub fast float -0.000000e+00, %1393
  %1395 = fdiv fast float %1394, %1385
  br label %1396

; <label>:1396                                    ; preds = %1389, %1369
  %1397 = phi float [ %1391, %1389 ], [ 1.000000e+00, %1369 ]
  %1398 = phi float [ %1395, %1389 ], [ %1382, %1369 ]
  %1399 = fcmp fast une float %1386, 0.000000e+00
  br i1 %1399, label %1400, label %1407, !dx.controlflow.hints !112

; <label>:1400                                    ; preds = %1396
  %1401 = fmul fast float %1386, 0x3FF7154760000000
  %1402 = call float @dx.op.unary.f32(i32 21, float %1401)  ; Exp(value)
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = fmul fast float %1383, %1403
  %1405 = fsub fast float -0.000000e+00, %1404
  %1406 = fdiv fast float %1405, %1386
  br label %1407

; <label>:1407                                    ; preds = %1400, %1396
  %1408 = phi float [ %1402, %1400 ], [ 1.000000e+00, %1396 ]
  %1409 = phi float [ %1406, %1400 ], [ %1383, %1396 ]
  %1410 = fcmp fast une float %1387, 0.000000e+00
  br i1 %1410, label %1411, label %1418, !dx.controlflow.hints !112

; <label>:1411                                    ; preds = %1407
  %1412 = fmul fast float %1387, 0x3FF7154760000000
  %1413 = call float @dx.op.unary.f32(i32 21, float %1412)  ; Exp(value)
  %1414 = fsub fast float 1.000000e+00, %1413
  %1415 = fmul fast float %1384, %1414
  %1416 = fsub fast float -0.000000e+00, %1415
  %1417 = fdiv fast float %1416, %1387
  br label %1418

; <label>:1418                                    ; preds = %1411, %1407
  %1419 = phi float [ %1413, %1411 ], [ 1.000000e+00, %1407 ]
  %1420 = phi float [ %1417, %1411 ], [ %1384, %1407 ]
  %1421 = fcmp fast ogt float %1317, %1319
  br i1 %1421, label %1422, label %1442

; <label>:1422                                    ; preds = %1418
  %1423 = fsub fast float 1.000000e+00, %1319
  %1424 = fmul fast float %1335, %1423
  %1425 = fmul fast float %1336, %1423
  %1426 = fmul fast float %1337, %1423
  %1427 = fmul fast float %1338, %1423
  %1428 = fcmp fast une float %1427, 0.000000e+00
  br i1 %1428, label %1429, label %1480, !dx.controlflow.hints !113

; <label>:1429                                    ; preds = %1422
  %1430 = fmul fast float %1427, 0x3FF7154760000000
  %1431 = call float @dx.op.unary.f32(i32 21, float %1430)  ; Exp(value)
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = fmul fast float %1424, %1432
  %1434 = fsub fast float -0.000000e+00, %1433
  %1435 = fmul fast float %1425, %1432
  %1436 = fsub fast float -0.000000e+00, %1435
  %1437 = fmul fast float %1426, %1432
  %1438 = fsub fast float -0.000000e+00, %1437
  %1439 = fdiv fast float %1434, %1427
  %1440 = fdiv fast float %1436, %1427
  %1441 = fdiv fast float %1438, %1427
  br label %1480

; <label>:1442                                    ; preds = %1418
  %1443 = fsub fast float 1.000000e+00, %1317
  %1444 = fmul fast float %1348, %1443
  %1445 = fmul fast float %1359, %1443
  %1446 = fmul fast float %1370, %1443
  %1447 = fmul fast float %1349, %1443
  %1448 = fmul fast float %1360, %1443
  %1449 = fmul fast float %1371, %1443
  %1450 = fcmp fast une float %1447, 0.000000e+00
  br i1 %1450, label %1451, label %1458, !dx.controlflow.hints !112

; <label>:1451                                    ; preds = %1442
  %1452 = fmul fast float %1447, 0x3FF7154760000000
  %1453 = call float @dx.op.unary.f32(i32 21, float %1452)  ; Exp(value)
  %1454 = fsub fast float 1.000000e+00, %1453
  %1455 = fmul fast float %1444, %1454
  %1456 = fsub fast float -0.000000e+00, %1455
  %1457 = fdiv fast float %1456, %1447
  br label %1458

; <label>:1458                                    ; preds = %1451, %1442
  %1459 = phi float [ %1457, %1451 ], [ %1444, %1442 ]
  %1460 = phi float [ %1453, %1451 ], [ 1.000000e+00, %1442 ]
  %1461 = fcmp fast une float %1448, 0.000000e+00
  br i1 %1461, label %1462, label %1469, !dx.controlflow.hints !112

; <label>:1462                                    ; preds = %1458
  %1463 = fmul fast float %1448, 0x3FF7154760000000
  %1464 = call float @dx.op.unary.f32(i32 21, float %1463)  ; Exp(value)
  %1465 = fsub fast float 1.000000e+00, %1464
  %1466 = fmul fast float %1445, %1465
  %1467 = fsub fast float -0.000000e+00, %1466
  %1468 = fdiv fast float %1467, %1448
  br label %1469

; <label>:1469                                    ; preds = %1462, %1458
  %1470 = phi float [ %1468, %1462 ], [ %1445, %1458 ]
  %1471 = phi float [ %1464, %1462 ], [ 1.000000e+00, %1458 ]
  %1472 = fcmp fast une float %1449, 0.000000e+00
  br i1 %1472, label %1473, label %1480, !dx.controlflow.hints !112

; <label>:1473                                    ; preds = %1469
  %1474 = fmul fast float %1449, 0x3FF7154760000000
  %1475 = call float @dx.op.unary.f32(i32 21, float %1474)  ; Exp(value)
  %1476 = fsub fast float 1.000000e+00, %1475
  %1477 = fmul fast float %1446, %1476
  %1478 = fsub fast float -0.000000e+00, %1477
  %1479 = fdiv fast float %1478, %1449
  br label %1480

; <label>:1480                                    ; preds = %1473, %1469, %1429, %1422
  %1481 = phi float [ %1479, %1473 ], [ %1441, %1429 ], [ %1426, %1422 ], [ %1446, %1469 ]
  %1482 = phi float [ %1470, %1473 ], [ %1440, %1429 ], [ %1425, %1422 ], [ %1470, %1469 ]
  %1483 = phi float [ %1459, %1473 ], [ %1439, %1429 ], [ %1424, %1422 ], [ %1459, %1469 ]
  %1484 = phi float [ %1475, %1473 ], [ %1431, %1429 ], [ 1.000000e+00, %1422 ], [ 1.000000e+00, %1469 ]
  %1485 = phi float [ %1471, %1473 ], [ %1431, %1429 ], [ 1.000000e+00, %1422 ], [ %1471, %1469 ]
  %1486 = phi float [ %1460, %1473 ], [ %1431, %1429 ], [ 1.000000e+00, %1422 ], [ %1460, %1469 ]
  %1487 = fmul fast float %1486, %1398
  %1488 = fmul fast float %1485, %1409
  %1489 = fmul fast float %1484, %1420
  %1490 = fadd fast float %1487, %1483
  %1491 = fadd fast float %1488, %1482
  %1492 = fadd fast float %1489, %1481
  %1493 = fmul fast float %1486, %1397
  %1494 = fmul fast float %1485, %1408
  %1495 = fmul fast float %1484, %1419
  br label %1496

; <label>:1496                                    ; preds = %1480, %1291
  %1497 = phi float [ %1495, %1480 ], [ %1297, %1291 ]
  %1498 = phi float [ %1494, %1480 ], [ %1296, %1291 ]
  %1499 = phi float [ %1493, %1480 ], [ %1295, %1291 ]
  %1500 = phi float [ %1492, %1480 ], [ %1294, %1291 ]
  %1501 = phi float [ %1491, %1480 ], [ %1293, %1291 ]
  %1502 = phi float [ %1490, %1480 ], [ %1292, %1291 ]
  %1503 = fmul fast float %1502, %580
  %1504 = fmul fast float %1501, %580
  %1505 = fmul fast float %1500, %580
  %1506 = fmul fast float %1499, %739
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1499, float %1498, float %1497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1503, float %1504, float %1505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = select i1 %100, float %1507, float %1499
  %1510 = select i1 %100, float %1507, float %1498
  %1511 = select i1 %100, float 1.000000e+00, float %1497
  %1512 = select i1 %100, float %1508, float %1503
  %1513 = select i1 %100, float 0.000000e+00, float %1504
  %1514 = select i1 %100, float 0.000000e+00, float %1505
  %1515 = fmul fast float %1509, %736
  %1516 = fmul fast float %1510, %737
  %1517 = fmul fast float %1511, %738
  %1518 = fadd fast float %1515, %1512
  %1519 = fadd fast float %1516, %1513
  %1520 = fadd fast float %1514, %1517
  %1521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.i32 %1521, 0
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1789, label %1524, !dx.controlflow.hints !114

; <label>:1524                                    ; preds = %1496
  %1525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.f32 %1525, 2
  %1527 = extractvalue %dx.types.CBufRet.f32 %1525, 3
  %1528 = fmul fast float %1526, %42
  %1529 = fmul fast float %1527, %43
  %1530 = fmul fast float %1528, 2.000000e+00
  %1531 = fmul fast float %1529, 2.000000e+00
  %1532 = fsub fast float 1.000000e+00, %1530
  %1533 = fsub fast float 1.000000e+00, %1531
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.CBufRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.CBufRet.f32 %1534, 2
  %1538 = fmul fast float %1532, %1535
  %1539 = fmul fast float %1532, %1536
  %1540 = fmul fast float %1532, %1537
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 0
  %1543 = extractvalue %dx.types.CBufRet.f32 %1541, 1
  %1544 = extractvalue %dx.types.CBufRet.f32 %1541, 2
  %1545 = fmul fast float %1533, %1542
  %1546 = fmul fast float %1533, %1543
  %1547 = fmul fast float %1533, %1544
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.CBufRet.f32 %1548, 2
  %1552 = fadd fast float %1545, %1549
  %1553 = fadd fast float %1552, %1538
  %1554 = fadd fast float %1546, %1550
  %1555 = fadd fast float %1554, %1539
  %1556 = fadd fast float %1547, %1551
  %1557 = fadd fast float %1556, %1540
  %1558 = fmul fast float %1553, %735
  %1559 = fmul fast float %1555, %735
  %1560 = fmul fast float %1557, %735
  %1561 = fmul fast float %1558, %1558
  %1562 = fmul fast float %1559, %1559
  %1563 = fadd fast float %1561, %1562
  %1564 = fmul fast float %1560, %1560
  %1565 = fadd fast float %1563, %1564
  %1566 = call float @dx.op.unary.f32(i32 24, float %1565)  ; Sqrt(value)
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = fsub fast float %1566, %1568
  %1570 = extractvalue %dx.types.CBufRet.f32 %1567, 2
  %1571 = fmul fast float %1569, %1570
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1573 = fadd fast float %1572, -5.000000e-01
  %1574 = fmul fast float %1573, 2.000000e+00
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 2
  %1577 = call float @dx.op.binary.f32(i32 36, float %1576, float %1574)  ; FMin(a,b)
  %1578 = fsub fast float -0.000000e+00, %1576
  %1579 = fcmp fast ogt float %1577, %1578
  br i1 %1579, label %1580, label %1789, !dx.controlflow.hints !115

; <label>:1580                                    ; preds = %1524
  %1581 = fmul fast float %1577, 5.000000e-01
  %1582 = fadd fast float %1581, 5.000000e-01
  %1583 = call float @dx.op.unary.f32(i32 22, float %1582)  ; Frc(value)
  %1584 = call float @dx.op.unary.f32(i32 27, float %1583)  ; Round_ni(value)
  %1585 = call float @dx.op.unary.f32(i32 22, float %1583)  ; Frc(value)
  %1586 = fmul fast float %1585, 2.000000e+00
  %1587 = fadd fast float %1586, -1.000000e+00
  %1588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1528, float %1529, float %1584, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1589 = extractvalue %dx.types.ResRet.f32 %1588, 0
  %1590 = extractvalue %dx.types.ResRet.f32 %1588, 1
  %1591 = extractvalue %dx.types.ResRet.f32 %1588, 2
  %1592 = extractvalue %dx.types.ResRet.f32 %1588, 3
  %1593 = fadd fast float %1589, -5.000000e-01
  %1594 = fadd fast float %1591, -5.000000e-01
  %1595 = fmul fast float %1593, 0xBFD5555560000000
  %1596 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1594, float %1595)  ; FMad(a,b,c)
  %1597 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1590, float 0.000000e+00)  ; FMad(a,b,c)
  %1598 = fadd fast float %1597, %1592
  %1599 = fmul fast float %1593, -7.500000e-01
  %1600 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1594, float %1599)  ; FMad(a,b,c)
  %1601 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1590, float 0.000000e+00)  ; FMad(a,b,c)
  %1602 = fadd fast float %1601, %1592
  %1603 = call float @dx.op.binary.f32(i32 35, float %1596, float -1.000000e+00)  ; FMax(a,b)
  %1604 = call float @dx.op.binary.f32(i32 35, float %1598, float -1.000000e+00)  ; FMax(a,b)
  %1605 = call float @dx.op.binary.f32(i32 35, float %1600, float -1.000000e+00)  ; FMax(a,b)
  %1606 = call float @dx.op.binary.f32(i32 35, float %1602, float -1.000000e+00)  ; FMax(a,b)
  %1607 = call float @dx.op.binary.f32(i32 36, float %1603, float 1.000000e+00)  ; FMin(a,b)
  %1608 = call float @dx.op.binary.f32(i32 36, float %1604, float 1.000000e+00)  ; FMin(a,b)
  %1609 = call float @dx.op.binary.f32(i32 36, float %1605, float 1.000000e+00)  ; FMin(a,b)
  %1610 = call float @dx.op.binary.f32(i32 36, float %1606, float 1.000000e+00)  ; FMin(a,b)
  %1611 = fcmp fast olt float %1607, 0x3FEFFF8020000000
  br i1 %1611, label %1612, label %1727, !dx.controlflow.hints !116

; <label>:1612                                    ; preds = %1580
  %1613 = extractvalue %dx.types.CBufRet.f32 %1575, 3
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.CBufRet.f32 %1614, 2
  %1618 = extractvalue %dx.types.CBufRet.f32 %1614, 3
  %1619 = fsub fast float %1615, %1607
  %1620 = fsub fast float %1616, %1608
  %1621 = fsub fast float %1617, %1609
  %1622 = fsub fast float %1618, %1610
  %1623 = fmul fast float %1619, %1613
  %1624 = fmul fast float %1620, %1613
  %1625 = fmul fast float %1621, %1613
  %1626 = fmul fast float %1622, %1613
  %1627 = fadd fast float %1623, %1607
  %1628 = fadd fast float %1624, %1608
  %1629 = fsub fast float -0.000000e+00, %1628
  %1630 = fadd fast float %1625, %1609
  %1631 = fadd fast float %1626, %1610
  %1632 = fmul fast float %1627, %1627
  %1633 = fsub fast float %1628, %1632
  %1634 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1633)  ; FMax(a,b)
  %1635 = fdiv fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1628, %1627
  %1637 = fsub fast float %1630, %1636
  %1638 = fsub fast float %1587, %1627
  %1639 = fmul fast float %1587, %1587
  %1640 = fsub fast float %1639, %1628
  %1641 = fmul fast float %1638, %1635
  %1642 = fmul fast float %1641, %1637
  %1643 = fsub fast float %1640, %1642
  %1644 = fmul fast float %1628, %1628
  %1645 = fsub fast float %1631, %1644
  %1646 = fmul fast float %1637, %1637
  %1647 = fmul fast float %1646, %1635
  %1648 = fsub fast float %1645, %1647
  %1649 = fdiv fast float %1643, %1648
  %1650 = fmul fast float %1637, %1649
  %1651 = fsub fast float %1638, %1650
  %1652 = fmul fast float %1651, %1635
  %1653 = fmul fast float %1652, %1627
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1628, %1649
  %1656 = fsub fast float %1654, %1655
  %1657 = fmul fast float %1652, %1652
  %1658 = fmul fast float %1649, 4.000000e+00
  %1659 = fmul fast float %1658, %1656
  %1660 = fsub fast float %1657, %1659
  %1661 = call float @dx.op.unary.f32(i32 24, float %1660)  ; Sqrt(value)
  %1662 = fcmp fast oge float %1652, 0.000000e+00
  %1663 = fsub fast float -0.000000e+00, %1661
  %1664 = select i1 %1662, float %1663, float %1661
  %1665 = fsub fast float %1664, %1652
  %1666 = fdiv fast float %1665, %1649
  %1667 = fdiv fast float %1656, %1665
  %1668 = fmul fast float %1666, 5.000000e-01
  %1669 = fmul fast float %1667, 2.000000e+00
  %1670 = select i1 %1662, float %1668, float %1669
  %1671 = select i1 %1662, float %1669, float %1668
  %1672 = call float @dx.op.binary.f32(i32 35, float %1670, float %1671)  ; FMax(a,b)
  %1673 = call float @dx.op.binary.f32(i32 36, float %1670, float %1671)  ; FMin(a,b)
  %1674 = fcmp fast ogt float %1587, %1673
  br i1 %1674, label %1675, label %1685

; <label>:1675                                    ; preds = %1612
  %1676 = fsub fast float %1587, %1673
  %1677 = fsub fast float %1672, %1673
  %1678 = fmul fast float %1676, %1677
  %1679 = fmul fast float %1672, %1587
  %1680 = fadd fast float %1672, %1587
  %1681 = fmul fast float %1680, %1627
  %1682 = fadd fast float %1679, %1628
  %1683 = fsub fast float %1682, %1681
  %1684 = fdiv fast float %1683, %1678
  br label %1685

; <label>:1685                                    ; preds = %1675, %1612
  %1686 = phi float [ %1684, %1675 ], [ 0.000000e+00, %1612 ]
  %1687 = fcmp fast ogt float %1587, %1672
  %1688 = fsub fast float %1587, %1672
  br i1 %1687, label %1689, label %1699

; <label>:1689                                    ; preds = %1685
  %1690 = fsub fast float %1672, %1673
  %1691 = fmul fast float %1690, %1688
  %1692 = fmul fast float %1673, %1587
  %1693 = fadd fast float %1673, %1587
  %1694 = fmul fast float %1693, %1627
  %1695 = fsub fast float %1629, %1692
  %1696 = fadd fast float %1695, %1694
  %1697 = fdiv fast float %1696, %1691
  %1698 = fadd fast float %1697, %1686
  br label %1699

; <label>:1699                                    ; preds = %1689, %1685
  %1700 = phi float [ %1698, %1689 ], [ %1686, %1685 ]
  %1701 = fsub fast float %1587, %1673
  %1702 = fmul fast float %1701, %1688
  %1703 = fmul fast float %1673, %1672
  %1704 = fadd fast float %1673, %1672
  %1705 = fmul fast float %1704, %1627
  %1706 = fadd fast float %1703, %1628
  %1707 = fsub fast float %1706, %1705
  %1708 = fdiv fast float %1707, %1702
  %1709 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1710 = fcmp fast oeq float %599, 0.000000e+00
  %1711 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1712 = fcmp fast oeq float %1711, 0.000000e+00
  %1713 = or i1 %1710, %1712
  %1714 = fmul fast float %1711, 2.000000e+00
  %1715 = fadd fast float %1576, %1577
  %1716 = fdiv fast float %1715, %1714
  %1717 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1718 = fmul fast float %1717, 2.000000e+00
  %1719 = fsub fast float 3.000000e+00, %1718
  %1720 = fmul fast float %1717, %1717
  %1721 = fmul fast float %1720, %1719
  %1722 = select i1 %1713, float 1.000000e+00, float %1721
  %1723 = fmul fast float %1708, %599
  %1724 = fadd fast float %1709, %1723
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1726 = fmul fast float %1722, %1725
  br label %1727

; <label>:1727                                    ; preds = %1699, %1580
  %1728 = phi float [ %1726, %1699 ], [ 0.000000e+00, %1580 ]
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1528, float %1529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1731 = extractvalue %dx.types.ResRet.f32 %1730, 0
  %1732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.i32 %1732, 2
  %1734 = icmp eq i32 %1733, 0
  br i1 %1734, label %1740, label %1735

; <label>:1735                                    ; preds = %1727
  %1736 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1737 = fadd fast float %1731, -1.000000e+00
  %1738 = fmul fast float %1736, %1737
  %1739 = fadd fast float %1738, 1.000000e+00
  br label %1740

; <label>:1740                                    ; preds = %1735, %1727
  %1741 = phi float [ %1739, %1735 ], [ %1729, %1727 ]
  %1742 = call float @dx.op.binary.f32(i32 35, float %1731, float %1741)  ; FMax(a,b)
  %1743 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.i32 %1743, 2
  %1745 = and i32 %1744, 1
  %1746 = icmp eq i32 %1745, 0
  %1747 = fcmp fast une float %1742, 1.000000e+00
  %1748 = and i1 %1747, %1746
  br i1 %1748, label %1749, label %1768

; <label>:1749                                    ; preds = %1740
  %1750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1528, float %1529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = extractvalue %dx.types.ResRet.f32 %1750, 1
  %1753 = extractvalue %dx.types.ResRet.f32 %1750, 2
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1756 = fmul fast float %1755, %1751
  %1757 = fmul fast float %1755, %1752
  %1758 = fmul fast float %1755, %1753
  %1759 = fcmp fast ogt float %1731, 0x3FEFFF2E40000000
  %1760 = fsub fast float 1.000000e+00, %1742
  %1761 = fsub fast float 1.000000e+00, %1731
  %1762 = fdiv fast float %1760, %1761
  %1763 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  %1764 = select i1 %1759, float 0.000000e+00, float %1763
  %1765 = fmul fast float %1756, %1764
  %1766 = fmul fast float %1757, %1764
  %1767 = fmul fast float %1758, %1764
  br label %1768

; <label>:1768                                    ; preds = %1749, %1740
  %1769 = phi float [ 0.000000e+00, %1740 ], [ %1765, %1749 ]
  %1770 = phi float [ 0.000000e+00, %1740 ], [ %1766, %1749 ]
  %1771 = phi float [ 0.000000e+00, %1740 ], [ %1767, %1749 ]
  %1772 = fmul fast float %1769, %580
  %1773 = fmul fast float %1770, %580
  %1774 = fmul fast float %1771, %580
  %1775 = fmul fast float %1742, %1506
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1742, float %1742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1773, float %1774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = select i1 %100, float %1776, float %1742
  %1779 = select i1 %100, float 1.000000e+00, float %1742
  %1780 = select i1 %100, float %1777, float %1772
  %1781 = select i1 %100, float 0.000000e+00, float %1773
  %1782 = select i1 %100, float 0.000000e+00, float %1774
  %1783 = fmul fast float %1778, %1518
  %1784 = fmul fast float %1778, %1519
  %1785 = fmul fast float %1779, %1520
  %1786 = fadd fast float %1783, %1780
  %1787 = fadd fast float %1784, %1781
  %1788 = fadd fast float %1782, %1785
  br label %1789

; <label>:1789                                    ; preds = %1768, %1524, %1496, %731
  %1790 = phi float [ %736, %731 ], [ %1518, %1496 ], [ %1786, %1768 ], [ %1518, %1524 ]
  %1791 = phi float [ %737, %731 ], [ %1519, %1496 ], [ %1787, %1768 ], [ %1519, %1524 ]
  %1792 = phi float [ %738, %731 ], [ %1520, %1496 ], [ %1788, %1768 ], [ %1520, %1524 ]
  %1793 = phi float [ %739, %731 ], [ %1506, %1496 ], [ %1775, %1768 ], [ %1506, %1524 ]
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  %1797 = fmul fast float %1795, %42
  %1798 = fmul fast float %1796, %43
  %1799 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  %1800 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1801 = select i1 %607, i32 2, i32 0
  %1802 = or i32 %1801, 1
  %1803 = uitofp i32 %1802 to float
  %1804 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1799, float %1800, float %1803, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1805 = extractvalue %dx.types.ResRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.ResRet.f32 %1804, 1
  %1807 = extractvalue %dx.types.ResRet.f32 %1804, 2
  %1808 = extractvalue %dx.types.ResRet.f32 %1804, 3
  %1809 = add nuw nsw i32 %1801, 2
  %1810 = uitofp i32 %1809 to float
  %1811 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1799, float %1800, float %1810, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1812 = extractvalue %dx.types.ResRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.ResRet.f32 %1811, 1
  %1814 = extractvalue %dx.types.ResRet.f32 %1811, 2
  %1815 = extractvalue %dx.types.ResRet.f32 %1811, 3
  %1816 = call float @dx.op.binary.f32(i32 35, float %1806, float %1807)  ; FMax(a,b)
  %1817 = call float @dx.op.binary.f32(i32 35, float %1805, float %1816)  ; FMax(a,b)
  %1818 = call float @dx.op.binary.f32(i32 35, float %1817, float %1808)  ; FMax(a,b)
  %1819 = call float @dx.op.binary.f32(i32 36, float %1813, float %1814)  ; FMin(a,b)
  %1820 = call float @dx.op.binary.f32(i32 36, float %1812, float %1819)  ; FMin(a,b)
  %1821 = call float @dx.op.binary.f32(i32 36, float %1820, float %1815)  ; FMin(a,b)
  %1822 = fmul fast float %1818, 2.550000e+02
  %1823 = fadd fast float %1822, 0x3F70101020000000
  %1824 = fptoui float %1823 to i32
  %1825 = fmul fast float %1821, 2.550000e+02
  %1826 = fadd fast float %1825, 0x3F70101020000000
  %1827 = fptoui float %1826 to i32
  %1828 = icmp ult i32 %1824, %1827
  br i1 %1828, label %1829, label %1881

; <label>:1829                                    ; preds = %1789
  %1830 = fcmp fast ogt float %35, 9.843750e-01
  %1831 = fadd fast float %735, -4.000000e+00
  %1832 = select i1 %1830, float -4.000000e+00, float %1831
  %1833 = call float @dx.op.binary.f32(i32 35, float %1832, float 0.000000e+00)  ; FMax(a,b)
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = fadd fast float %1835, %1833
  %1837 = extractvalue %dx.types.CBufRet.f32 %1834, 2
  %1838 = fmul fast float %1836, %1837
  %1839 = call float @dx.op.unary.f32(i32 23, float %1838)  ; Log(value)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1834, 3
  %1841 = fmul fast float %1840, %1839
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 2
  %1844 = fmul fast float %1841, %1843
  %1845 = call float @dx.op.unary.f32(i32 7, float %1844)  ; Saturate(value)
  %1846 = uitofp i32 %1824 to float
  %1847 = uitofp i32 %1827 to float
  %1848 = fadd fast float %1846, 5.000000e-01
  %1849 = fadd fast float %1847, 5.000000e-01
  %1850 = fmul fast float %1843, %1848
  %1851 = fmul fast float %1843, %1849
  %1852 = fadd fast float %1850, 0x3F0FFB4800000000
  %1853 = fadd fast float %1851, 0xBF0FFB4800000000
  %1854 = call float @dx.op.binary.f32(i32 35, float %1845, float %1852)  ; FMax(a,b)
  %1855 = call float @dx.op.binary.f32(i32 36, float %1854, float %1853)  ; FMin(a,b)
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 1
  %1858 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1859 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1860 = select i1 %607, float %1859, float 0.000000e+00
  %1861 = fmul fast float %1857, %1855
  %1862 = fadd fast float %1860, %1861
  %1863 = fadd fast float %1860, %1858
  %1864 = fsub fast float %1857, %1858
  %1865 = fadd fast float %1864, %1860
  %1866 = call float @dx.op.binary.f32(i32 35, float %1862, float %1863)  ; FMax(a,b)
  %1867 = call float @dx.op.binary.f32(i32 36, float %1866, float %1865)  ; FMin(a,b)
  %1868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1799, float %1800, float %1867, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.ResRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.ResRet.f32 %1868, 2
  %1872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1799, float %1800, float %1867, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.ResRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.ResRet.f32 %1872, 2
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1878 = fmul fast float %1877, %1873
  %1879 = fmul fast float %1877, %1874
  %1880 = fmul fast float %1877, %1875
  br label %1881

; <label>:1881                                    ; preds = %1829, %1789
  %1882 = phi float [ %1869, %1829 ], [ 1.000000e+00, %1789 ]
  %1883 = phi float [ %1870, %1829 ], [ 1.000000e+00, %1789 ]
  %1884 = phi float [ %1871, %1829 ], [ 1.000000e+00, %1789 ]
  %1885 = phi float [ %1878, %1829 ], [ 0.000000e+00, %1789 ]
  %1886 = phi float [ %1879, %1829 ], [ 0.000000e+00, %1789 ]
  %1887 = phi float [ %1880, %1829 ], [ 0.000000e+00, %1789 ]
  %1888 = fmul fast float %1885, %580
  %1889 = fmul fast float %1886, %580
  %1890 = fmul fast float %1887, %580
  %1891 = fmul fast float %1882, %1793
  %1892 = call float @dx.op.dot3.f32(i32 55, float %1882, float %1883, float %1884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1893 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1889, float %1890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1894 = select i1 %100, float %1892, float %1882
  %1895 = select i1 %100, float %1892, float %1883
  %1896 = select i1 %100, float 1.000000e+00, float %1884
  %1897 = select i1 %100, float %1893, float %1888
  %1898 = select i1 %100, float 0.000000e+00, float %1889
  %1899 = select i1 %100, float 0.000000e+00, float %1890
  %1900 = fmul fast float %1894, %1790
  %1901 = fmul fast float %1895, %1791
  %1902 = fmul fast float %1896, %1792
  %1903 = fadd fast float %1900, %1897
  %1904 = fadd fast float %1901, %1898
  %1905 = fadd fast float %1899, %1902
  %1906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.i32 %1906, 3
  %1908 = and i32 %1907, 3
  %1909 = icmp ne i32 %1908, 0
  %1910 = and i32 %1907, 4
  %1911 = icmp ne i32 %1910, 0
  %1912 = and i1 %1909, %1911
  %1913 = and i1 %100, %1912
  br i1 %1913, label %1914, label %1920

; <label>:1914                                    ; preds = %1881
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 1
  %1917 = fadd fast float %1891, -1.000000e+00
  %1918 = fmul fast float %1916, %1917
  %1919 = fadd fast float %1918, 1.000000e+00
  br label %1920

; <label>:1920                                    ; preds = %1914, %1881
  %1921 = phi float [ %1919, %1914 ], [ %1891, %1881 ]
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  br i1 %100, label %1924, label %1946

; <label>:1924                                    ; preds = %1920
  %1925 = fadd fast float %1903, %1904
  %1926 = fmul fast float %1923, %1925
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 3
  %1929 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %1930 = fsub fast float %588, %1929
  %1931 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %1932 = fmul fast float %1930, %1931
  %1933 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  %1934 = fsub fast float %1933, %1928
  %1935 = fmul fast float %1934, %1921
  %1936 = fadd fast float %1935, %1928
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = fsub fast float %1936, %1938
  %1940 = fmul fast float %1939, 1.000000e+01
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fsub fast float %559, %580
  %1943 = fmul fast float %1941, %1942
  %1944 = fadd fast float %1943, %580
  %1945 = fmul fast float %1944, %1936
  br label %1955

; <label>:1946                                    ; preds = %1920
  %1947 = fmul fast float %1923, %1903
  %1948 = fmul fast float %1923, %1904
  %1949 = fmul fast float %1923, %1905
  %1950 = call float @dx.op.binary.f32(i32 35, float %1948, float %1949)  ; FMax(a,b)
  %1951 = call float @dx.op.binary.f32(i32 35, float %1947, float %1950)  ; FMax(a,b)
  %1952 = call float @dx.op.binary.f32(i32 35, float %1951, float %580)  ; FMax(a,b)
  %1953 = fcmp fast ugt float %1952, 0x3F10000000000000
  br i1 %1953, label %1955, label %1954

; <label>:1954                                    ; preds = %1946
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1955

; <label>:1955                                    ; preds = %1954, %1946, %1924
  %1956 = phi float [ %1926, %1924 ], [ %1947, %1954 ], [ %1947, %1946 ]
  %1957 = phi float [ %1945, %1924 ], [ %1948, %1954 ], [ %1948, %1946 ]
  %1958 = phi float [ %1944, %1924 ], [ %1949, %1954 ], [ %1949, %1946 ]
  %1959 = phi float [ %1944, %1924 ], [ %580, %1954 ], [ %580, %1946 ]
  %1960 = fadd fast float %472, 0x3FE3C6EF40000000
  %1961 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1962 = call float @dx.op.unary.f32(i32 23, float %1956)  ; Log(value)
  %1963 = fadd fast float %1962, -7.000000e+00
  %1964 = call float @dx.op.unary.f32(i32 21, float %1963)  ; Exp(value)
  %1965 = fmul fast float %1961, 2.000000e+00
  %1966 = fadd fast float %1965, -1.000000e+00
  %1967 = fmul fast float %1964, %1966
  %1968 = fcmp fast ogt float %1956, 0.000000e+00
  %1969 = select i1 %1968, float %1967, float 0.000000e+00
  %1970 = fadd fast float %1969, %1956
  %1971 = fadd fast float %472, 0x3FF3C6EF40000000
  %1972 = call float @dx.op.unary.f32(i32 22, float %1971)  ; Frc(value)
  %1973 = call float @dx.op.unary.f32(i32 23, float %1957)  ; Log(value)
  %1974 = fadd fast float %1973, -7.000000e+00
  %1975 = call float @dx.op.unary.f32(i32 21, float %1974)  ; Exp(value)
  %1976 = fmul fast float %1972, 2.000000e+00
  %1977 = fadd fast float %1976, -1.000000e+00
  %1978 = fmul fast float %1975, %1977
  %1979 = fcmp fast ogt float %1957, 0.000000e+00
  %1980 = select i1 %1979, float %1978, float 0.000000e+00
  %1981 = fadd fast float %1980, %1957
  %1982 = fadd fast float %472, 0x3FFDAA66E0000000
  %1983 = call float @dx.op.unary.f32(i32 22, float %1982)  ; Frc(value)
  %1984 = call float @dx.op.unary.f32(i32 23, float %1958)  ; Log(value)
  %1985 = fadd fast float %1984, -6.000000e+00
  %1986 = call float @dx.op.unary.f32(i32 21, float %1985)  ; Exp(value)
  %1987 = fmul fast float %1983, 2.000000e+00
  %1988 = fadd fast float %1987, -1.000000e+00
  %1989 = fmul fast float %1986, %1988
  %1990 = fcmp fast ogt float %1958, 0.000000e+00
  %1991 = select i1 %1990, float %1989, float 0.000000e+00
  %1992 = fadd fast float %1991, %1958
  %1993 = select i1 %100, float %1957, float %1981
  %1994 = select i1 %100, float %1958, float %1992
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1995 = call float @dx.op.binary.f32(i32 36, float %1970, float 3.225500e+04)  ; FMin(a,b)
  %1996 = call float @dx.op.binary.f32(i32 36, float %1993, float 3.225500e+04)  ; FMin(a,b)
  %1997 = call float @dx.op.binary.f32(i32 36, float %1994, float 3.225500e+04)  ; FMin(a,b)
  %1998 = call float @dx.op.binary.f32(i32 36, float %1959, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1995)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1996)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1997)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1998)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[29 x i32] [i32 27, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !57}
!35 = !{!36, !53, null}
!36 = !{!37, !40, !42, !44, !47, !49, !50, !52}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 3}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!48 = !{i32 8}
!49 = !{i32 5, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 5, i8 0, !39}
!50 = !{i32 6, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 6, i8 0, !51}
!51 = !{i32 3, i32 5}
!52 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!53 = !{!54, !55}
!54 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!55 = !{i32 1, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!56 = !{i32 1}
!57 = !{i32 0, i64 24}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = !{!68, !68, i64 0}
!68 = !{!"float", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!72 = distinct !{!72, !73, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!73 = distinct !{!73, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!74 = distinct !{!74, !75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!75 = distinct !{!75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!76 = distinct !{!76, !75, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!77 = distinct !{!77, !78, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!78 = distinct !{!78, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!79 = distinct !{!79, !78, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!80 = distinct !{!80, !78, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!81 = distinct !{!81, !82, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!82 = distinct !{!82, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!83 = distinct !{!83, !82, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!84 = distinct !{!84, !82, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!85 = distinct !{!85, !86, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!86 = distinct !{!86, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"\01?sort@@YAXAIAM00@Z: %c"}
!89 = distinct !{!89, !"\01?sort@@YAXAIAM00@Z"}
!90 = !{!91, !92, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!91 = distinct !{!91, !89, !"\01?sort@@YAXAIAM00@Z: %a"}
!92 = distinct !{!92, !89, !"\01?sort@@YAXAIAM00@Z: %b"}
!93 = !{!92}
!94 = !{!91, !88, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!95 = !{!91}
!96 = !{!92, !88, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!97 = !{!98}
!98 = distinct !{!98, !99, !"\01?sort@@YAXAIAM00@Z: %c"}
!99 = distinct !{!99, !"\01?sort@@YAXAIAM00@Z"}
!100 = !{!101, !102, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!101 = distinct !{!101, !99, !"\01?sort@@YAXAIAM00@Z: %a"}
!102 = distinct !{!102, !99, !"\01?sort@@YAXAIAM00@Z: %b"}
!103 = !{!102}
!104 = !{!101, !98, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!105 = !{!101}
!106 = !{!102, !98, !72, !74, !76, !77, !79, !80, !81, !83, !84, !85}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}

