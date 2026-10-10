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
; shader hash: 3c4e8783f0ed9413c59fbb2b172598cc
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
  %602 = add i32 %22, 48
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = lshr i32 %604, 22
  %606 = shl nuw nsw i32 %605, 5
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = fmul fast float %607, %599
  %609 = select i1 %105, float %608, float %599
  %610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %616 = fmul fast float %609, %575
  %617 = fmul fast float %600, %576
  %618 = fmul fast float %601, %577
  %619 = call float @dx.op.dot3.f32(i32 55, float %616, float %617, float %618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = select i1 %105, float 0.000000e+00, float %616
  %621 = select i1 %105, float %619, float %617
  %622 = select i1 %105, float 0.000000e+00, float %618
  %623 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = lshr i32 %624, 18
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F4C00EBA0000000
  %628 = call float @dx.op.unary.f32(i32 21, float %627)  ; Exp(value)
  %629 = fadd fast float %628, -1.000000e+00
  %630 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %631 = extractvalue %dx.types.Dimensions %630, 0
  %632 = sitofp i32 %631 to float
  %633 = extractvalue %dx.types.Dimensions %630, 1
  %634 = sitofp i32 %633 to float
  %635 = fcmp fast oge float %203, %632
  %636 = fcmp fast oge float %204, %634
  %637 = or i1 %635, %636
  %638 = select i1 %637, float 0x4197782600000000, float %629
  %639 = icmp eq i32 %121, 3
  %640 = fcmp fast ogt float %43, %638
  %641 = and i1 %229, %640
  %642 = or i1 %639, %641
  %643 = icmp eq i32 %121, 2
  %644 = fcmp fast ole float %43, %638
  %645 = and i1 %643, %644
  %646 = or i1 %645, %642
  %647 = fmul fast float %495, %36
  %648 = fmul fast float %647, %609
  %649 = fmul fast float %648, %611
  %650 = fmul fast float %649, %615
  %651 = fmul fast float %496, %36
  %652 = fmul fast float %651, %600
  %653 = fmul fast float %652, %612
  %654 = fmul fast float %653, %615
  %655 = fmul fast float %497, %36
  %656 = fmul fast float %655, %601
  %657 = fmul fast float %656, %613
  %658 = fmul fast float %657, %615
  %659 = fadd fast float %650, %620
  %660 = fadd fast float %621, %654
  %661 = fadd fast float %658, %622
  %662 = fmul fast float %659, %574
  %663 = fmul fast float %660, %574
  %664 = fmul fast float %661, %574
  %665 = and i32 %125, 1048576
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %758, label %667, !dx.controlflow.hints !65

; <label>:667                                     ; preds = %573
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %670 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %671 = fmul fast float %669, %47
  %672 = fmul fast float %670, %48
  %673 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %675 = select i1 %646, i32 2, i32 0
  %676 = or i32 %675, 1
  %677 = uitofp i32 %676 to float
  %678 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %673, float %674, float %677, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = extractvalue %dx.types.ResRet.f32 %678, 1
  %681 = extractvalue %dx.types.ResRet.f32 %678, 2
  %682 = extractvalue %dx.types.ResRet.f32 %678, 3
  %683 = add nuw nsw i32 %675, 2
  %684 = uitofp i32 %683 to float
  %685 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %673, float %674, float %684, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = extractvalue %dx.types.ResRet.f32 %685, 1
  %688 = extractvalue %dx.types.ResRet.f32 %685, 2
  %689 = extractvalue %dx.types.ResRet.f32 %685, 3
  %690 = call float @dx.op.binary.f32(i32 35, float %680, float %681)  ; FMax(a,b)
  %691 = call float @dx.op.binary.f32(i32 35, float %679, float %690)  ; FMax(a,b)
  %692 = call float @dx.op.binary.f32(i32 35, float %691, float %682)  ; FMax(a,b)
  %693 = call float @dx.op.binary.f32(i32 36, float %687, float %688)  ; FMin(a,b)
  %694 = call float @dx.op.binary.f32(i32 36, float %686, float %693)  ; FMin(a,b)
  %695 = call float @dx.op.binary.f32(i32 36, float %694, float %689)  ; FMin(a,b)
  %696 = fmul fast float %692, 2.550000e+02
  %697 = fadd fast float %696, 0x3F70101020000000
  %698 = fptoui float %697 to i32
  %699 = fmul fast float %695, 2.550000e+02
  %700 = fadd fast float %699, 0x3F70101020000000
  %701 = fptoui float %700 to i32
  %702 = icmp ult i32 %698, %701
  br i1 %702, label %703, label %751

; <label>:703                                     ; preds = %667
  %704 = fcmp fast ogt float %42, 9.843750e-01
  %705 = fadd fast float %43, -4.000000e+00
  %706 = select i1 %704, float -4.000000e+00, float %705
  %707 = call float @dx.op.binary.f32(i32 35, float %706, float 0.000000e+00)  ; FMax(a,b)
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = fadd fast float %709, %707
  %711 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %712 = fmul fast float %710, %711
  %713 = call float @dx.op.unary.f32(i32 23, float %712)  ; Log(value)
  %714 = extractvalue %dx.types.CBufRet.f32 %708, 3
  %715 = fmul fast float %714, %713
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %718 = fmul fast float %715, %717
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %720 = uitofp i32 %698 to float
  %721 = uitofp i32 %701 to float
  %722 = fadd fast float %720, 5.000000e-01
  %723 = fadd fast float %721, 5.000000e-01
  %724 = fmul fast float %717, %722
  %725 = fmul fast float %717, %723
  %726 = fadd fast float %724, 0x3F0FFB4800000000
  %727 = fadd fast float %725, 0xBF0FFB4800000000
  %728 = call float @dx.op.binary.f32(i32 35, float %719, float %726)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 36, float %728, float %727)  ; FMin(a,b)
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %734 = select i1 %646, float %733, float 0.000000e+00
  %735 = fmul fast float %731, %729
  %736 = fadd fast float %734, %735
  %737 = fadd fast float %734, %732
  %738 = fsub fast float %731, %732
  %739 = fadd fast float %738, %734
  %740 = call float @dx.op.binary.f32(i32 35, float %736, float %737)  ; FMax(a,b)
  %741 = call float @dx.op.binary.f32(i32 36, float %740, float %739)  ; FMin(a,b)
  %742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %673, float %674, float %741, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %748 = fmul fast float %747, %743
  %749 = fmul fast float %747, %744
  %750 = fmul fast float %747, %745
  br label %751

