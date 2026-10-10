;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float   xyzw
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
; shader hash: 07105caa33ad0a48641c693eb3964308
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture    byte         r/o      T9             t1     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fmul fast float %43, %37
  %45 = fmul fast float %43, %38
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %44, 2.000000e+00
  %50 = fmul fast float %49, %47
  %51 = fmul fast float %45, 2.000000e+00
  %52 = fmul fast float %51, %48
  %53 = fsub fast float 1.000000e+00, %50
  %54 = fsub fast float 1.000000e+00, %52
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %53, %56
  %60 = fmul fast float %53, %57
  %61 = fmul fast float %53, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %54, %63
  %67 = fmul fast float %54, %64
  %68 = fmul fast float %54, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fadd fast float %66, %70
  %74 = fadd fast float %73, %59
  %75 = fadd fast float %67, %71
  %76 = fadd fast float %75, %60
  %77 = fadd fast float %68, %72
  %78 = fadd fast float %77, %61
  %79 = fmul fast float %74, %39
  %80 = fmul fast float %76, %39
  %81 = fmul fast float %78, %39
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.i32 %83, 3
  %85 = and i32 %84, 3
  %86 = icmp ne i32 %85, 0
  %87 = and i32 %84, 4
  %88 = icmp ne i32 %87, 0
  %89 = and i1 %86, %88
  br i1 %89, label %90, label %101

; <label>:90                                      ; preds = %0
  %91 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %92 = fmul fast float %91, %45
  %93 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %94 = fmul fast float %93, %44
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %94, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast olt float %97, %99
  br label %104

; <label>:101                                     ; preds = %0
  %102 = icmp eq i32 %87, 0
  %103 = and i1 %86, %102
  br label %104

; <label>:104                                     ; preds = %101, %90
  %105 = phi i1 [ %100, %90 ], [ %103, %101 ]
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, %44
  %110 = fmul fast float %108, %45
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 114688
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %109, float 0.000000e+00
  %116 = select i1 %114, float %110, float 0.000000e+00
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, 2.550000e+02
  %120 = fptoui float %119 to i32
  %121 = select i1 %114, i32 %120, i32 0
  %122 = mul i32 %14, 208
  %123 = add i32 %122, 188
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %84, 114688
  %127 = and i32 %84, 8
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
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %139, %44
  %142 = fmul fast float %140, %45
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
  %162 = phi float [ %32, %134 ], [ %141, %147 ], [ %160, %155 ], [ %141, %153 ]
  %163 = phi float [ %33, %134 ], [ %152, %147 ], [ %142, %155 ], [ %142, %153 ]
  %164 = and i32 %125, 16
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %165, float 1.000000e+00, float %36
  %167 = icmp eq i32 %164, 0
  br i1 %167, label %187, label %168, !dx.controlflow.hints !54

; <label>:168                                     ; preds = %161
  %169 = add i32 %122, 64
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = fadd fast float %171, 1.000000e+00
  %173 = fmul fast float %172, %36
  %174 = fsub fast float %173, %171
  %175 = fsub fast float %172, %174
  %176 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %177 = fsub fast float 1.000000e+00, %173
  %178 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %179 = fsub fast float %176, %178
  %180 = fsub fast float %166, %178
  %181 = fdiv fast float %180, %179
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fmul fast float %182, 2.000000e+00
  %184 = fsub fast float 3.000000e+00, %183
  %185 = fmul fast float %182, %182
  %186 = fmul fast float %185, %184
  br label %187

; <label>:187                                     ; preds = %168, %161
  %188 = phi float [ %186, %168 ], [ %166, %161 ]
  %189 = and i32 %125, 1024
  %190 = icmp eq i32 %189, 0
  %191 = add i32 %15, 76
  br i1 %190, label %224, label %192, !dx.controlflow.hints !55

