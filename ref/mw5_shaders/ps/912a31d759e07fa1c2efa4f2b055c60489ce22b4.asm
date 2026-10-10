;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        6     NONE   float   xyzw
; COLOR                    3   xyz         7     NONE    uint   x z 
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
; shader hash: 105979031d3fdb9da6240eb5483ae73a
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
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t1     1
;                                   texture    byte         r/o     T14             t2     1
;                                   texture     f32          3d     T15     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %40
  %48 = fmul fast float %46, %41
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, 2.000000e+00
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %48, 2.000000e+00
  %55 = fmul fast float %54, %51
  %56 = fsub fast float 1.000000e+00, %53
  %57 = fsub fast float 1.000000e+00, %55
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %56, %59
  %63 = fmul fast float %56, %60
  %64 = fmul fast float %56, %61
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %57, %66
  %70 = fmul fast float %57, %67
  %71 = fmul fast float %57, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %76, %62
  %78 = fadd fast float %70, %74
  %79 = fadd fast float %78, %63
  %80 = fadd fast float %71, %75
  %81 = fadd fast float %80, %64
  %82 = fmul fast float %77, %43
  %83 = fmul fast float %79, %43
  %84 = fmul fast float %81, %43
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 3
  %87 = and i32 %86, 3
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %86, 4
  %90 = icmp ne i32 %89, 0
  %91 = and i1 %88, %90
  br i1 %91, label %92, label %101

; <label>:92                                      ; preds = %0
  %93 = fmul fast float %51, %48
  %94 = fmul fast float %50, %47
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %94, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast olt float %97, %99
  br label %104

; <label>:101                                     ; preds = %0
  %102 = icmp eq i32 %89, 0
  %103 = and i1 %88, %102
  br label %104

; <label>:104                                     ; preds = %101, %92
  %105 = phi i1 [ %100, %92 ], [ %103, %101 ]
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, %47
  %110 = fmul fast float %108, %48
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 114688
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %109, float 0.000000e+00
  %116 = select i1 %114, float %110, float 0.000000e+00
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, 2.550000e+02
  %120 = fptoui float %119 to i32
  %121 = select i1 %114, i32 %120, i32 0
  %122 = mul i32 %21, 208
  %123 = add i32 %122, 188
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %86, 114688
  %127 = and i32 %86, 8
  %128 = icmp ne i32 %127, 0
  %129 = or i1 %105, %128
  %130 = select i1 %129, i32 %126, i32 16384
  %131 = and i32 %130, %125
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %104
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %134

; <label>:134                                     ; preds = %133, %104
  %135 = and i32 %125, 512
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

; <label>:137                                     ; preds = %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %139, %47
  %142 = fmul fast float %140, %48
  %143 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %145 = fdiv fast float %143, %144
  %146 = fcmp fast ogt float %145, 0x3FFC71C720000000
  br i1 %146, label %147, label %153

; <label>:147                                     ; preds = %137
  %148 = fdiv fast float 0x3FFC71C720000000, %145
  %149 = fmul fast float %148, %142
  %150 = fsub fast float 1.000000e+00, %148
  %151 = fmul fast float %150, 5.000000e-01
  %152 = fadd fast float %151, %149
  br label %161

; <label>:153                                     ; preds = %137
  %154 = fcmp fast olt float %145, 0x3FFC71C720000000
  br i1 %154, label %155, label %161

; <label>:155                                     ; preds = %153
  %156 = fmul fast float %141, 5.625000e-01
  %157 = fmul fast float %156, %145
  %158 = fmul fast float %145, 2.812500e-01
  %159 = fsub fast float 5.000000e-01, %158
  %160 = fadd fast float %159, %157
  br label %161

; <label>:161                                     ; preds = %155, %153, %147, %134
  %162 = phi float [ %37, %134 ], [ %141, %147 ], [ %160, %155 ], [ %141, %153 ]
  %163 = phi float [ %38, %134 ], [ %152, %147 ], [ %142, %155 ], [ %142, %153 ]
  %164 = add i32 %22, 72
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = extractvalue %dx.types.ResRet.i32 %165, 1
  %168 = bitcast i32 %166 to float
  %169 = bitcast i32 %167 to float
  %170 = fmul fast float %168, %37
  %171 = fmul fast float %169, %38
  %172 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %173 = call float @dx.op.unary.f32(i32 22, float %171)  ; Frc(value)
  %174 = and i32 %125, 16
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float 1.000000e+00, float %39
  %177 = icmp eq i32 %174, 0
  br i1 %177, label %197, label %178, !dx.controlflow.hints !59

; <label>:178                                     ; preds = %161
  %179 = add i32 %122, 64
  %180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fadd fast float %181, 1.000000e+00
  %183 = fmul fast float %182, %39
  %184 = fsub fast float %183, %181
  %185 = fsub fast float %182, %184
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fsub fast float 1.000000e+00, %183
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fsub fast float %186, %188
  %190 = fsub fast float %176, %188
  %191 = fdiv fast float %190, %189
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fmul fast float %192, 2.000000e+00
  %194 = fsub fast float 3.000000e+00, %193
  %195 = fmul fast float %192, %192
  %196 = fmul fast float %195, %194
  br label %197

; <label>:197                                     ; preds = %178, %161
  %198 = phi float [ %196, %178 ], [ %176, %161 ]
  %199 = fcmp fast ogt float %198, 0.000000e+00
  br i1 %199, label %201, label %200

; <label>:200                                     ; preds = %197
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %201

; <label>:201                                     ; preds = %200, %197
  %202 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %203 = fmul fast float %47, 5.000000e-01
  %204 = fmul fast float %48, 5.000000e-01
  %205 = fptosi float %203 to i32
  %206 = fptosi float %204 to i32
  %207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 18
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F4C00EBA0000000
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %215 = extractvalue %dx.types.Dimensions %214, 0
  %216 = sitofp i32 %215 to float
  %217 = extractvalue %dx.types.Dimensions %214, 1
  %218 = sitofp i32 %217 to float
  %219 = fcmp fast oge float %203, %216
  %220 = fcmp fast oge float %204, %218
  %221 = or i1 %219, %220
  %222 = select i1 %221, float 0x4197782600000000, float %213
  %223 = fsub fast float %222, %43
  %224 = fcmp fast ogt float %223, 0.000000e+00
  %225 = and i32 %121, -2
  %226 = icmp eq i32 %225, 2
  %227 = and i1 %226, %224
  %228 = xor i1 %224, true
  %229 = icmp eq i32 %121, 1
  %230 = and i1 %229, %228
  %231 = or i1 %227, %230
  %232 = and i32 %125, 262144
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %233, %231
  %235 = xor i1 %231, true
  %236 = and i32 %125, 131072
  %237 = icmp ne i32 %236, 0
  %238 = and i1 %237, %235
  %239 = or i1 %234, %238
  br i1 %239, label %240, label %241

