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
; shader hash: 794b0dfd92b6902f1e490e5284a3bfe0
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
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24 }
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
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = fmul fast float %41, %35
  %43 = fmul fast float %41, %36
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
  %77 = fmul fast float %72, %38
  %78 = fmul fast float %74, %38
  %79 = fmul fast float %76, %38
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
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %89, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = and i32 %107, 114688
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %109, float %104, float 0.000000e+00
  %111 = select i1 %109, float %105, float 0.000000e+00
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %110, float %111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fmul fast float %113, 2.550000e+02
  %115 = fptoui float %114 to i32
  %116 = select i1 %109, i32 %115, i32 0
  %117 = mul i32 %21, 208
  %118 = add i32 %117, 188
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %157 = phi float [ %32, %129 ], [ %136, %142 ], [ %155, %150 ], [ %136, %148 ]
  %158 = phi float [ %33, %129 ], [ %147, %142 ], [ %137, %150 ], [ %137, %148 ]
  %159 = and i32 %120, 16
  %160 = icmp ne i32 %159, 0
  %161 = select i1 %160, float 1.000000e+00, float %34
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %182, label %163, !dx.controlflow.hints !60

; <label>:163                                     ; preds = %156
  %164 = add i32 %117, 64
  %165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fadd fast float %166, 1.000000e+00
  %168 = fmul fast float %167, %34
  %169 = fsub fast float %168, %166
  %170 = fsub fast float %167, %169
  %171 = call float @dx.op.unary.f32(i32 7, float %170)  ; Saturate(value)
  %172 = fsub fast float 1.000000e+00, %168
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %174 = fsub fast float %171, %173
  %175 = fsub fast float %161, %173
  %176 = fdiv fast float %175, %174
  %177 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  %178 = fmul fast float %177, 2.000000e+00
  %179 = fsub fast float 3.000000e+00, %178
  %180 = fmul fast float %177, %177
  %181 = fmul fast float %180, %179
  br label %182

; <label>:182                                     ; preds = %163, %156
  %183 = phi float [ %181, %163 ], [ %161, %156 ]
  %184 = fcmp fast ogt float %183, 0.000000e+00
  br i1 %184, label %186, label %185

; <label>:185                                     ; preds = %182
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %186

; <label>:186                                     ; preds = %185, %182
  %187 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %188 = fmul fast float %42, 5.000000e-01
  %189 = fmul fast float %43, 5.000000e-01
  %190 = fptosi float %188 to i32
  %191 = fptosi float %189 to i32
  %192 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %190, i32 %191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = lshr i32 %193, 18
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %195, 0x3F4C00EBA0000000
  %197 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %198 = fadd fast float %197, -1.000000e+00
  %199 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %200 = extractvalue %dx.types.Dimensions %199, 0
  %201 = sitofp i32 %200 to float
  %202 = extractvalue %dx.types.Dimensions %199, 1
  %203 = sitofp i32 %202 to float
  %204 = fcmp fast oge float %188, %201
  %205 = fcmp fast oge float %189, %203
  %206 = or i1 %204, %205
  %207 = select i1 %206, float 0x4197782600000000, float %198
  %208 = fsub fast float %207, %38
  %209 = fcmp fast ogt float %208, 0.000000e+00
  %210 = and i32 %116, -2
  %211 = icmp eq i32 %210, 2
  %212 = and i1 %211, %209
  %213 = xor i1 %209, true
  %214 = icmp eq i32 %116, 1
  %215 = and i1 %214, %213
  %216 = or i1 %212, %215
  %217 = and i32 %120, 262144
  %218 = icmp ne i32 %217, 0
  %219 = and i1 %218, %216
  %220 = xor i1 %216, true
  %221 = and i32 %120, 131072
  %222 = icmp ne i32 %221, 0
  %223 = and i1 %222, %220
  %224 = or i1 %219, %223
  br i1 %224, label %225, label %226

; <label>:225                                     ; preds = %186
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %226

; <label>:226                                     ; preds = %225, %186
  %227 = and i32 %120, 32
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %467, label %229, !dx.controlflow.hints !61

; <label>:229                                     ; preds = %226
  %230 = add i32 %117, 80
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = extractvalue %dx.types.ResRet.f32 %231, 2
  %235 = extractvalue %dx.types.ResRet.f32 %231, 3
  %236 = add i32 %117, 96
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = extractvalue %dx.types.ResRet.f32 %237, 2
  %241 = add i32 %117, 112
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = add i32 %117, 128
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = extractvalue %dx.types.ResRet.f32 %248, 3
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 4096
  %256 = icmp ne i32 %255, 0
  %257 = fcmp fast une float %240, 0.000000e+00
  %258 = and i32 %254, 64
  %259 = icmp ne i32 %258, 0
  %260 = and i32 %254, 128
  %261 = icmp eq i32 %260, 0
  %262 = and i32 %254, 2048
  %263 = icmp eq i32 %262, 0
  %264 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %265 = extractvalue %dx.types.Dimensions %264, 0
  %266 = sitofp i32 %265 to float
  %267 = extractvalue %dx.types.Dimensions %264, 1
  %268 = sitofp i32 %267 to float
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %272 = fmul fast float %270, %42
  %273 = fmul fast float %271, %43
  %274 = fmul fast float %272, %266
  %275 = fmul fast float %273, %268
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %278 = fsub fast float -0.000000e+00, %277
  %279 = fptoui float %278 to i32
  %280 = fptoui float %274 to i32
  %281 = fptoui float %275 to i32
  %282 = and i32 %279, 31
  %283 = lshr i32 %280, %282
  %284 = lshr i32 %281, %282
  %285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %279, i32 %283, i32 %284, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = fcmp fast ogt float %286, -1.000000e+00
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = select i1 %287, float %289, float 1.000000e+00
  %291 = fadd fast float %286, 1.000000e+00
  %292 = fmul fast float %290, %291
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %295 = fcmp fast oge float %293, %294
  %296 = select i1 %295, float 0x4197782600000000, float %293
  br i1 %263, label %367, label %297, !dx.controlflow.hints !62

