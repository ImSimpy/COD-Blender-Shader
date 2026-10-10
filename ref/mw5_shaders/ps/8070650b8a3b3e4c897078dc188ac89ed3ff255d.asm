;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float   xyzw
; COLOR                    3   xyz         7     NONE    uint   x   
; COLOR                    4      w        7     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: ffa9b65531793c9ef39953105c4a0d16
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
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
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
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t2     1
;                                   texture    byte         r/o     T14             t3     1
;                                   texture     f32          3d     T15     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 32, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 26, 27, 28 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 28 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %39
  %48 = fmul fast float %46, %40
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
  %82 = fmul fast float %77, %42
  %83 = fmul fast float %79, %42
  %84 = fmul fast float %81, %42
  %85 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %86 = extractvalue %dx.types.Dimensions %85, 0
  %87 = sitofp i32 %86 to float
  %88 = extractvalue %dx.types.Dimensions %85, 1
  %89 = sitofp i32 %88 to float
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %93 = fmul fast float %91, %47
  %94 = fmul fast float %92, %48
  %95 = fmul fast float %93, %87
  %96 = fmul fast float %94, %89
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %99 = fsub fast float -0.000000e+00, %98
  %100 = fptoui float %99 to i32
  %101 = fptoui float %95 to i32
  %102 = fptoui float %96 to i32
  %103 = and i32 %100, 31
  %104 = lshr i32 %101, %103
  %105 = lshr i32 %102, %103
  %106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %100, i32 %104, i32 %105, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = fcmp fast olt float %107, -1.000000e+00
  %109 = fcmp fast ogt float %107, -1.000000e+00
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %112 = select i1 %109, float %111, float 1.000000e+00
  %113 = fadd fast float %107, 1.000000e+00
  %114 = fmul fast float %112, %113
  %115 = call float @dx.op.unary.f32(i32 6, float %114)  ; FAbs(value)
  %116 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %117 = fcmp fast oge float %115, %116
  %118 = select i1 %117, float 0x4197782600000000, float %115
  %119 = fcmp fast ogt float %42, %118
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %121

; <label>:121                                     ; preds = %120, %0
  br i1 %108, label %122, label %123

; <label>:122                                     ; preds = %121
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %123

; <label>:123                                     ; preds = %122, %121
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.i32 %125, 3
  %127 = and i32 %126, 3
  %128 = icmp ne i32 %127, 0
  %129 = and i32 %126, 4
  %130 = icmp ne i32 %129, 0
  %131 = and i1 %128, %130
  br i1 %131, label %132, label %143

; <label>:132                                     ; preds = %123
  %133 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %134 = fmul fast float %133, %48
  %135 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %136 = fmul fast float %135, %47
  %137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %136, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = fsub fast float 1.000000e+00, %138
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = fcmp fast olt float %139, %141
  br label %146

; <label>:143                                     ; preds = %123
  %144 = icmp eq i32 %129, 0
  %145 = and i1 %128, %144
  br label %146

; <label>:146                                     ; preds = %143, %132
  %147 = phi i1 [ %142, %132 ], [ %145, %143 ]
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %149, %47
  %152 = fmul fast float %150, %48
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %154, 114688
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %156, float %151, float 0.000000e+00
  %158 = select i1 %156, float %152, float 0.000000e+00
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fmul fast float %160, 2.550000e+02
  %162 = fptoui float %161 to i32
  %163 = select i1 %156, i32 %162, i32 0
  %164 = mul i32 %21, 208
  %165 = add i32 %164, 188
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = and i32 %126, 114688
  %169 = and i32 %126, 8
  %170 = icmp ne i32 %169, 0
  %171 = or i1 %147, %170
  %172 = select i1 %171, i32 %168, i32 16384
  %173 = and i32 %172, %167
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %146
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %176

; <label>:176                                     ; preds = %175, %146
  %177 = and i32 %167, 512
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %203, label %179

; <label>:179                                     ; preds = %176
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %183 = fmul fast float %181, %47
  %184 = fmul fast float %182, %48
  %185 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %187 = fdiv fast float %185, %186
  %188 = fcmp fast ogt float %187, 0x3FFC71C720000000
  br i1 %188, label %189, label %195

; <label>:189                                     ; preds = %179
  %190 = fdiv fast float 0x3FFC71C720000000, %187
  %191 = fmul fast float %190, %184
  %192 = fsub fast float 1.000000e+00, %190
  %193 = fmul fast float %192, 5.000000e-01
  %194 = fadd fast float %193, %191
  br label %203

; <label>:195                                     ; preds = %179
  %196 = fcmp fast olt float %187, 0x3FFC71C720000000
  br i1 %196, label %197, label %203

; <label>:197                                     ; preds = %195
  %198 = fmul fast float %183, 5.625000e-01
  %199 = fmul fast float %198, %187
  %200 = fmul fast float %187, 2.812500e-01
  %201 = fsub fast float 5.000000e-01, %200
  %202 = fadd fast float %201, %199
  br label %203

; <label>:203                                     ; preds = %197, %195, %189, %176
  %204 = phi float [ %34, %176 ], [ %183, %189 ], [ %202, %197 ], [ %183, %195 ]
  %205 = phi float [ %35, %176 ], [ %194, %189 ], [ %184, %197 ], [ %184, %195 ]
  %206 = and i32 %167, 16
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %207, float 1.000000e+00, float %38
  %209 = icmp eq i32 %206, 0
  br i1 %209, label %229, label %210, !dx.controlflow.hints !59

; <label>:210                                     ; preds = %203
  %211 = add i32 %164, 64
  %212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fadd fast float %213, 1.000000e+00
  %215 = fmul fast float %214, %38
  %216 = fsub fast float %215, %213
  %217 = fsub fast float %214, %216
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fsub fast float 1.000000e+00, %215
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = fsub fast float %218, %220
  %222 = fsub fast float %208, %220
  %223 = fdiv fast float %222, %221
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fmul fast float %224, 2.000000e+00
  %226 = fsub fast float 3.000000e+00, %225
  %227 = fmul fast float %224, %224
  %228 = fmul fast float %227, %226
  br label %229

; <label>:229                                     ; preds = %210, %203
  %230 = phi float [ %228, %210 ], [ %208, %203 ]
  %231 = and i32 %167, 1024
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %291, label %233, !dx.controlflow.hints !60

; <label>:233                                     ; preds = %229
  %234 = add i32 %164, 48
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = fadd fast float %36, -5.000000e-01
  %239 = fmul fast float %238, 2.000000e+00
  %240 = fmul fast float %28, %239
  %241 = fmul fast float %29, %239
  %242 = fmul fast float %240, %237
  %243 = fmul fast float %241, %237
  %244 = call float @dx.op.dot2.f32(i32 54, float %28, float %29, float %28, float %29)  ; Dot2(ax,ay,bx,by)
  %245 = call float @dx.op.unary.f32(i32 25, float %244)  ; Rsqrt(value)
  %246 = fmul fast float %242, %245
  %247 = fmul fast float %243, %245
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = fsub fast float %82, %242
  %252 = fadd fast float %251, %249
  %253 = fadd fast float %252, %246
  %254 = fsub fast float %83, %243
  %255 = fadd fast float %254, %250
  %256 = fadd fast float %255, %247
  %257 = fmul fast float %253, %236
  %258 = fmul fast float %256, %236
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = extractvalue %dx.types.ResRet.i32 %259, 1
  %262 = extractvalue %dx.types.ResRet.i32 %259, 2
  %263 = bitcast i32 %260 to float
  %264 = bitcast i32 %261 to float
  %265 = bitcast i32 %262 to float
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 3
  %268 = fmul fast float %265, %267
  %269 = call float @dx.op.unary.f32(i32 12, float %268)  ; Cos(value)
  %270 = call float @dx.op.unary.f32(i32 13, float %268)  ; Sin(value)
  %271 = fadd fast float %258, -5.000000e-01
  %272 = fadd fast float %257, -5.000000e-01
  %273 = fmul fast float %271, %269
  %274 = fmul fast float %270, %272
  %275 = fmul fast float %270, %271
  %276 = fmul fast float %272, %269
  %277 = fmul fast float %267, %263
  %278 = fmul fast float %267, %264
  %279 = fsub fast float 5.000000e-01, %274
  %280 = fadd fast float %279, %273
  %281 = fadd fast float %280, %277
  %282 = fadd fast float %276, 5.000000e-01
  %283 = fadd fast float %282, %275
  %284 = fadd fast float %283, %278
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = add i32 %286, 0
  %288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %288, %dx.types.Handle %44, float %281, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  br label %298

