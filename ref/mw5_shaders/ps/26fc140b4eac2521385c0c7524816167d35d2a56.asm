;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
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
; shader hash: eb831c4c9b85f1df791437e01577649d
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
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = fmul fast float %48, %41
  %50 = fmul fast float %48, %42
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = fmul fast float %49, 2.000000e+00
  %55 = fmul fast float %54, %52
  %56 = fmul fast float %50, 2.000000e+00
  %57 = fmul fast float %56, %53
  %58 = fsub fast float 1.000000e+00, %55
  %59 = fsub fast float 1.000000e+00, %57
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %58, %61
  %65 = fmul fast float %58, %62
  %66 = fmul fast float %58, %63
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %59, %68
  %72 = fmul fast float %59, %69
  %73 = fmul fast float %59, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fadd fast float %71, %75
  %79 = fadd fast float %78, %64
  %80 = fadd fast float %72, %76
  %81 = fadd fast float %80, %65
  %82 = fadd fast float %73, %77
  %83 = fadd fast float %82, %66
  %84 = fmul fast float %79, %44
  %85 = fmul fast float %81, %44
  %86 = fmul fast float %83, %44
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %89, 4
  %93 = icmp ne i32 %92, 0
  %94 = and i1 %91, %93
  br i1 %94, label %95, label %106

; <label>:95                                      ; preds = %0
  %96 = extractvalue %dx.types.CBufRet.f32 %87, 3
  %97 = fmul fast float %96, %50
  %98 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %99 = fmul fast float %98, %49
  %100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %99, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fsub fast float 1.000000e+00, %101
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast olt float %102, %104
  br label %109

; <label>:106                                     ; preds = %0
  %107 = icmp eq i32 %92, 0
  %108 = and i1 %91, %107
  br label %109

; <label>:109                                     ; preds = %106, %95
  %110 = phi i1 [ %105, %95 ], [ %108, %106 ]
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %112, %49
  %115 = fmul fast float %113, %50
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %117, 114688
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, float %114, float 0.000000e+00
  %121 = select i1 %119, float %115, float 0.000000e+00
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %120, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fmul fast float %123, 2.550000e+02
  %125 = fptoui float %124 to i32
  %126 = select i1 %119, i32 %125, i32 0
  %127 = mul i32 %20, 208
  %128 = add i32 %127, 188
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = and i32 %89, 114688
  %132 = and i32 %89, 8
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
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %49
  %147 = fmul fast float %145, %50
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
  %167 = phi float [ %33, %139 ], [ %146, %152 ], [ %165, %160 ], [ %146, %158 ]
  %168 = phi float [ %34, %139 ], [ %157, %152 ], [ %147, %160 ], [ %147, %158 ]
  %169 = and i32 %130, 16
  %170 = icmp ne i32 %169, 0
  %171 = select i1 %170, float 1.000000e+00, float %40
  %172 = icmp eq i32 %169, 0
  br i1 %172, label %192, label %173, !dx.controlflow.hints !60

; <label>:173                                     ; preds = %166
  %174 = add i32 %127, 64
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fadd fast float %176, 1.000000e+00
  %178 = fmul fast float %177, %40
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

; <label>:192                                     ; preds = %173, %166
  %193 = phi float [ %191, %173 ], [ %171, %166 ]
  %194 = and i32 %130, 1024
  %195 = icmp eq i32 %194, 0
  %196 = add i32 %21, 108
  br i1 %195, label %256, label %197, !dx.controlflow.hints !61

; <label>:197                                     ; preds = %192
  %198 = add i32 %127, 48
  %199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = extractvalue %dx.types.ResRet.f32 %199, 1
  %202 = fadd fast float %35, -5.000000e-01
  %203 = fmul fast float %202, 2.000000e+00
  %204 = fmul fast float %28, %203
  %205 = fmul fast float %29, %203
  %206 = fmul fast float %204, %201
  %207 = fmul fast float %205, %201
  %208 = call float @dx.op.dot2.f32(i32 54, float %28, float %29, float %28, float %29)  ; Dot2(ax,ay,bx,by)
  %209 = call float @dx.op.unary.f32(i32 25, float %208)  ; Rsqrt(value)
  %210 = fmul fast float %206, %209
  %211 = fmul fast float %207, %209
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = fsub fast float %84, %206
  %216 = fadd fast float %215, %213
  %217 = fadd fast float %216, %210
  %218 = fsub fast float %85, %207
  %219 = fadd fast float %218, %214
  %220 = fadd fast float %219, %211
  %221 = fmul fast float %217, %200
  %222 = fmul fast float %220, %200
  %223 = add i32 %21, 72
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = extractvalue %dx.types.ResRet.i32 %224, 1
  %227 = extractvalue %dx.types.ResRet.i32 %224, 2
  %228 = bitcast i32 %225 to float
  %229 = bitcast i32 %226 to float
  %230 = bitcast i32 %227 to float
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %233 = fmul fast float %230, %232
  %234 = call float @dx.op.unary.f32(i32 12, float %233)  ; Cos(value)
  %235 = call float @dx.op.unary.f32(i32 13, float %233)  ; Sin(value)
  %236 = fadd fast float %222, -5.000000e-01
  %237 = fadd fast float %221, -5.000000e-01
  %238 = fmul fast float %236, %234
  %239 = fmul fast float %235, %237
  %240 = fmul fast float %235, %236
  %241 = fmul fast float %237, %234
  %242 = fmul fast float %232, %228
  %243 = fmul fast float %232, %229
  %244 = fsub fast float 5.000000e-01, %239
  %245 = fadd fast float %244, %238
  %246 = fadd fast float %245, %242
  %247 = fadd fast float %241, 5.000000e-01
  %248 = fadd fast float %247, %240
  %249 = fadd fast float %248, %243
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = add i32 %251, 0
  %253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %253, %dx.types.Handle %46, float %246, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  br label %263

; <label>:256                                     ; preds = %192
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = add i32 %258, 0
  %260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %259, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %261 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %260, %dx.types.Handle %46, float %35, float %36, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  br label %263

; <label>:263                                     ; preds = %256, %197
  %264 = phi float [ %255, %197 ], [ %262, %256 ]
  %265 = fmul fast float %264, %193
  %266 = fcmp fast ogt float %265, 0.000000e+00
  br i1 %266, label %268, label %267

; <label>:267                                     ; preds = %263
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %268