; <label>:297                                     ; preds = %229
  %298 = fmul fast float %47, %270
  %299 = fmul fast float %49, %271
  %300 = fsub fast float 1.000000e+00, %298
  %301 = fsub fast float 1.000000e+00, %299
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = fmul fast float %300, %303
  %307 = fmul fast float %300, %304
  %308 = fmul fast float %300, %305
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fmul fast float %301, %310
  %314 = fmul fast float %301, %311
  %315 = fmul fast float %301, %312
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %320 = fadd fast float %313, %317
  %321 = fadd fast float %320, %306
  %322 = fadd fast float %314, %318
  %323 = fadd fast float %322, %307
  %324 = fadd fast float %315, %319
  %325 = fadd fast float %324, %308
  %326 = fmul fast float %321, %296
  %327 = fmul fast float %323, %296
  %328 = fmul fast float %325, %296
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fadd fast float %326, %330
  %334 = fadd fast float %327, %331
  %335 = fadd fast float %328, %332
  %336 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = fsub fast float 1.000000e+00, %336
  %338 = fcmp fast olt float %337, %239
  %339 = fcmp fast ogt float %337, %238
  %340 = or i1 %338, %339
  %341 = select i1 %340, float 0.000000e+00, float %337
  %342 = fsub fast float %238, %239
  %343 = fsub fast float %341, %239
  %344 = fdiv fast float %343, %342
  %345 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %346 = fmul fast float %345, 2.000000e+00
  %347 = fsub fast float 3.000000e+00, %346
  %348 = fmul fast float %345, %345
  %349 = fmul fast float %348, %347
  %350 = fsub fast float %246, %252
  %351 = fmul fast float %349, %350
  %352 = fadd fast float %351, %252
  %353 = fmul fast float %243, %22
  %354 = fmul fast float %244, %23
  %355 = fmul fast float %245, %24
  %356 = fsub fast float %353, %249
  %357 = fsub fast float %354, %250
  %358 = fsub fast float %355, %251
  %359 = fmul fast float %349, %356
  %360 = fmul fast float %349, %357
  %361 = fmul fast float %349, %358
  %362 = fadd fast float %359, %249
  %363 = fadd fast float %360, %250
  %364 = fadd fast float %361, %251
  %365 = fmul fast float %232, %232
  %366 = fmul fast float %365, %341
  br label %458

; <label>:367                                     ; preds = %229
  %368 = and i32 %254, 256
  %369 = icmp eq i32 %368, 0
  %370 = fsub fast float %296, %38
  br i1 %369, label %419, label %371

; <label>:371                                     ; preds = %367
  %372 = fadd fast float %238, %38
  %373 = fcmp fast olt float %296, %38
  %374 = fcmp fast ogt float %296, %372
  %375 = or i1 %373, %374
  %376 = select i1 %375, float 0.000000e+00, float %370
  %377 = call float @dx.op.unary.f32(i32 83, float %296)  ; DerivCoarseX(value)
  %378 = call float @dx.op.unary.f32(i32 84, float %296)  ; DerivCoarseY(value)
  %379 = fmul fast float %377, %377
  %380 = fmul fast float %378, %378
  %381 = fadd fast float %380, %379
  %382 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %383 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %384 = fmul fast float %383, %382
  %385 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %386 = fmul fast float %385, %239
  %387 = fdiv fast float %370, %386
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %389 = fmul fast float %388, 2.000000e+00
  %390 = fsub fast float 3.000000e+00, %389
  %391 = fmul fast float %388, %388
  %392 = fmul fast float %391, %390
  %393 = fsub fast float %296, %372
  %394 = fadd fast float %393, %386
  %395 = fdiv fast float %394, %386
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, 2.000000e+00
  %398 = fsub fast float 3.000000e+00, %397
  %399 = fmul fast float %396, %396
  %400 = fmul fast float %399, %398
  %401 = fsub fast float %392, %400
  %402 = fsub fast float %246, %252
  %403 = fmul fast float %401, %402
  %404 = fadd fast float %403, %252
  %405 = fmul fast float %243, %22
  %406 = fmul fast float %244, %23
  %407 = fmul fast float %245, %24
  %408 = fsub fast float %405, %249
  %409 = fsub fast float %406, %250
  %410 = fsub fast float %407, %251
  %411 = fmul fast float %401, %408
  %412 = fmul fast float %401, %409
  %413 = fmul fast float %401, %410
  %414 = fadd fast float %411, %249
  %415 = fadd fast float %412, %250
  %416 = fadd fast float %413, %251
  %417 = fmul fast float %376, %232
  %418 = call float @dx.op.unary.f32(i32 6, float %417)  ; FAbs(value)
  br label %458

; <label>:419                                     ; preds = %367
  br i1 %257, label %420, label %431

; <label>:420                                     ; preds = %419
  %421 = select i1 %259, float 5.000000e+01, float 1.000000e+00
  %422 = fmul fast float %421, %232
  %423 = fmul fast float %32, 2.000000e+00
  %424 = fmul fast float %33, 2.000000e+00
  %425 = fadd fast float %423, -1.000000e+00
  %426 = fadd fast float %424, -1.000000e+00
  %427 = call float @dx.op.dot2.f32(i32 54, float %425, float %426, float %425, float %426)  ; Dot2(ax,ay,bx,by)
  %428 = fmul fast float %427, %240
  %429 = fsub fast float %370, %428
  %430 = fmul fast float %422, %429
  br label %458

; <label>:431                                     ; preds = %419
  br i1 %261, label %451, label %432

; <label>:432                                     ; preds = %431
  %433 = select i1 %259, float 0x3F947AE140000000, float 1.000000e+00
  %434 = fdiv fast float 1.000000e+00, %433
  %435 = fmul fast float %433, %233
  %436 = fmul fast float %433, %234
  %437 = fmul fast float %434, %235
  %438 = call float @dx.op.unary.f32(i32 6, float %370)  ; FAbs(value)
  %439 = fcmp fast olt float %438, %435
  br i1 %439, label %440, label %444, !dx.controlflow.hints !63

; <label>:440                                     ; preds = %432
  %441 = fmul fast float %434, %232
  %442 = fmul fast float %441, %438
  %443 = call float @dx.op.unary.f32(i32 6, float %442)  ; FAbs(value)
  br label %458

; <label>:444                                     ; preds = %432
  %445 = fcmp fast ogt float %438, %436
  br i1 %445, label %446, label %458

; <label>:446                                     ; preds = %444
  %447 = fsub fast float %438, %436
  %448 = fmul fast float %437, %447
  %449 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %450 = fsub fast float 1.000000e+00, %449
  br label %458

; <label>:451                                     ; preds = %431
  %452 = select i1 %259, float 5.000000e+01, float 1.000000e+00
  %453 = fmul fast float %452, %232
  %454 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %455 = select i1 %256, float %454, float 0x47EFFFFFE0000000
  %456 = call float @dx.op.binary.f32(i32 36, float %370, float %455)  ; FMin(a,b)
  %457 = fmul fast float %453, %456
  br label %458

