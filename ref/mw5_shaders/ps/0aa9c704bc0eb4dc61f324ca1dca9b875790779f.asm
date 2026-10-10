;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 5   xyz         4     NONE   float   xyz 
; TEXCOORD                 8   xyzw        5     NONE   float       
; COLOR                    3   xyz         6     NONE    uint   x   
; COLOR                    4      w        6     NONE    uint       
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
; shader hash: 5029cf4802f8ce52466412a61dcee989
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
; TEXCOORD                 5                 linear       
; TEXCOORD                 8                 linear       
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
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
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4             t1     1
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
;                                   texture    byte         r/o     T15             t2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 17, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 18, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fmul fast float %43, %34
  %45 = fmul fast float %43, %35
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %44, 2.000000e+00
  %50 = fmul fast float %49, %47
  %51 = fmul fast float %45, 2.000000e+00
  %52 = fmul fast float %51, %48
  %53 = fsub fast float 1.000000e+00, %50
  %54 = fsub fast float 1.000000e+00, %52
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %53, %56
  %60 = fmul fast float %53, %57
  %61 = fmul fast float %53, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %54, %63
  %67 = fmul fast float %54, %64
  %68 = fmul fast float %54, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fadd fast float %66, %70
  %74 = fadd fast float %73, %59
  %75 = fadd fast float %67, %71
  %76 = fadd fast float %75, %60
  %77 = fadd fast float %68, %72
  %78 = fadd fast float %77, %61
  %79 = fmul fast float %74, %37
  %80 = fmul fast float %76, %37
  %81 = fmul fast float %78, %37
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.i32 %82, 3
  %84 = and i32 %83, 3
  %85 = icmp ne i32 %84, 0
  %86 = and i32 %83, 4
  %87 = icmp ne i32 %86, 0
  %88 = and i1 %85, %87
  br i1 %88, label %89, label %98

; <label>:89                                      ; preds = %0
  %90 = fmul fast float %48, %45
  %91 = fmul fast float %47, %44
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %91, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fsub fast float 1.000000e+00, %93
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fcmp fast olt float %94, %96
  br label %101

; <label>:98                                      ; preds = %0
  %99 = icmp eq i32 %86, 0
  %100 = and i1 %85, %99
  br label %101

; <label>:101                                     ; preds = %98, %89
  %102 = phi i1 [ %97, %89 ], [ %100, %98 ]
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %104, %44
  %107 = fmul fast float %105, %45
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %109, 114688
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %111, float %106, float 0.000000e+00
  %113 = select i1 %111, float %107, float 0.000000e+00
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %115, 2.550000e+02
  %117 = fptoui float %116 to i32
  %118 = select i1 %111, i32 %117, i32 0
  %119 = mul i32 %21, 208
  %120 = add i32 %119, 188
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %83, 114688
  %124 = and i32 %83, 8
  %125 = icmp ne i32 %124, 0
  %126 = or i1 %102, %125
  %127 = select i1 %126, i32 %123, i32 16384
  %128 = and i32 %127, %122
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %101
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %131

; <label>:131                                     ; preds = %130, %101
  %132 = and i32 %122, 512
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %158, label %134

; <label>:134                                     ; preds = %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %136, %44
  %139 = fmul fast float %137, %45
  %140 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %142 = fdiv fast float %140, %141
  %143 = fcmp fast ogt float %142, 0x3FFC71C720000000
  br i1 %143, label %144, label %150

; <label>:144                                     ; preds = %134
  %145 = fdiv fast float 0x3FFC71C720000000, %142
  %146 = fmul fast float %145, %139
  %147 = fsub fast float 1.000000e+00, %145
  %148 = fmul fast float %147, 5.000000e-01
  %149 = fadd fast float %148, %146
  br label %158

; <label>:150                                     ; preds = %134
  %151 = fcmp fast olt float %142, 0x3FFC71C720000000
  br i1 %151, label %152, label %158

; <label>:152                                     ; preds = %150
  %153 = fmul fast float %138, 5.625000e-01
  %154 = fmul fast float %153, %142
  %155 = fmul fast float %142, 2.812500e-01
  %156 = fsub fast float 5.000000e-01, %155
  %157 = fadd fast float %156, %154
  br label %158

; <label>:158                                     ; preds = %152, %150, %144, %131
  %159 = phi float [ %28, %131 ], [ %138, %144 ], [ %157, %152 ], [ %138, %150 ]
  %160 = phi float [ %29, %131 ], [ %149, %144 ], [ %139, %152 ], [ %139, %150 ]
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = extractvalue %dx.types.ResRet.i32 %161, 1
  %164 = bitcast i32 %162 to float
  %165 = bitcast i32 %163 to float
  %166 = fmul fast float %164, %28
  %167 = fmul fast float %165, %29
  %168 = call float @dx.op.unary.f32(i32 22, float %166)  ; Frc(value)
  %169 = call float @dx.op.unary.f32(i32 22, float %167)  ; Frc(value)
  %170 = and i32 %122, 16
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float 1.000000e+00, float %33
  %173 = icmp eq i32 %170, 0
  br i1 %173, label %193, label %174, !dx.controlflow.hints !60

; <label>:174                                     ; preds = %158
  %175 = add i32 %119, 64
  %176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fadd fast float %177, 1.000000e+00
  %179 = fmul fast float %178, %33
  %180 = fsub fast float %179, %177
  %181 = fsub fast float %178, %180
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fsub fast float 1.000000e+00, %179
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %185 = fsub fast float %182, %184
  %186 = fsub fast float %172, %184
  %187 = fdiv fast float %186, %185
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fmul fast float %188, 2.000000e+00
  %190 = fsub fast float 3.000000e+00, %189
  %191 = fmul fast float %188, %188
  %192 = fmul fast float %191, %190
  br label %193

; <label>:193                                     ; preds = %174, %158
  %194 = phi float [ %192, %174 ], [ %172, %158 ]
  %195 = fcmp fast ogt float %194, 0.000000e+00
  br i1 %195, label %197, label %196

; <label>:196                                     ; preds = %193
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %197

; <label>:197                                     ; preds = %196, %193
  %198 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %199 = fmul fast float %44, 5.000000e-01
  %200 = fmul fast float %45, 5.000000e-01
  %201 = fptosi float %199 to i32
  %202 = fptosi float %200 to i32
  %203 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = lshr i32 %204, 18
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F4C00EBA0000000
  %208 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %209 = fadd fast float %208, -1.000000e+00
  %210 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %211 = extractvalue %dx.types.Dimensions %210, 0
  %212 = sitofp i32 %211 to float
  %213 = extractvalue %dx.types.Dimensions %210, 1
  %214 = sitofp i32 %213 to float
  %215 = fcmp fast oge float %199, %212
  %216 = fcmp fast oge float %200, %214
  %217 = or i1 %215, %216
  %218 = select i1 %217, float 0x4197782600000000, float %209
  %219 = fsub fast float %218, %37
  %220 = fcmp fast ogt float %219, 0.000000e+00
  %221 = and i32 %118, -2
  %222 = icmp eq i32 %221, 2
  %223 = and i1 %222, %220
  %224 = xor i1 %220, true
  %225 = icmp eq i32 %118, 1
  %226 = and i1 %225, %224
  %227 = or i1 %223, %226
  %228 = and i32 %122, 262144
  %229 = icmp ne i32 %228, 0
  %230 = and i1 %229, %227
  %231 = xor i1 %227, true
  %232 = and i32 %122, 131072
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %233, %231
  %235 = or i1 %230, %234
  br i1 %235, label %236, label %237

; <label>:236                                     ; preds = %197
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %237

; <label>:237                                     ; preds = %236, %197
  %238 = and i32 %122, 32
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %479, label %240, !dx.controlflow.hints !61

; <label>:240                                     ; preds = %237
  %241 = add i32 %119, 80
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = add i32 %119, 96
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = add i32 %119, 112
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = add i32 %119, 128
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = extractvalue %dx.types.ResRet.f32 %259, 3
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 4096
  %267 = icmp ne i32 %266, 0
  %268 = fcmp fast une float %251, 0.000000e+00
  %269 = and i32 %265, 64
  %270 = icmp ne i32 %269, 0
  %271 = and i32 %265, 128
  %272 = icmp eq i32 %271, 0
  %273 = and i32 %265, 2048
  %274 = icmp eq i32 %273, 0
  %275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %276 = extractvalue %dx.types.Dimensions %275, 0
  %277 = sitofp i32 %276 to float
  %278 = extractvalue %dx.types.Dimensions %275, 1
  %279 = sitofp i32 %278 to float
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %283 = fmul fast float %281, %44
  %284 = fmul fast float %282, %45
  %285 = fmul fast float %283, %277
  %286 = fmul fast float %284, %279
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %289 = fsub fast float -0.000000e+00, %288
  %290 = fptoui float %289 to i32
  %291 = fptoui float %285 to i32
  %292 = fptoui float %286 to i32
  %293 = and i32 %290, 31
  %294 = lshr i32 %291, %293
  %295 = lshr i32 %292, %293
  %296 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %290, i32 %294, i32 %295, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = fcmp fast ogt float %297, -1.000000e+00
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %301 = select i1 %298, float %300, float 1.000000e+00
  %302 = fadd fast float %297, 1.000000e+00
  %303 = fmul fast float %301, %302
  %304 = call float @dx.op.unary.f32(i32 6, float %303)  ; FAbs(value)
  %305 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %306 = fcmp fast oge float %304, %305
  %307 = select i1 %306, float 0x4197782600000000, float %304
  br i1 %274, label %378, label %308, !dx.controlflow.hints !62

