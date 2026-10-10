;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1   xyz         3     NONE   float   xyz 
; TEXCOORD                 3   xyz         4     NONE   float   xyz 
; TEXCOORD                 4   xyzw        5     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        6     NONE   float       
; COLOR                    3   xyz         7     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c9fa7937680613b42a932515b1d77f7e
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
; TEXCOORD                 1                 linear       
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1             t0     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3             t1     1
;                                   texture    byte         r/o      T4             t2     1
;                                   texture     f32          2d      T5     t57,space2     1
;                                   texture    byte         r/o      T6     t69,space1     1
;                                   texture     u32          2d      T7     t56,space2     1
;                                   texture     f32          2d      T8     t12,space2     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 3, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 28, 30 }
;   output 3 depends on inputs: { 0, 1, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 28, 30 }
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
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = fmul fast float %36, %32
  %38 = fmul fast float %36, %33
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %41 = extractvalue %dx.types.CBufRet.f32 %39, 3
  %42 = fmul fast float %37, 2.000000e+00
  %43 = fmul fast float %42, %40
  %44 = fmul fast float %38, 2.000000e+00
  %45 = fmul fast float %44, %41
  %46 = fsub fast float 1.000000e+00, %43
  %47 = fsub fast float 1.000000e+00, %45
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %51 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %52 = fmul fast float %46, %49
  %53 = fmul fast float %46, %50
  %54 = fmul fast float %46, %51
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %47, %56
  %60 = fmul fast float %47, %57
  %61 = fmul fast float %47, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fadd fast float %59, %63
  %67 = fadd fast float %66, %52
  %68 = fadd fast float %60, %64
  %69 = fadd fast float %68, %53
  %70 = fadd fast float %61, %65
  %71 = fadd fast float %70, %54
  %72 = fmul fast float %67, %34
  %73 = fmul fast float %69, %34
  %74 = fmul fast float %71, %34
  %75 = fcmp fast ogt float %19, 0.000000e+00
  %76 = select i1 %75, float 1.000000e+00, float -1.000000e+00
  %77 = mul i32 %14, 208
  %78 = add i32 %77, 188
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %78, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %83 = fsub fast float %23, %82
  %84 = fsub fast float %24, %82
  %85 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %1, %dx.types.Handle %11, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float %25)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = fmul fast float %86, %31
  %88 = and i32 %80, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %124, label %90, !dx.controlflow.hints !50

