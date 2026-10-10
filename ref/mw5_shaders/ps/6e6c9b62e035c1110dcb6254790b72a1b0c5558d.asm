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
; shader hash: cd8042cac60030cba41cafdab1911f11
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
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = extractvalue %dx.types.ResRet.i32 %159, 1
  %162 = bitcast i32 %160 to float
  %163 = bitcast i32 %161 to float
  %164 = fmul fast float %162, %32
  %165 = fmul fast float %163, %33
  %166 = call float @dx.op.unary.f32(i32 22, float %164)  ; Frc(value)
  %167 = call float @dx.op.unary.f32(i32 22, float %165)  ; Frc(value)
  %168 = and i32 %120, 16
  %169 = icmp ne i32 %168, 0
  %170 = select i1 %169, float 1.000000e+00, float %34
  %171 = icmp eq i32 %168, 0
  br i1 %171, label %191, label %172, !dx.controlflow.hints !60

; <label>:172                                     ; preds = %156
  %173 = add i32 %117, 64
  %174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fadd fast float %175, 1.000000e+00
  %177 = fmul fast float %176, %34
  %178 = fsub fast float %177, %175
  %179 = fsub fast float %176, %178
  %180 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %181 = fsub fast float 1.000000e+00, %177
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fsub fast float %180, %182
  %184 = fsub fast float %170, %182
  %185 = fdiv fast float %184, %183
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fmul fast float %186, 2.000000e+00
  %188 = fsub fast float 3.000000e+00, %187
  %189 = fmul fast float %186, %186
  %190 = fmul fast float %189, %188
  br label %191

; <label>:191                                     ; preds = %172, %156
  %192 = phi float [ %190, %172 ], [ %170, %156 ]
  %193 = fcmp fast ogt float %192, 0.000000e+00
  br i1 %193, label %195, label %194

; <label>:194                                     ; preds = %191
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %195

; <label>:195                                     ; preds = %194, %191
  %196 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %197 = fmul fast float %42, 5.000000e-01
  %198 = fmul fast float %43, 5.000000e-01
  %199 = fptosi float %197 to i32
  %200 = fptosi float %198 to i32
  %201 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %199, i32 %200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = lshr i32 %202, 18
  %204 = uitofp i32 %203 to float
  %205 = fmul fast float %204, 0x3F4C00EBA0000000
  %206 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %207 = fadd fast float %206, -1.000000e+00
  %208 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %209 = extractvalue %dx.types.Dimensions %208, 0
  %210 = sitofp i32 %209 to float
  %211 = extractvalue %dx.types.Dimensions %208, 1
  %212 = sitofp i32 %211 to float
  %213 = fcmp fast oge float %197, %210
  %214 = fcmp fast oge float %198, %212
  %215 = or i1 %213, %214
  %216 = select i1 %215, float 0x4197782600000000, float %207
  %217 = fsub fast float %216, %38
  %218 = fcmp fast ogt float %217, 0.000000e+00
  %219 = and i32 %116, -2
  %220 = icmp eq i32 %219, 2
  %221 = and i1 %220, %218
  %222 = xor i1 %218, true
  %223 = icmp eq i32 %116, 1
  %224 = and i1 %223, %222
  %225 = or i1 %221, %224
  %226 = and i32 %120, 262144
  %227 = icmp ne i32 %226, 0
  %228 = and i1 %227, %225
  %229 = xor i1 %225, true
  %230 = and i32 %120, 131072
  %231 = icmp ne i32 %230, 0
  %232 = and i1 %231, %229
  %233 = or i1 %228, %232
  br i1 %233, label %234, label %235

; <label>:234                                     ; preds = %195
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %235

; <label>:235                                     ; preds = %234, %195
  %236 = and i32 %120, 32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %476, label %238, !dx.controlflow.hints !61

; <label>:238                                     ; preds = %235
  %239 = add i32 %117, 80
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 3
  %245 = add i32 %117, 96
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = add i32 %117, 112
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = add i32 %117, 128
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 4096
  %265 = icmp ne i32 %264, 0
  %266 = fcmp fast une float %249, 0.000000e+00
  %267 = and i32 %263, 64
  %268 = icmp ne i32 %267, 0
  %269 = and i32 %263, 128
  %270 = icmp eq i32 %269, 0
  %271 = and i32 %263, 2048
  %272 = icmp eq i32 %271, 0
  %273 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %274 = extractvalue %dx.types.Dimensions %273, 0
  %275 = sitofp i32 %274 to float
  %276 = extractvalue %dx.types.Dimensions %273, 1
  %277 = sitofp i32 %276 to float
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %280 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %281 = fmul fast float %279, %42
  %282 = fmul fast float %280, %43
  %283 = fmul fast float %281, %275
  %284 = fmul fast float %282, %277
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = fsub fast float -0.000000e+00, %286
  %288 = fptoui float %287 to i32
  %289 = fptoui float %283 to i32
  %290 = fptoui float %284 to i32
  %291 = and i32 %288, 31
  %292 = lshr i32 %289, %291
  %293 = lshr i32 %290, %291
  %294 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %288, i32 %292, i32 %293, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = fcmp fast ogt float %295, -1.000000e+00
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %299 = select i1 %296, float %298, float 1.000000e+00
  %300 = fadd fast float %295, 1.000000e+00
  %301 = fmul fast float %299, %300
  %302 = call float @dx.op.unary.f32(i32 6, float %301)  ; FAbs(value)
  %303 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %304 = fcmp fast oge float %302, %303
  %305 = select i1 %304, float 0x4197782600000000, float %302
  br i1 %272, label %376, label %306, !dx.controlflow.hints !62

