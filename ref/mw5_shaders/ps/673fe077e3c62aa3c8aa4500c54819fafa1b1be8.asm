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
; shader hash: 6e33ddc7abeb12f31975a5fe513031a9
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
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = add i32 %286, 0
  %288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %288, %dx.types.Handle %44, float %281, float %284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  br label %298

; <label>:291                                     ; preds = %229
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %345, label %584, label %346, !dx.controlflow.hints !61

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
  %582 = fmul fast float %580, %304
  %583 = fmul fast float %582, %581
  br label %584

; <label>:584                                     ; preds = %575, %343
  %585 = phi float [ %583, %575 ], [ %304, %343 ]
  %586 = phi float [ %577, %575 ], [ %22, %343 ]
  %587 = phi float [ %578, %575 ], [ %23, %343 ]
  %588 = phi float [ %579, %575 ], [ %24, %343 ]
  %589 = fmul fast float %586, %25
  %590 = fmul fast float %587, %25
  %591 = fmul fast float %588, %25
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 2
  %594 = fptosi float %42 to i32
  %595 = sitofp i32 %594 to float
  %596 = fadd fast float %593, %595
  %597 = fmul fast float %596, 0x3FE3C6EF40000000
  %598 = frem fast float %47, 2.560000e+02
  %599 = frem fast float %48, 2.560000e+02
  %600 = fptoui float %598 to i32
  %601 = fptoui float %599 to i32
  %602 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %600, i32 %601, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = fadd fast float %603, %597
  %605 = call float @dx.op.unary.f32(i32 22, float %604)  ; Frc(value)
  %606 = and i32 %167, 1
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %664, label %608, !dx.controlflow.hints !64

; <label>:608                                     ; preds = %584
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 2
  %611 = extractvalue %dx.types.ResRet.f32 %609, 3
  %612 = add i32 %164, 16
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = add i32 %164, 32
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = and i32 %167, 2
  %623 = icmp eq i32 %622, 0
  %624 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = call float @dx.op.unary.f32(i32 25, float %624)  ; Rsqrt(value)
  %626 = fmul fast float %625, %30
  %627 = fmul fast float %625, %31
  %628 = fmul fast float %625, %32
  %629 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = call float @dx.op.unary.f32(i32 25, float %629)  ; Rsqrt(value)
  %631 = fmul fast float %630, %82
  %632 = fmul fast float %630, %83
  %633 = fmul fast float %630, %84
  %634 = call float @dx.op.dot3.f32(i32 55, float %631, float %632, float %633, float %626, float %627, float %628)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = fmul fast float %634, %634
  %636 = fmul fast float %635, %610
  %637 = fadd fast float %636, %611
  %638 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  br i1 %623, label %639, label %649, !dx.controlflow.hints !65

; <label>:639                                     ; preds = %608
  %640 = extractvalue %dx.types.ResRet.f32 %609, 1
  %641 = extractvalue %dx.types.ResRet.f32 %609, 0
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %644 = fmul fast float %643, %629
  %645 = fsub fast float %641, %644
  %646 = fmul fast float %645, %640
  %647 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %648 = fmul fast float %647, %638
  br label %649

; <label>:649                                     ; preds = %639, %608
  %650 = phi float [ %648, %639 ], [ %638, %608 ]
  %651 = fsub fast float %614, %619
  %652 = fsub fast float %615, %620
  %653 = fsub fast float %616, %621
  %654 = fmul fast float %650, %651
  %655 = fmul fast float %650, %652
  %656 = fmul fast float %650, %653
  %657 = fadd fast float %654, %619
  %658 = fadd fast float %655, %620
  %659 = fadd fast float %656, %621
  %660 = fmul fast float %657, %589
  %661 = fmul fast float %658, %590
  %662 = fmul fast float %659, %591
  %663 = fmul fast float %650, %585
  br label %664