; <label>:751                                     ; preds = %703, %667
  %752 = phi float [ %748, %703 ], [ 1.000000e+00, %667 ]
  %753 = phi float [ %749, %703 ], [ 1.000000e+00, %667 ]
  %754 = phi float [ %750, %703 ], [ 1.000000e+00, %667 ]
  %755 = fmul fast float %752, %662
  %756 = fmul fast float %753, %663
  %757 = fmul fast float %754, %664
  br label %758

; <label>:758                                     ; preds = %751, %573
  %759 = phi float [ %755, %751 ], [ %662, %573 ]
  %760 = phi float [ %756, %751 ], [ %663, %573 ]
  %761 = phi float [ %757, %751 ], [ %664, %573 ]
  %762 = and i32 %125, 2097152
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %768, label %764, !dx.controlflow.hints !66

; <label>:764                                     ; preds = %758
  %765 = add i32 %122, 192
  %766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  br label %771

; <label>:768                                     ; preds = %758
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 3
  br label %771

; <label>:771                                     ; preds = %768, %764
  %772 = phi float [ %767, %764 ], [ %770, %768 ]
  br i1 %641, label %773, label %857

; <label>:773                                     ; preds = %771
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %777 = fmul fast float %775, %47
  %778 = fmul fast float %776, %48
  %779 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  %780 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %779, float %780, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = extractvalue %dx.types.ResRet.f32 %781, 3
  %786 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %779, float %780, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = extractvalue %dx.types.ResRet.f32 %786, 3
  %791 = call float @dx.op.binary.f32(i32 35, float %783, float %784)  ; FMax(a,b)
  %792 = call float @dx.op.binary.f32(i32 35, float %782, float %791)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 35, float %792, float %785)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %788, float %789)  ; FMin(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float %787, float %794)  ; FMin(a,b)
  %796 = call float @dx.op.binary.f32(i32 36, float %795, float %790)  ; FMin(a,b)
  %797 = fmul fast float %793, 2.550000e+02
  %798 = fadd fast float %797, 0x3F70101020000000
  %799 = fptoui float %798 to i32
  %800 = fmul fast float %796, 2.550000e+02
  %801 = fadd fast float %800, 0x3F70101020000000
  %802 = fptoui float %801 to i32
  %803 = icmp ult i32 %799, %802
  br i1 %803, label %804, label %846