; <label>:306                                     ; preds = %238
  %307 = fmul fast float %47, %279
  %308 = fmul fast float %49, %280
  %309 = fsub fast float 1.000000e+00, %307
  %310 = fsub fast float 1.000000e+00, %308
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = fmul fast float %309, %312
  %316 = fmul fast float %309, %313
  %317 = fmul fast float %309, %314
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fmul fast float %310, %319
  %323 = fmul fast float %310, %320
  %324 = fmul fast float %310, %321
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %329 = fadd fast float %322, %326
  %330 = fadd fast float %329, %315
  %331 = fadd fast float %323, %327
  %332 = fadd fast float %331, %316
  %333 = fadd fast float %324, %328
  %334 = fadd fast float %333, %317
  %335 = fmul fast float %330, %305
  %336 = fmul fast float %332, %305
  %337 = fmul fast float %334, %305
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %342 = fadd fast float %335, %339
  %343 = fadd fast float %336, %340
  %344 = fadd fast float %337, %341
  %345 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %342, float %343, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = fsub fast float 1.000000e+00, %345
  %347 = fcmp fast olt float %346, %248
  %348 = fcmp fast ogt float %346, %247
  %349 = or i1 %347, %348
  %350 = select i1 %349, float 0.000000e+00, float %346
  %351 = fsub fast float %247, %248
  %352 = fsub fast float %350, %248
  %353 = fdiv fast float %352, %351
  %354 = call float @dx.op.unary.f32(i32 7, float %353)  ; Saturate(value)
  %355 = fmul fast float %354, 2.000000e+00
  %356 = fsub fast float 3.000000e+00, %355
  %357 = fmul fast float %354, %354
  %358 = fmul fast float %357, %356
  %359 = fsub fast float %255, %261
  %360 = fmul fast float %358, %359
  %361 = fadd fast float %360, %261
  %362 = fmul fast float %252, %22
  %363 = fmul fast float %253, %23
  %364 = fmul fast float %254, %24
  %365 = fsub fast float %362, %258
  %366 = fsub fast float %363, %259
  %367 = fsub fast float %364, %260
  %368 = fmul fast float %358, %365
  %369 = fmul fast float %358, %366
  %370 = fmul fast float %358, %367
  %371 = fadd fast float %368, %258
  %372 = fadd fast float %369, %259
  %373 = fadd fast float %370, %260
  %374 = fmul fast float %241, %241
  %375 = fmul fast float %374, %350
  br label %467

; <label>:376                                     ; preds = %238
  %377 = and i32 %263, 256
  %378 = icmp eq i32 %377, 0
  %379 = fsub fast float %305, %38
  br i1 %378, label %428, label %380

; <label>:380                                     ; preds = %376
  %381 = fadd fast float %247, %38
  %382 = fcmp fast olt float %305, %38
  %383 = fcmp fast ogt float %305, %381
  %384 = or i1 %382, %383
  %385 = select i1 %384, float 0.000000e+00, float %379
  %386 = call float @dx.op.unary.f32(i32 83, float %305)  ; DerivCoarseX(value)
  %387 = call float @dx.op.unary.f32(i32 84, float %305)  ; DerivCoarseY(value)
  %388 = fmul fast float %386, %386
  %389 = fmul fast float %387, %387
  %390 = fadd fast float %389, %388
  %391 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %392 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %393 = fmul fast float %392, %391
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = fmul fast float %394, %248
  %396 = fdiv fast float %379, %395
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = fmul fast float %397, 2.000000e+00
  %399 = fsub fast float 3.000000e+00, %398
  %400 = fmul fast float %397, %397
  %401 = fmul fast float %400, %399
  %402 = fsub fast float %305, %381
  %403 = fadd fast float %402, %395
  %404 = fdiv fast float %403, %395
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, 2.000000e+00
  %407 = fsub fast float 3.000000e+00, %406
  %408 = fmul fast float %405, %405
  %409 = fmul fast float %408, %407
  %410 = fsub fast float %401, %409
  %411 = fsub fast float %255, %261
  %412 = fmul fast float %410, %411
  %413 = fadd fast float %412, %261
  %414 = fmul fast float %252, %22
  %415 = fmul fast float %253, %23
  %416 = fmul fast float %254, %24
  %417 = fsub fast float %414, %258
  %418 = fsub fast float %415, %259
  %419 = fsub fast float %416, %260
  %420 = fmul fast float %410, %417
  %421 = fmul fast float %410, %418
  %422 = fmul fast float %410, %419
  %423 = fadd fast float %420, %258
  %424 = fadd fast float %421, %259
  %425 = fadd fast float %422, %260
  %426 = fmul fast float %385, %241
  %427 = call float @dx.op.unary.f32(i32 6, float %426)  ; FAbs(value)
  br label %467

; <label>:428                                     ; preds = %376
  br i1 %266, label %429, label %440

; <label>:429                                     ; preds = %428
  %430 = select i1 %268, float 5.000000e+01, float 1.000000e+00
  %431 = fmul fast float %430, %241
  %432 = fmul fast float %166, 2.000000e+00
  %433 = fmul fast float %167, 2.000000e+00
  %434 = fadd fast float %432, -1.000000e+00
  %435 = fadd fast float %433, -1.000000e+00
  %436 = call float @dx.op.dot2.f32(i32 54, float %434, float %435, float %434, float %435)  ; Dot2(ax,ay,bx,by)
  %437 = fmul fast float %436, %249
  %438 = fsub fast float %379, %437
  %439 = fmul fast float %431, %438
  br label %467

; <label>:440                                     ; preds = %428
  br i1 %270, label %460, label %441

; <label>:441                                     ; preds = %440
  %442 = select i1 %268, float 0x3F947AE140000000, float 1.000000e+00
  %443 = fdiv fast float 1.000000e+00, %442
  %444 = fmul fast float %442, %242
  %445 = fmul fast float %442, %243
  %446 = fmul fast float %443, %244
  %447 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %448 = fcmp fast olt float %447, %444
  br i1 %448, label %449, label %453, !dx.controlflow.hints !63

; <label>:449                                     ; preds = %441
  %450 = fmul fast float %443, %241
  %451 = fmul fast float %450, %447
  %452 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  br label %467

; <label>:453                                     ; preds = %441
  %454 = fcmp fast ogt float %447, %445
  br i1 %454, label %455, label %467

; <label>:455                                     ; preds = %453
  %456 = fsub fast float %447, %445
  %457 = fmul fast float %446, %456
  %458 = call float @dx.op.unary.f32(i32 6, float %457)  ; FAbs(value)
  %459 = fsub fast float 1.000000e+00, %458
  br label %467

; <label>:460                                     ; preds = %440
  %461 = select i1 %268, float 5.000000e+01, float 1.000000e+00
  %462 = fmul fast float %461, %241
  %463 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %464 = select i1 %265, float %463, float 0x47EFFFFFE0000000
  %465 = call float @dx.op.binary.f32(i32 36, float %379, float %464)  ; FMin(a,b)
  %466 = fmul fast float %462, %465
  br label %467

; <label>:467                                     ; preds = %460, %455, %453, %449, %429, %380, %306
  %468 = phi float [ %375, %306 ], [ %427, %380 ], [ %439, %429 ], [ %466, %460 ], [ %452, %449 ], [ %459, %455 ], [ %447, %453 ]
  %469 = phi float [ %371, %306 ], [ %423, %380 ], [ %22, %429 ], [ %22, %460 ], [ %22, %449 ], [ %22, %455 ], [ %22, %453 ]
  %470 = phi float [ %372, %306 ], [ %424, %380 ], [ %23, %429 ], [ %23, %460 ], [ %23, %449 ], [ %23, %455 ], [ %23, %453 ]
  %471 = phi float [ %373, %306 ], [ %425, %380 ], [ %24, %429 ], [ %24, %460 ], [ %24, %449 ], [ %24, %455 ], [ %24, %453 ]
  %472 = phi float [ %361, %306 ], [ %413, %380 ], [ 1.000000e+00, %429 ], [ 1.000000e+00, %460 ], [ 1.000000e+00, %449 ], [ 1.000000e+00, %455 ], [ 1.000000e+00, %453 ]
  %473 = call float @dx.op.unary.f32(i32 7, float %468)  ; Saturate(value)
  %474 = fmul fast float %472, %196
  %475 = fmul fast float %474, %473
  br label %476