; <label>:291                                     ; preds = %229
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = add i32 %293, 0
  %295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %296 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %295, %dx.types.Handle %44, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  br label %298

; <label>:298                                     ; preds = %291, %233
  %299 = phi float [ %290, %233 ], [ %297, %291 ]
  %300 = fmul fast float %299, %230
  %301 = fcmp fast ogt float %300, 0.000000e+00
  br i1 %301, label %303, label %302

; <label>:302                                     ; preds = %298
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %303

; <label>:303                                     ; preds = %302, %298
  %304 = call float @dx.op.unary.f32(i32 7, float %300)  ; Saturate(value)
  %305 = fmul fast float %47, 5.000000e-01
  %306 = fmul fast float %48, 5.000000e-01
  %307 = fptosi float %305 to i32
  %308 = fptosi float %306 to i32
  %309 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %307, i32 %308, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = lshr i32 %310, 18
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F4C00EBA0000000
  %314 = call float @dx.op.unary.f32(i32 21, float %313)  ; Exp(value)
  %315 = fadd fast float %314, -1.000000e+00
  %316 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %317 = extractvalue %dx.types.Dimensions %316, 0
  %318 = sitofp i32 %317 to float
  %319 = extractvalue %dx.types.Dimensions %316, 1
  %320 = sitofp i32 %319 to float
  %321 = fcmp fast oge float %305, %318
  %322 = fcmp fast oge float %306, %320
  %323 = or i1 %321, %322
  %324 = select i1 %323, float 0x4197782600000000, float %315
  %325 = fsub fast float %324, %42
  %326 = fcmp fast ogt float %325, 0.000000e+00
  %327 = and i32 %163, -2
  %328 = icmp eq i32 %327, 2
  %329 = and i1 %328, %326
  %330 = xor i1 %326, true
  %331 = icmp eq i32 %163, 1
  %332 = and i1 %331, %330
  %333 = or i1 %329, %332
  %334 = and i32 %167, 262144
  %335 = icmp ne i32 %334, 0
  %336 = and i1 %335, %333
  %337 = xor i1 %333, true
  %338 = and i32 %167, 131072
  %339 = icmp ne i32 %338, 0
  %340 = and i1 %339, %337
  %341 = or i1 %336, %340
  br i1 %341, label %342, label %343

; <label>:342                                     ; preds = %303
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %343

; <label>:343                                     ; preds = %342, %303
  %344 = and i32 %167, 32
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %585, label %346, !dx.controlflow.hints !61

; <label>:346                                     ; preds = %343
  %347 = add i32 %164, 80
  %348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 2
  %352 = extractvalue %dx.types.ResRet.f32 %348, 3
  %353 = add i32 %164, 96
  %354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = extractvalue %dx.types.ResRet.f32 %354, 1
  %357 = extractvalue %dx.types.ResRet.f32 %354, 2
  %358 = add i32 %164, 112
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = extractvalue %dx.types.ResRet.f32 %359, 3
  %364 = add i32 %164, 128
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = extractvalue %dx.types.ResRet.f32 %365, 3
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 4096
  %373 = icmp ne i32 %372, 0
  %374 = fcmp fast une float %357, 0.000000e+00
  %375 = and i32 %371, 64
  %376 = icmp ne i32 %375, 0
  %377 = and i32 %371, 128
  %378 = icmp eq i32 %377, 0
  %379 = and i32 %371, 2048
  %380 = icmp eq i32 %379, 0
  %381 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %382 = extractvalue %dx.types.Dimensions %381, 0
  %383 = sitofp i32 %382 to float
  %384 = extractvalue %dx.types.Dimensions %381, 1
  %385 = sitofp i32 %384 to float
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %389 = fmul fast float %387, %47
  %390 = fmul fast float %388, %48
  %391 = fmul fast float %389, %383
  %392 = fmul fast float %390, %385
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %395 = fsub fast float -0.000000e+00, %394
  %396 = fptoui float %395 to i32
  %397 = fptoui float %391 to i32
  %398 = fptoui float %392 to i32
  %399 = and i32 %396, 31
  %400 = lshr i32 %397, %399
  %401 = lshr i32 %398, %399
  %402 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %396, i32 %400, i32 %401, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = fcmp fast ogt float %403, -1.000000e+00
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %407 = select i1 %404, float %406, float 1.000000e+00
  %408 = fadd fast float %403, 1.000000e+00
  %409 = fmul fast float %407, %408
  %410 = call float @dx.op.unary.f32(i32 6, float %409)  ; FAbs(value)
  %411 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %412 = fcmp fast oge float %410, %411
  %413 = select i1 %412, float 0x4197782600000000, float %410
  br i1 %380, label %484, label %414, !dx.controlflow.hints !62

; <label>:414                                     ; preds = %346
  %415 = fmul fast float %52, %387
  %416 = fmul fast float %54, %388
  %417 = fsub fast float 1.000000e+00, %415
  %418 = fsub fast float 1.000000e+00, %416
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %423 = fmul fast float %417, %420
  %424 = fmul fast float %417, %421
  %425 = fmul fast float %417, %422
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %430 = fmul fast float %418, %427
  %431 = fmul fast float %418, %428
  %432 = fmul fast float %418, %429
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 0
  %435 = extractvalue %dx.types.CBufRet.f32 %433, 1
  %436 = extractvalue %dx.types.CBufRet.f32 %433, 2
  %437 = fadd fast float %430, %434
  %438 = fadd fast float %437, %423
  %439 = fadd fast float %431, %435
  %440 = fadd fast float %439, %424
  %441 = fadd fast float %432, %436
  %442 = fadd fast float %441, %425
  %443 = fmul fast float %438, %413
  %444 = fmul fast float %440, %413
  %445 = fmul fast float %442, %413
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %449 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %450 = fadd fast float %443, %447
  %451 = fadd fast float %444, %448
  %452 = fadd fast float %445, %449
  %453 = call float @dx.op.dot3.f32(i32 55, float %450, float %451, float %452, float %450, float %451, float %452)  ; Dot3(ax,ay,az,bx,by,bz)
  %454 = fsub fast float 1.000000e+00, %453
  %455 = fcmp fast olt float %454, %356
  %456 = fcmp fast ogt float %454, %355
  %457 = or i1 %455, %456
  %458 = select i1 %457, float 0.000000e+00, float %454
  %459 = fsub fast float %355, %356
  %460 = fsub fast float %458, %356
  %461 = fdiv fast float %460, %459
  %462 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %463 = fmul fast float %462, 2.000000e+00
  %464 = fsub fast float 3.000000e+00, %463
  %465 = fmul fast float %462, %462
  %466 = fmul fast float %465, %464
  %467 = fsub fast float %363, %369
  %468 = fmul fast float %466, %467
  %469 = fadd fast float %468, %369
  %470 = fmul fast float %360, %22
  %471 = fmul fast float %361, %23
  %472 = fmul fast float %362, %24
  %473 = fsub fast float %470, %366
  %474 = fsub fast float %471, %367
  %475 = fsub fast float %472, %368
  %476 = fmul fast float %466, %473
  %477 = fmul fast float %466, %474
  %478 = fmul fast float %466, %475
  %479 = fadd fast float %476, %366
  %480 = fadd fast float %477, %367
  %481 = fadd fast float %478, %368
  %482 = fmul fast float %349, %349
  %483 = fmul fast float %482, %458
  br label %575

; <label>:484                                     ; preds = %346
  %485 = and i32 %371, 256
  %486 = icmp eq i32 %485, 0
  %487 = fsub fast float %413, %42
  br i1 %486, label %536, label %488