; <label>:308                                     ; preds = %240
  %309 = fmul fast float %49, %281
  %310 = fmul fast float %51, %282
  %311 = fsub fast float 1.000000e+00, %309
  %312 = fsub fast float 1.000000e+00, %310
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = fmul fast float %311, %314
  %318 = fmul fast float %311, %315
  %319 = fmul fast float %311, %316
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fmul fast float %312, %321
  %325 = fmul fast float %312, %322
  %326 = fmul fast float %312, %323
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fadd fast float %324, %328
  %332 = fadd fast float %331, %317
  %333 = fadd fast float %325, %329
  %334 = fadd fast float %333, %318
  %335 = fadd fast float %326, %330
  %336 = fadd fast float %335, %319
  %337 = fmul fast float %332, %307
  %338 = fmul fast float %334, %307
  %339 = fmul fast float %336, %307
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fadd fast float %337, %341
  %345 = fadd fast float %338, %342
  %346 = fadd fast float %339, %343
  %347 = call float @dx.op.dot3.f32(i32 55, float %344, float %345, float %346, float %344, float %345, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = fsub fast float 1.000000e+00, %347
  %349 = fcmp fast olt float %348, %250
  %350 = fcmp fast ogt float %348, %249
  %351 = or i1 %349, %350
  %352 = select i1 %351, float 0.000000e+00, float %348
  %353 = fsub fast float %249, %250
  %354 = fsub fast float %352, %250
  %355 = fdiv fast float %354, %353
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = fmul fast float %356, 2.000000e+00
  %358 = fsub fast float 3.000000e+00, %357
  %359 = fmul fast float %356, %356
  %360 = fmul fast float %359, %358
  %361 = fmul fast float %254, %30
  %362 = fmul fast float %255, %31
  %363 = fmul fast float %256, %32
  %364 = fsub fast float %361, %260
  %365 = fsub fast float %362, %261
  %366 = fsub fast float %363, %262
  %367 = fsub fast float %257, %263
  %368 = fmul fast float %360, %364
  %369 = fmul fast float %360, %365
  %370 = fmul fast float %360, %366
  %371 = fmul fast float %360, %367
  %372 = fadd fast float %368, %260
  %373 = fadd fast float %369, %261
  %374 = fadd fast float %370, %262
  %375 = fadd fast float %371, %263
  %376 = fmul fast float %243, %243
  %377 = fmul fast float %376, %352
  br label %469

; <label>:378                                     ; preds = %240
  %379 = and i32 %265, 256
  %380 = icmp eq i32 %379, 0
  %381 = fsub fast float %307, %37
  br i1 %380, label %430, label %382

; <label>:382                                     ; preds = %378
  %383 = fadd fast float %249, %37
  %384 = fcmp fast olt float %307, %37
  %385 = fcmp fast ogt float %307, %383
  %386 = or i1 %384, %385
  %387 = select i1 %386, float 0.000000e+00, float %381
  %388 = call float @dx.op.unary.f32(i32 83, float %307)  ; DerivCoarseX(value)
  %389 = call float @dx.op.unary.f32(i32 84, float %307)  ; DerivCoarseY(value)
  %390 = fmul fast float %388, %388
  %391 = fmul fast float %389, %389
  %392 = fadd fast float %391, %390
  %393 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %394 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %395 = fmul fast float %394, %393
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, %250
  %398 = fdiv fast float %381, %397
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fsub fast float 3.000000e+00, %400
  %402 = fmul fast float %399, %399
  %403 = fmul fast float %402, %401
  %404 = fsub fast float %307, %383
  %405 = fadd fast float %404, %397
  %406 = fdiv fast float %405, %397
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, 2.000000e+00
  %409 = fsub fast float 3.000000e+00, %408
  %410 = fmul fast float %407, %407
  %411 = fmul fast float %410, %409
  %412 = fsub fast float %403, %411
  %413 = fmul fast float %254, %30
  %414 = fmul fast float %255, %31
  %415 = fmul fast float %256, %32
  %416 = fsub fast float %413, %260
  %417 = fsub fast float %414, %261
  %418 = fsub fast float %415, %262
  %419 = fsub fast float %257, %263
  %420 = fmul fast float %412, %416
  %421 = fmul fast float %412, %417
  %422 = fmul fast float %412, %418
  %423 = fmul fast float %412, %419
  %424 = fadd fast float %420, %260
  %425 = fadd fast float %421, %261
  %426 = fadd fast float %422, %262
  %427 = fadd fast float %423, %263
  %428 = fmul fast float %387, %243
  %429 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  br label %469

; <label>:430                                     ; preds = %378
  br i1 %268, label %431, label %442

; <label>:431                                     ; preds = %430
  %432 = select i1 %270, float 5.000000e+01, float 1.000000e+00
  %433 = fmul fast float %432, %243
  %434 = fmul fast float %168, 2.000000e+00
  %435 = fmul fast float %169, 2.000000e+00
  %436 = fadd fast float %434, -1.000000e+00
  %437 = fadd fast float %435, -1.000000e+00
  %438 = call float @dx.op.dot2.f32(i32 54, float %436, float %437, float %436, float %437)  ; Dot2(ax,ay,bx,by)
  %439 = fmul fast float %438, %251
  %440 = fsub fast float %381, %439
  %441 = fmul fast float %433, %440
  br label %469

; <label>:442                                     ; preds = %430
  br i1 %272, label %462, label %443

; <label>:443                                     ; preds = %442
  %444 = select i1 %270, float 0x3F947AE140000000, float 1.000000e+00
  %445 = fdiv fast float 1.000000e+00, %444
  %446 = fmul fast float %444, %244
  %447 = fmul fast float %444, %245
  %448 = fmul fast float %445, %246
  %449 = call float @dx.op.unary.f32(i32 6, float %381)  ; FAbs(value)
  %450 = fcmp fast olt float %449, %446
  br i1 %450, label %451, label %455, !dx.controlflow.hints !63

; <label>:451                                     ; preds = %443
  %452 = fmul fast float %445, %243
  %453 = fmul fast float %452, %449
  %454 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  br label %469

; <label>:455                                     ; preds = %443
  %456 = fcmp fast ogt float %449, %447
  br i1 %456, label %457, label %469

; <label>:457                                     ; preds = %455
  %458 = fsub fast float %449, %447
  %459 = fmul fast float %448, %458
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %461 = fsub fast float 1.000000e+00, %460
  br label %469

; <label>:462                                     ; preds = %442
  %463 = select i1 %270, float 5.000000e+01, float 1.000000e+00
  %464 = fmul fast float %463, %243
  %465 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %466 = select i1 %267, float %465, float 0x47EFFFFFE0000000
  %467 = call float @dx.op.binary.f32(i32 36, float %381, float %466)  ; FMin(a,b)
  %468 = fmul fast float %464, %467
  br label %469

; <label>:469                                     ; preds = %462, %457, %455, %451, %431, %382, %308
  %470 = phi float [ %377, %308 ], [ %429, %382 ], [ %441, %431 ], [ %468, %462 ], [ %454, %451 ], [ %461, %457 ], [ %449, %455 ]
  %471 = phi float [ %372, %308 ], [ %424, %382 ], [ %30, %431 ], [ %30, %462 ], [ %30, %451 ], [ %30, %457 ], [ %30, %455 ]
  %472 = phi float [ %373, %308 ], [ %425, %382 ], [ %31, %431 ], [ %31, %462 ], [ %31, %451 ], [ %31, %457 ], [ %31, %455 ]
  %473 = phi float [ %374, %308 ], [ %426, %382 ], [ %32, %431 ], [ %32, %462 ], [ %32, %451 ], [ %32, %457 ], [ %32, %455 ]
  %474 = phi float [ %375, %308 ], [ %427, %382 ], [ 1.000000e+00, %431 ], [ 1.000000e+00, %462 ], [ 1.000000e+00, %451 ], [ 1.000000e+00, %457 ], [ 1.000000e+00, %455 ]
  %475 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %476 = fmul fast float %475, %33
  %477 = fmul fast float %474, %198
  %478 = fmul fast float %477, %475
  br label %479

; <label>:479                                     ; preds = %469, %237
  %480 = phi float [ %471, %469 ], [ %30, %237 ]
  %481 = phi float [ %472, %469 ], [ %31, %237 ]
  %482 = phi float [ %473, %469 ], [ %32, %237 ]
  %483 = phi float [ %478, %469 ], [ %198, %237 ]
  %484 = phi float [ %476, %469 ], [ %33, %237 ]
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %487 = fptosi float %37 to i32
  %488 = sitofp i32 %487 to float
  %489 = fadd fast float %486, %488
  %490 = fmul fast float %489, 0x3FE3C6EF40000000
  %491 = frem fast float %44, 2.560000e+02
  %492 = frem fast float %45, 2.560000e+02
  %493 = fptoui float %491 to i32
  %494 = fptoui float %492 to i32
  %495 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %493, i32 %494, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = fadd fast float %496, %490
  %498 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %499 = and i32 %122, 1
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %558, label %501, !dx.controlflow.hints !64

; <label>:501                                     ; preds = %479
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 2
  %504 = extractvalue %dx.types.ResRet.f32 %502, 3
  %505 = add i32 %119, 16
  %506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = add i32 %119, 32
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = and i32 %122, 2
  %516 = icmp eq i32 %515, 0
  %517 = call float @dx.op.dot3.f32(i32 55, float %25, float %26, float %27, float %25, float %26, float %27)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = call float @dx.op.unary.f32(i32 25, float %517)  ; Rsqrt(value)
  %519 = fmul fast float %518, %25
  %520 = fmul fast float %518, %26
  %521 = fmul fast float %518, %27
  %522 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = call float @dx.op.unary.f32(i32 25, float %522)  ; Rsqrt(value)
  %524 = fmul fast float %523, %79
  %525 = fmul fast float %523, %80
  %526 = fmul fast float %523, %81
  %527 = call float @dx.op.dot3.f32(i32 55, float %524, float %525, float %526, float %519, float %520, float %521)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = fmul fast float %527, %527
  %529 = fmul fast float %528, %503
  %530 = fadd fast float %529, %504
  %531 = call float @dx.op.unary.f32(i32 7, float %530)  ; Saturate(value)
  br i1 %516, label %532, label %542, !dx.controlflow.hints !65

; <label>:532                                     ; preds = %501
  %533 = extractvalue %dx.types.ResRet.f32 %502, 1
  %534 = extractvalue %dx.types.ResRet.f32 %502, 0
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 3
  %537 = fmul fast float %536, %522
  %538 = fsub fast float %534, %537
  %539 = fmul fast float %538, %533
  %540 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %541 = fmul fast float %540, %531
  br label %542

; <label>:542                                     ; preds = %532, %501
  %543 = phi float [ %541, %532 ], [ %531, %501 ]
  %544 = fsub fast float %507, %512
  %545 = fsub fast float %508, %513
  %546 = fsub fast float %509, %514
  %547 = fmul fast float %543, %544
  %548 = fmul fast float %543, %545
  %549 = fmul fast float %543, %546
  %550 = fadd fast float %547, %512
  %551 = fadd fast float %548, %513
  %552 = fadd fast float %549, %514
  %553 = fmul fast float %550, %480
  %554 = fmul fast float %551, %481
  %555 = fmul fast float %552, %482
  %556 = fmul fast float %543, %483
  %557 = fmul fast float %543, %484
  br label %558

; <label>:558                                     ; preds = %542, %479
  %559 = phi float [ %553, %542 ], [ %480, %479 ]
  %560 = phi float [ %554, %542 ], [ %481, %479 ]
  %561 = phi float [ %555, %542 ], [ %482, %479 ]
  %562 = phi float [ %556, %542 ], [ %483, %479 ]
  %563 = phi float [ %557, %542 ], [ %484, %479 ]
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %40, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = lshr i32 %573, 8
  %578 = and i32 %577, 255
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %579, 0x3F70101020000000
  %581 = lshr i32 %573, 16
  %582 = and i32 %581, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %583, 0x3F70101020000000
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = fmul fast float %589, %589
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = add i32 %592, 0
  %594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %594, %dx.types.Handle %41, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = fmul fast float %590, %596
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = fmul fast float %569, %559
  %601 = fmul fast float %576, %576
  %602 = fmul fast float %601, %600
  %603 = fmul fast float %602, %599
  %604 = fmul fast float %570, %560
  %605 = fmul fast float %580, %580
  %606 = fmul fast float %605, %604
  %607 = fmul fast float %606, %599
  %608 = fmul fast float %571, %561
  %609 = fmul fast float %584, %584
  %610 = fmul fast float %609, %608
  %611 = fmul fast float %610, %599
  %612 = call float @dx.op.dot3.f32(i32 55, float %603, float %607, float %611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = lshr i32 %614, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, %612
  %621 = fadd fast float %620, %616
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = and i32 %122, 8192
  %625 = icmp eq i32 %624, 0
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 0
  br i1 %625, label %634, label %628, !dx.controlflow.hints !66

; <label>:628                                     ; preds = %558
  %629 = add i32 %119, 176
  %630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = fcmp fast oge float %631, 0.000000e+00
  %633 = select i1 %632, float %631, float %627
  br label %640

; <label>:634                                     ; preds = %558
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = bitcast i32 %636 to float
  %638 = fcmp fast oge float %637, 0.000000e+00
  %639 = select i1 %638, float %637, float %627
  br label %640

; <label>:640                                     ; preds = %634, %628
  %641 = phi float [ %633, %628 ], [ %639, %634 ]
  %642 = fsub fast float 1.000000e+00, %597
  %643 = fmul fast float %642, %563
  %644 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = lshr i32 %645, 18
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F4C00EBA0000000
  %649 = call float @dx.op.unary.f32(i32 21, float %648)  ; Exp(value)
  %650 = fadd fast float %649, -1.000000e+00
  %651 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %652 = extractvalue %dx.types.Dimensions %651, 0
  %653 = sitofp i32 %652 to float
  %654 = extractvalue %dx.types.Dimensions %651, 1
  %655 = sitofp i32 %654 to float
  %656 = fcmp fast oge float %199, %653
  %657 = fcmp fast oge float %200, %655
  %658 = or i1 %656, %657
  %659 = select i1 %658, float 0x4197782600000000, float %650
  %660 = fmul fast float %562, %22
  %661 = fmul fast float %562, %23
  %662 = fmul fast float %562, %24
  %663 = fadd fast float %597, -1.000000e+00
  %664 = fmul fast float %663, %562
  %665 = fadd fast float %664, 1.000000e+00
  %666 = call float @dx.op.dot3.f32(i32 55, float %665, float %665, float %665, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %667 = fsub fast float 1.000000e+00, %666
  %668 = fmul fast float %641, %623
  %669 = fsub fast float 1.000000e+00, %643
  %670 = fsub fast float %669, %623
  %671 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 3
  %674 = fmul fast float %673, %671
  %675 = fadd fast float %674, %668
  %676 = and i32 %122, 2097152
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %682, label %678, !dx.controlflow.hints !67

; <label>:678                                     ; preds = %640
  %679 = add i32 %119, 192
  %680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  br label %685

; <label>:682                                     ; preds = %640
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 3
  br label %685

; <label>:685                                     ; preds = %682, %678
  %686 = phi float [ %681, %678 ], [ %684, %682 ]
  %687 = fmul fast float %660, %603
  %688 = fmul fast float %661, %607
  %689 = fmul fast float %662, %611
  %690 = icmp eq i32 %118, 3
  %691 = fcmp fast ogt float %37, %659
  %692 = and i1 %225, %691
  %693 = or i1 %690, %692
  %694 = icmp eq i32 %118, 2
  %695 = fcmp fast ole float %37, %659
  %696 = and i1 %694, %695
  %697 = or i1 %696, %693
  br i1 %692, label %698, label %835

; <label>:698                                     ; preds = %685
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 2
  %701 = extractvalue %dx.types.CBufRet.f32 %699, 3
  %702 = fmul fast float %700, %44
  %703 = fmul fast float %701, %45
  %704 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %705 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %706 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %704, float %705, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = extractvalue %dx.types.ResRet.f32 %706, 1
  %709 = extractvalue %dx.types.ResRet.f32 %706, 2
  %710 = extractvalue %dx.types.ResRet.f32 %706, 3
  %711 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %704, float %705, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = extractvalue %dx.types.ResRet.f32 %711, 1
  %714 = extractvalue %dx.types.ResRet.f32 %711, 2
  %715 = extractvalue %dx.types.ResRet.f32 %711, 3
  %716 = call float @dx.op.binary.f32(i32 35, float %708, float %709)  ; FMax(a,b)
  %717 = call float @dx.op.binary.f32(i32 35, float %707, float %716)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %717, float %710)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float %713, float %714)  ; FMin(a,b)
  %720 = call float @dx.op.binary.f32(i32 36, float %712, float %719)  ; FMin(a,b)
  %721 = call float @dx.op.binary.f32(i32 36, float %720, float %715)  ; FMin(a,b)
  %722 = fmul fast float %718, 2.550000e+02
  %723 = fadd fast float %722, 0x3F70101020000000
  %724 = fptoui float %723 to i32
  %725 = fmul fast float %721, 2.550000e+02
  %726 = fadd fast float %725, 0x3F70101020000000
  %727 = fptoui float %726 to i32
  %728 = icmp ult i32 %724, %727
  br i1 %728, label %729, label %780

; <label>:729                                     ; preds = %698
  %730 = fcmp fast ogt float %36, 9.843750e-01
  %731 = fadd fast float %37, -4.000000e+00
  %732 = select i1 %730, float -4.000000e+00, float %731
  %733 = call float @dx.op.binary.f32(i32 35, float %732, float 0.000000e+00)  ; FMax(a,b)
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = fadd fast float %735, %733
  %737 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %738 = fmul fast float %736, %737
  %739 = call float @dx.op.unary.f32(i32 23, float %738)  ; Log(value)
  %740 = extractvalue %dx.types.CBufRet.f32 %734, 3
  %741 = fmul fast float %740, %739
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %744 = fmul fast float %741, %743
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %746 = uitofp i32 %724 to float
  %747 = uitofp i32 %727 to float
  %748 = fadd fast float %746, 5.000000e-01
  %749 = fadd fast float %747, 5.000000e-01
  %750 = fmul fast float %743, %748
  %751 = fmul fast float %743, %749
  %752 = fadd fast float %750, 0x3F0FFB4800000000
  %753 = fadd fast float %751, 0xBF0FFB4800000000
  %754 = call float @dx.op.binary.f32(i32 35, float %745, float %752)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 36, float %754, float %753)  ; FMin(a,b)
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 1
  %758 = extractvalue %dx.types.CBufRet.f32 %756, 2
  %759 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %760 = fmul fast float %757, %755
  %761 = fadd fast float %759, %760
  %762 = fadd fast float %759, %758
  %763 = fsub fast float %757, %758
  %764 = fadd fast float %763, %759
  %765 = call float @dx.op.binary.f32(i32 35, float %761, float %762)  ; FMax(a,b)
  %766 = call float @dx.op.binary.f32(i32 36, float %765, float %764)  ; FMin(a,b)
  %767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %704, float %705, float %766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %704, float %705, float %766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 1
  %777 = fmul fast float %776, %772
  %778 = fmul fast float %776, %773
  %779 = fmul fast float %776, %774
  br label %780