; <label>:476                                     ; preds = %467, %235
  %477 = phi float [ %475, %467 ], [ %196, %235 ]
  %478 = phi float [ %469, %467 ], [ %22, %235 ]
  %479 = phi float [ %470, %467 ], [ %23, %235 ]
  %480 = phi float [ %471, %467 ], [ %24, %235 ]
  %481 = fmul fast float %478, %25
  %482 = fmul fast float %479, %25
  %483 = fmul fast float %480, %25
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 2
  %486 = fptosi float %38 to i32
  %487 = sitofp i32 %486 to float
  %488 = fadd fast float %485, %487
  %489 = fmul fast float %488, 0x3FE3C6EF40000000
  %490 = frem fast float %42, 2.560000e+02
  %491 = frem fast float %43, 2.560000e+02
  %492 = fptoui float %490 to i32
  %493 = fptoui float %491 to i32
  %494 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %492, i32 %493, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = fadd fast float %495, %489
  %497 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %498 = and i32 %120, 1
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %556, label %500, !dx.controlflow.hints !64

; <label>:500                                     ; preds = %476
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 2
  %503 = extractvalue %dx.types.ResRet.f32 %501, 3
  %504 = add i32 %117, 16
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = add i32 %117, 32
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = and i32 %120, 2
  %515 = icmp eq i32 %514, 0
  %516 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = call float @dx.op.unary.f32(i32 25, float %516)  ; Rsqrt(value)
  %518 = fmul fast float %517, %28
  %519 = fmul fast float %517, %29
  %520 = fmul fast float %517, %30
  %521 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = call float @dx.op.unary.f32(i32 25, float %521)  ; Rsqrt(value)
  %523 = fmul fast float %522, %77
  %524 = fmul fast float %522, %78
  %525 = fmul fast float %522, %79
  %526 = call float @dx.op.dot3.f32(i32 55, float %523, float %524, float %525, float %518, float %519, float %520)  ; Dot3(ax,ay,az,bx,by,bz)
  %527 = fmul fast float %526, %526
  %528 = fmul fast float %527, %502
  %529 = fadd fast float %528, %503
  %530 = call float @dx.op.unary.f32(i32 7, float %529)  ; Saturate(value)
  br i1 %515, label %531, label %541, !dx.controlflow.hints !65

; <label>:531                                     ; preds = %500
  %532 = extractvalue %dx.types.ResRet.f32 %501, 1
  %533 = extractvalue %dx.types.ResRet.f32 %501, 0
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %536 = fmul fast float %535, %521
  %537 = fsub fast float %533, %536
  %538 = fmul fast float %537, %532
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %540 = fmul fast float %539, %530
  br label %541

; <label>:541                                     ; preds = %531, %500
  %542 = phi float [ %540, %531 ], [ %530, %500 ]
  %543 = fsub fast float %506, %511
  %544 = fsub fast float %507, %512
  %545 = fsub fast float %508, %513
  %546 = fmul fast float %542, %543
  %547 = fmul fast float %542, %544
  %548 = fmul fast float %542, %545
  %549 = fadd fast float %546, %511
  %550 = fadd fast float %547, %512
  %551 = fadd fast float %548, %513
  %552 = fmul fast float %549, %481
  %553 = fmul fast float %550, %482
  %554 = fmul fast float %551, %483
  %555 = fmul fast float %542, %477
  br label %556

; <label>:556                                     ; preds = %541, %476
  %557 = phi float [ %555, %541 ], [ %477, %476 ]
  %558 = phi float [ %552, %541 ], [ %481, %476 ]
  %559 = phi float [ %553, %541 ], [ %482, %476 ]
  %560 = phi float [ %554, %541 ], [ %483, %476 ]
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = add i32 %562, 0
  %564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %564, %dx.types.Handle %39, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = shl i32 %570, 4
  %572 = and i32 %571, 32752
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %570, 7
  %575 = and i32 %574, 32752
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %570, 22
  %578 = shl nuw nsw i32 %577, 5
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = fmul fast float %573, %566
  %581 = fmul fast float %576, %567
  %582 = fmul fast float %579, %568
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = fmul fast float %580, %584
  %586 = fmul fast float %581, %584
  %587 = fmul fast float %582, %584
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = lshr i32 %589, 22
  %591 = shl nuw nsw i32 %590, 5
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = fmul fast float %592, %585
  %594 = select i1 %100, float %593, float %585
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %601 = fmul fast float %594, %558
  %602 = fmul fast float %586, %559
  %603 = fmul fast float %587, %560
  %604 = call float @dx.op.dot3.f32(i32 55, float %601, float %602, float %603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %605 = select i1 %100, float 0.000000e+00, float %601
  %606 = select i1 %100, float %604, float %602
  %607 = select i1 %100, float 0.000000e+00, float %603
  %608 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %199, i32 %200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = lshr i32 %609, 18
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F4C00EBA0000000
  %613 = call float @dx.op.unary.f32(i32 21, float %612)  ; Exp(value)
  %614 = fadd fast float %613, -1.000000e+00
  %615 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %616 = extractvalue %dx.types.Dimensions %615, 0
  %617 = sitofp i32 %616 to float
  %618 = extractvalue %dx.types.Dimensions %615, 1
  %619 = sitofp i32 %618 to float
  %620 = fcmp fast oge float %197, %617
  %621 = fcmp fast oge float %198, %619
  %622 = or i1 %620, %621
  %623 = select i1 %622, float 0x4197782600000000, float %614
  %624 = icmp eq i32 %116, 3
  %625 = fcmp fast ogt float %38, %623
  %626 = and i1 %223, %625
  %627 = or i1 %624, %626
  %628 = icmp eq i32 %116, 2
  %629 = fcmp fast ole float %38, %623
  %630 = and i1 %628, %629
  %631 = or i1 %630, %627
  %632 = fmul fast float %478, %31
  %633 = fmul fast float %632, %594
  %634 = fmul fast float %633, %596
  %635 = fmul fast float %634, %600
  %636 = fmul fast float %479, %31
  %637 = fmul fast float %636, %586
  %638 = fmul fast float %637, %597
  %639 = fmul fast float %638, %600
  %640 = fmul fast float %480, %31
  %641 = fmul fast float %640, %587
  %642 = fmul fast float %641, %598
  %643 = fmul fast float %642, %600
  %644 = fadd fast float %635, %605
  %645 = fadd fast float %606, %639
  %646 = fadd fast float %643, %607
  %647 = fmul fast float %644, %557
  %648 = fmul fast float %645, %557
  %649 = fmul fast float %646, %557
  %650 = and i32 %120, 1048576
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %743, label %652, !dx.controlflow.hints !66

; <label>:652                                     ; preds = %556
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 3
  %656 = fmul fast float %654, %42
  %657 = fmul fast float %655, %43
  %658 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %659 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %660 = select i1 %631, i32 2, i32 0
  %661 = or i32 %660, 1
  %662 = uitofp i32 %661 to float
  %663 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %658, float %659, float %662, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 2
  %667 = extractvalue %dx.types.ResRet.f32 %663, 3
  %668 = add nuw nsw i32 %660, 2
  %669 = uitofp i32 %668 to float
  %670 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %658, float %659, float %669, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = extractvalue %dx.types.ResRet.f32 %670, 3
  %675 = call float @dx.op.binary.f32(i32 35, float %665, float %666)  ; FMax(a,b)
  %676 = call float @dx.op.binary.f32(i32 35, float %664, float %675)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 35, float %676, float %667)  ; FMax(a,b)
  %678 = call float @dx.op.binary.f32(i32 36, float %672, float %673)  ; FMin(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float %671, float %678)  ; FMin(a,b)
  %680 = call float @dx.op.binary.f32(i32 36, float %679, float %674)  ; FMin(a,b)
  %681 = fmul fast float %677, 2.550000e+02
  %682 = fadd fast float %681, 0x3F70101020000000
  %683 = fptoui float %682 to i32
  %684 = fmul fast float %680, 2.550000e+02
  %685 = fadd fast float %684, 0x3F70101020000000
  %686 = fptoui float %685 to i32
  %687 = icmp ult i32 %683, %686
  br i1 %687, label %688, label %736