; <label>:268                                     ; preds = %267, %263
  %269 = call float @dx.op.unary.f32(i32 7, float %265)  ; Saturate(value)
  %270 = fmul fast float %49, 5.000000e-01
  %271 = fmul fast float %50, 5.000000e-01
  %272 = fptosi float %270 to i32
  %273 = fptosi float %271 to i32
  %274 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %272, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = lshr i32 %275, 18
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F4C00EBA0000000
  %279 = call float @dx.op.unary.f32(i32 21, float %278)  ; Exp(value)
  %280 = fadd fast float %279, -1.000000e+00
  %281 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %282 = extractvalue %dx.types.Dimensions %281, 0
  %283 = sitofp i32 %282 to float
  %284 = extractvalue %dx.types.Dimensions %281, 1
  %285 = sitofp i32 %284 to float
  %286 = fcmp fast oge float %270, %283
  %287 = fcmp fast oge float %271, %285
  %288 = or i1 %286, %287
  %289 = select i1 %288, float 0x4197782600000000, float %280
  %290 = fsub fast float %289, %44
  %291 = fcmp fast ogt float %290, 0.000000e+00
  %292 = and i32 %126, -2
  %293 = icmp eq i32 %292, 2
  %294 = and i1 %293, %291
  %295 = xor i1 %291, true
  %296 = icmp eq i32 %126, 1
  %297 = and i1 %296, %295
  %298 = or i1 %294, %297
  %299 = and i32 %130, 262144
  %300 = icmp ne i32 %299, 0
  %301 = and i1 %300, %298
  %302 = xor i1 %298, true
  %303 = and i32 %130, 131072
  %304 = icmp ne i32 %303, 0
  %305 = and i1 %304, %302
  %306 = or i1 %301, %305
  br i1 %306, label %307, label %308

; <label>:307                                     ; preds = %268
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %308

; <label>:308                                     ; preds = %307, %268
  %309 = and i32 %130, 32
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %560, label %311, !dx.controlflow.hints !62

; <label>:311                                     ; preds = %308
  %312 = add i32 %127, 80
  %313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = extractvalue %dx.types.ResRet.f32 %313, 1
  %316 = extractvalue %dx.types.ResRet.f32 %313, 2
  %317 = extractvalue %dx.types.ResRet.f32 %313, 3
  %318 = add i32 %127, 96
  %319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = extractvalue %dx.types.ResRet.f32 %319, 1
  %322 = extractvalue %dx.types.ResRet.f32 %319, 2
  %323 = add i32 %127, 112
  %324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = extractvalue %dx.types.ResRet.f32 %324, 1
  %327 = extractvalue %dx.types.ResRet.f32 %324, 2
  %328 = extractvalue %dx.types.ResRet.f32 %324, 3
  %329 = add i32 %127, 128
  %330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = extractvalue %dx.types.ResRet.f32 %330, 1
  %333 = extractvalue %dx.types.ResRet.f32 %330, 2
  %334 = extractvalue %dx.types.ResRet.f32 %330, 3
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 4096
  %338 = icmp ne i32 %337, 0
  %339 = fcmp fast une float %322, 0.000000e+00
  %340 = and i32 %336, 64
  %341 = icmp ne i32 %340, 0
  %342 = and i32 %336, 128
  %343 = icmp eq i32 %342, 0
  %344 = and i32 %336, 2048
  %345 = icmp eq i32 %344, 0
  %346 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %347 = extractvalue %dx.types.Dimensions %346, 0
  %348 = sitofp i32 %347 to float
  %349 = extractvalue %dx.types.Dimensions %346, 1
  %350 = sitofp i32 %349 to float
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 3
  %354 = fmul fast float %352, %49
  %355 = fmul fast float %353, %50
  %356 = fmul fast float %354, %348
  %357 = fmul fast float %355, %350
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %360 = fsub fast float -0.000000e+00, %359
  %361 = fptoui float %360 to i32
  %362 = fptoui float %356 to i32
  %363 = fptoui float %357 to i32
  %364 = and i32 %361, 31
  %365 = lshr i32 %362, %364
  %366 = lshr i32 %363, %364
  %367 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %361, i32 %365, i32 %366, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = fcmp fast ogt float %368, -1.000000e+00
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %372 = select i1 %369, float %371, float 1.000000e+00
  %373 = fadd fast float %368, 1.000000e+00
  %374 = fmul fast float %372, %373
  %375 = call float @dx.op.unary.f32(i32 6, float %374)  ; FAbs(value)
  %376 = extractvalue %dx.types.CBufRet.f32 %370, 3
  %377 = fcmp fast oge float %375, %376
  %378 = select i1 %377, float 0x4197782600000000, float %375
  br i1 %345, label %456, label %379, !dx.controlflow.hints !63

; <label>:379                                     ; preds = %311
  %380 = fmul fast float %54, %352
  %381 = fmul fast float %56, %353
  %382 = fsub fast float 1.000000e+00, %380
  %383 = fsub fast float 1.000000e+00, %381
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %388 = fmul fast float %382, %385
  %389 = fmul fast float %382, %386
  %390 = fmul fast float %382, %387
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 0
  %393 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %394 = extractvalue %dx.types.CBufRet.f32 %391, 2
  %395 = fmul fast float %383, %392
  %396 = fmul fast float %383, %393
  %397 = fmul fast float %383, %394
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = fadd fast float %395, %399
  %403 = fadd fast float %402, %388
  %404 = fadd fast float %396, %400
  %405 = fadd fast float %404, %389
  %406 = fadd fast float %397, %401
  %407 = fadd fast float %406, %390
  %408 = fmul fast float %403, %378
  %409 = fmul fast float %405, %378
  %410 = fmul fast float %407, %378
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = fsub fast float %412, %22
  %416 = fadd fast float %415, %408
  %417 = fsub fast float %413, %23
  %418 = fadd fast float %417, %409
  %419 = fsub fast float %414, %24
  %420 = fadd fast float %419, %410
  %421 = fmul fast float %25, %25
  %422 = call float @dx.op.dot3.f32(i32 55, float %416, float %418, float %420, float %416, float %418, float %420)  ; Dot3(ax,ay,az,bx,by,bz)
  %423 = fsub fast float %421, %422
  %424 = fmul fast float %321, %421
  %425 = fmul fast float %320, %421
  %426 = fcmp fast olt float %423, %424
  %427 = fcmp fast ogt float %423, %425
  %428 = or i1 %426, %427
  %429 = select i1 %428, float 0.000000e+00, float %423
  %430 = fsub fast float %320, %321
  %431 = fmul fast float %430, %421
  %432 = fsub fast float %429, %424
  %433 = fdiv fast float %432, %431
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %434, 2.000000e+00
  %436 = fsub fast float 3.000000e+00, %435
  %437 = fmul fast float %434, %434
  %438 = fmul fast float %437, %436
  %439 = fmul fast float %325, %37
  %440 = fmul fast float %326, %38
  %441 = fmul fast float %327, %39
  %442 = fsub fast float %439, %331
  %443 = fsub fast float %440, %332
  %444 = fsub fast float %441, %333
  %445 = fsub fast float %328, %334
  %446 = fmul fast float %438, %442
  %447 = fmul fast float %438, %443
  %448 = fmul fast float %438, %444
  %449 = fmul fast float %438, %445
  %450 = fadd fast float %446, %331
  %451 = fadd fast float %447, %332
  %452 = fadd fast float %448, %333
  %453 = fadd fast float %449, %334
  %454 = fmul fast float %314, %314
  %455 = fmul fast float %454, %429
  br label %551