; <label>:458                                     ; preds = %451, %446, %444, %440, %420, %371, %297
  %459 = phi float [ %366, %297 ], [ %418, %371 ], [ %430, %420 ], [ %457, %451 ], [ %443, %440 ], [ %450, %446 ], [ %438, %444 ]
  %460 = phi float [ %362, %297 ], [ %414, %371 ], [ %22, %420 ], [ %22, %451 ], [ %22, %440 ], [ %22, %446 ], [ %22, %444 ]
  %461 = phi float [ %363, %297 ], [ %415, %371 ], [ %23, %420 ], [ %23, %451 ], [ %23, %440 ], [ %23, %446 ], [ %23, %444 ]
  %462 = phi float [ %364, %297 ], [ %416, %371 ], [ %24, %420 ], [ %24, %451 ], [ %24, %440 ], [ %24, %446 ], [ %24, %444 ]
  %463 = phi float [ %352, %297 ], [ %404, %371 ], [ 1.000000e+00, %420 ], [ 1.000000e+00, %451 ], [ 1.000000e+00, %440 ], [ 1.000000e+00, %446 ], [ 1.000000e+00, %444 ]
  %464 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %465 = fmul fast float %463, %187
  %466 = fmul fast float %465, %464
  br label %467

; <label>:467                                     ; preds = %458, %226
  %468 = phi float [ %466, %458 ], [ %187, %226 ]
  %469 = phi float [ %460, %458 ], [ %22, %226 ]
  %470 = phi float [ %461, %458 ], [ %23, %226 ]
  %471 = phi float [ %462, %458 ], [ %24, %226 ]
  %472 = fmul fast float %469, %25
  %473 = fmul fast float %470, %25
  %474 = fmul fast float %471, %25
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %477 = fptosi float %38 to i32
  %478 = sitofp i32 %477 to float
  %479 = fadd fast float %476, %478
  %480 = fmul fast float %479, 0x3FE3C6EF40000000
  %481 = frem fast float %42, 2.560000e+02
  %482 = frem fast float %43, 2.560000e+02
  %483 = fptoui float %481 to i32
  %484 = fptoui float %482 to i32
  %485 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %483, i32 %484, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = fadd fast float %486, %480
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = and i32 %120, 1
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %547, label %491, !dx.controlflow.hints !64

; <label>:491                                     ; preds = %467
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 2
  %494 = extractvalue %dx.types.ResRet.f32 %492, 3
  %495 = add i32 %117, 16
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = add i32 %117, 32
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = and i32 %120, 2
  %506 = icmp eq i32 %505, 0
  %507 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = call float @dx.op.unary.f32(i32 25, float %507)  ; Rsqrt(value)
  %509 = fmul fast float %508, %28
  %510 = fmul fast float %508, %29
  %511 = fmul fast float %508, %30
  %512 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.unary.f32(i32 25, float %512)  ; Rsqrt(value)
  %514 = fmul fast float %513, %77
  %515 = fmul fast float %513, %78
  %516 = fmul fast float %513, %79
  %517 = call float @dx.op.dot3.f32(i32 55, float %514, float %515, float %516, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = fmul fast float %517, %517
  %519 = fmul fast float %518, %493
  %520 = fadd fast float %519, %494
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  br i1 %506, label %522, label %532, !dx.controlflow.hints !65

; <label>:522                                     ; preds = %491
  %523 = extractvalue %dx.types.ResRet.f32 %492, 1
  %524 = extractvalue %dx.types.ResRet.f32 %492, 0
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 3
  %527 = fmul fast float %526, %512
  %528 = fsub fast float %524, %527
  %529 = fmul fast float %528, %523
  %530 = call float @dx.op.unary.f32(i32 7, float %529)  ; Saturate(value)
  %531 = fmul fast float %530, %521
  br label %532

; <label>:532                                     ; preds = %522, %491
  %533 = phi float [ %531, %522 ], [ %521, %491 ]
  %534 = fsub fast float %497, %502
  %535 = fsub fast float %498, %503
  %536 = fsub fast float %499, %504
  %537 = fmul fast float %533, %534
  %538 = fmul fast float %533, %535
  %539 = fmul fast float %533, %536
  %540 = fadd fast float %537, %502
  %541 = fadd fast float %538, %503
  %542 = fadd fast float %539, %504
  %543 = fmul fast float %540, %472
  %544 = fmul fast float %541, %473
  %545 = fmul fast float %542, %474
  %546 = fmul fast float %533, %468
  br label %547

; <label>:547                                     ; preds = %532, %467
  %548 = phi float [ %546, %532 ], [ %468, %467 ]
  %549 = phi float [ %543, %532 ], [ %472, %467 ]
  %550 = phi float [ %544, %532 ], [ %473, %467 ]
  %551 = phi float [ %545, %532 ], [ %474, %467 ]
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = add i32 %553, 0
  %555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %555, %dx.types.Handle %39, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = shl i32 %561, 4
  %563 = and i32 %562, 32752
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %561, 7
  %566 = and i32 %565, 32752
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %561, 22
  %569 = shl nuw nsw i32 %568, 5
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = fmul fast float %564, %557
  %572 = fmul fast float %567, %558
  %573 = fmul fast float %570, %559
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = lshr i32 %575, 22
  %577 = shl nuw nsw i32 %576, 5
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = fmul fast float %578, %571
  %580 = select i1 %100, float %579, float %571
  %581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = extractvalue %dx.types.ResRet.f32 %581, 1
  %584 = extractvalue %dx.types.ResRet.f32 %581, 2
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %587 = fmul fast float %580, %549
  %588 = fmul fast float %572, %550
  %589 = fmul fast float %573, %551
  %590 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %591 = select i1 %100, float 0.000000e+00, float %587
  %592 = select i1 %100, float %590, float %588
  %593 = select i1 %100, float 0.000000e+00, float %589
  %594 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %190, i32 %191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = lshr i32 %595, 18
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F4C00EBA0000000
  %599 = call float @dx.op.unary.f32(i32 21, float %598)  ; Exp(value)
  %600 = fadd fast float %599, -1.000000e+00
  %601 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %602 = extractvalue %dx.types.Dimensions %601, 0
  %603 = sitofp i32 %602 to float
  %604 = extractvalue %dx.types.Dimensions %601, 1
  %605 = sitofp i32 %604 to float
  %606 = fcmp fast oge float %188, %603
  %607 = fcmp fast oge float %189, %605
  %608 = or i1 %606, %607
  %609 = select i1 %608, float 0x4197782600000000, float %600
  %610 = icmp eq i32 %116, 3
  %611 = fcmp fast ogt float %38, %609
  %612 = and i1 %214, %611
  %613 = or i1 %610, %612
  %614 = icmp eq i32 %116, 2
  %615 = fcmp fast ole float %38, %609
  %616 = and i1 %614, %615
  %617 = or i1 %616, %613
  %618 = fmul fast float %469, %31
  %619 = fmul fast float %618, %580
  %620 = fmul fast float %619, %582
  %621 = fmul fast float %620, %586
  %622 = fmul fast float %470, %31
  %623 = fmul fast float %622, %572
  %624 = fmul fast float %623, %583
  %625 = fmul fast float %624, %586
  %626 = fmul fast float %471, %31
  %627 = fmul fast float %626, %573
  %628 = fmul fast float %627, %584
  %629 = fmul fast float %628, %586
  %630 = fadd fast float %621, %591
  %631 = fadd fast float %592, %625
  %632 = fadd fast float %629, %593
  %633 = fmul fast float %630, %548
  %634 = fmul fast float %631, %548
  %635 = fmul fast float %632, %548
  %636 = and i32 %120, 1048576
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %729, label %638, !dx.controlflow.hints !66

; <label>:638                                     ; preds = %547
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %642 = fmul fast float %640, %42
  %643 = fmul fast float %641, %43
  %644 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %645 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %646 = select i1 %617, i32 2, i32 0
  %647 = or i32 %646, 1
  %648 = uitofp i32 %647 to float
  %649 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %644, float %645, float %648, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = extractvalue %dx.types.ResRet.f32 %649, 3
  %654 = add nuw nsw i32 %646, 2
  %655 = uitofp i32 %654 to float
  %656 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %644, float %645, float %655, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 2
  %660 = extractvalue %dx.types.ResRet.f32 %656, 3
  %661 = call float @dx.op.binary.f32(i32 35, float %651, float %652)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 35, float %650, float %661)  ; FMax(a,b)
  %663 = call float @dx.op.binary.f32(i32 35, float %662, float %653)  ; FMax(a,b)
  %664 = call float @dx.op.binary.f32(i32 36, float %658, float %659)  ; FMin(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %657, float %664)  ; FMin(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float %665, float %660)  ; FMin(a,b)
  %667 = fmul fast float %663, 2.550000e+02
  %668 = fadd fast float %667, 0x3F70101020000000
  %669 = fptoui float %668 to i32
  %670 = fmul fast float %666, 2.550000e+02
  %671 = fadd fast float %670, 0x3F70101020000000
  %672 = fptoui float %671 to i32
  %673 = icmp ult i32 %669, %672
  br i1 %673, label %674, label %722