; <label>:688                                     ; preds = %652
  %689 = fcmp fast ogt float %37, 9.843750e-01
  %690 = fadd fast float %38, -4.000000e+00
  %691 = select i1 %689, float -4.000000e+00, float %690
  %692 = call float @dx.op.binary.f32(i32 35, float %691, float 0.000000e+00)  ; FMax(a,b)
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = fadd fast float %694, %692
  %696 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %697 = fmul fast float %695, %696
  %698 = call float @dx.op.unary.f32(i32 23, float %697)  ; Log(value)
  %699 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %700 = fmul fast float %699, %698
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 2
  %703 = fmul fast float %700, %702
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %705 = uitofp i32 %683 to float
  %706 = uitofp i32 %686 to float
  %707 = fadd fast float %705, 5.000000e-01
  %708 = fadd fast float %706, 5.000000e-01
  %709 = fmul fast float %702, %707
  %710 = fmul fast float %702, %708
  %711 = fadd fast float %709, 0x3F0FFB4800000000
  %712 = fadd fast float %710, 0xBF0FFB4800000000
  %713 = call float @dx.op.binary.f32(i32 35, float %704, float %711)  ; FMax(a,b)
  %714 = call float @dx.op.binary.f32(i32 36, float %713, float %712)  ; FMin(a,b)
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %715, 0
  %719 = select i1 %631, float %718, float 0.000000e+00
  %720 = fmul fast float %716, %714
  %721 = fadd fast float %719, %720
  %722 = fadd fast float %719, %717
  %723 = fsub fast float %716, %717
  %724 = fadd fast float %723, %719
  %725 = call float @dx.op.binary.f32(i32 35, float %721, float %722)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 36, float %725, float %724)  ; FMin(a,b)
  %727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %658, float %659, float %726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = extractvalue %dx.types.ResRet.f32 %727, 1
  %730 = extractvalue %dx.types.ResRet.f32 %727, 2
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %733 = fmul fast float %732, %728
  %734 = fmul fast float %732, %729
  %735 = fmul fast float %732, %730
  br label %736

; <label>:736                                     ; preds = %688, %652
  %737 = phi float [ %733, %688 ], [ 1.000000e+00, %652 ]
  %738 = phi float [ %734, %688 ], [ 1.000000e+00, %652 ]
  %739 = phi float [ %735, %688 ], [ 1.000000e+00, %652 ]
  %740 = fmul fast float %737, %647
  %741 = fmul fast float %738, %648
  %742 = fmul fast float %739, %649
  br label %743

; <label>:743                                     ; preds = %736, %556
  %744 = phi float [ %740, %736 ], [ %647, %556 ]
  %745 = phi float [ %741, %736 ], [ %648, %556 ]
  %746 = phi float [ %742, %736 ], [ %649, %556 ]
  %747 = and i32 %120, 2097152
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %753, label %749, !dx.controlflow.hints !67

; <label>:749                                     ; preds = %743
  %750 = add i32 %117, 192
  %751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  br label %756

; <label>:753                                     ; preds = %743
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 3
  br label %756

; <label>:756                                     ; preds = %753, %749
  %757 = phi float [ %752, %749 ], [ %755, %753 ]
  br i1 %626, label %758, label %842

; <label>:758                                     ; preds = %756
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %761 = extractvalue %dx.types.CBufRet.f32 %759, 3
  %762 = fmul fast float %760, %42
  %763 = fmul fast float %761, %43
  %764 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %765 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %766 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %764, float %765, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %764, float %765, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = call float @dx.op.binary.f32(i32 35, float %768, float %769)  ; FMax(a,b)
  %777 = call float @dx.op.binary.f32(i32 35, float %767, float %776)  ; FMax(a,b)
  %778 = call float @dx.op.binary.f32(i32 35, float %777, float %770)  ; FMax(a,b)
  %779 = call float @dx.op.binary.f32(i32 36, float %773, float %774)  ; FMin(a,b)
  %780 = call float @dx.op.binary.f32(i32 36, float %772, float %779)  ; FMin(a,b)
  %781 = call float @dx.op.binary.f32(i32 36, float %780, float %775)  ; FMin(a,b)
  %782 = fmul fast float %778, 2.550000e+02
  %783 = fadd fast float %782, 0x3F70101020000000
  %784 = fptoui float %783 to i32
  %785 = fmul fast float %781, 2.550000e+02
  %786 = fadd fast float %785, 0x3F70101020000000
  %787 = fptoui float %786 to i32
  %788 = icmp ult i32 %784, %787
  br i1 %788, label %789, label %831

