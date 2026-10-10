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
; shader hash: ca9baeeb9124cc6b1da556d1a7351c7f
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
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 3, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = fmul fast float %36, %31
  %38 = fmul fast float %36, %32
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %72 = fmul fast float %67, %33
  %73 = fmul fast float %69, %33
  %74 = fmul fast float %71, %33
  %75 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.i32 %75, 3
  %77 = and i32 %76, 3
  %78 = icmp ne i32 %77, 0
  %79 = and i32 %76, 4
  %80 = icmp ne i32 %79, 0
  %81 = and i1 %78, %80
  br i1 %81, label %82, label %91

; <label>:82                                      ; preds = %0
  %83 = fmul fast float %41, %38
  %84 = fmul fast float %40, %37
  %85 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %84, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = fsub fast float 1.000000e+00, %86
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = fcmp fast olt float %87, %89
  br label %94

; <label>:91                                      ; preds = %0
  %92 = icmp eq i32 %79, 0
  %93 = and i1 %78, %92
  br label %94

; <label>:94                                      ; preds = %91, %82
  %95 = phi i1 [ %90, %82 ], [ %93, %91 ]
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %99 = fmul fast float %97, %37
  %100 = fmul fast float %98, %38
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = and i32 %102, 114688
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %104, float %99, float 0.000000e+00
  %106 = select i1 %104, float %100, float 0.000000e+00
  %107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %105, float %106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fmul fast float %108, 2.550000e+02
  %110 = fptoui float %109 to i32
  %111 = select i1 %104, i32 %110, i32 0
  %112 = mul i32 %14, 208
  %113 = add i32 %112, 188
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %76, 114688
  %117 = and i32 %76, 8
  %118 = icmp ne i32 %117, 0
  %119 = or i1 %95, %118
  %120 = select i1 %119, i32 %116, i32 16384
  %121 = and i32 %120, %115
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %94
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %124

; <label>:124                                     ; preds = %123, %94
  %125 = and i32 %115, 512
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %151, label %127

; <label>:127                                     ; preds = %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %131 = fmul fast float %129, %37
  %132 = fmul fast float %130, %38
  %133 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %135 = fdiv fast float %133, %134
  %136 = fcmp fast ogt float %135, 0x3FFC71C720000000
  br i1 %136, label %137, label %143

; <label>:137                                     ; preds = %127
  %138 = fdiv fast float 0x3FFC71C720000000, %135
  %139 = fmul fast float %138, %132
  %140 = fsub fast float 1.000000e+00, %138
  %141 = fmul fast float %140, 5.000000e-01
  %142 = fadd fast float %141, %139
  br label %151

; <label>:143                                     ; preds = %127
  %144 = fcmp fast olt float %135, 0x3FFC71C720000000
  br i1 %144, label %145, label %151

; <label>:145                                     ; preds = %143
  %146 = fmul fast float %131, 5.625000e-01
  %147 = fmul fast float %146, %135
  %148 = fmul fast float %135, 2.812500e-01
  %149 = fsub fast float 5.000000e-01, %148
  %150 = fadd fast float %149, %147
  br label %151

; <label>:151                                     ; preds = %145, %143, %137, %124
  %152 = phi float [ %25, %124 ], [ %131, %137 ], [ %150, %145 ], [ %131, %143 ]
  %153 = phi float [ %26, %124 ], [ %142, %137 ], [ %132, %145 ], [ %132, %143 ]
  %154 = and i32 %115, 16
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, float 1.000000e+00, float %30
  %157 = icmp eq i32 %154, 0
  br i1 %157, label %177, label %158, !dx.controlflow.hints !52