; <label>:456                                     ; preds = %311
  %457 = and i32 %336, 256
  %458 = icmp eq i32 %457, 0
  %459 = fsub fast float %378, %44
  br i1 %458, label %508, label %460

; <label>:460                                     ; preds = %456
  %461 = fadd fast float %320, %44
  %462 = fcmp fast olt float %378, %44
  %463 = fcmp fast ogt float %378, %461
  %464 = or i1 %462, %463
  %465 = select i1 %464, float 0.000000e+00, float %459
  %466 = call float @dx.op.unary.f32(i32 83, float %378)  ; DerivCoarseX(value)
  %467 = call float @dx.op.unary.f32(i32 84, float %378)  ; DerivCoarseY(value)
  %468 = fmul fast float %466, %466
  %469 = fmul fast float %467, %467
  %470 = fadd fast float %469, %468
  %471 = call float @dx.op.unary.f32(i32 24, float %470)  ; Sqrt(value)
  %472 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %473 = fmul fast float %472, %471
  %474 = call float @dx.op.unary.f32(i32 7, float %473)  ; Saturate(value)
  %475 = fmul fast float %474, %321
  %476 = fdiv fast float %459, %475
  %477 = call float @dx.op.unary.f32(i32 7, float %476)  ; Saturate(value)
  %478 = fmul fast float %477, 2.000000e+00
  %479 = fsub fast float 3.000000e+00, %478
  %480 = fmul fast float %477, %477
  %481 = fmul fast float %480, %479
  %482 = fsub fast float %378, %461
  %483 = fadd fast float %482, %475
  %484 = fdiv fast float %483, %475
  %485 = call float @dx.op.unary.f32(i32 7, float %484)  ; Saturate(value)
  %486 = fmul fast float %485, 2.000000e+00
  %487 = fsub fast float 3.000000e+00, %486
  %488 = fmul fast float %485, %485
  %489 = fmul fast float %488, %487
  %490 = fsub fast float %481, %489
  %491 = fmul fast float %325, %37
  %492 = fmul fast float %326, %38
  %493 = fmul fast float %327, %39
  %494 = fsub fast float %491, %331
  %495 = fsub fast float %492, %332
  %496 = fsub fast float %493, %333
  %497 = fsub fast float %328, %334
  %498 = fmul fast float %490, %494
  %499 = fmul fast float %490, %495
  %500 = fmul fast float %490, %496
  %501 = fmul fast float %490, %497
  %502 = fadd fast float %498, %331
  %503 = fadd fast float %499, %332
  %504 = fadd fast float %500, %333
  %505 = fadd fast float %501, %334
  %506 = fmul fast float %465, %314
  %507 = call float @dx.op.unary.f32(i32 6, float %506)  ; FAbs(value)
  br label %551

; <label>:508                                     ; preds = %456
  br i1 %339, label %509, label %522

; <label>:509                                     ; preds = %508
  %510 = fdiv fast float 5.000000e+01, %25
  %511 = select i1 %341, float %510, float 1.000000e+00
  %512 = fmul fast float %511, %314
  %513 = fmul fast float %33, 2.000000e+00
  %514 = fmul fast float %34, 2.000000e+00
  %515 = fadd fast float %513, -1.000000e+00
  %516 = fadd fast float %514, -1.000000e+00
  %517 = call float @dx.op.dot2.f32(i32 54, float %515, float %516, float %515, float %516)  ; Dot2(ax,ay,bx,by)
  %518 = fmul fast float %322, %25
  %519 = fmul fast float %518, %517
  %520 = fsub fast float %459, %519
  %521 = fmul fast float %512, %520
  br label %551

; <label>:522                                     ; preds = %508
  br i1 %343, label %543, label %523

; <label>:523                                     ; preds = %522
  %524 = fmul fast float %25, 0x3F947AE140000000
  %525 = select i1 %341, float %524, float 1.000000e+00
  %526 = fdiv fast float 1.000000e+00, %525
  %527 = fmul fast float %525, %315
  %528 = fmul fast float %525, %316
  %529 = fmul fast float %526, %317
  %530 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %531 = fcmp fast olt float %530, %527
  br i1 %531, label %532, label %536, !dx.controlflow.hints !64

; <label>:532                                     ; preds = %523
  %533 = fmul fast float %526, %314
  %534 = fmul fast float %533, %530
  %535 = call float @dx.op.unary.f32(i32 6, float %534)  ; FAbs(value)
  br label %551

; <label>:536                                     ; preds = %523
  %537 = fcmp fast ogt float %530, %528
  br i1 %537, label %538, label %551

; <label>:538                                     ; preds = %536
  %539 = fsub fast float %530, %528
  %540 = fmul fast float %529, %539
  %541 = call float @dx.op.unary.f32(i32 6, float %540)  ; FAbs(value)
  %542 = fsub fast float 1.000000e+00, %541
  br label %551

; <label>:543                                     ; preds = %522
  %544 = fdiv fast float 5.000000e+01, %25
  %545 = select i1 %341, float %544, float 1.000000e+00
  %546 = fmul fast float %545, %314
  %547 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %548 = select i1 %338, float %547, float 0x47EFFFFFE0000000
  %549 = call float @dx.op.binary.f32(i32 36, float %459, float %548)  ; FMin(a,b)
  %550 = fmul fast float %546, %549
  br label %551