; <label>:789                                     ; preds = %758
  %790 = fcmp fast ogt float %37, 9.843750e-01
  %791 = fadd fast float %38, -4.000000e+00
  %792 = select i1 %790, float -4.000000e+00, float %791
  %793 = call float @dx.op.binary.f32(i32 35, float %792, float 0.000000e+00)  ; FMax(a,b)
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %796 = fadd fast float %795, %793
  %797 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %798 = fmul fast float %796, %797
  %799 = call float @dx.op.unary.f32(i32 23, float %798)  ; Log(value)
  %800 = extractvalue %dx.types.CBufRet.f32 %794, 3
  %801 = fmul fast float %800, %799
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = fmul fast float %801, %803
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %806 = uitofp i32 %784 to float
  %807 = uitofp i32 %787 to float
  %808 = fadd fast float %806, 5.000000e-01
  %809 = fadd fast float %807, 5.000000e-01
  %810 = fmul fast float %803, %808
  %811 = fmul fast float %803, %809
  %812 = fadd fast float %810, 0x3F0FFB4800000000
  %813 = fadd fast float %811, 0xBF0FFB4800000000
  %814 = call float @dx.op.binary.f32(i32 35, float %805, float %812)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 36, float %814, float %813)  ; FMin(a,b)
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %820 = fmul fast float %817, %815
  %821 = fadd fast float %819, %820
  %822 = fadd fast float %819, %818
  %823 = fsub fast float %817, %818
  %824 = fadd fast float %823, %819
  %825 = call float @dx.op.binary.f32(i32 35, float %821, float %822)  ; FMax(a,b)
  %826 = call float @dx.op.binary.f32(i32 36, float %825, float %824)  ; FMin(a,b)
  %827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %764, float %765, float %826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  br label %831

; <label>:831                                     ; preds = %789, %758
  %832 = phi float [ %828, %789 ], [ 1.000000e+00, %758 ]
  %833 = phi float [ %829, %789 ], [ 1.000000e+00, %758 ]
  %834 = phi float [ %830, %789 ], [ 1.000000e+00, %758 ]
  %835 = call float @dx.op.dot3.f32(i32 55, float %832, float %833, float %834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %836 = select i1 %100, float %835, float %832
  %837 = select i1 %100, float %835, float %833
  %838 = select i1 %100, float 1.000000e+00, float %834
  %839 = fmul fast float %836, %744
  %840 = fmul fast float %837, %745
  %841 = fmul fast float %838, %746
  br label %842

; <label>:842                                     ; preds = %831, %756
  %843 = phi float [ %623, %831 ], [ %38, %756 ]
  %844 = phi float [ %839, %831 ], [ %744, %756 ]
  %845 = phi float [ %840, %831 ], [ %745, %756 ]
  %846 = phi float [ %841, %831 ], [ %746, %756 ]
  br i1 %631, label %1187, label %847

; <label>:847                                     ; preds = %842
  %848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %26, float %27, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = call float @dx.op.dot3.f32(i32 55, float %849, float %850, float %851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %853 = select i1 %100, float %852, float %849
  %854 = select i1 %100, float %852, float %850
  %855 = select i1 %100, float 1.000000e+00, float %851
  %856 = fmul fast float %853, %844
  %857 = fmul fast float %854, %845
  %858 = fmul fast float %855, %846
  %859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.i32 %859, 0
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %1187, label %862, !dx.controlflow.hints !68

; <label>:862                                     ; preds = %847
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %865 = extractvalue %dx.types.CBufRet.f32 %863, 3
  %866 = fmul fast float %864, %42
  %867 = fmul fast float %865, %43
  %868 = fmul fast float %866, 2.000000e+00
  %869 = fmul fast float %867, 2.000000e+00
  %870 = fsub fast float 1.000000e+00, %868
  %871 = fsub fast float 1.000000e+00, %869
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %875 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %876 = fmul fast float %870, %873
  %877 = fmul fast float %870, %874
  %878 = fmul fast float %870, %875
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %881 = extractvalue %dx.types.CBufRet.f32 %879, 1
  %882 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %883 = fmul fast float %871, %880
  %884 = fmul fast float %871, %881
  %885 = fmul fast float %871, %882
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %890 = fadd fast float %883, %887
  %891 = fadd fast float %890, %876
  %892 = fadd fast float %884, %888
  %893 = fadd fast float %892, %877
  %894 = fadd fast float %885, %889
  %895 = fadd fast float %894, %878
  %896 = fmul fast float %891, %843
  %897 = fmul fast float %893, %843
  %898 = fmul fast float %895, %843
  %899 = fmul fast float %896, %896
  %900 = fmul fast float %897, %897
  %901 = fadd fast float %899, %900
  %902 = fmul fast float %898, %898
  %903 = fadd fast float %901, %902
  %904 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = fsub fast float %904, %906
  %908 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %909 = fmul fast float %907, %908
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = fadd fast float %910, -5.000000e-01
  %912 = fmul fast float %911, 2.000000e+00
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %915 = call float @dx.op.binary.f32(i32 36, float %914, float %912)  ; FMin(a,b)
  %916 = fsub fast float -0.000000e+00, %914
  %917 = fcmp fast ogt float %915, %916
  br i1 %917, label %918, label %1187, !dx.controlflow.hints !69

; <label>:918                                     ; preds = %862
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %921 = fcmp fast ogt float %920, 0.000000e+00
  br i1 %921, label %922, label %997, !dx.controlflow.hints !70

; <label>:922                                     ; preds = %918
  %923 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %924 = extractvalue %dx.types.Dimensions %923, 0
  %925 = sitofp i32 %924 to float
  %926 = extractvalue %dx.types.Dimensions %923, 1
  %927 = sitofp i32 %926 to float
  %928 = fmul fast float %866, %925
  %929 = fmul fast float %867, %927
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %932 = fsub fast float -0.000000e+00, %931
  %933 = fptoui float %932 to i32
  %934 = fptoui float %928 to i32
  %935 = fptoui float %929 to i32
  %936 = and i32 %933, 31
  %937 = lshr i32 %934, %936
  %938 = lshr i32 %935, %936
  %939 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %933, i32 %937, i32 %938, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = fcmp fast olt float %940, -1.000000e+00
  %942 = fcmp fast ogt float %940, -1.000000e+00
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %945 = select i1 %942, float %944, float 1.000000e+00
  %946 = fadd fast float %940, 1.000000e+00
  %947 = fmul fast float %945, %946
  %948 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %949 = extractvalue %dx.types.CBufRet.f32 %943, 3
  %950 = fcmp fast oge float %948, %949
  %951 = select i1 %950, float 0x4197782600000000, float %948
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %955 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %956 = select i1 %941, float %953, float %873
  %957 = select i1 %941, float %954, float %874
  %958 = select i1 %941, float %955, float %875
  %959 = fmul fast float %956, %870
  %960 = fmul fast float %957, %870
  %961 = fmul fast float %958, %870
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %965 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %966 = select i1 %941, float %963, float %880
  %967 = select i1 %941, float %964, float %881
  %968 = select i1 %941, float %965, float %882
  %969 = fmul fast float %966, %871
  %970 = fmul fast float %967, %871
  %971 = fmul fast float %968, %871
  %972 = fadd fast float %969, %959
  %973 = fadd fast float %970, %960
  %974 = fadd fast float %971, %961
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 1
  %978 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %979 = select i1 %941, float %976, float %887
  %980 = select i1 %941, float %977, float %888
  %981 = select i1 %941, float %978, float %889
  %982 = fadd fast float %972, %979
  %983 = fadd fast float %973, %980
  %984 = fadd fast float %974, %981
  %985 = fmul fast float %982, %951
  %986 = fmul fast float %983, %951
  %987 = fmul fast float %984, %951
  %988 = fmul fast float %985, %985
  %989 = fmul fast float %986, %986
  %990 = fadd fast float %988, %989
  %991 = fmul fast float %987, %987
  %992 = fadd fast float %990, %991
  %993 = call float @dx.op.unary.f32(i32 24, float %992)  ; Sqrt(value)
  %994 = fsub fast float %993, %906
  %995 = fmul fast float %994, %908
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  br label %997

; <label>:997                                     ; preds = %922, %918
  %998 = phi float [ %996, %922 ], [ 1.000000e+00, %918 ]
  %999 = fmul fast float %915, 5.000000e-01
  %1000 = fadd fast float %999, 5.000000e-01
  %1001 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1002 = call float @dx.op.unary.f32(i32 27, float %1001)  ; Round_ni(value)
  %1003 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1004 = fmul fast float %1003, 2.000000e+00
  %1005 = fadd fast float %1004, -1.000000e+00
  %1006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %866, float %867, float %1002, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.ResRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.ResRet.f32 %1006, 2
  %1010 = extractvalue %dx.types.ResRet.f32 %1006, 3
  %1011 = fadd fast float %1007, -5.000000e-01
  %1012 = fadd fast float %1009, -5.000000e-01
  %1013 = fmul fast float %1011, 0xBFD5555560000000
  %1014 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1012, float %1013)  ; FMad(a,b,c)
  %1015 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1008, float 0.000000e+00)  ; FMad(a,b,c)
  %1016 = fadd fast float %1015, %1010
  %1017 = fmul fast float %1011, -7.500000e-01
  %1018 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1012, float %1017)  ; FMad(a,b,c)
  %1019 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1008, float 0.000000e+00)  ; FMad(a,b,c)
  %1020 = fadd fast float %1019, %1010
  %1021 = call float @dx.op.binary.f32(i32 35, float %1014, float -1.000000e+00)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 35, float %1016, float -1.000000e+00)  ; FMax(a,b)
  %1023 = call float @dx.op.binary.f32(i32 35, float %1018, float -1.000000e+00)  ; FMax(a,b)
  %1024 = call float @dx.op.binary.f32(i32 35, float %1020, float -1.000000e+00)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 36, float %1021, float 1.000000e+00)  ; FMin(a,b)
  %1026 = call float @dx.op.binary.f32(i32 36, float %1022, float 1.000000e+00)  ; FMin(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1023, float 1.000000e+00)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1024, float 1.000000e+00)  ; FMin(a,b)
  %1029 = fcmp fast olt float %1025, 0x3FEFFF8020000000
  br i1 %1029, label %1030, label %1145, !dx.controlflow.hints !71

