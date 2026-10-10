;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 5   xy          4     NONE   float   xy  
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
; shader hash: b88d451c0d8baae6fbb9494136a9b144
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture    byte         r/o      T9             t2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 3 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 7 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = fmul fast float %32, %26
  %34 = fmul fast float %32, %27
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 3
  %38 = fmul fast float %33, 2.000000e+00
  %39 = fmul fast float %38, %36
  %40 = fmul fast float %34, 2.000000e+00
  %41 = fmul fast float %40, %37
  %42 = fsub fast float 1.000000e+00, %39
  %43 = fsub fast float 1.000000e+00, %41
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 1
  %47 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %48 = fmul fast float %42, %45
  %49 = fmul fast float %42, %46
  %50 = fmul fast float %42, %47
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fmul fast float %43, %52
  %56 = fmul fast float %43, %53
  %57 = fmul fast float %43, %54
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fadd fast float %55, %59
  %63 = fadd fast float %62, %48
  %64 = fadd fast float %56, %60
  %65 = fadd fast float %64, %49
  %66 = fadd fast float %57, %61
  %67 = fadd fast float %66, %50
  %68 = fmul fast float %63, %28
  %69 = fmul fast float %65, %28
  %70 = fmul fast float %67, %28
  %71 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.i32 %71, 3
  %73 = and i32 %72, 3
  %74 = icmp ne i32 %73, 0
  %75 = and i32 %72, 4
  %76 = icmp ne i32 %75, 0
  %77 = and i1 %74, %76
  br i1 %77, label %78, label %87

; <label>:78                                      ; preds = %0
  %79 = fmul fast float %37, %34
  %80 = fmul fast float %36, %33
  %81 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %80, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = fsub fast float 1.000000e+00, %82
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = fcmp fast olt float %83, %85
  br label %90

; <label>:87                                      ; preds = %0
  %88 = icmp eq i32 %75, 0
  %89 = and i1 %74, %88
  br label %90

; <label>:90                                      ; preds = %87, %78
  %91 = phi i1 [ %86, %78 ], [ %89, %87 ]
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = fmul fast float %93, %33
  %96 = fmul fast float %94, %34
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = and i32 %98, 114688
  %100 = icmp ne i32 %99, 0
  %101 = select i1 %100, float %95, float 0.000000e+00
  %102 = select i1 %100, float %96, float 0.000000e+00
  %103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %101, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = fmul fast float %104, 2.550000e+02
  %106 = fptoui float %105 to i32
  %107 = select i1 %100, i32 %106, i32 0
  %108 = mul i32 %14, 208
  %109 = add i32 %108, 188
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = and i32 %72, 114688
  %113 = and i32 %72, 8
  %114 = icmp ne i32 %113, 0
  %115 = or i1 %91, %114
  %116 = select i1 %115, i32 %112, i32 16384
  %117 = and i32 %116, %111
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %90
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %120

; <label>:120                                     ; preds = %119, %90
  %121 = and i32 %111, 512
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %147, label %123

; <label>:123                                     ; preds = %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %127 = fmul fast float %125, %33
  %128 = fmul fast float %126, %34
  %129 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %131 = fdiv fast float %129, %130
  %132 = fcmp fast ogt float %131, 0x3FFC71C720000000
  br i1 %132, label %133, label %139

; <label>:133                                     ; preds = %123
  %134 = fdiv fast float 0x3FFC71C720000000, %131
  %135 = fmul fast float %134, %128
  %136 = fsub fast float 1.000000e+00, %134
  %137 = fmul fast float %136, 5.000000e-01
  %138 = fadd fast float %137, %135
  br label %147

; <label>:139                                     ; preds = %123
  %140 = fcmp fast olt float %131, 0x3FFC71C720000000
  br i1 %140, label %141, label %147

; <label>:141                                     ; preds = %139
  %142 = fmul fast float %127, 5.625000e-01
  %143 = fmul fast float %142, %131
  %144 = fmul fast float %131, 2.812500e-01
  %145 = fsub fast float 5.000000e-01, %144
  %146 = fadd fast float %145, %143
  br label %147

; <label>:147                                     ; preds = %141, %139, %133, %120
  %148 = phi float [ %20, %120 ], [ %127, %133 ], [ %146, %141 ], [ %127, %139 ]
  %149 = phi float [ %21, %120 ], [ %138, %133 ], [ %128, %141 ], [ %128, %139 ]
  %150 = and i32 %111, 16
  %151 = icmp ne i32 %150, 0
  %152 = select i1 %151, float 1.000000e+00, float %25
  %153 = icmp eq i32 %150, 0
  br i1 %153, label %173, label %154, !dx.controlflow.hints !53

