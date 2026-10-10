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
; shader hash: 7c7c0a5879318fa501f8d12a7bdb7b67
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
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fmul fast float %47, %40
  %49 = fmul fast float %47, %41
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %48, 2.000000e+00
  %54 = fmul fast float %53, %51
  %55 = fmul fast float %49, 2.000000e+00
  %56 = fmul fast float %55, %52
  %57 = fsub fast float 1.000000e+00, %54
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %57, %60
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %57, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %58, %67
  %71 = fmul fast float %58, %68
  %72 = fmul fast float %58, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %77, %63
  %79 = fadd fast float %71, %75
  %80 = fadd fast float %79, %64
  %81 = fadd fast float %72, %76
  %82 = fadd fast float %81, %65
  %83 = fmul fast float %78, %43
  %84 = fmul fast float %80, %43
  %85 = fmul fast float %82, %43
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 3
  %88 = and i32 %87, 3
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 4
  %91 = icmp ne i32 %90, 0
  %92 = and i1 %89, %91
  br i1 %92, label %93, label %102

; <label>:93                                      ; preds = %0
  %94 = fmul fast float %52, %49
  %95 = fmul fast float %51, %48
  %96 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %95, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = fsub fast float 1.000000e+00, %97
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fcmp fast olt float %98, %100
  br label %105

; <label>:102                                     ; preds = %0
  %103 = icmp eq i32 %90, 0
  %104 = and i1 %89, %103
  br label %105

; <label>:105                                     ; preds = %102, %93
  %106 = phi i1 [ %101, %93 ], [ %104, %102 ]
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %108, %48
  %111 = fmul fast float %109, %49
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = and i32 %113, 114688
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, float %110, float 0.000000e+00
  %117 = select i1 %115, float %111, float 0.000000e+00
  %118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %116, float %117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fmul fast float %119, 2.550000e+02
  %121 = fptoui float %120 to i32
  %122 = select i1 %115, i32 %121, i32 0
  %123 = mul i32 %21, 208
  %124 = add i32 %123, 188
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %87, 114688
  %128 = and i32 %87, 8
  %129 = icmp ne i32 %128, 0
  %130 = or i1 %106, %129
  %131 = select i1 %130, i32 %127, i32 16384
  %132 = and i32 %131, %126
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %105
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %135

; <label>:135                                     ; preds = %134, %105
  %136 = and i32 %126, 512
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %162, label %138

; <label>:138                                     ; preds = %135
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %140, %48
  %143 = fmul fast float %141, %49
  %144 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %146 = fdiv fast float %144, %145
  %147 = fcmp fast ogt float %146, 0x3FFC71C720000000
  br i1 %147, label %148, label %154

; <label>:148                                     ; preds = %138
  %149 = fdiv fast float 0x3FFC71C720000000, %146
  %150 = fmul fast float %149, %143
  %151 = fsub fast float 1.000000e+00, %149
  %152 = fmul fast float %151, 5.000000e-01
  %153 = fadd fast float %152, %150
  br label %162

; <label>:154                                     ; preds = %138
  %155 = fcmp fast olt float %146, 0x3FFC71C720000000
  br i1 %155, label %156, label %162

; <label>:156                                     ; preds = %154
  %157 = fmul fast float %142, 5.625000e-01
  %158 = fmul fast float %157, %146
  %159 = fmul fast float %146, 2.812500e-01
  %160 = fsub fast float 5.000000e-01, %159
  %161 = fadd fast float %160, %158
  br label %162

; <label>:162                                     ; preds = %156, %154, %148, %135
  %163 = phi float [ %37, %135 ], [ %142, %148 ], [ %161, %156 ], [ %142, %154 ]
  %164 = phi float [ %38, %135 ], [ %153, %148 ], [ %143, %156 ], [ %143, %154 ]
  %165 = add i32 %22, 88
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = bitcast i32 %167 to float
  %169 = add i32 %22, 72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = extractvalue %dx.types.ResRet.i32 %170, 2
  %174 = extractvalue %dx.types.ResRet.i32 %170, 3
  %175 = bitcast i32 %171 to float
  %176 = bitcast i32 %172 to float
  %177 = bitcast i32 %173 to float
  %178 = bitcast i32 %174 to float
  %179 = add i32 %22, 108
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = add i32 %181, 0
  %183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %184 = fmul fast float %177, %37
  %185 = fmul fast float %178, %38
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = fmul fast float %187, %175
  %189 = fmul fast float %187, %176
  %190 = fadd fast float %188, %184
  %191 = fadd fast float %189, %185
  %192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %183, %dx.types.Handle %45, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = extractvalue %dx.types.ResRet.f32 %192, 1
  %195 = fmul fast float %193, 2.000000e+00
  %196 = fmul fast float %194, 2.000000e+00
  %197 = fadd fast float %195, -1.000000e+00
  %198 = fadd fast float %196, -1.000000e+00
  %199 = fmul fast float %197, %168
  %200 = fmul fast float %198, %168
  %201 = fadd fast float %199, %163
  %202 = fadd fast float %200, %164
  %203 = and i32 %126, 16
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %204, float 1.000000e+00, float %39
  %206 = icmp eq i32 %203, 0
  br i1 %206, label %226, label %207, !dx.controlflow.hints !59

; <label>:207                                     ; preds = %162
  %208 = add i32 %123, 64
  %209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fadd fast float %210, 1.000000e+00
  %212 = fmul fast float %211, %39
  %213 = fsub fast float %212, %210
  %214 = fsub fast float %211, %213
  %215 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %216 = fsub fast float 1.000000e+00, %212
  %217 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %218 = fsub fast float %215, %217
  %219 = fsub fast float %205, %217
  %220 = fdiv fast float %219, %218
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = fmul fast float %221, 2.000000e+00
  %223 = fsub fast float 3.000000e+00, %222
  %224 = fmul fast float %221, %221
  %225 = fmul fast float %224, %223
  br label %226

; <label>:226                                     ; preds = %207, %162
  %227 = phi float [ %225, %207 ], [ %205, %162 ]
  %228 = fcmp fast ogt float %227, 0.000000e+00
  br i1 %228, label %230, label %229

; <label>:229                                     ; preds = %226
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %230