; <label>:664                                     ; preds = %649, %584
  %665 = phi float [ %663, %649 ], [ %585, %584 ]
  %666 = phi float [ %660, %649 ], [ %589, %584 ]
  %667 = phi float [ %661, %649 ], [ %590, %584 ]
  %668 = phi float [ %662, %649 ], [ %591, %584 ]
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add i32 %670, 0
  %672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %672, %dx.types.Handle %43, float %204, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = shl i32 %678, 4
  %680 = and i32 %679, 32752
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = lshr i32 %678, 7
  %683 = and i32 %682, 32752
  %684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %683)  ; LegacyF16ToF32(value)
  %685 = lshr i32 %678, 22
  %686 = shl nuw nsw i32 %685, 5
  %687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %686)  ; LegacyF16ToF32(value)
  %688 = fmul fast float %681, %674
  %689 = fmul fast float %684, %675
  %690 = fmul fast float %687, %676
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = fmul fast float %688, %692
  %694 = fmul fast float %689, %692
  %695 = fmul fast float %690, %692
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = lshr i32 %697, 22
  %699 = shl nuw nsw i32 %698, 5
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = fmul fast float %700, %693
  %702 = select i1 %147, float %701, float %693
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %709 = fmul fast float %702, %666
  %710 = fmul fast float %694, %667
  %711 = fmul fast float %695, %668
  %712 = call float @dx.op.dot3.f32(i32 55, float %709, float %710, float %711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %713 = select i1 %147, float 0.000000e+00, float %709
  %714 = select i1 %147, float %712, float %710
  %715 = select i1 %147, float 0.000000e+00, float %711
  %716 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %307, i32 %308, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = lshr i32 %717, 18
  %719 = uitofp i32 %718 to float
  %720 = fmul fast float %719, 0x3F4C00EBA0000000
  %721 = call float @dx.op.unary.f32(i32 21, float %720)  ; Exp(value)
  %722 = fadd fast float %721, -1.000000e+00
  %723 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %724 = extractvalue %dx.types.Dimensions %723, 0
  %725 = sitofp i32 %724 to float
  %726 = extractvalue %dx.types.Dimensions %723, 1
  %727 = sitofp i32 %726 to float
  %728 = fcmp fast oge float %305, %725
  %729 = fcmp fast oge float %306, %727
  %730 = or i1 %728, %729
  %731 = select i1 %730, float 0x4197782600000000, float %722
  %732 = icmp eq i32 %163, 3
  %733 = fcmp fast ogt float %42, %731
  %734 = and i1 %331, %733
  %735 = or i1 %732, %734
  %736 = icmp eq i32 %163, 2
  %737 = fcmp fast ole float %42, %731
  %738 = and i1 %736, %737
  %739 = or i1 %738, %735
  %740 = fmul fast float %586, %33
  %741 = fmul fast float %740, %702
  %742 = fmul fast float %741, %704
  %743 = fmul fast float %742, %708
  %744 = fmul fast float %587, %33
  %745 = fmul fast float %744, %694
  %746 = fmul fast float %745, %705
  %747 = fmul fast float %746, %708
  %748 = fmul fast float %588, %33
  %749 = fmul fast float %748, %695
  %750 = fmul fast float %749, %706
  %751 = fmul fast float %750, %708
  %752 = fadd fast float %743, %713
  %753 = fadd fast float %714, %747
  %754 = fadd fast float %751, %715
  %755 = fmul fast float %752, %665
  %756 = fmul fast float %753, %665
  %757 = fmul fast float %754, %665
  %758 = and i32 %167, 1048576
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %851, label %760, !dx.controlflow.hints !66

; <label>:760                                     ; preds = %664
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %763 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %764 = fmul fast float %762, %47
  %765 = fmul fast float %763, %48
  %766 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %767 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %768 = select i1 %739, i32 2, i32 0
  %769 = or i32 %768, 1
  %770 = uitofp i32 %769 to float
  %771 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %766, float %767, float %770, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = add nuw nsw i32 %768, 2
  %777 = uitofp i32 %776 to float
  %778 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %766, float %767, float %777, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  %782 = extractvalue %dx.types.ResRet.f32 %778, 3
  %783 = call float @dx.op.binary.f32(i32 35, float %773, float %774)  ; FMax(a,b)
  %784 = call float @dx.op.binary.f32(i32 35, float %772, float %783)  ; FMax(a,b)
  %785 = call float @dx.op.binary.f32(i32 35, float %784, float %775)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 36, float %780, float %781)  ; FMin(a,b)
  %787 = call float @dx.op.binary.f32(i32 36, float %779, float %786)  ; FMin(a,b)
  %788 = call float @dx.op.binary.f32(i32 36, float %787, float %782)  ; FMin(a,b)
  %789 = fmul fast float %785, 2.550000e+02
  %790 = fadd fast float %789, 0x3F70101020000000
  %791 = fptoui float %790 to i32
  %792 = fmul fast float %788, 2.550000e+02
  %793 = fadd fast float %792, 0x3F70101020000000
  %794 = fptoui float %793 to i32
  %795 = icmp ult i32 %791, %794
  br i1 %795, label %796, label %844

; <label>:796                                     ; preds = %760
  %797 = fcmp fast ogt float %41, 9.843750e-01
  %798 = fadd fast float %42, -4.000000e+00
  %799 = select i1 %797, float -4.000000e+00, float %798
  %800 = call float @dx.op.binary.f32(i32 35, float %799, float 0.000000e+00)  ; FMax(a,b)
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 0
  %803 = fadd fast float %802, %800
  %804 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %805 = fmul fast float %803, %804
  %806 = call float @dx.op.unary.f32(i32 23, float %805)  ; Log(value)
  %807 = extractvalue %dx.types.CBufRet.f32 %801, 3
  %808 = fmul fast float %807, %806
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %811 = fmul fast float %808, %810
  %812 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %813 = uitofp i32 %791 to float
  %814 = uitofp i32 %794 to float
  %815 = fadd fast float %813, 5.000000e-01
  %816 = fadd fast float %814, 5.000000e-01
  %817 = fmul fast float %810, %815
  %818 = fmul fast float %810, %816
  %819 = fadd fast float %817, 0x3F0FFB4800000000
  %820 = fadd fast float %818, 0xBF0FFB4800000000
  %821 = call float @dx.op.binary.f32(i32 35, float %812, float %819)  ; FMax(a,b)
  %822 = call float @dx.op.binary.f32(i32 36, float %821, float %820)  ; FMin(a,b)
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %827 = select i1 %739, float %826, float 0.000000e+00
  %828 = fmul fast float %824, %822
  %829 = fadd fast float %827, %828
  %830 = fadd fast float %827, %825
  %831 = fsub fast float %824, %825
  %832 = fadd fast float %831, %827
  %833 = call float @dx.op.binary.f32(i32 35, float %829, float %830)  ; FMax(a,b)
  %834 = call float @dx.op.binary.f32(i32 36, float %833, float %832)  ; FMin(a,b)
  %835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %766, float %767, float %834, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  %838 = extractvalue %dx.types.ResRet.f32 %835, 2
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %841 = fmul fast float %840, %836
  %842 = fmul fast float %840, %837
  %843 = fmul fast float %840, %838
  br label %844