; <label>:192                                     ; preds = %187
  %193 = add i32 %122, 48
  %194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = extractvalue %dx.types.ResRet.f32 %194, 1
  %197 = fadd fast float %34, -5.000000e-01
  %198 = fmul fast float %197, 2.000000e+00
  %199 = fmul fast float %26, %198
  %200 = fmul fast float %27, %198
  %201 = fmul fast float %199, %196
  %202 = fmul fast float %200, %196
  %203 = call float @dx.op.dot2.f32(i32 54, float %26, float %27, float %26, float %27)  ; Dot2(ax,ay,bx,by)
  %204 = call float @dx.op.unary.f32(i32 25, float %203)  ; Rsqrt(value)
  %205 = fmul fast float %201, %204
  %206 = fmul fast float %202, %204
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = extractvalue %dx.types.CBufRet.f32 %207, 1
  %210 = fsub fast float %79, %201
  %211 = fadd fast float %210, %208
  %212 = fadd fast float %211, %205
  %213 = fsub fast float %80, %202
  %214 = fadd fast float %213, %209
  %215 = fadd fast float %214, %206
  %216 = fmul fast float %212, %195
  %217 = fmul fast float %215, %195
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = add i32 %219, 0
  %221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %221, %dx.types.Handle %41, float %217, float %216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  br label %231

; <label>:224                                     ; preds = %187
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = add i32 %226, 0
  %228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %228, %dx.types.Handle %41, float %34, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  br label %231

; <label>:231                                     ; preds = %224, %192
  %232 = phi float [ %223, %192 ], [ %230, %224 ]
  %233 = fmul fast float %232, %188
  %234 = fcmp fast ogt float %233, 0.000000e+00
  br i1 %234, label %236, label %235

; <label>:235                                     ; preds = %231
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %236

; <label>:236                                     ; preds = %235, %231
  %237 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %238 = fmul fast float %44, 5.000000e-01
  %239 = fmul fast float %45, 5.000000e-01
  %240 = fptosi float %238 to i32
  %241 = fptosi float %239 to i32
  %242 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = lshr i32 %243, 18
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F4C00EBA0000000
  %247 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %248 = fadd fast float %247, -1.000000e+00
  %249 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %250 = extractvalue %dx.types.Dimensions %249, 0
  %251 = sitofp i32 %250 to float
  %252 = extractvalue %dx.types.Dimensions %249, 1
  %253 = sitofp i32 %252 to float
  %254 = fcmp fast oge float %238, %251
  %255 = fcmp fast oge float %239, %253
  %256 = or i1 %254, %255
  %257 = select i1 %256, float 0x4197782600000000, float %248
  %258 = fsub fast float %257, %39
  %259 = fcmp fast ogt float %258, 0.000000e+00
  %260 = and i32 %121, -2
  %261 = icmp eq i32 %260, 2
  %262 = and i1 %261, %259
  %263 = xor i1 %259, true
  %264 = icmp eq i32 %121, 1
  %265 = and i1 %264, %263
  %266 = or i1 %262, %265
  %267 = and i32 %125, 262144
  %268 = icmp ne i32 %267, 0
  %269 = and i1 %268, %266
  %270 = xor i1 %266, true
  %271 = and i32 %125, 131072
  %272 = icmp ne i32 %271, 0
  %273 = and i1 %272, %270
  %274 = or i1 %269, %273
  br i1 %274, label %275, label %276

; <label>:275                                     ; preds = %236
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %276

; <label>:276                                     ; preds = %275, %236
  %277 = and i32 %125, 32
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %528, label %279, !dx.controlflow.hints !56

; <label>:279                                     ; preds = %276
  %280 = add i32 %122, 80
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = extractvalue %dx.types.ResRet.f32 %281, 2
  %285 = extractvalue %dx.types.ResRet.f32 %281, 3
  %286 = add i32 %122, 96
  %287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = add i32 %122, 112
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = extractvalue %dx.types.ResRet.f32 %292, 3
  %297 = add i32 %122, 128
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 4096
  %306 = icmp ne i32 %305, 0
  %307 = fcmp fast une float %290, 0.000000e+00
  %308 = and i32 %304, 64
  %309 = icmp ne i32 %308, 0
  %310 = and i32 %304, 128
  %311 = icmp eq i32 %310, 0
  %312 = and i32 %304, 2048
  %313 = icmp eq i32 %312, 0
  %314 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %315 = extractvalue %dx.types.Dimensions %314, 0
  %316 = sitofp i32 %315 to float
  %317 = extractvalue %dx.types.Dimensions %314, 1
  %318 = sitofp i32 %317 to float
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 3
  %322 = fmul fast float %320, %44
  %323 = fmul fast float %321, %45
  %324 = fmul fast float %322, %316
  %325 = fmul fast float %323, %318
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %328 = fsub fast float -0.000000e+00, %327
  %329 = fptoui float %328 to i32
  %330 = fptoui float %324 to i32
  %331 = fptoui float %325 to i32
  %332 = and i32 %329, 31
  %333 = lshr i32 %330, %332
  %334 = lshr i32 %331, %332
  %335 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %329, i32 %333, i32 %334, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = fcmp fast ogt float %336, -1.000000e+00
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %340 = select i1 %337, float %339, float 1.000000e+00
  %341 = fadd fast float %336, 1.000000e+00
  %342 = fmul fast float %340, %341
  %343 = call float @dx.op.unary.f32(i32 6, float %342)  ; FAbs(value)
  %344 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %345 = fcmp fast oge float %343, %344
  %346 = select i1 %345, float 0x4197782600000000, float %343
  br i1 %313, label %424, label %347, !dx.controlflow.hints !57