; <label>:240                                     ; preds = %201
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %241

; <label>:241                                     ; preds = %240, %201
  %242 = and i32 %125, 32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %493, label %244, !dx.controlflow.hints !60

; <label>:244                                     ; preds = %241
  %245 = add i32 %122, 80
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %122, 96
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = add i32 %122, 112
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %122, 128
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 4096
  %271 = icmp ne i32 %270, 0
  %272 = fcmp fast une float %255, 0.000000e+00
  %273 = and i32 %269, 64
  %274 = icmp ne i32 %273, 0
  %275 = and i32 %269, 128
  %276 = icmp eq i32 %275, 0
  %277 = and i32 %269, 2048
  %278 = icmp eq i32 %277, 0
  %279 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %280 = extractvalue %dx.types.Dimensions %279, 0
  %281 = sitofp i32 %280 to float
  %282 = extractvalue %dx.types.Dimensions %279, 1
  %283 = sitofp i32 %282 to float
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %286 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %287 = fmul fast float %285, %47
  %288 = fmul fast float %286, %48
  %289 = fmul fast float %287, %281
  %290 = fmul fast float %288, %283
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = fsub fast float -0.000000e+00, %292
  %294 = fptoui float %293 to i32
  %295 = fptoui float %289 to i32
  %296 = fptoui float %290 to i32
  %297 = and i32 %294, 31
  %298 = lshr i32 %295, %297
  %299 = lshr i32 %296, %297
  %300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %294, i32 %298, i32 %299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fcmp fast ogt float %301, -1.000000e+00
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = select i1 %302, float %304, float 1.000000e+00
  %306 = fadd fast float %301, 1.000000e+00
  %307 = fmul fast float %305, %306
  %308 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %309 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %310 = fcmp fast oge float %308, %309
  %311 = select i1 %310, float 0x4197782600000000, float %308
  br i1 %278, label %389, label %312, !dx.controlflow.hints !61