; <label>:154                                     ; preds = %147
  %155 = add i32 %108, 64
  %156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = fadd fast float %157, 1.000000e+00
  %159 = fmul fast float %158, %25
  %160 = fsub fast float %159, %157
  %161 = fsub fast float %158, %160
  %162 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  %163 = fsub fast float 1.000000e+00, %159
  %164 = call float @dx.op.unary.f32(i32 7, float %163)  ; Saturate(value)
  %165 = fsub fast float %162, %164
  %166 = fsub fast float %152, %164
  %167 = fdiv fast float %166, %165
  %168 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %169 = fmul fast float %168, 2.000000e+00
  %170 = fsub fast float 3.000000e+00, %169
  %171 = fmul fast float %168, %168
  %172 = fmul fast float %171, %170
  br label %173

; <label>:173                                     ; preds = %154, %147
  %174 = phi float [ %172, %154 ], [ %152, %147 ]
  %175 = fcmp fast ogt float %174, 0.000000e+00
  br i1 %175, label %177, label %176

; <label>:176                                     ; preds = %173
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %177

; <label>:177                                     ; preds = %176, %173
  %178 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %179 = fmul fast float %33, 5.000000e-01
  %180 = fmul fast float %34, 5.000000e-01
  %181 = fptosi float %179 to i32
  %182 = fptosi float %180 to i32
  %183 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %181, i32 %182, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = lshr i32 %184, 18
  %186 = uitofp i32 %185 to float
  %187 = fmul fast float %186, 0x3F4C00EBA0000000
  %188 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %189 = fadd fast float %188, -1.000000e+00
  %190 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %191 = extractvalue %dx.types.Dimensions %190, 0
  %192 = sitofp i32 %191 to float
  %193 = extractvalue %dx.types.Dimensions %190, 1
  %194 = sitofp i32 %193 to float
  %195 = fcmp fast oge float %179, %192
  %196 = fcmp fast oge float %180, %194
  %197 = or i1 %195, %196
  %198 = select i1 %197, float 0x4197782600000000, float %189
  %199 = fsub fast float %198, %28
  %200 = fcmp fast ogt float %199, 0.000000e+00
  %201 = and i32 %107, -2
  %202 = icmp eq i32 %201, 2
  %203 = and i1 %202, %200
  %204 = xor i1 %200, true
  %205 = icmp eq i32 %107, 1
  %206 = and i1 %205, %204
  %207 = or i1 %203, %206
  %208 = and i32 %111, 262144
  %209 = icmp ne i32 %208, 0
  %210 = and i1 %209, %207
  %211 = xor i1 %207, true
  %212 = and i32 %111, 131072
  %213 = icmp ne i32 %212, 0
  %214 = and i1 %213, %211
  %215 = or i1 %210, %214
  br i1 %215, label %216, label %217

; <label>:216                                     ; preds = %177
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %217

; <label>:217                                     ; preds = %216, %177
  %218 = and i32 %111, 32
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %458, label %220, !dx.controlflow.hints !54