; <label>:347                                     ; preds = %279
  %348 = fmul fast float %49, %320
  %349 = fmul fast float %51, %321
  %350 = fsub fast float 1.000000e+00, %348
  %351 = fsub fast float 1.000000e+00, %349
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %356 = fmul fast float %350, %353
  %357 = fmul fast float %350, %354
  %358 = fmul fast float %350, %355
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = fmul fast float %351, %360
  %364 = fmul fast float %351, %361
  %365 = fmul fast float %351, %362
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %369 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %370 = fadd fast float %363, %367
  %371 = fadd fast float %370, %356
  %372 = fadd fast float %364, %368
  %373 = fadd fast float %372, %357
  %374 = fadd fast float %365, %369
  %375 = fadd fast float %374, %358
  %376 = fmul fast float %371, %346
  %377 = fmul fast float %373, %346
  %378 = fmul fast float %375, %346
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = extractvalue %dx.types.CBufRet.f32 %379, 1
  %382 = extractvalue %dx.types.CBufRet.f32 %379, 2
  %383 = fsub fast float %380, %16
  %384 = fadd fast float %383, %376
  %385 = fsub fast float %381, %17
  %386 = fadd fast float %385, %377
  %387 = fsub fast float %382, %18
  %388 = fadd fast float %387, %378
  %389 = fmul fast float %19, %19
  %390 = call float @dx.op.dot3.f32(i32 55, float %384, float %386, float %388, float %384, float %386, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = fsub fast float %389, %390
  %392 = fmul fast float %289, %389
  %393 = fmul fast float %288, %389
  %394 = fcmp fast olt float %391, %392
  %395 = fcmp fast ogt float %391, %393
  %396 = or i1 %394, %395
  %397 = select i1 %396, float 0.000000e+00, float %391
  %398 = fsub fast float %288, %289
  %399 = fmul fast float %398, %389
  %400 = fsub fast float %397, %392
  %401 = fdiv fast float %400, %399
  %402 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %403 = fmul fast float %402, 2.000000e+00
  %404 = fsub fast float 3.000000e+00, %403
  %405 = fmul fast float %402, %402
  %406 = fmul fast float %405, %404
  %407 = fsub fast float %296, %302
  %408 = fmul fast float %406, %407
  %409 = fadd fast float %408, %302
  %410 = fmul fast float %293, %20
  %411 = fmul fast float %294, %21
  %412 = fmul fast float %295, %22
  %413 = fsub fast float %410, %299
  %414 = fsub fast float %411, %300
  %415 = fsub fast float %412, %301
  %416 = fmul fast float %406, %413
  %417 = fmul fast float %406, %414
  %418 = fmul fast float %406, %415
  %419 = fadd fast float %416, %299
  %420 = fadd fast float %417, %300
  %421 = fadd fast float %418, %301
  %422 = fmul fast float %282, %282
  %423 = fmul fast float %422, %397
  br label %519

; <label>:424                                     ; preds = %279
  %425 = and i32 %304, 256
  %426 = icmp eq i32 %425, 0
  %427 = fsub fast float %346, %39
  br i1 %426, label %476, label %428

; <label>:428                                     ; preds = %424
  %429 = fadd fast float %288, %39
  %430 = fcmp fast olt float %346, %39
  %431 = fcmp fast ogt float %346, %429
  %432 = or i1 %430, %431
  %433 = select i1 %432, float 0.000000e+00, float %427
  %434 = call float @dx.op.unary.f32(i32 83, float %346)  ; DerivCoarseX(value)
  %435 = call float @dx.op.unary.f32(i32 84, float %346)  ; DerivCoarseY(value)
  %436 = fmul fast float %434, %434
  %437 = fmul fast float %435, %435
  %438 = fadd fast float %437, %436
  %439 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %440 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %441 = fmul fast float %440, %439
  %442 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %443 = fmul fast float %442, %289
  %444 = fdiv fast float %427, %443
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = fmul fast float %445, 2.000000e+00
  %447 = fsub fast float 3.000000e+00, %446
  %448 = fmul fast float %445, %445
  %449 = fmul fast float %448, %447
  %450 = fsub fast float %346, %429
  %451 = fadd fast float %450, %443
  %452 = fdiv fast float %451, %443
  %453 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %454 = fmul fast float %453, 2.000000e+00
  %455 = fsub fast float 3.000000e+00, %454
  %456 = fmul fast float %453, %453
  %457 = fmul fast float %456, %455
  %458 = fsub fast float %449, %457
  %459 = fsub fast float %296, %302
  %460 = fmul fast float %458, %459
  %461 = fadd fast float %460, %302
  %462 = fmul fast float %293, %20
  %463 = fmul fast float %294, %21
  %464 = fmul fast float %295, %22
  %465 = fsub fast float %462, %299
  %466 = fsub fast float %463, %300
  %467 = fsub fast float %464, %301
  %468 = fmul fast float %458, %465
  %469 = fmul fast float %458, %466
  %470 = fmul fast float %458, %467
  %471 = fadd fast float %468, %299
  %472 = fadd fast float %469, %300
  %473 = fadd fast float %470, %301
  %474 = fmul fast float %433, %282
  %475 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  br label %519

; <label>:476                                     ; preds = %424
  br i1 %307, label %477, label %490

; <label>:477                                     ; preds = %476
  %478 = fdiv fast float 5.000000e+01, %19
  %479 = select i1 %309, float %478, float 1.000000e+00
  %480 = fmul fast float %479, %282
  %481 = fmul fast float %32, 2.000000e+00
  %482 = fmul fast float %33, 2.000000e+00
  %483 = fadd fast float %481, -1.000000e+00
  %484 = fadd fast float %482, -1.000000e+00
  %485 = call float @dx.op.dot2.f32(i32 54, float %483, float %484, float %483, float %484)  ; Dot2(ax,ay,bx,by)
  %486 = fmul fast float %290, %19
  %487 = fmul fast float %486, %485
  %488 = fsub fast float %427, %487
  %489 = fmul fast float %480, %488
  br label %519

; <label>:490                                     ; preds = %476
  br i1 %311, label %511, label %491

; <label>:491                                     ; preds = %490
  %492 = fmul fast float %19, 0x3F947AE140000000
  %493 = select i1 %309, float %492, float 1.000000e+00
  %494 = fdiv fast float 1.000000e+00, %493
  %495 = fmul fast float %493, %283
  %496 = fmul fast float %493, %284
  %497 = fmul fast float %494, %285
  %498 = call float @dx.op.unary.f32(i32 6, float %427)  ; FAbs(value)
  %499 = fcmp fast olt float %498, %495
  br i1 %499, label %500, label %504, !dx.controlflow.hints !58

; <label>:500                                     ; preds = %491
  %501 = fmul fast float %494, %282
  %502 = fmul fast float %501, %498
  %503 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  br label %519

; <label>:504                                     ; preds = %491
  %505 = fcmp fast ogt float %498, %496
  br i1 %505, label %506, label %519

; <label>:506                                     ; preds = %504
  %507 = fsub fast float %498, %496
  %508 = fmul fast float %497, %507
  %509 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  %510 = fsub fast float 1.000000e+00, %509
  br label %519

; <label>:511                                     ; preds = %490
  %512 = fdiv fast float 5.000000e+01, %19
  %513 = select i1 %309, float %512, float 1.000000e+00
  %514 = fmul fast float %513, %282
  %515 = call float @dx.op.unary.f32(i32 6, float %258)  ; FAbs(value)
  %516 = select i1 %306, float %515, float 0x47EFFFFFE0000000
  %517 = call float @dx.op.binary.f32(i32 36, float %427, float %516)  ; FMin(a,b)
  %518 = fmul fast float %514, %517
  br label %519

; <label>:519                                     ; preds = %511, %506, %504, %500, %477, %428, %347
  %520 = phi float [ %423, %347 ], [ %475, %428 ], [ %489, %477 ], [ %518, %511 ], [ %503, %500 ], [ %510, %506 ], [ %498, %504 ]
  %521 = phi float [ %419, %347 ], [ %471, %428 ], [ %20, %477 ], [ %20, %511 ], [ %20, %500 ], [ %20, %506 ], [ %20, %504 ]
  %522 = phi float [ %420, %347 ], [ %472, %428 ], [ %21, %477 ], [ %21, %511 ], [ %21, %500 ], [ %21, %506 ], [ %21, %504 ]
  %523 = phi float [ %421, %347 ], [ %473, %428 ], [ %22, %477 ], [ %22, %511 ], [ %22, %500 ], [ %22, %506 ], [ %22, %504 ]
  %524 = phi float [ %409, %347 ], [ %461, %428 ], [ 1.000000e+00, %477 ], [ 1.000000e+00, %511 ], [ 1.000000e+00, %500 ], [ 1.000000e+00, %506 ], [ 1.000000e+00, %504 ]
  %525 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %526 = fmul fast float %524, %237
  %527 = fmul fast float %526, %525
  br label %528

; <label>:528                                     ; preds = %519, %276
  %529 = phi float [ %527, %519 ], [ %237, %276 ]
  %530 = phi float [ %521, %519 ], [ %20, %276 ]
  %531 = phi float [ %522, %519 ], [ %21, %276 ]
  %532 = phi float [ %523, %519 ], [ %22, %276 ]
  %533 = fmul fast float %530, %23
  %534 = fmul fast float %531, %23
  %535 = fmul fast float %532, %23
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %538 = fptosi float %39 to i32
  %539 = sitofp i32 %538 to float
  %540 = fadd fast float %537, %539
  %541 = fmul fast float %540, 0x3FE3C6EF40000000
  %542 = frem fast float %44, 2.560000e+02
  %543 = frem fast float %45, 2.560000e+02
  %544 = fptoui float %542 to i32
  %545 = fptoui float %543 to i32
  %546 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %544, i32 %545, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = fadd fast float %547, %541
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = and i32 %125, 1
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %608, label %552, !dx.controlflow.hints !59

; <label>:552                                     ; preds = %528
  %553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 2
  %555 = extractvalue %dx.types.ResRet.f32 %553, 3
  %556 = add i32 %122, 16
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = add i32 %122, 32
  %562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  %566 = and i32 %125, 2
  %567 = icmp eq i32 %566, 0
  %568 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = call float @dx.op.unary.f32(i32 25, float %568)  ; Rsqrt(value)
  %570 = fmul fast float %569, %28
  %571 = fmul fast float %569, %29
  %572 = fmul fast float %569, %30
  %573 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = call float @dx.op.unary.f32(i32 25, float %573)  ; Rsqrt(value)
  %575 = fmul fast float %574, %79
  %576 = fmul fast float %574, %80
  %577 = fmul fast float %574, %81
  %578 = call float @dx.op.dot3.f32(i32 55, float %575, float %576, float %577, float %570, float %571, float %572)  ; Dot3(ax,ay,az,bx,by,bz)
  %579 = fmul fast float %578, %578
  %580 = fmul fast float %579, %554
  %581 = fadd fast float %580, %555
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  br i1 %567, label %583, label %593, !dx.controlflow.hints !60

; <label>:583                                     ; preds = %552
  %584 = extractvalue %dx.types.ResRet.f32 %553, 1
  %585 = extractvalue %dx.types.ResRet.f32 %553, 0
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %588 = fmul fast float %587, %573
  %589 = fsub fast float %585, %588
  %590 = fmul fast float %589, %584
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = fmul fast float %591, %582
  br label %593

; <label>:593                                     ; preds = %583, %552
  %594 = phi float [ %592, %583 ], [ %582, %552 ]
  %595 = fsub fast float %558, %563
  %596 = fsub fast float %559, %564
  %597 = fsub fast float %560, %565
  %598 = fmul fast float %594, %595
  %599 = fmul fast float %594, %596
  %600 = fmul fast float %594, %597
  %601 = fadd fast float %598, %563
  %602 = fadd fast float %599, %564
  %603 = fadd fast float %600, %565
  %604 = fmul fast float %601, %533
  %605 = fmul fast float %602, %534
  %606 = fmul fast float %603, %535
  %607 = fmul fast float %594, %529
  br label %608

; <label>:608                                     ; preds = %593, %528
  %609 = phi float [ %607, %593 ], [ %529, %528 ]
  %610 = phi float [ %604, %593 ], [ %533, %528 ]
  %611 = phi float [ %605, %593 ], [ %534, %528 ]
  %612 = phi float [ %606, %593 ], [ %535, %528 ]
  %613 = add i32 %15, 72
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = add i32 %615, 0
  %617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %617, %dx.types.Handle %40, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = add i32 %15, 44
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = shl i32 %624, 4
  %626 = and i32 %625, 32752
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %624, 7
  %629 = and i32 %628, 32752
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %624, 22
  %632 = shl nuw nsw i32 %631, 5
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = fmul fast float %627, %619
  %635 = fmul fast float %630, %620
  %636 = fmul fast float %633, %621
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = fmul fast float %634, %638
  %640 = fmul fast float %635, %638
  %641 = fmul fast float %636, %638
  %642 = add i32 %15, 48
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = lshr i32 %644, 22
  %646 = shl nuw nsw i32 %645, 5
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = fmul fast float %647, %639
  %649 = select i1 %105, float %648, float %639
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %655 = fmul fast float %649, %610
  %656 = fmul fast float %640, %611
  %657 = fmul fast float %641, %612
  %658 = call float @dx.op.dot3.f32(i32 55, float %655, float %656, float %657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = select i1 %105, float 0.000000e+00, float %655
  %660 = select i1 %105, float %658, float %656
  %661 = fmul fast float %530, %31
  %662 = fmul fast float %661, %649
  %663 = fmul fast float %662, %651
  %664 = fmul fast float %663, %654
  %665 = fmul fast float %531, %31
  %666 = fmul fast float %665, %640
  %667 = fmul fast float %666, %652
  %668 = fmul fast float %667, %654
  %669 = fadd fast float %664, %659
  %670 = fadd fast float %660, %668
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 0
  br i1 %105, label %673, label %677

; <label>:673                                     ; preds = %608
  %674 = fadd fast float %669, %670
  %675 = fmul fast float %674, %609
  %676 = fmul fast float %675, %672
  br label %696

; <label>:677                                     ; preds = %608
  %678 = select i1 %105, float 0.000000e+00, float %657
  %679 = extractvalue %dx.types.ResRet.f32 %650, 2
  %680 = fmul fast float %669, %609
  %681 = fmul fast float %670, %609
  %682 = fmul fast float %532, %31
  %683 = fmul fast float %682, %641
  %684 = fmul fast float %683, %679
  %685 = fmul fast float %684, %654
  %686 = fadd fast float %685, %678
  %687 = fmul fast float %686, %609
  %688 = fmul fast float %680, %672
  %689 = fmul fast float %681, %672
  %690 = fmul fast float %687, %672
  %691 = call float @dx.op.binary.f32(i32 35, float %689, float %690)  ; FMax(a,b)
  %692 = call float @dx.op.binary.f32(i32 35, float %688, float %691)  ; FMax(a,b)
  %693 = call float @dx.op.binary.f32(i32 35, float %692, float 0.000000e+00)  ; FMax(a,b)
  %694 = fcmp fast ugt float %693, 0x3F10000000000000
  br i1 %694, label %696, label %695

; <label>:695                                     ; preds = %677
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %696

; <label>:696                                     ; preds = %695, %677, %673
  %697 = phi float [ %676, %673 ], [ %688, %695 ], [ %688, %677 ]
  %698 = phi float [ 0.000000e+00, %673 ], [ %689, %695 ], [ %689, %677 ]
  %699 = phi float [ 0.000000e+00, %673 ], [ %690, %695 ], [ %690, %677 ]
  %700 = fadd fast float %549, 0x3FE3C6EF40000000
  %701 = call float @dx.op.unary.f32(i32 22, float %700)  ; Frc(value)
  %702 = call float @dx.op.unary.f32(i32 23, float %697)  ; Log(value)
  %703 = fadd fast float %702, -7.000000e+00
  %704 = call float @dx.op.unary.f32(i32 21, float %703)  ; Exp(value)
  %705 = fmul fast float %701, 2.000000e+00
  %706 = fadd fast float %705, -1.000000e+00
  %707 = fmul fast float %704, %706
  %708 = fcmp fast ogt float %697, 0.000000e+00
  %709 = select i1 %708, float %707, float 0.000000e+00
  %710 = fadd fast float %709, %697
  %711 = fadd fast float %549, 0x3FF3C6EF40000000
  %712 = call float @dx.op.unary.f32(i32 22, float %711)  ; Frc(value)
  %713 = call float @dx.op.unary.f32(i32 23, float %698)  ; Log(value)
  %714 = fadd fast float %713, -7.000000e+00
  %715 = call float @dx.op.unary.f32(i32 21, float %714)  ; Exp(value)
  %716 = fmul fast float %712, 2.000000e+00
  %717 = fadd fast float %716, -1.000000e+00
  %718 = fmul fast float %715, %717
  %719 = fcmp fast ogt float %698, 0.000000e+00
  %720 = select i1 %719, float %718, float 0.000000e+00
  %721 = fadd fast float %720, %698
  %722 = fadd fast float %549, 0x3FFDAA66E0000000
  %723 = call float @dx.op.unary.f32(i32 22, float %722)  ; Frc(value)
  %724 = call float @dx.op.unary.f32(i32 23, float %699)  ; Log(value)
  %725 = fadd fast float %724, -6.000000e+00
  %726 = call float @dx.op.unary.f32(i32 21, float %725)  ; Exp(value)
  %727 = fmul fast float %723, 2.000000e+00
  %728 = fadd fast float %727, -1.000000e+00
  %729 = fmul fast float %726, %728
  %730 = fcmp fast ogt float %699, 0.000000e+00
  %731 = select i1 %730, float %729, float 0.000000e+00
  %732 = fadd fast float %731, %699
  %733 = select i1 %105, float %698, float %721
  %734 = select i1 %105, float %699, float %732
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %735 = call float @dx.op.binary.f32(i32 36, float %710, float 3.225500e+04)  ; FMin(a,b)
  %736 = call float @dx.op.binary.f32(i32 36, float %733, float 3.225500e+04)  ; FMin(a,b)
  %737 = call float @dx.op.binary.f32(i32 36, float %734, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %735)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %736)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %737)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!25}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !18, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17}
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
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!21 = !{!22, !23, !24}
!22 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{[37 x i32] [i32 35, i32 8, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!26 = !{void ()* @ps_main, !"ps_main", !27, !4, !53}
!27 = !{!28, !49, null}
!28 = !{!29, !32, !34, !36, !38, !41, !43, !45, !46, !48}
!29 = !{i32 0, !"SV_Position", i8 9, i8 3, !30, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!30 = !{i32 0}
!31 = !{i32 3, i32 11}
!32 = !{i32 1, !"COLOR", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!33 = !{i32 3, i32 8}
!34 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 2, i8 0, !35}
!35 = !{i32 3, i32 15}
!36 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 3, i8 0, !35}
!37 = !{i32 3}
!38 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 4, i8 0, !40}
!39 = !{i32 4}
!40 = !{i32 3, i32 3}
!41 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !42, i8 3, i32 1, i8 2, i32 5, i8 0, !40}
!42 = !{i32 5}
!43 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 6, i8 0, !35}
!44 = !{i32 8}
!45 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !30, i8 1, i32 1, i8 4, i32 7, i8 0, !35}
!46 = !{i32 8, !"COLOR", i8 5, i8 0, !37, i8 1, i32 1, i8 3, i32 8, i8 0, !47}
!47 = !{i32 3, i32 5}
!48 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !30, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!49 = !{!50, !51}
!50 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !35}
!51 = !{i32 1, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 1, i8 0, !35}
!52 = !{i32 1}
!53 = !{i32 0, i64 24}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}