; <label>:312                                     ; preds = %244
  %313 = fmul fast float %52, %285
  %314 = fmul fast float %54, %286
  %315 = fsub fast float 1.000000e+00, %313
  %316 = fsub fast float 1.000000e+00, %314
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fmul fast float %315, %318
  %322 = fmul fast float %315, %319
  %323 = fmul fast float %315, %320
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %328 = fmul fast float %316, %325
  %329 = fmul fast float %316, %326
  %330 = fmul fast float %316, %327
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fadd fast float %328, %332
  %336 = fadd fast float %335, %321
  %337 = fadd fast float %329, %333
  %338 = fadd fast float %337, %322
  %339 = fadd fast float %330, %334
  %340 = fadd fast float %339, %323
  %341 = fmul fast float %336, %311
  %342 = fmul fast float %338, %311
  %343 = fmul fast float %340, %311
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fsub fast float %345, %23
  %349 = fadd fast float %348, %341
  %350 = fsub fast float %346, %24
  %351 = fadd fast float %350, %342
  %352 = fsub fast float %347, %25
  %353 = fadd fast float %352, %343
  %354 = fmul fast float %26, %26
  %355 = call float @dx.op.dot3.f32(i32 55, float %349, float %351, float %353, float %349, float %351, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = fsub fast float %354, %355
  %357 = fmul fast float %254, %354
  %358 = fmul fast float %253, %354
  %359 = fcmp fast olt float %356, %357
  %360 = fcmp fast ogt float %356, %358
  %361 = or i1 %359, %360
  %362 = select i1 %361, float 0.000000e+00, float %356
  %363 = fsub fast float %253, %254
  %364 = fmul fast float %363, %354
  %365 = fsub fast float %362, %357
  %366 = fdiv fast float %365, %364
  %367 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %368 = fmul fast float %367, 2.000000e+00
  %369 = fsub fast float 3.000000e+00, %368
  %370 = fmul fast float %367, %367
  %371 = fmul fast float %370, %369
  %372 = fsub fast float %261, %267
  %373 = fmul fast float %371, %372
  %374 = fadd fast float %373, %267
  %375 = fmul fast float %258, %27
  %376 = fmul fast float %259, %28
  %377 = fmul fast float %260, %29
  %378 = fsub fast float %375, %264
  %379 = fsub fast float %376, %265
  %380 = fsub fast float %377, %266
  %381 = fmul fast float %371, %378
  %382 = fmul fast float %371, %379
  %383 = fmul fast float %371, %380
  %384 = fadd fast float %381, %264
  %385 = fadd fast float %382, %265
  %386 = fadd fast float %383, %266
  %387 = fmul fast float %247, %247
  %388 = fmul fast float %387, %362
  br label %484

; <label>:389                                     ; preds = %244
  %390 = and i32 %269, 256
  %391 = icmp eq i32 %390, 0
  %392 = fsub fast float %311, %43
  br i1 %391, label %441, label %393

; <label>:393                                     ; preds = %389
  %394 = fadd fast float %253, %43
  %395 = fcmp fast olt float %311, %43
  %396 = fcmp fast ogt float %311, %394
  %397 = or i1 %395, %396
  %398 = select i1 %397, float 0.000000e+00, float %392
  %399 = call float @dx.op.unary.f32(i32 83, float %311)  ; DerivCoarseX(value)
  %400 = call float @dx.op.unary.f32(i32 84, float %311)  ; DerivCoarseY(value)
  %401 = fmul fast float %399, %399
  %402 = fmul fast float %400, %400
  %403 = fadd fast float %402, %401
  %404 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %405 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %406 = fmul fast float %405, %404
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, %254
  %409 = fdiv fast float %392, %408
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fsub fast float 3.000000e+00, %411
  %413 = fmul fast float %410, %410
  %414 = fmul fast float %413, %412
  %415 = fsub fast float %311, %394
  %416 = fadd fast float %415, %408
  %417 = fdiv fast float %416, %408
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %418, 2.000000e+00
  %420 = fsub fast float 3.000000e+00, %419
  %421 = fmul fast float %418, %418
  %422 = fmul fast float %421, %420
  %423 = fsub fast float %414, %422
  %424 = fsub fast float %261, %267
  %425 = fmul fast float %423, %424
  %426 = fadd fast float %425, %267
  %427 = fmul fast float %258, %27
  %428 = fmul fast float %259, %28
  %429 = fmul fast float %260, %29
  %430 = fsub fast float %427, %264
  %431 = fsub fast float %428, %265
  %432 = fsub fast float %429, %266
  %433 = fmul fast float %423, %430
  %434 = fmul fast float %423, %431
  %435 = fmul fast float %423, %432
  %436 = fadd fast float %433, %264
  %437 = fadd fast float %434, %265
  %438 = fadd fast float %435, %266
  %439 = fmul fast float %398, %247
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  br label %484

; <label>:441                                     ; preds = %389
  br i1 %272, label %442, label %455

; <label>:442                                     ; preds = %441
  %443 = fdiv fast float 5.000000e+01, %26
  %444 = select i1 %274, float %443, float 1.000000e+00
  %445 = fmul fast float %444, %247
  %446 = fmul fast float %172, 2.000000e+00
  %447 = fmul fast float %173, 2.000000e+00
  %448 = fadd fast float %446, -1.000000e+00
  %449 = fadd fast float %447, -1.000000e+00
  %450 = call float @dx.op.dot2.f32(i32 54, float %448, float %449, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  %451 = fmul fast float %255, %26
  %452 = fmul fast float %451, %450
  %453 = fsub fast float %392, %452
  %454 = fmul fast float %445, %453
  br label %484

; <label>:455                                     ; preds = %441
  br i1 %276, label %476, label %456

; <label>:456                                     ; preds = %455
  %457 = fmul fast float %26, 0x3F947AE140000000
  %458 = select i1 %274, float %457, float 1.000000e+00
  %459 = fdiv fast float 1.000000e+00, %458
  %460 = fmul fast float %458, %248
  %461 = fmul fast float %458, %249
  %462 = fmul fast float %459, %250
  %463 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %464 = fcmp fast olt float %463, %460
  br i1 %464, label %465, label %469, !dx.controlflow.hints !62

; <label>:465                                     ; preds = %456
  %466 = fmul fast float %459, %247
  %467 = fmul fast float %466, %463
  %468 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  br label %484

; <label>:469                                     ; preds = %456
  %470 = fcmp fast ogt float %463, %461
  br i1 %470, label %471, label %484

; <label>:471                                     ; preds = %469
  %472 = fsub fast float %463, %461
  %473 = fmul fast float %462, %472
  %474 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %475 = fsub fast float 1.000000e+00, %474
  br label %484

; <label>:476                                     ; preds = %455
  %477 = fdiv fast float 5.000000e+01, %26
  %478 = select i1 %274, float %477, float 1.000000e+00
  %479 = fmul fast float %478, %247
  %480 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %481 = select i1 %271, float %480, float 0x47EFFFFFE0000000
  %482 = call float @dx.op.binary.f32(i32 36, float %392, float %481)  ; FMin(a,b)
  %483 = fmul fast float %479, %482
  br label %484

; <label>:484                                     ; preds = %476, %471, %469, %465, %442, %393, %312
  %485 = phi float [ %388, %312 ], [ %440, %393 ], [ %454, %442 ], [ %483, %476 ], [ %468, %465 ], [ %475, %471 ], [ %463, %469 ]
  %486 = phi float [ %384, %312 ], [ %436, %393 ], [ %27, %442 ], [ %27, %476 ], [ %27, %465 ], [ %27, %471 ], [ %27, %469 ]
  %487 = phi float [ %385, %312 ], [ %437, %393 ], [ %28, %442 ], [ %28, %476 ], [ %28, %465 ], [ %28, %471 ], [ %28, %469 ]
  %488 = phi float [ %386, %312 ], [ %438, %393 ], [ %29, %442 ], [ %29, %476 ], [ %29, %465 ], [ %29, %471 ], [ %29, %469 ]
  %489 = phi float [ %374, %312 ], [ %426, %393 ], [ 1.000000e+00, %442 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %465 ], [ 1.000000e+00, %471 ], [ 1.000000e+00, %469 ]
  %490 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %491 = fmul fast float %489, %202
  %492 = fmul fast float %491, %490
  br label %493

; <label>:493                                     ; preds = %484, %241
  %494 = phi float [ %492, %484 ], [ %202, %241 ]
  %495 = phi float [ %486, %484 ], [ %27, %241 ]
  %496 = phi float [ %487, %484 ], [ %28, %241 ]
  %497 = phi float [ %488, %484 ], [ %29, %241 ]
  %498 = fmul fast float %495, %30
  %499 = fmul fast float %496, %30
  %500 = fmul fast float %497, %30
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %503 = fptosi float %43 to i32
  %504 = sitofp i32 %503 to float
  %505 = fadd fast float %502, %504
  %506 = fmul fast float %505, 0x3FE3C6EF40000000
  %507 = frem fast float %47, 2.560000e+02
  %508 = frem fast float %48, 2.560000e+02
  %509 = fptoui float %507 to i32
  %510 = fptoui float %508 to i32
  %511 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %509, i32 %510, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = fadd fast float %512, %506
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = and i32 %125, 1
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %573, label %517, !dx.controlflow.hints !63

; <label>:517                                     ; preds = %493
  %518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 2
  %520 = extractvalue %dx.types.ResRet.f32 %518, 3
  %521 = add i32 %122, 16
  %522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = add i32 %122, 32
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = and i32 %125, 2
  %532 = icmp eq i32 %531, 0
  %533 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %534 = call float @dx.op.unary.f32(i32 25, float %533)  ; Rsqrt(value)
  %535 = fmul fast float %534, %33
  %536 = fmul fast float %534, %34
  %537 = fmul fast float %534, %35
  %538 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = call float @dx.op.unary.f32(i32 25, float %538)  ; Rsqrt(value)
  %540 = fmul fast float %539, %82
  %541 = fmul fast float %539, %83
  %542 = fmul fast float %539, %84
  %543 = call float @dx.op.dot3.f32(i32 55, float %540, float %541, float %542, float %535, float %536, float %537)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = fmul fast float %543, %543
  %545 = fmul fast float %544, %519
  %546 = fadd fast float %545, %520
  %547 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  br i1 %532, label %548, label %558, !dx.controlflow.hints !64

; <label>:548                                     ; preds = %517
  %549 = extractvalue %dx.types.ResRet.f32 %518, 1
  %550 = extractvalue %dx.types.ResRet.f32 %518, 0
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %553 = fmul fast float %552, %538
  %554 = fsub fast float %550, %553
  %555 = fmul fast float %554, %549
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %557 = fmul fast float %556, %547
  br label %558

; <label>:558                                     ; preds = %548, %517
  %559 = phi float [ %557, %548 ], [ %547, %517 ]
  %560 = fsub fast float %523, %528
  %561 = fsub fast float %524, %529
  %562 = fsub fast float %525, %530
  %563 = fmul fast float %559, %560
  %564 = fmul fast float %559, %561
  %565 = fmul fast float %559, %562
  %566 = fadd fast float %563, %528
  %567 = fadd fast float %564, %529
  %568 = fadd fast float %565, %530
  %569 = fmul fast float %566, %498
  %570 = fmul fast float %567, %499
  %571 = fmul fast float %568, %500
  %572 = fmul fast float %559, %494
  br label %573

; <label>:573                                     ; preds = %558, %493
  %574 = phi float [ %572, %558 ], [ %494, %493 ]
  %575 = phi float [ %569, %558 ], [ %498, %493 ]
  %576 = phi float [ %570, %558 ], [ %499, %493 ]
  %577 = phi float [ %571, %558 ], [ %500, %493 ]
  %578 = add i32 %22, 104
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = add i32 %580, 0
  %582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %582, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = add i32 %22, 44
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = shl i32 %589, 4
  %591 = and i32 %590, 32752
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %589, 7
  %594 = and i32 %593, 32752
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %589, 22
  %597 = shl nuw nsw i32 %596, 5
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = fmul fast float %592, %584
  %600 = fmul fast float %595, %585
  %601 = fmul fast float %598, %586
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = fmul fast float %599, %603
  %605 = fmul fast float %600, %603
  %606 = fmul fast float %601, %603
  %607 = add i32 %22, 48
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = lshr i32 %609, 22
  %611 = shl nuw nsw i32 %610, 5
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = fmul fast float %612, %604
  %614 = select i1 %105, float %613, float %604
  %615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %621 = fmul fast float %614, %575
  %622 = fmul fast float %605, %576
  %623 = fmul fast float %606, %577
  %624 = call float @dx.op.dot3.f32(i32 55, float %621, float %622, float %623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = select i1 %105, float 0.000000e+00, float %621
  %626 = select i1 %105, float %624, float %622
  %627 = select i1 %105, float 0.000000e+00, float %623
  %628 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = lshr i32 %629, 18
  %631 = uitofp i32 %630 to float
  %632 = fmul fast float %631, 0x3F4C00EBA0000000
  %633 = call float @dx.op.unary.f32(i32 21, float %632)  ; Exp(value)
  %634 = fadd fast float %633, -1.000000e+00
  %635 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %636 = extractvalue %dx.types.Dimensions %635, 0
  %637 = sitofp i32 %636 to float
  %638 = extractvalue %dx.types.Dimensions %635, 1
  %639 = sitofp i32 %638 to float
  %640 = fcmp fast oge float %203, %637
  %641 = fcmp fast oge float %204, %639
  %642 = or i1 %640, %641
  %643 = select i1 %642, float 0x4197782600000000, float %634
  %644 = icmp eq i32 %121, 3
  %645 = fcmp fast ogt float %43, %643
  %646 = and i1 %229, %645
  %647 = or i1 %644, %646
  %648 = icmp eq i32 %121, 2
  %649 = fcmp fast ole float %43, %643
  %650 = and i1 %648, %649
  %651 = or i1 %650, %647
  %652 = fmul fast float %495, %36
  %653 = fmul fast float %652, %614
  %654 = fmul fast float %653, %616
  %655 = fmul fast float %654, %620
  %656 = fmul fast float %496, %36
  %657 = fmul fast float %656, %605
  %658 = fmul fast float %657, %617
  %659 = fmul fast float %658, %620
  %660 = fmul fast float %497, %36
  %661 = fmul fast float %660, %606
  %662 = fmul fast float %661, %618
  %663 = fmul fast float %662, %620
  %664 = fadd fast float %655, %625
  %665 = fadd fast float %626, %659
  %666 = fadd fast float %663, %627
  %667 = fmul fast float %664, %574
  %668 = fmul fast float %665, %574
  %669 = fmul fast float %666, %574
  %670 = and i32 %125, 1048576
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %763, label %672, !dx.controlflow.hints !65

; <label>:672                                     ; preds = %573
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %675 = extractvalue %dx.types.CBufRet.f32 %673, 3
  %676 = fmul fast float %674, %47
  %677 = fmul fast float %675, %48
  %678 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %679 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %680 = select i1 %651, i32 2, i32 0
  %681 = or i32 %680, 1
  %682 = uitofp i32 %681 to float
  %683 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %678, float %679, float %682, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = extractvalue %dx.types.ResRet.f32 %683, 1
  %686 = extractvalue %dx.types.ResRet.f32 %683, 2
  %687 = extractvalue %dx.types.ResRet.f32 %683, 3
  %688 = add nuw nsw i32 %680, 2
  %689 = uitofp i32 %688 to float
  %690 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %678, float %679, float %689, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = extractvalue %dx.types.ResRet.f32 %690, 1
  %693 = extractvalue %dx.types.ResRet.f32 %690, 2
  %694 = extractvalue %dx.types.ResRet.f32 %690, 3
  %695 = call float @dx.op.binary.f32(i32 35, float %685, float %686)  ; FMax(a,b)
  %696 = call float @dx.op.binary.f32(i32 35, float %684, float %695)  ; FMax(a,b)
  %697 = call float @dx.op.binary.f32(i32 35, float %696, float %687)  ; FMax(a,b)
  %698 = call float @dx.op.binary.f32(i32 36, float %692, float %693)  ; FMin(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float %691, float %698)  ; FMin(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float %699, float %694)  ; FMin(a,b)
  %701 = fmul fast float %697, 2.550000e+02
  %702 = fadd fast float %701, 0x3F70101020000000
  %703 = fptoui float %702 to i32
  %704 = fmul fast float %700, 2.550000e+02
  %705 = fadd fast float %704, 0x3F70101020000000
  %706 = fptoui float %705 to i32
  %707 = icmp ult i32 %703, %706
  br i1 %707, label %708, label %756

; <label>:708                                     ; preds = %672
  %709 = fcmp fast ogt float %42, 9.843750e-01
  %710 = fadd fast float %43, -4.000000e+00
  %711 = select i1 %709, float -4.000000e+00, float %710
  %712 = call float @dx.op.binary.f32(i32 35, float %711, float 0.000000e+00)  ; FMax(a,b)
  %713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.f32 %713, 0
  %715 = fadd fast float %714, %712
  %716 = extractvalue %dx.types.CBufRet.f32 %713, 2
  %717 = fmul fast float %715, %716
  %718 = call float @dx.op.unary.f32(i32 23, float %717)  ; Log(value)
  %719 = extractvalue %dx.types.CBufRet.f32 %713, 3
  %720 = fmul fast float %719, %718
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %723 = fmul fast float %720, %722
  %724 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %725 = uitofp i32 %703 to float
  %726 = uitofp i32 %706 to float
  %727 = fadd fast float %725, 5.000000e-01
  %728 = fadd fast float %726, 5.000000e-01
  %729 = fmul fast float %722, %727
  %730 = fmul fast float %722, %728
  %731 = fadd fast float %729, 0x3F0FFB4800000000
  %732 = fadd fast float %730, 0xBF0FFB4800000000
  %733 = call float @dx.op.binary.f32(i32 35, float %724, float %731)  ; FMax(a,b)
  %734 = call float @dx.op.binary.f32(i32 36, float %733, float %732)  ; FMin(a,b)
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 1
  %737 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %739 = select i1 %651, float %738, float 0.000000e+00
  %740 = fmul fast float %736, %734
  %741 = fadd fast float %739, %740
  %742 = fadd fast float %739, %737
  %743 = fsub fast float %736, %737
  %744 = fadd fast float %743, %739
  %745 = call float @dx.op.binary.f32(i32 35, float %741, float %742)  ; FMax(a,b)
  %746 = call float @dx.op.binary.f32(i32 36, float %745, float %744)  ; FMin(a,b)
  %747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %678, float %679, float %746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 1
  %753 = fmul fast float %752, %748
  %754 = fmul fast float %752, %749
  %755 = fmul fast float %752, %750
  br label %756

; <label>:756                                     ; preds = %708, %672
  %757 = phi float [ %753, %708 ], [ 1.000000e+00, %672 ]
  %758 = phi float [ %754, %708 ], [ 1.000000e+00, %672 ]
  %759 = phi float [ %755, %708 ], [ 1.000000e+00, %672 ]
  %760 = fmul fast float %757, %667
  %761 = fmul fast float %758, %668
  %762 = fmul fast float %759, %669
  br label %763

; <label>:763                                     ; preds = %756, %573
  %764 = phi float [ %760, %756 ], [ %667, %573 ]
  %765 = phi float [ %761, %756 ], [ %668, %573 ]
  %766 = phi float [ %762, %756 ], [ %669, %573 ]
  %767 = and i32 %125, 2097152
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %773, label %769, !dx.controlflow.hints !66

; <label>:769                                     ; preds = %763
  %770 = add i32 %122, 192
  %771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  br label %776

; <label>:773                                     ; preds = %763
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 3
  br label %776

; <label>:776                                     ; preds = %773, %769
  %777 = phi float [ %772, %769 ], [ %775, %773 ]
  br i1 %646, label %778, label %862

; <label>:778                                     ; preds = %776
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %781 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %782 = fmul fast float %780, %47
  %783 = fmul fast float %781, %48
  %784 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %785 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %786 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %784, float %785, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = extractvalue %dx.types.ResRet.f32 %786, 3
  %791 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %784, float %785, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = extractvalue %dx.types.ResRet.f32 %791, 1
  %794 = extractvalue %dx.types.ResRet.f32 %791, 2
  %795 = extractvalue %dx.types.ResRet.f32 %791, 3
  %796 = call float @dx.op.binary.f32(i32 35, float %788, float %789)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 35, float %787, float %796)  ; FMax(a,b)
  %798 = call float @dx.op.binary.f32(i32 35, float %797, float %790)  ; FMax(a,b)
  %799 = call float @dx.op.binary.f32(i32 36, float %793, float %794)  ; FMin(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %792, float %799)  ; FMin(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %800, float %795)  ; FMin(a,b)
  %802 = fmul fast float %798, 2.550000e+02
  %803 = fadd fast float %802, 0x3F70101020000000
  %804 = fptoui float %803 to i32
  %805 = fmul fast float %801, 2.550000e+02
  %806 = fadd fast float %805, 0x3F70101020000000
  %807 = fptoui float %806 to i32
  %808 = icmp ult i32 %804, %807
  br i1 %808, label %809, label %851

; <label>:809                                     ; preds = %778
  %810 = fcmp fast ogt float %42, 9.843750e-01
  %811 = fadd fast float %43, -4.000000e+00
  %812 = select i1 %810, float -4.000000e+00, float %811
  %813 = call float @dx.op.binary.f32(i32 35, float %812, float 0.000000e+00)  ; FMax(a,b)
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 0
  %816 = fadd fast float %815, %813
  %817 = extractvalue %dx.types.CBufRet.f32 %814, 2
  %818 = fmul fast float %816, %817
  %819 = call float @dx.op.unary.f32(i32 23, float %818)  ; Log(value)
  %820 = extractvalue %dx.types.CBufRet.f32 %814, 3
  %821 = fmul fast float %820, %819
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %824 = fmul fast float %821, %823
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %826 = uitofp i32 %804 to float
  %827 = uitofp i32 %807 to float
  %828 = fadd fast float %826, 5.000000e-01
  %829 = fadd fast float %827, 5.000000e-01
  %830 = fmul fast float %823, %828
  %831 = fmul fast float %823, %829
  %832 = fadd fast float %830, 0x3F0FFB4800000000
  %833 = fadd fast float %831, 0xBF0FFB4800000000
  %834 = call float @dx.op.binary.f32(i32 35, float %825, float %832)  ; FMax(a,b)
  %835 = call float @dx.op.binary.f32(i32 36, float %834, float %833)  ; FMin(a,b)
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 1
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %839 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %840 = fmul fast float %837, %835
  %841 = fadd fast float %839, %840
  %842 = fadd fast float %839, %838
  %843 = fsub fast float %837, %838
  %844 = fadd fast float %843, %839
  %845 = call float @dx.op.binary.f32(i32 35, float %841, float %842)  ; FMax(a,b)
  %846 = call float @dx.op.binary.f32(i32 36, float %845, float %844)  ; FMin(a,b)
  %847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %784, float %785, float %846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = extractvalue %dx.types.ResRet.f32 %847, 1
  %850 = extractvalue %dx.types.ResRet.f32 %847, 2
  br label %851

; <label>:851                                     ; preds = %809, %778
  %852 = phi float [ %848, %809 ], [ 1.000000e+00, %778 ]
  %853 = phi float [ %849, %809 ], [ 1.000000e+00, %778 ]
  %854 = phi float [ %850, %809 ], [ 1.000000e+00, %778 ]
  %855 = call float @dx.op.dot3.f32(i32 55, float %852, float %853, float %854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = select i1 %105, float %855, float %852
  %857 = select i1 %105, float %855, float %853
  %858 = select i1 %105, float 1.000000e+00, float %854
  %859 = fmul fast float %856, %764
  %860 = fmul fast float %857, %765
  %861 = fmul fast float %858, %766
  br label %862

; <label>:862                                     ; preds = %851, %776
  %863 = phi float [ %643, %851 ], [ %43, %776 ]
  %864 = phi float [ %859, %851 ], [ %764, %776 ]
  %865 = phi float [ %860, %851 ], [ %765, %776 ]
  %866 = phi float [ %861, %851 ], [ %766, %776 ]
  br i1 %651, label %1107, label %867

; <label>:867                                     ; preds = %862
  %868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = call float @dx.op.dot3.f32(i32 55, float %869, float %870, float %871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = select i1 %105, float %872, float %869
  %874 = select i1 %105, float %872, float %870
  %875 = select i1 %105, float 1.000000e+00, float %871
  %876 = fmul fast float %873, %864
  %877 = fmul fast float %874, %865
  %878 = fmul fast float %875, %866
  %879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.i32 %879, 0
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %1107, label %882, !dx.controlflow.hints !67

; <label>:882                                     ; preds = %867
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 2
  %885 = extractvalue %dx.types.CBufRet.f32 %883, 3
  %886 = fmul fast float %884, %47
  %887 = fmul fast float %885, %48
  %888 = fmul fast float %886, 2.000000e+00
  %889 = fmul fast float %887, 2.000000e+00
  %890 = fsub fast float 1.000000e+00, %888
  %891 = fsub fast float 1.000000e+00, %889
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %896 = fmul fast float %890, %893
  %897 = fmul fast float %890, %894
  %898 = fmul fast float %890, %895
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = fmul fast float %891, %900
  %904 = fmul fast float %891, %901
  %905 = fmul fast float %891, %902
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %909 = extractvalue %dx.types.CBufRet.f32 %906, 2
  %910 = fadd fast float %903, %907
  %911 = fadd fast float %910, %896
  %912 = fadd fast float %904, %908
  %913 = fadd fast float %912, %897
  %914 = fadd fast float %905, %909
  %915 = fadd fast float %914, %898
  %916 = fmul fast float %911, %863
  %917 = fmul fast float %913, %863
  %918 = fmul fast float %915, %863
  %919 = fmul fast float %916, %916
  %920 = fmul fast float %917, %917
  %921 = fadd fast float %919, %920
  %922 = fmul fast float %918, %918
  %923 = fadd fast float %921, %922
  %924 = call float @dx.op.unary.f32(i32 24, float %923)  ; Sqrt(value)
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = fsub fast float %924, %926
  %928 = extractvalue %dx.types.CBufRet.f32 %925, 2
  %929 = fmul fast float %927, %928
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fadd fast float %930, -5.000000e-01
  %932 = fmul fast float %931, 2.000000e+00
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %935 = call float @dx.op.binary.f32(i32 36, float %934, float %932)  ; FMin(a,b)
  %936 = fsub fast float -0.000000e+00, %934
  %937 = fcmp fast ogt float %935, %936
  br i1 %937, label %938, label %1107, !dx.controlflow.hints !68

; <label>:938                                     ; preds = %882
  %939 = fmul fast float %935, 5.000000e-01
  %940 = fadd fast float %939, 5.000000e-01
  %941 = call float @dx.op.unary.f32(i32 22, float %940)  ; Frc(value)
  %942 = call float @dx.op.unary.f32(i32 27, float %941)  ; Round_ni(value)
  %943 = call float @dx.op.unary.f32(i32 22, float %941)  ; Frc(value)
  %944 = fmul fast float %943, 2.000000e+00
  %945 = fadd fast float %944, -1.000000e+00
  %946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %886, float %887, float %942, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = extractvalue %dx.types.ResRet.f32 %946, 3
  %951 = fadd fast float %947, -5.000000e-01
  %952 = fadd fast float %949, -5.000000e-01
  %953 = fmul fast float %951, 0xBFD5555560000000
  %954 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %952, float %953)  ; FMad(a,b,c)
  %955 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %948, float 0.000000e+00)  ; FMad(a,b,c)
  %956 = fadd fast float %955, %950
  %957 = fmul fast float %951, -7.500000e-01
  %958 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %952, float %957)  ; FMad(a,b,c)
  %959 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %948, float 0.000000e+00)  ; FMad(a,b,c)
  %960 = fadd fast float %959, %950
  %961 = call float @dx.op.binary.f32(i32 35, float %954, float -1.000000e+00)  ; FMax(a,b)
  %962 = call float @dx.op.binary.f32(i32 35, float %956, float -1.000000e+00)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 35, float %958, float -1.000000e+00)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 35, float %960, float -1.000000e+00)  ; FMax(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %961, float 1.000000e+00)  ; FMin(a,b)
  %966 = call float @dx.op.binary.f32(i32 36, float %962, float 1.000000e+00)  ; FMin(a,b)
  %967 = call float @dx.op.binary.f32(i32 36, float %963, float 1.000000e+00)  ; FMin(a,b)
  %968 = call float @dx.op.binary.f32(i32 36, float %964, float 1.000000e+00)  ; FMin(a,b)
  %969 = fcmp fast olt float %965, 0x3FEFFF8020000000
  br i1 %969, label %970, label %1085, !dx.controlflow.hints !69