; <label>:804                                     ; preds = %773
  %805 = fcmp fast ogt float %42, 9.843750e-01
  %806 = fadd fast float %43, -4.000000e+00
  %807 = select i1 %805, float -4.000000e+00, float %806
  %808 = call float @dx.op.binary.f32(i32 35, float %807, float 0.000000e+00)  ; FMax(a,b)
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = fadd fast float %810, %808
  %812 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %813 = fmul fast float %811, %812
  %814 = call float @dx.op.unary.f32(i32 23, float %813)  ; Log(value)
  %815 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %816 = fmul fast float %815, %814
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %819 = fmul fast float %816, %818
  %820 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %821 = uitofp i32 %799 to float
  %822 = uitofp i32 %802 to float
  %823 = fadd fast float %821, 5.000000e-01
  %824 = fadd fast float %822, 5.000000e-01
  %825 = fmul fast float %818, %823
  %826 = fmul fast float %818, %824
  %827 = fadd fast float %825, 0x3F0FFB4800000000
  %828 = fadd fast float %826, 0xBF0FFB4800000000
  %829 = call float @dx.op.binary.f32(i32 35, float %820, float %827)  ; FMax(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %829, float %828)  ; FMin(a,b)
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %833 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %834 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %835 = fmul fast float %832, %830
  %836 = fadd fast float %834, %835
  %837 = fadd fast float %834, %833
  %838 = fsub fast float %832, %833
  %839 = fadd fast float %838, %834
  %840 = call float @dx.op.binary.f32(i32 35, float %836, float %837)  ; FMax(a,b)
  %841 = call float @dx.op.binary.f32(i32 36, float %840, float %839)  ; FMin(a,b)
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %779, float %780, float %841, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  br label %846