; <label>:674                                     ; preds = %638
  %675 = fcmp fast ogt float %37, 9.843750e-01
  %676 = fadd fast float %38, -4.000000e+00
  %677 = select i1 %675, float -4.000000e+00, float %676
  %678 = call float @dx.op.binary.f32(i32 35, float %677, float 0.000000e+00)  ; FMax(a,b)
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = fadd fast float %680, %678
  %682 = extractvalue %dx.types.CBufRet.f32 %679, 2
  %683 = fmul fast float %681, %682
  %684 = call float @dx.op.unary.f32(i32 23, float %683)  ; Log(value)
  %685 = extractvalue %dx.types.CBufRet.f32 %679, 3
  %686 = fmul fast float %685, %684
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %689 = fmul fast float %686, %688
  %690 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %691 = uitofp i32 %669 to float
  %692 = uitofp i32 %672 to float
  %693 = fadd fast float %691, 5.000000e-01
  %694 = fadd fast float %692, 5.000000e-01
  %695 = fmul fast float %688, %693
  %696 = fmul fast float %688, %694
  %697 = fadd fast float %695, 0x3F0FFB4800000000
  %698 = fadd fast float %696, 0xBF0FFB4800000000
  %699 = call float @dx.op.binary.f32(i32 35, float %690, float %697)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float %699, float %698)  ; FMin(a,b)
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 1
  %703 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %704 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %705 = select i1 %617, float %704, float 0.000000e+00
  %706 = fmul fast float %702, %700
  %707 = fadd fast float %705, %706
  %708 = fadd fast float %705, %703
  %709 = fsub fast float %702, %703
  %710 = fadd fast float %709, %705
  %711 = call float @dx.op.binary.f32(i32 35, float %707, float %708)  ; FMax(a,b)
  %712 = call float @dx.op.binary.f32(i32 36, float %711, float %710)  ; FMin(a,b)
  %713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %644, float %645, float %712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 1
  %719 = fmul fast float %718, %714
  %720 = fmul fast float %718, %715
  %721 = fmul fast float %718, %716
  br label %722

; <label>:722                                     ; preds = %674, %638
  %723 = phi float [ %719, %674 ], [ 1.000000e+00, %638 ]
  %724 = phi float [ %720, %674 ], [ 1.000000e+00, %638 ]
  %725 = phi float [ %721, %674 ], [ 1.000000e+00, %638 ]
  %726 = fmul fast float %723, %633
  %727 = fmul fast float %724, %634
  %728 = fmul fast float %725, %635
  br label %729

; <label>:729                                     ; preds = %722, %547
  %730 = phi float [ %726, %722 ], [ %633, %547 ]
  %731 = phi float [ %727, %722 ], [ %634, %547 ]
  %732 = phi float [ %728, %722 ], [ %635, %547 ]
  %733 = and i32 %120, 2097152
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %739, label %735, !dx.controlflow.hints !67

; <label>:735                                     ; preds = %729
  %736 = add i32 %117, 192
  %737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  br label %742

; <label>:739                                     ; preds = %729
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 3
  br label %742

; <label>:742                                     ; preds = %739, %735
  %743 = phi float [ %738, %735 ], [ %741, %739 ]
  br i1 %612, label %744, label %828

; <label>:744                                     ; preds = %742
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %747 = extractvalue %dx.types.CBufRet.f32 %745, 3
  %748 = fmul fast float %746, %42
  %749 = fmul fast float %747, %43
  %750 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %751 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %752 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %750, float %751, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = extractvalue %dx.types.ResRet.f32 %752, 1
  %755 = extractvalue %dx.types.ResRet.f32 %752, 2
  %756 = extractvalue %dx.types.ResRet.f32 %752, 3
  %757 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %750, float %751, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = extractvalue %dx.types.ResRet.f32 %757, 3
  %762 = call float @dx.op.binary.f32(i32 35, float %754, float %755)  ; FMax(a,b)
  %763 = call float @dx.op.binary.f32(i32 35, float %753, float %762)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 35, float %763, float %756)  ; FMax(a,b)
  %765 = call float @dx.op.binary.f32(i32 36, float %759, float %760)  ; FMin(a,b)
  %766 = call float @dx.op.binary.f32(i32 36, float %758, float %765)  ; FMin(a,b)
  %767 = call float @dx.op.binary.f32(i32 36, float %766, float %761)  ; FMin(a,b)
  %768 = fmul fast float %764, 2.550000e+02
  %769 = fadd fast float %768, 0x3F70101020000000
  %770 = fptoui float %769 to i32
  %771 = fmul fast float %767, 2.550000e+02
  %772 = fadd fast float %771, 0x3F70101020000000
  %773 = fptoui float %772 to i32
  %774 = icmp ult i32 %770, %773
  br i1 %774, label %775, label %817