; <label>:488                                     ; preds = %484
  %489 = fadd fast float %355, %42
  %490 = fcmp fast olt float %413, %42
  %491 = fcmp fast ogt float %413, %489
  %492 = or i1 %490, %491
  %493 = select i1 %492, float 0.000000e+00, float %487
  %494 = call float @dx.op.unary.f32(i32 83, float %413)  ; DerivCoarseX(value)
  %495 = call float @dx.op.unary.f32(i32 84, float %413)  ; DerivCoarseY(value)
  %496 = fmul fast float %494, %494
  %497 = fmul fast float %495, %495
  %498 = fadd fast float %497, %496
  %499 = call float @dx.op.unary.f32(i32 24, float %498)  ; Sqrt(value)
  %500 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %501 = fmul fast float %500, %499
  %502 = call float @dx.op.unary.f32(i32 7, float %501)  ; Saturate(value)
  %503 = fmul fast float %502, %356
  %504 = fdiv fast float %487, %503
  %505 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %506 = fmul fast float %505, 2.000000e+00
  %507 = fsub fast float 3.000000e+00, %506
  %508 = fmul fast float %505, %505
  %509 = fmul fast float %508, %507
  %510 = fsub fast float %413, %489
  %511 = fadd fast float %510, %503
  %512 = fdiv fast float %511, %503
  %513 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %514 = fmul fast float %513, 2.000000e+00
  %515 = fsub fast float 3.000000e+00, %514
  %516 = fmul fast float %513, %513
  %517 = fmul fast float %516, %515
  %518 = fsub fast float %509, %517
  %519 = fsub fast float %363, %369
  %520 = fmul fast float %518, %519
  %521 = fadd fast float %520, %369
  %522 = fmul fast float %360, %22
  %523 = fmul fast float %361, %23
  %524 = fmul fast float %362, %24
  %525 = fsub fast float %522, %366
  %526 = fsub fast float %523, %367
  %527 = fsub fast float %524, %368
  %528 = fmul fast float %518, %525
  %529 = fmul fast float %518, %526
  %530 = fmul fast float %518, %527
  %531 = fadd fast float %528, %366
  %532 = fadd fast float %529, %367
  %533 = fadd fast float %530, %368
  %534 = fmul fast float %493, %349
  %535 = call float @dx.op.unary.f32(i32 6, float %534)  ; FAbs(value)
  br label %575

; <label>:536                                     ; preds = %484
  br i1 %374, label %537, label %548

; <label>:537                                     ; preds = %536
  %538 = select i1 %376, float 5.000000e+01, float 1.000000e+00
  %539 = fmul fast float %538, %349
  %540 = fmul fast float %34, 2.000000e+00
  %541 = fmul fast float %35, 2.000000e+00
  %542 = fadd fast float %540, -1.000000e+00
  %543 = fadd fast float %541, -1.000000e+00
  %544 = call float @dx.op.dot2.f32(i32 54, float %542, float %543, float %542, float %543)  ; Dot2(ax,ay,bx,by)
  %545 = fmul fast float %544, %357
  %546 = fsub fast float %487, %545
  %547 = fmul fast float %539, %546
  br label %575

; <label>:548                                     ; preds = %536
  br i1 %378, label %568, label %549

; <label>:549                                     ; preds = %548
  %550 = select i1 %376, float 0x3F947AE140000000, float 1.000000e+00
  %551 = fdiv fast float 1.000000e+00, %550
  %552 = fmul fast float %550, %350
  %553 = fmul fast float %550, %351
  %554 = fmul fast float %551, %352
  %555 = call float @dx.op.unary.f32(i32 6, float %487)  ; FAbs(value)
  %556 = fcmp fast olt float %555, %552
  br i1 %556, label %557, label %561, !dx.controlflow.hints !63

; <label>:557                                     ; preds = %549
  %558 = fmul fast float %551, %349
  %559 = fmul fast float %558, %555
  %560 = call float @dx.op.unary.f32(i32 6, float %559)  ; FAbs(value)
  br label %575

; <label>:561                                     ; preds = %549
  %562 = fcmp fast ogt float %555, %553
  br i1 %562, label %563, label %575

; <label>:563                                     ; preds = %561
  %564 = fsub fast float %555, %553
  %565 = fmul fast float %554, %564
  %566 = call float @dx.op.unary.f32(i32 6, float %565)  ; FAbs(value)
  %567 = fsub fast float 1.000000e+00, %566
  br label %575

; <label>:568                                     ; preds = %548
  %569 = select i1 %376, float 5.000000e+01, float 1.000000e+00
  %570 = fmul fast float %569, %349
  %571 = call float @dx.op.unary.f32(i32 6, float %325)  ; FAbs(value)
  %572 = select i1 %373, float %571, float 0x47EFFFFFE0000000
  %573 = call float @dx.op.binary.f32(i32 36, float %487, float %572)  ; FMin(a,b)
  %574 = fmul fast float %570, %573
  br label %575

; <label>:575                                     ; preds = %568, %563, %561, %557, %537, %488, %414
  %576 = phi float [ %483, %414 ], [ %535, %488 ], [ %547, %537 ], [ %574, %568 ], [ %560, %557 ], [ %567, %563 ], [ %555, %561 ]
  %577 = phi float [ %479, %414 ], [ %531, %488 ], [ %22, %537 ], [ %22, %568 ], [ %22, %557 ], [ %22, %563 ], [ %22, %561 ]
  %578 = phi float [ %480, %414 ], [ %532, %488 ], [ %23, %537 ], [ %23, %568 ], [ %23, %557 ], [ %23, %563 ], [ %23, %561 ]
  %579 = phi float [ %481, %414 ], [ %533, %488 ], [ %24, %537 ], [ %24, %568 ], [ %24, %557 ], [ %24, %563 ], [ %24, %561 ]
  %580 = phi float [ %469, %414 ], [ %521, %488 ], [ 1.000000e+00, %537 ], [ 1.000000e+00, %568 ], [ 1.000000e+00, %557 ], [ 1.000000e+00, %563 ], [ 1.000000e+00, %561 ]
  %581 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %582 = fmul fast float %581, %38
  %583 = fmul fast float %580, %304
  %584 = fmul fast float %583, %581
  br label %585

; <label>:585                                     ; preds = %575, %343
  %586 = phi float [ %584, %575 ], [ %304, %343 ]
  %587 = phi float [ %582, %575 ], [ %38, %343 ]
  %588 = phi float [ %577, %575 ], [ %22, %343 ]
  %589 = phi float [ %578, %575 ], [ %23, %343 ]
  %590 = phi float [ %579, %575 ], [ %24, %343 ]
  %591 = fmul fast float %588, %25
  %592 = fmul fast float %589, %25
  %593 = fmul fast float %590, %25
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %596 = fptosi float %42 to i32
  %597 = sitofp i32 %596 to float
  %598 = fadd fast float %595, %597
  %599 = fmul fast float %598, 0x3FE3C6EF40000000
  %600 = frem fast float %47, 2.560000e+02
  %601 = frem fast float %48, 2.560000e+02
  %602 = fptoui float %600 to i32
  %603 = fptoui float %601 to i32
  %604 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %602, i32 %603, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = fadd fast float %605, %599
  %607 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %608 = and i32 %167, 1
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %667, label %610, !dx.controlflow.hints !64