; <label>:780                                     ; preds = %729, %698
  %781 = phi float [ %768, %729 ], [ 1.000000e+00, %698 ]
  %782 = phi float [ %769, %729 ], [ 1.000000e+00, %698 ]
  %783 = phi float [ %770, %729 ], [ 1.000000e+00, %698 ]
  %784 = phi float [ %777, %729 ], [ 0.000000e+00, %698 ]
  %785 = phi float [ %778, %729 ], [ 0.000000e+00, %698 ]
  %786 = phi float [ %779, %729 ], [ 0.000000e+00, %698 ]
  %787 = fmul fast float %784, %667
  %788 = fmul fast float %785, %667
  %789 = fmul fast float %786, %667
  %790 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.dot3.f32(i32 55, float %787, float %788, float %789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %792 = select i1 %102, float %790, float %781
  %793 = select i1 %102, float %790, float %782
  %794 = select i1 %102, float 1.000000e+00, float %783
  %795 = select i1 %102, float %791, float %787
  %796 = select i1 %102, float 0.000000e+00, float %788
  %797 = select i1 %102, float 0.000000e+00, float %789
  %798 = fmul fast float %792, %687
  %799 = fmul fast float %793, %688
  %800 = fmul fast float %794, %689
  %801 = fadd fast float %798, %795
  %802 = fadd fast float %799, %796
  %803 = fadd fast float %797, %800
  %804 = fmul fast float %49, %700
  %805 = fmul fast float %51, %701
  %806 = fsub fast float 1.000000e+00, %804
  %807 = fsub fast float 1.000000e+00, %805
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = fmul fast float %806, %809
  %813 = fmul fast float %806, %810
  %814 = fmul fast float %806, %811
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 0
  %817 = extractvalue %dx.types.CBufRet.f32 %815, 1
  %818 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %819 = fmul fast float %807, %816
  %820 = fmul fast float %807, %817
  %821 = fmul fast float %807, %818
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %824 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %825 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %826 = fadd fast float %819, %823
  %827 = fadd fast float %826, %812
  %828 = fadd fast float %820, %824
  %829 = fadd fast float %828, %813
  %830 = fadd fast float %821, %825
  %831 = fadd fast float %830, %814
  %832 = fmul fast float %827, %659
  %833 = fmul fast float %829, %659
  %834 = fmul fast float %831, %659
  br label %835

; <label>:835                                     ; preds = %780, %685
  %836 = phi float [ %832, %780 ], [ %79, %685 ]
  %837 = phi float [ %833, %780 ], [ %80, %685 ]
  %838 = phi float [ %834, %780 ], [ %81, %685 ]
  %839 = phi float [ %659, %780 ], [ %37, %685 ]
  %840 = phi float [ %801, %780 ], [ %687, %685 ]
  %841 = phi float [ %802, %780 ], [ %688, %685 ]
  %842 = phi float [ %803, %780 ], [ %689, %685 ]
  %843 = phi float [ %781, %780 ], [ 1.000000e+00, %685 ]
  br i1 %697, label %1993, label %844

; <label>:844                                     ; preds = %835
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %848 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %849 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %854 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %864 = extractvalue %dx.types.CBufRet.f32 %860, 3
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 3
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 3
  %869 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %867, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %872 = fcmp fast olt float %871, -5.000000e-01
  %873 = call float @dx.op.dot3.f32(i32 55, float %836, float %837, float %838, float %836, float %837, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = call float @dx.op.unary.f32(i32 25, float %873)  ; Rsqrt(value)
  %875 = fmul fast float %874, %873
  %876 = fmul fast float %874, %836
  %877 = fmul fast float %874, %837
  %878 = fmul fast float %874, %838
  %879 = fadd fast float %875, %849
  %880 = call float @dx.op.dot3.f32(i32 55, float %876, float %877, float %878, float %846, float %847, float %848)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 1
  %883 = and i32 %882, 1
  %884 = icmp ne i32 %883, 0
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %887 = fcmp fast ogt float %886, 0.000000e+00
  %888 = and i1 %884, %887
  br i1 %888, label %889, label %1295, !dx.controlflow.hints !68

; <label>:889                                     ; preds = %844
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 3
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %896 = fsub fast float %893, %895
  %897 = and i32 %882, 2
  %898 = extractvalue %dx.types.CBufRet.i32 %881, 0
  %899 = call i32 @dx.op.binary.i32(i32 40, i32 %898, i32 3)  ; UMin(a,b)
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %903 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %905 = fsub fast float %901, %903
  %906 = fsub fast float %902, %904
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = fcmp fast ogt float %908, 0.000000e+00
  %910 = fsub fast float -0.000000e+00, %905
  %911 = fsub fast float -0.000000e+00, %906
  %912 = call float @dx.op.dot2.f32(i32 54, float %876, float %877, float %876, float %877)  ; Dot2(ax,ay,bx,by)
  %913 = call float @dx.op.dot2.f32(i32 54, float %876, float %877, float %910, float %911)  ; Dot2(ax,ay,bx,by)
  %914 = fmul fast float %913, 2.000000e+00
  %915 = call float @dx.op.dot2.f32(i32 54, float %910, float %911, float %910, float %911)  ; Dot2(ax,ay,bx,by)
  %916 = fmul fast float %908, %908
  %917 = fsub fast float %915, %916
  %918 = fmul fast float %914, %914
  %919 = fmul fast float %912, 4.000000e+00
  %920 = fmul fast float %919, %917
  %921 = fsub fast float %918, %920
  %922 = fcmp fast ogt float %921, 0.000000e+00
  br i1 %922, label %923, label %938

; <label>:923                                     ; preds = %889
  %924 = fcmp fast ogt float %914, 0.000000e+00
  %925 = call float @dx.op.unary.f32(i32 24, float %921)  ; Sqrt(value)
  %926 = fsub fast float -0.000000e+00, %925
  %927 = select i1 %924, float %925, float %926
  %928 = fadd fast float %927, %914
  %929 = fmul float %928, -5.000000e-01
  %930 = fdiv fast float %929, %912
  %931 = call float @dx.op.binary.f32(i32 35, float %930, float 0.000000e+00)  ; FMax(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float %875, float %931)  ; FMin(a,b)
  %933 = fdiv fast float %917, %929
  %934 = call float @dx.op.binary.f32(i32 35, float %933, float 0.000000e+00)  ; FMax(a,b)
  %935 = call float @dx.op.binary.f32(i32 36, float %875, float %934)  ; FMin(a,b)
  %936 = call float @dx.op.binary.f32(i32 36, float %932, float %935)  ; FMin(a,b)
  %937 = call float @dx.op.binary.f32(i32 35, float %932, float %935)  ; FMax(a,b)
  br label %938

; <label>:938                                     ; preds = %923, %889
  %939 = phi float [ %937, %923 ], [ -1.000000e+00, %889 ]
  %940 = phi float [ %936, %923 ], [ -1.000000e+00, %889 ]
  %941 = phi i1 [ true, %923 ], [ false, %889 ]
  %942 = and i1 %909, %941
  br i1 %942, label %943, label %945

; <label>:943                                     ; preds = %938
  %944 = fcmp fast oeq float %940, %939
  br i1 %944, label %1248, label %946

; <label>:945                                     ; preds = %938
  br i1 %909, label %1248, label %946

; <label>:946                                     ; preds = %945, %943
  %947 = phi float [ %875, %945 ], [ %939, %943 ]
  %948 = phi float [ 0.000000e+00, %945 ], [ %940, %943 ]
  %949 = icmp ne i32 %897, 0
  %950 = fmul fast float %947, %878
  %951 = fadd fast float %950, %891
  %952 = fmul fast float %951, %947
  %953 = select i1 %949, float 0.000000e+00, float %952
  %954 = fcmp fast oeq float %878, 0.000000e+00
  %955 = fdiv fast float %896, %878
  %956 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %955)  ; FMax(a,b)
  %957 = select i1 %954, float %947, float %956
  %958 = call float @dx.op.binary.f32(i32 36, float %947, float %957)  ; FMin(a,b)
  %959 = fcmp fast ogt float %878, 0.000000e+00
  %960 = fcmp fast olt float %896, 0.000000e+00
  br i1 %959, label %961, label %1018

; <label>:961                                     ; preds = %946
  %962 = icmp eq i32 %897, 0
  br i1 %960, label %963, label %1007

; <label>:963                                     ; preds = %961
  %964 = select i1 %962, float %947, float 0.000000e+00
  %965 = fsub fast float -0.000000e+00, %964
  %966 = call float @dx.op.unary.f32(i32 6, float %965)  ; FAbs(value)
  %967 = fmul fast float %964, %878
  %968 = fadd fast float %967, %891
  %969 = fmul fast float %966, %968
  %970 = fsub fast float %953, %969
  %971 = fsub fast float %947, %966
  %972 = select i1 %962, float %971, float 0.000000e+00
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %977, 2
  %981 = extractvalue %dx.types.CBufRet.f32 %977, 3
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 3
  %984 = call float @dx.op.binary.f32(i32 36, float %970, float %983)  ; FMin(a,b)
  %985 = fmul fast float %981, %972
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  %987 = fsub fast float %978, %974
  %988 = fsub fast float %979, %975
  %989 = fsub fast float %980, %976
  %990 = fmul fast float %986, %987
  %991 = fmul fast float %986, %988
  %992 = fmul fast float %986, %989
  %993 = fadd fast float %990, %974
  %994 = fadd fast float %991, %975
  %995 = fadd fast float %992, %976
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = fadd fast float %998, %997
  %1000 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1001 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1002 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %1003 = fadd fast float %1002, %1001
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  %1005 = fmul fast float %1000, %984
  %1006 = fmul fast float %1005, %1004
  br label %1248

; <label>:1007                                    ; preds = %961
  br i1 %962, label %1008, label %1029

; <label>:1008                                    ; preds = %1007
  %1009 = call float @dx.op.binary.f32(i32 36, float %958, float %948)  ; FMin(a,b)
  %1010 = fsub fast float %958, %1009
  %1011 = fsub fast float %1010, %947
  %1012 = call float @dx.op.unary.f32(i32 6, float %1011)  ; FAbs(value)
  %1013 = fadd fast float %1010, %947
  %1014 = fmul fast float %1013, %878
  %1015 = fadd fast float %1014, %891
  %1016 = fmul fast float %1015, %1012
  %1017 = fsub fast float %953, %1016
  br label %1029

; <label>:1018                                    ; preds = %946
  br i1 %960, label %1019, label %1029

; <label>:1019                                    ; preds = %1018
  %1020 = call float @dx.op.binary.f32(i32 35, float %948, float %958)  ; FMax(a,b)
  %1021 = icmp eq i32 %897, 0
  %1022 = select i1 %1021, float %958, float 0.000000e+00
  %1023 = fsub fast float -0.000000e+00, %1022
  %1024 = call float @dx.op.unary.f32(i32 6, float %1023)  ; FAbs(value)
  %1025 = fmul fast float %1022, %878
  %1026 = fadd fast float %1025, %891
  %1027 = fmul fast float %1024, %1026
  %1028 = fsub fast float %953, %1027
  br label %1029

; <label>:1029                                    ; preds = %1019, %1018, %1008, %1007
  %1030 = phi float [ %948, %1007 ], [ %948, %1008 ], [ %1020, %1019 ], [ %948, %1018 ]
  %1031 = phi float [ 0.000000e+00, %1007 ], [ %1012, %1008 ], [ %1024, %1019 ], [ 0.000000e+00, %1018 ]
  %1032 = phi float [ %953, %1007 ], [ %1017, %1008 ], [ %1028, %1019 ], [ %953, %1018 ]
  %1033 = phi float [ %958, %1007 ], [ %958, %1008 ], [ %947, %1019 ], [ %947, %1018 ]
  %1034 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  store float -1.000000e+00, float* %1034, align 4, !tbaa !69, !noalias !73
  %1035 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 1
  store float -1.000000e+00, float* %1035, align 4, !tbaa !69, !noalias !73
  %1036 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 2
  store float -1.000000e+00, float* %1036, align 4, !tbaa !69, !noalias !73
  %1037 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1037, align 4, !tbaa !69, !noalias !73
  %1038 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1038, align 4, !tbaa !69, !noalias !73
  %1039 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1039, align 4, !tbaa !69, !noalias !73
  %1040 = icmp sgt i32 %899, 0
  br i1 %1040, label %1041, label %1102

; <label>:1041                                    ; preds = %1029
  br label %1042

; <label>:1042                                    ; preds = %1091, %1041
  %1043 = phi i32 [ %1092, %1091 ], [ 0, %1041 ]
  %1044 = phi i32 [ %1093, %1091 ], [ 0, %1041 ]
  %1045 = add nuw i32 %1044, 171
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1045)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = fsub fast float %1047, %1050
  %1053 = fsub fast float %1048, %1051
  %1054 = extractvalue %dx.types.CBufRet.f32 %1046, 2
  %1055 = fsub fast float -0.000000e+00, %1052
  %1056 = fsub fast float -0.000000e+00, %1053
  %1057 = call float @dx.op.dot2.f32(i32 54, float %876, float %877, float %1055, float %1056)  ; Dot2(ax,ay,bx,by)
  %1058 = fmul fast float %1057, 2.000000e+00
  %1059 = call float @dx.op.dot2.f32(i32 54, float %1055, float %1056, float %1055, float %1056)  ; Dot2(ax,ay,bx,by)
  %1060 = fmul fast float %1054, %1054
  %1061 = fsub fast float %1059, %1060
  %1062 = fmul fast float %1058, %1058
  %1063 = fmul fast float %919, %1061
  %1064 = fsub fast float %1062, %1063
  %1065 = fcmp fast ogt float %1064, 0.000000e+00
  br i1 %1065, label %1066, label %1081