; <label>:90                                      ; preds = %0
  %91 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 2
  %93 = extractvalue %dx.types.ResRet.f32 %91, 3
  %94 = and i32 %80, 2
  %95 = icmp eq i32 %94, 0
  %96 = call float @dx.op.dot3.f32(i32 55, float %20, float %21, float %22, float %20, float %21, float %22)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = call float @dx.op.unary.f32(i32 25, float %96)  ; Rsqrt(value)
  %98 = fmul fast float %97, %20
  %99 = fmul fast float %97, %21
  %100 = fmul fast float %97, %22
  %101 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = call float @dx.op.unary.f32(i32 25, float %101)  ; Rsqrt(value)
  %103 = fmul fast float %102, %72
  %104 = fmul fast float %102, %73
  %105 = fmul fast float %102, %74
  %106 = call float @dx.op.dot3.f32(i32 55, float %103, float %104, float %105, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = fmul fast float %106, %106
  %108 = fmul fast float %107, %92
  %109 = fadd fast float %108, %93
  %110 = call float @dx.op.unary.f32(i32 7, float %109)  ; Saturate(value)
  br i1 %95, label %111, label %121, !dx.controlflow.hints !51

; <label>:111                                     ; preds = %90
  %112 = extractvalue %dx.types.ResRet.f32 %91, 1
  %113 = extractvalue %dx.types.ResRet.f32 %91, 0
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %116 = fmul fast float %115, %101
  %117 = fsub fast float %113, %116
  %118 = fmul fast float %117, %112
  %119 = call float @dx.op.unary.f32(i32 7, float %118)  ; Saturate(value)
  %120 = fmul fast float %119, %110
  br label %121

; <label>:121                                     ; preds = %111, %90
  %122 = phi float [ %120, %111 ], [ %110, %90 ]
  %123 = fmul fast float %122, %87
  br label %124

; <label>:124                                     ; preds = %121, %0
  %125 = phi float [ %123, %121 ], [ %87, %0 ]
  %126 = phi float [ %122, %121 ], [ 0.000000e+00, %0 ]
  %127 = fmul fast float %37, 5.000000e-01
  %128 = fmul fast float %38, 5.000000e-01
  %129 = fptosi float %127 to i32
  %130 = fptosi float %128 to i32
  %131 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %129, i32 %130, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = lshr i32 %132, 18
  %134 = uitofp i32 %133 to float
  %135 = fmul fast float %134, 0x3F4C00EBA0000000
  %136 = call float @dx.op.unary.f32(i32 21, float %135)  ; Exp(value)
  %137 = fadd fast float %136, -1.000000e+00
  %138 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %139 = extractvalue %dx.types.Dimensions %138, 0
  %140 = sitofp i32 %139 to float
  %141 = extractvalue %dx.types.Dimensions %138, 1
  %142 = sitofp i32 %141 to float
  %143 = fcmp fast oge float %127, %140
  %144 = fcmp fast oge float %128, %142
  %145 = or i1 %143, %144
  %146 = select i1 %145, float 0x4197782600000000, float %137
  %147 = fsub fast float %146, %34
  %148 = fcmp fast ogt float %147, 0.000000e+00
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fmul fast float %150, %37
  %153 = fmul fast float %151, %38
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = and i32 %155, 114688
  %157 = icmp ne i32 %156, 0
  %158 = select i1 %157, float %152, float 0.000000e+00
  %159 = select i1 %157, float %153, float 0.000000e+00
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fmul fast float %161, 2.550000e+02
  %163 = fptoui float %162 to i32
  %164 = select i1 %157, i32 %163, i32 0
  %165 = and i32 %164, -2
  %166 = icmp eq i32 %165, 2
  %167 = and i1 %148, %166
  %168 = xor i1 %148, true
  %169 = icmp eq i32 %164, 1
  %170 = and i1 %169, %168
  %171 = or i1 %170, %167
  %172 = and i32 %80, 262144
  %173 = icmp ne i32 %172, 0
  %174 = and i1 %173, %171
  %175 = xor i1 %171, true
  %176 = and i32 %80, 131072
  %177 = icmp ne i32 %176, 0
  %178 = and i1 %177, %175
  %179 = or i1 %174, %178
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %124
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %181

; <label>:181                                     ; preds = %180, %124
  %182 = and i32 %80, 32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %220, label %184, !dx.controlflow.hints !52

; <label>:184                                     ; preds = %181
  %185 = add i32 %77, 80
  %186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %190 = fsub fast float -0.000000e+00, %189
  %191 = fptoui float %190 to i32
  %192 = fptoui float %37 to i32
  %193 = fptoui float %38 to i32
  %194 = and i32 %191, 31
  %195 = lshr i32 %192, %194
  %196 = lshr i32 %193, %194
  %197 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 %191, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = fcmp fast ogt float %198, -1.000000e+00
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %202 = select i1 %199, float %201, float 1.000000e+00
  %203 = fadd fast float %198, 1.000000e+00
  %204 = fmul fast float %202, %203
  %205 = call float @dx.op.unary.f32(i32 6, float %204)  ; FAbs(value)
  %206 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %207 = fcmp fast oge float %205, %206
  %208 = select i1 %207, float 0x4197782600000000, float %205
  %209 = fsub fast float %208, %34
  %210 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %211 = and i32 %80, 4096
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213, !dx.controlflow.hints !53

; <label>:213                                     ; preds = %184
  %214 = call float @dx.op.unary.f32(i32 6, float %147)  ; FAbs(value)
  %215 = call float @dx.op.binary.f32(i32 36, float %210, float %214)  ; FMin(a,b)
  br label %216

; <label>:216                                     ; preds = %213, %184
  %217 = phi float [ %215, %213 ], [ %210, %184 ]
  %218 = fmul fast float %217, %187
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  br label %220

; <label>:220                                     ; preds = %216, %181
  %221 = phi float [ %219, %216 ], [ 1.000000e+00, %181 ]
  %222 = fmul fast float %221, %125
  %223 = fcmp fast ugt float %222, 0.000000e+00
  br i1 %223, label %225, label %224

; <label>:224                                     ; preds = %220
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %225

; <label>:225                                     ; preds = %224, %220
  %226 = add i32 %15, 56
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = extractvalue %dx.types.ResRet.i32 %227, 1
  %230 = extractvalue %dx.types.ResRet.i32 %227, 2
  %231 = extractvalue %dx.types.ResRet.i32 %227, 3
  %232 = bitcast i32 %228 to float
  %233 = bitcast i32 %229 to float
  %234 = bitcast i32 %230 to float
  %235 = bitcast i32 %231 to float
  %236 = add i32 %15, 88
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = add i32 %238, 0
  %240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %242 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %240, %dx.types.Handle %241, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 3
  %246 = and i32 %80, 524288
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %268, label %248, !dx.controlflow.hints !54

; <label>:248                                     ; preds = %225
  %249 = add i32 %77, 144
  %250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = extractvalue %dx.types.ResRet.f32 %250, 2
  %254 = extractvalue %dx.types.ResRet.f32 %250, 3
  %255 = fadd fast float %245, -1.000000e+00
  %256 = fmul fast float %252, %255
  %257 = fadd fast float %256, 1.000000e+00
  %258 = fmul fast float %251, %257
  %259 = fadd fast float %126, -1.000000e+00
  %260 = fmul fast float %253, %259
  %261 = fadd fast float %260, 1.000000e+00
  %262 = fmul fast float %261, %258
  %263 = fadd fast float %221, -1.000000e+00
  %264 = fmul fast float %254, %263
  %265 = fadd fast float %264, 1.000000e+00
  %266 = fmul fast float %265, %262
  %267 = fmul float %266, 5.000000e+00
  br label %268

; <label>:268                                     ; preds = %248, %225
  %269 = phi float [ %267, %248 ], [ 0.000000e+00, %225 ]
  %270 = fadd fast float %222, -1.000000e+00
  %271 = fmul fast float %234, %270
  %272 = fadd fast float %271, 1.000000e+00
  %273 = fmul fast float %245, %272
  %274 = fadd fast float %273, -2.500000e-01
  %275 = call float @dx.op.unary.f32(i32 7, float %274)  ; Saturate(value)
  %276 = fmul fast float %273, 4.000000e+00
  %277 = call float @dx.op.unary.f32(i32 7, float %276)  ; Saturate(value)
  %278 = fmul fast float %235, %270
  %279 = fadd fast float %278, 1.000000e+00
  %280 = fmul fast float %279, 0x3FF5555560000000
  %281 = fmul fast float %280, %275
  %282 = fmul fast float %243, 2.000000e+00
  %283 = fmul fast float %244, 2.000000e+00
  %284 = fadd fast float %282, -1.000000e+00
  %285 = fadd fast float %283, -1.000000e+00
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %292 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %297 = fmul fast float %290, %16
  %298 = call float @dx.op.tertiary.f32(i32 46, float %17, float %291, float %297)  ; FMad(a,b,c)
  %299 = call float @dx.op.tertiary.f32(i32 46, float %18, float %292, float %298)  ; FMad(a,b,c)
  %300 = fmul fast float %294, %16
  %301 = call float @dx.op.tertiary.f32(i32 46, float %17, float %295, float %300)  ; FMad(a,b,c)
  %302 = call float @dx.op.tertiary.f32(i32 46, float %18, float %296, float %301)  ; FMad(a,b,c)
  %303 = fmul fast float %299, %287
  %304 = fmul fast float %21, %18
  %305 = fmul fast float %22, %17
  %306 = fsub fast float %304, %305
  %307 = fmul fast float %22, %16
  %308 = fmul fast float %20, %18
  %309 = fsub fast float %307, %308
  %310 = fmul fast float %20, %17
  %311 = fmul fast float %21, %16
  %312 = fsub fast float %310, %311
  %313 = fmul fast float %306, %76
  %314 = fmul fast float %309, %76
  %315 = fmul fast float %312, %76
  %316 = fmul fast float %290, %313
  %317 = call float @dx.op.tertiary.f32(i32 46, float %314, float %291, float %316)  ; FMad(a,b,c)
  %318 = call float @dx.op.tertiary.f32(i32 46, float %315, float %292, float %317)  ; FMad(a,b,c)
  %319 = fmul fast float %294, %313
  %320 = call float @dx.op.tertiary.f32(i32 46, float %314, float %295, float %319)  ; FMad(a,b,c)
  %321 = call float @dx.op.tertiary.f32(i32 46, float %315, float %296, float %320)  ; FMad(a,b,c)
  %322 = fmul fast float %318, %287
  %323 = fmul fast float %321, %288
  %324 = fcmp fast olt float %76, 0.000000e+00
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 3
  %328 = fsub fast float -0.000000e+00, %303
  %329 = select i1 %324, float %328, float %323
  %330 = select i1 %324, float %323, float %328
  %331 = fsub float -0.000000e+00, %322
  %332 = fmul fast float %37, %34
  %333 = fmul fast float %332, %326
  %334 = fmul fast float %38, %34
  %335 = fmul fast float %334, %327
  %336 = fmul fast float %284, %232
  %337 = fmul fast float %336, %281
  %338 = fmul fast float %285, %233
  %339 = fmul fast float %338, %281
  %340 = fmul fast float %337, %288
  %341 = fmul fast float %340, %302
  %342 = call float @dx.op.tertiary.f32(i32 46, float %329, float %339, float %341)  ; FMad(a,b,c)
  %343 = fmul fast float %330, %337
  %344 = call float @dx.op.tertiary.f32(i32 46, float %331, float %339, float %343)  ; FMad(a,b,c)
  %345 = fadd fast float %333, %342
  %346 = fsub fast float %335, %344
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 213)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %352 = fmul fast float %348, %34
  %353 = fmul fast float %349, %34
  %354 = fmul fast float %350, %34
  %355 = fmul fast float %351, %34
  %356 = call float @dx.op.binary.f32(i32 35, float %345, float %352)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %346, float %353)  ; FMax(a,b)
  %358 = call float @dx.op.binary.f32(i32 36, float %356, float %354)  ; FMin(a,b)
  %359 = call float @dx.op.binary.f32(i32 36, float %357, float %355)  ; FMin(a,b)
  %360 = fdiv fast float %358, %34
  %361 = fdiv fast float %359, %34
  %362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %360, float %361, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = extractvalue %dx.types.ResRet.f32 %362, 1
  %365 = extractvalue %dx.types.ResRet.f32 %362, 2
  %366 = fmul fast float %363, %28
  %367 = fmul fast float %364, %29
  %368 = fmul fast float %365, %30
  %369 = fmul fast float %277, %279
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %366)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %367)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!25}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !17, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16}
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
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!17 = !{!18, !19}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!20 = !{!21, !22, !23, !24}
!21 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!22 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!23 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!25 = !{[33 x i32] [i32 31, i32 4, i32 15, i32 15, i32 0, i32 15, i32 1, i32 2, i32 4, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 15, i32 0, i32 15]}
!26 = !{void ()* @ps_main, !"ps_main", !27, !4, !49}
!27 = !{!28, !47, null}
!28 = !{!29, !32, !34, !36, !39, !41, !43, !44, !46}
!29 = !{i32 0, !"SV_Position", i8 9, i8 3, !30, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!30 = !{i32 0}
!31 = !{i32 3, i32 11}
!32 = !{i32 1, !"COLOR", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!33 = !{i32 3, i32 15}
!34 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 2, i32 2, i8 0, !35}
!35 = !{i32 3, i32 3}
!36 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 3, i32 3, i8 0, !38}
!37 = !{i32 1}
!38 = !{i32 3, i32 7}
!39 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 3, i32 4, i8 0, !38}
!40 = !{i32 3}
!41 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 4, i32 5, i8 0, !33}
!42 = !{i32 4}
!43 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !30, i8 1, i32 1, i8 4, i32 6, i8 0, null}
!44 = !{i32 7, !"COLOR", i8 5, i8 0, !40, i8 1, i32 1, i8 3, i32 7, i8 0, !45}
!45 = !{i32 3, i32 5}
!46 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !30, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!47 = !{!48}
!48 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !33}
!49 = !{i32 0, i64 24}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}

