;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   x zw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyz         3     NONE   float   xyz 
; TEXCOORD                 4   xyzw        4     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        5     NONE   float       
; COLOR                    3   xyz         6     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 92627e4a86493064d5e63aefb04b7d27
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
; QUAD_POSITION            0        nointerpolation       
; COLOR                    3        nointerpolation       
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
;   [144 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1             t0     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3             t1     1
;                                   texture    byte         r/o      T4             t2     1
;                                   texture     f32          2d      T5     t57,space2     1
;                                   texture    byte         r/o      T6     t69,space1     1
;                                   texture     u32          2d      T7     t56,space2     1
;
;
; ViewId state:
;
; Number of inputs: 27, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 24, 26 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 24, 26 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 24, 26 }
;   output 3 depends on inputs: { 0, 1, 3, 7, 8, 9, 12, 13, 14, 24, 26 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 0
  %31 = fmul fast float %30, %26
  %32 = fmul fast float %30, %27
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %36 = fmul fast float %31, 2.000000e+00
  %37 = fmul fast float %36, %34
  %38 = fmul fast float %32, 2.000000e+00
  %39 = fmul fast float %38, %35
  %40 = fsub fast float 1.000000e+00, %37
  %41 = fsub fast float 1.000000e+00, %39
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %46 = fmul fast float %40, %43
  %47 = fmul fast float %40, %44
  %48 = fmul fast float %40, %45
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %52 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %53 = fmul fast float %41, %50
  %54 = fmul fast float %41, %51
  %55 = fmul fast float %41, %52
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fadd fast float %53, %57
  %61 = fadd fast float %60, %46
  %62 = fadd fast float %54, %58
  %63 = fadd fast float %62, %47
  %64 = fadd fast float %55, %59
  %65 = fadd fast float %64, %48
  %66 = fmul fast float %61, %28
  %67 = fmul fast float %63, %28
  %68 = fmul fast float %65, %28
  %69 = fcmp fast ogt float %17, 0.000000e+00
  %70 = select i1 %69, float 1.000000e+00, float -1.000000e+00
  %71 = fmul fast float %23, %14
  %72 = fmul fast float %23, %15
  %73 = fmul fast float %23, %16
  %74 = mul i32 %12, 208
  %75 = add i32 %74, 188
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %114, label %80, !dx.controlflow.hints !47

; <label>:80                                      ; preds = %0
  %81 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 2
  %83 = extractvalue %dx.types.ResRet.f32 %81, 3
  %84 = and i32 %77, 2
  %85 = icmp eq i32 %84, 0
  %86 = call float @dx.op.dot3.f32(i32 55, float %18, float %19, float %20, float %18, float %19, float %20)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = call float @dx.op.unary.f32(i32 25, float %86)  ; Rsqrt(value)
  %88 = fmul fast float %87, %18
  %89 = fmul fast float %87, %19
  %90 = fmul fast float %87, %20
  %91 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %92 = call float @dx.op.unary.f32(i32 25, float %91)  ; Rsqrt(value)
  %93 = fmul fast float %92, %66
  %94 = fmul fast float %92, %67
  %95 = fmul fast float %92, %68
  %96 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = fmul fast float %96, %96
  %98 = fmul fast float %97, %82
  %99 = fadd fast float %98, %83
  %100 = call float @dx.op.unary.f32(i32 7, float %99)  ; Saturate(value)
  br i1 %85, label %101, label %111, !dx.controlflow.hints !48

; <label>:101                                     ; preds = %80
  %102 = extractvalue %dx.types.ResRet.f32 %81, 1
  %103 = extractvalue %dx.types.ResRet.f32 %81, 0
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %106 = fmul fast float %105, %91
  %107 = fsub fast float %103, %106
  %108 = fmul fast float %107, %102
  %109 = call float @dx.op.unary.f32(i32 7, float %108)  ; Saturate(value)
  %110 = fmul fast float %109, %100
  br label %111

; <label>:111                                     ; preds = %101, %80
  %112 = phi float [ %110, %101 ], [ %100, %80 ]
  %113 = fmul fast float %112, %25
  br label %114

; <label>:114                                     ; preds = %111, %0
  %115 = phi float [ %113, %111 ], [ %25, %0 ]
  %116 = phi float [ %112, %111 ], [ 0.000000e+00, %0 ]
  %117 = fmul fast float %31, 5.000000e-01
  %118 = fmul fast float %32, 5.000000e-01
  %119 = fptosi float %117 to i32
  %120 = fptosi float %118 to i32
  %121 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 0, i32 %119, i32 %120, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = lshr i32 %122, 18
  %124 = uitofp i32 %123 to float
  %125 = fmul fast float %124, 0x3F4C00EBA0000000
  %126 = call float @dx.op.unary.f32(i32 21, float %125)  ; Exp(value)
  %127 = fadd fast float %126, -1.000000e+00
  %128 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %129 = extractvalue %dx.types.Dimensions %128, 0
  %130 = sitofp i32 %129 to float
  %131 = extractvalue %dx.types.Dimensions %128, 1
  %132 = sitofp i32 %131 to float
  %133 = fcmp fast oge float %117, %130
  %134 = fcmp fast oge float %118, %132
  %135 = or i1 %133, %134
  %136 = select i1 %135, float 0x4197782600000000, float %127
  %137 = fsub fast float %136, %28
  %138 = fcmp fast ogt float %137, 0.000000e+00
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %140, %31
  %143 = fmul fast float %141, %32
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = and i32 %145, 114688
  %147 = icmp ne i32 %146, 0
  %148 = select i1 %147, float %142, float 0.000000e+00
  %149 = select i1 %147, float %143, float 0.000000e+00
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %9, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fmul fast float %151, 2.550000e+02
  %153 = fptoui float %152 to i32
  %154 = select i1 %147, i32 %153, i32 0
  %155 = and i32 %154, -2
  %156 = icmp eq i32 %155, 2
  %157 = and i1 %138, %156
  %158 = xor i1 %138, true
  %159 = icmp eq i32 %154, 1
  %160 = and i1 %159, %158
  %161 = or i1 %160, %157
  %162 = and i32 %77, 262144
  %163 = icmp ne i32 %162, 0
  %164 = and i1 %163, %161
  %165 = xor i1 %161, true
  %166 = and i32 %77, 131072
  %167 = icmp ne i32 %166, 0
  %168 = and i1 %167, %165
  %169 = or i1 %164, %168
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %114
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %171

; <label>:171                                     ; preds = %170, %114
  %172 = and i32 %77, 32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %210, label %174, !dx.controlflow.hints !49

; <label>:174                                     ; preds = %171
  %175 = add i32 %74, 80
  %176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %180 = fsub fast float -0.000000e+00, %179
  %181 = fptoui float %180 to i32
  %182 = fptoui float %31 to i32
  %183 = fptoui float %32 to i32
  %184 = and i32 %181, 31
  %185 = lshr i32 %182, %184
  %186 = lshr i32 %183, %184
  %187 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 %181, i32 %185, i32 %186, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fcmp fast ogt float %188, -1.000000e+00
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %192 = select i1 %189, float %191, float 1.000000e+00
  %193 = fadd fast float %188, 1.000000e+00
  %194 = fmul fast float %192, %193
  %195 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %196 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %197 = fcmp fast oge float %195, %196
  %198 = select i1 %197, float 0x4197782600000000, float %195
  %199 = fsub fast float %198, %28
  %200 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %201 = and i32 %77, 4096
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203, !dx.controlflow.hints !50

; <label>:203                                     ; preds = %174
  %204 = call float @dx.op.unary.f32(i32 6, float %137)  ; FAbs(value)
  %205 = call float @dx.op.binary.f32(i32 36, float %200, float %204)  ; FMin(a,b)
  br label %206

; <label>:206                                     ; preds = %203, %174
  %207 = phi float [ %205, %203 ], [ %200, %174 ]
  %208 = fmul fast float %207, %177
  %209 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  br label %210

; <label>:210                                     ; preds = %206, %171
  %211 = phi float [ %209, %206 ], [ 1.000000e+00, %171 ]
  %212 = fmul fast float %211, %115
  %213 = fcmp fast ugt float %212, 0.000000e+00
  br i1 %213, label %215, label %214

; <label>:214                                     ; preds = %210
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %215

; <label>:215                                     ; preds = %214, %210
  %216 = add i32 %13, 40
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = extractvalue %dx.types.ResRet.i32 %217, 1
  %220 = extractvalue %dx.types.ResRet.i32 %217, 2
  %221 = extractvalue %dx.types.ResRet.i32 %217, 3
  %222 = bitcast i32 %218 to float
  %223 = bitcast i32 %219 to float
  %224 = bitcast i32 %220 to float
  %225 = bitcast i32 %221 to float
  %226 = add i32 %13, 72
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = add i32 %228, 0
  %230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %230, %dx.types.Handle %231, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = extractvalue %dx.types.ResRet.f32 %232, 1
  %235 = extractvalue %dx.types.ResRet.f32 %232, 3
  %236 = and i32 %77, 524288
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %258, label %238, !dx.controlflow.hints !51

; <label>:238                                     ; preds = %215
  %239 = add i32 %74, 144
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 3
  %245 = fadd fast float %235, -1.000000e+00
  %246 = fmul fast float %242, %245
  %247 = fadd fast float %246, 1.000000e+00
  %248 = fmul fast float %241, %247
  %249 = fadd fast float %116, -1.000000e+00
  %250 = fmul fast float %243, %249
  %251 = fadd fast float %250, 1.000000e+00
  %252 = fmul fast float %251, %248
  %253 = fadd fast float %211, -1.000000e+00
  %254 = fmul fast float %244, %253
  %255 = fadd fast float %254, 1.000000e+00
  %256 = fmul fast float %255, %252
  %257 = fmul float %256, 5.000000e+00
  br label %258

; <label>:258                                     ; preds = %238, %215
  %259 = phi float [ %257, %238 ], [ 0.000000e+00, %215 ]
  %260 = fadd fast float %212, -1.000000e+00
  %261 = fmul fast float %224, %260
  %262 = fadd fast float %261, 1.000000e+00
  %263 = fmul fast float %235, %262
  %264 = fadd fast float %263, -2.500000e-01
  %265 = call float @dx.op.unary.f32(i32 7, float %264)  ; Saturate(value)
  %266 = fmul fast float %263, 4.000000e+00
  %267 = call float @dx.op.unary.f32(i32 7, float %266)  ; Saturate(value)
  %268 = fmul fast float %225, %260
  %269 = fadd fast float %268, 1.000000e+00
  %270 = fmul fast float %269, 0x3FF5555560000000
  %271 = fmul fast float %270, %265
  %272 = fmul fast float %233, 2.000000e+00
  %273 = fmul fast float %234, 2.000000e+00
  %274 = fadd fast float %272, -1.000000e+00
  %275 = fadd fast float %273, -1.000000e+00
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %278 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %281 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %282 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %287 = fmul fast float %280, %71
  %288 = call float @dx.op.tertiary.f32(i32 46, float %72, float %281, float %287)  ; FMad(a,b,c)
  %289 = call float @dx.op.tertiary.f32(i32 46, float %73, float %282, float %288)  ; FMad(a,b,c)
  %290 = fmul fast float %284, %71
  %291 = call float @dx.op.tertiary.f32(i32 46, float %72, float %285, float %290)  ; FMad(a,b,c)
  %292 = call float @dx.op.tertiary.f32(i32 46, float %73, float %286, float %291)  ; FMad(a,b,c)
  %293 = fmul fast float %289, %277
  %294 = fmul fast float %73, %19
  %295 = fmul fast float %72, %20
  %296 = fsub fast float %294, %295
  %297 = fmul fast float %71, %20
  %298 = fmul fast float %73, %18
  %299 = fsub fast float %297, %298
  %300 = fmul fast float %72, %18
  %301 = fmul fast float %71, %19
  %302 = fsub fast float %300, %301
  %303 = fmul fast float %296, %70
  %304 = fmul fast float %299, %70
  %305 = fmul fast float %302, %70
  %306 = fmul fast float %280, %303
  %307 = call float @dx.op.tertiary.f32(i32 46, float %304, float %281, float %306)  ; FMad(a,b,c)
  %308 = call float @dx.op.tertiary.f32(i32 46, float %305, float %282, float %307)  ; FMad(a,b,c)
  %309 = fmul fast float %284, %303
  %310 = call float @dx.op.tertiary.f32(i32 46, float %304, float %285, float %309)  ; FMad(a,b,c)
  %311 = call float @dx.op.tertiary.f32(i32 46, float %305, float %286, float %310)  ; FMad(a,b,c)
  %312 = fmul fast float %308, %277
  %313 = fmul fast float %311, %278
  %314 = fcmp fast olt float %70, 0.000000e+00
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 2
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %318 = fsub fast float -0.000000e+00, %293
  %319 = select i1 %314, float %318, float %313
  %320 = select i1 %314, float %313, float %318
  %321 = fsub float -0.000000e+00, %312
  %322 = fmul fast float %31, %28
  %323 = fmul fast float %322, %316
  %324 = fmul fast float %32, %28
  %325 = fmul fast float %324, %317
  %326 = fmul fast float %274, %222
  %327 = fmul fast float %326, %271
  %328 = fmul fast float %275, %223
  %329 = fmul fast float %328, %271
  %330 = fmul fast float %327, %278
  %331 = fmul fast float %330, %292
  %332 = call float @dx.op.tertiary.f32(i32 46, float %319, float %329, float %331)  ; FMad(a,b,c)
  %333 = fmul fast float %320, %327
  %334 = call float @dx.op.tertiary.f32(i32 46, float %321, float %329, float %333)  ; FMad(a,b,c)
  %335 = fadd fast float %323, %332
  %336 = fsub fast float %325, %334
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 213)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = extractvalue %dx.types.CBufRet.f32 %337, 3
  %342 = fmul fast float %338, %28
  %343 = fmul fast float %339, %28
  %344 = fmul fast float %340, %28
  %345 = fmul fast float %341, %28
  %346 = call float @dx.op.binary.f32(i32 35, float %335, float %342)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %336, float %343)  ; FMax(a,b)
  %348 = call float @dx.op.binary.f32(i32 36, float %346, float %344)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 36, float %347, float %345)  ; FMin(a,b)
  %350 = fdiv fast float %348, %28
  %351 = fdiv fast float %349, %28
  %352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %350, float %351, float undef, float undef, i32 0, i32 0, i32 undef, float %259)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  %356 = fmul fast float %353, %24
  %357 = fmul fast float %354, %24
  %358 = fmul fast float %355, %24
  %359 = fmul fast float %267, %269
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %356)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %357)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !16, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!19 = !{!20, !21, !22}
!20 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!22 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{[29 x i32] [i32 27, i32 4, i32 15, i32 15, i32 0, i32 15, i32 7, i32 0, i32 7, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 15, i32 0, i32 15]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, !46}
!25 = !{!26, !44, null}
!26 = !{!27, !30, !32, !34, !37, !40, !41, !43}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 11}
!30 = !{i32 1, !"COLOR", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!31 = !{i32 3, i32 13}
!32 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 2, i8 0, !33}
!33 = !{i32 3, i32 3}
!34 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 3, i32 3, i8 0, !36}
!35 = !{i32 3}
!36 = !{i32 3, i32 7}
!37 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 4, i8 0, !39}
!38 = !{i32 4}
!39 = !{i32 3, i32 15}
!40 = !{i32 5, !"QUAD_POSITION", i8 9, i8 0, !28, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!41 = !{i32 6, !"COLOR", i8 5, i8 0, !35, i8 1, i32 1, i8 3, i32 6, i8 0, !42}
!42 = !{i32 3, i32 5}
!43 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !28, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!44 = !{!45}
!45 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!46 = !{i32 0, i64 24}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}

