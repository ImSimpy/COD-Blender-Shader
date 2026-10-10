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
;
; shader hash: 44be36f393cff776a817784079a3f93f
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
; Number of inputs: 31, outputs: 4
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
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
  %75 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %76 = extractvalue %dx.types.Dimensions %75, 0
  %77 = sitofp i32 %76 to float
  %78 = extractvalue %dx.types.Dimensions %75, 1
  %79 = sitofp i32 %78 to float
  %80 = fmul fast float %40, %37
  %81 = fmul fast float %41, %38
  %82 = fmul fast float %80, %77
  %83 = fmul fast float %81, %79
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 1
  %86 = fsub fast float -0.000000e+00, %85
  %87 = fptoui float %86 to i32
  %88 = fptoui float %82 to i32
  %89 = fptoui float %83 to i32
  %90 = and i32 %87, 31
  %91 = lshr i32 %88, %90
  %92 = lshr i32 %89, %90
  %93 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %87, i32 %91, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = fcmp fast olt float %94, -1.000000e+00
  %96 = fcmp fast ogt float %94, -1.000000e+00
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %99 = select i1 %96, float %98, float 1.000000e+00
  %100 = fadd fast float %94, 1.000000e+00
  %101 = fmul fast float %99, %100
  %102 = call float @dx.op.unary.f32(i32 6, float %101)  ; FAbs(value)
  %103 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %104 = fcmp fast oge float %102, %103
  %105 = select i1 %104, float 0x4197782600000000, float %102
  %106 = fcmp fast ogt float %33, %105
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %108

; <label>:108                                     ; preds = %107, %0
  br i1 %95, label %109, label %110

; <label>:109                                     ; preds = %108
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %110

; <label>:110                                     ; preds = %109, %108
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.i32 %112, 3
  %114 = and i32 %113, 3
  %115 = icmp ne i32 %114, 0
  %116 = and i32 %113, 4
  %117 = icmp ne i32 %116, 0
  %118 = and i1 %115, %117
  br i1 %118, label %119, label %130

; <label>:119                                     ; preds = %110
  %120 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %121 = fmul fast float %120, %38
  %122 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %123 = fmul fast float %122, %37
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %123, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = fcmp fast olt float %126, %128
  br label %133

; <label>:130                                     ; preds = %110
  %131 = icmp eq i32 %116, 0
  %132 = and i1 %115, %131
  br label %133

; <label>:133                                     ; preds = %130, %119
  %134 = phi i1 [ %129, %119 ], [ %132, %130 ]
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %136, %37
  %139 = fmul fast float %137, %38
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = and i32 %141, 114688
  %143 = icmp ne i32 %142, 0
  %144 = select i1 %143, float %138, float 0.000000e+00
  %145 = select i1 %143, float %139, float 0.000000e+00
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %144, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = fmul fast float %147, 2.550000e+02
  %149 = fptoui float %148 to i32
  %150 = select i1 %143, i32 %149, i32 0
  %151 = mul i32 %14, 208
  %152 = add i32 %151, 188
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %113, 114688
  %156 = and i32 %113, 8
  %157 = icmp ne i32 %156, 0
  %158 = or i1 %134, %157
  %159 = select i1 %158, i32 %155, i32 16384
  %160 = and i32 %159, %154
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %133
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %163

; <label>:163                                     ; preds = %162, %133
  %164 = and i32 %154, 512
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %190, label %166

; <label>:166                                     ; preds = %163
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 3
  %170 = fmul fast float %168, %37
  %171 = fmul fast float %169, %38
  %172 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %173 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %174 = fdiv fast float %172, %173
  %175 = fcmp fast ogt float %174, 0x3FFC71C720000000
  br i1 %175, label %176, label %182

; <label>:176                                     ; preds = %166
  %177 = fdiv fast float 0x3FFC71C720000000, %174
  %178 = fmul fast float %177, %171
  %179 = fsub fast float 1.000000e+00, %177
  %180 = fmul fast float %179, 5.000000e-01
  %181 = fadd fast float %180, %178
  br label %190