; <label>:970                                     ; preds = %938
  %971 = extractvalue %dx.types.CBufRet.f32 %933, 3
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 1
  %975 = extractvalue %dx.types.CBufRet.f32 %972, 2
  %976 = extractvalue %dx.types.CBufRet.f32 %972, 3
  %977 = fsub fast float %973, %965
  %978 = fsub fast float %974, %966
  %979 = fsub fast float %975, %967
  %980 = fsub fast float %976, %968
  %981 = fmul fast float %977, %971
  %982 = fmul fast float %978, %971
  %983 = fmul fast float %979, %971
  %984 = fmul fast float %980, %971
  %985 = fadd fast float %981, %965
  %986 = fadd fast float %982, %966
  %987 = fsub fast float -0.000000e+00, %986
  %988 = fadd fast float %983, %967
  %989 = fadd fast float %984, %968
  %990 = fmul fast float %985, %985
  %991 = fsub fast float %986, %990
  %992 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %991)  ; FMax(a,b)
  %993 = fdiv fast float 1.000000e+00, %992
  %994 = fmul fast float %986, %985
  %995 = fsub fast float %988, %994
  %996 = fsub fast float %945, %985
  %997 = fmul fast float %945, %945
  %998 = fsub fast float %997, %986
  %999 = fmul fast float %996, %993
  %1000 = fmul fast float %999, %995
  %1001 = fsub fast float %998, %1000
  %1002 = fmul fast float %986, %986
  %1003 = fsub fast float %989, %1002
  %1004 = fmul fast float %995, %995
  %1005 = fmul fast float %1004, %993
  %1006 = fsub fast float %1003, %1005
  %1007 = fdiv fast float %1001, %1006
  %1008 = fmul fast float %995, %1007
  %1009 = fsub fast float %996, %1008
  %1010 = fmul fast float %1009, %993
  %1011 = fmul fast float %1010, %985
  %1012 = fsub fast float 1.000000e+00, %1011
  %1013 = fmul fast float %986, %1007
  %1014 = fsub fast float %1012, %1013
  %1015 = fmul fast float %1010, %1010
  %1016 = fmul fast float %1007, 4.000000e+00
  %1017 = fmul fast float %1016, %1014
  %1018 = fsub fast float %1015, %1017
  %1019 = call float @dx.op.unary.f32(i32 24, float %1018)  ; Sqrt(value)
  %1020 = fcmp fast oge float %1010, 0.000000e+00
  %1021 = fsub fast float -0.000000e+00, %1019
  %1022 = select i1 %1020, float %1021, float %1019
  %1023 = fsub fast float %1022, %1010
  %1024 = fdiv fast float %1023, %1007
  %1025 = fdiv fast float %1014, %1023
  %1026 = fmul fast float %1024, 5.000000e-01
  %1027 = fmul fast float %1025, 2.000000e+00
  %1028 = select i1 %1020, float %1026, float %1027
  %1029 = select i1 %1020, float %1027, float %1026
  %1030 = call float @dx.op.binary.f32(i32 35, float %1028, float %1029)  ; FMax(a,b)
  %1031 = call float @dx.op.binary.f32(i32 36, float %1028, float %1029)  ; FMin(a,b)
  %1032 = fcmp fast ogt float %945, %1031
  br i1 %1032, label %1033, label %1043