; <label>:230                                     ; preds = %229, %226
  %231 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %232 = fmul fast float %48, 5.000000e-01
  %233 = fmul fast float %49, 5.000000e-01
  %234 = fptosi float %232 to i32
  %235 = fptosi float %233 to i32
  %236 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = lshr i32 %237, 18
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F4C00EBA0000000
  %241 = call float @dx.op.unary.f32(i32 21, float %240)  ; Exp(value)
  %242 = fadd fast float %241, -1.000000e+00
  %243 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %244 = extractvalue %dx.types.Dimensions %243, 0
  %245 = sitofp i32 %244 to float
  %246 = extractvalue %dx.types.Dimensions %243, 1
  %247 = sitofp i32 %246 to float
  %248 = fcmp fast oge float %232, %245
  %249 = fcmp fast oge float %233, %247
  %250 = or i1 %248, %249
  %251 = select i1 %250, float 0x4197782600000000, float %242
  %252 = fsub fast float %251, %43
  %253 = fcmp fast ogt float %252, 0.000000e+00
  %254 = and i32 %122, -2
  %255 = icmp eq i32 %254, 2
  %256 = and i1 %255, %253
  %257 = xor i1 %253, true
  %258 = icmp eq i32 %122, 1
  %259 = and i1 %258, %257
  %260 = or i1 %256, %259
  %261 = and i32 %126, 262144
  %262 = icmp ne i32 %261, 0
  %263 = and i1 %262, %260
  %264 = xor i1 %260, true
  %265 = and i32 %126, 131072
  %266 = icmp ne i32 %265, 0
  %267 = and i1 %266, %264
  %268 = or i1 %263, %267
  br i1 %268, label %269, label %270

; <label>:269                                     ; preds = %230
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %270

; <label>:270                                     ; preds = %269, %230
  %271 = and i32 %126, 32
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %522, label %273, !dx.controlflow.hints !60

; <label>:273                                     ; preds = %270
  %274 = add i32 %123, 80
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = extractvalue %dx.types.ResRet.f32 %275, 3
  %280 = add i32 %123, 96
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = extractvalue %dx.types.ResRet.f32 %281, 2
  %285 = add i32 %123, 112
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  %291 = add i32 %123, 128
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = extractvalue %dx.types.ResRet.f32 %292, 3
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 4096
  %300 = icmp ne i32 %299, 0
  %301 = fcmp fast une float %284, 0.000000e+00
  %302 = and i32 %298, 64
  %303 = icmp ne i32 %302, 0
  %304 = and i32 %298, 128
  %305 = icmp eq i32 %304, 0
  %306 = and i32 %298, 2048
  %307 = icmp eq i32 %306, 0
  %308 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %309 = extractvalue %dx.types.Dimensions %308, 0
  %310 = sitofp i32 %309 to float
  %311 = extractvalue %dx.types.Dimensions %308, 1
  %312 = sitofp i32 %311 to float
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 3
  %316 = fmul fast float %314, %48
  %317 = fmul fast float %315, %49
  %318 = fmul fast float %316, %310
  %319 = fmul fast float %317, %312
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %322 = fsub fast float -0.000000e+00, %321
  %323 = fptoui float %322 to i32
  %324 = fptoui float %318 to i32
  %325 = fptoui float %319 to i32
  %326 = and i32 %323, 31
  %327 = lshr i32 %324, %326
  %328 = lshr i32 %325, %326
  %329 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %323, i32 %327, i32 %328, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = fcmp fast ogt float %330, -1.000000e+00
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %334 = select i1 %331, float %333, float 1.000000e+00
  %335 = fadd fast float %330, 1.000000e+00
  %336 = fmul fast float %334, %335
  %337 = call float @dx.op.unary.f32(i32 6, float %336)  ; FAbs(value)
  %338 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %339 = fcmp fast oge float %337, %338
  %340 = select i1 %339, float 0x4197782600000000, float %337
  br i1 %307, label %418, label %341, !dx.controlflow.hints !61