; <label>:775                                     ; preds = %744
  %776 = fcmp fast ogt float %37, 9.843750e-01
  %777 = fadd fast float %38, -4.000000e+00
  %778 = select i1 %776, float -4.000000e+00, float %777
  %779 = call float @dx.op.binary.f32(i32 35, float %778, float 0.000000e+00)  ; FMax(a,b)
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = fadd fast float %781, %779
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %784 = fmul fast float %782, %783
  %785 = call float @dx.op.unary.f32(i32 23, float %784)  ; Log(value)
  %786 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %787 = fmul fast float %786, %785
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %790 = fmul fast float %787, %789
  %791 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %792 = uitofp i32 %770 to float
  %793 = uitofp i32 %773 to float
  %794 = fadd fast float %792, 5.000000e-01
  %795 = fadd fast float %793, 5.000000e-01
  %796 = fmul fast float %789, %794
  %797 = fmul fast float %789, %795
  %798 = fadd fast float %796, 0x3F0FFB4800000000
  %799 = fadd fast float %797, 0xBF0FFB4800000000
  %800 = call float @dx.op.binary.f32(i32 35, float %791, float %798)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %800, float %799)  ; FMin(a,b)
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %805 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %806 = fmul fast float %803, %801
  %807 = fadd fast float %805, %806
  %808 = fadd fast float %805, %804
  %809 = fsub fast float %803, %804
  %810 = fadd fast float %809, %805
  %811 = call float @dx.op.binary.f32(i32 35, float %807, float %808)  ; FMax(a,b)
  %812 = call float @dx.op.binary.f32(i32 36, float %811, float %810)  ; FMin(a,b)
  %813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %750, float %751, float %812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  br label %817

; <label>:817                                     ; preds = %775, %744
  %818 = phi float [ %814, %775 ], [ 1.000000e+00, %744 ]
  %819 = phi float [ %815, %775 ], [ 1.000000e+00, %744 ]
  %820 = phi float [ %816, %775 ], [ 1.000000e+00, %744 ]
  %821 = call float @dx.op.dot3.f32(i32 55, float %818, float %819, float %820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = select i1 %100, float %821, float %818
  %823 = select i1 %100, float %821, float %819
  %824 = select i1 %100, float 1.000000e+00, float %820
  %825 = fmul fast float %822, %730
  %826 = fmul fast float %823, %731
  %827 = fmul fast float %824, %732
  br label %828

; <label>:828                                     ; preds = %817, %742
  %829 = phi float [ %609, %817 ], [ %38, %742 ]
  %830 = phi float [ %825, %817 ], [ %730, %742 ]
  %831 = phi float [ %826, %817 ], [ %731, %742 ]
  %832 = phi float [ %827, %817 ], [ %732, %742 ]
  br i1 %617, label %1173, label %833

; <label>:833                                     ; preds = %828
  %834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %26, float %27, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = call float @dx.op.dot3.f32(i32 55, float %835, float %836, float %837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %839 = select i1 %100, float %838, float %835
  %840 = select i1 %100, float %838, float %836
  %841 = select i1 %100, float 1.000000e+00, float %837
  %842 = fmul fast float %839, %830
  %843 = fmul fast float %840, %831
  %844 = fmul fast float %841, %832
  %845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.i32 %845, 0
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %1173, label %848, !dx.controlflow.hints !68

; <label>:848                                     ; preds = %833
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %851 = extractvalue %dx.types.CBufRet.f32 %849, 3
  %852 = fmul fast float %850, %42
  %853 = fmul fast float %851, %43
  %854 = fmul fast float %852, 2.000000e+00
  %855 = fmul fast float %853, 2.000000e+00
  %856 = fsub fast float 1.000000e+00, %854
  %857 = fsub fast float 1.000000e+00, %855
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %861 = extractvalue %dx.types.CBufRet.f32 %858, 2
  %862 = fmul fast float %856, %859
  %863 = fmul fast float %856, %860
  %864 = fmul fast float %856, %861
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %869 = fmul fast float %857, %866
  %870 = fmul fast float %857, %867
  %871 = fmul fast float %857, %868
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %875 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %876 = fadd fast float %869, %873
  %877 = fadd fast float %876, %862
  %878 = fadd fast float %870, %874
  %879 = fadd fast float %878, %863
  %880 = fadd fast float %871, %875
  %881 = fadd fast float %880, %864
  %882 = fmul fast float %877, %829
  %883 = fmul fast float %879, %829
  %884 = fmul fast float %881, %829
  %885 = fmul fast float %882, %882
  %886 = fmul fast float %883, %883
  %887 = fadd fast float %885, %886
  %888 = fmul fast float %884, %884
  %889 = fadd fast float %887, %888
  %890 = call float @dx.op.unary.f32(i32 24, float %889)  ; Sqrt(value)
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = fsub fast float %890, %892
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = fmul fast float %893, %894
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = fadd fast float %896, -5.000000e-01
  %898 = fmul fast float %897, 2.000000e+00
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %901 = call float @dx.op.binary.f32(i32 36, float %900, float %898)  ; FMin(a,b)
  %902 = fsub fast float -0.000000e+00, %900
  %903 = fcmp fast ogt float %901, %902
  br i1 %903, label %904, label %1173, !dx.controlflow.hints !69

; <label>:904                                     ; preds = %848
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %907 = fcmp fast ogt float %906, 0.000000e+00
  br i1 %907, label %908, label %983, !dx.controlflow.hints !70

; <label>:908                                     ; preds = %904
  %909 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %910 = extractvalue %dx.types.Dimensions %909, 0
  %911 = sitofp i32 %910 to float
  %912 = extractvalue %dx.types.Dimensions %909, 1
  %913 = sitofp i32 %912 to float
  %914 = fmul fast float %852, %911
  %915 = fmul fast float %853, %913
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 1
  %918 = fsub fast float -0.000000e+00, %917
  %919 = fptoui float %918 to i32
  %920 = fptoui float %914 to i32
  %921 = fptoui float %915 to i32
  %922 = and i32 %919, 31
  %923 = lshr i32 %920, %922
  %924 = lshr i32 %921, %922
  %925 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %919, i32 %923, i32 %924, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = fcmp fast olt float %926, -1.000000e+00
  %928 = fcmp fast ogt float %926, -1.000000e+00
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 1
  %931 = select i1 %928, float %930, float 1.000000e+00
  %932 = fadd fast float %926, 1.000000e+00
  %933 = fmul fast float %931, %932
  %934 = call float @dx.op.unary.f32(i32 6, float %933)  ; FAbs(value)
  %935 = extractvalue %dx.types.CBufRet.f32 %929, 3
  %936 = fcmp fast oge float %934, %935
  %937 = select i1 %936, float 0x4197782600000000, float %934
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %942 = select i1 %927, float %939, float %859
  %943 = select i1 %927, float %940, float %860
  %944 = select i1 %927, float %941, float %861
  %945 = fmul fast float %942, %856
  %946 = fmul fast float %943, %856
  %947 = fmul fast float %944, %856
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %951 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %952 = select i1 %927, float %949, float %866
  %953 = select i1 %927, float %950, float %867
  %954 = select i1 %927, float %951, float %868
  %955 = fmul fast float %952, %857
  %956 = fmul fast float %953, %857
  %957 = fmul fast float %954, %857
  %958 = fadd fast float %955, %945
  %959 = fadd fast float %956, %946
  %960 = fadd fast float %957, %947
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %965 = select i1 %927, float %962, float %873
  %966 = select i1 %927, float %963, float %874
  %967 = select i1 %927, float %964, float %875
  %968 = fadd fast float %958, %965
  %969 = fadd fast float %959, %966
  %970 = fadd fast float %960, %967
  %971 = fmul fast float %968, %937
  %972 = fmul fast float %969, %937
  %973 = fmul fast float %970, %937
  %974 = fmul fast float %971, %971
  %975 = fmul fast float %972, %972
  %976 = fadd fast float %974, %975
  %977 = fmul fast float %973, %973
  %978 = fadd fast float %976, %977
  %979 = call float @dx.op.unary.f32(i32 24, float %978)  ; Sqrt(value)
  %980 = fsub fast float %979, %892
  %981 = fmul fast float %980, %894
  %982 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  br label %983

; <label>:983                                     ; preds = %908, %904
  %984 = phi float [ %982, %908 ], [ 1.000000e+00, %904 ]
  %985 = fmul fast float %901, 5.000000e-01
  %986 = fadd fast float %985, 5.000000e-01
  %987 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %988 = call float @dx.op.unary.f32(i32 27, float %987)  ; Round_ni(value)
  %989 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %990 = fmul fast float %989, 2.000000e+00
  %991 = fadd fast float %990, -1.000000e+00
  %992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %852, float %853, float %988, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = extractvalue %dx.types.ResRet.f32 %992, 3
  %997 = fadd fast float %993, -5.000000e-01
  %998 = fadd fast float %995, -5.000000e-01
  %999 = fmul fast float %997, 0xBFD5555560000000
  %1000 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %998, float %999)  ; FMad(a,b,c)
  %1001 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %994, float 0.000000e+00)  ; FMad(a,b,c)
  %1002 = fadd fast float %1001, %996
  %1003 = fmul fast float %997, -7.500000e-01
  %1004 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %998, float %1003)  ; FMad(a,b,c)
  %1005 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %994, float 0.000000e+00)  ; FMad(a,b,c)
  %1006 = fadd fast float %1005, %996
  %1007 = call float @dx.op.binary.f32(i32 35, float %1000, float -1.000000e+00)  ; FMax(a,b)
  %1008 = call float @dx.op.binary.f32(i32 35, float %1002, float -1.000000e+00)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 35, float %1004, float -1.000000e+00)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 35, float %1006, float -1.000000e+00)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 36, float %1007, float 1.000000e+00)  ; FMin(a,b)
  %1012 = call float @dx.op.binary.f32(i32 36, float %1008, float 1.000000e+00)  ; FMin(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %1009, float 1.000000e+00)  ; FMin(a,b)
  %1014 = call float @dx.op.binary.f32(i32 36, float %1010, float 1.000000e+00)  ; FMin(a,b)
  %1015 = fcmp fast olt float %1011, 0x3FEFFF8020000000
  br i1 %1015, label %1016, label %1131, !dx.controlflow.hints !71