; <label>:1033                                    ; preds = %970
  %1034 = fsub fast float %945, %1031
  %1035 = fsub fast float %1030, %1031
  %1036 = fmul fast float %1034, %1035
  %1037 = fmul fast float %1030, %945
  %1038 = fadd fast float %1030, %945
  %1039 = fmul fast float %1038, %985
  %1040 = fadd fast float %1037, %986
  %1041 = fsub fast float %1040, %1039
  %1042 = fdiv fast float %1041, %1036
  br label %1043

; <label>:1043                                    ; preds = %1033, %970
  %1044 = phi float [ %1042, %1033 ], [ 0.000000e+00, %970 ]
  %1045 = fcmp fast ogt float %945, %1030
  %1046 = fsub fast float %945, %1030
  br i1 %1045, label %1047, label %1057

; <label>:1047                                    ; preds = %1043
  %1048 = fsub fast float %1030, %1031
  %1049 = fmul fast float %1048, %1046
  %1050 = fmul fast float %1031, %945
  %1051 = fadd fast float %1031, %945
  %1052 = fmul fast float %1051, %985
  %1053 = fsub fast float %987, %1050
  %1054 = fadd fast float %1053, %1052
  %1055 = fdiv fast float %1054, %1049
  %1056 = fadd fast float %1055, %1044
  br label %1057