; <label>:341                                     ; preds = %273
  %342 = fmul fast float %53, %314
  %343 = fmul fast float %55, %315
  %344 = fsub fast float 1.000000e+00, %342
  %345 = fsub fast float 1.000000e+00, %343
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %349 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %350 = fmul fast float %344, %347
  %351 = fmul fast float %344, %348
  %352 = fmul fast float %344, %349
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fmul fast float %345, %354
  %358 = fmul fast float %345, %355
  %359 = fmul fast float %345, %356
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fadd fast float %357, %361
  %365 = fadd fast float %364, %350
  %366 = fadd fast float %358, %362
  %367 = fadd fast float %366, %351
  %368 = fadd fast float %359, %363
  %369 = fadd fast float %368, %352
  %370 = fmul fast float %365, %340
  %371 = fmul fast float %367, %340
  %372 = fmul fast float %369, %340
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %377 = fsub fast float %374, %23
  %378 = fadd fast float %377, %370
  %379 = fsub fast float %375, %24
  %380 = fadd fast float %379, %371
  %381 = fsub fast float %376, %25
  %382 = fadd fast float %381, %372
  %383 = fmul fast float %26, %26
  %384 = call float @dx.op.dot3.f32(i32 55, float %378, float %380, float %382, float %378, float %380, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = fsub fast float %383, %384
  %386 = fmul fast float %283, %383
  %387 = fmul fast float %282, %383
  %388 = fcmp fast olt float %385, %386
  %389 = fcmp fast ogt float %385, %387
  %390 = or i1 %388, %389
  %391 = select i1 %390, float 0.000000e+00, float %385
  %392 = fsub fast float %282, %283
  %393 = fmul fast float %392, %383
  %394 = fsub fast float %391, %386
  %395 = fdiv fast float %394, %393
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, 2.000000e+00
  %398 = fsub fast float 3.000000e+00, %397
  %399 = fmul fast float %396, %396
  %400 = fmul fast float %399, %398
  %401 = fsub fast float %290, %296
  %402 = fmul fast float %400, %401
  %403 = fadd fast float %402, %296
  %404 = fmul fast float %287, %27
  %405 = fmul fast float %288, %28
  %406 = fmul fast float %289, %29
  %407 = fsub fast float %404, %293
  %408 = fsub fast float %405, %294
  %409 = fsub fast float %406, %295
  %410 = fmul fast float %400, %407
  %411 = fmul fast float %400, %408
  %412 = fmul fast float %400, %409
  %413 = fadd fast float %410, %293
  %414 = fadd fast float %411, %294
  %415 = fadd fast float %412, %295
  %416 = fmul fast float %276, %276
  %417 = fmul fast float %416, %391
  br label %513

; <label>:418                                     ; preds = %273
  %419 = and i32 %298, 256
  %420 = icmp eq i32 %419, 0
  %421 = fsub fast float %340, %43
  br i1 %420, label %470, label %422

; <label>:422                                     ; preds = %418
  %423 = fadd fast float %282, %43
  %424 = fcmp fast olt float %340, %43
  %425 = fcmp fast ogt float %340, %423
  %426 = or i1 %424, %425
  %427 = select i1 %426, float 0.000000e+00, float %421
  %428 = call float @dx.op.unary.f32(i32 83, float %340)  ; DerivCoarseX(value)
  %429 = call float @dx.op.unary.f32(i32 84, float %340)  ; DerivCoarseY(value)
  %430 = fmul fast float %428, %428
  %431 = fmul fast float %429, %429
  %432 = fadd fast float %431, %430
  %433 = call float @dx.op.unary.f32(i32 24, float %432)  ; Sqrt(value)
  %434 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %435 = fmul fast float %434, %433
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, %283
  %438 = fdiv fast float %421, %437
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %440 = fmul fast float %439, 2.000000e+00
  %441 = fsub fast float 3.000000e+00, %440
  %442 = fmul fast float %439, %439
  %443 = fmul fast float %442, %441
  %444 = fsub fast float %340, %423
  %445 = fadd fast float %444, %437
  %446 = fdiv fast float %445, %437
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fmul fast float %447, 2.000000e+00
  %449 = fsub fast float 3.000000e+00, %448
  %450 = fmul fast float %447, %447
  %451 = fmul fast float %450, %449
  %452 = fsub fast float %443, %451
  %453 = fsub fast float %290, %296
  %454 = fmul fast float %452, %453
  %455 = fadd fast float %454, %296
  %456 = fmul fast float %287, %27
  %457 = fmul fast float %288, %28
  %458 = fmul fast float %289, %29
  %459 = fsub fast float %456, %293
  %460 = fsub fast float %457, %294
  %461 = fsub fast float %458, %295
  %462 = fmul fast float %452, %459
  %463 = fmul fast float %452, %460
  %464 = fmul fast float %452, %461
  %465 = fadd fast float %462, %293
  %466 = fadd fast float %463, %294
  %467 = fadd fast float %464, %295
  %468 = fmul fast float %427, %276
  %469 = call float @dx.op.unary.f32(i32 6, float %468)  ; FAbs(value)
  br label %513

; <label>:470                                     ; preds = %418
  br i1 %301, label %471, label %484

; <label>:471                                     ; preds = %470
  %472 = fdiv fast float 5.000000e+01, %26
  %473 = select i1 %303, float %472, float 1.000000e+00
  %474 = fmul fast float %473, %276
  %475 = fmul fast float %37, 2.000000e+00
  %476 = fmul fast float %38, 2.000000e+00
  %477 = fadd fast float %475, -1.000000e+00
  %478 = fadd fast float %476, -1.000000e+00
  %479 = call float @dx.op.dot2.f32(i32 54, float %477, float %478, float %477, float %478)  ; Dot2(ax,ay,bx,by)
  %480 = fmul fast float %284, %26
  %481 = fmul fast float %480, %479
  %482 = fsub fast float %421, %481
  %483 = fmul fast float %474, %482
  br label %513

; <label>:484                                     ; preds = %470
  br i1 %305, label %505, label %485

; <label>:485                                     ; preds = %484
  %486 = fmul fast float %26, 0x3F947AE140000000
  %487 = select i1 %303, float %486, float 1.000000e+00
  %488 = fdiv fast float 1.000000e+00, %487
  %489 = fmul fast float %487, %277
  %490 = fmul fast float %487, %278
  %491 = fmul fast float %488, %279
  %492 = call float @dx.op.unary.f32(i32 6, float %421)  ; FAbs(value)
  %493 = fcmp fast olt float %492, %489
  br i1 %493, label %494, label %498, !dx.controlflow.hints !62

; <label>:494                                     ; preds = %485
  %495 = fmul fast float %488, %276
  %496 = fmul fast float %495, %492
  %497 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  br label %513

; <label>:498                                     ; preds = %485
  %499 = fcmp fast ogt float %492, %490
  br i1 %499, label %500, label %513

; <label>:500                                     ; preds = %498
  %501 = fsub fast float %492, %490
  %502 = fmul fast float %491, %501
  %503 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  %504 = fsub fast float 1.000000e+00, %503
  br label %513

; <label>:505                                     ; preds = %484
  %506 = fdiv fast float 5.000000e+01, %26
  %507 = select i1 %303, float %506, float 1.000000e+00
  %508 = fmul fast float %507, %276
  %509 = call float @dx.op.unary.f32(i32 6, float %252)  ; FAbs(value)
  %510 = select i1 %300, float %509, float 0x47EFFFFFE0000000
  %511 = call float @dx.op.binary.f32(i32 36, float %421, float %510)  ; FMin(a,b)
  %512 = fmul fast float %508, %511
  br label %513

; <label>:513                                     ; preds = %505, %500, %498, %494, %471, %422, %341
  %514 = phi float [ %417, %341 ], [ %469, %422 ], [ %483, %471 ], [ %512, %505 ], [ %497, %494 ], [ %504, %500 ], [ %492, %498 ]
  %515 = phi float [ %413, %341 ], [ %465, %422 ], [ %27, %471 ], [ %27, %505 ], [ %27, %494 ], [ %27, %500 ], [ %27, %498 ]
  %516 = phi float [ %414, %341 ], [ %466, %422 ], [ %28, %471 ], [ %28, %505 ], [ %28, %494 ], [ %28, %500 ], [ %28, %498 ]
  %517 = phi float [ %415, %341 ], [ %467, %422 ], [ %29, %471 ], [ %29, %505 ], [ %29, %494 ], [ %29, %500 ], [ %29, %498 ]
  %518 = phi float [ %403, %341 ], [ %455, %422 ], [ 1.000000e+00, %471 ], [ 1.000000e+00, %505 ], [ 1.000000e+00, %494 ], [ 1.000000e+00, %500 ], [ 1.000000e+00, %498 ]
  %519 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %520 = fmul fast float %518, %231
  %521 = fmul fast float %520, %519
  br label %522

; <label>:522                                     ; preds = %513, %270
  %523 = phi float [ %521, %513 ], [ %231, %270 ]
  %524 = phi float [ %515, %513 ], [ %27, %270 ]
  %525 = phi float [ %516, %513 ], [ %28, %270 ]
  %526 = phi float [ %517, %513 ], [ %29, %270 ]
  %527 = fmul fast float %524, %30
  %528 = fmul fast float %525, %30
  %529 = fmul fast float %526, %30
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %532 = fptosi float %43 to i32
  %533 = sitofp i32 %532 to float
  %534 = fadd fast float %531, %533
  %535 = fmul fast float %534, 0x3FE3C6EF40000000
  %536 = frem fast float %48, 2.560000e+02
  %537 = frem fast float %49, 2.560000e+02
  %538 = fptoui float %536 to i32
  %539 = fptoui float %537 to i32
  %540 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %538, i32 %539, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fadd fast float %541, %535
  %543 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %544 = and i32 %126, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %602, label %546, !dx.controlflow.hints !63

; <label>:546                                     ; preds = %522
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 2
  %549 = extractvalue %dx.types.ResRet.f32 %547, 3
  %550 = add i32 %123, 16
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = add i32 %123, 32
  %556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = and i32 %126, 2
  %561 = icmp eq i32 %560, 0
  %562 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = call float @dx.op.unary.f32(i32 25, float %562)  ; Rsqrt(value)
  %564 = fmul fast float %563, %33
  %565 = fmul fast float %563, %34
  %566 = fmul fast float %563, %35
  %567 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = call float @dx.op.unary.f32(i32 25, float %567)  ; Rsqrt(value)
  %569 = fmul fast float %568, %83
  %570 = fmul fast float %568, %84
  %571 = fmul fast float %568, %85
  %572 = call float @dx.op.dot3.f32(i32 55, float %569, float %570, float %571, float %564, float %565, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = fmul fast float %572, %572
  %574 = fmul fast float %573, %548
  %575 = fadd fast float %574, %549
  %576 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  br i1 %561, label %577, label %587, !dx.controlflow.hints !64

; <label>:577                                     ; preds = %546
  %578 = extractvalue %dx.types.ResRet.f32 %547, 1
  %579 = extractvalue %dx.types.ResRet.f32 %547, 0
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %582 = fmul fast float %581, %567
  %583 = fsub fast float %579, %582
  %584 = fmul fast float %583, %578
  %585 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %586 = fmul fast float %585, %576
  br label %587

; <label>:587                                     ; preds = %577, %546
  %588 = phi float [ %586, %577 ], [ %576, %546 ]
  %589 = fsub fast float %552, %557
  %590 = fsub fast float %553, %558
  %591 = fsub fast float %554, %559
  %592 = fmul fast float %588, %589
  %593 = fmul fast float %588, %590
  %594 = fmul fast float %588, %591
  %595 = fadd fast float %592, %557
  %596 = fadd fast float %593, %558
  %597 = fadd fast float %594, %559
  %598 = fmul fast float %595, %527
  %599 = fmul fast float %596, %528
  %600 = fmul fast float %597, %529
  %601 = fmul fast float %588, %523
  br label %602

; <label>:602                                     ; preds = %587, %522
  %603 = phi float [ %601, %587 ], [ %523, %522 ]
  %604 = phi float [ %598, %587 ], [ %527, %522 ]
  %605 = phi float [ %599, %587 ], [ %528, %522 ]
  %606 = phi float [ %600, %587 ], [ %529, %522 ]
  %607 = add i32 %22, 104
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = add i32 %609, 0
  %611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %611, %dx.types.Handle %44, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = add i32 %22, 44
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = shl i32 %618, 4
  %620 = and i32 %619, 32752
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = lshr i32 %618, 7
  %623 = and i32 %622, 32752
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = lshr i32 %618, 22
  %626 = shl nuw nsw i32 %625, 5
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = fmul fast float %621, %613
  %629 = fmul fast float %624, %614
  %630 = fmul fast float %627, %615
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = fmul fast float %628, %632
  %634 = fmul fast float %629, %632
  %635 = fmul fast float %630, %632
  %636 = add i32 %22, 48
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = lshr i32 %638, 22
  %640 = shl nuw nsw i32 %639, 5
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = fmul fast float %641, %633
  %643 = select i1 %106, float %642, float %633
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 1
  %650 = fmul fast float %643, %604
  %651 = fmul fast float %634, %605
  %652 = fmul fast float %635, %606
  %653 = call float @dx.op.dot3.f32(i32 55, float %650, float %651, float %652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %654 = select i1 %106, float 0.000000e+00, float %650
  %655 = select i1 %106, float %653, float %651
  %656 = select i1 %106, float 0.000000e+00, float %652
  %657 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = lshr i32 %658, 18
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F4C00EBA0000000
  %662 = call float @dx.op.unary.f32(i32 21, float %661)  ; Exp(value)
  %663 = fadd fast float %662, -1.000000e+00
  %664 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %665 = extractvalue %dx.types.Dimensions %664, 0
  %666 = sitofp i32 %665 to float
  %667 = extractvalue %dx.types.Dimensions %664, 1
  %668 = sitofp i32 %667 to float
  %669 = fcmp fast oge float %232, %666
  %670 = fcmp fast oge float %233, %668
  %671 = or i1 %669, %670
  %672 = select i1 %671, float 0x4197782600000000, float %663
  %673 = icmp eq i32 %122, 3
  %674 = fcmp fast ogt float %43, %672
  %675 = and i1 %258, %674
  %676 = or i1 %673, %675
  %677 = icmp eq i32 %122, 2
  %678 = fcmp fast ole float %43, %672
  %679 = and i1 %677, %678
  %680 = or i1 %679, %676
  %681 = fmul fast float %524, %36
  %682 = fmul fast float %681, %643
  %683 = fmul fast float %682, %645
  %684 = fmul fast float %683, %649
  %685 = fmul fast float %525, %36
  %686 = fmul fast float %685, %634
  %687 = fmul fast float %686, %646
  %688 = fmul fast float %687, %649
  %689 = fmul fast float %526, %36
  %690 = fmul fast float %689, %635
  %691 = fmul fast float %690, %647
  %692 = fmul fast float %691, %649
  %693 = fadd fast float %684, %654
  %694 = fadd fast float %655, %688
  %695 = fadd fast float %692, %656
  %696 = fmul fast float %693, %603
  %697 = fmul fast float %694, %603
  %698 = fmul fast float %695, %603
  %699 = and i32 %126, 1048576
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %792, label %701, !dx.controlflow.hints !65

; <label>:701                                     ; preds = %602
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %704 = extractvalue %dx.types.CBufRet.f32 %702, 3
  %705 = fmul fast float %703, %48
  %706 = fmul fast float %704, %49
  %707 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  %708 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %709 = select i1 %680, i32 2, i32 0
  %710 = or i32 %709, 1
  %711 = uitofp i32 %710 to float
  %712 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %707, float %708, float %711, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = extractvalue %dx.types.ResRet.f32 %712, 3
  %717 = add nuw nsw i32 %709, 2
  %718 = uitofp i32 %717 to float
  %719 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %707, float %708, float %718, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = extractvalue %dx.types.ResRet.f32 %719, 1
  %722 = extractvalue %dx.types.ResRet.f32 %719, 2
  %723 = extractvalue %dx.types.ResRet.f32 %719, 3
  %724 = call float @dx.op.binary.f32(i32 35, float %714, float %715)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 35, float %713, float %724)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 35, float %725, float %716)  ; FMax(a,b)
  %727 = call float @dx.op.binary.f32(i32 36, float %721, float %722)  ; FMin(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float %720, float %727)  ; FMin(a,b)
  %729 = call float @dx.op.binary.f32(i32 36, float %728, float %723)  ; FMin(a,b)
  %730 = fmul fast float %726, 2.550000e+02
  %731 = fadd fast float %730, 0x3F70101020000000
  %732 = fptoui float %731 to i32
  %733 = fmul fast float %729, 2.550000e+02
  %734 = fadd fast float %733, 0x3F70101020000000
  %735 = fptoui float %734 to i32
  %736 = icmp ult i32 %732, %735
  br i1 %736, label %737, label %785

; <label>:737                                     ; preds = %701
  %738 = fcmp fast ogt float %42, 9.843750e-01
  %739 = fadd fast float %43, -4.000000e+00
  %740 = select i1 %738, float -4.000000e+00, float %739
  %741 = call float @dx.op.binary.f32(i32 35, float %740, float 0.000000e+00)  ; FMax(a,b)
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = fadd fast float %743, %741
  %745 = extractvalue %dx.types.CBufRet.f32 %742, 2
  %746 = fmul fast float %744, %745
  %747 = call float @dx.op.unary.f32(i32 23, float %746)  ; Log(value)
  %748 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %749 = fmul fast float %748, %747
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 2
  %752 = fmul fast float %749, %751
  %753 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %754 = uitofp i32 %732 to float
  %755 = uitofp i32 %735 to float
  %756 = fadd fast float %754, 5.000000e-01
  %757 = fadd fast float %755, 5.000000e-01
  %758 = fmul fast float %751, %756
  %759 = fmul fast float %751, %757
  %760 = fadd fast float %758, 0x3F0FFB4800000000
  %761 = fadd fast float %759, 0xBF0FFB4800000000
  %762 = call float @dx.op.binary.f32(i32 35, float %753, float %760)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 36, float %762, float %761)  ; FMin(a,b)
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %768 = select i1 %680, float %767, float 0.000000e+00
  %769 = fmul fast float %765, %763
  %770 = fadd fast float %768, %769
  %771 = fadd fast float %768, %766
  %772 = fsub fast float %765, %766
  %773 = fadd fast float %772, %768
  %774 = call float @dx.op.binary.f32(i32 35, float %770, float %771)  ; FMax(a,b)
  %775 = call float @dx.op.binary.f32(i32 36, float %774, float %773)  ; FMin(a,b)
  %776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %707, float %708, float %775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %782 = fmul fast float %781, %777
  %783 = fmul fast float %781, %778
  %784 = fmul fast float %781, %779
  br label %785