; <label>:220                                     ; preds = %217
  %221 = add i32 %108, 80
  %222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = extractvalue %dx.types.ResRet.f32 %222, 1
  %225 = extractvalue %dx.types.ResRet.f32 %222, 2
  %226 = extractvalue %dx.types.ResRet.f32 %222, 3
  %227 = add i32 %108, 96
  %228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = add i32 %108, 112
  %233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = extractvalue %dx.types.ResRet.f32 %233, 1
  %236 = extractvalue %dx.types.ResRet.f32 %233, 2
  %237 = extractvalue %dx.types.ResRet.f32 %233, 3
  %238 = add i32 %108, 128
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = extractvalue %dx.types.ResRet.f32 %239, 3
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 4096
  %247 = icmp ne i32 %246, 0
  %248 = fcmp fast une float %231, 0.000000e+00
  %249 = and i32 %245, 64
  %250 = icmp ne i32 %249, 0
  %251 = and i32 %245, 128
  %252 = icmp eq i32 %251, 0
  %253 = and i32 %245, 2048
  %254 = icmp eq i32 %253, 0
  %255 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %256 = extractvalue %dx.types.Dimensions %255, 0
  %257 = sitofp i32 %256 to float
  %258 = extractvalue %dx.types.Dimensions %255, 1
  %259 = sitofp i32 %258 to float
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 3
  %263 = fmul fast float %261, %33
  %264 = fmul fast float %262, %34
  %265 = fmul fast float %263, %257
  %266 = fmul fast float %264, %259
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 1
  %269 = fsub fast float -0.000000e+00, %268
  %270 = fptoui float %269 to i32
  %271 = fptoui float %265 to i32
  %272 = fptoui float %266 to i32
  %273 = and i32 %270, 31
  %274 = lshr i32 %271, %273
  %275 = lshr i32 %272, %273
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %270, i32 %274, i32 %275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fcmp fast ogt float %277, -1.000000e+00
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %281 = select i1 %278, float %280, float 1.000000e+00
  %282 = fadd fast float %277, 1.000000e+00
  %283 = fmul fast float %281, %282
  %284 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %285 = extractvalue %dx.types.CBufRet.f32 %279, 3
  %286 = fcmp fast oge float %284, %285
  %287 = select i1 %286, float 0x4197782600000000, float %284
  br i1 %254, label %358, label %288, !dx.controlflow.hints !55

; <label>:288                                     ; preds = %220
  %289 = fmul fast float %38, %261
  %290 = fmul fast float %40, %262
  %291 = fsub fast float 1.000000e+00, %289
  %292 = fsub fast float 1.000000e+00, %290
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %297 = fmul fast float %291, %294
  %298 = fmul fast float %291, %295
  %299 = fmul fast float %291, %296
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = fmul fast float %292, %301
  %305 = fmul fast float %292, %302
  %306 = fmul fast float %292, %303
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %310 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %311 = fadd fast float %304, %308
  %312 = fadd fast float %311, %297
  %313 = fadd fast float %305, %309
  %314 = fadd fast float %313, %298
  %315 = fadd fast float %306, %310
  %316 = fadd fast float %315, %299
  %317 = fmul fast float %312, %287
  %318 = fmul fast float %314, %287
  %319 = fmul fast float %316, %287
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fadd fast float %317, %321
  %325 = fadd fast float %318, %322
  %326 = fadd fast float %319, %323
  %327 = call float @dx.op.dot3.f32(i32 55, float %324, float %325, float %326, float %324, float %325, float %326)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = fsub fast float 1.000000e+00, %327
  %329 = fcmp fast olt float %328, %230
  %330 = fcmp fast ogt float %328, %229
  %331 = or i1 %329, %330
  %332 = select i1 %331, float 0.000000e+00, float %328
  %333 = fsub fast float %229, %230
  %334 = fsub fast float %332, %230
  %335 = fdiv fast float %334, %333
  %336 = call float @dx.op.unary.f32(i32 7, float %335)  ; Saturate(value)
  %337 = fmul fast float %336, 2.000000e+00
  %338 = fsub fast float 3.000000e+00, %337
  %339 = fmul fast float %336, %336
  %340 = fmul fast float %339, %338
  %341 = fmul fast float %234, %22
  %342 = fmul fast float %235, %23
  %343 = fmul fast float %236, %24
  %344 = fsub fast float %341, %240
  %345 = fsub fast float %342, %241
  %346 = fsub fast float %343, %242
  %347 = fsub fast float %237, %243
  %348 = fmul fast float %340, %344
  %349 = fmul fast float %340, %345
  %350 = fmul fast float %340, %346
  %351 = fmul fast float %340, %347
  %352 = fadd fast float %348, %240
  %353 = fadd fast float %349, %241
  %354 = fadd fast float %350, %242
  %355 = fadd fast float %351, %243
  %356 = fmul fast float %223, %223
  %357 = fmul fast float %356, %332
  br label %449

; <label>:358                                     ; preds = %220
  %359 = and i32 %245, 256
  %360 = icmp eq i32 %359, 0
  %361 = fsub fast float %287, %28
  br i1 %360, label %410, label %362