; <label>:610                                     ; preds = %585
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 2
  %613 = extractvalue %dx.types.ResRet.f32 %611, 3
  %614 = add i32 %164, 16
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = add i32 %164, 32
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = and i32 %167, 2
  %625 = icmp eq i32 %624, 0
  %626 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 25, float %626)  ; Rsqrt(value)
  %628 = fmul fast float %627, %30
  %629 = fmul fast float %627, %31
  %630 = fmul fast float %627, %32
  %631 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = call float @dx.op.unary.f32(i32 25, float %631)  ; Rsqrt(value)
  %633 = fmul fast float %632, %82
  %634 = fmul fast float %632, %83
  %635 = fmul fast float %632, %84
  %636 = call float @dx.op.dot3.f32(i32 55, float %633, float %634, float %635, float %628, float %629, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %637 = fmul fast float %636, %636
  %638 = fmul fast float %637, %612
  %639 = fadd fast float %638, %613
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  br i1 %625, label %641, label %651, !dx.controlflow.hints !65

; <label>:641                                     ; preds = %610
  %642 = extractvalue %dx.types.ResRet.f32 %611, 1
  %643 = extractvalue %dx.types.ResRet.f32 %611, 0
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %646 = fmul fast float %645, %631
  %647 = fsub fast float %643, %646
  %648 = fmul fast float %647, %642
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = fmul fast float %649, %640
  br label %651

; <label>:651                                     ; preds = %641, %610
  %652 = phi float [ %650, %641 ], [ %640, %610 ]
  %653 = fsub fast float %616, %621
  %654 = fsub fast float %617, %622
  %655 = fsub fast float %618, %623
  %656 = fmul fast float %652, %653
  %657 = fmul fast float %652, %654
  %658 = fmul fast float %652, %655
  %659 = fadd fast float %656, %621
  %660 = fadd fast float %657, %622
  %661 = fadd fast float %658, %623
  %662 = fmul fast float %659, %591
  %663 = fmul fast float %660, %592
  %664 = fmul fast float %661, %593
  %665 = fmul fast float %652, %586
  %666 = fmul fast float %652, %587
  br label %667

; <label>:667                                     ; preds = %651, %585
  %668 = phi float [ %665, %651 ], [ %586, %585 ]
  %669 = phi float [ %666, %651 ], [ %587, %585 ]
  %670 = phi float [ %662, %651 ], [ %591, %585 ]
  %671 = phi float [ %663, %651 ], [ %592, %585 ]
  %672 = phi float [ %664, %651 ], [ %593, %585 ]
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %676, %dx.types.Handle %43, float %204, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = shl i32 %682, 4
  %684 = and i32 %683, 32752
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = lshr i32 %682, 7
  %687 = and i32 %686, 32752
  %688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %687)  ; LegacyF16ToF32(value)
  %689 = lshr i32 %682, 22
  %690 = shl nuw nsw i32 %689, 5
  %691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %690)  ; LegacyF16ToF32(value)
  %692 = fmul fast float %685, %678
  %693 = fmul fast float %688, %679
  %694 = fmul fast float %691, %680
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %697 = fmul fast float %692, %696
  %698 = fmul fast float %693, %696
  %699 = fmul fast float %694, %696
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = lshr i32 %701, 22
  %703 = shl nuw nsw i32 %702, 5
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = fmul fast float %704, %697
  %706 = select i1 %147, float %705, float %697
  %707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = extractvalue %dx.types.ResRet.f32 %707, 1
  %710 = extractvalue %dx.types.ResRet.f32 %707, 2
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 1
  %713 = fmul fast float %706, %670
  %714 = fmul fast float %698, %671
  %715 = fmul fast float %699, %672
  %716 = call float @dx.op.dot3.f32(i32 55, float %713, float %714, float %715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = select i1 %147, float 0.000000e+00, float %713
  %718 = select i1 %147, float %716, float %714
  %719 = select i1 %147, float 0.000000e+00, float %715
  %720 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 255
  %724 = uitofp i32 %723 to float
  %725 = lshr i32 %722, 8
  %726 = and i32 %725, 255
  %727 = uitofp i32 %726 to float
  %728 = fmul fast float %727, %720
  %729 = fadd fast float %728, %724
  %730 = fmul fast float %729, 0x3F70101020000000
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = and i32 %167, 8192
  %733 = icmp eq i32 %732, 0
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  br i1 %733, label %742, label %736, !dx.controlflow.hints !66

; <label>:736                                     ; preds = %667
  %737 = add i32 %164, 176
  %738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = fcmp fast oge float %739, 0.000000e+00
  %741 = select i1 %740, float %739, float %735
  br label %748

; <label>:742                                     ; preds = %667
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = bitcast i32 %744 to float
  %746 = fcmp fast oge float %745, 0.000000e+00
  %747 = select i1 %746, float %745, float %735
  br label %748

; <label>:748                                     ; preds = %742, %736
  %749 = phi float [ %741, %736 ], [ %747, %742 ]
  %750 = fmul fast float %720, %669
  %751 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %307, i32 %308, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = lshr i32 %752, 18
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F4C00EBA0000000
  %756 = call float @dx.op.unary.f32(i32 21, float %755)  ; Exp(value)
  %757 = fadd fast float %756, -1.000000e+00
  %758 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %759 = extractvalue %dx.types.Dimensions %758, 0
  %760 = sitofp i32 %759 to float
  %761 = extractvalue %dx.types.Dimensions %758, 1
  %762 = sitofp i32 %761 to float
  %763 = fcmp fast oge float %305, %760
  %764 = fcmp fast oge float %306, %762
  %765 = or i1 %763, %764
  %766 = select i1 %765, float 0x4197782600000000, float %757
  %767 = icmp eq i32 %163, 3
  %768 = fcmp fast ogt float %42, %766
  %769 = and i1 %331, %768
  %770 = or i1 %767, %769
  %771 = icmp eq i32 %163, 2
  %772 = fcmp fast ole float %42, %766
  %773 = and i1 %771, %772
  %774 = or i1 %773, %770
  %775 = fmul fast float %588, %33
  %776 = fmul fast float %775, %706
  %777 = fmul fast float %776, %708
  %778 = fmul fast float %777, %712
  %779 = fmul fast float %589, %33
  %780 = fmul fast float %779, %698
  %781 = fmul fast float %780, %709
  %782 = fmul fast float %781, %712
  %783 = fmul fast float %590, %33
  %784 = fmul fast float %783, %699
  %785 = fmul fast float %784, %710
  %786 = fmul fast float %785, %712
  %787 = fadd fast float %778, %717
  %788 = fadd fast float %718, %782
  %789 = fadd fast float %786, %719
  %790 = fmul fast float %787, %668
  %791 = fmul fast float %788, %668
  %792 = fmul fast float %789, %668
  %793 = fmul fast float %749, %731
  %794 = fsub fast float 1.000000e+00, %731
  %795 = fsub fast float %794, %750
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.f32 %797, 3
  %799 = fmul fast float %798, %796
  %800 = fadd fast float %799, %793
  %801 = and i32 %167, 1048576
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %894, label %803, !dx.controlflow.hints !67

; <label>:803                                     ; preds = %748
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 3
  %807 = fmul fast float %805, %47
  %808 = fmul fast float %806, %48
  %809 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %810 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %811 = select i1 %774, i32 2, i32 0
  %812 = or i32 %811, 1
  %813 = uitofp i32 %812 to float
  %814 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %809, float %810, float %813, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  %819 = add nuw nsw i32 %811, 2
  %820 = uitofp i32 %819 to float
  %821 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %809, float %810, float %820, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = extractvalue %dx.types.ResRet.f32 %821, 2
  %825 = extractvalue %dx.types.ResRet.f32 %821, 3
  %826 = call float @dx.op.binary.f32(i32 35, float %816, float %817)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 35, float %815, float %826)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 35, float %827, float %818)  ; FMax(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %823, float %824)  ; FMin(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %822, float %829)  ; FMin(a,b)
  %831 = call float @dx.op.binary.f32(i32 36, float %830, float %825)  ; FMin(a,b)
  %832 = fmul fast float %828, 2.550000e+02
  %833 = fadd fast float %832, 0x3F70101020000000
  %834 = fptoui float %833 to i32
  %835 = fmul fast float %831, 2.550000e+02
  %836 = fadd fast float %835, 0x3F70101020000000
  %837 = fptoui float %836 to i32
  %838 = icmp ult i32 %834, %837
  br i1 %838, label %839, label %887

; <label>:839                                     ; preds = %803
  %840 = fcmp fast ogt float %41, 9.843750e-01
  %841 = fadd fast float %42, -4.000000e+00
  %842 = select i1 %840, float -4.000000e+00, float %841
  %843 = call float @dx.op.binary.f32(i32 35, float %842, float 0.000000e+00)  ; FMax(a,b)
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %846 = fadd fast float %845, %843
  %847 = extractvalue %dx.types.CBufRet.f32 %844, 2
  %848 = fmul fast float %846, %847
  %849 = call float @dx.op.unary.f32(i32 23, float %848)  ; Log(value)
  %850 = extractvalue %dx.types.CBufRet.f32 %844, 3
  %851 = fmul fast float %850, %849
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %854 = fmul fast float %851, %853
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = uitofp i32 %834 to float
  %857 = uitofp i32 %837 to float
  %858 = fadd fast float %856, 5.000000e-01
  %859 = fadd fast float %857, 5.000000e-01
  %860 = fmul fast float %853, %858
  %861 = fmul fast float %853, %859
  %862 = fadd fast float %860, 0x3F0FFB4800000000
  %863 = fadd fast float %861, 0xBF0FFB4800000000
  %864 = call float @dx.op.binary.f32(i32 35, float %855, float %862)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %864, float %863)  ; FMin(a,b)
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %870 = select i1 %774, float %869, float 0.000000e+00
  %871 = fmul fast float %867, %865
  %872 = fadd fast float %870, %871
  %873 = fadd fast float %870, %868
  %874 = fsub fast float %867, %868
  %875 = fadd fast float %874, %870
  %876 = call float @dx.op.binary.f32(i32 35, float %872, float %873)  ; FMax(a,b)
  %877 = call float @dx.op.binary.f32(i32 36, float %876, float %875)  ; FMin(a,b)
  %878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %809, float %810, float %877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %884 = fmul fast float %883, %879
  %885 = fmul fast float %883, %880
  %886 = fmul fast float %883, %881
  br label %887