; <label>:846                                     ; preds = %804, %773
  %847 = phi float [ %843, %804 ], [ 1.000000e+00, %773 ]
  %848 = phi float [ %844, %804 ], [ 1.000000e+00, %773 ]
  %849 = phi float [ %845, %804 ], [ 1.000000e+00, %773 ]
  %850 = call float @dx.op.dot3.f32(i32 55, float %847, float %848, float %849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = select i1 %105, float %850, float %847
  %852 = select i1 %105, float %850, float %848
  %853 = select i1 %105, float 1.000000e+00, float %849
  %854 = fmul fast float %851, %759
  %855 = fmul fast float %852, %760
  %856 = fmul fast float %853, %761
  br label %857

; <label>:857                                     ; preds = %846, %771
  %858 = phi float [ %638, %846 ], [ %43, %771 ]
  %859 = phi float [ %854, %846 ], [ %759, %771 ]
  %860 = phi float [ %855, %846 ], [ %760, %771 ]
  %861 = phi float [ %856, %846 ], [ %761, %771 ]
  br i1 %646, label %1102, label %862

; <label>:862                                     ; preds = %857
  %863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = extractvalue %dx.types.ResRet.f32 %863, 2
  %867 = call float @dx.op.dot3.f32(i32 55, float %864, float %865, float %866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %868 = select i1 %105, float %867, float %864
  %869 = select i1 %105, float %867, float %865
  %870 = select i1 %105, float 1.000000e+00, float %866
  %871 = fmul fast float %868, %859
  %872 = fmul fast float %869, %860
  %873 = fmul fast float %870, %861
  %874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.i32 %874, 0
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %1102, label %877, !dx.controlflow.hints !67

; <label>:877                                     ; preds = %862
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %881 = fmul fast float %879, %47
  %882 = fmul fast float %880, %48
  %883 = fmul fast float %881, 2.000000e+00
  %884 = fmul fast float %882, 2.000000e+00
  %885 = fsub fast float 1.000000e+00, %883
  %886 = fsub fast float 1.000000e+00, %884
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %890 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %891 = fmul fast float %885, %888
  %892 = fmul fast float %885, %889
  %893 = fmul fast float %885, %890
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = fmul fast float %886, %895
  %899 = fmul fast float %886, %896
  %900 = fmul fast float %886, %897
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %904 = extractvalue %dx.types.CBufRet.f32 %901, 2
  %905 = fadd fast float %898, %902
  %906 = fadd fast float %905, %891
  %907 = fadd fast float %899, %903
  %908 = fadd fast float %907, %892
  %909 = fadd fast float %900, %904
  %910 = fadd fast float %909, %893
  %911 = fmul fast float %906, %858
  %912 = fmul fast float %908, %858
  %913 = fmul fast float %910, %858
  %914 = fmul fast float %911, %911
  %915 = fmul fast float %912, %912
  %916 = fadd fast float %914, %915
  %917 = fmul fast float %913, %913
  %918 = fadd fast float %916, %917
  %919 = call float @dx.op.unary.f32(i32 24, float %918)  ; Sqrt(value)
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %922 = fsub fast float %919, %921
  %923 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %924 = fmul fast float %922, %923
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = fadd fast float %925, -5.000000e-01
  %927 = fmul fast float %926, 2.000000e+00
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %930 = call float @dx.op.binary.f32(i32 36, float %929, float %927)  ; FMin(a,b)
  %931 = fsub fast float -0.000000e+00, %929
  %932 = fcmp fast ogt float %930, %931
  br i1 %932, label %933, label %1102, !dx.controlflow.hints !68

; <label>:933                                     ; preds = %877
  %934 = fmul fast float %930, 5.000000e-01
  %935 = fadd fast float %934, 5.000000e-01
  %936 = call float @dx.op.unary.f32(i32 22, float %935)  ; Frc(value)
  %937 = call float @dx.op.unary.f32(i32 27, float %936)  ; Round_ni(value)
  %938 = call float @dx.op.unary.f32(i32 22, float %936)  ; Frc(value)
  %939 = fmul fast float %938, 2.000000e+00
  %940 = fadd fast float %939, -1.000000e+00
  %941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %881, float %882, float %937, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = extractvalue %dx.types.ResRet.f32 %941, 2
  %945 = extractvalue %dx.types.ResRet.f32 %941, 3
  %946 = fadd fast float %942, -5.000000e-01
  %947 = fadd fast float %944, -5.000000e-01
  %948 = fmul fast float %946, 0xBFD5555560000000
  %949 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %947, float %948)  ; FMad(a,b,c)
  %950 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %943, float 0.000000e+00)  ; FMad(a,b,c)
  %951 = fadd fast float %950, %945
  %952 = fmul fast float %946, -7.500000e-01
  %953 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %947, float %952)  ; FMad(a,b,c)
  %954 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %943, float 0.000000e+00)  ; FMad(a,b,c)
  %955 = fadd fast float %954, %945
  %956 = call float @dx.op.binary.f32(i32 35, float %949, float -1.000000e+00)  ; FMax(a,b)
  %957 = call float @dx.op.binary.f32(i32 35, float %951, float -1.000000e+00)  ; FMax(a,b)
  %958 = call float @dx.op.binary.f32(i32 35, float %953, float -1.000000e+00)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 35, float %955, float -1.000000e+00)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 36, float %956, float 1.000000e+00)  ; FMin(a,b)
  %961 = call float @dx.op.binary.f32(i32 36, float %957, float 1.000000e+00)  ; FMin(a,b)
  %962 = call float @dx.op.binary.f32(i32 36, float %958, float 1.000000e+00)  ; FMin(a,b)
  %963 = call float @dx.op.binary.f32(i32 36, float %959, float 1.000000e+00)  ; FMin(a,b)
  %964 = fcmp fast olt float %960, 0x3FEFFF8020000000
  br i1 %964, label %965, label %1080, !dx.controlflow.hints !69