; <label>:844                                     ; preds = %796, %760
  %845 = phi float [ %841, %796 ], [ 1.000000e+00, %760 ]
  %846 = phi float [ %842, %796 ], [ 1.000000e+00, %760 ]
  %847 = phi float [ %843, %796 ], [ 1.000000e+00, %760 ]
  %848 = fmul fast float %845, %755
  %849 = fmul fast float %846, %756
  %850 = fmul fast float %847, %757
  br label %851

; <label>:851                                     ; preds = %844, %664
  %852 = phi float [ %848, %844 ], [ %755, %664 ]
  %853 = phi float [ %849, %844 ], [ %756, %664 ]
  %854 = phi float [ %850, %844 ], [ %757, %664 ]
  %855 = and i32 %167, 2097152
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %861, label %857, !dx.controlflow.hints !67

; <label>:857                                     ; preds = %851
  %858 = add i32 %164, 192
  %859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  br label %864

; <label>:861                                     ; preds = %851
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 3
  br label %864

; <label>:864                                     ; preds = %861, %857
  %865 = phi float [ %860, %857 ], [ %863, %861 ]
  br i1 %734, label %866, label %950

; <label>:866                                     ; preds = %864
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 2
  %869 = extractvalue %dx.types.CBufRet.f32 %867, 3
  %870 = fmul fast float %868, %47
  %871 = fmul fast float %869, %48
  %872 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  %873 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %874 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %872, float %873, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = extractvalue %dx.types.ResRet.f32 %874, 3
  %879 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %872, float %873, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = extractvalue %dx.types.ResRet.f32 %879, 1
  %882 = extractvalue %dx.types.ResRet.f32 %879, 2
  %883 = extractvalue %dx.types.ResRet.f32 %879, 3
  %884 = call float @dx.op.binary.f32(i32 35, float %876, float %877)  ; FMax(a,b)
  %885 = call float @dx.op.binary.f32(i32 35, float %875, float %884)  ; FMax(a,b)
  %886 = call float @dx.op.binary.f32(i32 35, float %885, float %878)  ; FMax(a,b)
  %887 = call float @dx.op.binary.f32(i32 36, float %881, float %882)  ; FMin(a,b)
  %888 = call float @dx.op.binary.f32(i32 36, float %880, float %887)  ; FMin(a,b)
  %889 = call float @dx.op.binary.f32(i32 36, float %888, float %883)  ; FMin(a,b)
  %890 = fmul fast float %886, 2.550000e+02
  %891 = fadd fast float %890, 0x3F70101020000000
  %892 = fptoui float %891 to i32
  %893 = fmul fast float %889, 2.550000e+02
  %894 = fadd fast float %893, 0x3F70101020000000
  %895 = fptoui float %894 to i32
  %896 = icmp ult i32 %892, %895
  br i1 %896, label %897, label %939

; <label>:897                                     ; preds = %866
  %898 = fcmp fast ogt float %41, 9.843750e-01
  %899 = fadd fast float %42, -4.000000e+00
  %900 = select i1 %898, float -4.000000e+00, float %899
  %901 = call float @dx.op.binary.f32(i32 35, float %900, float 0.000000e+00)  ; FMax(a,b)
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = fadd fast float %903, %901
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = fmul fast float %904, %905
  %907 = call float @dx.op.unary.f32(i32 23, float %906)  ; Log(value)
  %908 = extractvalue %dx.types.CBufRet.f32 %902, 3
  %909 = fmul fast float %908, %907
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %912 = fmul fast float %909, %911
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = uitofp i32 %892 to float
  %915 = uitofp i32 %895 to float
  %916 = fadd fast float %914, 5.000000e-01
  %917 = fadd fast float %915, 5.000000e-01
  %918 = fmul fast float %911, %916
  %919 = fmul fast float %911, %917
  %920 = fadd fast float %918, 0x3F0FFB4800000000
  %921 = fadd fast float %919, 0xBF0FFB4800000000
  %922 = call float @dx.op.binary.f32(i32 35, float %913, float %920)  ; FMax(a,b)
  %923 = call float @dx.op.binary.f32(i32 36, float %922, float %921)  ; FMin(a,b)
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %927 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %928 = fmul fast float %925, %923
  %929 = fadd fast float %927, %928
  %930 = fadd fast float %927, %926
  %931 = fsub fast float %925, %926
  %932 = fadd fast float %931, %927
  %933 = call float @dx.op.binary.f32(i32 35, float %929, float %930)  ; FMax(a,b)
  %934 = call float @dx.op.binary.f32(i32 36, float %933, float %932)  ; FMin(a,b)
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %872, float %873, float %934, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  br label %939