; <label>:1066                                    ; preds = %1042
  %1067 = fcmp fast ogt float %1058, 0.000000e+00
  %1068 = call float @dx.op.unary.f32(i32 24, float %1064)  ; Sqrt(value)
  %1069 = fsub fast float -0.000000e+00, %1068
  %1070 = select i1 %1067, float %1068, float %1069
  %1071 = fadd fast float %1070, %1058
  %1072 = fmul float %1071, -5.000000e-01
  %1073 = fdiv fast float %1072, %912
  %1074 = call float @dx.op.binary.f32(i32 35, float %1073, float 0.000000e+00)  ; FMax(a,b)
  %1075 = call float @dx.op.binary.f32(i32 36, float %947, float %1074)  ; FMin(a,b)
  %1076 = fdiv fast float %1061, %1072
  %1077 = call float @dx.op.binary.f32(i32 35, float %1076, float 0.000000e+00)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 36, float %947, float %1077)  ; FMin(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %1075, float %1078)  ; FMin(a,b)
  %1080 = call float @dx.op.binary.f32(i32 35, float %1075, float %1078)  ; FMax(a,b)
  br label %1081

; <label>:1081                                    ; preds = %1066, %1042
  %1082 = phi float [ %1080, %1066 ], [ -1.000000e+00, %1042 ]
  %1083 = phi float [ %1079, %1066 ], [ -1.000000e+00, %1042 ]
  %1084 = phi i1 [ true, %1066 ], [ false, %1042 ]
  br i1 %1084, label %1085, label %1091

; <label>:1085                                    ; preds = %1081
  %1086 = call float @dx.op.binary.f32(i32 35, float %1030, float %1083)  ; FMax(a,b)
  %1087 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1044
  store float %1086, float* %1087, align 4, !tbaa !69, !noalias !73
  %1088 = call float @dx.op.binary.f32(i32 35, float %1030, float %1082)  ; FMax(a,b)
  %1089 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1044
  store float %1088, float* %1089, align 4, !tbaa !69, !noalias !73
  %1090 = add nsw i32 %1043, 1
  br label %1091

; <label>:1091                                    ; preds = %1085, %1081
  %1092 = phi i32 [ %1090, %1085 ], [ %1043, %1081 ]
  %1093 = add nuw nsw i32 %1044, 1
  %1094 = icmp eq i32 %1093, %899
  br i1 %1094, label %1095, label %1042

; <label>:1095                                    ; preds = %1091
  %1096 = load float, float* %1036, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1097 = load float, float* %1035, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  %1098 = load float, float* %1034, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  %1099 = load float, float* %1039, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1100 = load float, float* %1038, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  %1101 = load float, float* %1037, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  br label %1102

; <label>:1102                                    ; preds = %1095, %1029
  %1103 = phi float [ -1.000000e+00, %1029 ], [ %1101, %1095 ]
  %1104 = phi float [ -1.000000e+00, %1029 ], [ %1100, %1095 ]
  %1105 = phi float [ -1.000000e+00, %1029 ], [ %1099, %1095 ]
  %1106 = phi float [ -1.000000e+00, %1029 ], [ %1098, %1095 ]
  %1107 = phi float [ -1.000000e+00, %1029 ], [ %1097, %1095 ]
  %1108 = phi float [ -1.000000e+00, %1029 ], [ %1096, %1095 ]
  %1109 = phi i32 [ 0, %1029 ], [ %1092, %1095 ]
  %1110 = call float @dx.op.binary.f32(i32 36, float %1107, float %1108)  ; FMin(a,b)
  %1111 = call float @dx.op.binary.f32(i32 36, float %1106, float %1110)  ; FMin(a,b)
  %1112 = call float @dx.op.binary.f32(i32 35, float %1106, float %1107)  ; FMax(a,b)
  %1113 = call float @dx.op.binary.f32(i32 36, float %1112, float %1108)  ; FMin(a,b)
  %1114 = call float @dx.op.binary.f32(i32 36, float %1106, float %1107)  ; FMin(a,b)
  %1115 = call float @dx.op.binary.f32(i32 35, float %1114, float %1113)  ; FMax(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float %1107, float %1108)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 35, float %1106, float %1116)  ; FMax(a,b)
  store float %1111, float* %1034, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  store float %1115, float* %1035, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  store float %1117, float* %1036, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1118 = call float @dx.op.binary.f32(i32 36, float %1104, float %1105)  ; FMin(a,b)
  %1119 = call float @dx.op.binary.f32(i32 36, float %1103, float %1118)  ; FMin(a,b)
  %1120 = call float @dx.op.binary.f32(i32 35, float %1103, float %1104)  ; FMax(a,b)
  %1121 = call float @dx.op.binary.f32(i32 36, float %1120, float %1105)  ; FMin(a,b)
  %1122 = call float @dx.op.binary.f32(i32 36, float %1103, float %1104)  ; FMin(a,b)
  %1123 = call float @dx.op.binary.f32(i32 35, float %1122, float %1121)  ; FMax(a,b)
  %1124 = call float @dx.op.binary.f32(i32 35, float %1104, float %1105)  ; FMax(a,b)
  %1125 = call float @dx.op.binary.f32(i32 35, float %1103, float %1124)  ; FMax(a,b)
  store float %1119, float* %1037, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  store float %1123, float* %1038, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  store float %1125, float* %1039, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1126 = sub nsw i32 3, %1109
  %1127 = icmp sgt i32 %1126, 2
  br i1 %1127, label %1128, label %1166

; <label>:1128                                    ; preds = %1102
  %1129 = icmp eq i32 %897, 0
  %1130 = fsub fast float %947, %1031
  %1131 = select i1 %1129, float %1130, float %1031
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.CBufRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1140 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 3
  %1143 = call float @dx.op.binary.f32(i32 36, float %1032, float %1142)  ; FMin(a,b)
  %1144 = fmul fast float %1140, %1131
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1146 = fsub fast float %1137, %1133
  %1147 = fsub fast float %1138, %1134
  %1148 = fsub fast float %1139, %1135
  %1149 = fmul fast float %1145, %1146
  %1150 = fmul fast float %1145, %1147
  %1151 = fmul fast float %1145, %1148
  %1152 = fadd fast float %1149, %1133
  %1153 = fadd fast float %1150, %1134
  %1154 = fadd fast float %1151, %1135
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1158 = fadd fast float %1157, %1156
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1155, 2
  %1161 = extractvalue %dx.types.CBufRet.f32 %1155, 3
  %1162 = fadd fast float %1161, %1160
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1164 = fmul fast float %1159, %1143
  %1165 = fmul fast float %1164, %1163
  br label %1248

; <label>:1166                                    ; preds = %1102
  %1167 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1126
  %1168 = load float, float* %1167, align 4, !tbaa !69, !noalias !73
  %1169 = fcmp fast olt float %1168, %1033
  %1170 = icmp sgt i32 %1109, 0
  %1171 = and i1 %1170, %1169
  br i1 %1171, label %1172, label %1209

; <label>:1172                                    ; preds = %1166
  br label %1173

; <label>:1173                                    ; preds = %1202, %1172
  %1174 = phi float [ %1203, %1202 ], [ %1031, %1172 ]
  %1175 = phi float [ %1204, %1202 ], [ %1032, %1172 ]
  %1176 = phi float [ %1184, %1202 ], [ %1168, %1172 ]
  %1177 = phi i32 [ %1181, %1202 ], [ %1126, %1172 ]
  %1178 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1177
  %1179 = load float, float* %1178, align 4, !tbaa !69, !noalias !73
  %1180 = icmp slt i32 %1177, 2
  %1181 = add nsw i32 %1177, 1
  %1182 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1181
  %1183 = load float, float* %1182, align 4, !tbaa !69, !noalias !73
  %1184 = select i1 %1180, float %1183, float %947
  %1185 = call float @dx.op.binary.f32(i32 36, float %1184, float %1179)  ; FMin(a,b)
  %1186 = call float @dx.op.binary.f32(i32 36, float %1033, float %1185)  ; FMin(a,b)
  %1187 = icmp eq i32 %897, 0
  %1188 = fadd fast float %1186, %1176
  %1189 = fmul fast float %1188, %878
  %1190 = fadd fast float %1189, %891
  br i1 %1187, label %1196, label %1191

; <label>:1191                                    ; preds = %1173
  %1192 = fsub fast float %1186, %1176
  %1193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1192)  ; FMax(a,b)
  %1194 = fmul fast float %1193, %1190
  %1195 = fadd fast float %1194, %1175
  br label %1202

; <label>:1196                                    ; preds = %1173
  %1197 = fsub fast float %1176, %1186
  %1198 = call float @dx.op.unary.f32(i32 6, float %1197)  ; FAbs(value)
  %1199 = fadd fast float %1198, %1174
  %1200 = fmul fast float %1198, %1190
  %1201 = fsub fast float %1175, %1200
  br label %1202

; <label>:1202                                    ; preds = %1196, %1191
  %1203 = phi float [ %1193, %1191 ], [ %1199, %1196 ]
  %1204 = phi float [ %1195, %1191 ], [ %1201, %1196 ]
  %1205 = fcmp fast olt float %1184, %1033
  %1206 = icmp slt i32 %1181, 3
  %1207 = and i1 %1206, %1205
  br i1 %1207, label %1173, label %1208

; <label>:1208                                    ; preds = %1202
  br label %1209

; <label>:1209                                    ; preds = %1208, %1166
  %1210 = phi float [ %1031, %1166 ], [ %1203, %1208 ]
  %1211 = phi float [ %1032, %1166 ], [ %1204, %1208 ]
  %1212 = fsub fast float %947, %1210
  %1213 = select i1 %949, float %1210, float %1212
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.CBufRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 3
  %1225 = call float @dx.op.binary.f32(i32 36, float %1211, float %1224)  ; FMin(a,b)
  %1226 = fmul fast float %1222, %1213
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = fsub fast float %1219, %1215
  %1229 = fsub fast float %1220, %1216
  %1230 = fsub fast float %1221, %1217
  %1231 = fmul fast float %1227, %1228
  %1232 = fmul fast float %1227, %1229
  %1233 = fmul fast float %1227, %1230
  %1234 = fadd fast float %1231, %1215
  %1235 = fadd fast float %1232, %1216
  %1236 = fadd fast float %1233, %1217
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = fadd fast float %1239, %1238
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1243 = extractvalue %dx.types.CBufRet.f32 %1237, 3
  %1244 = fadd fast float %1243, %1242
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1246 = fmul fast float %1241, %1225
  %1247 = fmul fast float %1246, %1245
  br label %1248

; <label>:1248                                    ; preds = %1209, %1128, %963, %945, %943
  %1249 = phi float [ %972, %963 ], [ %1131, %1128 ], [ %1213, %1209 ], [ 0.000000e+00, %943 ], [ 0.000000e+00, %945 ]
  %1250 = phi float [ %1006, %963 ], [ %1165, %1128 ], [ %1247, %1209 ], [ 0.000000e+00, %943 ], [ 0.000000e+00, %945 ]
  %1251 = phi float [ %993, %963 ], [ %1152, %1128 ], [ %1234, %1209 ], [ 0.000000e+00, %943 ], [ 0.000000e+00, %945 ]
  %1252 = phi float [ %994, %963 ], [ %1153, %1128 ], [ %1235, %1209 ], [ 0.000000e+00, %943 ], [ 0.000000e+00, %945 ]
  %1253 = phi float [ %995, %963 ], [ %1154, %1128 ], [ %1236, %1209 ], [ 0.000000e+00, %943 ], [ 0.000000e+00, %945 ]
  %1254 = fmul fast float %886, %1250
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1257 = fsub fast float %893, %1256
  %1258 = fcmp fast olt float %1254, -2.000000e+01
  %1259 = call float @dx.op.unary.f32(i32 21, float %1254)  ; Exp(value)
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 2
  %1265 = fmul fast float %1262, %1257
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = fsub fast float 1.000000e+00, %1266
  %1268 = fmul fast float %878, 5.000000e-01
  %1269 = fadd fast float %1268, 5.000000e-01
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = fsub fast float 1.000000e+00, %1270
  %1272 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1267)  ; FMax(a,b)
  %1273 = fdiv fast float %1271, %1272
  %1274 = fsub fast float %1257, %838
  %1275 = call float @dx.op.unary.f32(i32 6, float %1274)  ; FAbs(value)
  %1276 = fmul fast float %1275, %1261
  %1277 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1278 = fsub fast float 1.000000e+00, %1276
  %1279 = fmul fast float %1278, %1277
  %1280 = fadd fast float %1279, %1276
  %1281 = fmul fast float %1264, %1257
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1283 = fsub fast float 1.000000e+00, %1280
  %1284 = fmul fast float %1283, %1282
  %1285 = fadd fast float %1284, %1280
  %1286 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1287 = fadd fast float %1259, -1.000000e+00
  %1288 = select i1 %1258, float -1.000000e+00, float %1287
  %1289 = fmul fast float %1286, %1288
  %1290 = fadd fast float %1289, 1.000000e+00
  %1291 = fsub fast float -0.000000e+00, %1289
  %1292 = fmul fast float %1251, %1291
  %1293 = fmul fast float %1252, %1291
  %1294 = fmul fast float %1253, %1291
  br label %1295