; <label>:362                                     ; preds = %358
  %363 = fadd fast float %229, %28
  %364 = fcmp fast olt float %287, %28
  %365 = fcmp fast ogt float %287, %363
  %366 = or i1 %364, %365
  %367 = select i1 %366, float 0.000000e+00, float %361
  %368 = call float @dx.op.unary.f32(i32 83, float %287)  ; DerivCoarseX(value)
  %369 = call float @dx.op.unary.f32(i32 84, float %287)  ; DerivCoarseY(value)
  %370 = fmul fast float %368, %368
  %371 = fmul fast float %369, %369
  %372 = fadd fast float %371, %370
  %373 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %374 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %375 = fmul fast float %374, %373
  %376 = call float @dx.op.unary.f32(i32 7, float %375)  ; Saturate(value)
  %377 = fmul fast float %376, %230
  %378 = fdiv fast float %361, %377
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = fmul fast float %379, 2.000000e+00
  %381 = fsub fast float 3.000000e+00, %380
  %382 = fmul fast float %379, %379
  %383 = fmul fast float %382, %381
  %384 = fsub fast float %287, %363
  %385 = fadd fast float %384, %377
  %386 = fdiv fast float %385, %377
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fmul fast float %387, 2.000000e+00
  %389 = fsub fast float 3.000000e+00, %388
  %390 = fmul fast float %387, %387
  %391 = fmul fast float %390, %389
  %392 = fsub fast float %383, %391
  %393 = fmul fast float %234, %22
  %394 = fmul fast float %235, %23
  %395 = fmul fast float %236, %24
  %396 = fsub fast float %393, %240
  %397 = fsub fast float %394, %241
  %398 = fsub fast float %395, %242
  %399 = fsub fast float %237, %243
  %400 = fmul fast float %392, %396
  %401 = fmul fast float %392, %397
  %402 = fmul fast float %392, %398
  %403 = fmul fast float %392, %399
  %404 = fadd fast float %400, %240
  %405 = fadd fast float %401, %241
  %406 = fadd fast float %402, %242
  %407 = fadd fast float %403, %243
  %408 = fmul fast float %367, %223
  %409 = call float @dx.op.unary.f32(i32 6, float %408)  ; FAbs(value)
  br label %449

; <label>:410                                     ; preds = %358
  br i1 %248, label %411, label %422

; <label>:411                                     ; preds = %410
  %412 = select i1 %250, float 5.000000e+01, float 1.000000e+00
  %413 = fmul fast float %412, %223
  %414 = fmul fast float %20, 2.000000e+00
  %415 = fmul fast float %21, 2.000000e+00
  %416 = fadd fast float %414, -1.000000e+00
  %417 = fadd fast float %415, -1.000000e+00
  %418 = call float @dx.op.dot2.f32(i32 54, float %416, float %417, float %416, float %417)  ; Dot2(ax,ay,bx,by)
  %419 = fmul fast float %418, %231
  %420 = fsub fast float %361, %419
  %421 = fmul fast float %413, %420
  br label %449

; <label>:422                                     ; preds = %410
  br i1 %252, label %442, label %423

; <label>:423                                     ; preds = %422
  %424 = select i1 %250, float 0x3F947AE140000000, float 1.000000e+00
  %425 = fdiv fast float 1.000000e+00, %424
  %426 = fmul fast float %424, %224
  %427 = fmul fast float %424, %225
  %428 = fmul fast float %425, %226
  %429 = call float @dx.op.unary.f32(i32 6, float %361)  ; FAbs(value)
  %430 = fcmp fast olt float %429, %426
  br i1 %430, label %431, label %435, !dx.controlflow.hints !56

; <label>:431                                     ; preds = %423
  %432 = fmul fast float %425, %223
  %433 = fmul fast float %432, %429
  %434 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  br label %449

; <label>:435                                     ; preds = %423
  %436 = fcmp fast ogt float %429, %427
  br i1 %436, label %437, label %449

; <label>:437                                     ; preds = %435
  %438 = fsub fast float %429, %427
  %439 = fmul fast float %428, %438
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  %441 = fsub fast float 1.000000e+00, %440
  br label %449

; <label>:442                                     ; preds = %422
  %443 = select i1 %250, float 5.000000e+01, float 1.000000e+00
  %444 = fmul fast float %443, %223
  %445 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %446 = select i1 %247, float %445, float 0x47EFFFFFE0000000
  %447 = call float @dx.op.binary.f32(i32 36, float %361, float %446)  ; FMin(a,b)
  %448 = fmul fast float %444, %447
  br label %449