; <label>:182                                     ; preds = %166
  %183 = fcmp fast olt float %174, 0x3FFC71C720000000
  br i1 %183, label %184, label %190

; <label>:184                                     ; preds = %182
  %185 = fmul fast float %170, 5.625000e-01
  %186 = fmul fast float %185, %174
  %187 = fmul fast float %174, 2.812500e-01
  %188 = fsub fast float 5.000000e-01, %187
  %189 = fadd fast float %188, %186
  br label %190

; <label>:190                                     ; preds = %184, %182, %176, %163
  %191 = phi float [ %25, %163 ], [ %170, %176 ], [ %189, %184 ], [ %170, %182 ]
  %192 = phi float [ %26, %163 ], [ %181, %176 ], [ %171, %184 ], [ %171, %182 ]
  %193 = and i32 %154, 16
  %194 = icmp ne i32 %193, 0
  %195 = select i1 %194, float 1.000000e+00, float %30
  %196 = icmp eq i32 %193, 0
  br i1 %196, label %216, label %197, !dx.controlflow.hints !50

; <label>:197                                     ; preds = %190
  %198 = add i32 %151, 64
  %199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fadd fast float %200, 1.000000e+00
  %202 = fmul fast float %201, %30
  %203 = fsub fast float %202, %200
  %204 = fsub fast float %201, %203
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %206 = fsub fast float 1.000000e+00, %202
  %207 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %208 = fsub fast float %205, %207
  %209 = fsub fast float %195, %207
  %210 = fdiv fast float %209, %208
  %211 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %212 = fmul fast float %211, 2.000000e+00
  %213 = fsub fast float 3.000000e+00, %212
  %214 = fmul fast float %211, %211
  %215 = fmul fast float %214, %213
  br label %216

; <label>:216                                     ; preds = %197, %190
  %217 = phi float [ %215, %197 ], [ %195, %190 ]
  %218 = fcmp fast ogt float %217, 0.000000e+00
  br i1 %218, label %220, label %219

; <label>:219                                     ; preds = %216
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %220

; <label>:220                                     ; preds = %219, %216
  %221 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %222 = fmul fast float %37, 5.000000e-01
  %223 = fmul fast float %38, 5.000000e-01
  %224 = fptosi float %222 to i32
  %225 = fptosi float %223 to i32
  %226 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = lshr i32 %227, 18
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F4C00EBA0000000
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fadd fast float %231, -1.000000e+00
  %233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %234 = extractvalue %dx.types.Dimensions %233, 0
  %235 = sitofp i32 %234 to float
  %236 = extractvalue %dx.types.Dimensions %233, 1
  %237 = sitofp i32 %236 to float
  %238 = fcmp fast oge float %222, %235
  %239 = fcmp fast oge float %223, %237
  %240 = or i1 %238, %239
  %241 = select i1 %240, float 0x4197782600000000, float %232
  %242 = fsub fast float %241, %33
  %243 = fcmp fast ogt float %242, 0.000000e+00
  %244 = and i32 %150, -2
  %245 = icmp eq i32 %244, 2
  %246 = and i1 %245, %243
  %247 = xor i1 %243, true
  %248 = icmp eq i32 %150, 1
  %249 = and i1 %248, %247
  %250 = or i1 %246, %249
  %251 = and i32 %154, 262144
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %252, %250
  %254 = xor i1 %250, true
  %255 = and i32 %154, 131072
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %256, %254
  %258 = or i1 %253, %257
  br i1 %258, label %259, label %260

; <label>:259                                     ; preds = %220
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %260

; <label>:260                                     ; preds = %259, %220
  %261 = and i32 %154, 32
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %512, label %263, !dx.controlflow.hints !51