; <label>:939                                     ; preds = %897, %866
  %940 = phi float [ %936, %897 ], [ 1.000000e+00, %866 ]
  %941 = phi float [ %937, %897 ], [ 1.000000e+00, %866 ]
  %942 = phi float [ %938, %897 ], [ 1.000000e+00, %866 ]
  %943 = call float @dx.op.dot3.f32(i32 55, float %940, float %941, float %942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %944 = select i1 %147, float %943, float %940
  %945 = select i1 %147, float %943, float %941
  %946 = select i1 %147, float 1.000000e+00, float %942
  %947 = fmul fast float %944, %852
  %948 = fmul fast float %945, %853
  %949 = fmul fast float %946, %854
  br label %950

; <label>:950                                     ; preds = %939, %864
  %951 = phi float [ %731, %939 ], [ %42, %864 ]
  %952 = phi float [ %947, %939 ], [ %852, %864 ]
  %953 = phi float [ %948, %939 ], [ %853, %864 ]
  %954 = phi float [ %949, %939 ], [ %854, %864 ]
  br i1 %739, label %1295, label %955

; <label>:955                                     ; preds = %950
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %26, float %27, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = call float @dx.op.dot3.f32(i32 55, float %957, float %958, float %959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = select i1 %147, float %960, float %957
  %962 = select i1 %147, float %960, float %958
  %963 = select i1 %147, float 1.000000e+00, float %959
  %964 = fmul fast float %961, %952
  %965 = fmul fast float %962, %953
  %966 = fmul fast float %963, %954
  %967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.i32 %967, 0
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %1295, label %970, !dx.controlflow.hints !68

; <label>:970                                     ; preds = %955
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %974 = fmul fast float %972, %47
  %975 = fmul fast float %973, %48
  %976 = fmul fast float %974, 2.000000e+00
  %977 = fmul fast float %975, 2.000000e+00
  %978 = fsub fast float 1.000000e+00, %976
  %979 = fsub fast float 1.000000e+00, %977
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 0
  %982 = extractvalue %dx.types.CBufRet.f32 %980, 1
  %983 = extractvalue %dx.types.CBufRet.f32 %980, 2
  %984 = fmul fast float %978, %981
  %985 = fmul fast float %978, %982
  %986 = fmul fast float %978, %983
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = fmul fast float %979, %988
  %992 = fmul fast float %979, %989
  %993 = fmul fast float %979, %990
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %998 = fadd fast float %991, %995
  %999 = fadd fast float %998, %984
  %1000 = fadd fast float %992, %996
  %1001 = fadd fast float %1000, %985
  %1002 = fadd fast float %993, %997
  %1003 = fadd fast float %1002, %986
  %1004 = fmul fast float %999, %951
  %1005 = fmul fast float %1001, %951
  %1006 = fmul fast float %1003, %951
  %1007 = fmul fast float %1004, %1004
  %1008 = fmul fast float %1005, %1005
  %1009 = fadd fast float %1007, %1008
  %1010 = fmul fast float %1006, %1006
  %1011 = fadd fast float %1009, %1010
  %1012 = call float @dx.op.unary.f32(i32 24, float %1011)  ; Sqrt(value)
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = fsub fast float %1012, %1014
  %1016 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1017 = fmul fast float %1015, %1016
  %1018 = call float @dx.op.unary.f32(i32 7, float %1017)  ; Saturate(value)
  %1019 = fadd fast float %1018, -5.000000e-01
  %1020 = fmul fast float %1019, 2.000000e+00
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1023 = call float @dx.op.binary.f32(i32 36, float %1022, float %1020)  ; FMin(a,b)
  %1024 = fsub fast float -0.000000e+00, %1022
  %1025 = fcmp fast ogt float %1023, %1024
  br i1 %1025, label %1026, label %1295, !dx.controlflow.hints !69

; <label>:1026                                    ; preds = %970
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1029 = fcmp fast ogt float %1028, 0.000000e+00
  br i1 %1029, label %1030, label %1105, !dx.controlflow.hints !70

; <label>:1030                                    ; preds = %1026
  %1031 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1032 = extractvalue %dx.types.Dimensions %1031, 0
  %1033 = sitofp i32 %1032 to float
  %1034 = extractvalue %dx.types.Dimensions %1031, 1
  %1035 = sitofp i32 %1034 to float
  %1036 = fmul fast float %974, %1033
  %1037 = fmul fast float %975, %1035
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1040 = fsub fast float -0.000000e+00, %1039
  %1041 = fptoui float %1040 to i32
  %1042 = fptoui float %1036 to i32
  %1043 = fptoui float %1037 to i32
  %1044 = and i32 %1041, 31
  %1045 = lshr i32 %1042, %1044
  %1046 = lshr i32 %1043, %1044
  %1047 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %1041, i32 %1045, i32 %1046, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = fcmp fast olt float %1048, -1.000000e+00
  %1050 = fcmp fast ogt float %1048, -1.000000e+00
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1053 = select i1 %1050, float %1052, float 1.000000e+00
  %1054 = fadd fast float %1048, 1.000000e+00
  %1055 = fmul fast float %1053, %1054
  %1056 = call float @dx.op.unary.f32(i32 6, float %1055)  ; FAbs(value)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1058 = fcmp fast oge float %1056, %1057
  %1059 = select i1 %1058, float 0x4197782600000000, float %1056
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.CBufRet.f32 %1060, 2
  %1064 = select i1 %1049, float %1061, float %981
  %1065 = select i1 %1049, float %1062, float %982
  %1066 = select i1 %1049, float %1063, float %983
  %1067 = fmul fast float %1064, %978
  %1068 = fmul fast float %1065, %978
  %1069 = fmul fast float %1066, %978
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.CBufRet.f32 %1070, 1
  %1073 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1074 = select i1 %1049, float %1071, float %988
  %1075 = select i1 %1049, float %1072, float %989
  %1076 = select i1 %1049, float %1073, float %990
  %1077 = fmul fast float %1074, %979
  %1078 = fmul fast float %1075, %979
  %1079 = fmul fast float %1076, %979
  %1080 = fadd fast float %1077, %1067
  %1081 = fadd fast float %1078, %1068
  %1082 = fadd fast float %1079, %1069
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1087 = select i1 %1049, float %1084, float %995
  %1088 = select i1 %1049, float %1085, float %996
  %1089 = select i1 %1049, float %1086, float %997
  %1090 = fadd fast float %1080, %1087
  %1091 = fadd fast float %1081, %1088
  %1092 = fadd fast float %1082, %1089
  %1093 = fmul fast float %1090, %1059
  %1094 = fmul fast float %1091, %1059
  %1095 = fmul fast float %1092, %1059
  %1096 = fmul fast float %1093, %1093
  %1097 = fmul fast float %1094, %1094
  %1098 = fadd fast float %1096, %1097
  %1099 = fmul fast float %1095, %1095
  %1100 = fadd fast float %1098, %1099
  %1101 = call float @dx.op.unary.f32(i32 24, float %1100)  ; Sqrt(value)
  %1102 = fsub fast float %1101, %1014
  %1103 = fmul fast float %1102, %1016
  %1104 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  br label %1105

; <label>:1105                                    ; preds = %1030, %1026
  %1106 = phi float [ %1104, %1030 ], [ 1.000000e+00, %1026 ]
  %1107 = fmul fast float %1023, 5.000000e-01
  %1108 = fadd fast float %1107, 5.000000e-01
  %1109 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1110 = call float @dx.op.unary.f32(i32 27, float %1109)  ; Round_ni(value)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1109)  ; Frc(value)
  %1112 = fmul fast float %1111, 2.000000e+00
  %1113 = fadd fast float %1112, -1.000000e+00
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %974, float %975, float %1110, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1119 = fadd fast float %1115, -5.000000e-01
  %1120 = fadd fast float %1117, -5.000000e-01
  %1121 = fmul fast float %1119, 0xBFD5555560000000
  %1122 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1120, float %1121)  ; FMad(a,b,c)
  %1123 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1116, float 0.000000e+00)  ; FMad(a,b,c)
  %1124 = fadd fast float %1123, %1118
  %1125 = fmul fast float %1119, -7.500000e-01
  %1126 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1120, float %1125)  ; FMad(a,b,c)
  %1127 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1116, float 0.000000e+00)  ; FMad(a,b,c)
  %1128 = fadd fast float %1127, %1118
  %1129 = call float @dx.op.binary.f32(i32 35, float %1122, float -1.000000e+00)  ; FMax(a,b)
  %1130 = call float @dx.op.binary.f32(i32 35, float %1124, float -1.000000e+00)  ; FMax(a,b)
  %1131 = call float @dx.op.binary.f32(i32 35, float %1126, float -1.000000e+00)  ; FMax(a,b)
  %1132 = call float @dx.op.binary.f32(i32 35, float %1128, float -1.000000e+00)  ; FMax(a,b)
  %1133 = call float @dx.op.binary.f32(i32 36, float %1129, float 1.000000e+00)  ; FMin(a,b)
  %1134 = call float @dx.op.binary.f32(i32 36, float %1130, float 1.000000e+00)  ; FMin(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1131, float 1.000000e+00)  ; FMin(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1132, float 1.000000e+00)  ; FMin(a,b)
  %1137 = fcmp fast olt float %1133, 0x3FEFFF8020000000
  br i1 %1137, label %1138, label %1253, !dx.controlflow.hints !71