; <label>:965                                     ; preds = %933
  %966 = extractvalue %dx.types.CBufRet.f32 %928, 3
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %970 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %971 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %972 = fsub fast float %968, %960
  %973 = fsub fast float %969, %961
  %974 = fsub fast float %970, %962
  %975 = fsub fast float %971, %963
  %976 = fmul fast float %972, %966
  %977 = fmul fast float %973, %966
  %978 = fmul fast float %974, %966
  %979 = fmul fast float %975, %966
  %980 = fadd fast float %976, %960
  %981 = fadd fast float %977, %961
  %982 = fsub fast float -0.000000e+00, %981
  %983 = fadd fast float %978, %962
  %984 = fadd fast float %979, %963
  %985 = fmul fast float %980, %980
  %986 = fsub fast float %981, %985
  %987 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %986)  ; FMax(a,b)
  %988 = fdiv fast float 1.000000e+00, %987
  %989 = fmul fast float %981, %980
  %990 = fsub fast float %983, %989
  %991 = fsub fast float %940, %980
  %992 = fmul fast float %940, %940
  %993 = fsub fast float %992, %981
  %994 = fmul fast float %991, %988
  %995 = fmul fast float %994, %990
  %996 = fsub fast float %993, %995
  %997 = fmul fast float %981, %981
  %998 = fsub fast float %984, %997
  %999 = fmul fast float %990, %990
  %1000 = fmul fast float %999, %988
  %1001 = fsub fast float %998, %1000
  %1002 = fdiv fast float %996, %1001
  %1003 = fmul fast float %990, %1002
  %1004 = fsub fast float %991, %1003
  %1005 = fmul fast float %1004, %988
  %1006 = fmul fast float %1005, %980
  %1007 = fsub fast float 1.000000e+00, %1006
  %1008 = fmul fast float %981, %1002
  %1009 = fsub fast float %1007, %1008
  %1010 = fmul fast float %1005, %1005
  %1011 = fmul fast float %1002, 4.000000e+00
  %1012 = fmul fast float %1011, %1009
  %1013 = fsub fast float %1010, %1012
  %1014 = call float @dx.op.unary.f32(i32 24, float %1013)  ; Sqrt(value)
  %1015 = fcmp fast oge float %1005, 0.000000e+00
  %1016 = fsub fast float -0.000000e+00, %1014
  %1017 = select i1 %1015, float %1016, float %1014
  %1018 = fsub fast float %1017, %1005
  %1019 = fdiv fast float %1018, %1002
  %1020 = fdiv fast float %1009, %1018
  %1021 = fmul fast float %1019, 5.000000e-01
  %1022 = fmul fast float %1020, 2.000000e+00
  %1023 = select i1 %1015, float %1021, float %1022
  %1024 = select i1 %1015, float %1022, float %1021
  %1025 = call float @dx.op.binary.f32(i32 35, float %1023, float %1024)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 36, float %1023, float %1024)  ; FMin(a,b)
  %1027 = fcmp fast ogt float %940, %1026
  br i1 %1027, label %1028, label %1038

; <label>:1028                                    ; preds = %965
  %1029 = fsub fast float %940, %1026
  %1030 = fsub fast float %1025, %1026
  %1031 = fmul fast float %1029, %1030
  %1032 = fmul fast float %1025, %940
  %1033 = fadd fast float %1025, %940
  %1034 = fmul fast float %1033, %980
  %1035 = fadd fast float %1032, %981
  %1036 = fsub fast float %1035, %1034
  %1037 = fdiv fast float %1036, %1031
  br label %1038

; <label>:1038                                    ; preds = %1028, %965
  %1039 = phi float [ %1037, %1028 ], [ 0.000000e+00, %965 ]
  %1040 = fcmp fast ogt float %940, %1025
  %1041 = fsub fast float %940, %1025
  br i1 %1040, label %1042, label %1052