; <label>:1030                                    ; preds = %997
  %1031 = extractvalue %dx.types.CBufRet.f32 %913, 3
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.CBufRet.f32 %1032, 3
  %1037 = fsub fast float %1033, %1025
  %1038 = fsub fast float %1034, %1026
  %1039 = fsub fast float %1035, %1027
  %1040 = fsub fast float %1036, %1028
  %1041 = fmul fast float %1037, %1031
  %1042 = fmul fast float %1038, %1031
  %1043 = fmul fast float %1039, %1031
  %1044 = fmul fast float %1040, %1031
  %1045 = fadd fast float %1041, %1025
  %1046 = fadd fast float %1042, %1026
  %1047 = fsub fast float -0.000000e+00, %1046
  %1048 = fadd fast float %1043, %1027
  %1049 = fadd fast float %1044, %1028
  %1050 = fmul fast float %1045, %1045
  %1051 = fsub fast float %1046, %1050
  %1052 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1051)  ; FMax(a,b)
  %1053 = fdiv fast float 1.000000e+00, %1052
  %1054 = fmul fast float %1046, %1045
  %1055 = fsub fast float %1048, %1054
  %1056 = fsub fast float %1005, %1045
  %1057 = fmul fast float %1005, %1005
  %1058 = fsub fast float %1057, %1046
  %1059 = fmul fast float %1056, %1053
  %1060 = fmul fast float %1059, %1055
  %1061 = fsub fast float %1058, %1060
  %1062 = fmul fast float %1046, %1046
  %1063 = fsub fast float %1049, %1062
  %1064 = fmul fast float %1055, %1055
  %1065 = fmul fast float %1064, %1053
  %1066 = fsub fast float %1063, %1065
  %1067 = fdiv fast float %1061, %1066
  %1068 = fmul fast float %1055, %1067
  %1069 = fsub fast float %1056, %1068
  %1070 = fmul fast float %1069, %1053
  %1071 = fmul fast float %1070, %1045
  %1072 = fsub fast float 1.000000e+00, %1071
  %1073 = fmul fast float %1046, %1067
  %1074 = fsub fast float %1072, %1073
  %1075 = fmul fast float %1070, %1070
  %1076 = fmul fast float %1067, 4.000000e+00
  %1077 = fmul fast float %1076, %1074
  %1078 = fsub fast float %1075, %1077
  %1079 = call float @dx.op.unary.f32(i32 24, float %1078)  ; Sqrt(value)
  %1080 = fcmp fast oge float %1070, 0.000000e+00
  %1081 = fsub fast float -0.000000e+00, %1079
  %1082 = select i1 %1080, float %1081, float %1079
  %1083 = fsub fast float %1082, %1070
  %1084 = fdiv fast float %1083, %1067
  %1085 = fdiv fast float %1074, %1083
  %1086 = fmul fast float %1084, 5.000000e-01
  %1087 = fmul fast float %1085, 2.000000e+00
  %1088 = select i1 %1080, float %1086, float %1087
  %1089 = select i1 %1080, float %1087, float %1086
  %1090 = call float @dx.op.binary.f32(i32 35, float %1088, float %1089)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 36, float %1088, float %1089)  ; FMin(a,b)
  %1092 = fcmp fast ogt float %1005, %1091
  br i1 %1092, label %1093, label %1103