; <label>:1016                                    ; preds = %983
  %1017 = extractvalue %dx.types.CBufRet.f32 %899, 3
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1023 = fsub fast float %1019, %1011
  %1024 = fsub fast float %1020, %1012
  %1025 = fsub fast float %1021, %1013
  %1026 = fsub fast float %1022, %1014
  %1027 = fmul fast float %1023, %1017
  %1028 = fmul fast float %1024, %1017
  %1029 = fmul fast float %1025, %1017
  %1030 = fmul fast float %1026, %1017
  %1031 = fadd fast float %1027, %1011
  %1032 = fadd fast float %1028, %1012
  %1033 = fsub fast float -0.000000e+00, %1032
  %1034 = fadd fast float %1029, %1013
  %1035 = fadd fast float %1030, %1014
  %1036 = fmul fast float %1031, %1031
  %1037 = fsub fast float %1032, %1036
  %1038 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1037)  ; FMax(a,b)
  %1039 = fdiv fast float 1.000000e+00, %1038
  %1040 = fmul fast float %1032, %1031
  %1041 = fsub fast float %1034, %1040
  %1042 = fsub fast float %991, %1031
  %1043 = fmul fast float %991, %991
  %1044 = fsub fast float %1043, %1032
  %1045 = fmul fast float %1042, %1039
  %1046 = fmul fast float %1045, %1041
  %1047 = fsub fast float %1044, %1046
  %1048 = fmul fast float %1032, %1032
  %1049 = fsub fast float %1035, %1048
  %1050 = fmul fast float %1041, %1041
  %1051 = fmul fast float %1050, %1039
  %1052 = fsub fast float %1049, %1051
  %1053 = fdiv fast float %1047, %1052
  %1054 = fmul fast float %1041, %1053
  %1055 = fsub fast float %1042, %1054
  %1056 = fmul fast float %1055, %1039
  %1057 = fmul fast float %1056, %1031
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1032, %1053
  %1060 = fsub fast float %1058, %1059
  %1061 = fmul fast float %1056, %1056
  %1062 = fmul fast float %1053, 4.000000e+00
  %1063 = fmul fast float %1062, %1060
  %1064 = fsub fast float %1061, %1063
  %1065 = call float @dx.op.unary.f32(i32 24, float %1064)  ; Sqrt(value)
  %1066 = fcmp fast oge float %1056, 0.000000e+00
  %1067 = fsub fast float -0.000000e+00, %1065
  %1068 = select i1 %1066, float %1067, float %1065
  %1069 = fsub fast float %1068, %1056
  %1070 = fdiv fast float %1069, %1053
  %1071 = fdiv fast float %1060, %1069
  %1072 = fmul fast float %1070, 5.000000e-01
  %1073 = fmul fast float %1071, 2.000000e+00
  %1074 = select i1 %1066, float %1072, float %1073
  %1075 = select i1 %1066, float %1073, float %1072
  %1076 = call float @dx.op.binary.f32(i32 35, float %1074, float %1075)  ; FMax(a,b)
  %1077 = call float @dx.op.binary.f32(i32 36, float %1074, float %1075)  ; FMin(a,b)
  %1078 = fcmp fast ogt float %991, %1077
  br i1 %1078, label %1079, label %1089

; <label>:1079                                    ; preds = %1016
  %1080 = fsub fast float %991, %1077
  %1081 = fsub fast float %1076, %1077
  %1082 = fmul fast float %1080, %1081
  %1083 = fmul fast float %1076, %991
  %1084 = fadd fast float %1076, %991
  %1085 = fmul fast float %1084, %1031
  %1086 = fadd fast float %1083, %1032
  %1087 = fsub fast float %1086, %1085
  %1088 = fdiv fast float %1087, %1082
  br label %1089