; <label>:1295                                    ; preds = %1248, %844
  %1296 = phi float [ %1249, %1248 ], [ 0.000000e+00, %844 ]
  %1297 = phi float [ %1290, %1248 ], [ 1.000000e+00, %844 ]
  %1298 = phi float [ %1292, %1248 ], [ 0.000000e+00, %844 ]
  %1299 = phi float [ %1293, %1248 ], [ 0.000000e+00, %844 ]
  %1300 = phi float [ %1294, %1248 ], [ 0.000000e+00, %844 ]
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1303 = fsub fast float 1.000000e+00, %1297
  %1304 = fmul fast float %1303, %879
  %1305 = fmul fast float %1304, %1302
  %1306 = fsub fast float %879, %1305
  br i1 %872, label %1307, label %1336, !dx.controlflow.hints !109

; <label>:1307                                    ; preds = %1295
  %1308 = fmul fast float %880, %869
  %1309 = fadd fast float %1308, %870
  %1310 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1311 = fmul fast float %851, %1306
  %1312 = fsub fast float -0.000000e+00, %1311
  %1313 = fmul fast float %852, %1306
  %1314 = fsub fast float -0.000000e+00, %1313
  %1315 = call float @dx.op.unary.f32(i32 21, float %1312)  ; Exp(value)
  %1316 = call float @dx.op.unary.f32(i32 21, float %1314)  ; Exp(value)
  %1317 = call float @dx.op.binary.f32(i32 35, float %859, float %1315)  ; FMax(a,b)
  %1318 = call float @dx.op.binary.f32(i32 35, float %859, float %1316)  ; FMax(a,b)
  %1319 = fsub fast float %1318, %1317
  %1320 = fmul fast float %1319, %1310
  %1321 = fadd fast float %1320, %1317
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fsub fast float %856, %861
  %1324 = fsub fast float %857, %862
  %1325 = fsub fast float %858, %863
  %1326 = fmul fast float %1310, %1323
  %1327 = fmul fast float %1310, %1324
  %1328 = fmul fast float %1310, %1325
  %1329 = fadd fast float %1326, %861
  %1330 = fadd fast float %1327, %862
  %1331 = fadd fast float %1328, %863
  %1332 = fsub fast float 1.000000e+00, %1322
  %1333 = fmul fast float %1332, %1329
  %1334 = fmul fast float %1332, %1330
  %1335 = fmul fast float %1332, %1331
  br label %1395

; <label>:1336                                    ; preds = %1295
  %1337 = fmul fast float %1306, %868
  %1338 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1339 = fsub fast float 2.000000e+00, %1338
  %1340 = fmul fast float %1338, 9.921875e-01
  %1341 = fmul fast float %1340, %1339
  %1342 = fadd fast float %1341, 3.906250e-03
  %1343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1342, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  %1345 = fsub fast float %1338, %1344
  %1346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1345)  ; FMax(a,b)
  %1347 = fmul fast float %854, %838
  %1348 = call float @dx.op.unary.f32(i32 6, float %1347)  ; FAbs(value)
  %1349 = fcmp fast ogt float %1348, 0x3EB0C6F7A0000000
  br i1 %1349, label %1350, label %1356, !dx.controlflow.hints !110

; <label>:1350                                    ; preds = %1336
  %1351 = fmul fast float %1347, 0xBFF7154760000000
  %1352 = call float @dx.op.unary.f32(i32 21, float %1351)  ; Exp(value)
  %1353 = fsub fast float 1.000000e+00, %1352
  %1354 = fdiv fast float %1353, %1347
  %1355 = fmul fast float %1354, %864
  br label %1356

; <label>:1356                                    ; preds = %1350, %1336
  %1357 = phi float [ %1355, %1350 ], [ %864, %1336 ]
  %1358 = fadd fast float %1357, %866
  %1359 = fmul fast float %1358, %1346
  %1360 = fmul fast float %851, %1359
  %1361 = fsub fast float -0.000000e+00, %1360
  %1362 = fmul fast float %852, %1359
  %1363 = fsub fast float -0.000000e+00, %1362
  %1364 = fmul fast float %853, %1359
  %1365 = fsub fast float -0.000000e+00, %1364
  %1366 = call float @dx.op.unary.f32(i32 21, float %1361)  ; Exp(value)
  %1367 = call float @dx.op.unary.f32(i32 21, float %1363)  ; Exp(value)
  %1368 = call float @dx.op.unary.f32(i32 21, float %1365)  ; Exp(value)
  %1369 = fmul fast float %880, %880
  %1370 = fadd fast float %1369, 1.000000e+00
  %1371 = fmul fast float %1370, 0x3FAE8EC8A0000000
  %1372 = fmul fast float %1371, %861
  %1373 = fmul fast float %1371, %862
  %1374 = fmul fast float %1371, %863
  %1375 = fmul fast float %880, %859
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = fmul fast float %859, %859
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = fmul fast float %1378, 0x3FB45F3060000000
  %1380 = fmul fast float %1376, %1376
  %1381 = fdiv fast float 1.000000e+00, %1380
  %1382 = fmul fast float %1379, %1381
  %1383 = fmul fast float %1382, %856
  %1384 = fmul fast float %1382, %857
  %1385 = fmul fast float %1382, %858
  %1386 = fadd fast float %1383, %1372
  %1387 = fadd fast float %1384, %1373
  %1388 = fadd fast float %1385, %1374
  %1389 = fsub fast float 1.000000e+00, %1366
  %1390 = fsub fast float 1.000000e+00, %1367
  %1391 = fsub fast float 1.000000e+00, %1368
  %1392 = fmul fast float %1386, %1389
  %1393 = fmul fast float %1387, %1390
  %1394 = fmul fast float %1388, %1391
  br label %1395

; <label>:1395                                    ; preds = %1356, %1307
  %1396 = phi float [ %1333, %1307 ], [ %1392, %1356 ]
  %1397 = phi float [ %1334, %1307 ], [ %1393, %1356 ]
  %1398 = phi float [ %1335, %1307 ], [ %1394, %1356 ]
  %1399 = phi float [ %1322, %1307 ], [ %1366, %1356 ]
  %1400 = phi float [ %1322, %1307 ], [ %1367, %1356 ]
  %1401 = phi float [ %1322, %1307 ], [ %1368, %1356 ]
  br i1 %888, label %1402, label %1600, !dx.controlflow.hints !111

; <label>:1402                                    ; preds = %1395
  %1403 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1404 = fmul fast float %1403, %1303
  %1405 = fsub fast float %1298, %1396
  %1406 = fsub fast float %1299, %1397
  %1407 = fsub fast float %1300, %1398
  %1408 = fmul fast float %1404, %1405
  %1409 = fmul fast float %1404, %1406
  %1410 = fmul fast float %1404, %1407
  %1411 = fadd fast float %1408, %1396
  %1412 = fadd fast float %1409, %1397
  %1413 = fadd fast float %1410, %1398
  %1414 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1399)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1400)  ; FMax(a,b)
  %1416 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1401)  ; FMax(a,b)
  %1417 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1297)  ; FMax(a,b)
  %1418 = call float @dx.op.binary.f32(i32 35, float %1296, float %1306)  ; FMax(a,b)
  %1419 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1418)  ; FMax(a,b)
  %1420 = fdiv fast float %1296, %1419
  %1421 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  %1422 = fdiv fast float %1306, %1419
  %1423 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1424 = fcmp fast une float %1417, 1.000000e+00
  br i1 %1424, label %1425, label %1438, !dx.controlflow.hints !112

; <label>:1425                                    ; preds = %1402
  %1426 = call float @dx.op.unary.f32(i32 23, float %1417)  ; Log(value)
  %1427 = fmul fast float %1426, 0x3FE62E4300000000
  %1428 = fmul fast float %1298, %1427
  %1429 = fsub fast float -0.000000e+00, %1428
  %1430 = fmul fast float %1299, %1427
  %1431 = fsub fast float -0.000000e+00, %1430
  %1432 = fmul fast float %1300, %1427
  %1433 = fsub fast float -0.000000e+00, %1432
  %1434 = fsub fast float 1.000000e+00, %1417
  %1435 = fdiv fast float %1429, %1434
  %1436 = fdiv fast float %1431, %1434
  %1437 = fdiv fast float %1433, %1434
  br label %1438

; <label>:1438                                    ; preds = %1425, %1402
  %1439 = phi float [ %1435, %1425 ], [ %1298, %1402 ]
  %1440 = phi float [ %1436, %1425 ], [ %1299, %1402 ]
  %1441 = phi float [ %1437, %1425 ], [ %1300, %1402 ]
  %1442 = phi float [ %1427, %1425 ], [ 0.000000e+00, %1402 ]
  %1443 = fcmp fast une float %1414, 1.000000e+00
  br i1 %1443, label %1444, label %1451, !dx.controlflow.hints !113

; <label>:1444                                    ; preds = %1438
  %1445 = call float @dx.op.unary.f32(i32 23, float %1414)  ; Log(value)
  %1446 = fmul fast float %1445, 0x3FE62E4300000000
  %1447 = fmul fast float %1411, %1446
  %1448 = fsub fast float -0.000000e+00, %1447
  %1449 = fsub fast float 1.000000e+00, %1414
  %1450 = fdiv fast float %1448, %1449
  br label %1451

; <label>:1451                                    ; preds = %1444, %1438
  %1452 = phi float [ %1450, %1444 ], [ %1411, %1438 ]
  %1453 = phi float [ %1446, %1444 ], [ 0.000000e+00, %1438 ]
  %1454 = fcmp fast une float %1415, 1.000000e+00
  br i1 %1454, label %1455, label %1462, !dx.controlflow.hints !113

; <label>:1455                                    ; preds = %1451
  %1456 = call float @dx.op.unary.f32(i32 23, float %1415)  ; Log(value)
  %1457 = fmul fast float %1456, 0x3FE62E4300000000
  %1458 = fmul fast float %1412, %1457
  %1459 = fsub fast float -0.000000e+00, %1458
  %1460 = fsub fast float 1.000000e+00, %1415
  %1461 = fdiv fast float %1459, %1460
  br label %1462

; <label>:1462                                    ; preds = %1455, %1451
  %1463 = phi float [ %1461, %1455 ], [ %1412, %1451 ]
  %1464 = phi float [ %1457, %1455 ], [ 0.000000e+00, %1451 ]
  %1465 = fcmp fast une float %1416, 1.000000e+00
  br i1 %1465, label %1466, label %1473, !dx.controlflow.hints !113

; <label>:1466                                    ; preds = %1462
  %1467 = call float @dx.op.unary.f32(i32 23, float %1416)  ; Log(value)
  %1468 = fmul fast float %1467, 0x3FE62E4300000000
  %1469 = fmul fast float %1413, %1468
  %1470 = fsub fast float -0.000000e+00, %1469
  %1471 = fsub fast float 1.000000e+00, %1416
  %1472 = fdiv fast float %1470, %1471
  br label %1473

; <label>:1473                                    ; preds = %1466, %1462
  %1474 = phi float [ %1472, %1466 ], [ %1413, %1462 ]
  %1475 = phi float [ %1468, %1466 ], [ 0.000000e+00, %1462 ]
  %1476 = fmul fast float %1439, %1423
  %1477 = fmul fast float %1440, %1423
  %1478 = fmul fast float %1441, %1423
  %1479 = fmul fast float %1442, %1423
  %1480 = fmul fast float %1452, %1421
  %1481 = fmul fast float %1463, %1421
  %1482 = fmul fast float %1474, %1421
  %1483 = fmul fast float %1453, %1421
  %1484 = fmul fast float %1464, %1421
  %1485 = fmul fast float %1475, %1421
  %1486 = fadd fast float %1480, %1476
  %1487 = fadd fast float %1481, %1477
  %1488 = fadd fast float %1482, %1478
  %1489 = fadd fast float %1483, %1479
  %1490 = fadd fast float %1484, %1479
  %1491 = fadd fast float %1485, %1479
  %1492 = fcmp fast une float %1489, 0.000000e+00
  br i1 %1492, label %1493, label %1500, !dx.controlflow.hints !114

; <label>:1493                                    ; preds = %1473
  %1494 = fmul fast float %1489, 0x3FF7154760000000
  %1495 = call float @dx.op.unary.f32(i32 21, float %1494)  ; Exp(value)
  %1496 = fsub fast float 1.000000e+00, %1495
  %1497 = fmul fast float %1486, %1496
  %1498 = fsub fast float -0.000000e+00, %1497
  %1499 = fdiv fast float %1498, %1489
  br label %1500

; <label>:1500                                    ; preds = %1493, %1473
  %1501 = phi float [ %1495, %1493 ], [ 1.000000e+00, %1473 ]
  %1502 = phi float [ %1499, %1493 ], [ %1486, %1473 ]
  %1503 = fcmp fast une float %1490, 0.000000e+00
  br i1 %1503, label %1504, label %1511, !dx.controlflow.hints !114