; <label>:785                                     ; preds = %737, %701
  %786 = phi float [ %782, %737 ], [ 1.000000e+00, %701 ]
  %787 = phi float [ %783, %737 ], [ 1.000000e+00, %701 ]
  %788 = phi float [ %784, %737 ], [ 1.000000e+00, %701 ]
  %789 = fmul fast float %786, %696
  %790 = fmul fast float %787, %697
  %791 = fmul fast float %788, %698
  br label %792

; <label>:792                                     ; preds = %785, %602
  %793 = phi float [ %789, %785 ], [ %696, %602 ]
  %794 = phi float [ %790, %785 ], [ %697, %602 ]
  %795 = phi float [ %791, %785 ], [ %698, %602 ]
  %796 = and i32 %126, 2097152
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %802, label %798, !dx.controlflow.hints !66

; <label>:798                                     ; preds = %792
  %799 = add i32 %123, 192
  %800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  br label %805

; <label>:802                                     ; preds = %792
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 3
  br label %805

; <label>:805                                     ; preds = %802, %798
  %806 = phi float [ %801, %798 ], [ %804, %802 ]
  br i1 %675, label %807, label %891

; <label>:807                                     ; preds = %805
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %811 = fmul fast float %809, %48
  %812 = fmul fast float %810, %49
  %813 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %814 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %815 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %813, float %814, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %813, float %814, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  %825 = call float @dx.op.binary.f32(i32 35, float %817, float %818)  ; FMax(a,b)
  %826 = call float @dx.op.binary.f32(i32 35, float %816, float %825)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 35, float %826, float %819)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 36, float %822, float %823)  ; FMin(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %821, float %828)  ; FMin(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %829, float %824)  ; FMin(a,b)
  %831 = fmul fast float %827, 2.550000e+02
  %832 = fadd fast float %831, 0x3F70101020000000
  %833 = fptoui float %832 to i32
  %834 = fmul fast float %830, 2.550000e+02
  %835 = fadd fast float %834, 0x3F70101020000000
  %836 = fptoui float %835 to i32
  %837 = icmp ult i32 %833, %836
  br i1 %837, label %838, label %880