; <label>:887                                     ; preds = %839, %803
  %888 = phi float [ %884, %839 ], [ 1.000000e+00, %803 ]
  %889 = phi float [ %885, %839 ], [ 1.000000e+00, %803 ]
  %890 = phi float [ %886, %839 ], [ 1.000000e+00, %803 ]
  %891 = fmul fast float %888, %790
  %892 = fmul fast float %889, %791
  %893 = fmul fast float %890, %792
  br label %894

; <label>:894                                     ; preds = %887, %748
  %895 = phi float [ %891, %887 ], [ %790, %748 ]
  %896 = phi float [ %892, %887 ], [ %791, %748 ]
  %897 = phi float [ %893, %887 ], [ %792, %748 ]
  %898 = and i32 %167, 2097152
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %904, label %900, !dx.controlflow.hints !68

; <label>:900                                     ; preds = %894
  %901 = add i32 %164, 192
  %902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  br label %907

; <label>:904                                     ; preds = %894
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 3
  br label %907

; <label>:907                                     ; preds = %904, %900
  %908 = phi float [ %903, %900 ], [ %906, %904 ]
  br i1 %769, label %909, label %993

; <label>:909                                     ; preds = %907
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %912 = extractvalue %dx.types.CBufRet.f32 %910, 3
  %913 = fmul fast float %911, %47
  %914 = fmul fast float %912, %48
  %915 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %916 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %917 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %915, float %916, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = extractvalue %dx.types.ResRet.f32 %917, 3
  %922 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %915, float %916, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = extractvalue %dx.types.ResRet.f32 %922, 2
  %926 = extractvalue %dx.types.ResRet.f32 %922, 3
  %927 = call float @dx.op.binary.f32(i32 35, float %919, float %920)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 35, float %918, float %927)  ; FMax(a,b)
  %929 = call float @dx.op.binary.f32(i32 35, float %928, float %921)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 36, float %924, float %925)  ; FMin(a,b)
  %931 = call float @dx.op.binary.f32(i32 36, float %923, float %930)  ; FMin(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float %931, float %926)  ; FMin(a,b)
  %933 = fmul fast float %929, 2.550000e+02
  %934 = fadd fast float %933, 0x3F70101020000000
  %935 = fptoui float %934 to i32
  %936 = fmul fast float %932, 2.550000e+02
  %937 = fadd fast float %936, 0x3F70101020000000
  %938 = fptoui float %937 to i32
  %939 = icmp ult i32 %935, %938
  br i1 %939, label %940, label %982

; <label>:940                                     ; preds = %909
  %941 = fcmp fast ogt float %41, 9.843750e-01
  %942 = fadd fast float %42, -4.000000e+00
  %943 = select i1 %941, float -4.000000e+00, float %942
  %944 = call float @dx.op.binary.f32(i32 35, float %943, float 0.000000e+00)  ; FMax(a,b)
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %947 = fadd fast float %946, %944
  %948 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %949 = fmul fast float %947, %948
  %950 = call float @dx.op.unary.f32(i32 23, float %949)  ; Log(value)
  %951 = extractvalue %dx.types.CBufRet.f32 %945, 3
  %952 = fmul fast float %951, %950
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %955 = fmul fast float %952, %954
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %957 = uitofp i32 %935 to float
  %958 = uitofp i32 %938 to float
  %959 = fadd fast float %957, 5.000000e-01
  %960 = fadd fast float %958, 5.000000e-01
  %961 = fmul fast float %954, %959
  %962 = fmul fast float %954, %960
  %963 = fadd fast float %961, 0x3F0FFB4800000000
  %964 = fadd fast float %962, 0xBF0FFB4800000000
  %965 = call float @dx.op.binary.f32(i32 35, float %956, float %963)  ; FMax(a,b)
  %966 = call float @dx.op.binary.f32(i32 36, float %965, float %964)  ; FMin(a,b)
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %970 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %971 = fmul fast float %968, %966
  %972 = fadd fast float %970, %971
  %973 = fadd fast float %970, %969
  %974 = fsub fast float %968, %969
  %975 = fadd fast float %974, %970
  %976 = call float @dx.op.binary.f32(i32 35, float %972, float %973)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %976, float %975)  ; FMin(a,b)
  %978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %915, float %916, float %977, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = extractvalue %dx.types.ResRet.f32 %978, 1
  %981 = extractvalue %dx.types.ResRet.f32 %978, 2
  br label %982