; <label>:158                                     ; preds = %151
  %159 = add i32 %112, 64
  %160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fadd fast float %161, 1.000000e+00
  %163 = fmul fast float %162, %30
  %164 = fsub fast float %163, %161
  %165 = fsub fast float %162, %164
  %166 = call float @dx.op.unary.f32(i32 7, float %165)  ; Saturate(value)
  %167 = fsub fast float 1.000000e+00, %163
  %168 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %169 = fsub fast float %166, %168
  %170 = fsub fast float %156, %168
  %171 = fdiv fast float %170, %169
  %172 = call float @dx.op.unary.f32(i32 7, float %171)  ; Saturate(value)
  %173 = fmul fast float %172, 2.000000e+00
  %174 = fsub fast float 3.000000e+00, %173
  %175 = fmul fast float %172, %172
  %176 = fmul fast float %175, %174
  br label %177

; <label>:177                                     ; preds = %158, %151
  %178 = phi float [ %176, %158 ], [ %156, %151 ]
  %179 = fcmp fast ogt float %178, 0.000000e+00
  br i1 %179, label %181, label %180

; <label>:180                                     ; preds = %177
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %181

; <label>:181                                     ; preds = %180, %177
  %182 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %183 = fmul fast float %37, 5.000000e-01
  %184 = fmul fast float %38, 5.000000e-01
  %185 = fptosi float %183 to i32
  %186 = fptosi float %184 to i32
  %187 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %185, i32 %186, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = lshr i32 %188, 18
  %190 = uitofp i32 %189 to float
  %191 = fmul fast float %190, 0x3F4C00EBA0000000
  %192 = call float @dx.op.unary.f32(i32 21, float %191)  ; Exp(value)
  %193 = fadd fast float %192, -1.000000e+00
  %194 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %195 = extractvalue %dx.types.Dimensions %194, 0
  %196 = sitofp i32 %195 to float
  %197 = extractvalue %dx.types.Dimensions %194, 1
  %198 = sitofp i32 %197 to float
  %199 = fcmp fast oge float %183, %196
  %200 = fcmp fast oge float %184, %198
  %201 = or i1 %199, %200
  %202 = select i1 %201, float 0x4197782600000000, float %193
  %203 = fsub fast float %202, %33
  %204 = fcmp fast ogt float %203, 0.000000e+00
  %205 = and i32 %111, -2
  %206 = icmp eq i32 %205, 2
  %207 = and i1 %206, %204
  %208 = xor i1 %204, true
  %209 = icmp eq i32 %111, 1
  %210 = and i1 %209, %208
  %211 = or i1 %207, %210
  %212 = and i32 %115, 262144
  %213 = icmp ne i32 %212, 0
  %214 = and i1 %213, %211
  %215 = xor i1 %211, true
  %216 = and i32 %115, 131072
  %217 = icmp ne i32 %216, 0
  %218 = and i1 %217, %215
  %219 = or i1 %214, %218
  br i1 %219, label %220, label %221

; <label>:220                                     ; preds = %181
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %221

; <label>:221                                     ; preds = %220, %181
  %222 = and i32 %115, 32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %473, label %224, !dx.controlflow.hints !53