; <label>:1057                                    ; preds = %1047, %1043
  %1058 = phi float [ %1056, %1047 ], [ %1044, %1043 ]
  %1059 = fsub fast float %945, %1031
  %1060 = fmul fast float %1059, %1046
  %1061 = fmul fast float %1031, %1030
  %1062 = fadd fast float %1031, %1030
  %1063 = fmul fast float %1062, %985
  %1064 = fadd fast float %1061, %986
  %1065 = fsub fast float %1064, %1063
  %1066 = fdiv fast float %1065, %1060
  %1067 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1068 = fcmp fast oeq float %777, 0.000000e+00
  %1069 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %1070 = fcmp fast oeq float %1069, 0.000000e+00
  %1071 = or i1 %1068, %1070
  %1072 = fmul fast float %1069, 2.000000e+00
  %1073 = fadd fast float %934, %935
  %1074 = fdiv fast float %1073, %1072
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1076 = fmul fast float %1075, 2.000000e+00
  %1077 = fsub fast float 3.000000e+00, %1076
  %1078 = fmul fast float %1075, %1075
  %1079 = fmul fast float %1078, %1077
  %1080 = select i1 %1071, float 1.000000e+00, float %1079
  %1081 = fmul fast float %1066, %777
  %1082 = fadd fast float %1067, %1081
  %1083 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  %1084 = fmul fast float %1080, %1083
  br label %1085