; <label>:1504                                    ; preds = %1500
  %1505 = fmul fast float %1490, 0x3FF7154760000000
  %1506 = call float @dx.op.unary.f32(i32 21, float %1505)  ; Exp(value)
  %1507 = fsub fast float 1.000000e+00, %1506
  %1508 = fmul fast float %1487, %1507
  %1509 = fsub fast float -0.000000e+00, %1508
  %1510 = fdiv fast float %1509, %1490
  br label %1511

; <label>:1511                                    ; preds = %1504, %1500
  %1512 = phi float [ %1506, %1504 ], [ 1.000000e+00, %1500 ]
  %1513 = phi float [ %1510, %1504 ], [ %1487, %1500 ]
  %1514 = fcmp fast une float %1491, 0.000000e+00
  br i1 %1514, label %1515, label %1522, !dx.controlflow.hints !114

; <label>:1515                                    ; preds = %1511
  %1516 = fmul fast float %1491, 0x3FF7154760000000
  %1517 = call float @dx.op.unary.f32(i32 21, float %1516)  ; Exp(value)
  %1518 = fsub fast float 1.000000e+00, %1517
  %1519 = fmul fast float %1488, %1518
  %1520 = fsub fast float -0.000000e+00, %1519
  %1521 = fdiv fast float %1520, %1491
  br label %1522

; <label>:1522                                    ; preds = %1515, %1511
  %1523 = phi float [ %1517, %1515 ], [ 1.000000e+00, %1511 ]
  %1524 = phi float [ %1521, %1515 ], [ %1488, %1511 ]
  %1525 = fcmp fast ogt float %1421, %1423
  br i1 %1525, label %1526, label %1546

; <label>:1526                                    ; preds = %1522
  %1527 = fsub fast float 1.000000e+00, %1423
  %1528 = fmul fast float %1439, %1527
  %1529 = fmul fast float %1440, %1527
  %1530 = fmul fast float %1441, %1527
  %1531 = fmul fast float %1442, %1527
  %1532 = fcmp fast une float %1531, 0.000000e+00
  br i1 %1532, label %1533, label %1584, !dx.controlflow.hints !115

; <label>:1533                                    ; preds = %1526
  %1534 = fmul fast float %1531, 0x3FF7154760000000
  %1535 = call float @dx.op.unary.f32(i32 21, float %1534)  ; Exp(value)
  %1536 = fsub fast float 1.000000e+00, %1535
  %1537 = fmul fast float %1528, %1536
  %1538 = fsub fast float -0.000000e+00, %1537
  %1539 = fmul fast float %1529, %1536
  %1540 = fsub fast float -0.000000e+00, %1539
  %1541 = fmul fast float %1530, %1536
  %1542 = fsub fast float -0.000000e+00, %1541
  %1543 = fdiv fast float %1538, %1531
  %1544 = fdiv fast float %1540, %1531
  %1545 = fdiv fast float %1542, %1531
  br label %1584

; <label>:1546                                    ; preds = %1522
  %1547 = fsub fast float 1.000000e+00, %1421
  %1548 = fmul fast float %1452, %1547
  %1549 = fmul fast float %1463, %1547
  %1550 = fmul fast float %1474, %1547
  %1551 = fmul fast float %1453, %1547
  %1552 = fmul fast float %1464, %1547
  %1553 = fmul fast float %1475, %1547
  %1554 = fcmp fast une float %1551, 0.000000e+00
  br i1 %1554, label %1555, label %1562, !dx.controlflow.hints !114

; <label>:1555                                    ; preds = %1546
  %1556 = fmul fast float %1551, 0x3FF7154760000000
  %1557 = call float @dx.op.unary.f32(i32 21, float %1556)  ; Exp(value)
  %1558 = fsub fast float 1.000000e+00, %1557
  %1559 = fmul fast float %1548, %1558
  %1560 = fsub fast float -0.000000e+00, %1559
  %1561 = fdiv fast float %1560, %1551
  br label %1562

; <label>:1562                                    ; preds = %1555, %1546
  %1563 = phi float [ %1561, %1555 ], [ %1548, %1546 ]
  %1564 = phi float [ %1557, %1555 ], [ 1.000000e+00, %1546 ]
  %1565 = fcmp fast une float %1552, 0.000000e+00
  br i1 %1565, label %1566, label %1573, !dx.controlflow.hints !114

; <label>:1566                                    ; preds = %1562
  %1567 = fmul fast float %1552, 0x3FF7154760000000
  %1568 = call float @dx.op.unary.f32(i32 21, float %1567)  ; Exp(value)
  %1569 = fsub fast float 1.000000e+00, %1568
  %1570 = fmul fast float %1549, %1569
  %1571 = fsub fast float -0.000000e+00, %1570
  %1572 = fdiv fast float %1571, %1552
  br label %1573

; <label>:1573                                    ; preds = %1566, %1562
  %1574 = phi float [ %1572, %1566 ], [ %1549, %1562 ]
  %1575 = phi float [ %1568, %1566 ], [ 1.000000e+00, %1562 ]
  %1576 = fcmp fast une float %1553, 0.000000e+00
  br i1 %1576, label %1577, label %1584, !dx.controlflow.hints !114

; <label>:1577                                    ; preds = %1573
  %1578 = fmul fast float %1553, 0x3FF7154760000000
  %1579 = call float @dx.op.unary.f32(i32 21, float %1578)  ; Exp(value)
  %1580 = fsub fast float 1.000000e+00, %1579
  %1581 = fmul fast float %1550, %1580
  %1582 = fsub fast float -0.000000e+00, %1581
  %1583 = fdiv fast float %1582, %1553
  br label %1584

; <label>:1584                                    ; preds = %1577, %1573, %1533, %1526
  %1585 = phi float [ %1583, %1577 ], [ %1545, %1533 ], [ %1530, %1526 ], [ %1550, %1573 ]
  %1586 = phi float [ %1574, %1577 ], [ %1544, %1533 ], [ %1529, %1526 ], [ %1574, %1573 ]
  %1587 = phi float [ %1563, %1577 ], [ %1543, %1533 ], [ %1528, %1526 ], [ %1563, %1573 ]
  %1588 = phi float [ %1579, %1577 ], [ %1535, %1533 ], [ 1.000000e+00, %1526 ], [ 1.000000e+00, %1573 ]
  %1589 = phi float [ %1575, %1577 ], [ %1535, %1533 ], [ 1.000000e+00, %1526 ], [ %1575, %1573 ]
  %1590 = phi float [ %1564, %1577 ], [ %1535, %1533 ], [ 1.000000e+00, %1526 ], [ %1564, %1573 ]
  %1591 = fmul fast float %1590, %1502
  %1592 = fmul fast float %1589, %1513
  %1593 = fmul fast float %1588, %1524
  %1594 = fadd fast float %1591, %1587
  %1595 = fadd fast float %1592, %1586
  %1596 = fadd fast float %1593, %1585
  %1597 = fmul fast float %1590, %1501
  %1598 = fmul fast float %1589, %1512
  %1599 = fmul fast float %1588, %1523
  br label %1600

; <label>:1600                                    ; preds = %1584, %1395
  %1601 = phi float [ %1599, %1584 ], [ %1401, %1395 ]
  %1602 = phi float [ %1598, %1584 ], [ %1400, %1395 ]
  %1603 = phi float [ %1597, %1584 ], [ %1399, %1395 ]
  %1604 = phi float [ %1596, %1584 ], [ %1398, %1395 ]
  %1605 = phi float [ %1595, %1584 ], [ %1397, %1395 ]
  %1606 = phi float [ %1594, %1584 ], [ %1396, %1395 ]
  %1607 = fmul fast float %1606, %667
  %1608 = fmul fast float %1605, %667
  %1609 = fmul fast float %1604, %667
  %1610 = fmul fast float %1603, %843
  %1611 = call float @dx.op.dot3.f32(i32 55, float %1603, float %1602, float %1601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1607, float %1608, float %1609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = select i1 %102, float %1611, float %1603
  %1614 = select i1 %102, float %1611, float %1602
  %1615 = select i1 %102, float 1.000000e+00, float %1601
  %1616 = select i1 %102, float %1612, float %1607
  %1617 = select i1 %102, float 0.000000e+00, float %1608
  %1618 = select i1 %102, float 0.000000e+00, float %1609
  %1619 = fmul fast float %1613, %840
  %1620 = fmul fast float %1614, %841
  %1621 = fmul fast float %1615, %842
  %1622 = fadd fast float %1619, %1616
  %1623 = fadd fast float %1620, %1617
  %1624 = fadd fast float %1618, %1621
  %1625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.i32 %1625, 0
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1993, label %1628, !dx.controlflow.hints !116

; <label>:1628                                    ; preds = %1600
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 2
  %1631 = extractvalue %dx.types.CBufRet.f32 %1629, 3
  %1632 = fmul fast float %1630, %44
  %1633 = fmul fast float %1631, %45
  %1634 = fmul fast float %1632, 2.000000e+00
  %1635 = fmul fast float %1633, 2.000000e+00
  %1636 = fsub fast float 1.000000e+00, %1634
  %1637 = fsub fast float 1.000000e+00, %1635
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1641 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1642 = fmul fast float %1636, %1639
  %1643 = fmul fast float %1636, %1640
  %1644 = fmul fast float %1636, %1641
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1649 = fmul fast float %1637, %1646
  %1650 = fmul fast float %1637, %1647
  %1651 = fmul fast float %1637, %1648
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1656 = fadd fast float %1649, %1653
  %1657 = fadd fast float %1656, %1642
  %1658 = fadd fast float %1650, %1654
  %1659 = fadd fast float %1658, %1643
  %1660 = fadd fast float %1651, %1655
  %1661 = fadd fast float %1660, %1644
  %1662 = fmul fast float %1657, %839
  %1663 = fmul fast float %1659, %839
  %1664 = fmul fast float %1661, %839
  %1665 = fmul fast float %1662, %1662
  %1666 = fmul fast float %1663, %1663
  %1667 = fadd fast float %1665, %1666
  %1668 = fmul fast float %1664, %1664
  %1669 = fadd fast float %1667, %1668
  %1670 = call float @dx.op.unary.f32(i32 24, float %1669)  ; Sqrt(value)
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 0
  %1673 = fsub fast float %1670, %1672
  %1674 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1675 = fmul fast float %1673, %1674
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = fadd fast float %1676, -5.000000e-01
  %1678 = fmul fast float %1677, 2.000000e+00
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1681 = call float @dx.op.binary.f32(i32 36, float %1680, float %1678)  ; FMin(a,b)
  %1682 = fsub fast float -0.000000e+00, %1680
  %1683 = fcmp fast ogt float %1681, %1682
  br i1 %1683, label %1684, label %1993, !dx.controlflow.hints !117

; <label>:1684                                    ; preds = %1628
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 3
  %1687 = fcmp fast ogt float %1686, 0.000000e+00
  br i1 %1687, label %1688, label %1763, !dx.controlflow.hints !118

; <label>:1688                                    ; preds = %1684
  %1689 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1690 = extractvalue %dx.types.Dimensions %1689, 0
  %1691 = sitofp i32 %1690 to float
  %1692 = extractvalue %dx.types.Dimensions %1689, 1
  %1693 = sitofp i32 %1692 to float
  %1694 = fmul fast float %1632, %1691
  %1695 = fmul fast float %1633, %1693
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1698 = fsub fast float -0.000000e+00, %1697
  %1699 = fptoui float %1698 to i32
  %1700 = fptoui float %1694 to i32
  %1701 = fptoui float %1695 to i32
  %1702 = and i32 %1699, 31
  %1703 = lshr i32 %1700, %1702
  %1704 = lshr i32 %1701, %1702
  %1705 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1699, i32 %1703, i32 %1704, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = fcmp fast olt float %1706, -1.000000e+00
  %1708 = fcmp fast ogt float %1706, -1.000000e+00
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1711 = select i1 %1708, float %1710, float 1.000000e+00
  %1712 = fadd fast float %1706, 1.000000e+00
  %1713 = fmul fast float %1711, %1712
  %1714 = call float @dx.op.unary.f32(i32 6, float %1713)  ; FAbs(value)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1709, 3
  %1716 = fcmp fast oge float %1714, %1715
  %1717 = select i1 %1716, float 0x4197782600000000, float %1714
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.CBufRet.f32 %1718, 2
  %1722 = select i1 %1707, float %1719, float %1639
  %1723 = select i1 %1707, float %1720, float %1640
  %1724 = select i1 %1707, float %1721, float %1641
  %1725 = fmul fast float %1722, %1636
  %1726 = fmul fast float %1723, %1636
  %1727 = fmul fast float %1724, %1636
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1732 = select i1 %1707, float %1729, float %1646
  %1733 = select i1 %1707, float %1730, float %1647
  %1734 = select i1 %1707, float %1731, float %1648
  %1735 = fmul fast float %1732, %1637
  %1736 = fmul fast float %1733, %1637
  %1737 = fmul fast float %1734, %1637
  %1738 = fadd fast float %1735, %1725
  %1739 = fadd fast float %1736, %1726
  %1740 = fadd fast float %1737, %1727
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1745 = select i1 %1707, float %1742, float %1653
  %1746 = select i1 %1707, float %1743, float %1654
  %1747 = select i1 %1707, float %1744, float %1655
  %1748 = fadd fast float %1738, %1745
  %1749 = fadd fast float %1739, %1746
  %1750 = fadd fast float %1740, %1747
  %1751 = fmul fast float %1748, %1717
  %1752 = fmul fast float %1749, %1717
  %1753 = fmul fast float %1750, %1717
  %1754 = fmul fast float %1751, %1751
  %1755 = fmul fast float %1752, %1752
  %1756 = fadd fast float %1754, %1755
  %1757 = fmul fast float %1753, %1753
  %1758 = fadd fast float %1756, %1757
  %1759 = call float @dx.op.unary.f32(i32 24, float %1758)  ; Sqrt(value)
  %1760 = fsub fast float %1759, %1672
  %1761 = fmul fast float %1760, %1674
  %1762 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  br label %1763

; <label>:1763                                    ; preds = %1688, %1684
  %1764 = phi float [ %1762, %1688 ], [ 1.000000e+00, %1684 ]
  %1765 = fmul fast float %1681, 5.000000e-01
  %1766 = fadd fast float %1765, 5.000000e-01
  %1767 = call float @dx.op.unary.f32(i32 22, float %1766)  ; Frc(value)
  %1768 = call float @dx.op.unary.f32(i32 27, float %1767)  ; Round_ni(value)
  %1769 = call float @dx.op.unary.f32(i32 22, float %1767)  ; Frc(value)
  %1770 = fmul fast float %1769, 2.000000e+00
  %1771 = fadd fast float %1770, -1.000000e+00
  %1772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1632, float %1633, float %1768, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.ResRet.f32 %1772, 3
  %1777 = fadd fast float %1773, -5.000000e-01
  %1778 = fadd fast float %1775, -5.000000e-01
  %1779 = fmul fast float %1777, 0xBFD5555560000000
  %1780 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1778, float %1779)  ; FMad(a,b,c)
  %1781 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1774, float 0.000000e+00)  ; FMad(a,b,c)
  %1782 = fadd fast float %1781, %1776
  %1783 = fmul fast float %1777, -7.500000e-01
  %1784 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1778, float %1783)  ; FMad(a,b,c)
  %1785 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1774, float 0.000000e+00)  ; FMad(a,b,c)
  %1786 = fadd fast float %1785, %1776
  %1787 = call float @dx.op.binary.f32(i32 35, float %1780, float -1.000000e+00)  ; FMax(a,b)
  %1788 = call float @dx.op.binary.f32(i32 35, float %1782, float -1.000000e+00)  ; FMax(a,b)
  %1789 = call float @dx.op.binary.f32(i32 35, float %1784, float -1.000000e+00)  ; FMax(a,b)
  %1790 = call float @dx.op.binary.f32(i32 35, float %1786, float -1.000000e+00)  ; FMax(a,b)
  %1791 = call float @dx.op.binary.f32(i32 36, float %1787, float 1.000000e+00)  ; FMin(a,b)
  %1792 = call float @dx.op.binary.f32(i32 36, float %1788, float 1.000000e+00)  ; FMin(a,b)
  %1793 = call float @dx.op.binary.f32(i32 36, float %1789, float 1.000000e+00)  ; FMin(a,b)
  %1794 = call float @dx.op.binary.f32(i32 36, float %1790, float 1.000000e+00)  ; FMin(a,b)
  %1795 = fcmp fast olt float %1791, 0x3FEFFF8020000000
  br i1 %1795, label %1796, label %1911, !dx.controlflow.hints !119