; <label>:224                                     ; preds = %221
  %225 = add i32 %112, 80
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = extractvalue %dx.types.ResRet.f32 %226, 1
  %229 = extractvalue %dx.types.ResRet.f32 %226, 2
  %230 = extractvalue %dx.types.ResRet.f32 %226, 3
  %231 = add i32 %112, 96
  %232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = extractvalue %dx.types.ResRet.f32 %232, 1
  %235 = extractvalue %dx.types.ResRet.f32 %232, 2
  %236 = add i32 %112, 112
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = extractvalue %dx.types.ResRet.f32 %237, 2
  %241 = extractvalue %dx.types.ResRet.f32 %237, 3
  %242 = add i32 %112, 128
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = extractvalue %dx.types.ResRet.f32 %243, 3
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 4096
  %251 = icmp ne i32 %250, 0
  %252 = fcmp fast une float %235, 0.000000e+00
  %253 = and i32 %249, 64
  %254 = icmp ne i32 %253, 0
  %255 = and i32 %249, 128
  %256 = icmp eq i32 %255, 0
  %257 = and i32 %249, 2048
  %258 = icmp eq i32 %257, 0
  %259 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %260 = extractvalue %dx.types.Dimensions %259, 0
  %261 = sitofp i32 %260 to float
  %262 = extractvalue %dx.types.Dimensions %259, 1
  %263 = sitofp i32 %262 to float
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 3
  %267 = fmul fast float %265, %37
  %268 = fmul fast float %266, %38
  %269 = fmul fast float %267, %261
  %270 = fmul fast float %268, %263
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %273 = fsub fast float -0.000000e+00, %272
  %274 = fptoui float %273 to i32
  %275 = fptoui float %269 to i32
  %276 = fptoui float %270 to i32
  %277 = and i32 %274, 31
  %278 = lshr i32 %275, %277
  %279 = lshr i32 %276, %277
  %280 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %274, i32 %278, i32 %279, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = fcmp fast ogt float %281, -1.000000e+00
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %285 = select i1 %282, float %284, float 1.000000e+00
  %286 = fadd fast float %281, 1.000000e+00
  %287 = fmul fast float %285, %286
  %288 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %289 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %290 = fcmp fast oge float %288, %289
  %291 = select i1 %290, float 0x4197782600000000, float %288
  br i1 %258, label %369, label %292, !dx.controlflow.hints !54

; <label>:292                                     ; preds = %224
  %293 = fmul fast float %42, %265
  %294 = fmul fast float %44, %266
  %295 = fsub fast float 1.000000e+00, %293
  %296 = fsub fast float 1.000000e+00, %294
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = fmul fast float %295, %298
  %302 = fmul fast float %295, %299
  %303 = fmul fast float %295, %300
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %306 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %307 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %308 = fmul fast float %296, %305
  %309 = fmul fast float %296, %306
  %310 = fmul fast float %296, %307
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = fadd fast float %308, %312
  %316 = fadd fast float %315, %301
  %317 = fadd fast float %309, %313
  %318 = fadd fast float %317, %302
  %319 = fadd fast float %310, %314
  %320 = fadd fast float %319, %303
  %321 = fmul fast float %316, %291
  %322 = fmul fast float %318, %291
  %323 = fmul fast float %320, %291
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %328 = fsub fast float %325, %16
  %329 = fadd fast float %328, %321
  %330 = fsub fast float %326, %17
  %331 = fadd fast float %330, %322
  %332 = fsub fast float %327, %18
  %333 = fadd fast float %332, %323
  %334 = fmul fast float %19, %19
  %335 = call float @dx.op.dot3.f32(i32 55, float %329, float %331, float %333, float %329, float %331, float %333)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = fsub fast float %334, %335
  %337 = fmul fast float %234, %334
  %338 = fmul fast float %233, %334
  %339 = fcmp fast olt float %336, %337
  %340 = fcmp fast ogt float %336, %338
  %341 = or i1 %339, %340
  %342 = select i1 %341, float 0.000000e+00, float %336
  %343 = fsub fast float %233, %234
  %344 = fmul fast float %343, %334
  %345 = fsub fast float %342, %337
  %346 = fdiv fast float %345, %344
  %347 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %348 = fmul fast float %347, 2.000000e+00
  %349 = fsub fast float 3.000000e+00, %348
  %350 = fmul fast float %347, %347
  %351 = fmul fast float %350, %349
  %352 = fmul fast float %238, %27
  %353 = fmul fast float %239, %28
  %354 = fmul fast float %240, %29
  %355 = fsub fast float %352, %244
  %356 = fsub fast float %353, %245
  %357 = fsub fast float %354, %246
  %358 = fsub fast float %241, %247
  %359 = fmul fast float %351, %355
  %360 = fmul fast float %351, %356
  %361 = fmul fast float %351, %357
  %362 = fmul fast float %351, %358
  %363 = fadd fast float %359, %244
  %364 = fadd fast float %360, %245
  %365 = fadd fast float %361, %246
  %366 = fadd fast float %362, %247
  %367 = fmul fast float %227, %227
  %368 = fmul fast float %367, %342
  br label %464