; <label>:551                                     ; preds = %543, %538, %536, %532, %509, %460, %379
  %552 = phi float [ %455, %379 ], [ %507, %460 ], [ %521, %509 ], [ %550, %543 ], [ %535, %532 ], [ %542, %538 ], [ %530, %536 ]
  %553 = phi float [ %450, %379 ], [ %502, %460 ], [ %37, %509 ], [ %37, %543 ], [ %37, %532 ], [ %37, %538 ], [ %37, %536 ]
  %554 = phi float [ %451, %379 ], [ %503, %460 ], [ %38, %509 ], [ %38, %543 ], [ %38, %532 ], [ %38, %538 ], [ %38, %536 ]
  %555 = phi float [ %452, %379 ], [ %504, %460 ], [ %39, %509 ], [ %39, %543 ], [ %39, %532 ], [ %39, %538 ], [ %39, %536 ]
  %556 = phi float [ %453, %379 ], [ %505, %460 ], [ 1.000000e+00, %509 ], [ 1.000000e+00, %543 ], [ 1.000000e+00, %532 ], [ 1.000000e+00, %538 ], [ 1.000000e+00, %536 ]
  %557 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %558 = fmul fast float %556, %269
  %559 = fmul fast float %558, %557
  br label %560

; <label>:560                                     ; preds = %551, %308
  %561 = phi float [ %553, %551 ], [ %37, %308 ]
  %562 = phi float [ %554, %551 ], [ %38, %308 ]
  %563 = phi float [ %555, %551 ], [ %39, %308 ]
  %564 = phi float [ %559, %551 ], [ %269, %308 ]
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 2
  %567 = fptosi float %44 to i32
  %568 = sitofp i32 %567 to float
  %569 = fadd fast float %566, %568
  %570 = fmul fast float %569, 0x3FE3C6EF40000000
  %571 = frem fast float %49, 2.560000e+02
  %572 = frem fast float %50, 2.560000e+02
  %573 = fptoui float %571 to i32
  %574 = fptoui float %572 to i32
  %575 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %573, i32 %574, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = fadd fast float %576, %570
  %578 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %579 = and i32 %130, 1
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %637, label %581, !dx.controlflow.hints !65

; <label>:581                                     ; preds = %560
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 2
  %584 = extractvalue %dx.types.ResRet.f32 %582, 3
  %585 = add i32 %127, 16
  %586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = add i32 %127, 32
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = and i32 %130, 2
  %596 = icmp eq i32 %595, 0
  %597 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %598 = call float @dx.op.unary.f32(i32 25, float %597)  ; Rsqrt(value)
  %599 = fmul fast float %598, %30
  %600 = fmul fast float %598, %31
  %601 = fmul fast float %598, %32
  %602 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %603 = call float @dx.op.unary.f32(i32 25, float %602)  ; Rsqrt(value)
  %604 = fmul fast float %603, %84
  %605 = fmul fast float %603, %85
  %606 = fmul fast float %603, %86
  %607 = call float @dx.op.dot3.f32(i32 55, float %604, float %605, float %606, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %608 = fmul fast float %607, %607
  %609 = fmul fast float %608, %583
  %610 = fadd fast float %609, %584
  %611 = call float @dx.op.unary.f32(i32 7, float %610)  ; Saturate(value)
  br i1 %596, label %612, label %622, !dx.controlflow.hints !66

; <label>:612                                     ; preds = %581
  %613 = extractvalue %dx.types.ResRet.f32 %582, 1
  %614 = extractvalue %dx.types.ResRet.f32 %582, 0
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 3
  %617 = fmul fast float %616, %602
  %618 = fsub fast float %614, %617
  %619 = fmul fast float %618, %613
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fmul fast float %620, %611
  br label %622

; <label>:622                                     ; preds = %612, %581
  %623 = phi float [ %621, %612 ], [ %611, %581 ]
  %624 = fsub fast float %587, %592
  %625 = fsub fast float %588, %593
  %626 = fsub fast float %589, %594
  %627 = fmul fast float %623, %624
  %628 = fmul fast float %623, %625
  %629 = fmul fast float %623, %626
  %630 = fadd fast float %627, %592
  %631 = fadd fast float %628, %593
  %632 = fadd fast float %629, %594
  %633 = fmul fast float %630, %561
  %634 = fmul fast float %631, %562
  %635 = fmul fast float %632, %563
  %636 = fmul fast float %623, %564
  br label %637

; <label>:637                                     ; preds = %622, %560
  %638 = phi float [ %633, %622 ], [ %561, %560 ]
  %639 = phi float [ %634, %622 ], [ %562, %560 ]
  %640 = phi float [ %635, %622 ], [ %563, %560 ]
  %641 = phi float [ %636, %622 ], [ %564, %560 ]
  %642 = add i32 %21, 104
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %646, %dx.types.Handle %45, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = add i32 %21, 56
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = lshr i32 %653, 8
  %658 = and i32 %657, 255
  %659 = uitofp i32 %658 to float
  %660 = fmul fast float %659, 0x3F70101020000000
  %661 = lshr i32 %653, 16
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = extractvalue %dx.types.ResRet.f32 %665, 1
  %668 = extractvalue %dx.types.ResRet.f32 %665, 2
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %673 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %272, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = lshr i32 %674, 18
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F4C00EBA0000000
  %678 = call float @dx.op.unary.f32(i32 21, float %677)  ; Exp(value)
  %679 = fadd fast float %678, -1.000000e+00
  %680 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %681 = extractvalue %dx.types.Dimensions %680, 0
  %682 = sitofp i32 %681 to float
  %683 = extractvalue %dx.types.Dimensions %680, 1
  %684 = sitofp i32 %683 to float
  %685 = fcmp fast oge float %270, %682
  %686 = fcmp fast oge float %271, %684
  %687 = or i1 %685, %686
  %688 = select i1 %687, float 0x4197782600000000, float %679
  %689 = and i32 %130, 2097152
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %695, label %691, !dx.controlflow.hints !67

; <label>:691                                     ; preds = %637
  %692 = add i32 %127, 192
  %693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  br label %698

; <label>:695                                     ; preds = %637
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 3
  br label %698

; <label>:698                                     ; preds = %695, %691
  %699 = phi float [ %694, %691 ], [ %697, %695 ]
  %700 = fmul fast float %641, %638
  %701 = fmul fast float %700, %648
  %702 = fmul fast float %656, %656
  %703 = fmul fast float %702, %701
  %704 = fmul fast float %703, %666
  %705 = fmul fast float %704, %670
  %706 = fmul fast float %705, %672
  %707 = fmul fast float %641, %639
  %708 = fmul fast float %707, %649
  %709 = fmul fast float %660, %660
  %710 = fmul fast float %709, %708
  %711 = fmul fast float %710, %667
  %712 = fmul fast float %711, %670
  %713 = fmul fast float %712, %672
  %714 = fmul fast float %641, %640
  %715 = fmul fast float %714, %650
  %716 = fmul fast float %664, %664
  %717 = fmul fast float %716, %715
  %718 = fmul fast float %717, %668
  %719 = fmul fast float %718, %670
  %720 = fmul fast float %719, %672
  %721 = icmp eq i32 %126, 3
  %722 = fcmp fast ogt float %44, %688
  %723 = and i1 %296, %722
  %724 = or i1 %721, %723
  %725 = icmp eq i32 %126, 2
  %726 = fcmp fast ole float %44, %688
  %727 = and i1 %725, %726
  %728 = or i1 %727, %724
  br i1 %723, label %729, label %813

; <label>:729                                     ; preds = %698
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %733 = fmul fast float %731, %49
  %734 = fmul fast float %732, %50
  %735 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %736 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %737 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %735, float %736, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = extractvalue %dx.types.ResRet.f32 %737, 3
  %742 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %735, float %736, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = extractvalue %dx.types.ResRet.f32 %742, 3
  %747 = call float @dx.op.binary.f32(i32 35, float %739, float %740)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %738, float %747)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 35, float %748, float %741)  ; FMax(a,b)
  %750 = call float @dx.op.binary.f32(i32 36, float %744, float %745)  ; FMin(a,b)
  %751 = call float @dx.op.binary.f32(i32 36, float %743, float %750)  ; FMin(a,b)
  %752 = call float @dx.op.binary.f32(i32 36, float %751, float %746)  ; FMin(a,b)
  %753 = fmul fast float %749, 2.550000e+02
  %754 = fadd fast float %753, 0x3F70101020000000
  %755 = fptoui float %754 to i32
  %756 = fmul fast float %752, 2.550000e+02
  %757 = fadd fast float %756, 0x3F70101020000000
  %758 = fptoui float %757 to i32
  %759 = icmp ult i32 %755, %758
  br i1 %759, label %760, label %802