; <label>:1085                                    ; preds = %1057, %938
  %1086 = phi float [ %1084, %1057 ], [ 0.000000e+00, %938 ]
  %1087 = fsub fast float 1.000000e+00, %1086
  %1088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %886, float %887, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 2
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1098, label %1093

; <label>:1093                                    ; preds = %1085
  %1094 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1095 = fadd fast float %1089, -1.000000e+00
  %1096 = fmul fast float %1094, %1095
  %1097 = fadd fast float %1096, 1.000000e+00
  br label %1098

; <label>:1098                                    ; preds = %1093, %1085
  %1099 = phi float [ %1097, %1093 ], [ %1087, %1085 ]
  %1100 = call float @dx.op.binary.f32(i32 35, float %1089, float %1099)  ; FMax(a,b)
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1100, float %1100, float %1100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = select i1 %105, float %1101, float %1100
  %1103 = select i1 %105, float 1.000000e+00, float %1100
  %1104 = fmul fast float %1102, %876
  %1105 = fmul fast float %1102, %877
  %1106 = fmul fast float %1103, %878
  br label %1107

; <label>:1107                                    ; preds = %1098, %882, %867, %862
  %1108 = phi float [ %864, %862 ], [ %876, %867 ], [ %1104, %1098 ], [ %876, %882 ]
  %1109 = phi float [ %865, %862 ], [ %877, %867 ], [ %1105, %1098 ], [ %877, %882 ]
  %1110 = phi float [ %866, %862 ], [ %878, %867 ], [ %1106, %1098 ], [ %878, %882 ]
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1113 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1114 = fmul fast float %1112, %47
  %1115 = fmul fast float %1113, %48
  %1116 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1117 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1118 = select i1 %651, i32 2, i32 0
  %1119 = or i32 %1118, 1
  %1120 = uitofp i32 %1119 to float
  %1121 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1116, float %1117, float %1120, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  %1125 = extractvalue %dx.types.ResRet.f32 %1121, 3
  %1126 = add nuw nsw i32 %1118, 2
  %1127 = uitofp i32 %1126 to float
  %1128 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1116, float %1117, float %1127, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.ResRet.f32 %1128, 3
  %1133 = call float @dx.op.binary.f32(i32 35, float %1123, float %1124)  ; FMax(a,b)
  %1134 = call float @dx.op.binary.f32(i32 35, float %1122, float %1133)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1134, float %1125)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1130, float %1131)  ; FMin(a,b)
  %1137 = call float @dx.op.binary.f32(i32 36, float %1129, float %1136)  ; FMin(a,b)
  %1138 = call float @dx.op.binary.f32(i32 36, float %1137, float %1132)  ; FMin(a,b)
  %1139 = fmul fast float %1135, 2.550000e+02
  %1140 = fadd fast float %1139, 0x3F70101020000000
  %1141 = fptoui float %1140 to i32
  %1142 = fmul fast float %1138, 2.550000e+02
  %1143 = fadd fast float %1142, 0x3F70101020000000
  %1144 = fptoui float %1143 to i32
  %1145 = icmp ult i32 %1141, %1144
  br i1 %1145, label %1146, label %1189