; <label>:1042                                    ; preds = %1038
  %1043 = fsub fast float %1025, %1026
  %1044 = fmul fast float %1043, %1041
  %1045 = fmul fast float %1026, %940
  %1046 = fadd fast float %1026, %940
  %1047 = fmul fast float %1046, %980
  %1048 = fsub fast float %982, %1045
  %1049 = fadd fast float %1048, %1047
  %1050 = fdiv fast float %1049, %1044
  %1051 = fadd fast float %1050, %1039
  br label %1052

; <label>:1052                                    ; preds = %1042, %1038
  %1053 = phi float [ %1051, %1042 ], [ %1039, %1038 ]
  %1054 = fsub fast float %940, %1026
  %1055 = fmul fast float %1054, %1041
  %1056 = fmul fast float %1026, %1025
  %1057 = fadd fast float %1026, %1025
  %1058 = fmul fast float %1057, %980
  %1059 = fadd fast float %1056, %981
  %1060 = fsub fast float %1059, %1058
  %1061 = fdiv fast float %1060, %1055
  %1062 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1063 = fcmp fast oeq float %772, 0.000000e+00
  %1064 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %1065 = fcmp fast oeq float %1064, 0.000000e+00
  %1066 = or i1 %1063, %1065
  %1067 = fmul fast float %1064, 2.000000e+00
  %1068 = fadd fast float %929, %930
  %1069 = fdiv fast float %1068, %1067
  %1070 = call float @dx.op.unary.f32(i32 7, float %1069)  ; Saturate(value)
  %1071 = fmul fast float %1070, 2.000000e+00
  %1072 = fsub fast float 3.000000e+00, %1071
  %1073 = fmul fast float %1070, %1070
  %1074 = fmul fast float %1073, %1072
  %1075 = select i1 %1066, float 1.000000e+00, float %1074
  %1076 = fmul fast float %1061, %772
  %1077 = fadd fast float %1062, %1076
  %1078 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  %1079 = fmul fast float %1075, %1078
  br label %1080

; <label>:1080                                    ; preds = %1052, %933
  %1081 = phi float [ %1079, %1052 ], [ 0.000000e+00, %933 ]
  %1082 = fsub fast float 1.000000e+00, %1081
  %1083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.i32 %1085, 2
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1093, label %1088

; <label>:1088                                    ; preds = %1080
  %1089 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1090 = fadd fast float %1084, -1.000000e+00
  %1091 = fmul fast float %1089, %1090
  %1092 = fadd fast float %1091, 1.000000e+00
  br label %1093

; <label>:1093                                    ; preds = %1088, %1080
  %1094 = phi float [ %1092, %1088 ], [ %1082, %1080 ]
  %1095 = call float @dx.op.binary.f32(i32 35, float %1084, float %1094)  ; FMax(a,b)
  %1096 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1095, float %1095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = select i1 %105, float %1096, float %1095
  %1098 = select i1 %105, float 1.000000e+00, float %1095
  %1099 = fmul fast float %1097, %871
  %1100 = fmul fast float %1097, %872
  %1101 = fmul fast float %1098, %873
  br label %1102