; <label>:1089                                    ; preds = %1079, %1016
  %1090 = phi float [ %1088, %1079 ], [ 0.000000e+00, %1016 ]
  %1091 = fcmp fast ogt float %991, %1076
  %1092 = fsub fast float %991, %1076
  br i1 %1091, label %1093, label %1103

; <label>:1093                                    ; preds = %1089
  %1094 = fsub fast float %1076, %1077
  %1095 = fmul fast float %1094, %1092
  %1096 = fmul fast float %1077, %991
  %1097 = fadd fast float %1077, %991
  %1098 = fmul fast float %1097, %1031
  %1099 = fsub fast float %1033, %1096
  %1100 = fadd fast float %1099, %1098
  %1101 = fdiv fast float %1100, %1095
  %1102 = fadd fast float %1101, %1090
  br label %1103

; <label>:1103                                    ; preds = %1093, %1089
  %1104 = phi float [ %1102, %1093 ], [ %1090, %1089 ]
  %1105 = fsub fast float %991, %1077
  %1106 = fmul fast float %1105, %1092
  %1107 = fmul fast float %1077, %1076
  %1108 = fadd fast float %1077, %1076
  %1109 = fmul fast float %1108, %1031
  %1110 = fadd fast float %1107, %1032
  %1111 = fsub fast float %1110, %1109
  %1112 = fdiv fast float %1111, %1106
  %1113 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1114 = fcmp fast oeq float %743, 0.000000e+00
  %1115 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %1116 = fcmp fast oeq float %1115, 0.000000e+00
  %1117 = or i1 %1114, %1116
  %1118 = fmul fast float %1115, 2.000000e+00
  %1119 = fadd fast float %900, %901
  %1120 = fdiv fast float %1119, %1118
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = fmul fast float %1121, 2.000000e+00
  %1123 = fsub fast float 3.000000e+00, %1122
  %1124 = fmul fast float %1121, %1121
  %1125 = fmul fast float %1124, %1123
  %1126 = select i1 %1117, float 1.000000e+00, float %1125
  %1127 = fmul fast float %1112, %743
  %1128 = fadd fast float %1113, %1127
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1130 = fmul fast float %1126, %1129
  br label %1131

; <label>:1131                                    ; preds = %1103, %983
  %1132 = phi float [ %1130, %1103 ], [ 0.000000e+00, %983 ]
  %1133 = fsub fast float 1.000000e+00, %1132
  %1134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.i32 %1136, 2
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1144, label %1139

; <label>:1139                                    ; preds = %1131
  %1140 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1141 = fadd fast float %1135, -1.000000e+00
  %1142 = fmul fast float %1140, %1141
  %1143 = fadd fast float %1142, 1.000000e+00
  br label %1144

; <label>:1144                                    ; preds = %1139, %1131
  %1145 = phi float [ %1143, %1139 ], [ %1133, %1131 ]
  br i1 %907, label %1146, label %1164

; <label>:1146                                    ; preds = %1144
  %1147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.f32 %1147, 1
  %1149 = fsub fast float %984, %1148
  %1150 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1151 = fsub fast float %984, %906
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1153 = fsub fast float %1150, %1152
  %1154 = fsub fast float %986, %1152
  %1155 = fdiv fast float %1154, %1153
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1157 = fmul fast float %1156, 2.000000e+00
  %1158 = fsub fast float 3.000000e+00, %1157
  %1159 = fsub fast float %1135, %1145
  %1160 = fmul fast float %1156, %1156
  %1161 = fmul fast float %1160, %1159
  %1162 = fmul fast float %1161, %1158
  %1163 = fadd fast float %1162, %1145
  br label %1164

; <label>:1164                                    ; preds = %1146, %1144
  %1165 = phi float [ %1163, %1146 ], [ %1145, %1144 ]
  %1166 = call float @dx.op.binary.f32(i32 35, float %1135, float %1165)  ; FMax(a,b)
  %1167 = call float @dx.op.dot3.f32(i32 55, float %1166, float %1166, float %1166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1168 = select i1 %100, float %1167, float %1166
  %1169 = select i1 %100, float 1.000000e+00, float %1166
  %1170 = fmul fast float %1168, %842
  %1171 = fmul fast float %1168, %843
  %1172 = fmul fast float %1169, %844
  br label %1173

; <label>:1173                                    ; preds = %1164, %848, %833, %828
  %1174 = phi float [ %830, %828 ], [ %842, %833 ], [ %1170, %1164 ], [ %842, %848 ]
  %1175 = phi float [ %831, %828 ], [ %843, %833 ], [ %1171, %1164 ], [ %843, %848 ]
  %1176 = phi float [ %832, %828 ], [ %844, %833 ], [ %1172, %1164 ], [ %844, %848 ]
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 2
  %1179 = extractvalue %dx.types.CBufRet.f32 %1177, 3
  %1180 = fmul fast float %1178, %42
  %1181 = fmul fast float %1179, %43
  %1182 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1183 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1184 = select i1 %617, i32 2, i32 0
  %1185 = or i32 %1184, 1
  %1186 = uitofp i32 %1185 to float
  %1187 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1182, float %1183, float %1186, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.ResRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.ResRet.f32 %1187, 2
  %1191 = extractvalue %dx.types.ResRet.f32 %1187, 3
  %1192 = add nuw nsw i32 %1184, 2
  %1193 = uitofp i32 %1192 to float
  %1194 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1182, float %1183, float %1193, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1194, 3
  %1199 = call float @dx.op.binary.f32(i32 35, float %1189, float %1190)  ; FMax(a,b)
  %1200 = call float @dx.op.binary.f32(i32 35, float %1188, float %1199)  ; FMax(a,b)
  %1201 = call float @dx.op.binary.f32(i32 35, float %1200, float %1191)  ; FMax(a,b)
  %1202 = call float @dx.op.binary.f32(i32 36, float %1196, float %1197)  ; FMin(a,b)
  %1203 = call float @dx.op.binary.f32(i32 36, float %1195, float %1202)  ; FMin(a,b)
  %1204 = call float @dx.op.binary.f32(i32 36, float %1203, float %1198)  ; FMin(a,b)
  %1205 = fmul fast float %1201, 2.550000e+02
  %1206 = fadd fast float %1205, 0x3F70101020000000
  %1207 = fptoui float %1206 to i32
  %1208 = fmul fast float %1204, 2.550000e+02
  %1209 = fadd fast float %1208, 0x3F70101020000000
  %1210 = fptoui float %1209 to i32
  %1211 = icmp ult i32 %1207, %1210
  br i1 %1211, label %1212, label %1255

; <label>:1212                                    ; preds = %1173
  %1213 = fcmp fast ogt float %37, 9.843750e-01
  %1214 = fadd fast float %829, -4.000000e+00
  %1215 = select i1 %1213, float -4.000000e+00, float %1214
  %1216 = call float @dx.op.binary.f32(i32 35, float %1215, float 0.000000e+00)  ; FMax(a,b)
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1219 = fadd fast float %1218, %1216
  %1220 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1221 = fmul fast float %1219, %1220
  %1222 = call float @dx.op.unary.f32(i32 23, float %1221)  ; Log(value)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1224 = fmul fast float %1223, %1222
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 2
  %1227 = fmul fast float %1224, %1226
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = uitofp i32 %1207 to float
  %1230 = uitofp i32 %1210 to float
  %1231 = fadd fast float %1229, 5.000000e-01
  %1232 = fadd fast float %1230, 5.000000e-01
  %1233 = fmul fast float %1226, %1231
  %1234 = fmul fast float %1226, %1232
  %1235 = fadd fast float %1233, 0x3F0FFB4800000000
  %1236 = fadd fast float %1234, 0xBF0FFB4800000000
  %1237 = call float @dx.op.binary.f32(i32 35, float %1228, float %1235)  ; FMax(a,b)
  %1238 = call float @dx.op.binary.f32(i32 36, float %1237, float %1236)  ; FMin(a,b)
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1241 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1242 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1243 = select i1 %617, float %1242, float 0.000000e+00
  %1244 = fmul fast float %1240, %1238
  %1245 = fadd fast float %1243, %1244
  %1246 = fadd fast float %1243, %1241
  %1247 = fsub fast float %1240, %1241
  %1248 = fadd fast float %1247, %1243
  %1249 = call float @dx.op.binary.f32(i32 35, float %1245, float %1246)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 36, float %1249, float %1248)  ; FMin(a,b)
  %1251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1182, float %1183, float %1250, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  br label %1255