; <label>:760                                     ; preds = %729
  %761 = fcmp fast ogt float %43, 9.843750e-01
  %762 = fadd fast float %44, -4.000000e+00
  %763 = select i1 %761, float -4.000000e+00, float %762
  %764 = call float @dx.op.binary.f32(i32 35, float %763, float 0.000000e+00)  ; FMax(a,b)
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %767 = fadd fast float %766, %764
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %769 = fmul fast float %767, %768
  %770 = call float @dx.op.unary.f32(i32 23, float %769)  ; Log(value)
  %771 = extractvalue %dx.types.CBufRet.f32 %765, 3
  %772 = fmul fast float %771, %770
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %775 = fmul fast float %772, %774
  %776 = call float @dx.op.unary.f32(i32 7, float %775)  ; Saturate(value)
  %777 = uitofp i32 %755 to float
  %778 = uitofp i32 %758 to float
  %779 = fadd fast float %777, 5.000000e-01
  %780 = fadd fast float %778, 5.000000e-01
  %781 = fmul fast float %774, %779
  %782 = fmul fast float %774, %780
  %783 = fadd fast float %781, 0x3F0FFB4800000000
  %784 = fadd fast float %782, 0xBF0FFB4800000000
  %785 = call float @dx.op.binary.f32(i32 35, float %776, float %783)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 36, float %785, float %784)  ; FMin(a,b)
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %789 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %790 = extractvalue %dx.types.CBufRet.f32 %787, 0
  %791 = fmul fast float %788, %786
  %792 = fadd fast float %790, %791
  %793 = fadd fast float %790, %789
  %794 = fsub fast float %788, %789
  %795 = fadd fast float %794, %790
  %796 = call float @dx.op.binary.f32(i32 35, float %792, float %793)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %796, float %795)  ; FMin(a,b)
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %735, float %736, float %797, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  br label %802