; <label>:1102                                    ; preds = %1093, %877, %862, %857
  %1103 = phi float [ %859, %857 ], [ %871, %862 ], [ %1099, %1093 ], [ %871, %877 ]
  %1104 = phi float [ %860, %857 ], [ %872, %862 ], [ %1100, %1093 ], [ %872, %877 ]
  %1105 = phi float [ %861, %857 ], [ %873, %862 ], [ %1101, %1093 ], [ %873, %877 ]
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 2
  %1108 = extractvalue %dx.types.CBufRet.f32 %1106, 3
  %1109 = fmul fast float %1107, %47
  %1110 = fmul fast float %1108, %48
  %1111 = call float @dx.op.unary.f32(i32 7, float %1109)  ; Saturate(value)
  %1112 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1113 = select i1 %646, i32 2, i32 0
  %1114 = or i32 %1113, 1
  %1115 = uitofp i32 %1114 to float
  %1116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1111, float %1112, float %1115, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = extractvalue %dx.types.ResRet.f32 %1116, 3
  %1121 = add nuw nsw i32 %1113, 2
  %1122 = uitofp i32 %1121 to float
  %1123 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1111, float %1112, float %1122, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.ResRet.f32 %1123, 3
  %1128 = call float @dx.op.binary.f32(i32 35, float %1118, float %1119)  ; FMax(a,b)
  %1129 = call float @dx.op.binary.f32(i32 35, float %1117, float %1128)  ; FMax(a,b)
  %1130 = call float @dx.op.binary.f32(i32 35, float %1129, float %1120)  ; FMax(a,b)
  %1131 = call float @dx.op.binary.f32(i32 36, float %1125, float %1126)  ; FMin(a,b)
  %1132 = call float @dx.op.binary.f32(i32 36, float %1124, float %1131)  ; FMin(a,b)
  %1133 = call float @dx.op.binary.f32(i32 36, float %1132, float %1127)  ; FMin(a,b)
  %1134 = fmul fast float %1130, 2.550000e+02
  %1135 = fadd fast float %1134, 0x3F70101020000000
  %1136 = fptoui float %1135 to i32
  %1137 = fmul fast float %1133, 2.550000e+02
  %1138 = fadd fast float %1137, 0x3F70101020000000
  %1139 = fptoui float %1138 to i32
  %1140 = icmp ult i32 %1136, %1139
  br i1 %1140, label %1141, label %1184

; <label>:1141                                    ; preds = %1102
  %1142 = fcmp fast ogt float %42, 9.843750e-01
  %1143 = fadd fast float %858, -4.000000e+00
  %1144 = select i1 %1142, float -4.000000e+00, float %1143
  %1145 = call float @dx.op.binary.f32(i32 35, float %1144, float 0.000000e+00)  ; FMax(a,b)
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 0
  %1148 = fadd fast float %1147, %1145
  %1149 = extractvalue %dx.types.CBufRet.f32 %1146, 2
  %1150 = fmul fast float %1148, %1149
  %1151 = call float @dx.op.unary.f32(i32 23, float %1150)  ; Log(value)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1146, 3
  %1153 = fmul fast float %1152, %1151
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1156 = fmul fast float %1153, %1155
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = uitofp i32 %1136 to float
  %1159 = uitofp i32 %1139 to float
  %1160 = fadd fast float %1158, 5.000000e-01
  %1161 = fadd fast float %1159, 5.000000e-01
  %1162 = fmul fast float %1155, %1160
  %1163 = fmul fast float %1155, %1161
  %1164 = fadd fast float %1162, 0x3F0FFB4800000000
  %1165 = fadd fast float %1163, 0xBF0FFB4800000000
  %1166 = call float @dx.op.binary.f32(i32 35, float %1157, float %1164)  ; FMax(a,b)
  %1167 = call float @dx.op.binary.f32(i32 36, float %1166, float %1165)  ; FMin(a,b)
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 1
  %1170 = extractvalue %dx.types.CBufRet.f32 %1168, 2
  %1171 = extractvalue %dx.types.CBufRet.f32 %1168, 0
  %1172 = select i1 %646, float %1171, float 0.000000e+00
  %1173 = fmul fast float %1169, %1167
  %1174 = fadd fast float %1172, %1173
  %1175 = fadd fast float %1172, %1170
  %1176 = fsub fast float %1169, %1170
  %1177 = fadd fast float %1176, %1172
  %1178 = call float @dx.op.binary.f32(i32 35, float %1174, float %1175)  ; FMax(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1178, float %1177)  ; FMin(a,b)
  %1180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1111, float %1112, float %1179, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1180, 2
  br label %1184