; <label>:449                                     ; preds = %442, %437, %435, %431, %411, %362, %288
  %450 = phi float [ %357, %288 ], [ %409, %362 ], [ %421, %411 ], [ %448, %442 ], [ %434, %431 ], [ %441, %437 ], [ %429, %435 ]
  %451 = phi float [ %352, %288 ], [ %404, %362 ], [ %22, %411 ], [ %22, %442 ], [ %22, %431 ], [ %22, %437 ], [ %22, %435 ]
  %452 = phi float [ %353, %288 ], [ %405, %362 ], [ %23, %411 ], [ %23, %442 ], [ %23, %431 ], [ %23, %437 ], [ %23, %435 ]
  %453 = phi float [ %354, %288 ], [ %406, %362 ], [ %24, %411 ], [ %24, %442 ], [ %24, %431 ], [ %24, %437 ], [ %24, %435 ]
  %454 = phi float [ %355, %288 ], [ %407, %362 ], [ 1.000000e+00, %411 ], [ 1.000000e+00, %442 ], [ 1.000000e+00, %431 ], [ 1.000000e+00, %437 ], [ 1.000000e+00, %435 ]
  %455 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %456 = fmul fast float %454, %178
  %457 = fmul fast float %456, %455
  br label %458

; <label>:458                                     ; preds = %449, %217
  %459 = phi float [ %451, %449 ], [ %22, %217 ]
  %460 = phi float [ %452, %449 ], [ %23, %217 ]
  %461 = phi float [ %453, %449 ], [ %24, %217 ]
  %462 = phi float [ %457, %449 ], [ %178, %217 ]
  %463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %464 = extractvalue %dx.types.CBufRet.f32 %463, 2
  %465 = fptosi float %28 to i32
  %466 = sitofp i32 %465 to float
  %467 = fadd fast float %464, %466
  %468 = fmul fast float %467, 0x3FE3C6EF40000000
  %469 = frem fast float %33, 2.560000e+02
  %470 = frem fast float %34, 2.560000e+02
  %471 = fptoui float %469 to i32
  %472 = fptoui float %470 to i32
  %473 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %471, i32 %472, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = fadd fast float %474, %468
  %476 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %477 = and i32 %111, 1
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %535, label %479, !dx.controlflow.hints !57