; <label>:802                                     ; preds = %760, %729
  %803 = phi float [ %799, %760 ], [ 1.000000e+00, %729 ]
  %804 = phi float [ %800, %760 ], [ 1.000000e+00, %729 ]
  %805 = phi float [ %801, %760 ], [ 1.000000e+00, %729 ]
  %806 = call float @dx.op.dot3.f32(i32 55, float %803, float %804, float %805, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = select i1 %110, float %806, float %803
  %808 = select i1 %110, float %806, float %804
  %809 = select i1 %110, float 1.000000e+00, float %805
  %810 = fmul fast float %807, %706
  %811 = fmul fast float %808, %713
  %812 = fmul fast float %809, %720
  br label %813

; <label>:813                                     ; preds = %802, %698
  %814 = phi float [ %688, %802 ], [ %44, %698 ]
  %815 = phi float [ %810, %802 ], [ %706, %698 ]
  %816 = phi float [ %811, %802 ], [ %713, %698 ]
  %817 = phi float [ %812, %802 ], [ %720, %698 ]
  br i1 %728, label %1058, label %818

; <label>:818                                     ; preds = %813
  %819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %26, float %27, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = call float @dx.op.dot3.f32(i32 55, float %820, float %821, float %822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %824 = select i1 %110, float %823, float %820
  %825 = select i1 %110, float %823, float %821
  %826 = select i1 %110, float 1.000000e+00, float %822
  %827 = fmul fast float %824, %815
  %828 = fmul fast float %825, %816
  %829 = fmul fast float %826, %817
  %830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.i32 %830, 0
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %1058, label %833, !dx.controlflow.hints !68

; <label>:833                                     ; preds = %818
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %837 = fmul fast float %835, %49
  %838 = fmul fast float %836, %50
  %839 = fmul fast float %837, 2.000000e+00
  %840 = fmul fast float %838, 2.000000e+00
  %841 = fsub fast float 1.000000e+00, %839
  %842 = fsub fast float 1.000000e+00, %840
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %846 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %847 = fmul fast float %841, %844
  %848 = fmul fast float %841, %845
  %849 = fmul fast float %841, %846
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %853 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %854 = fmul fast float %842, %851
  %855 = fmul fast float %842, %852
  %856 = fmul fast float %842, %853
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = fadd fast float %854, %858
  %862 = fadd fast float %861, %847
  %863 = fadd fast float %855, %859
  %864 = fadd fast float %863, %848
  %865 = fadd fast float %856, %860
  %866 = fadd fast float %865, %849
  %867 = fmul fast float %862, %814
  %868 = fmul fast float %864, %814
  %869 = fmul fast float %866, %814
  %870 = fmul fast float %867, %867
  %871 = fmul fast float %868, %868
  %872 = fadd fast float %870, %871
  %873 = fmul fast float %869, %869
  %874 = fadd fast float %872, %873
  %875 = call float @dx.op.unary.f32(i32 24, float %874)  ; Sqrt(value)
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = fsub fast float %875, %877
  %879 = extractvalue %dx.types.CBufRet.f32 %876, 2
  %880 = fmul fast float %878, %879
  %881 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %882 = fadd fast float %881, -5.000000e-01
  %883 = fmul fast float %882, 2.000000e+00
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %886 = call float @dx.op.binary.f32(i32 36, float %885, float %883)  ; FMin(a,b)
  %887 = fsub fast float -0.000000e+00, %885
  %888 = fcmp fast ogt float %886, %887
  br i1 %888, label %889, label %1058, !dx.controlflow.hints !69

; <label>:889                                     ; preds = %833
  %890 = fmul fast float %886, 5.000000e-01
  %891 = fadd fast float %890, 5.000000e-01
  %892 = call float @dx.op.unary.f32(i32 22, float %891)  ; Frc(value)
  %893 = call float @dx.op.unary.f32(i32 27, float %892)  ; Round_ni(value)
  %894 = call float @dx.op.unary.f32(i32 22, float %892)  ; Frc(value)
  %895 = fmul fast float %894, 2.000000e+00
  %896 = fadd fast float %895, -1.000000e+00
  %897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %16, float %837, float %838, float %893, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = extractvalue %dx.types.ResRet.f32 %897, 3
  %902 = fadd fast float %898, -5.000000e-01
  %903 = fadd fast float %900, -5.000000e-01
  %904 = fmul fast float %902, 0xBFD5555560000000
  %905 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %903, float %904)  ; FMad(a,b,c)
  %906 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %899, float 0.000000e+00)  ; FMad(a,b,c)
  %907 = fadd fast float %906, %901
  %908 = fmul fast float %902, -7.500000e-01
  %909 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %903, float %908)  ; FMad(a,b,c)
  %910 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %899, float 0.000000e+00)  ; FMad(a,b,c)
  %911 = fadd fast float %910, %901
  %912 = call float @dx.op.binary.f32(i32 35, float %905, float -1.000000e+00)  ; FMax(a,b)
  %913 = call float @dx.op.binary.f32(i32 35, float %907, float -1.000000e+00)  ; FMax(a,b)
  %914 = call float @dx.op.binary.f32(i32 35, float %909, float -1.000000e+00)  ; FMax(a,b)
  %915 = call float @dx.op.binary.f32(i32 35, float %911, float -1.000000e+00)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %912, float 1.000000e+00)  ; FMin(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %913, float 1.000000e+00)  ; FMin(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %914, float 1.000000e+00)  ; FMin(a,b)
  %919 = call float @dx.op.binary.f32(i32 36, float %915, float 1.000000e+00)  ; FMin(a,b)
  %920 = fcmp fast olt float %916, 0x3FEFFF8020000000
  br i1 %920, label %921, label %1036, !dx.controlflow.hints !70

; <label>:921                                     ; preds = %889
  %922 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %926 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %927 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %928 = fsub fast float %924, %916
  %929 = fsub fast float %925, %917
  %930 = fsub fast float %926, %918
  %931 = fsub fast float %927, %919
  %932 = fmul fast float %928, %922
  %933 = fmul fast float %929, %922
  %934 = fmul fast float %930, %922
  %935 = fmul fast float %931, %922
  %936 = fadd fast float %932, %916
  %937 = fadd fast float %933, %917
  %938 = fsub fast float -0.000000e+00, %937
  %939 = fadd fast float %934, %918
  %940 = fadd fast float %935, %919
  %941 = fmul fast float %936, %936
  %942 = fsub fast float %937, %941
  %943 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %942)  ; FMax(a,b)
  %944 = fdiv fast float 1.000000e+00, %943
  %945 = fmul fast float %937, %936
  %946 = fsub fast float %939, %945
  %947 = fsub fast float %896, %936
  %948 = fmul fast float %896, %896
  %949 = fsub fast float %948, %937
  %950 = fmul fast float %947, %944
  %951 = fmul fast float %950, %946
  %952 = fsub fast float %949, %951
  %953 = fmul fast float %937, %937
  %954 = fsub fast float %940, %953
  %955 = fmul fast float %946, %946
  %956 = fmul fast float %955, %944
  %957 = fsub fast float %954, %956
  %958 = fdiv fast float %952, %957
  %959 = fmul fast float %946, %958
  %960 = fsub fast float %947, %959
  %961 = fmul fast float %960, %944
  %962 = fmul fast float %961, %936
  %963 = fsub fast float 1.000000e+00, %962
  %964 = fmul fast float %937, %958
  %965 = fsub fast float %963, %964
  %966 = fmul fast float %961, %961
  %967 = fmul fast float %958, 4.000000e+00
  %968 = fmul fast float %967, %965
  %969 = fsub fast float %966, %968
  %970 = call float @dx.op.unary.f32(i32 24, float %969)  ; Sqrt(value)
  %971 = fcmp fast oge float %961, 0.000000e+00
  %972 = fsub fast float -0.000000e+00, %970
  %973 = select i1 %971, float %972, float %970
  %974 = fsub fast float %973, %961
  %975 = fdiv fast float %974, %958
  %976 = fdiv fast float %965, %974
  %977 = fmul fast float %975, 5.000000e-01
  %978 = fmul fast float %976, 2.000000e+00
  %979 = select i1 %971, float %977, float %978
  %980 = select i1 %971, float %978, float %977
  %981 = call float @dx.op.binary.f32(i32 35, float %979, float %980)  ; FMax(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %979, float %980)  ; FMin(a,b)
  %983 = fcmp fast ogt float %896, %982
  br i1 %983, label %984, label %994

; <label>:984                                     ; preds = %921
  %985 = fsub fast float %896, %982
  %986 = fsub fast float %981, %982
  %987 = fmul fast float %985, %986
  %988 = fmul fast float %981, %896
  %989 = fadd fast float %981, %896
  %990 = fmul fast float %989, %936
  %991 = fadd fast float %988, %937
  %992 = fsub fast float %991, %990
  %993 = fdiv fast float %992, %987
  br label %994