; <label>:1146                                    ; preds = %1107
  %1147 = fcmp fast ogt float %42, 9.843750e-01
  %1148 = fadd fast float %863, -4.000000e+00
  %1149 = select i1 %1147, float -4.000000e+00, float %1148
  %1150 = call float @dx.op.binary.f32(i32 35, float %1149, float 0.000000e+00)  ; FMax(a,b)
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = fadd fast float %1152, %1150
  %1154 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1155 = fmul fast float %1153, %1154
  %1156 = call float @dx.op.unary.f32(i32 23, float %1155)  ; Log(value)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1151, 3
  %1158 = fmul fast float %1157, %1156
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1161 = fmul fast float %1158, %1160
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1163 = uitofp i32 %1141 to float
  %1164 = uitofp i32 %1144 to float
  %1165 = fadd fast float %1163, 5.000000e-01
  %1166 = fadd fast float %1164, 5.000000e-01
  %1167 = fmul fast float %1160, %1165
  %1168 = fmul fast float %1160, %1166
  %1169 = fadd fast float %1167, 0x3F0FFB4800000000
  %1170 = fadd fast float %1168, 0xBF0FFB4800000000
  %1171 = call float @dx.op.binary.f32(i32 35, float %1162, float %1169)  ; FMax(a,b)
  %1172 = call float @dx.op.binary.f32(i32 36, float %1171, float %1170)  ; FMin(a,b)
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 1
  %1175 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1176 = extractvalue %dx.types.CBufRet.f32 %1173, 0
  %1177 = select i1 %651, float %1176, float 0.000000e+00
  %1178 = fmul fast float %1174, %1172
  %1179 = fadd fast float %1177, %1178
  %1180 = fadd fast float %1177, %1175
  %1181 = fsub fast float %1174, %1175
  %1182 = fadd fast float %1181, %1177
  %1183 = call float @dx.op.binary.f32(i32 35, float %1179, float %1180)  ; FMax(a,b)
  %1184 = call float @dx.op.binary.f32(i32 36, float %1183, float %1182)  ; FMin(a,b)
  %1185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1116, float %1117, float %1184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.ResRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.ResRet.f32 %1185, 2
  br label %1189

; <label>:1189                                    ; preds = %1146, %1107
  %1190 = phi float [ %1186, %1146 ], [ 1.000000e+00, %1107 ]
  %1191 = phi float [ %1187, %1146 ], [ 1.000000e+00, %1107 ]
  %1192 = phi float [ %1188, %1146 ], [ 1.000000e+00, %1107 ]
  %1193 = call float @dx.op.dot3.f32(i32 55, float %1190, float %1191, float %1192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1194 = select i1 %105, float %1193, float %1190
  %1195 = select i1 %105, float %1193, float %1191
  %1196 = fmul fast float %1194, %1108
  %1197 = fmul fast float %1195, %1109
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  br i1 %105, label %1200, label %1203

; <label>:1200                                    ; preds = %1189
  %1201 = fadd fast float %1196, %1197
  %1202 = fmul fast float %1199, %1201
  br label %1213

; <label>:1203                                    ; preds = %1189
  %1204 = fmul fast float %1192, %1110
  %1205 = fmul fast float %1199, %1196
  %1206 = fmul fast float %1199, %1197
  %1207 = fmul fast float %1204, %1199
  %1208 = call float @dx.op.binary.f32(i32 35, float %1206, float %1207)  ; FMax(a,b)
  %1209 = call float @dx.op.binary.f32(i32 35, float %1205, float %1208)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 35, float %1209, float 0.000000e+00)  ; FMax(a,b)
  %1211 = fcmp fast ugt float %1210, 0x3F10000000000000
  br i1 %1211, label %1213, label %1212

; <label>:1212                                    ; preds = %1203
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1213

; <label>:1213                                    ; preds = %1212, %1203, %1200
  %1214 = phi float [ %1202, %1200 ], [ %1205, %1212 ], [ %1205, %1203 ]
  %1215 = phi float [ 0.000000e+00, %1200 ], [ %1206, %1212 ], [ %1206, %1203 ]
  %1216 = phi float [ 0.000000e+00, %1200 ], [ %1207, %1212 ], [ %1207, %1203 ]
  %1217 = fadd fast float %514, 0x3FE3C6EF40000000
  %1218 = call float @dx.op.unary.f32(i32 22, float %1217)  ; Frc(value)
  %1219 = call float @dx.op.unary.f32(i32 23, float %1214)  ; Log(value)
  %1220 = fadd fast float %1219, -7.000000e+00
  %1221 = call float @dx.op.unary.f32(i32 21, float %1220)  ; Exp(value)
  %1222 = fmul fast float %1218, 2.000000e+00
  %1223 = fadd fast float %1222, -1.000000e+00
  %1224 = fmul fast float %1221, %1223
  %1225 = fcmp fast ogt float %1214, 0.000000e+00
  %1226 = select i1 %1225, float %1224, float 0.000000e+00
  %1227 = fadd fast float %1226, %1214
  %1228 = fadd fast float %514, 0x3FF3C6EF40000000
  %1229 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1230 = call float @dx.op.unary.f32(i32 23, float %1215)  ; Log(value)
  %1231 = fadd fast float %1230, -7.000000e+00
  %1232 = call float @dx.op.unary.f32(i32 21, float %1231)  ; Exp(value)
  %1233 = fmul fast float %1229, 2.000000e+00
  %1234 = fadd fast float %1233, -1.000000e+00
  %1235 = fmul fast float %1232, %1234
  %1236 = fcmp fast ogt float %1215, 0.000000e+00
  %1237 = select i1 %1236, float %1235, float 0.000000e+00
  %1238 = fadd fast float %1237, %1215
  %1239 = fadd fast float %514, 0x3FFDAA66E0000000
  %1240 = call float @dx.op.unary.f32(i32 22, float %1239)  ; Frc(value)
  %1241 = call float @dx.op.unary.f32(i32 23, float %1216)  ; Log(value)
  %1242 = fadd fast float %1241, -6.000000e+00
  %1243 = call float @dx.op.unary.f32(i32 21, float %1242)  ; Exp(value)
  %1244 = fmul fast float %1240, 2.000000e+00
  %1245 = fadd fast float %1244, -1.000000e+00
  %1246 = fmul fast float %1243, %1245
  %1247 = fcmp fast ogt float %1216, 0.000000e+00
  %1248 = select i1 %1247, float %1246, float 0.000000e+00
  %1249 = fadd fast float %1248, %1216
  %1250 = select i1 %105, float %1215, float %1238
  %1251 = select i1 %105, float %1216, float %1249
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1252 = call float @dx.op.binary.f32(i32 36, float %1227, float 3.225500e+04)  ; FMin(a,b)
  %1253 = call float @dx.op.binary.f32(i32 36, float %1250, float 3.225500e+04)  ; FMin(a,b)
  %1254 = call float @dx.op.binary.f32(i32 36, float %1251, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1252)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1253)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1254)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[33 x i32] [i32 31, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !58}
!35 = !{!36, !54, null}
!36 = !{!37, !40, !42, !44, !46, !48, !50, !51, !53}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!45 = !{i32 3}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 3, i32 1, i8 2, i32 4, i8 0, !43}
!47 = !{i32 5}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !39}
!49 = !{i32 8}
!50 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !52}
!52 = !{i32 3, i32 5}
!53 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!54 = !{!55, !56}
!55 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!56 = !{i32 1, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!57 = !{i32 1}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}