; <label>:982                                     ; preds = %940, %909
  %983 = phi float [ %979, %940 ], [ 1.000000e+00, %909 ]
  %984 = phi float [ %980, %940 ], [ 1.000000e+00, %909 ]
  %985 = phi float [ %981, %940 ], [ 1.000000e+00, %909 ]
  %986 = call float @dx.op.dot3.f32(i32 55, float %983, float %984, float %985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = select i1 %147, float %986, float %983
  %988 = select i1 %147, float %986, float %984
  %989 = select i1 %147, float 1.000000e+00, float %985
  %990 = fmul fast float %987, %895
  %991 = fmul fast float %988, %896
  %992 = fmul fast float %989, %897
  br label %993

; <label>:993                                     ; preds = %982, %907
  %994 = phi float [ %766, %982 ], [ %42, %907 ]
  %995 = phi float [ %990, %982 ], [ %895, %907 ]
  %996 = phi float [ %991, %982 ], [ %896, %907 ]
  %997 = phi float [ %992, %982 ], [ %897, %907 ]
  %998 = phi float [ %983, %982 ], [ 1.000000e+00, %907 ]
  br i1 %774, label %1341, label %999

; <label>:999                                     ; preds = %993
  %1000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %26, float %27, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = fmul fast float %1001, %998
  %1005 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = select i1 %147, float %1005, float %1001
  %1007 = select i1 %147, float %1005, float %1002
  %1008 = select i1 %147, float 1.000000e+00, float %1003
  %1009 = fmul fast float %1006, %995
  %1010 = fmul fast float %1007, %996
  %1011 = fmul fast float %1008, %997
  %1012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.i32 %1012, 0
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1341, label %1015, !dx.controlflow.hints !69

; <label>:1015                                    ; preds = %999
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 3
  %1019 = fmul fast float %1017, %47
  %1020 = fmul fast float %1018, %48
  %1021 = fmul fast float %1019, 2.000000e+00
  %1022 = fmul fast float %1020, 2.000000e+00
  %1023 = fsub fast float 1.000000e+00, %1021
  %1024 = fsub fast float 1.000000e+00, %1022
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1029 = fmul fast float %1023, %1026
  %1030 = fmul fast float %1023, %1027
  %1031 = fmul fast float %1023, %1028
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1036 = fmul fast float %1024, %1033
  %1037 = fmul fast float %1024, %1034
  %1038 = fmul fast float %1024, %1035
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1043 = fadd fast float %1036, %1040
  %1044 = fadd fast float %1043, %1029
  %1045 = fadd fast float %1037, %1041
  %1046 = fadd fast float %1045, %1030
  %1047 = fadd fast float %1038, %1042
  %1048 = fadd fast float %1047, %1031
  %1049 = fmul fast float %1044, %994
  %1050 = fmul fast float %1046, %994
  %1051 = fmul fast float %1048, %994
  %1052 = fmul fast float %1049, %1049
  %1053 = fmul fast float %1050, %1050
  %1054 = fadd fast float %1052, %1053
  %1055 = fmul fast float %1051, %1051
  %1056 = fadd fast float %1054, %1055
  %1057 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = fsub fast float %1057, %1059
  %1061 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1062 = fmul fast float %1060, %1061
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = fadd fast float %1063, -5.000000e-01
  %1065 = fmul fast float %1064, 2.000000e+00
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1068 = call float @dx.op.binary.f32(i32 36, float %1067, float %1065)  ; FMin(a,b)
  %1069 = fsub fast float -0.000000e+00, %1067
  %1070 = fcmp fast ogt float %1068, %1069
  br i1 %1070, label %1071, label %1341, !dx.controlflow.hints !70

; <label>:1071                                    ; preds = %1015
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 3
  %1074 = fcmp fast ogt float %1073, 0.000000e+00
  br i1 %1074, label %1075, label %1150, !dx.controlflow.hints !71

; <label>:1075                                    ; preds = %1071
  %1076 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1077 = extractvalue %dx.types.Dimensions %1076, 0
  %1078 = sitofp i32 %1077 to float
  %1079 = extractvalue %dx.types.Dimensions %1076, 1
  %1080 = sitofp i32 %1079 to float
  %1081 = fmul fast float %1019, %1078
  %1082 = fmul fast float %1020, %1080
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1085 = fsub fast float -0.000000e+00, %1084
  %1086 = fptoui float %1085 to i32
  %1087 = fptoui float %1081 to i32
  %1088 = fptoui float %1082 to i32
  %1089 = and i32 %1086, 31
  %1090 = lshr i32 %1087, %1089
  %1091 = lshr i32 %1088, %1089
  %1092 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %1086, i32 %1090, i32 %1091, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = fcmp fast olt float %1093, -1.000000e+00
  %1095 = fcmp fast ogt float %1093, -1.000000e+00
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1098 = select i1 %1095, float %1097, float 1.000000e+00
  %1099 = fadd fast float %1093, 1.000000e+00
  %1100 = fmul fast float %1098, %1099
  %1101 = call float @dx.op.unary.f32(i32 6, float %1100)  ; FAbs(value)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1096, 3
  %1103 = fcmp fast oge float %1101, %1102
  %1104 = select i1 %1103, float 0x4197782600000000, float %1101
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.CBufRet.f32 %1105, 2
  %1109 = select i1 %1094, float %1106, float %1026
  %1110 = select i1 %1094, float %1107, float %1027
  %1111 = select i1 %1094, float %1108, float %1028
  %1112 = fmul fast float %1109, %1023
  %1113 = fmul fast float %1110, %1023
  %1114 = fmul fast float %1111, %1023
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1119 = select i1 %1094, float %1116, float %1033
  %1120 = select i1 %1094, float %1117, float %1034
  %1121 = select i1 %1094, float %1118, float %1035
  %1122 = fmul fast float %1119, %1024
  %1123 = fmul fast float %1120, %1024
  %1124 = fmul fast float %1121, %1024
  %1125 = fadd fast float %1122, %1112
  %1126 = fadd fast float %1123, %1113
  %1127 = fadd fast float %1124, %1114
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1132 = select i1 %1094, float %1129, float %1040
  %1133 = select i1 %1094, float %1130, float %1041
  %1134 = select i1 %1094, float %1131, float %1042
  %1135 = fadd fast float %1125, %1132
  %1136 = fadd fast float %1126, %1133
  %1137 = fadd fast float %1127, %1134
  %1138 = fmul fast float %1135, %1104
  %1139 = fmul fast float %1136, %1104
  %1140 = fmul fast float %1137, %1104
  %1141 = fmul fast float %1138, %1138
  %1142 = fmul fast float %1139, %1139
  %1143 = fadd fast float %1141, %1142
  %1144 = fmul fast float %1140, %1140
  %1145 = fadd fast float %1143, %1144
  %1146 = call float @dx.op.unary.f32(i32 24, float %1145)  ; Sqrt(value)
  %1147 = fsub fast float %1146, %1059
  %1148 = fmul fast float %1147, %1061
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  br label %1150

; <label>:1150                                    ; preds = %1075, %1071
  %1151 = phi float [ %1149, %1075 ], [ 1.000000e+00, %1071 ]
  %1152 = fmul fast float %1068, 5.000000e-01
  %1153 = fadd fast float %1152, 5.000000e-01
  %1154 = call float @dx.op.unary.f32(i32 22, float %1153)  ; Frc(value)
  %1155 = call float @dx.op.unary.f32(i32 27, float %1154)  ; Round_ni(value)
  %1156 = call float @dx.op.unary.f32(i32 22, float %1154)  ; Frc(value)
  %1157 = fmul fast float %1156, 2.000000e+00
  %1158 = fadd fast float %1157, -1.000000e+00
  %1159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %1019, float %1020, float %1155, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1159, 2
  %1163 = extractvalue %dx.types.ResRet.f32 %1159, 3
  %1164 = fadd fast float %1160, -5.000000e-01
  %1165 = fadd fast float %1162, -5.000000e-01
  %1166 = fmul fast float %1164, 0xBFD5555560000000
  %1167 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1165, float %1166)  ; FMad(a,b,c)
  %1168 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1161, float 0.000000e+00)  ; FMad(a,b,c)
  %1169 = fadd fast float %1168, %1163
  %1170 = fmul fast float %1164, -7.500000e-01
  %1171 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1165, float %1170)  ; FMad(a,b,c)
  %1172 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1161, float 0.000000e+00)  ; FMad(a,b,c)
  %1173 = fadd fast float %1172, %1163
  %1174 = call float @dx.op.binary.f32(i32 35, float %1167, float -1.000000e+00)  ; FMax(a,b)
  %1175 = call float @dx.op.binary.f32(i32 35, float %1169, float -1.000000e+00)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1171, float -1.000000e+00)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1173, float -1.000000e+00)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1174, float 1.000000e+00)  ; FMin(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1175, float 1.000000e+00)  ; FMin(a,b)
  %1180 = call float @dx.op.binary.f32(i32 36, float %1176, float 1.000000e+00)  ; FMin(a,b)
  %1181 = call float @dx.op.binary.f32(i32 36, float %1177, float 1.000000e+00)  ; FMin(a,b)
  %1182 = fcmp fast olt float %1178, 0x3FEFFF8020000000
  br i1 %1182, label %1183, label %1298, !dx.controlflow.hints !72

; <label>:1183                                    ; preds = %1150
  %1184 = extractvalue %dx.types.CBufRet.f32 %1066, 3
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1189 = extractvalue %dx.types.CBufRet.f32 %1185, 3
  %1190 = fsub fast float %1186, %1178
  %1191 = fsub fast float %1187, %1179
  %1192 = fsub fast float %1188, %1180
  %1193 = fsub fast float %1189, %1181
  %1194 = fmul fast float %1190, %1184
  %1195 = fmul fast float %1191, %1184
  %1196 = fmul fast float %1192, %1184
  %1197 = fmul fast float %1193, %1184
  %1198 = fadd fast float %1194, %1178
  %1199 = fadd fast float %1195, %1179
  %1200 = fsub fast float -0.000000e+00, %1199
  %1201 = fadd fast float %1196, %1180
  %1202 = fadd fast float %1197, %1181
  %1203 = fmul fast float %1198, %1198
  %1204 = fsub fast float %1199, %1203
  %1205 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1204)  ; FMax(a,b)
  %1206 = fdiv fast float 1.000000e+00, %1205
  %1207 = fmul fast float %1199, %1198
  %1208 = fsub fast float %1201, %1207
  %1209 = fsub fast float %1158, %1198
  %1210 = fmul fast float %1158, %1158
  %1211 = fsub fast float %1210, %1199
  %1212 = fmul fast float %1209, %1206
  %1213 = fmul fast float %1212, %1208
  %1214 = fsub fast float %1211, %1213
  %1215 = fmul fast float %1199, %1199
  %1216 = fsub fast float %1202, %1215
  %1217 = fmul fast float %1208, %1208
  %1218 = fmul fast float %1217, %1206
  %1219 = fsub fast float %1216, %1218
  %1220 = fdiv fast float %1214, %1219
  %1221 = fmul fast float %1208, %1220
  %1222 = fsub fast float %1209, %1221
  %1223 = fmul fast float %1222, %1206
  %1224 = fmul fast float %1223, %1198
  %1225 = fsub fast float 1.000000e+00, %1224
  %1226 = fmul fast float %1199, %1220
  %1227 = fsub fast float %1225, %1226
  %1228 = fmul fast float %1223, %1223
  %1229 = fmul fast float %1220, 4.000000e+00
  %1230 = fmul fast float %1229, %1227
  %1231 = fsub fast float %1228, %1230
  %1232 = call float @dx.op.unary.f32(i32 24, float %1231)  ; Sqrt(value)
  %1233 = fcmp fast oge float %1223, 0.000000e+00
  %1234 = fsub fast float -0.000000e+00, %1232
  %1235 = select i1 %1233, float %1234, float %1232
  %1236 = fsub fast float %1235, %1223
  %1237 = fdiv fast float %1236, %1220
  %1238 = fdiv fast float %1227, %1236
  %1239 = fmul fast float %1237, 5.000000e-01
  %1240 = fmul fast float %1238, 2.000000e+00
  %1241 = select i1 %1233, float %1239, float %1240
  %1242 = select i1 %1233, float %1240, float %1239
  %1243 = call float @dx.op.binary.f32(i32 35, float %1241, float %1242)  ; FMax(a,b)
  %1244 = call float @dx.op.binary.f32(i32 36, float %1241, float %1242)  ; FMin(a,b)
  %1245 = fcmp fast ogt float %1158, %1244
  br i1 %1245, label %1246, label %1256