; <label>:994                                     ; preds = %984, %921
  %995 = phi float [ %993, %984 ], [ 0.000000e+00, %921 ]
  %996 = fcmp fast ogt float %896, %981
  %997 = fsub fast float %896, %981
  br i1 %996, label %998, label %1008

; <label>:998                                     ; preds = %994
  %999 = fsub fast float %981, %982
  %1000 = fmul fast float %999, %997
  %1001 = fmul fast float %982, %896
  %1002 = fadd fast float %982, %896
  %1003 = fmul fast float %1002, %936
  %1004 = fsub fast float %938, %1001
  %1005 = fadd fast float %1004, %1003
  %1006 = fdiv fast float %1005, %1000
  %1007 = fadd fast float %1006, %995
  br label %1008

; <label>:1008                                    ; preds = %998, %994
  %1009 = phi float [ %1007, %998 ], [ %995, %994 ]
  %1010 = fsub fast float %896, %982
  %1011 = fmul fast float %1010, %997
  %1012 = fmul fast float %982, %981
  %1013 = fadd fast float %982, %981
  %1014 = fmul fast float %1013, %936
  %1015 = fadd fast float %1012, %937
  %1016 = fsub fast float %1015, %1014
  %1017 = fdiv fast float %1016, %1011
  %1018 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1019 = fcmp fast oeq float %699, 0.000000e+00
  %1020 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %1021 = fcmp fast oeq float %1020, 0.000000e+00
  %1022 = or i1 %1019, %1021
  %1023 = fmul fast float %1020, 2.000000e+00
  %1024 = fadd fast float %885, %886
  %1025 = fdiv fast float %1024, %1023
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = fmul fast float %1026, 2.000000e+00
  %1028 = fsub fast float 3.000000e+00, %1027
  %1029 = fmul fast float %1026, %1026
  %1030 = fmul fast float %1029, %1028
  %1031 = select i1 %1022, float 1.000000e+00, float %1030
  %1032 = fmul fast float %1017, %699
  %1033 = fadd fast float %1018, %1032
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fmul fast float %1031, %1034
  br label %1036

; <label>:1036                                    ; preds = %1008, %889
  %1037 = phi float [ %1035, %1008 ], [ 0.000000e+00, %889 ]
  %1038 = fsub fast float 1.000000e+00, %1037
  %1039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %837, float %838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.i32 %1041, 2
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1049, label %1044

; <label>:1044                                    ; preds = %1036
  %1045 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1046 = fadd fast float %1040, -1.000000e+00
  %1047 = fmul fast float %1045, %1046
  %1048 = fadd fast float %1047, 1.000000e+00
  br label %1049

; <label>:1049                                    ; preds = %1044, %1036
  %1050 = phi float [ %1048, %1044 ], [ %1038, %1036 ]
  %1051 = call float @dx.op.binary.f32(i32 35, float %1040, float %1050)  ; FMax(a,b)
  %1052 = call float @dx.op.dot3.f32(i32 55, float %1051, float %1051, float %1051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1053 = select i1 %110, float %1052, float %1051
  %1054 = select i1 %110, float 1.000000e+00, float %1051
  %1055 = fmul fast float %1053, %827
  %1056 = fmul fast float %1053, %828
  %1057 = fmul fast float %1054, %829
  br label %1058

; <label>:1058                                    ; preds = %1049, %833, %818, %813
  %1059 = phi float [ %815, %813 ], [ %827, %818 ], [ %1055, %1049 ], [ %827, %833 ]
  %1060 = phi float [ %816, %813 ], [ %828, %818 ], [ %1056, %1049 ], [ %828, %833 ]
  %1061 = phi float [ %817, %813 ], [ %829, %818 ], [ %1057, %1049 ], [ %829, %833 ]
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1064 = extractvalue %dx.types.CBufRet.f32 %1062, 3
  %1065 = fmul fast float %1063, %49
  %1066 = fmul fast float %1064, %50
  %1067 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1068 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1069 = select i1 %728, i32 2, i32 0
  %1070 = or i32 %1069, 1
  %1071 = uitofp i32 %1070 to float
  %1072 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1067, float %1068, float %1071, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.f32 %1072, 3
  %1077 = add nuw nsw i32 %1069, 2
  %1078 = uitofp i32 %1077 to float
  %1079 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1067, float %1068, float %1078, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1084 = call float @dx.op.binary.f32(i32 35, float %1074, float %1075)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 35, float %1073, float %1084)  ; FMax(a,b)
  %1086 = call float @dx.op.binary.f32(i32 35, float %1085, float %1076)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 36, float %1081, float %1082)  ; FMin(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %1080, float %1087)  ; FMin(a,b)
  %1089 = call float @dx.op.binary.f32(i32 36, float %1088, float %1083)  ; FMin(a,b)
  %1090 = fmul fast float %1086, 2.550000e+02
  %1091 = fadd fast float %1090, 0x3F70101020000000
  %1092 = fptoui float %1091 to i32
  %1093 = fmul fast float %1089, 2.550000e+02
  %1094 = fadd fast float %1093, 0x3F70101020000000
  %1095 = fptoui float %1094 to i32
  %1096 = icmp ult i32 %1092, %1095
  br i1 %1096, label %1097, label %1140

; <label>:1097                                    ; preds = %1058
  %1098 = fcmp fast ogt float %43, 9.843750e-01
  %1099 = fadd fast float %814, -4.000000e+00
  %1100 = select i1 %1098, float -4.000000e+00, float %1099
  %1101 = call float @dx.op.binary.f32(i32 35, float %1100, float 0.000000e+00)  ; FMax(a,b)
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1104 = fadd fast float %1103, %1101
  %1105 = extractvalue %dx.types.CBufRet.f32 %1102, 2
  %1106 = fmul fast float %1104, %1105
  %1107 = call float @dx.op.unary.f32(i32 23, float %1106)  ; Log(value)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1102, 3
  %1109 = fmul fast float %1108, %1107
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1112 = fmul fast float %1109, %1111
  %1113 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  %1114 = uitofp i32 %1092 to float
  %1115 = uitofp i32 %1095 to float
  %1116 = fadd fast float %1114, 5.000000e-01
  %1117 = fadd fast float %1115, 5.000000e-01
  %1118 = fmul fast float %1111, %1116
  %1119 = fmul fast float %1111, %1117
  %1120 = fadd fast float %1118, 0x3F0FFB4800000000
  %1121 = fadd fast float %1119, 0xBF0FFB4800000000
  %1122 = call float @dx.op.binary.f32(i32 35, float %1113, float %1120)  ; FMax(a,b)
  %1123 = call float @dx.op.binary.f32(i32 36, float %1122, float %1121)  ; FMin(a,b)
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1128 = select i1 %728, float %1127, float 0.000000e+00
  %1129 = fmul fast float %1125, %1123
  %1130 = fadd fast float %1128, %1129
  %1131 = fadd fast float %1128, %1126
  %1132 = fsub fast float %1125, %1126
  %1133 = fadd fast float %1132, %1128
  %1134 = call float @dx.op.binary.f32(i32 35, float %1130, float %1131)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1134, float %1133)  ; FMin(a,b)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %1067, float %1068, float %1135, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  br label %1140