; <label>:1093                                    ; preds = %1030
  %1094 = fsub fast float %1005, %1091
  %1095 = fsub fast float %1090, %1091
  %1096 = fmul fast float %1094, %1095
  %1097 = fmul fast float %1090, %1005
  %1098 = fadd fast float %1090, %1005
  %1099 = fmul fast float %1098, %1045
  %1100 = fadd fast float %1097, %1046
  %1101 = fsub fast float %1100, %1099
  %1102 = fdiv fast float %1101, %1096
  br label %1103

; <label>:1103                                    ; preds = %1093, %1030
  %1104 = phi float [ %1102, %1093 ], [ 0.000000e+00, %1030 ]
  %1105 = fcmp fast ogt float %1005, %1090
  %1106 = fsub fast float %1005, %1090
  br i1 %1105, label %1107, label %1117

; <label>:1107                                    ; preds = %1103
  %1108 = fsub fast float %1090, %1091
  %1109 = fmul fast float %1108, %1106
  %1110 = fmul fast float %1091, %1005
  %1111 = fadd fast float %1091, %1005
  %1112 = fmul fast float %1111, %1045
  %1113 = fsub fast float %1047, %1110
  %1114 = fadd fast float %1113, %1112
  %1115 = fdiv fast float %1114, %1109
  %1116 = fadd fast float %1115, %1104
  br label %1117

; <label>:1117                                    ; preds = %1107, %1103
  %1118 = phi float [ %1116, %1107 ], [ %1104, %1103 ]
  %1119 = fsub fast float %1005, %1091
  %1120 = fmul fast float %1119, %1106
  %1121 = fmul fast float %1091, %1090
  %1122 = fadd fast float %1091, %1090
  %1123 = fmul fast float %1122, %1045
  %1124 = fadd fast float %1121, %1046
  %1125 = fsub fast float %1124, %1123
  %1126 = fdiv fast float %1125, %1120
  %1127 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1128 = fcmp fast oeq float %757, 0.000000e+00
  %1129 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %1130 = fcmp fast oeq float %1129, 0.000000e+00
  %1131 = or i1 %1128, %1130
  %1132 = fmul fast float %1129, 2.000000e+00
  %1133 = fadd fast float %914, %915
  %1134 = fdiv fast float %1133, %1132
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fmul fast float %1135, 2.000000e+00
  %1137 = fsub fast float 3.000000e+00, %1136
  %1138 = fmul fast float %1135, %1135
  %1139 = fmul fast float %1138, %1137
  %1140 = select i1 %1131, float 1.000000e+00, float %1139
  %1141 = fmul fast float %1126, %757
  %1142 = fadd fast float %1127, %1141
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = fmul fast float %1140, %1143
  br label %1145

; <label>:1145                                    ; preds = %1117, %997
  %1146 = phi float [ %1144, %1117 ], [ 0.000000e+00, %997 ]
  %1147 = fsub fast float 1.000000e+00, %1146
  %1148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %866, float %867, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.i32 %1150, 2
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1158, label %1153

; <label>:1153                                    ; preds = %1145
  %1154 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1155 = fadd fast float %1149, -1.000000e+00
  %1156 = fmul fast float %1154, %1155
  %1157 = fadd fast float %1156, 1.000000e+00
  br label %1158

; <label>:1158                                    ; preds = %1153, %1145
  %1159 = phi float [ %1157, %1153 ], [ %1147, %1145 ]
  br i1 %921, label %1160, label %1178

; <label>:1160                                    ; preds = %1158
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1163 = fsub fast float %998, %1162
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fsub fast float %998, %920
  %1166 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1167 = fsub fast float %1164, %1166
  %1168 = fsub fast float %1000, %1166
  %1169 = fdiv fast float %1168, %1167
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1171 = fmul fast float %1170, 2.000000e+00
  %1172 = fsub fast float 3.000000e+00, %1171
  %1173 = fsub fast float %1149, %1159
  %1174 = fmul fast float %1170, %1170
  %1175 = fmul fast float %1174, %1173
  %1176 = fmul fast float %1175, %1172
  %1177 = fadd fast float %1176, %1159
  br label %1178

; <label>:1178                                    ; preds = %1160, %1158
  %1179 = phi float [ %1177, %1160 ], [ %1159, %1158 ]
  %1180 = call float @dx.op.binary.f32(i32 35, float %1149, float %1179)  ; FMax(a,b)
  %1181 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1180, float %1180, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1182 = select i1 %100, float %1181, float %1180
  %1183 = select i1 %100, float 1.000000e+00, float %1180
  %1184 = fmul fast float %1182, %856
  %1185 = fmul fast float %1182, %857
  %1186 = fmul fast float %1183, %858
  br label %1187

; <label>:1187                                    ; preds = %1178, %862, %847, %842
  %1188 = phi float [ %844, %842 ], [ %856, %847 ], [ %1184, %1178 ], [ %856, %862 ]
  %1189 = phi float [ %845, %842 ], [ %857, %847 ], [ %1185, %1178 ], [ %857, %862 ]
  %1190 = phi float [ %846, %842 ], [ %858, %847 ], [ %1186, %1178 ], [ %858, %862 ]
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 2
  %1193 = extractvalue %dx.types.CBufRet.f32 %1191, 3
  %1194 = fmul fast float %1192, %42
  %1195 = fmul fast float %1193, %43
  %1196 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1197 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1198 = select i1 %631, i32 2, i32 0
  %1199 = or i32 %1198, 1
  %1200 = uitofp i32 %1199 to float
  %1201 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1196, float %1197, float %1200, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.ResRet.f32 %1201, 2
  %1205 = extractvalue %dx.types.ResRet.f32 %1201, 3
  %1206 = add nuw nsw i32 %1198, 2
  %1207 = uitofp i32 %1206 to float
  %1208 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1196, float %1197, float %1207, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = extractvalue %dx.types.ResRet.f32 %1208, 3
  %1213 = call float @dx.op.binary.f32(i32 35, float %1203, float %1204)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 35, float %1202, float %1213)  ; FMax(a,b)
  %1215 = call float @dx.op.binary.f32(i32 35, float %1214, float %1205)  ; FMax(a,b)
  %1216 = call float @dx.op.binary.f32(i32 36, float %1210, float %1211)  ; FMin(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1209, float %1216)  ; FMin(a,b)
  %1218 = call float @dx.op.binary.f32(i32 36, float %1217, float %1212)  ; FMin(a,b)
  %1219 = fmul fast float %1215, 2.550000e+02
  %1220 = fadd fast float %1219, 0x3F70101020000000
  %1221 = fptoui float %1220 to i32
  %1222 = fmul fast float %1218, 2.550000e+02
  %1223 = fadd fast float %1222, 0x3F70101020000000
  %1224 = fptoui float %1223 to i32
  %1225 = icmp ult i32 %1221, %1224
  br i1 %1225, label %1226, label %1269