; <label>:1246                                    ; preds = %1183
  %1247 = fsub fast float %1158, %1244
  %1248 = fsub fast float %1243, %1244
  %1249 = fmul fast float %1247, %1248
  %1250 = fmul fast float %1243, %1158
  %1251 = fadd fast float %1243, %1158
  %1252 = fmul fast float %1251, %1198
  %1253 = fadd fast float %1250, %1199
  %1254 = fsub fast float %1253, %1252
  %1255 = fdiv fast float %1254, %1249
  br label %1256

; <label>:1256                                    ; preds = %1246, %1183
  %1257 = phi float [ %1255, %1246 ], [ 0.000000e+00, %1183 ]
  %1258 = fcmp fast ogt float %1158, %1243
  %1259 = fsub fast float %1158, %1243
  br i1 %1258, label %1260, label %1270

; <label>:1260                                    ; preds = %1256
  %1261 = fsub fast float %1243, %1244
  %1262 = fmul fast float %1261, %1259
  %1263 = fmul fast float %1244, %1158
  %1264 = fadd fast float %1244, %1158
  %1265 = fmul fast float %1264, %1198
  %1266 = fsub fast float %1200, %1263
  %1267 = fadd fast float %1266, %1265
  %1268 = fdiv fast float %1267, %1262
  %1269 = fadd fast float %1268, %1257
  br label %1270

; <label>:1270                                    ; preds = %1260, %1256
  %1271 = phi float [ %1269, %1260 ], [ %1257, %1256 ]
  %1272 = fsub fast float %1158, %1244
  %1273 = fmul fast float %1272, %1259
  %1274 = fmul fast float %1244, %1243
  %1275 = fadd fast float %1244, %1243
  %1276 = fmul fast float %1275, %1198
  %1277 = fadd fast float %1274, %1199
  %1278 = fsub fast float %1277, %1276
  %1279 = fdiv fast float %1278, %1273
  %1280 = call float @dx.op.unary.f32(i32 7, float %1271)  ; Saturate(value)
  %1281 = fcmp fast oeq float %908, 0.000000e+00
  %1282 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1283 = fcmp fast oeq float %1282, 0.000000e+00
  %1284 = or i1 %1281, %1283
  %1285 = fmul fast float %1282, 2.000000e+00
  %1286 = fadd fast float %1067, %1068
  %1287 = fdiv fast float %1286, %1285
  %1288 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1289 = fmul fast float %1288, 2.000000e+00
  %1290 = fsub fast float 3.000000e+00, %1289
  %1291 = fmul fast float %1288, %1288
  %1292 = fmul fast float %1291, %1290
  %1293 = select i1 %1284, float 1.000000e+00, float %1292
  %1294 = fmul fast float %1279, %908
  %1295 = fadd fast float %1280, %1294
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1297 = fmul fast float %1293, %1296
  br label %1298

; <label>:1298                                    ; preds = %1270, %1150
  %1299 = phi float [ %1297, %1270 ], [ 0.000000e+00, %1150 ]
  %1300 = fsub fast float 1.000000e+00, %1299
  %1301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.i32 %1303, 2
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1311, label %1306

; <label>:1306                                    ; preds = %1298
  %1307 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1308 = fadd fast float %1302, -1.000000e+00
  %1309 = fmul fast float %1307, %1308
  %1310 = fadd fast float %1309, 1.000000e+00
  br label %1311

; <label>:1311                                    ; preds = %1306, %1298
  %1312 = phi float [ %1310, %1306 ], [ %1300, %1298 ]
  br i1 %1074, label %1313, label %1331

; <label>:1313                                    ; preds = %1311
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1316 = fsub fast float %1151, %1315
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = fsub fast float %1151, %1073
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = fsub fast float %1317, %1319
  %1321 = fsub fast float %1153, %1319
  %1322 = fdiv fast float %1321, %1320
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1324 = fmul fast float %1323, 2.000000e+00
  %1325 = fsub fast float 3.000000e+00, %1324
  %1326 = fsub fast float %1302, %1312
  %1327 = fmul fast float %1323, %1323
  %1328 = fmul fast float %1327, %1326
  %1329 = fmul fast float %1328, %1325
  %1330 = fadd fast float %1329, %1312
  br label %1331

; <label>:1331                                    ; preds = %1313, %1311
  %1332 = phi float [ %1330, %1313 ], [ %1312, %1311 ]
  %1333 = call float @dx.op.binary.f32(i32 35, float %1302, float %1332)  ; FMax(a,b)
  %1334 = fmul fast float %1333, %1004
  %1335 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1333, float %1333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1336 = select i1 %147, float %1335, float %1333
  %1337 = select i1 %147, float 1.000000e+00, float %1333
  %1338 = fmul fast float %1336, %1009
  %1339 = fmul fast float %1336, %1010
  %1340 = fmul fast float %1337, %1011
  br label %1341

; <label>:1341                                    ; preds = %1331, %1015, %999, %993
  %1342 = phi float [ %995, %993 ], [ %1009, %999 ], [ %1338, %1331 ], [ %1009, %1015 ]
  %1343 = phi float [ %996, %993 ], [ %1010, %999 ], [ %1339, %1331 ], [ %1010, %1015 ]
  %1344 = phi float [ %997, %993 ], [ %1011, %999 ], [ %1340, %1331 ], [ %1011, %1015 ]
  %1345 = phi float [ %998, %993 ], [ %1004, %999 ], [ %1334, %1331 ], [ %1004, %1015 ]
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 2
  %1348 = extractvalue %dx.types.CBufRet.f32 %1346, 3
  %1349 = fmul fast float %1347, %47
  %1350 = fmul fast float %1348, %48
  %1351 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1352 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1353 = select i1 %774, i32 2, i32 0
  %1354 = or i32 %1353, 1
  %1355 = uitofp i32 %1354 to float
  %1356 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1351, float %1352, float %1355, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = extractvalue %dx.types.ResRet.f32 %1356, 3
  %1361 = add nuw nsw i32 %1353, 2
  %1362 = uitofp i32 %1361 to float
  %1363 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1351, float %1352, float %1362, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = extractvalue %dx.types.ResRet.f32 %1363, 3
  %1368 = call float @dx.op.binary.f32(i32 35, float %1358, float %1359)  ; FMax(a,b)
  %1369 = call float @dx.op.binary.f32(i32 35, float %1357, float %1368)  ; FMax(a,b)
  %1370 = call float @dx.op.binary.f32(i32 35, float %1369, float %1360)  ; FMax(a,b)
  %1371 = call float @dx.op.binary.f32(i32 36, float %1365, float %1366)  ; FMin(a,b)
  %1372 = call float @dx.op.binary.f32(i32 36, float %1364, float %1371)  ; FMin(a,b)
  %1373 = call float @dx.op.binary.f32(i32 36, float %1372, float %1367)  ; FMin(a,b)
  %1374 = fmul fast float %1370, 2.550000e+02
  %1375 = fadd fast float %1374, 0x3F70101020000000
  %1376 = fptoui float %1375 to i32
  %1377 = fmul fast float %1373, 2.550000e+02
  %1378 = fadd fast float %1377, 0x3F70101020000000
  %1379 = fptoui float %1378 to i32
  %1380 = icmp ult i32 %1376, %1379
  br i1 %1380, label %1381, label %1424