; <label>:1140                                    ; preds = %1097, %1058
  %1141 = phi float [ %1137, %1097 ], [ 1.000000e+00, %1058 ]
  %1142 = phi float [ %1138, %1097 ], [ 1.000000e+00, %1058 ]
  %1143 = phi float [ %1139, %1097 ], [ 1.000000e+00, %1058 ]
  %1144 = call float @dx.op.dot3.f32(i32 55, float %1141, float %1142, float %1143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1145 = select i1 %110, float %1144, float %1141
  %1146 = select i1 %110, float %1144, float %1142
  %1147 = fmul fast float %1145, %1059
  %1148 = fmul fast float %1146, %1060
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  br i1 %110, label %1151, label %1154

; <label>:1151                                    ; preds = %1140
  %1152 = fadd fast float %1147, %1148
  %1153 = fmul fast float %1150, %1152
  br label %1164

; <label>:1154                                    ; preds = %1140
  %1155 = fmul fast float %1143, %1061
  %1156 = fmul fast float %1150, %1147
  %1157 = fmul fast float %1150, %1148
  %1158 = fmul fast float %1155, %1150
  %1159 = call float @dx.op.binary.f32(i32 35, float %1157, float %1158)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 35, float %1156, float %1159)  ; FMax(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float %1160, float 0.000000e+00)  ; FMax(a,b)
  %1162 = fcmp fast ugt float %1161, 0x3F10000000000000
  br i1 %1162, label %1164, label %1163

; <label>:1163                                    ; preds = %1154
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1164

; <label>:1164                                    ; preds = %1163, %1154, %1151
  %1165 = phi float [ %1153, %1151 ], [ %1156, %1163 ], [ %1156, %1154 ]
  %1166 = phi float [ 0.000000e+00, %1151 ], [ %1157, %1163 ], [ %1157, %1154 ]
  %1167 = phi float [ 0.000000e+00, %1151 ], [ %1158, %1163 ], [ %1158, %1154 ]
  %1168 = fadd fast float %578, 0x3FE3C6EF40000000
  %1169 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1170 = call float @dx.op.unary.f32(i32 23, float %1165)  ; Log(value)
  %1171 = fadd fast float %1170, -7.000000e+00
  %1172 = call float @dx.op.unary.f32(i32 21, float %1171)  ; Exp(value)
  %1173 = fmul fast float %1169, 2.000000e+00
  %1174 = fadd fast float %1173, -1.000000e+00
  %1175 = fmul fast float %1172, %1174
  %1176 = fcmp fast ogt float %1165, 0.000000e+00
  %1177 = select i1 %1176, float %1175, float 0.000000e+00
  %1178 = fadd fast float %1177, %1165
  %1179 = fadd fast float %578, 0x3FF3C6EF40000000
  %1180 = call float @dx.op.unary.f32(i32 22, float %1179)  ; Frc(value)
  %1181 = call float @dx.op.unary.f32(i32 23, float %1166)  ; Log(value)
  %1182 = fadd fast float %1181, -7.000000e+00
  %1183 = call float @dx.op.unary.f32(i32 21, float %1182)  ; Exp(value)
  %1184 = fmul fast float %1180, 2.000000e+00
  %1185 = fadd fast float %1184, -1.000000e+00
  %1186 = fmul fast float %1183, %1185
  %1187 = fcmp fast ogt float %1166, 0.000000e+00
  %1188 = select i1 %1187, float %1186, float 0.000000e+00
  %1189 = fadd fast float %1188, %1166
  %1190 = fadd fast float %578, 0x3FFDAA66E0000000
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = call float @dx.op.unary.f32(i32 23, float %1167)  ; Log(value)
  %1193 = fadd fast float %1192, -6.000000e+00
  %1194 = call float @dx.op.unary.f32(i32 21, float %1193)  ; Exp(value)
  %1195 = fmul fast float %1191, 2.000000e+00
  %1196 = fadd fast float %1195, -1.000000e+00
  %1197 = fmul fast float %1194, %1196
  %1198 = fcmp fast ogt float %1167, 0.000000e+00
  %1199 = select i1 %1198, float %1197, float 0.000000e+00
  %1200 = fadd fast float %1199, %1167
  %1201 = select i1 %110, float %1166, float %1189
  %1202 = select i1 %110, float %1167, float %1200
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1203 = call float @dx.op.binary.f32(i32 36, float %1178, float 3.225500e+04)  ; FMin(a,b)
  %1204 = call float @dx.op.binary.f32(i32 36, float %1201, float 3.225500e+04)  ; FMin(a,b)
  %1205 = call float @dx.op.binary.f32(i32 36, float %1202, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1203)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1204)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1205)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!32}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23}
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
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{[37 x i32] [i32 35, i32 8, i32 7, i32 7, i32 7, i32 7, i32 1, i32 3, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !59}
!34 = !{!35, !55, null}
!35 = !{!36, !39, !40, !41, !44, !47, !49, !51, !52, !54}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !37, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!37 = !{i32 0}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 1, i8 0, !38}
!40 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 2, i8 0, !38}
!41 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 4, i32 3, i8 0, !43}
!42 = !{i32 3}
!43 = !{i32 3, i32 7}
!44 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 4, i8 0, !46}
!45 = !{i32 4}
!46 = !{i32 3, i32 3}
!47 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !48, i8 3, i32 1, i8 2, i32 5, i8 0, !46}
!48 = !{i32 5}
!49 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!50 = !{i32 8}
!51 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !37, i8 1, i32 1, i8 4, i32 7, i8 0, !38}
!52 = !{i32 8, !"COLOR", i8 5, i8 0, !42, i8 1, i32 1, i8 3, i32 8, i8 0, !53}
!53 = !{i32 3, i32 5}
!54 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !38}
!58 = !{i32 1}
!59 = !{i32 0, i64 24}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