; <label>:838                                     ; preds = %807
  %839 = fcmp fast ogt float %42, 9.843750e-01
  %840 = fadd fast float %43, -4.000000e+00
  %841 = select i1 %839, float -4.000000e+00, float %840
  %842 = call float @dx.op.binary.f32(i32 35, float %841, float 0.000000e+00)  ; FMax(a,b)
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = fadd fast float %844, %842
  %846 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %847 = fmul fast float %845, %846
  %848 = call float @dx.op.unary.f32(i32 23, float %847)  ; Log(value)
  %849 = extractvalue %dx.types.CBufRet.f32 %843, 3
  %850 = fmul fast float %849, %848
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %853 = fmul fast float %850, %852
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = uitofp i32 %833 to float
  %856 = uitofp i32 %836 to float
  %857 = fadd fast float %855, 5.000000e-01
  %858 = fadd fast float %856, 5.000000e-01
  %859 = fmul fast float %852, %857
  %860 = fmul fast float %852, %858
  %861 = fadd fast float %859, 0x3F0FFB4800000000
  %862 = fadd fast float %860, 0xBF0FFB4800000000
  %863 = call float @dx.op.binary.f32(i32 35, float %854, float %861)  ; FMax(a,b)
  %864 = call float @dx.op.binary.f32(i32 36, float %863, float %862)  ; FMin(a,b)
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %869 = fmul fast float %866, %864
  %870 = fadd fast float %868, %869
  %871 = fadd fast float %868, %867
  %872 = fsub fast float %866, %867
  %873 = fadd fast float %872, %868
  %874 = call float @dx.op.binary.f32(i32 35, float %870, float %871)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 36, float %874, float %873)  ; FMin(a,b)
  %876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %813, float %814, float %875, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = extractvalue %dx.types.ResRet.f32 %876, 1
  %879 = extractvalue %dx.types.ResRet.f32 %876, 2
  br label %880