; <label>:479                                     ; preds = %458
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 2
  %482 = extractvalue %dx.types.ResRet.f32 %480, 3
  %483 = add i32 %108, 16
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = add i32 %108, 32
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = extractvalue %dx.types.ResRet.f32 %489, 2
  %493 = and i32 %111, 2
  %494 = icmp eq i32 %493, 0
  %495 = call float @dx.op.dot3.f32(i32 55, float %17, float %18, float %19, float %17, float %18, float %19)  ; Dot3(ax,ay,az,bx,by,bz)
  %496 = call float @dx.op.unary.f32(i32 25, float %495)  ; Rsqrt(value)
  %497 = fmul fast float %496, %17
  %498 = fmul fast float %496, %18
  %499 = fmul fast float %496, %19
  %500 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = call float @dx.op.unary.f32(i32 25, float %500)  ; Rsqrt(value)
  %502 = fmul fast float %501, %68
  %503 = fmul fast float %501, %69
  %504 = fmul fast float %501, %70
  %505 = call float @dx.op.dot3.f32(i32 55, float %502, float %503, float %504, float %497, float %498, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %506 = fmul fast float %505, %505
  %507 = fmul fast float %506, %481
  %508 = fadd fast float %507, %482
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  br i1 %494, label %510, label %520, !dx.controlflow.hints !58

; <label>:510                                     ; preds = %479
  %511 = extractvalue %dx.types.ResRet.f32 %480, 1
  %512 = extractvalue %dx.types.ResRet.f32 %480, 0
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 3
  %515 = fmul fast float %514, %500
  %516 = fsub fast float %512, %515
  %517 = fmul fast float %516, %511
  %518 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %519 = fmul fast float %518, %509
  br label %520

; <label>:520                                     ; preds = %510, %479
  %521 = phi float [ %519, %510 ], [ %509, %479 ]
  %522 = fsub fast float %485, %490
  %523 = fsub fast float %486, %491
  %524 = fsub fast float %487, %492
  %525 = fmul fast float %521, %522
  %526 = fmul fast float %521, %523
  %527 = fmul fast float %521, %524
  %528 = fadd fast float %525, %490
  %529 = fadd fast float %526, %491
  %530 = fadd fast float %527, %492
  %531 = fmul fast float %528, %459
  %532 = fmul fast float %529, %460
  %533 = fmul fast float %530, %461
  %534 = fmul fast float %521, %462
  br label %535

; <label>:535                                     ; preds = %520, %458
  %536 = phi float [ %531, %520 ], [ %459, %458 ]
  %537 = phi float [ %532, %520 ], [ %460, %458 ]
  %538 = phi float [ %533, %520 ], [ %461, %458 ]
  %539 = phi float [ %534, %520 ], [ %462, %458 ]
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %541, 0
  %543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %543, %dx.types.Handle %29, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 255
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = lshr i32 %549, 8
  %554 = and i32 %553, 255
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %555, 0x3F70101020000000
  %557 = lshr i32 %549, 16
  %558 = and i32 %557, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %559, 0x3F70101020000000
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = fmul fast float %565, %565
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = add i32 %568, 0
  %570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %570, %dx.types.Handle %30, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = fmul fast float %566, %572
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = fmul fast float %545, %536
  %583 = fmul fast float %552, %552
  %584 = fmul fast float %583, %582
  %585 = fmul fast float %584, %581
  %586 = fmul fast float %546, %537
  %587 = fmul fast float %556, %556
  %588 = fmul fast float %587, %586
  %589 = fmul fast float %588, %581
  %590 = fmul fast float %547, %538
  %591 = fmul fast float %560, %560
  %592 = fmul fast float %591, %590
  %593 = fmul fast float %592, %581
  %594 = call float @dx.op.dot3.f32(i32 55, float %585, float %589, float %593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 255
  %598 = uitofp i32 %597 to float
  %599 = lshr i32 %596, 8
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, %594
  %603 = fadd fast float %602, %598
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = and i32 %111, 8192
  %607 = icmp eq i32 %606, 0
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  br i1 %607, label %616, label %610, !dx.controlflow.hints !59

; <label>:610                                     ; preds = %535
  %611 = add i32 %108, 176
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = fcmp fast oge float %613, 0.000000e+00
  %615 = select i1 %614, float %613, float %609
  br label %616

; <label>:616                                     ; preds = %610, %535
  %617 = phi float [ %615, %610 ], [ %609, %535 ]
  %618 = fadd fast float %573, -1.000000e+00
  %619 = fmul fast float %618, %539
  %620 = fadd fast float %619, 1.000000e+00
  %621 = call float @dx.op.dot3.f32(i32 55, float %620, float %620, float %620, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %622 = fsub fast float 1.000000e+00, %621
  %623 = fmul fast float %575, %539
  %624 = fmul fast float %623, %579
  %625 = fmul fast float %624, %585
  %626 = fmul fast float %576, %539
  %627 = fmul fast float %626, %579
  %628 = fmul fast float %627, %589
  %629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.f32 %629, 0
  br i1 %91, label %631, label %654

; <label>:631                                     ; preds = %616
  %632 = fmul fast float %617, %605
  %633 = fsub fast float 1.000000e+00, %605
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %637 = fmul fast float %636, %634
  %638 = fadd fast float %637, %632
  %639 = fadd fast float %625, %628
  %640 = fmul fast float %630, %639
  %641 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %642 = fsub fast float %638, %641
  %643 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %644 = fmul fast float %642, %643
  %645 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = fsub fast float %645, %647
  %649 = fmul fast float %648, 1.000000e+01
  %650 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %651 = fmul fast float %650, %622
  %652 = fsub fast float %622, %651
  %653 = fmul fast float %652, %645
  br label %666

; <label>:654                                     ; preds = %616
  %655 = fmul fast float %630, %625
  %656 = fmul fast float %630, %628
  %657 = fmul fast float %577, %539
  %658 = fmul fast float %657, %579
  %659 = fmul fast float %658, %593
  %660 = fmul fast float %659, %630
  %661 = call float @dx.op.binary.f32(i32 35, float %656, float %660)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 35, float %655, float %661)  ; FMax(a,b)
  %663 = call float @dx.op.binary.f32(i32 35, float %662, float %622)  ; FMax(a,b)
  %664 = fcmp fast ugt float %663, 0x3F10000000000000
  br i1 %664, label %666, label %665

; <label>:665                                     ; preds = %654
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %666

; <label>:666                                     ; preds = %665, %654, %631
  %667 = phi float [ %640, %631 ], [ %655, %665 ], [ %655, %654 ]
  %668 = phi float [ %653, %631 ], [ %656, %665 ], [ %656, %654 ]
  %669 = phi float [ %652, %631 ], [ %660, %665 ], [ %660, %654 ]
  %670 = phi float [ %652, %631 ], [ %622, %665 ], [ %622, %654 ]
  %671 = fadd fast float %476, 0x3FE3C6EF40000000
  %672 = call float @dx.op.unary.f32(i32 22, float %671)  ; Frc(value)
  %673 = call float @dx.op.unary.f32(i32 23, float %667)  ; Log(value)
  %674 = fadd fast float %673, -7.000000e+00
  %675 = call float @dx.op.unary.f32(i32 21, float %674)  ; Exp(value)
  %676 = fmul fast float %672, 2.000000e+00
  %677 = fadd fast float %676, -1.000000e+00
  %678 = fmul fast float %675, %677
  %679 = fcmp fast ogt float %667, 0.000000e+00
  %680 = select i1 %679, float %678, float 0.000000e+00
  %681 = fadd fast float %680, %667
  %682 = fadd fast float %476, 0x3FF3C6EF40000000
  %683 = call float @dx.op.unary.f32(i32 22, float %682)  ; Frc(value)
  %684 = call float @dx.op.unary.f32(i32 23, float %668)  ; Log(value)
  %685 = fadd fast float %684, -7.000000e+00
  %686 = call float @dx.op.unary.f32(i32 21, float %685)  ; Exp(value)
  %687 = fmul fast float %683, 2.000000e+00
  %688 = fadd fast float %687, -1.000000e+00
  %689 = fmul fast float %686, %688
  %690 = fcmp fast ogt float %668, 0.000000e+00
  %691 = select i1 %690, float %689, float 0.000000e+00
  %692 = fadd fast float %691, %668
  %693 = fadd fast float %476, 0x3FFDAA66E0000000
  %694 = call float @dx.op.unary.f32(i32 22, float %693)  ; Frc(value)
  %695 = call float @dx.op.unary.f32(i32 23, float %669)  ; Log(value)
  %696 = fadd fast float %695, -6.000000e+00
  %697 = call float @dx.op.unary.f32(i32 21, float %696)  ; Exp(value)
  %698 = fmul fast float %694, 2.000000e+00
  %699 = fadd fast float %698, -1.000000e+00
  %700 = fmul fast float %697, %699
  %701 = fcmp fast ogt float %669, 0.000000e+00
  %702 = select i1 %701, float %700, float 0.000000e+00
  %703 = fadd fast float %702, %669
  %704 = select i1 %91, float %668, float %692
  %705 = select i1 %91, float %669, float %703
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %706 = call float @dx.op.binary.f32(i32 36, float %681, float 3.225500e+04)  ; FMin(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float %704, float 3.225500e+04)  ; FMin(a,b)
  %708 = call float @dx.op.binary.f32(i32 36, float %705, float 3.225500e+04)  ; FMin(a,b)
  %709 = call float @dx.op.binary.f32(i32 36, float %670, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %706)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %707)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %708)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %709)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %670)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %670)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %670)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %670)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!18 = !{!19, !20}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!21 = !{!22, !23, !24}