; <label>:263                                     ; preds = %260
  %264 = add i32 %151, 80
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = extractvalue %dx.types.ResRet.f32 %265, 3
  %270 = add i32 %151, 96
  %271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = extractvalue %dx.types.ResRet.f32 %271, 1
  %274 = extractvalue %dx.types.ResRet.f32 %271, 2
  %275 = add i32 %151, 112
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = add i32 %151, 128
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 4096
  %290 = icmp ne i32 %289, 0
  %291 = fcmp fast une float %274, 0.000000e+00
  %292 = and i32 %288, 64
  %293 = icmp ne i32 %292, 0
  %294 = and i32 %288, 128
  %295 = icmp eq i32 %294, 0
  %296 = and i32 %288, 2048
  %297 = icmp eq i32 %296, 0
  %298 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %299 = extractvalue %dx.types.Dimensions %298, 0
  %300 = sitofp i32 %299 to float
  %301 = extractvalue %dx.types.Dimensions %298, 1
  %302 = sitofp i32 %301 to float
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %306 = fmul fast float %304, %37
  %307 = fmul fast float %305, %38
  %308 = fmul fast float %306, %300
  %309 = fmul fast float %307, %302
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %312 = fsub fast float -0.000000e+00, %311
  %313 = fptoui float %312 to i32
  %314 = fptoui float %308 to i32
  %315 = fptoui float %309 to i32
  %316 = and i32 %313, 31
  %317 = lshr i32 %314, %316
  %318 = lshr i32 %315, %316
  %319 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %313, i32 %317, i32 %318, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = fcmp fast ogt float %320, -1.000000e+00
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %324 = select i1 %321, float %323, float 1.000000e+00
  %325 = fadd fast float %320, 1.000000e+00
  %326 = fmul fast float %324, %325
  %327 = call float @dx.op.unary.f32(i32 6, float %326)  ; FAbs(value)
  %328 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %329 = fcmp fast oge float %327, %328
  %330 = select i1 %329, float 0x4197782600000000, float %327
  br i1 %297, label %408, label %331, !dx.controlflow.hints !52