; <label>:880                                     ; preds = %838, %807
  %881 = phi float [ %877, %838 ], [ 1.000000e+00, %807 ]
  %882 = phi float [ %878, %838 ], [ 1.000000e+00, %807 ]
  %883 = phi float [ %879, %838 ], [ 1.000000e+00, %807 ]
  %884 = call float @dx.op.dot3.f32(i32 55, float %881, float %882, float %883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %885 = select i1 %106, float %884, float %881
  %886 = select i1 %106, float %884, float %882
  %887 = select i1 %106, float 1.000000e+00, float %883
  %888 = fmul fast float %885, %793
  %889 = fmul fast float %886, %794
  %890 = fmul fast float %887, %795
  br label %891

; <label>:891                                     ; preds = %880, %805
  %892 = phi float [ %672, %880 ], [ %43, %805 ]
  %893 = phi float [ %888, %880 ], [ %793, %805 ]
  %894 = phi float [ %889, %880 ], [ %794, %805 ]
  %895 = phi float [ %890, %880 ], [ %795, %805 ]
  br i1 %680, label %1136, label %896

; <label>:896                                     ; preds = %891
  %897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = call float @dx.op.dot3.f32(i32 55, float %898, float %899, float %900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = select i1 %106, float %901, float %898
  %903 = select i1 %106, float %901, float %899
  %904 = select i1 %106, float 1.000000e+00, float %900
  %905 = fmul fast float %902, %893
  %906 = fmul fast float %903, %894
  %907 = fmul fast float %904, %895
  %908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.i32 %908, 0
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %1136, label %911, !dx.controlflow.hints !67

; <label>:911                                     ; preds = %896
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %914 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %915 = fmul fast float %913, %48
  %916 = fmul fast float %914, %49
  %917 = fmul fast float %915, 2.000000e+00
  %918 = fmul fast float %916, 2.000000e+00
  %919 = fsub fast float 1.000000e+00, %917
  %920 = fsub fast float 1.000000e+00, %918
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %924 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %925 = fmul fast float %919, %922
  %926 = fmul fast float %919, %923
  %927 = fmul fast float %919, %924
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %932 = fmul fast float %920, %929
  %933 = fmul fast float %920, %930
  %934 = fmul fast float %920, %931
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %939 = fadd fast float %932, %936
  %940 = fadd fast float %939, %925
  %941 = fadd fast float %933, %937
  %942 = fadd fast float %941, %926
  %943 = fadd fast float %934, %938
  %944 = fadd fast float %943, %927
  %945 = fmul fast float %940, %892
  %946 = fmul fast float %942, %892
  %947 = fmul fast float %944, %892
  %948 = fmul fast float %945, %945
  %949 = fmul fast float %946, %946
  %950 = fadd fast float %948, %949
  %951 = fmul fast float %947, %947
  %952 = fadd fast float %950, %951
  %953 = call float @dx.op.unary.f32(i32 24, float %952)  ; Sqrt(value)
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = fsub fast float %953, %955
  %957 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %958 = fmul fast float %956, %957
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %960 = fadd fast float %959, -5.000000e-01
  %961 = fmul fast float %960, 2.000000e+00
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %964 = call float @dx.op.binary.f32(i32 36, float %963, float %961)  ; FMin(a,b)
  %965 = fsub fast float -0.000000e+00, %963
  %966 = fcmp fast ogt float %964, %965
  br i1 %966, label %967, label %1136, !dx.controlflow.hints !68

; <label>:967                                     ; preds = %911
  %968 = fmul fast float %964, 5.000000e-01
  %969 = fadd fast float %968, 5.000000e-01
  %970 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %971 = call float @dx.op.unary.f32(i32 27, float %970)  ; Round_ni(value)
  %972 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %973 = fmul fast float %972, 2.000000e+00
  %974 = fadd fast float %973, -1.000000e+00
  %975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %915, float %916, float %971, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = extractvalue %dx.types.ResRet.f32 %975, 1
  %978 = extractvalue %dx.types.ResRet.f32 %975, 2
  %979 = extractvalue %dx.types.ResRet.f32 %975, 3
  %980 = fadd fast float %976, -5.000000e-01
  %981 = fadd fast float %978, -5.000000e-01
  %982 = fmul fast float %980, 0xBFD5555560000000
  %983 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %981, float %982)  ; FMad(a,b,c)
  %984 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %977, float 0.000000e+00)  ; FMad(a,b,c)
  %985 = fadd fast float %984, %979
  %986 = fmul fast float %980, -7.500000e-01
  %987 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %981, float %986)  ; FMad(a,b,c)
  %988 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %977, float 0.000000e+00)  ; FMad(a,b,c)
  %989 = fadd fast float %988, %979
  %990 = call float @dx.op.binary.f32(i32 35, float %983, float -1.000000e+00)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 35, float %985, float -1.000000e+00)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 35, float %987, float -1.000000e+00)  ; FMax(a,b)
  %993 = call float @dx.op.binary.f32(i32 35, float %989, float -1.000000e+00)  ; FMax(a,b)
  %994 = call float @dx.op.binary.f32(i32 36, float %990, float 1.000000e+00)  ; FMin(a,b)
  %995 = call float @dx.op.binary.f32(i32 36, float %991, float 1.000000e+00)  ; FMin(a,b)
  %996 = call float @dx.op.binary.f32(i32 36, float %992, float 1.000000e+00)  ; FMin(a,b)
  %997 = call float @dx.op.binary.f32(i32 36, float %993, float 1.000000e+00)  ; FMin(a,b)
  %998 = fcmp fast olt float %994, 0x3FEFFF8020000000
  br i1 %998, label %999, label %1114, !dx.controlflow.hints !69

; <label>:999                                     ; preds = %967
  %1000 = extractvalue %dx.types.CBufRet.f32 %962, 3
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.CBufRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.CBufRet.f32 %1001, 2
  %1005 = extractvalue %dx.types.CBufRet.f32 %1001, 3
  %1006 = fsub fast float %1002, %994
  %1007 = fsub fast float %1003, %995
  %1008 = fsub fast float %1004, %996
  %1009 = fsub fast float %1005, %997
  %1010 = fmul fast float %1006, %1000
  %1011 = fmul fast float %1007, %1000
  %1012 = fmul fast float %1008, %1000
  %1013 = fmul fast float %1009, %1000
  %1014 = fadd fast float %1010, %994
  %1015 = fadd fast float %1011, %995
  %1016 = fsub fast float -0.000000e+00, %1015
  %1017 = fadd fast float %1012, %996
  %1018 = fadd fast float %1013, %997
  %1019 = fmul fast float %1014, %1014
  %1020 = fsub fast float %1015, %1019
  %1021 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1020)  ; FMax(a,b)
  %1022 = fdiv fast float 1.000000e+00, %1021
  %1023 = fmul fast float %1015, %1014
  %1024 = fsub fast float %1017, %1023
  %1025 = fsub fast float %974, %1014
  %1026 = fmul fast float %974, %974
  %1027 = fsub fast float %1026, %1015
  %1028 = fmul fast float %1025, %1022
  %1029 = fmul fast float %1028, %1024
  %1030 = fsub fast float %1027, %1029
  %1031 = fmul fast float %1015, %1015
  %1032 = fsub fast float %1018, %1031
  %1033 = fmul fast float %1024, %1024
  %1034 = fmul fast float %1033, %1022
  %1035 = fsub fast float %1032, %1034
  %1036 = fdiv fast float %1030, %1035
  %1037 = fmul fast float %1024, %1036
  %1038 = fsub fast float %1025, %1037
  %1039 = fmul fast float %1038, %1022
  %1040 = fmul fast float %1039, %1014
  %1041 = fsub fast float 1.000000e+00, %1040
  %1042 = fmul fast float %1015, %1036
  %1043 = fsub fast float %1041, %1042
  %1044 = fmul fast float %1039, %1039
  %1045 = fmul fast float %1036, 4.000000e+00
  %1046 = fmul fast float %1045, %1043
  %1047 = fsub fast float %1044, %1046
  %1048 = call float @dx.op.unary.f32(i32 24, float %1047)  ; Sqrt(value)
  %1049 = fcmp fast oge float %1039, 0.000000e+00
  %1050 = fsub fast float -0.000000e+00, %1048
  %1051 = select i1 %1049, float %1050, float %1048
  %1052 = fsub fast float %1051, %1039
  %1053 = fdiv fast float %1052, %1036
  %1054 = fdiv fast float %1043, %1052
  %1055 = fmul fast float %1053, 5.000000e-01
  %1056 = fmul fast float %1054, 2.000000e+00
  %1057 = select i1 %1049, float %1055, float %1056
  %1058 = select i1 %1049, float %1056, float %1055
  %1059 = call float @dx.op.binary.f32(i32 35, float %1057, float %1058)  ; FMax(a,b)
  %1060 = call float @dx.op.binary.f32(i32 36, float %1057, float %1058)  ; FMin(a,b)
  %1061 = fcmp fast ogt float %974, %1060
  br i1 %1061, label %1062, label %1072