; <label>:369                                     ; preds = %224
  %370 = and i32 %249, 256
  %371 = icmp eq i32 %370, 0
  %372 = fsub fast float %291, %33
  br i1 %371, label %421, label %373

; <label>:373                                     ; preds = %369
  %374 = fadd fast float %233, %33
  %375 = fcmp fast olt float %291, %33
  %376 = fcmp fast ogt float %291, %374
  %377 = or i1 %375, %376
  %378 = select i1 %377, float 0.000000e+00, float %372
  %379 = call float @dx.op.unary.f32(i32 83, float %291)  ; DerivCoarseX(value)
  %380 = call float @dx.op.unary.f32(i32 84, float %291)  ; DerivCoarseY(value)
  %381 = fmul fast float %379, %379
  %382 = fmul fast float %380, %380
  %383 = fadd fast float %382, %381
  %384 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %385 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %386 = fmul fast float %385, %384
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fmul fast float %387, %234
  %389 = fdiv fast float %372, %388
  %390 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %391 = fmul fast float %390, 2.000000e+00
  %392 = fsub fast float 3.000000e+00, %391
  %393 = fmul fast float %390, %390
  %394 = fmul fast float %393, %392
  %395 = fsub fast float %291, %374
  %396 = fadd fast float %395, %388
  %397 = fdiv fast float %396, %388
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %399 = fmul fast float %398, 2.000000e+00
  %400 = fsub fast float 3.000000e+00, %399
  %401 = fmul fast float %398, %398
  %402 = fmul fast float %401, %400
  %403 = fsub fast float %394, %402
  %404 = fmul fast float %238, %27
  %405 = fmul fast float %239, %28
  %406 = fmul fast float %240, %29
  %407 = fsub fast float %404, %244
  %408 = fsub fast float %405, %245
  %409 = fsub fast float %406, %246
  %410 = fsub fast float %241, %247
  %411 = fmul fast float %403, %407
  %412 = fmul fast float %403, %408
  %413 = fmul fast float %403, %409
  %414 = fmul fast float %403, %410
  %415 = fadd fast float %411, %244
  %416 = fadd fast float %412, %245
  %417 = fadd fast float %413, %246
  %418 = fadd fast float %414, %247
  %419 = fmul fast float %378, %227
  %420 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  br label %464

; <label>:421                                     ; preds = %369
  br i1 %252, label %422, label %435

; <label>:422                                     ; preds = %421
  %423 = fdiv fast float 5.000000e+01, %19
  %424 = select i1 %254, float %423, float 1.000000e+00
  %425 = fmul fast float %424, %227
  %426 = fmul fast float %25, 2.000000e+00
  %427 = fmul fast float %26, 2.000000e+00
  %428 = fadd fast float %426, -1.000000e+00
  %429 = fadd fast float %427, -1.000000e+00
  %430 = call float @dx.op.dot2.f32(i32 54, float %428, float %429, float %428, float %429)  ; Dot2(ax,ay,bx,by)
  %431 = fmul fast float %235, %19
  %432 = fmul fast float %431, %430
  %433 = fsub fast float %372, %432
  %434 = fmul fast float %425, %433
  br label %464

; <label>:435                                     ; preds = %421
  br i1 %256, label %456, label %436

; <label>:436                                     ; preds = %435
  %437 = fmul fast float %19, 0x3F947AE140000000
  %438 = select i1 %254, float %437, float 1.000000e+00
  %439 = fdiv fast float 1.000000e+00, %438
  %440 = fmul fast float %438, %228
  %441 = fmul fast float %438, %229
  %442 = fmul fast float %439, %230
  %443 = call float @dx.op.unary.f32(i32 6, float %372)  ; FAbs(value)
  %444 = fcmp fast olt float %443, %440
  br i1 %444, label %445, label %449, !dx.controlflow.hints !55