; <label>:1138                                    ; preds = %1105
  %1139 = extractvalue %dx.types.CBufRet.f32 %1021, 3
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1144 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1145 = fsub fast float %1141, %1133
  %1146 = fsub fast float %1142, %1134
  %1147 = fsub fast float %1143, %1135
  %1148 = fsub fast float %1144, %1136
  %1149 = fmul fast float %1145, %1139
  %1150 = fmul fast float %1146, %1139
  %1151 = fmul fast float %1147, %1139
  %1152 = fmul fast float %1148, %1139
  %1153 = fadd fast float %1149, %1133
  %1154 = fadd fast float %1150, %1134
  %1155 = fsub fast float -0.000000e+00, %1154
  %1156 = fadd fast float %1151, %1135
  %1157 = fadd fast float %1152, %1136
  %1158 = fmul fast float %1153, %1153
  %1159 = fsub fast float %1154, %1158
  %1160 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1159)  ; FMax(a,b)
  %1161 = fdiv fast float 1.000000e+00, %1160
  %1162 = fmul fast float %1154, %1153
  %1163 = fsub fast float %1156, %1162
  %1164 = fsub fast float %1113, %1153
  %1165 = fmul fast float %1113, %1113
  %1166 = fsub fast float %1165, %1154
  %1167 = fmul fast float %1164, %1161
  %1168 = fmul fast float %1167, %1163
  %1169 = fsub fast float %1166, %1168
  %1170 = fmul fast float %1154, %1154
  %1171 = fsub fast float %1157, %1170
  %1172 = fmul fast float %1163, %1163
  %1173 = fmul fast float %1172, %1161
  %1174 = fsub fast float %1171, %1173
  %1175 = fdiv fast float %1169, %1174
  %1176 = fmul fast float %1163, %1175
  %1177 = fsub fast float %1164, %1176
  %1178 = fmul fast float %1177, %1161
  %1179 = fmul fast float %1178, %1153
  %1180 = fsub fast float 1.000000e+00, %1179
  %1181 = fmul fast float %1154, %1175
  %1182 = fsub fast float %1180, %1181
  %1183 = fmul fast float %1178, %1178
  %1184 = fmul fast float %1175, 4.000000e+00
  %1185 = fmul fast float %1184, %1182
  %1186 = fsub fast float %1183, %1185
  %1187 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1188 = fcmp fast oge float %1178, 0.000000e+00
  %1189 = fsub fast float -0.000000e+00, %1187
  %1190 = select i1 %1188, float %1189, float %1187
  %1191 = fsub fast float %1190, %1178
  %1192 = fdiv fast float %1191, %1175
  %1193 = fdiv fast float %1182, %1191
  %1194 = fmul fast float %1192, 5.000000e-01
  %1195 = fmul fast float %1193, 2.000000e+00
  %1196 = select i1 %1188, float %1194, float %1195
  %1197 = select i1 %1188, float %1195, float %1194
  %1198 = call float @dx.op.binary.f32(i32 35, float %1196, float %1197)  ; FMax(a,b)
  %1199 = call float @dx.op.binary.f32(i32 36, float %1196, float %1197)  ; FMin(a,b)
  %1200 = fcmp fast ogt float %1113, %1199
  br i1 %1200, label %1201, label %1211