; <label>:1062                                    ; preds = %999
  %1063 = fsub fast float %974, %1060
  %1064 = fsub fast float %1059, %1060
  %1065 = fmul fast float %1063, %1064
  %1066 = fmul fast float %1059, %974
  %1067 = fadd fast float %1059, %974
  %1068 = fmul fast float %1067, %1014
  %1069 = fadd fast float %1066, %1015
  %1070 = fsub fast float %1069, %1068
  %1071 = fdiv fast float %1070, %1065
  br label %1072

; <label>:1072                                    ; preds = %1062, %999
  %1073 = phi float [ %1071, %1062 ], [ 0.000000e+00, %999 ]
  %1074 = fcmp fast ogt float %974, %1059
  %1075 = fsub fast float %974, %1059
  br i1 %1074, label %1076, label %1086

; <label>:1076                                    ; preds = %1072
  %1077 = fsub fast float %1059, %1060
  %1078 = fmul fast float %1077, %1075
  %1079 = fmul fast float %1060, %974
  %1080 = fadd fast float %1060, %974
  %1081 = fmul fast float %1080, %1014
  %1082 = fsub fast float %1016, %1079
  %1083 = fadd fast float %1082, %1081
  %1084 = fdiv fast float %1083, %1078
  %1085 = fadd fast float %1084, %1073
  br label %1086

; <label>:1086                                    ; preds = %1076, %1072
  %1087 = phi float [ %1085, %1076 ], [ %1073, %1072 ]
  %1088 = fsub fast float %974, %1060
  %1089 = fmul fast float %1088, %1075
  %1090 = fmul fast float %1060, %1059
  %1091 = fadd fast float %1060, %1059
  %1092 = fmul fast float %1091, %1014
  %1093 = fadd fast float %1090, %1015
  %1094 = fsub fast float %1093, %1092
  %1095 = fdiv fast float %1094, %1089
  %1096 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1097 = fcmp fast oeq float %806, 0.000000e+00
  %1098 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %1099 = fcmp fast oeq float %1098, 0.000000e+00
  %1100 = or i1 %1097, %1099
  %1101 = fmul fast float %1098, 2.000000e+00
  %1102 = fadd fast float %963, %964
  %1103 = fdiv fast float %1102, %1101
  %1104 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  %1105 = fmul fast float %1104, 2.000000e+00
  %1106 = fsub fast float 3.000000e+00, %1105
  %1107 = fmul fast float %1104, %1104
  %1108 = fmul fast float %1107, %1106
  %1109 = select i1 %1100, float 1.000000e+00, float %1108
  %1110 = fmul fast float %1095, %806
  %1111 = fadd fast float %1096, %1110
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = fmul fast float %1109, %1112
  br label %1114

; <label>:1114                                    ; preds = %1086, %967
  %1115 = phi float [ %1113, %1086 ], [ 0.000000e+00, %967 ]
  %1116 = fsub fast float 1.000000e+00, %1115
  %1117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %915, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.i32 %1119, 2
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1127, label %1122

; <label>:1122                                    ; preds = %1114
  %1123 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1124 = fadd fast float %1118, -1.000000e+00
  %1125 = fmul fast float %1123, %1124
  %1126 = fadd fast float %1125, 1.000000e+00
  br label %1127

; <label>:1127                                    ; preds = %1122, %1114
  %1128 = phi float [ %1126, %1122 ], [ %1116, %1114 ]
  %1129 = call float @dx.op.binary.f32(i32 35, float %1118, float %1128)  ; FMax(a,b)
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1129, float %1129, float %1129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = select i1 %106, float %1130, float %1129
  %1132 = select i1 %106, float 1.000000e+00, float %1129
  %1133 = fmul fast float %1131, %905
  %1134 = fmul fast float %1131, %906
  %1135 = fmul fast float %1132, %907
  br label %1136

; <label>:1136                                    ; preds = %1127, %911, %896, %891
  %1137 = phi float [ %893, %891 ], [ %905, %896 ], [ %1133, %1127 ], [ %905, %911 ]
  %1138 = phi float [ %894, %891 ], [ %906, %896 ], [ %1134, %1127 ], [ %906, %911 ]
  %1139 = phi float [ %895, %891 ], [ %907, %896 ], [ %1135, %1127 ], [ %907, %911 ]
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1143 = fmul fast float %1141, %48
  %1144 = fmul fast float %1142, %49
  %1145 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1146 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1147 = select i1 %680, i32 2, i32 0
  %1148 = or i32 %1147, 1
  %1149 = uitofp i32 %1148 to float
  %1150 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1145, float %1146, float %1149, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1150, 2
  %1154 = extractvalue %dx.types.ResRet.f32 %1150, 3
  %1155 = add nuw nsw i32 %1147, 2
  %1156 = uitofp i32 %1155 to float
  %1157 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1145, float %1146, float %1156, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1157, 2
  %1161 = extractvalue %dx.types.ResRet.f32 %1157, 3
  %1162 = call float @dx.op.binary.f32(i32 35, float %1152, float %1153)  ; FMax(a,b)
  %1163 = call float @dx.op.binary.f32(i32 35, float %1151, float %1162)  ; FMax(a,b)
  %1164 = call float @dx.op.binary.f32(i32 35, float %1163, float %1154)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 36, float %1159, float %1160)  ; FMin(a,b)
  %1166 = call float @dx.op.binary.f32(i32 36, float %1158, float %1165)  ; FMin(a,b)
  %1167 = call float @dx.op.binary.f32(i32 36, float %1166, float %1161)  ; FMin(a,b)
  %1168 = fmul fast float %1164, 2.550000e+02
  %1169 = fadd fast float %1168, 0x3F70101020000000
  %1170 = fptoui float %1169 to i32
  %1171 = fmul fast float %1167, 2.550000e+02
  %1172 = fadd fast float %1171, 0x3F70101020000000
  %1173 = fptoui float %1172 to i32
  %1174 = icmp ult i32 %1170, %1173
  br i1 %1174, label %1175, label %1218