; <label>:1255                                    ; preds = %1212, %1173
  %1256 = phi float [ %1252, %1212 ], [ 1.000000e+00, %1173 ]
  %1257 = phi float [ %1253, %1212 ], [ 1.000000e+00, %1173 ]
  %1258 = phi float [ %1254, %1212 ], [ 1.000000e+00, %1173 ]
  %1259 = call float @dx.op.dot3.f32(i32 55, float %1256, float %1257, float %1258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1260 = select i1 %100, float %1259, float %1256
  %1261 = select i1 %100, float %1259, float %1257
  %1262 = fmul fast float %1260, %1174
  %1263 = fmul fast float %1261, %1175
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  br i1 %100, label %1266, label %1269

; <label>:1266                                    ; preds = %1255
  %1267 = fadd fast float %1262, %1263
  %1268 = fmul fast float %1265, %1267
  br label %1279

; <label>:1269                                    ; preds = %1255
  %1270 = fmul fast float %1258, %1176
  %1271 = fmul fast float %1265, %1262
  %1272 = fmul fast float %1265, %1263
  %1273 = fmul fast float %1270, %1265
  %1274 = call float @dx.op.binary.f32(i32 35, float %1272, float %1273)  ; FMax(a,b)
  %1275 = call float @dx.op.binary.f32(i32 35, float %1271, float %1274)  ; FMax(a,b)
  %1276 = call float @dx.op.binary.f32(i32 35, float %1275, float 0.000000e+00)  ; FMax(a,b)
  %1277 = fcmp fast ugt float %1276, 0x3F10000000000000
  br i1 %1277, label %1279, label %1278

; <label>:1278                                    ; preds = %1269
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1279

; <label>:1279                                    ; preds = %1278, %1269, %1266
  %1280 = phi float [ %1268, %1266 ], [ %1271, %1278 ], [ %1271, %1269 ]
  %1281 = phi float [ 0.000000e+00, %1266 ], [ %1272, %1278 ], [ %1272, %1269 ]
  %1282 = phi float [ 0.000000e+00, %1266 ], [ %1273, %1278 ], [ %1273, %1269 ]
  %1283 = fadd fast float %488, 0x3FE3C6EF40000000
  %1284 = call float @dx.op.unary.f32(i32 22, float %1283)  ; Frc(value)
  %1285 = call float @dx.op.unary.f32(i32 23, float %1280)  ; Log(value)
  %1286 = fadd fast float %1285, -7.000000e+00
  %1287 = call float @dx.op.unary.f32(i32 21, float %1286)  ; Exp(value)
  %1288 = fmul fast float %1284, 2.000000e+00
  %1289 = fadd fast float %1288, -1.000000e+00
  %1290 = fmul fast float %1287, %1289
  %1291 = fcmp fast ogt float %1280, 0.000000e+00
  %1292 = select i1 %1291, float %1290, float 0.000000e+00
  %1293 = fadd fast float %1292, %1280
  %1294 = fadd fast float %488, 0x3FF3C6EF40000000
  %1295 = call float @dx.op.unary.f32(i32 22, float %1294)  ; Frc(value)
  %1296 = call float @dx.op.unary.f32(i32 23, float %1281)  ; Log(value)
  %1297 = fadd fast float %1296, -7.000000e+00
  %1298 = call float @dx.op.unary.f32(i32 21, float %1297)  ; Exp(value)
  %1299 = fmul fast float %1295, 2.000000e+00
  %1300 = fadd fast float %1299, -1.000000e+00
  %1301 = fmul fast float %1298, %1300
  %1302 = fcmp fast ogt float %1281, 0.000000e+00
  %1303 = select i1 %1302, float %1301, float 0.000000e+00
  %1304 = fadd fast float %1303, %1281
  %1305 = fadd fast float %488, 0x3FFDAA66E0000000
  %1306 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1307 = call float @dx.op.unary.f32(i32 23, float %1282)  ; Log(value)
  %1308 = fadd fast float %1307, -6.000000e+00
  %1309 = call float @dx.op.unary.f32(i32 21, float %1308)  ; Exp(value)
  %1310 = fmul fast float %1306, 2.000000e+00
  %1311 = fadd fast float %1310, -1.000000e+00
  %1312 = fmul fast float %1309, %1311
  %1313 = fcmp fast ogt float %1282, 0.000000e+00
  %1314 = select i1 %1313, float %1312, float 0.000000e+00
  %1315 = fadd fast float %1314, %1282
  %1316 = select i1 %100, float %1281, float %1304
  %1317 = select i1 %100, float %1282, float %1315
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1318 = call float @dx.op.binary.f32(i32 36, float %1293, float 3.225500e+04)  ; FMin(a,b)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1316, float 3.225500e+04)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1317, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1318)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1320)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[30 x i32] [i32 28, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !59}
!35 = !{!36, !55, null}
!36 = !{!37, !40, !42, !44, !46, !48, !50, !52, !54}
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
!50 = !{i32 6, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 6, i8 0, !51}
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
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