; <label>:1796                                    ; preds = %1763
  %1797 = extractvalue %dx.types.CBufRet.f32 %1679, 3
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1803 = fsub fast float %1799, %1791
  %1804 = fsub fast float %1800, %1792
  %1805 = fsub fast float %1801, %1793
  %1806 = fsub fast float %1802, %1794
  %1807 = fmul fast float %1803, %1797
  %1808 = fmul fast float %1804, %1797
  %1809 = fmul fast float %1805, %1797
  %1810 = fmul fast float %1806, %1797
  %1811 = fadd fast float %1807, %1791
  %1812 = fadd fast float %1808, %1792
  %1813 = fsub fast float -0.000000e+00, %1812
  %1814 = fadd fast float %1809, %1793
  %1815 = fadd fast float %1810, %1794
  %1816 = fmul fast float %1811, %1811
  %1817 = fsub fast float %1812, %1816
  %1818 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1817)  ; FMax(a,b)
  %1819 = fdiv fast float 1.000000e+00, %1818
  %1820 = fmul fast float %1812, %1811
  %1821 = fsub fast float %1814, %1820
  %1822 = fsub fast float %1771, %1811
  %1823 = fmul fast float %1771, %1771
  %1824 = fsub fast float %1823, %1812
  %1825 = fmul fast float %1822, %1819
  %1826 = fmul fast float %1825, %1821
  %1827 = fsub fast float %1824, %1826
  %1828 = fmul fast float %1812, %1812
  %1829 = fsub fast float %1815, %1828
  %1830 = fmul fast float %1821, %1821
  %1831 = fmul fast float %1830, %1819
  %1832 = fsub fast float %1829, %1831
  %1833 = fdiv fast float %1827, %1832
  %1834 = fmul fast float %1821, %1833
  %1835 = fsub fast float %1822, %1834
  %1836 = fmul fast float %1835, %1819
  %1837 = fmul fast float %1836, %1811
  %1838 = fsub fast float 1.000000e+00, %1837
  %1839 = fmul fast float %1812, %1833
  %1840 = fsub fast float %1838, %1839
  %1841 = fmul fast float %1836, %1836
  %1842 = fmul fast float %1833, 4.000000e+00
  %1843 = fmul fast float %1842, %1840
  %1844 = fsub fast float %1841, %1843
  %1845 = call float @dx.op.unary.f32(i32 24, float %1844)  ; Sqrt(value)
  %1846 = fcmp fast oge float %1836, 0.000000e+00
  %1847 = fsub fast float -0.000000e+00, %1845
  %1848 = select i1 %1846, float %1847, float %1845
  %1849 = fsub fast float %1848, %1836
  %1850 = fdiv fast float %1849, %1833
  %1851 = fdiv fast float %1840, %1849
  %1852 = fmul fast float %1850, 5.000000e-01
  %1853 = fmul fast float %1851, 2.000000e+00
  %1854 = select i1 %1846, float %1852, float %1853
  %1855 = select i1 %1846, float %1853, float %1852
  %1856 = call float @dx.op.binary.f32(i32 35, float %1854, float %1855)  ; FMax(a,b)
  %1857 = call float @dx.op.binary.f32(i32 36, float %1854, float %1855)  ; FMin(a,b)
  %1858 = fcmp fast ogt float %1771, %1857
  br i1 %1858, label %1859, label %1869

; <label>:1859                                    ; preds = %1796
  %1860 = fsub fast float %1771, %1857
  %1861 = fsub fast float %1856, %1857
  %1862 = fmul fast float %1860, %1861
  %1863 = fmul fast float %1856, %1771
  %1864 = fadd fast float %1856, %1771
  %1865 = fmul fast float %1864, %1811
  %1866 = fadd fast float %1863, %1812
  %1867 = fsub fast float %1866, %1865
  %1868 = fdiv fast float %1867, %1862
  br label %1869

; <label>:1869                                    ; preds = %1859, %1796
  %1870 = phi float [ %1868, %1859 ], [ 0.000000e+00, %1796 ]
  %1871 = fcmp fast ogt float %1771, %1856
  %1872 = fsub fast float %1771, %1856
  br i1 %1871, label %1873, label %1883

; <label>:1873                                    ; preds = %1869
  %1874 = fsub fast float %1856, %1857
  %1875 = fmul fast float %1874, %1872
  %1876 = fmul fast float %1857, %1771
  %1877 = fadd fast float %1857, %1771
  %1878 = fmul fast float %1877, %1811
  %1879 = fsub fast float %1813, %1876
  %1880 = fadd fast float %1879, %1878
  %1881 = fdiv fast float %1880, %1875
  %1882 = fadd fast float %1881, %1870
  br label %1883

; <label>:1883                                    ; preds = %1873, %1869
  %1884 = phi float [ %1882, %1873 ], [ %1870, %1869 ]
  %1885 = fsub fast float %1771, %1857
  %1886 = fmul fast float %1885, %1872
  %1887 = fmul fast float %1857, %1856
  %1888 = fadd fast float %1857, %1856
  %1889 = fmul fast float %1888, %1811
  %1890 = fadd fast float %1887, %1812
  %1891 = fsub fast float %1890, %1889
  %1892 = fdiv fast float %1891, %1886
  %1893 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1894 = fcmp fast oeq float %686, 0.000000e+00
  %1895 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1896 = fcmp fast oeq float %1895, 0.000000e+00
  %1897 = or i1 %1894, %1896
  %1898 = fmul fast float %1895, 2.000000e+00
  %1899 = fadd fast float %1680, %1681
  %1900 = fdiv fast float %1899, %1898
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1902 = fmul fast float %1901, 2.000000e+00
  %1903 = fsub fast float 3.000000e+00, %1902
  %1904 = fmul fast float %1901, %1901
  %1905 = fmul fast float %1904, %1903
  %1906 = select i1 %1897, float 1.000000e+00, float %1905
  %1907 = fmul fast float %1892, %686
  %1908 = fadd fast float %1893, %1907
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = fmul fast float %1906, %1909
  br label %1911

; <label>:1911                                    ; preds = %1883, %1763
  %1912 = phi float [ %1910, %1883 ], [ 0.000000e+00, %1763 ]
  %1913 = fsub fast float 1.000000e+00, %1912
  %1914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1632, float %1633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.i32 %1916, 2
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %1924, label %1919

; <label>:1919                                    ; preds = %1911
  %1920 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1921 = fadd fast float %1915, -1.000000e+00
  %1922 = fmul fast float %1920, %1921
  %1923 = fadd fast float %1922, 1.000000e+00
  br label %1924

; <label>:1924                                    ; preds = %1919, %1911
  %1925 = phi float [ %1923, %1919 ], [ %1913, %1911 ]
  br i1 %1687, label %1926, label %1944

; <label>:1926                                    ; preds = %1924
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1929 = fsub fast float %1764, %1928
  %1930 = call float @dx.op.unary.f32(i32 7, float %1929)  ; Saturate(value)
  %1931 = fsub fast float %1764, %1686
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = fsub fast float %1930, %1932
  %1934 = fsub fast float %1766, %1932
  %1935 = fdiv fast float %1934, %1933
  %1936 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1937 = fmul fast float %1936, 2.000000e+00
  %1938 = fsub fast float 3.000000e+00, %1937
  %1939 = fsub fast float %1915, %1925
  %1940 = fmul fast float %1936, %1936
  %1941 = fmul fast float %1940, %1939
  %1942 = fmul fast float %1941, %1938
  %1943 = fadd fast float %1942, %1925
  br label %1944

; <label>:1944                                    ; preds = %1926, %1924
  %1945 = phi float [ %1943, %1926 ], [ %1925, %1924 ]
  %1946 = call float @dx.op.binary.f32(i32 35, float %1915, float %1945)  ; FMax(a,b)
  %1947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.i32 %1947, 2
  %1949 = and i32 %1948, 1
  %1950 = icmp eq i32 %1949, 0
  %1951 = fcmp fast une float %1946, 1.000000e+00
  %1952 = and i1 %1951, %1950
  br i1 %1952, label %1953, label %1972

; <label>:1953                                    ; preds = %1944
  %1954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1632, float %1633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.ResRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.ResRet.f32 %1954, 2
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 1
  %1960 = fmul fast float %1959, %1955
  %1961 = fmul fast float %1959, %1956
  %1962 = fmul fast float %1959, %1957
  %1963 = fcmp fast ogt float %1915, 0x3FEFFF2E40000000
  %1964 = fsub fast float 1.000000e+00, %1946
  %1965 = fsub fast float 1.000000e+00, %1915
  %1966 = fdiv fast float %1964, %1965
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = select i1 %1963, float 0.000000e+00, float %1967
  %1969 = fmul fast float %1960, %1968
  %1970 = fmul fast float %1961, %1968
  %1971 = fmul fast float %1962, %1968
  br label %1972