; <label>:1175                                    ; preds = %1136
  %1176 = fcmp fast ogt float %42, 9.843750e-01
  %1177 = fadd fast float %892, -4.000000e+00
  %1178 = select i1 %1176, float -4.000000e+00, float %1177
  %1179 = call float @dx.op.binary.f32(i32 35, float %1178, float 0.000000e+00)  ; FMax(a,b)
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = fadd fast float %1181, %1179
  %1183 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1184 = fmul fast float %1182, %1183
  %1185 = call float @dx.op.unary.f32(i32 23, float %1184)  ; Log(value)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1187 = fmul fast float %1186, %1185
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 2
  %1190 = fmul fast float %1187, %1189
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = uitofp i32 %1170 to float
  %1193 = uitofp i32 %1173 to float
  %1194 = fadd fast float %1192, 5.000000e-01
  %1195 = fadd fast float %1193, 5.000000e-01
  %1196 = fmul fast float %1189, %1194
  %1197 = fmul fast float %1189, %1195
  %1198 = fadd fast float %1196, 0x3F0FFB4800000000
  %1199 = fadd fast float %1197, 0xBF0FFB4800000000
  %1200 = call float @dx.op.binary.f32(i32 35, float %1191, float %1198)  ; FMax(a,b)
  %1201 = call float @dx.op.binary.f32(i32 36, float %1200, float %1199)  ; FMin(a,b)
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1206 = select i1 %680, float %1205, float 0.000000e+00
  %1207 = fmul fast float %1203, %1201
  %1208 = fadd fast float %1206, %1207
  %1209 = fadd fast float %1206, %1204
  %1210 = fsub fast float %1203, %1204
  %1211 = fadd fast float %1210, %1206
  %1212 = call float @dx.op.binary.f32(i32 35, float %1208, float %1209)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 36, float %1212, float %1211)  ; FMin(a,b)
  %1214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1145, float %1146, float %1213, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  br label %1218

; <label>:1218                                    ; preds = %1175, %1136
  %1219 = phi float [ %1215, %1175 ], [ 1.000000e+00, %1136 ]
  %1220 = phi float [ %1216, %1175 ], [ 1.000000e+00, %1136 ]
  %1221 = phi float [ %1217, %1175 ], [ 1.000000e+00, %1136 ]
  %1222 = call float @dx.op.dot3.f32(i32 55, float %1219, float %1220, float %1221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1223 = select i1 %106, float %1222, float %1219
  %1224 = select i1 %106, float %1222, float %1220
  %1225 = fmul fast float %1223, %1137
  %1226 = fmul fast float %1224, %1138
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  br i1 %106, label %1229, label %1232

; <label>:1229                                    ; preds = %1218
  %1230 = fadd fast float %1225, %1226
  %1231 = fmul fast float %1228, %1230
  br label %1242

; <label>:1232                                    ; preds = %1218
  %1233 = fmul fast float %1221, %1139
  %1234 = fmul fast float %1228, %1225
  %1235 = fmul fast float %1228, %1226
  %1236 = fmul fast float %1233, %1228
  %1237 = call float @dx.op.binary.f32(i32 35, float %1235, float %1236)  ; FMax(a,b)
  %1238 = call float @dx.op.binary.f32(i32 35, float %1234, float %1237)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 35, float %1238, float 0.000000e+00)  ; FMax(a,b)
  %1240 = fcmp fast ugt float %1239, 0x3F10000000000000
  br i1 %1240, label %1242, label %1241

; <label>:1241                                    ; preds = %1232
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1242

; <label>:1242                                    ; preds = %1241, %1232, %1229
  %1243 = phi float [ %1231, %1229 ], [ %1234, %1241 ], [ %1234, %1232 ]
  %1244 = phi float [ 0.000000e+00, %1229 ], [ %1235, %1241 ], [ %1235, %1232 ]
  %1245 = phi float [ 0.000000e+00, %1229 ], [ %1236, %1241 ], [ %1236, %1232 ]
  %1246 = fadd fast float %543, 0x3FE3C6EF40000000
  %1247 = call float @dx.op.unary.f32(i32 22, float %1246)  ; Frc(value)
  %1248 = call float @dx.op.unary.f32(i32 23, float %1243)  ; Log(value)
  %1249 = fadd fast float %1248, -7.000000e+00
  %1250 = call float @dx.op.unary.f32(i32 21, float %1249)  ; Exp(value)
  %1251 = fmul fast float %1247, 2.000000e+00
  %1252 = fadd fast float %1251, -1.000000e+00
  %1253 = fmul fast float %1250, %1252
  %1254 = fcmp fast ogt float %1243, 0.000000e+00
  %1255 = select i1 %1254, float %1253, float 0.000000e+00
  %1256 = fadd fast float %1255, %1243
  %1257 = fadd fast float %543, 0x3FF3C6EF40000000
  %1258 = call float @dx.op.unary.f32(i32 22, float %1257)  ; Frc(value)
  %1259 = call float @dx.op.unary.f32(i32 23, float %1244)  ; Log(value)
  %1260 = fadd fast float %1259, -7.000000e+00
  %1261 = call float @dx.op.unary.f32(i32 21, float %1260)  ; Exp(value)
  %1262 = fmul fast float %1258, 2.000000e+00
  %1263 = fadd fast float %1262, -1.000000e+00
  %1264 = fmul fast float %1261, %1263
  %1265 = fcmp fast ogt float %1244, 0.000000e+00
  %1266 = select i1 %1265, float %1264, float 0.000000e+00
  %1267 = fadd fast float %1266, %1244
  %1268 = fadd fast float %543, 0x3FFDAA66E0000000
  %1269 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1270 = call float @dx.op.unary.f32(i32 23, float %1245)  ; Log(value)
  %1271 = fadd fast float %1270, -6.000000e+00
  %1272 = call float @dx.op.unary.f32(i32 21, float %1271)  ; Exp(value)
  %1273 = fmul fast float %1269, 2.000000e+00
  %1274 = fadd fast float %1273, -1.000000e+00
  %1275 = fmul fast float %1272, %1274
  %1276 = fcmp fast ogt float %1245, 0.000000e+00
  %1277 = select i1 %1276, float %1275, float 0.000000e+00
  %1278 = fadd fast float %1277, %1245
  %1279 = select i1 %106, float %1244, float %1267
  %1280 = select i1 %106, float %1245, float %1278
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1281 = call float @dx.op.binary.f32(i32 36, float %1256, float 3.225500e+04)  ; FMin(a,b)
  %1282 = call float @dx.op.binary.f32(i32 36, float %1279, float 3.225500e+04)  ; FMin(a,b)
  %1283 = call float @dx.op.binary.f32(i32 36, float %1280, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1281)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1282)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1283)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