; <label>:1201                                    ; preds = %1138
  %1202 = fsub fast float %1113, %1199
  %1203 = fsub fast float %1198, %1199
  %1204 = fmul fast float %1202, %1203
  %1205 = fmul fast float %1198, %1113
  %1206 = fadd fast float %1198, %1113
  %1207 = fmul fast float %1206, %1153
  %1208 = fadd fast float %1205, %1154
  %1209 = fsub fast float %1208, %1207
  %1210 = fdiv fast float %1209, %1204
  br label %1211

; <label>:1211                                    ; preds = %1201, %1138
  %1212 = phi float [ %1210, %1201 ], [ 0.000000e+00, %1138 ]
  %1213 = fcmp fast ogt float %1113, %1198
  %1214 = fsub fast float %1113, %1198
  br i1 %1213, label %1215, label %1225

; <label>:1215                                    ; preds = %1211
  %1216 = fsub fast float %1198, %1199
  %1217 = fmul fast float %1216, %1214
  %1218 = fmul fast float %1199, %1113
  %1219 = fadd fast float %1199, %1113
  %1220 = fmul fast float %1219, %1153
  %1221 = fsub fast float %1155, %1218
  %1222 = fadd fast float %1221, %1220
  %1223 = fdiv fast float %1222, %1217
  %1224 = fadd fast float %1223, %1212
  br label %1225

; <label>:1225                                    ; preds = %1215, %1211
  %1226 = phi float [ %1224, %1215 ], [ %1212, %1211 ]
  %1227 = fsub fast float %1113, %1199
  %1228 = fmul fast float %1227, %1214
  %1229 = fmul fast float %1199, %1198
  %1230 = fadd fast float %1199, %1198
  %1231 = fmul fast float %1230, %1153
  %1232 = fadd fast float %1229, %1154
  %1233 = fsub fast float %1232, %1231
  %1234 = fdiv fast float %1233, %1228
  %1235 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1236 = fcmp fast oeq float %865, 0.000000e+00
  %1237 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1238 = fcmp fast oeq float %1237, 0.000000e+00
  %1239 = or i1 %1236, %1238
  %1240 = fmul fast float %1237, 2.000000e+00
  %1241 = fadd fast float %1022, %1023
  %1242 = fdiv fast float %1241, %1240
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = fmul fast float %1243, 2.000000e+00
  %1245 = fsub fast float 3.000000e+00, %1244
  %1246 = fmul fast float %1243, %1243
  %1247 = fmul fast float %1246, %1245
  %1248 = select i1 %1239, float 1.000000e+00, float %1247
  %1249 = fmul fast float %1234, %865
  %1250 = fadd fast float %1235, %1249
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1252 = fmul fast float %1248, %1251
  br label %1253

; <label>:1253                                    ; preds = %1225, %1105
  %1254 = phi float [ %1252, %1225 ], [ 0.000000e+00, %1105 ]
  %1255 = fsub fast float 1.000000e+00, %1254
  %1256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %974, float %975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.i32 %1258, 2
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1266, label %1261

; <label>:1261                                    ; preds = %1253
  %1262 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1263 = fadd fast float %1257, -1.000000e+00
  %1264 = fmul fast float %1262, %1263
  %1265 = fadd fast float %1264, 1.000000e+00
  br label %1266

; <label>:1266                                    ; preds = %1261, %1253
  %1267 = phi float [ %1265, %1261 ], [ %1255, %1253 ]
  br i1 %1029, label %1268, label %1286