; <label>:445                                     ; preds = %436
  %446 = fmul fast float %439, %227
  %447 = fmul fast float %446, %443
  %448 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  br label %464

; <label>:449                                     ; preds = %436
  %450 = fcmp fast ogt float %443, %441
  br i1 %450, label %451, label %464

; <label>:451                                     ; preds = %449
  %452 = fsub fast float %443, %441
  %453 = fmul fast float %442, %452
  %454 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  %455 = fsub fast float 1.000000e+00, %454
  br label %464

; <label>:456                                     ; preds = %435
  %457 = fdiv fast float 5.000000e+01, %19
  %458 = select i1 %254, float %457, float 1.000000e+00
  %459 = fmul fast float %458, %227
  %460 = call float @dx.op.unary.f32(i32 6, float %203)  ; FAbs(value)
  %461 = select i1 %251, float %460, float 0x47EFFFFFE0000000
  %462 = call float @dx.op.binary.f32(i32 36, float %372, float %461)  ; FMin(a,b)
  %463 = fmul fast float %459, %462
  br label %464

; <label>:464                                     ; preds = %456, %451, %449, %445, %422, %373, %292
  %465 = phi float [ %368, %292 ], [ %420, %373 ], [ %434, %422 ], [ %463, %456 ], [ %448, %445 ], [ %455, %451 ], [ %443, %449 ]
  %466 = phi float [ %363, %292 ], [ %415, %373 ], [ %27, %422 ], [ %27, %456 ], [ %27, %445 ], [ %27, %451 ], [ %27, %449 ]
  %467 = phi float [ %364, %292 ], [ %416, %373 ], [ %28, %422 ], [ %28, %456 ], [ %28, %445 ], [ %28, %451 ], [ %28, %449 ]
  %468 = phi float [ %365, %292 ], [ %417, %373 ], [ %29, %422 ], [ %29, %456 ], [ %29, %445 ], [ %29, %451 ], [ %29, %449 ]
  %469 = phi float [ %366, %292 ], [ %418, %373 ], [ 1.000000e+00, %422 ], [ 1.000000e+00, %456 ], [ 1.000000e+00, %445 ], [ 1.000000e+00, %451 ], [ 1.000000e+00, %449 ]
  %470 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %471 = fmul fast float %469, %182
  %472 = fmul fast float %471, %470
  br label %473

; <label>:473                                     ; preds = %464, %221
  %474 = phi float [ %466, %464 ], [ %27, %221 ]
  %475 = phi float [ %467, %464 ], [ %28, %221 ]
  %476 = phi float [ %468, %464 ], [ %29, %221 ]
  %477 = phi float [ %472, %464 ], [ %182, %221 ]
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %480 = fptosi float %33 to i32
  %481 = sitofp i32 %480 to float
  %482 = fadd fast float %479, %481
  %483 = fmul fast float %482, 0x3FE3C6EF40000000
  %484 = frem fast float %37, 2.560000e+02
  %485 = frem fast float %38, 2.560000e+02
  %486 = fptoui float %484 to i32
  %487 = fptoui float %485 to i32
  %488 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %486, i32 %487, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = fadd fast float %489, %483
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = and i32 %115, 1
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %550, label %494, !dx.controlflow.hints !56

; <label>:494                                     ; preds = %473
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 2
  %497 = extractvalue %dx.types.ResRet.f32 %495, 3
  %498 = add i32 %112, 16
  %499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = extractvalue %dx.types.ResRet.f32 %499, 1
  %502 = extractvalue %dx.types.ResRet.f32 %499, 2
  %503 = add i32 %112, 32
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = and i32 %115, 2
  %509 = icmp eq i32 %508, 0
  %510 = call float @dx.op.dot3.f32(i32 55, float %22, float %23, float %24, float %22, float %23, float %24)  ; Dot3(ax,ay,az,bx,by,bz)
  %511 = call float @dx.op.unary.f32(i32 25, float %510)  ; Rsqrt(value)
  %512 = fmul fast float %511, %22
  %513 = fmul fast float %511, %23
  %514 = fmul fast float %511, %24
  %515 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.unary.f32(i32 25, float %515)  ; Rsqrt(value)
  %517 = fmul fast float %516, %72
  %518 = fmul fast float %516, %73
  %519 = fmul fast float %516, %74
  %520 = call float @dx.op.dot3.f32(i32 55, float %517, float %518, float %519, float %512, float %513, float %514)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = fmul fast float %520, %520
  %522 = fmul fast float %521, %496
  %523 = fadd fast float %522, %497
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  br i1 %509, label %525, label %535, !dx.controlflow.hints !57