; <label>:1184                                    ; preds = %1141, %1102
  %1185 = phi float [ %1181, %1141 ], [ 1.000000e+00, %1102 ]
  %1186 = phi float [ %1182, %1141 ], [ 1.000000e+00, %1102 ]
  %1187 = phi float [ %1183, %1141 ], [ 1.000000e+00, %1102 ]
  %1188 = call float @dx.op.dot3.f32(i32 55, float %1185, float %1186, float %1187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1189 = select i1 %105, float %1188, float %1185
  %1190 = select i1 %105, float %1188, float %1186
  %1191 = fmul fast float %1189, %1103
  %1192 = fmul fast float %1190, %1104
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  br i1 %105, label %1195, label %1198

; <label>:1195                                    ; preds = %1184
  %1196 = fadd fast float %1191, %1192
  %1197 = fmul fast float %1194, %1196
  br label %1208

; <label>:1198                                    ; preds = %1184
  %1199 = fmul fast float %1187, %1105
  %1200 = fmul fast float %1194, %1191
  %1201 = fmul fast float %1194, %1192
  %1202 = fmul fast float %1199, %1194
  %1203 = call float @dx.op.binary.f32(i32 35, float %1201, float %1202)  ; FMax(a,b)
  %1204 = call float @dx.op.binary.f32(i32 35, float %1200, float %1203)  ; FMax(a,b)
  %1205 = call float @dx.op.binary.f32(i32 35, float %1204, float 0.000000e+00)  ; FMax(a,b)
  %1206 = fcmp fast ugt float %1205, 0x3F10000000000000
  br i1 %1206, label %1208, label %1207

; <label>:1207                                    ; preds = %1198
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1208

; <label>:1208                                    ; preds = %1207, %1198, %1195
  %1209 = phi float [ %1197, %1195 ], [ %1200, %1207 ], [ %1200, %1198 ]
  %1210 = phi float [ 0.000000e+00, %1195 ], [ %1201, %1207 ], [ %1201, %1198 ]
  %1211 = phi float [ 0.000000e+00, %1195 ], [ %1202, %1207 ], [ %1202, %1198 ]
  %1212 = fadd fast float %514, 0x3FE3C6EF40000000
  %1213 = call float @dx.op.unary.f32(i32 22, float %1212)  ; Frc(value)
  %1214 = call float @dx.op.unary.f32(i32 23, float %1209)  ; Log(value)
  %1215 = fadd fast float %1214, -7.000000e+00
  %1216 = call float @dx.op.unary.f32(i32 21, float %1215)  ; Exp(value)
  %1217 = fmul fast float %1213, 2.000000e+00
  %1218 = fadd fast float %1217, -1.000000e+00
  %1219 = fmul fast float %1216, %1218
  %1220 = fcmp fast ogt float %1209, 0.000000e+00
  %1221 = select i1 %1220, float %1219, float 0.000000e+00
  %1222 = fadd fast float %1221, %1209
  %1223 = fadd fast float %514, 0x3FF3C6EF40000000
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = call float @dx.op.unary.f32(i32 23, float %1210)  ; Log(value)
  %1226 = fadd fast float %1225, -7.000000e+00
  %1227 = call float @dx.op.unary.f32(i32 21, float %1226)  ; Exp(value)
  %1228 = fmul fast float %1224, 2.000000e+00
  %1229 = fadd fast float %1228, -1.000000e+00
  %1230 = fmul fast float %1227, %1229
  %1231 = fcmp fast ogt float %1210, 0.000000e+00
  %1232 = select i1 %1231, float %1230, float 0.000000e+00
  %1233 = fadd fast float %1232, %1210
  %1234 = fadd fast float %514, 0x3FFDAA66E0000000
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = call float @dx.op.unary.f32(i32 23, float %1211)  ; Log(value)
  %1237 = fadd fast float %1236, -6.000000e+00
  %1238 = call float @dx.op.unary.f32(i32 21, float %1237)  ; Exp(value)
  %1239 = fmul fast float %1235, 2.000000e+00
  %1240 = fadd fast float %1239, -1.000000e+00
  %1241 = fmul fast float %1238, %1240
  %1242 = fcmp fast ogt float %1211, 0.000000e+00
  %1243 = select i1 %1242, float %1241, float 0.000000e+00
  %1244 = fadd fast float %1243, %1211
  %1245 = select i1 %105, float %1210, float %1233
  %1246 = select i1 %105, float %1211, float %1244
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1247 = call float @dx.op.binary.f32(i32 36, float %1222, float 3.225500e+04)  ; FMin(a,b)
  %1248 = call float @dx.op.binary.f32(i32 36, float %1245, float 3.225500e+04)  ; FMin(a,b)
  %1249 = call float @dx.op.binary.f32(i32 36, float %1246, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1247)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1248)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1249)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