; <label>:1268                                    ; preds = %1266
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 1
  %1271 = fsub fast float %1106, %1270
  %1272 = call float @dx.op.unary.f32(i32 7, float %1271)  ; Saturate(value)
  %1273 = fsub fast float %1106, %1028
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = fsub fast float %1272, %1274
  %1276 = fsub fast float %1108, %1274
  %1277 = fdiv fast float %1276, %1275
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fmul fast float %1278, 2.000000e+00
  %1280 = fsub fast float 3.000000e+00, %1279
  %1281 = fsub fast float %1257, %1267
  %1282 = fmul fast float %1278, %1278
  %1283 = fmul fast float %1282, %1281
  %1284 = fmul fast float %1283, %1280
  %1285 = fadd fast float %1284, %1267
  br label %1286

; <label>:1286                                    ; preds = %1268, %1266
  %1287 = phi float [ %1285, %1268 ], [ %1267, %1266 ]
  %1288 = call float @dx.op.binary.f32(i32 35, float %1257, float %1287)  ; FMax(a,b)
  %1289 = call float @dx.op.dot3.f32(i32 55, float %1288, float %1288, float %1288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1290 = select i1 %147, float %1289, float %1288
  %1291 = select i1 %147, float 1.000000e+00, float %1288
  %1292 = fmul fast float %1290, %964
  %1293 = fmul fast float %1290, %965
  %1294 = fmul fast float %1291, %966
  br label %1295

; <label>:1295                                    ; preds = %1286, %970, %955, %950
  %1296 = phi float [ %952, %950 ], [ %964, %955 ], [ %1292, %1286 ], [ %964, %970 ]
  %1297 = phi float [ %953, %950 ], [ %965, %955 ], [ %1293, %1286 ], [ %965, %970 ]
  %1298 = phi float [ %954, %950 ], [ %966, %955 ], [ %1294, %1286 ], [ %966, %970 ]
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 2
  %1301 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1302 = fmul fast float %1300, %47
  %1303 = fmul fast float %1301, %48
  %1304 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1305 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1306 = select i1 %739, i32 2, i32 0
  %1307 = or i32 %1306, 1
  %1308 = uitofp i32 %1307 to float
  %1309 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1304, float %1305, float %1308, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.ResRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.ResRet.f32 %1309, 2
  %1313 = extractvalue %dx.types.ResRet.f32 %1309, 3
  %1314 = add nuw nsw i32 %1306, 2
  %1315 = uitofp i32 %1314 to float
  %1316 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1304, float %1305, float %1315, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = extractvalue %dx.types.ResRet.f32 %1316, 3
  %1321 = call float @dx.op.binary.f32(i32 35, float %1311, float %1312)  ; FMax(a,b)
  %1322 = call float @dx.op.binary.f32(i32 35, float %1310, float %1321)  ; FMax(a,b)
  %1323 = call float @dx.op.binary.f32(i32 35, float %1322, float %1313)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 36, float %1318, float %1319)  ; FMin(a,b)
  %1325 = call float @dx.op.binary.f32(i32 36, float %1317, float %1324)  ; FMin(a,b)
  %1326 = call float @dx.op.binary.f32(i32 36, float %1325, float %1320)  ; FMin(a,b)
  %1327 = fmul fast float %1323, 2.550000e+02
  %1328 = fadd fast float %1327, 0x3F70101020000000
  %1329 = fptoui float %1328 to i32
  %1330 = fmul fast float %1326, 2.550000e+02
  %1331 = fadd fast float %1330, 0x3F70101020000000
  %1332 = fptoui float %1331 to i32
  %1333 = icmp ult i32 %1329, %1332
  br i1 %1333, label %1334, label %1377

; <label>:1334                                    ; preds = %1295
  %1335 = fcmp fast ogt float %41, 9.843750e-01
  %1336 = fadd fast float %951, -4.000000e+00
  %1337 = select i1 %1335, float -4.000000e+00, float %1336
  %1338 = call float @dx.op.binary.f32(i32 35, float %1337, float 0.000000e+00)  ; FMax(a,b)
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = fadd fast float %1340, %1338
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = fmul fast float %1341, %1342
  %1344 = call float @dx.op.unary.f32(i32 23, float %1343)  ; Log(value)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  %1346 = fmul fast float %1345, %1344
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1349 = fmul fast float %1346, %1348
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1351 = uitofp i32 %1329 to float
  %1352 = uitofp i32 %1332 to float
  %1353 = fadd fast float %1351, 5.000000e-01
  %1354 = fadd fast float %1352, 5.000000e-01
  %1355 = fmul fast float %1348, %1353
  %1356 = fmul fast float %1348, %1354
  %1357 = fadd fast float %1355, 0x3F0FFB4800000000
  %1358 = fadd fast float %1356, 0xBF0FFB4800000000
  %1359 = call float @dx.op.binary.f32(i32 35, float %1350, float %1357)  ; FMax(a,b)
  %1360 = call float @dx.op.binary.f32(i32 36, float %1359, float %1358)  ; FMin(a,b)
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 2
  %1364 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1365 = select i1 %739, float %1364, float 0.000000e+00
  %1366 = fmul fast float %1362, %1360
  %1367 = fadd fast float %1365, %1366
  %1368 = fadd fast float %1365, %1363
  %1369 = fsub fast float %1362, %1363
  %1370 = fadd fast float %1369, %1365
  %1371 = call float @dx.op.binary.f32(i32 35, float %1367, float %1368)  ; FMax(a,b)
  %1372 = call float @dx.op.binary.f32(i32 36, float %1371, float %1370)  ; FMin(a,b)
  %1373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1304, float %1305, float %1372, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.ResRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.ResRet.f32 %1373, 2
  br label %1377