; <label>:525                                     ; preds = %494
  %526 = extractvalue %dx.types.ResRet.f32 %495, 1
  %527 = extractvalue %dx.types.ResRet.f32 %495, 0
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 3
  %530 = fmul fast float %529, %515
  %531 = fsub fast float %527, %530
  %532 = fmul fast float %531, %526
  %533 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  %534 = fmul fast float %533, %524
  br label %535

; <label>:535                                     ; preds = %525, %494
  %536 = phi float [ %534, %525 ], [ %524, %494 ]
  %537 = fsub fast float %500, %505
  %538 = fsub fast float %501, %506
  %539 = fsub fast float %502, %507
  %540 = fmul fast float %536, %537
  %541 = fmul fast float %536, %538
  %542 = fmul fast float %536, %539
  %543 = fadd fast float %540, %505
  %544 = fadd fast float %541, %506
  %545 = fadd fast float %542, %507
  %546 = fmul fast float %543, %474
  %547 = fmul fast float %544, %475
  %548 = fmul fast float %545, %476
  %549 = fmul fast float %536, %477
  br label %550

; <label>:550                                     ; preds = %535, %473
  %551 = phi float [ %546, %535 ], [ %474, %473 ]
  %552 = phi float [ %547, %535 ], [ %475, %473 ]
  %553 = phi float [ %548, %535 ], [ %476, %473 ]
  %554 = phi float [ %549, %535 ], [ %477, %473 ]
  %555 = add i32 %15, 72
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = add i32 %557, 0
  %559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %559, %dx.types.Handle %34, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = add i32 %15, 56
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = lshr i32 %565, 8
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %565, 16
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = fmul fast float %554, %551
  %585 = fmul fast float %584, %561
  %586 = fmul fast float %568, %568
  %587 = fmul fast float %586, %585
  %588 = fmul fast float %587, %578
  %589 = fmul fast float %554, %552
  %590 = fmul fast float %589, %562
  %591 = fmul fast float %572, %572
  %592 = fmul fast float %591, %590
  %593 = fmul fast float %592, %579
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  br i1 %95, label %596, label %601

; <label>:596                                     ; preds = %550
  %597 = fadd fast float %588, %593
  %598 = fmul fast float %581, %597
  %599 = fmul fast float %583, %598
  %600 = fmul fast float %595, %599
  br label %623

; <label>:601                                     ; preds = %550
  %602 = extractvalue %dx.types.ResRet.f32 %577, 2
  %603 = extractvalue %dx.types.ResRet.f32 %560, 2
  %604 = fmul fast float %588, %581
  %605 = fmul fast float %593, %581
  %606 = fmul fast float %604, %583
  %607 = fmul fast float %605, %583
  %608 = fmul fast float %595, %606
  %609 = fmul fast float %595, %607
  %610 = fmul fast float %554, %553
  %611 = fmul fast float %610, %603
  %612 = fmul fast float %576, %576
  %613 = fmul fast float %612, %611
  %614 = fmul fast float %613, %602
  %615 = fmul fast float %614, %581
  %616 = fmul fast float %615, %583
  %617 = fmul fast float %616, %595
  %618 = call float @dx.op.binary.f32(i32 35, float %609, float %617)  ; FMax(a,b)
  %619 = call float @dx.op.binary.f32(i32 35, float %608, float %618)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 35, float %619, float 0.000000e+00)  ; FMax(a,b)
  %621 = fcmp fast ugt float %620, 0x3F10000000000000
  br i1 %621, label %623, label %622