; <label>:331                                     ; preds = %263
  %332 = fmul fast float %42, %304
  %333 = fmul fast float %44, %305
  %334 = fsub fast float 1.000000e+00, %332
  %335 = fsub fast float 1.000000e+00, %333
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fmul fast float %334, %337
  %341 = fmul fast float %334, %338
  %342 = fmul fast float %334, %339
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fmul fast float %335, %344
  %348 = fmul fast float %335, %345
  %349 = fmul fast float %335, %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fadd fast float %347, %351
  %355 = fadd fast float %354, %340
  %356 = fadd fast float %348, %352
  %357 = fadd fast float %356, %341
  %358 = fadd fast float %349, %353
  %359 = fadd fast float %358, %342
  %360 = fmul fast float %355, %330
  %361 = fmul fast float %357, %330
  %362 = fmul fast float %359, %330
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = fsub fast float %364, %16
  %368 = fadd fast float %367, %360
  %369 = fsub fast float %365, %17
  %370 = fadd fast float %369, %361
  %371 = fsub fast float %366, %18
  %372 = fadd fast float %371, %362
  %373 = fmul fast float %19, %19
  %374 = call float @dx.op.dot3.f32(i32 55, float %368, float %370, float %372, float %368, float %370, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fsub fast float %373, %374
  %376 = fmul fast float %273, %373
  %377 = fmul fast float %272, %373
  %378 = fcmp fast olt float %375, %376
  %379 = fcmp fast ogt float %375, %377
  %380 = or i1 %378, %379
  %381 = select i1 %380, float 0.000000e+00, float %375
  %382 = fsub fast float %272, %273
  %383 = fmul fast float %382, %373
  %384 = fsub fast float %381, %376
  %385 = fdiv fast float %384, %383
  %386 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %387 = fmul fast float %386, 2.000000e+00
  %388 = fsub fast float 3.000000e+00, %387
  %389 = fmul fast float %386, %386
  %390 = fmul fast float %389, %388
  %391 = fmul fast float %277, %27
  %392 = fmul fast float %278, %28
  %393 = fmul fast float %279, %29
  %394 = fsub fast float %391, %283
  %395 = fsub fast float %392, %284
  %396 = fsub fast float %393, %285
  %397 = fsub fast float %280, %286
  %398 = fmul fast float %390, %394
  %399 = fmul fast float %390, %395
  %400 = fmul fast float %390, %396
  %401 = fmul fast float %390, %397
  %402 = fadd fast float %398, %283
  %403 = fadd fast float %399, %284
  %404 = fadd fast float %400, %285
  %405 = fadd fast float %401, %286
  %406 = fmul fast float %266, %266
  %407 = fmul fast float %406, %381
  br label %503

; <label>:408                                     ; preds = %263
  %409 = and i32 %288, 256
  %410 = icmp eq i32 %409, 0
  %411 = fsub fast float %330, %33
  br i1 %410, label %460, label %412

; <label>:412                                     ; preds = %408
  %413 = fadd fast float %272, %33
  %414 = fcmp fast olt float %330, %33
  %415 = fcmp fast ogt float %330, %413
  %416 = or i1 %414, %415
  %417 = select i1 %416, float 0.000000e+00, float %411
  %418 = call float @dx.op.unary.f32(i32 83, float %330)  ; DerivCoarseX(value)
  %419 = call float @dx.op.unary.f32(i32 84, float %330)  ; DerivCoarseY(value)
  %420 = fmul fast float %418, %418
  %421 = fmul fast float %419, %419
  %422 = fadd fast float %421, %420
  %423 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %424 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %425 = fmul fast float %424, %423
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = fmul fast float %426, %273
  %428 = fdiv fast float %411, %427
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = fmul fast float %429, 2.000000e+00
  %431 = fsub fast float 3.000000e+00, %430
  %432 = fmul fast float %429, %429
  %433 = fmul fast float %432, %431
  %434 = fsub fast float %330, %413
  %435 = fadd fast float %434, %427
  %436 = fdiv fast float %435, %427
  %437 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %438 = fmul fast float %437, 2.000000e+00
  %439 = fsub fast float 3.000000e+00, %438
  %440 = fmul fast float %437, %437
  %441 = fmul fast float %440, %439
  %442 = fsub fast float %433, %441
  %443 = fmul fast float %277, %27
  %444 = fmul fast float %278, %28
  %445 = fmul fast float %279, %29
  %446 = fsub fast float %443, %283
  %447 = fsub fast float %444, %284
  %448 = fsub fast float %445, %285
  %449 = fsub fast float %280, %286
  %450 = fmul fast float %442, %446
  %451 = fmul fast float %442, %447
  %452 = fmul fast float %442, %448
  %453 = fmul fast float %442, %449
  %454 = fadd fast float %450, %283
  %455 = fadd fast float %451, %284
  %456 = fadd fast float %452, %285
  %457 = fadd fast float %453, %286
  %458 = fmul fast float %417, %266
  %459 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  br label %503

; <label>:460                                     ; preds = %408
  br i1 %291, label %461, label %474

; <label>:461                                     ; preds = %460
  %462 = fdiv fast float 5.000000e+01, %19
  %463 = select i1 %293, float %462, float 1.000000e+00
  %464 = fmul fast float %463, %266
  %465 = fmul fast float %25, 2.000000e+00
  %466 = fmul fast float %26, 2.000000e+00
  %467 = fadd fast float %465, -1.000000e+00
  %468 = fadd fast float %466, -1.000000e+00
  %469 = call float @dx.op.dot2.f32(i32 54, float %467, float %468, float %467, float %468)  ; Dot2(ax,ay,bx,by)
  %470 = fmul fast float %274, %19
  %471 = fmul fast float %470, %469
  %472 = fsub fast float %411, %471
  %473 = fmul fast float %464, %472
  br label %503

; <label>:474                                     ; preds = %460
  br i1 %295, label %495, label %475

; <label>:475                                     ; preds = %474
  %476 = fmul fast float %19, 0x3F947AE140000000
  %477 = select i1 %293, float %476, float 1.000000e+00
  %478 = fdiv fast float 1.000000e+00, %477
  %479 = fmul fast float %477, %267
  %480 = fmul fast float %477, %268
  %481 = fmul fast float %478, %269
  %482 = call float @dx.op.unary.f32(i32 6, float %411)  ; FAbs(value)
  %483 = fcmp fast olt float %482, %479
  br i1 %483, label %484, label %488, !dx.controlflow.hints !53

; <label>:484                                     ; preds = %475
  %485 = fmul fast float %478, %266
  %486 = fmul fast float %485, %482
  %487 = call float @dx.op.unary.f32(i32 6, float %486)  ; FAbs(value)
  br label %503

; <label>:488                                     ; preds = %475
  %489 = fcmp fast ogt float %482, %480
  br i1 %489, label %490, label %503

; <label>:490                                     ; preds = %488
  %491 = fsub fast float %482, %480
  %492 = fmul fast float %481, %491
  %493 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  %494 = fsub fast float 1.000000e+00, %493
  br label %503

; <label>:495                                     ; preds = %474
  %496 = fdiv fast float 5.000000e+01, %19
  %497 = select i1 %293, float %496, float 1.000000e+00
  %498 = fmul fast float %497, %266
  %499 = call float @dx.op.unary.f32(i32 6, float %242)  ; FAbs(value)
  %500 = select i1 %290, float %499, float 0x47EFFFFFE0000000
  %501 = call float @dx.op.binary.f32(i32 36, float %411, float %500)  ; FMin(a,b)
  %502 = fmul fast float %498, %501
  br label %503

; <label>:503                                     ; preds = %495, %490, %488, %484, %461, %412, %331
  %504 = phi float [ %407, %331 ], [ %459, %412 ], [ %473, %461 ], [ %502, %495 ], [ %487, %484 ], [ %494, %490 ], [ %482, %488 ]
  %505 = phi float [ %402, %331 ], [ %454, %412 ], [ %27, %461 ], [ %27, %495 ], [ %27, %484 ], [ %27, %490 ], [ %27, %488 ]
  %506 = phi float [ %403, %331 ], [ %455, %412 ], [ %28, %461 ], [ %28, %495 ], [ %28, %484 ], [ %28, %490 ], [ %28, %488 ]
  %507 = phi float [ %404, %331 ], [ %456, %412 ], [ %29, %461 ], [ %29, %495 ], [ %29, %484 ], [ %29, %490 ], [ %29, %488 ]
  %508 = phi float [ %405, %331 ], [ %457, %412 ], [ 1.000000e+00, %461 ], [ 1.000000e+00, %495 ], [ 1.000000e+00, %484 ], [ 1.000000e+00, %490 ], [ 1.000000e+00, %488 ]
  %509 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %510 = fmul fast float %508, %221
  %511 = fmul fast float %510, %509
  br label %512

; <label>:512                                     ; preds = %503, %260
  %513 = phi float [ %505, %503 ], [ %27, %260 ]
  %514 = phi float [ %506, %503 ], [ %28, %260 ]
  %515 = phi float [ %507, %503 ], [ %29, %260 ]
  %516 = phi float [ %511, %503 ], [ %221, %260 ]
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %519 = fptosi float %33 to i32
  %520 = sitofp i32 %519 to float
  %521 = fadd fast float %518, %520
  %522 = fmul fast float %521, 0x3FE3C6EF40000000
  %523 = frem fast float %37, 2.560000e+02
  %524 = frem fast float %38, 2.560000e+02
  %525 = fptoui float %523 to i32
  %526 = fptoui float %524 to i32
  %527 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %525, i32 %526, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = fadd fast float %528, %522
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = and i32 %154, 1
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %589, label %533, !dx.controlflow.hints !54

; <label>:533                                     ; preds = %512
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 2
  %536 = extractvalue %dx.types.ResRet.f32 %534, 3
  %537 = add i32 %151, 16
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = add i32 %151, 32
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = and i32 %154, 2
  %548 = icmp eq i32 %547, 0
  %549 = call float @dx.op.dot3.f32(i32 55, float %22, float %23, float %24, float %22, float %23, float %24)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = call float @dx.op.unary.f32(i32 25, float %549)  ; Rsqrt(value)
  %551 = fmul fast float %550, %22
  %552 = fmul fast float %550, %23
  %553 = fmul fast float %550, %24
  %554 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %555 = call float @dx.op.unary.f32(i32 25, float %554)  ; Rsqrt(value)
  %556 = fmul fast float %555, %72
  %557 = fmul fast float %555, %73
  %558 = fmul fast float %555, %74
  %559 = call float @dx.op.dot3.f32(i32 55, float %556, float %557, float %558, float %551, float %552, float %553)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = fmul fast float %559, %559
  %561 = fmul fast float %560, %535
  %562 = fadd fast float %561, %536
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  br i1 %548, label %564, label %574, !dx.controlflow.hints !55

; <label>:564                                     ; preds = %533
  %565 = extractvalue %dx.types.ResRet.f32 %534, 1
  %566 = extractvalue %dx.types.ResRet.f32 %534, 0
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 3
  %569 = fmul fast float %568, %554
  %570 = fsub fast float %566, %569
  %571 = fmul fast float %570, %565
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = fmul fast float %572, %563
  br label %574

; <label>:574                                     ; preds = %564, %533
  %575 = phi float [ %573, %564 ], [ %563, %533 ]
  %576 = fsub fast float %539, %544
  %577 = fsub fast float %540, %545
  %578 = fsub fast float %541, %546
  %579 = fmul fast float %575, %576
  %580 = fmul fast float %575, %577
  %581 = fmul fast float %575, %578
  %582 = fadd fast float %579, %544
  %583 = fadd fast float %580, %545
  %584 = fadd fast float %581, %546
  %585 = fmul fast float %582, %513
  %586 = fmul fast float %583, %514
  %587 = fmul fast float %584, %515
  %588 = fmul fast float %575, %516
  br label %589

; <label>:589                                     ; preds = %574, %512
  %590 = phi float [ %585, %574 ], [ %513, %512 ]
  %591 = phi float [ %586, %574 ], [ %514, %512 ]
  %592 = phi float [ %587, %574 ], [ %515, %512 ]
  %593 = phi float [ %588, %574 ], [ %516, %512 ]
  %594 = add i32 %15, 72
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = add i32 %596, 0
  %598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %598, %dx.types.Handle %34, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = add i32 %15, 56
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = lshr i32 %604, 8
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %604, 16
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = fmul fast float %593, %590
  %624 = fmul fast float %623, %600
  %625 = fmul fast float %607, %607
  %626 = fmul fast float %625, %624
  %627 = fmul fast float %626, %617
  %628 = fmul fast float %593, %591
  %629 = fmul fast float %628, %601
  %630 = fmul fast float %611, %611
  %631 = fmul fast float %630, %629
  %632 = fmul fast float %631, %618
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  br i1 %134, label %635, label %640

; <label>:635                                     ; preds = %589
  %636 = fadd fast float %627, %632
  %637 = fmul fast float %620, %636
  %638 = fmul fast float %622, %637
  %639 = fmul fast float %634, %638
  br label %662

; <label>:640                                     ; preds = %589
  %641 = extractvalue %dx.types.ResRet.f32 %616, 2
  %642 = extractvalue %dx.types.ResRet.f32 %599, 2
  %643 = fmul fast float %627, %620
  %644 = fmul fast float %632, %620
  %645 = fmul fast float %643, %622
  %646 = fmul fast float %644, %622
  %647 = fmul fast float %634, %645
  %648 = fmul fast float %634, %646
  %649 = fmul fast float %593, %592
  %650 = fmul fast float %649, %642
  %651 = fmul fast float %615, %615
  %652 = fmul fast float %651, %650
  %653 = fmul fast float %652, %641
  %654 = fmul fast float %653, %620
  %655 = fmul fast float %654, %622
  %656 = fmul fast float %655, %634
  %657 = call float @dx.op.binary.f32(i32 35, float %648, float %656)  ; FMax(a,b)
  %658 = call float @dx.op.binary.f32(i32 35, float %647, float %657)  ; FMax(a,b)
  %659 = call float @dx.op.binary.f32(i32 35, float %658, float 0.000000e+00)  ; FMax(a,b)
  %660 = fcmp fast ugt float %659, 0x3F10000000000000
  br i1 %660, label %662, label %661

; <label>:661                                     ; preds = %640
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %662

; <label>:662                                     ; preds = %661, %640, %635
  %663 = phi float [ %639, %635 ], [ %647, %661 ], [ %647, %640 ]
  %664 = phi float [ 0.000000e+00, %635 ], [ %648, %661 ], [ %648, %640 ]
  %665 = phi float [ 0.000000e+00, %635 ], [ %656, %661 ], [ %656, %640 ]
  %666 = fadd fast float %530, 0x3FE3C6EF40000000
  %667 = call float @dx.op.unary.f32(i32 22, float %666)  ; Frc(value)
  %668 = call float @dx.op.unary.f32(i32 23, float %663)  ; Log(value)
  %669 = fadd fast float %668, -7.000000e+00
  %670 = call float @dx.op.unary.f32(i32 21, float %669)  ; Exp(value)
  %671 = fmul fast float %667, 2.000000e+00
  %672 = fadd fast float %671, -1.000000e+00
  %673 = fmul fast float %670, %672
  %674 = fcmp fast ogt float %663, 0.000000e+00
  %675 = select i1 %674, float %673, float 0.000000e+00
  %676 = fadd fast float %675, %663
  %677 = fadd fast float %530, 0x3FF3C6EF40000000
  %678 = call float @dx.op.unary.f32(i32 22, float %677)  ; Frc(value)
  %679 = call float @dx.op.unary.f32(i32 23, float %664)  ; Log(value)
  %680 = fadd fast float %679, -7.000000e+00
  %681 = call float @dx.op.unary.f32(i32 21, float %680)  ; Exp(value)
  %682 = fmul fast float %678, 2.000000e+00
  %683 = fadd fast float %682, -1.000000e+00
  %684 = fmul fast float %681, %683
  %685 = fcmp fast ogt float %664, 0.000000e+00
  %686 = select i1 %685, float %684, float 0.000000e+00
  %687 = fadd fast float %686, %664
  %688 = fadd fast float %530, 0x3FFDAA66E0000000
  %689 = call float @dx.op.unary.f32(i32 22, float %688)  ; Frc(value)
  %690 = call float @dx.op.unary.f32(i32 23, float %665)  ; Log(value)
  %691 = fadd fast float %690, -6.000000e+00
  %692 = call float @dx.op.unary.f32(i32 21, float %691)  ; Exp(value)
  %693 = fmul fast float %689, 2.000000e+00
  %694 = fadd fast float %693, -1.000000e+00
  %695 = fmul fast float %692, %694
  %696 = fcmp fast ogt float %665, 0.000000e+00
  %697 = select i1 %696, float %695, float 0.000000e+00
  %698 = fadd fast float %697, %665
  %699 = select i1 %134, float %664, float %687
  %700 = select i1 %134, float %665, float %698
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %701 = call float @dx.op.binary.f32(i32 36, float %676, float 3.225500e+04)  ; FMin(a,b)
  %702 = call float @dx.op.binary.f32(i32 36, float %699, float 3.225500e+04)  ; FMin(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float %700, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %701)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %702)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %703)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!25 = !{[33 x i32] [i32 31, i32 4, i32 7, i32 7, i32 0, i32 7, i32 1, i32 3, i32 4, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
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
!47 = !{!48}
!48 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !33}
!49 = !{i32 0, i64 24}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}