; <label>:1226                                    ; preds = %1187
  %1227 = fcmp fast ogt float %37, 9.843750e-01
  %1228 = fadd fast float %843, -4.000000e+00
  %1229 = select i1 %1227, float -4.000000e+00, float %1228
  %1230 = call float @dx.op.binary.f32(i32 35, float %1229, float 0.000000e+00)  ; FMax(a,b)
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = fadd fast float %1232, %1230
  %1234 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1235 = fmul fast float %1233, %1234
  %1236 = call float @dx.op.unary.f32(i32 23, float %1235)  ; Log(value)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1238 = fmul fast float %1237, %1236
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1241 = fmul fast float %1238, %1240
  %1242 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  %1243 = uitofp i32 %1221 to float
  %1244 = uitofp i32 %1224 to float
  %1245 = fadd fast float %1243, 5.000000e-01
  %1246 = fadd fast float %1244, 5.000000e-01
  %1247 = fmul fast float %1240, %1245
  %1248 = fmul fast float %1240, %1246
  %1249 = fadd fast float %1247, 0x3F0FFB4800000000
  %1250 = fadd fast float %1248, 0xBF0FFB4800000000
  %1251 = call float @dx.op.binary.f32(i32 35, float %1242, float %1249)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 36, float %1251, float %1250)  ; FMin(a,b)
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 1
  %1255 = extractvalue %dx.types.CBufRet.f32 %1253, 2
  %1256 = extractvalue %dx.types.CBufRet.f32 %1253, 0
  %1257 = select i1 %631, float %1256, float 0.000000e+00
  %1258 = fmul fast float %1254, %1252
  %1259 = fadd fast float %1257, %1258
  %1260 = fadd fast float %1257, %1255
  %1261 = fsub fast float %1254, %1255
  %1262 = fadd fast float %1261, %1257
  %1263 = call float @dx.op.binary.f32(i32 35, float %1259, float %1260)  ; FMax(a,b)
  %1264 = call float @dx.op.binary.f32(i32 36, float %1263, float %1262)  ; FMin(a,b)
  %1265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1196, float %1197, float %1264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.ResRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.ResRet.f32 %1265, 2
  br label %1269

; <label>:1269                                    ; preds = %1226, %1187
  %1270 = phi float [ %1266, %1226 ], [ 1.000000e+00, %1187 ]
  %1271 = phi float [ %1267, %1226 ], [ 1.000000e+00, %1187 ]
  %1272 = phi float [ %1268, %1226 ], [ 1.000000e+00, %1187 ]
  %1273 = call float @dx.op.dot3.f32(i32 55, float %1270, float %1271, float %1272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1274 = select i1 %100, float %1273, float %1270
  %1275 = select i1 %100, float %1273, float %1271
  %1276 = fmul fast float %1274, %1188
  %1277 = fmul fast float %1275, %1189
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  br i1 %100, label %1280, label %1283

; <label>:1280                                    ; preds = %1269
  %1281 = fadd fast float %1276, %1277
  %1282 = fmul fast float %1279, %1281
  br label %1293

; <label>:1283                                    ; preds = %1269
  %1284 = fmul fast float %1272, %1190
  %1285 = fmul fast float %1279, %1276
  %1286 = fmul fast float %1279, %1277
  %1287 = fmul fast float %1284, %1279
  %1288 = call float @dx.op.binary.f32(i32 35, float %1286, float %1287)  ; FMax(a,b)
  %1289 = call float @dx.op.binary.f32(i32 35, float %1285, float %1288)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 35, float %1289, float 0.000000e+00)  ; FMax(a,b)
  %1291 = fcmp fast ugt float %1290, 0x3F10000000000000
  br i1 %1291, label %1293, label %1292

; <label>:1292                                    ; preds = %1283
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1293

; <label>:1293                                    ; preds = %1292, %1283, %1280
  %1294 = phi float [ %1282, %1280 ], [ %1285, %1292 ], [ %1285, %1283 ]
  %1295 = phi float [ 0.000000e+00, %1280 ], [ %1286, %1292 ], [ %1286, %1283 ]
  %1296 = phi float [ 0.000000e+00, %1280 ], [ %1287, %1292 ], [ %1287, %1283 ]
  %1297 = fadd fast float %497, 0x3FE3C6EF40000000
  %1298 = call float @dx.op.unary.f32(i32 22, float %1297)  ; Frc(value)
  %1299 = call float @dx.op.unary.f32(i32 23, float %1294)  ; Log(value)
  %1300 = fadd fast float %1299, -7.000000e+00
  %1301 = call float @dx.op.unary.f32(i32 21, float %1300)  ; Exp(value)
  %1302 = fmul fast float %1298, 2.000000e+00
  %1303 = fadd fast float %1302, -1.000000e+00
  %1304 = fmul fast float %1301, %1303
  %1305 = fcmp fast ogt float %1294, 0.000000e+00
  %1306 = select i1 %1305, float %1304, float 0.000000e+00
  %1307 = fadd fast float %1306, %1294
  %1308 = fadd fast float %497, 0x3FF3C6EF40000000
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = call float @dx.op.unary.f32(i32 23, float %1295)  ; Log(value)
  %1311 = fadd fast float %1310, -7.000000e+00
  %1312 = call float @dx.op.unary.f32(i32 21, float %1311)  ; Exp(value)
  %1313 = fmul fast float %1309, 2.000000e+00
  %1314 = fadd fast float %1313, -1.000000e+00
  %1315 = fmul fast float %1312, %1314
  %1316 = fcmp fast ogt float %1295, 0.000000e+00
  %1317 = select i1 %1316, float %1315, float 0.000000e+00
  %1318 = fadd fast float %1317, %1295
  %1319 = fadd fast float %497, 0x3FFDAA66E0000000
  %1320 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1321 = call float @dx.op.unary.f32(i32 23, float %1296)  ; Log(value)
  %1322 = fadd fast float %1321, -6.000000e+00
  %1323 = call float @dx.op.unary.f32(i32 21, float %1322)  ; Exp(value)
  %1324 = fmul fast float %1320, 2.000000e+00
  %1325 = fadd fast float %1324, -1.000000e+00
  %1326 = fmul fast float %1323, %1325
  %1327 = fcmp fast ogt float %1296, 0.000000e+00
  %1328 = select i1 %1327, float %1326, float 0.000000e+00
  %1329 = fadd fast float %1328, %1296
  %1330 = select i1 %100, float %1295, float %1318
  %1331 = select i1 %100, float %1296, float %1329
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1332 = call float @dx.op.binary.f32(i32 36, float %1307, float 3.225500e+04)  ; FMin(a,b)
  %1333 = call float @dx.op.binary.f32(i32 36, float %1330, float 3.225500e+04)  ; FMin(a,b)
  %1334 = call float @dx.op.binary.f32(i32 36, float %1331, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1334)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