; <label>:622                                     ; preds = %601
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %623

; <label>:623                                     ; preds = %622, %601, %596
  %624 = phi float [ %600, %596 ], [ %608, %622 ], [ %608, %601 ]
  %625 = phi float [ 0.000000e+00, %596 ], [ %609, %622 ], [ %609, %601 ]
  %626 = phi float [ 0.000000e+00, %596 ], [ %617, %622 ], [ %617, %601 ]
  %627 = fadd fast float %491, 0x3FE3C6EF40000000
  %628 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %629 = call float @dx.op.unary.f32(i32 23, float %624)  ; Log(value)
  %630 = fadd fast float %629, -7.000000e+00
  %631 = call float @dx.op.unary.f32(i32 21, float %630)  ; Exp(value)
  %632 = fmul fast float %628, 2.000000e+00
  %633 = fadd fast float %632, -1.000000e+00
  %634 = fmul fast float %631, %633
  %635 = fcmp fast ogt float %624, 0.000000e+00
  %636 = select i1 %635, float %634, float 0.000000e+00
  %637 = fadd fast float %636, %624
  %638 = fadd fast float %491, 0x3FF3C6EF40000000
  %639 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 23, float %625)  ; Log(value)
  %641 = fadd fast float %640, -7.000000e+00
  %642 = call float @dx.op.unary.f32(i32 21, float %641)  ; Exp(value)
  %643 = fmul fast float %639, 2.000000e+00
  %644 = fadd fast float %643, -1.000000e+00
  %645 = fmul fast float %642, %644
  %646 = fcmp fast ogt float %625, 0.000000e+00
  %647 = select i1 %646, float %645, float 0.000000e+00
  %648 = fadd fast float %647, %625
  %649 = fadd fast float %491, 0x3FFDAA66E0000000
  %650 = call float @dx.op.unary.f32(i32 22, float %649)  ; Frc(value)
  %651 = call float @dx.op.unary.f32(i32 23, float %626)  ; Log(value)
  %652 = fadd fast float %651, -6.000000e+00
  %653 = call float @dx.op.unary.f32(i32 21, float %652)  ; Exp(value)
  %654 = fmul fast float %650, 2.000000e+00
  %655 = fadd fast float %654, -1.000000e+00
  %656 = fmul fast float %653, %655
  %657 = fcmp fast ogt float %626, 0.000000e+00
  %658 = select i1 %657, float %656, float 0.000000e+00
  %659 = fadd fast float %658, %626
  %660 = select i1 %95, float %625, float %648
  %661 = select i1 %95, float %626, float %659
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %662 = call float @dx.op.binary.f32(i32 36, float %637, float 3.225500e+04)  ; FMin(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float %660, float 3.225500e+04)  ; FMin(a,b)
  %664 = call float @dx.op.binary.f32(i32 36, float %661, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %662)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %663)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %664)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!25 = !{[33 x i32] [i32 31, i32 8, i32 7, i32 7, i32 0, i32 7, i32 1, i32 3, i32 4, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!26 = !{void ()* @ps_main, !"ps_main", !27, !4, !51}
!27 = !{!28, !47, null}
!28 = !{!29, !32, !34, !36, !39, !41, !43, !44, !46}
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
!43 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !30, i8 1, i32 1, i8 4, i32 6, i8 0, !33}
!44 = !{i32 7, !"COLOR", i8 5, i8 0, !37, i8 1, i32 1, i8 3, i32 7, i8 0, !45}
!45 = !{i32 3, i32 5}
!46 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !30, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!47 = !{!48, !49}
!48 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !33}
!49 = !{i32 1, !"SV_Target", i8 9, i8 16, !50, i8 0, i32 1, i8 4, i32 1, i8 0, !33}
!50 = !{i32 1}
!51 = !{i32 0, i64 24}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}