!22 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!26 = !{void ()* @ps_main, !"ps_main", !27, !4, !52}
!27 = !{!28, !48, null}
!28 = !{!29, !32, !34, !36, !39, !41, !43, !45, !47}
!29 = !{i32 0, !"SV_Position", i8 9, i8 3, !30, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!30 = !{i32 0}
!31 = !{i32 3, i32 11}
!32 = !{i32 1, !"COLOR", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!33 = !{i32 3, i32 15}
!34 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 2, i32 2, i8 0, !35}
!35 = !{i32 3, i32 3}
!36 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 3, i8 0, !38}
!37 = !{i32 3}
!38 = !{i32 3, i32 7}
!39 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !40, i8 3, i32 1, i8 2, i32 4, i8 0, !35}
!40 = !{i32 5}
!41 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!42 = !{i32 8}
!43 = !{i32 6, !"COLOR", i8 5, i8 0, !37, i8 1, i32 1, i8 3, i32 6, i8 0, !44}
!44 = !{i32 3, i32 1}
!45 = !{i32 7, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!46 = !{i32 4}
!47 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !30, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!48 = !{!49, !50}
!49 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !33}
!50 = !{i32 1, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 1, i8 0, !33}
!51 = !{i32 1}
!52 = !{i32 0, i64 24}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}