; <label>:1377                                    ; preds = %1334, %1295
  %1378 = phi float [ %1374, %1334 ], [ 1.000000e+00, %1295 ]
  %1379 = phi float [ %1375, %1334 ], [ 1.000000e+00, %1295 ]
  %1380 = phi float [ %1376, %1334 ], [ 1.000000e+00, %1295 ]
  %1381 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1382 = select i1 %147, float %1381, float %1378
  %1383 = select i1 %147, float %1381, float %1379
  %1384 = fmul fast float %1382, %1296
  %1385 = fmul fast float %1383, %1297
  %1386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1387 = extractvalue %dx.types.CBufRet.f32 %1386, 0
  br i1 %147, label %1388, label %1391

; <label>:1388                                    ; preds = %1377
  %1389 = fadd fast float %1384, %1385
  %1390 = fmul fast float %1387, %1389
  br label %1401

; <label>:1391                                    ; preds = %1377
  %1392 = fmul fast float %1380, %1298
  %1393 = fmul fast float %1387, %1384
  %1394 = fmul fast float %1387, %1385
  %1395 = fmul fast float %1392, %1387
  %1396 = call float @dx.op.binary.f32(i32 35, float %1394, float %1395)  ; FMax(a,b)
  %1397 = call float @dx.op.binary.f32(i32 35, float %1393, float %1396)  ; FMax(a,b)
  %1398 = call float @dx.op.binary.f32(i32 35, float %1397, float 0.000000e+00)  ; FMax(a,b)
  %1399 = fcmp fast ugt float %1398, 0x3F10000000000000
  br i1 %1399, label %1401, label %1400

; <label>:1400                                    ; preds = %1391
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1401

; <label>:1401                                    ; preds = %1400, %1391, %1388
  %1402 = phi float [ %1390, %1388 ], [ %1393, %1400 ], [ %1393, %1391 ]
  %1403 = phi float [ 0.000000e+00, %1388 ], [ %1394, %1400 ], [ %1394, %1391 ]
  %1404 = phi float [ 0.000000e+00, %1388 ], [ %1395, %1400 ], [ %1395, %1391 ]
  %1405 = fadd fast float %605, 0x3FE3C6EF40000000
  %1406 = call float @dx.op.unary.f32(i32 22, float %1405)  ; Frc(value)
  %1407 = call float @dx.op.unary.f32(i32 23, float %1402)  ; Log(value)
  %1408 = fadd fast float %1407, -7.000000e+00
  %1409 = call float @dx.op.unary.f32(i32 21, float %1408)  ; Exp(value)
  %1410 = fmul fast float %1406, 2.000000e+00
  %1411 = fadd fast float %1410, -1.000000e+00
  %1412 = fmul fast float %1409, %1411
  %1413 = fcmp fast ogt float %1402, 0.000000e+00
  %1414 = select i1 %1413, float %1412, float 0.000000e+00
  %1415 = fadd fast float %1414, %1402
  %1416 = fadd fast float %605, 0x3FF3C6EF40000000
  %1417 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1418 = call float @dx.op.unary.f32(i32 23, float %1403)  ; Log(value)
  %1419 = fadd fast float %1418, -7.000000e+00
  %1420 = call float @dx.op.unary.f32(i32 21, float %1419)  ; Exp(value)
  %1421 = fmul fast float %1417, 2.000000e+00
  %1422 = fadd fast float %1421, -1.000000e+00
  %1423 = fmul fast float %1420, %1422
  %1424 = fcmp fast ogt float %1403, 0.000000e+00
  %1425 = select i1 %1424, float %1423, float 0.000000e+00
  %1426 = fadd fast float %1425, %1403
  %1427 = fadd fast float %605, 0x3FFDAA66E0000000
  %1428 = call float @dx.op.unary.f32(i32 22, float %1427)  ; Frc(value)
  %1429 = call float @dx.op.unary.f32(i32 23, float %1404)  ; Log(value)
  %1430 = fadd fast float %1429, -6.000000e+00
  %1431 = call float @dx.op.unary.f32(i32 21, float %1430)  ; Exp(value)
  %1432 = fmul fast float %1428, 2.000000e+00
  %1433 = fadd fast float %1432, -1.000000e+00
  %1434 = fmul fast float %1431, %1433
  %1435 = fcmp fast ogt float %1404, 0.000000e+00
  %1436 = select i1 %1435, float %1434, float 0.000000e+00
  %1437 = fadd fast float %1436, %1404
  %1438 = select i1 %147, float %1403, float %1426
  %1439 = select i1 %147, float %1404, float %1437
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1440 = call float @dx.op.binary.f32(i32 36, float %1415, float 3.225500e+04)  ; FMin(a,b)
  %1441 = call float @dx.op.binary.f32(i32 36, float %1438, float 3.225500e+04)  ; FMin(a,b)
  %1442 = call float @dx.op.binary.f32(i32 36, float %1439, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1440)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1441)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1442)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[34 x i32] [i32 32, i32 4, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0]}
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