; <label>:1972                                    ; preds = %1953, %1944
  %1973 = phi float [ 0.000000e+00, %1944 ], [ %1969, %1953 ]
  %1974 = phi float [ 0.000000e+00, %1944 ], [ %1970, %1953 ]
  %1975 = phi float [ 0.000000e+00, %1944 ], [ %1971, %1953 ]
  %1976 = fmul fast float %1973, %667
  %1977 = fmul fast float %1974, %667
  %1978 = fmul fast float %1975, %667
  %1979 = fmul fast float %1946, %1610
  %1980 = call float @dx.op.dot3.f32(i32 55, float %1946, float %1946, float %1946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1976, float %1977, float %1978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = select i1 %102, float %1980, float %1946
  %1983 = select i1 %102, float 1.000000e+00, float %1946
  %1984 = select i1 %102, float %1981, float %1976
  %1985 = select i1 %102, float 0.000000e+00, float %1977
  %1986 = select i1 %102, float 0.000000e+00, float %1978
  %1987 = fmul fast float %1982, %1622
  %1988 = fmul fast float %1982, %1623
  %1989 = fmul fast float %1983, %1624
  %1990 = fadd fast float %1987, %1984
  %1991 = fadd fast float %1988, %1985
  %1992 = fadd fast float %1986, %1989
  br label %1993

; <label>:1993                                    ; preds = %1972, %1628, %1600, %835
  %1994 = phi float [ %840, %835 ], [ %1622, %1600 ], [ %1990, %1972 ], [ %1622, %1628 ]
  %1995 = phi float [ %841, %835 ], [ %1623, %1600 ], [ %1991, %1972 ], [ %1623, %1628 ]
  %1996 = phi float [ %842, %835 ], [ %1624, %1600 ], [ %1992, %1972 ], [ %1624, %1628 ]
  %1997 = phi float [ %843, %835 ], [ %1610, %1600 ], [ %1979, %1972 ], [ %1610, %1628 ]
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 2
  %2000 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2001 = fmul fast float %1999, %44
  %2002 = fmul fast float %2000, %45
  %2003 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2004 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2005 = select i1 %697, i32 2, i32 0
  %2006 = or i32 %2005, 1
  %2007 = uitofp i32 %2006 to float
  %2008 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %2003, float %2004, float %2007, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.ResRet.f32 %2008, 1
  %2011 = extractvalue %dx.types.ResRet.f32 %2008, 2
  %2012 = extractvalue %dx.types.ResRet.f32 %2008, 3
  %2013 = add nuw nsw i32 %2005, 2
  %2014 = uitofp i32 %2013 to float
  %2015 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %2003, float %2004, float %2014, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.ResRet.f32 %2015, 1
  %2018 = extractvalue %dx.types.ResRet.f32 %2015, 2
  %2019 = extractvalue %dx.types.ResRet.f32 %2015, 3
  %2020 = call float @dx.op.binary.f32(i32 35, float %2010, float %2011)  ; FMax(a,b)
  %2021 = call float @dx.op.binary.f32(i32 35, float %2009, float %2020)  ; FMax(a,b)
  %2022 = call float @dx.op.binary.f32(i32 35, float %2021, float %2012)  ; FMax(a,b)
  %2023 = call float @dx.op.binary.f32(i32 36, float %2017, float %2018)  ; FMin(a,b)
  %2024 = call float @dx.op.binary.f32(i32 36, float %2016, float %2023)  ; FMin(a,b)
  %2025 = call float @dx.op.binary.f32(i32 36, float %2024, float %2019)  ; FMin(a,b)
  %2026 = fmul fast float %2022, 2.550000e+02
  %2027 = fadd fast float %2026, 0x3F70101020000000
  %2028 = fptoui float %2027 to i32
  %2029 = fmul fast float %2025, 2.550000e+02
  %2030 = fadd fast float %2029, 0x3F70101020000000
  %2031 = fptoui float %2030 to i32
  %2032 = icmp ult i32 %2028, %2031
  br i1 %2032, label %2033, label %2085

; <label>:2033                                    ; preds = %1993
  %2034 = fcmp fast ogt float %36, 9.843750e-01
  %2035 = fadd fast float %839, -4.000000e+00
  %2036 = select i1 %2034, float -4.000000e+00, float %2035
  %2037 = call float @dx.op.binary.f32(i32 35, float %2036, float 0.000000e+00)  ; FMax(a,b)
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 0
  %2040 = fadd fast float %2039, %2037
  %2041 = extractvalue %dx.types.CBufRet.f32 %2038, 2
  %2042 = fmul fast float %2040, %2041
  %2043 = call float @dx.op.unary.f32(i32 23, float %2042)  ; Log(value)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2045 = fmul fast float %2044, %2043
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 2
  %2048 = fmul fast float %2045, %2047
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = uitofp i32 %2028 to float
  %2051 = uitofp i32 %2031 to float
  %2052 = fadd fast float %2050, 5.000000e-01
  %2053 = fadd fast float %2051, 5.000000e-01
  %2054 = fmul fast float %2047, %2052
  %2055 = fmul fast float %2047, %2053
  %2056 = fadd fast float %2054, 0x3F0FFB4800000000
  %2057 = fadd fast float %2055, 0xBF0FFB4800000000
  %2058 = call float @dx.op.binary.f32(i32 35, float %2049, float %2056)  ; FMax(a,b)
  %2059 = call float @dx.op.binary.f32(i32 36, float %2058, float %2057)  ; FMin(a,b)
  %2060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2061 = extractvalue %dx.types.CBufRet.f32 %2060, 1
  %2062 = extractvalue %dx.types.CBufRet.f32 %2060, 2
  %2063 = extractvalue %dx.types.CBufRet.f32 %2060, 0
  %2064 = select i1 %697, float %2063, float 0.000000e+00
  %2065 = fmul fast float %2061, %2059
  %2066 = fadd fast float %2064, %2065
  %2067 = fadd fast float %2064, %2062
  %2068 = fsub fast float %2061, %2062
  %2069 = fadd fast float %2068, %2064
  %2070 = call float @dx.op.binary.f32(i32 35, float %2066, float %2067)  ; FMax(a,b)
  %2071 = call float @dx.op.binary.f32(i32 36, float %2070, float %2069)  ; FMin(a,b)
  %2072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %2003, float %2004, float %2071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %2003, float %2004, float %2071, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = extractvalue %dx.types.ResRet.f32 %2076, 2
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 1
  %2082 = fmul fast float %2081, %2077
  %2083 = fmul fast float %2081, %2078
  %2084 = fmul fast float %2081, %2079
  br label %2085

; <label>:2085                                    ; preds = %2033, %1993
  %2086 = phi float [ %2073, %2033 ], [ 1.000000e+00, %1993 ]
  %2087 = phi float [ %2074, %2033 ], [ 1.000000e+00, %1993 ]
  %2088 = phi float [ %2075, %2033 ], [ 1.000000e+00, %1993 ]
  %2089 = phi float [ %2082, %2033 ], [ 0.000000e+00, %1993 ]
  %2090 = phi float [ %2083, %2033 ], [ 0.000000e+00, %1993 ]
  %2091 = phi float [ %2084, %2033 ], [ 0.000000e+00, %1993 ]
  %2092 = fmul fast float %2089, %667
  %2093 = fmul fast float %2090, %667
  %2094 = fmul fast float %2091, %667
  %2095 = fmul fast float %2086, %1997
  %2096 = call float @dx.op.dot3.f32(i32 55, float %2086, float %2087, float %2088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2097 = call float @dx.op.dot3.f32(i32 55, float %2092, float %2093, float %2094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2098 = select i1 %102, float %2096, float %2086
  %2099 = select i1 %102, float %2096, float %2087
  %2100 = select i1 %102, float 1.000000e+00, float %2088
  %2101 = select i1 %102, float %2097, float %2092
  %2102 = select i1 %102, float 0.000000e+00, float %2093
  %2103 = select i1 %102, float 0.000000e+00, float %2094
  %2104 = fmul fast float %2098, %1994
  %2105 = fmul fast float %2099, %1995
  %2106 = fmul fast float %2100, %1996
  %2107 = fadd fast float %2104, %2101
  %2108 = fadd fast float %2105, %2102
  %2109 = fadd fast float %2103, %2106
  %2110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.i32 %2110, 3
  %2112 = and i32 %2111, 3
  %2113 = icmp ne i32 %2112, 0
  %2114 = and i32 %2111, 4
  %2115 = icmp ne i32 %2114, 0
  %2116 = and i1 %2113, %2115
  %2117 = and i1 %102, %2116
  br i1 %2117, label %2118, label %2124

; <label>:2118                                    ; preds = %2085
  %2119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2120 = extractvalue %dx.types.CBufRet.f32 %2119, 1
  %2121 = fadd fast float %2095, -1.000000e+00
  %2122 = fmul fast float %2120, %2121
  %2123 = fadd fast float %2122, 1.000000e+00
  br label %2124

; <label>:2124                                    ; preds = %2118, %2085
  %2125 = phi float [ %2123, %2118 ], [ %2095, %2085 ]
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  br i1 %102, label %2128, label %2150

; <label>:2128                                    ; preds = %2124
  %2129 = fadd fast float %2107, %2108
  %2130 = fmul fast float %2127, %2129
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 3
  %2133 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %2134 = fsub fast float %675, %2133
  %2135 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %2136 = fmul fast float %2134, %2135
  %2137 = call float @dx.op.unary.f32(i32 7, float %2136)  ; Saturate(value)
  %2138 = fsub fast float %2137, %2132
  %2139 = fmul fast float %2138, %2125
  %2140 = fadd fast float %2139, %2132
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = fsub fast float %2140, %2142
  %2144 = fmul fast float %2143, 1.000000e+01
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = fsub fast float %643, %667
  %2147 = fmul fast float %2145, %2146
  %2148 = fadd fast float %2147, %667
  %2149 = fmul fast float %2148, %2140
  br label %2159

; <label>:2150                                    ; preds = %2124
  %2151 = fmul fast float %2127, %2107
  %2152 = fmul fast float %2127, %2108
  %2153 = fmul fast float %2127, %2109
  %2154 = call float @dx.op.binary.f32(i32 35, float %2152, float %2153)  ; FMax(a,b)
  %2155 = call float @dx.op.binary.f32(i32 35, float %2151, float %2154)  ; FMax(a,b)
  %2156 = call float @dx.op.binary.f32(i32 35, float %2155, float %667)  ; FMax(a,b)
  %2157 = fcmp fast ugt float %2156, 0x3F10000000000000
  br i1 %2157, label %2159, label %2158

; <label>:2158                                    ; preds = %2150
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2159

; <label>:2159                                    ; preds = %2158, %2150, %2128
  %2160 = phi float [ %2130, %2128 ], [ %2151, %2158 ], [ %2151, %2150 ]
  %2161 = phi float [ %2149, %2128 ], [ %2152, %2158 ], [ %2152, %2150 ]
  %2162 = phi float [ %2148, %2128 ], [ %2153, %2158 ], [ %2153, %2150 ]
  %2163 = phi float [ %2148, %2128 ], [ %667, %2158 ], [ %667, %2150 ]
  %2164 = fadd fast float %498, 0x3FE3C6EF40000000
  %2165 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2166 = call float @dx.op.unary.f32(i32 23, float %2160)  ; Log(value)
  %2167 = fadd fast float %2166, -7.000000e+00
  %2168 = call float @dx.op.unary.f32(i32 21, float %2167)  ; Exp(value)
  %2169 = fmul fast float %2165, 2.000000e+00
  %2170 = fadd fast float %2169, -1.000000e+00
  %2171 = fmul fast float %2168, %2170
  %2172 = fcmp fast ogt float %2160, 0.000000e+00
  %2173 = select i1 %2172, float %2171, float 0.000000e+00
  %2174 = fadd fast float %2173, %2160
  %2175 = fadd fast float %498, 0x3FF3C6EF40000000
  %2176 = call float @dx.op.unary.f32(i32 22, float %2175)  ; Frc(value)
  %2177 = call float @dx.op.unary.f32(i32 23, float %2161)  ; Log(value)
  %2178 = fadd fast float %2177, -7.000000e+00
  %2179 = call float @dx.op.unary.f32(i32 21, float %2178)  ; Exp(value)
  %2180 = fmul fast float %2176, 2.000000e+00
  %2181 = fadd fast float %2180, -1.000000e+00
  %2182 = fmul fast float %2179, %2181
  %2183 = fcmp fast ogt float %2161, 0.000000e+00
  %2184 = select i1 %2183, float %2182, float 0.000000e+00
  %2185 = fadd fast float %2184, %2161
  %2186 = fadd fast float %498, 0x3FFDAA66E0000000
  %2187 = call float @dx.op.unary.f32(i32 22, float %2186)  ; Frc(value)
  %2188 = call float @dx.op.unary.f32(i32 23, float %2162)  ; Log(value)
  %2189 = fadd fast float %2188, -6.000000e+00
  %2190 = call float @dx.op.unary.f32(i32 21, float %2189)  ; Exp(value)
  %2191 = fmul fast float %2187, 2.000000e+00
  %2192 = fadd fast float %2191, -1.000000e+00
  %2193 = fmul fast float %2190, %2192
  %2194 = fcmp fast ogt float %2162, 0.000000e+00
  %2195 = select i1 %2194, float %2193, float 0.000000e+00
  %2196 = fadd fast float %2195, %2162
  %2197 = select i1 %102, float %2161, float %2185
  %2198 = select i1 %102, float %2162, float %2196
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2199 = call float @dx.op.binary.f32(i32 36, float %2174, float 3.225500e+04)  ; FMin(a,b)
  %2200 = call float @dx.op.binary.f32(i32 36, float %2197, float 3.225500e+04)  ; FMin(a,b)
  %2201 = call float @dx.op.binary.f32(i32 36, float %2198, float 3.225500e+04)  ; FMin(a,b)
  %2202 = call float @dx.op.binary.f32(i32 36, float %2163, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2199)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2200)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2201)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2202)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2163)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2163)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2163)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2163)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
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
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 1, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !59}
!35 = !{!36, !55, null}
!36 = !{!37, !40, !41, !43, !46, !48, !50, !52, !54}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !45}
!44 = !{i32 3}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 4, i8 0, !45}
!47 = !{i32 5}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!49 = !{i32 8}
!50 = !{i32 6, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 6, i8 0, !51}
!51 = !{i32 3, i32 1}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!53 = !{i32 4}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!58 = !{i32 1}
!59 = !{i32 0, i64 24}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!74 = distinct !{!74, !75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!75 = distinct !{!75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!76 = distinct !{!76, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!77 = distinct !{!77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!78 = distinct !{!78, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!79 = distinct !{!79, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!80 = distinct !{!80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!81 = distinct !{!81, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!82 = distinct !{!82, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!83 = distinct !{!83, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!84 = distinct !{!84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!85 = distinct !{!85, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!86 = distinct !{!86, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!87 = distinct !{!87, !88, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!88 = distinct !{!88, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"\01?sort@@YAXAIAM00@Z: %c"}
!91 = distinct !{!91, !"\01?sort@@YAXAIAM00@Z"}
!92 = !{!93, !94, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!93 = distinct !{!93, !91, !"\01?sort@@YAXAIAM00@Z: %a"}
!94 = distinct !{!94, !91, !"\01?sort@@YAXAIAM00@Z: %b"}
!95 = !{!94}
!96 = !{!93, !90, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!97 = !{!93}
!98 = !{!94, !90, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!99 = !{!100}
!100 = distinct !{!100, !101, !"\01?sort@@YAXAIAM00@Z: %c"}
!101 = distinct !{!101, !"\01?sort@@YAXAIAM00@Z"}
!102 = !{!103, !104, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!103 = distinct !{!103, !101, !"\01?sort@@YAXAIAM00@Z: %a"}
!104 = distinct !{!104, !101, !"\01?sort@@YAXAIAM00@Z: %b"}
!105 = !{!104}
!106 = !{!103, !100, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!107 = !{!103}
!108 = !{!104, !100, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}