; <label>:1381                                    ; preds = %1341
  %1382 = fcmp fast ogt float %41, 9.843750e-01
  %1383 = fadd fast float %994, -4.000000e+00
  %1384 = select i1 %1382, float -4.000000e+00, float %1383
  %1385 = call float @dx.op.binary.f32(i32 35, float %1384, float 0.000000e+00)  ; FMax(a,b)
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  %1388 = fadd fast float %1387, %1385
  %1389 = extractvalue %dx.types.CBufRet.f32 %1386, 2
  %1390 = fmul fast float %1388, %1389
  %1391 = call float @dx.op.unary.f32(i32 23, float %1390)  ; Log(value)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1386, 3
  %1393 = fmul fast float %1392, %1391
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 2
  %1396 = fmul fast float %1393, %1395
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1398 = uitofp i32 %1376 to float
  %1399 = uitofp i32 %1379 to float
  %1400 = fadd fast float %1398, 5.000000e-01
  %1401 = fadd fast float %1399, 5.000000e-01
  %1402 = fmul fast float %1395, %1400
  %1403 = fmul fast float %1395, %1401
  %1404 = fadd fast float %1402, 0x3F0FFB4800000000
  %1405 = fadd fast float %1403, 0xBF0FFB4800000000
  %1406 = call float @dx.op.binary.f32(i32 35, float %1397, float %1404)  ; FMax(a,b)
  %1407 = call float @dx.op.binary.f32(i32 36, float %1406, float %1405)  ; FMin(a,b)
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 1
  %1410 = extractvalue %dx.types.CBufRet.f32 %1408, 2
  %1411 = extractvalue %dx.types.CBufRet.f32 %1408, 0
  %1412 = select i1 %774, float %1411, float 0.000000e+00
  %1413 = fmul fast float %1409, %1407
  %1414 = fadd fast float %1412, %1413
  %1415 = fadd fast float %1412, %1410
  %1416 = fsub fast float %1409, %1410
  %1417 = fadd fast float %1416, %1412
  %1418 = call float @dx.op.binary.f32(i32 35, float %1414, float %1415)  ; FMax(a,b)
  %1419 = call float @dx.op.binary.f32(i32 36, float %1418, float %1417)  ; FMin(a,b)
  %1420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1351, float %1352, float %1419, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  br label %1424

; <label>:1424                                    ; preds = %1381, %1341
  %1425 = phi float [ %1421, %1381 ], [ 1.000000e+00, %1341 ]
  %1426 = phi float [ %1422, %1381 ], [ 1.000000e+00, %1341 ]
  %1427 = phi float [ %1423, %1381 ], [ 1.000000e+00, %1341 ]
  %1428 = fmul fast float %1425, %1345
  %1429 = call float @dx.op.dot3.f32(i32 55, float %1425, float %1426, float %1427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1430 = select i1 %147, float %1429, float %1425
  %1431 = select i1 %147, float %1429, float %1426
  %1432 = select i1 %147, float 1.000000e+00, float %1427
  %1433 = fmul fast float %1430, %1342
  %1434 = fmul fast float %1431, %1343
  %1435 = fmul fast float %1432, %1344
  %1436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.i32 %1436, 3
  %1438 = and i32 %1437, 3
  %1439 = icmp ne i32 %1438, 0
  %1440 = and i32 %1437, 4
  %1441 = icmp ne i32 %1440, 0
  %1442 = and i1 %1439, %1441
  %1443 = and i1 %147, %1442
  br i1 %1443, label %1444, label %1450

; <label>:1444                                    ; preds = %1424
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1447 = fadd fast float %1428, -1.000000e+00
  %1448 = fmul fast float %1446, %1447
  %1449 = fadd fast float %1448, 1.000000e+00
  br label %1450

; <label>:1450                                    ; preds = %1444, %1424
  %1451 = phi float [ %1449, %1444 ], [ %1428, %1424 ]
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  br i1 %147, label %1454, label %1474

; <label>:1454                                    ; preds = %1450
  %1455 = fadd fast float %1433, %1434
  %1456 = fmul fast float %1453, %1455
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 3
  %1459 = extractvalue %dx.types.CBufRet.f32 %797, 1
  %1460 = fsub fast float %800, %1459
  %1461 = extractvalue %dx.types.CBufRet.f32 %797, 2
  %1462 = fmul fast float %1460, %1461
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = fsub fast float %1463, %1458
  %1465 = fmul fast float %1464, %1451
  %1466 = fadd fast float %1465, %1458
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = fsub fast float %1466, %1468
  %1470 = fmul fast float %1469, 1.000000e+01
  %1471 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1472 = fmul fast float %1471, %750
  %1473 = fmul fast float %1466, %1472
  br label %1483

; <label>:1474                                    ; preds = %1450
  %1475 = fmul fast float %1453, %1433
  %1476 = fmul fast float %1453, %1434
  %1477 = fmul fast float %1435, %1453
  %1478 = call float @dx.op.binary.f32(i32 35, float %1476, float %1477)  ; FMax(a,b)
  %1479 = call float @dx.op.binary.f32(i32 35, float %1475, float %1478)  ; FMax(a,b)
  %1480 = call float @dx.op.binary.f32(i32 35, float %1479, float 0.000000e+00)  ; FMax(a,b)
  %1481 = fcmp fast ugt float %1480, 0x3F10000000000000
  br i1 %1481, label %1483, label %1482

; <label>:1482                                    ; preds = %1474
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1483

; <label>:1483                                    ; preds = %1482, %1474, %1454
  %1484 = phi float [ %1456, %1454 ], [ %1475, %1482 ], [ %1475, %1474 ]
  %1485 = phi float [ %1473, %1454 ], [ %1476, %1482 ], [ %1476, %1474 ]
  %1486 = phi float [ %1472, %1454 ], [ %1477, %1482 ], [ %1477, %1474 ]
  %1487 = phi float [ %1472, %1454 ], [ 0.000000e+00, %1482 ], [ 0.000000e+00, %1474 ]
  %1488 = fadd fast float %607, 0x3FE3C6EF40000000
  %1489 = call float @dx.op.unary.f32(i32 22, float %1488)  ; Frc(value)
  %1490 = call float @dx.op.unary.f32(i32 23, float %1484)  ; Log(value)
  %1491 = fadd fast float %1490, -7.000000e+00
  %1492 = call float @dx.op.unary.f32(i32 21, float %1491)  ; Exp(value)
  %1493 = fmul fast float %1489, 2.000000e+00
  %1494 = fadd fast float %1493, -1.000000e+00
  %1495 = fmul fast float %1492, %1494
  %1496 = fcmp fast ogt float %1484, 0.000000e+00
  %1497 = select i1 %1496, float %1495, float 0.000000e+00
  %1498 = fadd fast float %1497, %1484
  %1499 = fadd fast float %607, 0x3FF3C6EF40000000
  %1500 = call float @dx.op.unary.f32(i32 22, float %1499)  ; Frc(value)
  %1501 = call float @dx.op.unary.f32(i32 23, float %1485)  ; Log(value)
  %1502 = fadd fast float %1501, -7.000000e+00
  %1503 = call float @dx.op.unary.f32(i32 21, float %1502)  ; Exp(value)
  %1504 = fmul fast float %1500, 2.000000e+00
  %1505 = fadd fast float %1504, -1.000000e+00
  %1506 = fmul fast float %1503, %1505
  %1507 = fcmp fast ogt float %1485, 0.000000e+00
  %1508 = select i1 %1507, float %1506, float 0.000000e+00
  %1509 = fadd fast float %1508, %1485
  %1510 = fadd fast float %607, 0x3FFDAA66E0000000
  %1511 = call float @dx.op.unary.f32(i32 22, float %1510)  ; Frc(value)
  %1512 = call float @dx.op.unary.f32(i32 23, float %1486)  ; Log(value)
  %1513 = fadd fast float %1512, -6.000000e+00
  %1514 = call float @dx.op.unary.f32(i32 21, float %1513)  ; Exp(value)
  %1515 = fmul fast float %1511, 2.000000e+00
  %1516 = fadd fast float %1515, -1.000000e+00
  %1517 = fmul fast float %1514, %1516
  %1518 = fcmp fast ogt float %1486, 0.000000e+00
  %1519 = select i1 %1518, float %1517, float 0.000000e+00
  %1520 = fadd fast float %1519, %1486
  %1521 = select i1 %147, float %1485, float %1509
  %1522 = select i1 %147, float %1486, float %1520
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1523 = call float @dx.op.binary.f32(i32 36, float %1498, float 3.225500e+04)  ; FMin(a,b)
  %1524 = call float @dx.op.binary.f32(i32 36, float %1521, float 3.225500e+04)  ; FMin(a,b)
  %1525 = call float @dx.op.binary.f32(i32 36, float %1522, float 3.225500e+04)  ; FMin(a,b)
  %1526 = call float @dx.op.binary.f32(i32 36, float %1487, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1523)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1525)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1526)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[34 x i32] [i32 32, i32 4, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 15, i32 15, i32 7, i32 7, i32 7, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 15, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !58}
!35 = !{!36, !56, null}
!36 = !{!37, !40, !42, !43, !45, !48, !50, !52, !54, !55}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 2, i8 0, !39}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!44 = !{i32 3}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 4, i8 0, !47}
!46 = !{i32 4}
!47 = !{i32 3, i32 3}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 3, i32 1, i8 2, i32 5, i8 0, !47}
!49 = !{i32 5}
!50 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 8}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 1}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 1, i32 7, i8 3, null}
!55 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

