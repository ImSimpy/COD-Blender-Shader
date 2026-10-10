;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
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
; shader hash: 2f224983c2c733a0caaaf29df748f1b6
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
;   output 0 depends on inputs: { 0, 1, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
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
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = fmul fast float %38, %33
  %40 = fmul fast float %38, %34
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %44 = fmul fast float %39, 2.000000e+00
  %45 = fmul fast float %44, %42
  %46 = fmul fast float %40, 2.000000e+00
  %47 = fmul fast float %46, %43
  %48 = fsub fast float 1.000000e+00, %45
  %49 = fsub fast float 1.000000e+00, %47
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %54 = fmul fast float %48, %51
  %55 = fmul fast float %48, %52
  %56 = fmul fast float %48, %53
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = fmul fast float %49, %58
  %62 = fmul fast float %49, %59
  %63 = fmul fast float %49, %60
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fadd fast float %61, %65
  %69 = fadd fast float %68, %54
  %70 = fadd fast float %62, %66
  %71 = fadd fast float %70, %55
  %72 = fadd fast float %63, %67
  %73 = fadd fast float %72, %56
  %74 = fmul fast float %69, %35
  %75 = fmul fast float %71, %35
  %76 = fmul fast float %73, %35
  %77 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.i32 %77, 3
  %79 = and i32 %78, 3
  %80 = icmp ne i32 %79, 0
  %81 = and i32 %78, 4
  %82 = icmp ne i32 %81, 0
  %83 = and i1 %80, %82
  br i1 %83, label %84, label %93

; <label>:84                                      ; preds = %0
  %85 = fmul fast float %43, %40
  %86 = fmul fast float %42, %39
  %87 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %86, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = fsub fast float 1.000000e+00, %88
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fcmp fast olt float %89, %91
  br label %96

; <label>:93                                      ; preds = %0
  %94 = icmp eq i32 %81, 0
  %95 = and i1 %80, %94
  br label %96

; <label>:96                                      ; preds = %93, %84
  %97 = phi i1 [ %92, %84 ], [ %95, %93 ]
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %101 = fmul fast float %99, %39
  %102 = fmul fast float %100, %40
  %103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.i32 %103, 0
  %105 = and i32 %104, 114688
  %106 = icmp ne i32 %105, 0
  %107 = select i1 %106, float %101, float 0.000000e+00
  %108 = select i1 %106, float %102, float 0.000000e+00
  %109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %107, float %108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fmul fast float %110, 2.550000e+02
  %112 = fptoui float %111 to i32
  %113 = select i1 %106, i32 %112, i32 0
  %114 = mul i32 %14, 208
  %115 = add i32 %114, 188
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %78, 114688
  %119 = and i32 %78, 8
  %120 = icmp ne i32 %119, 0
  %121 = or i1 %97, %120
  %122 = select i1 %121, i32 %118, i32 16384
  %123 = and i32 %122, %117
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %96
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %126

; <label>:126                                     ; preds = %125, %96
  %127 = and i32 %117, 512
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %153, label %129

; <label>:129                                     ; preds = %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %133 = fmul fast float %131, %39
  %134 = fmul fast float %132, %40
  %135 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %137 = fdiv fast float %135, %136
  %138 = fcmp fast ogt float %137, 0x3FFC71C720000000
  br i1 %138, label %139, label %145

; <label>:139                                     ; preds = %129
  %140 = fdiv fast float 0x3FFC71C720000000, %137
  %141 = fmul fast float %140, %134
  %142 = fsub fast float 1.000000e+00, %140
  %143 = fmul fast float %142, 5.000000e-01
  %144 = fadd fast float %143, %141
  br label %153

; <label>:145                                     ; preds = %129
  %146 = fcmp fast olt float %137, 0x3FFC71C720000000
  br i1 %146, label %147, label %153

; <label>:147                                     ; preds = %145
  %148 = fmul fast float %133, 5.625000e-01
  %149 = fmul fast float %148, %137
  %150 = fmul fast float %137, 2.812500e-01
  %151 = fsub fast float 5.000000e-01, %150
  %152 = fadd fast float %151, %149
  br label %153

; <label>:153                                     ; preds = %147, %145, %139, %126
  %154 = phi float [ %30, %126 ], [ %133, %139 ], [ %152, %147 ], [ %133, %145 ]
  %155 = phi float [ %31, %126 ], [ %144, %139 ], [ %134, %147 ], [ %134, %145 ]
  %156 = and i32 %117, 16
  %157 = icmp ne i32 %156, 0
  %158 = select i1 %157, float 1.000000e+00, float %32
  %159 = icmp eq i32 %156, 0
  br i1 %159, label %179, label %160, !dx.controlflow.hints !52

; <label>:160                                     ; preds = %153
  %161 = add i32 %114, 64
  %162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = fadd fast float %163, 1.000000e+00
  %165 = fmul fast float %164, %32
  %166 = fsub fast float %165, %163
  %167 = fsub fast float %164, %166
  %168 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %169 = fsub fast float 1.000000e+00, %165
  %170 = call float @dx.op.unary.f32(i32 7, float %169)  ; Saturate(value)
  %171 = fsub fast float %168, %170
  %172 = fsub fast float %158, %170
  %173 = fdiv fast float %172, %171
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = fmul fast float %174, 2.000000e+00
  %176 = fsub fast float 3.000000e+00, %175
  %177 = fmul fast float %174, %174
  %178 = fmul fast float %177, %176
  br label %179

; <label>:179                                     ; preds = %160, %153
  %180 = phi float [ %178, %160 ], [ %158, %153 ]
  %181 = fcmp fast ogt float %180, 0.000000e+00
  br i1 %181, label %183, label %182

; <label>:182                                     ; preds = %179
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %183

; <label>:183                                     ; preds = %182, %179
  %184 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %185 = fmul fast float %39, 5.000000e-01
  %186 = fmul fast float %40, 5.000000e-01
  %187 = fptosi float %185 to i32
  %188 = fptosi float %186 to i32
  %189 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = lshr i32 %190, 18
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F4C00EBA0000000
  %194 = call float @dx.op.unary.f32(i32 21, float %193)  ; Exp(value)
  %195 = fadd fast float %194, -1.000000e+00
  %196 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %197 = extractvalue %dx.types.Dimensions %196, 0
  %198 = sitofp i32 %197 to float
  %199 = extractvalue %dx.types.Dimensions %196, 1
  %200 = sitofp i32 %199 to float
  %201 = fcmp fast oge float %185, %198
  %202 = fcmp fast oge float %186, %200
  %203 = or i1 %201, %202
  %204 = select i1 %203, float 0x4197782600000000, float %195
  %205 = fsub fast float %204, %35
  %206 = fcmp fast ogt float %205, 0.000000e+00
  %207 = and i32 %113, -2
  %208 = icmp eq i32 %207, 2
  %209 = and i1 %208, %206
  %210 = xor i1 %206, true
  %211 = icmp eq i32 %113, 1
  %212 = and i1 %211, %210
  %213 = or i1 %209, %212
  %214 = and i32 %117, 262144
  %215 = icmp ne i32 %214, 0
  %216 = and i1 %215, %213
  %217 = xor i1 %213, true
  %218 = and i32 %117, 131072
  %219 = icmp ne i32 %218, 0
  %220 = and i1 %219, %217
  %221 = or i1 %216, %220
  br i1 %221, label %222, label %223

; <label>:222                                     ; preds = %183
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %223

; <label>:223                                     ; preds = %222, %183
  %224 = and i32 %117, 32
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %475, label %226, !dx.controlflow.hints !53

; <label>:226                                     ; preds = %223
  %227 = add i32 %114, 80
  %228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = extractvalue %dx.types.ResRet.f32 %228, 3
  %233 = add i32 %114, 96
  %234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = add i32 %114, 112
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = extractvalue %dx.types.ResRet.f32 %239, 3
  %244 = add i32 %114, 128
  %245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = extractvalue %dx.types.ResRet.f32 %245, 1
  %248 = extractvalue %dx.types.ResRet.f32 %245, 2
  %249 = extractvalue %dx.types.ResRet.f32 %245, 3
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %115, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 4096
  %253 = icmp ne i32 %252, 0
  %254 = fcmp fast une float %237, 0.000000e+00
  %255 = and i32 %251, 64
  %256 = icmp ne i32 %255, 0
  %257 = and i32 %251, 128
  %258 = icmp eq i32 %257, 0
  %259 = and i32 %251, 2048
  %260 = icmp eq i32 %259, 0
  %261 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %262 = extractvalue %dx.types.Dimensions %261, 0
  %263 = sitofp i32 %262 to float
  %264 = extractvalue %dx.types.Dimensions %261, 1
  %265 = sitofp i32 %264 to float
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %268 = extractvalue %dx.types.CBufRet.f32 %266, 3
  %269 = fmul fast float %267, %39
  %270 = fmul fast float %268, %40
  %271 = fmul fast float %269, %263
  %272 = fmul fast float %270, %265
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 1
  %275 = fsub fast float -0.000000e+00, %274
  %276 = fptoui float %275 to i32
  %277 = fptoui float %271 to i32
  %278 = fptoui float %272 to i32
  %279 = and i32 %276, 31
  %280 = lshr i32 %277, %279
  %281 = lshr i32 %278, %279
  %282 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %276, i32 %280, i32 %281, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fcmp fast ogt float %283, -1.000000e+00
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = select i1 %284, float %286, float 1.000000e+00
  %288 = fadd fast float %283, 1.000000e+00
  %289 = fmul fast float %287, %288
  %290 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %291 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %292 = fcmp fast oge float %290, %291
  %293 = select i1 %292, float 0x4197782600000000, float %290
  br i1 %260, label %371, label %294, !dx.controlflow.hints !54

; <label>:294                                     ; preds = %226
  %295 = fmul fast float %44, %267
  %296 = fmul fast float %46, %268
  %297 = fsub fast float 1.000000e+00, %295
  %298 = fsub fast float 1.000000e+00, %296
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %303 = fmul fast float %297, %300
  %304 = fmul fast float %297, %301
  %305 = fmul fast float %297, %302
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %310 = fmul fast float %298, %307
  %311 = fmul fast float %298, %308
  %312 = fmul fast float %298, %309
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = fadd fast float %310, %314
  %318 = fadd fast float %317, %303
  %319 = fadd fast float %311, %315
  %320 = fadd fast float %319, %304
  %321 = fadd fast float %312, %316
  %322 = fadd fast float %321, %305
  %323 = fmul fast float %318, %293
  %324 = fmul fast float %320, %293
  %325 = fmul fast float %322, %293
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = fsub fast float %327, %16
  %331 = fadd fast float %330, %323
  %332 = fsub fast float %328, %17
  %333 = fadd fast float %332, %324
  %334 = fsub fast float %329, %18
  %335 = fadd fast float %334, %325
  %336 = fmul fast float %19, %19
  %337 = call float @dx.op.dot3.f32(i32 55, float %331, float %333, float %335, float %331, float %333, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = fsub fast float %336, %337
  %339 = fmul fast float %236, %336
  %340 = fmul fast float %235, %336
  %341 = fcmp fast olt float %338, %339
  %342 = fcmp fast ogt float %338, %340
  %343 = or i1 %341, %342
  %344 = select i1 %343, float 0.000000e+00, float %338
  %345 = fsub fast float %235, %236
  %346 = fmul fast float %345, %336
  %347 = fsub fast float %344, %339
  %348 = fdiv fast float %347, %346
  %349 = call float @dx.op.unary.f32(i32 7, float %348)  ; Saturate(value)
  %350 = fmul fast float %349, 2.000000e+00
  %351 = fsub fast float 3.000000e+00, %350
  %352 = fmul fast float %349, %349
  %353 = fmul fast float %352, %351
  %354 = fsub fast float %243, %249
  %355 = fmul fast float %353, %354
  %356 = fadd fast float %355, %249
  %357 = fmul fast float %240, %20
  %358 = fmul fast float %241, %21
  %359 = fmul fast float %242, %22
  %360 = fsub fast float %357, %246
  %361 = fsub fast float %358, %247
  %362 = fsub fast float %359, %248
  %363 = fmul fast float %353, %360
  %364 = fmul fast float %353, %361
  %365 = fmul fast float %353, %362
  %366 = fadd fast float %363, %246
  %367 = fadd fast float %364, %247
  %368 = fadd fast float %365, %248
  %369 = fmul fast float %229, %229
  %370 = fmul fast float %369, %344
  br label %466

; <label>:371                                     ; preds = %226
  %372 = and i32 %251, 256
  %373 = icmp eq i32 %372, 0
  %374 = fsub fast float %293, %35
  br i1 %373, label %423, label %375

; <label>:375                                     ; preds = %371
  %376 = fadd fast float %235, %35
  %377 = fcmp fast olt float %293, %35
  %378 = fcmp fast ogt float %293, %376
  %379 = or i1 %377, %378
  %380 = select i1 %379, float 0.000000e+00, float %374
  %381 = call float @dx.op.unary.f32(i32 83, float %293)  ; DerivCoarseX(value)
  %382 = call float @dx.op.unary.f32(i32 84, float %293)  ; DerivCoarseY(value)
  %383 = fmul fast float %381, %381
  %384 = fmul fast float %382, %382
  %385 = fadd fast float %384, %383
  %386 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %387 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %388 = fmul fast float %387, %386
  %389 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %390 = fmul fast float %389, %236
  %391 = fdiv fast float %374, %390
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = fmul fast float %392, 2.000000e+00
  %394 = fsub fast float 3.000000e+00, %393
  %395 = fmul fast float %392, %392
  %396 = fmul fast float %395, %394
  %397 = fsub fast float %293, %376
  %398 = fadd fast float %397, %390
  %399 = fdiv fast float %398, %390
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = fmul fast float %400, 2.000000e+00
  %402 = fsub fast float 3.000000e+00, %401
  %403 = fmul fast float %400, %400
  %404 = fmul fast float %403, %402
  %405 = fsub fast float %396, %404
  %406 = fsub fast float %243, %249
  %407 = fmul fast float %405, %406
  %408 = fadd fast float %407, %249
  %409 = fmul fast float %240, %20
  %410 = fmul fast float %241, %21
  %411 = fmul fast float %242, %22
  %412 = fsub fast float %409, %246
  %413 = fsub fast float %410, %247
  %414 = fsub fast float %411, %248
  %415 = fmul fast float %405, %412
  %416 = fmul fast float %405, %413
  %417 = fmul fast float %405, %414
  %418 = fadd fast float %415, %246
  %419 = fadd fast float %416, %247
  %420 = fadd fast float %417, %248
  %421 = fmul fast float %380, %229
  %422 = call float @dx.op.unary.f32(i32 6, float %421)  ; FAbs(value)
  br label %466

; <label>:423                                     ; preds = %371
  br i1 %254, label %424, label %437

; <label>:424                                     ; preds = %423
  %425 = fdiv fast float 5.000000e+01, %19
  %426 = select i1 %256, float %425, float 1.000000e+00
  %427 = fmul fast float %426, %229
  %428 = fmul fast float %30, 2.000000e+00
  %429 = fmul fast float %31, 2.000000e+00
  %430 = fadd fast float %428, -1.000000e+00
  %431 = fadd fast float %429, -1.000000e+00
  %432 = call float @dx.op.dot2.f32(i32 54, float %430, float %431, float %430, float %431)  ; Dot2(ax,ay,bx,by)
  %433 = fmul fast float %237, %19
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %374, %434
  %436 = fmul fast float %427, %435
  br label %466

; <label>:437                                     ; preds = %423
  br i1 %258, label %458, label %438

; <label>:438                                     ; preds = %437
  %439 = fmul fast float %19, 0x3F947AE140000000
  %440 = select i1 %256, float %439, float 1.000000e+00
  %441 = fdiv fast float 1.000000e+00, %440
  %442 = fmul fast float %440, %230
  %443 = fmul fast float %440, %231
  %444 = fmul fast float %441, %232
  %445 = call float @dx.op.unary.f32(i32 6, float %374)  ; FAbs(value)
  %446 = fcmp fast olt float %445, %442
  br i1 %446, label %447, label %451, !dx.controlflow.hints !55

; <label>:447                                     ; preds = %438
  %448 = fmul fast float %441, %229
  %449 = fmul fast float %448, %445
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  br label %466

; <label>:451                                     ; preds = %438
  %452 = fcmp fast ogt float %445, %443
  br i1 %452, label %453, label %466

; <label>:453                                     ; preds = %451
  %454 = fsub fast float %445, %443
  %455 = fmul fast float %444, %454
  %456 = call float @dx.op.unary.f32(i32 6, float %455)  ; FAbs(value)
  %457 = fsub fast float 1.000000e+00, %456
  br label %466

; <label>:458                                     ; preds = %437
  %459 = fdiv fast float 5.000000e+01, %19
  %460 = select i1 %256, float %459, float 1.000000e+00
  %461 = fmul fast float %460, %229
  %462 = call float @dx.op.unary.f32(i32 6, float %205)  ; FAbs(value)
  %463 = select i1 %253, float %462, float 0x47EFFFFFE0000000
  %464 = call float @dx.op.binary.f32(i32 36, float %374, float %463)  ; FMin(a,b)
  %465 = fmul fast float %461, %464
  br label %466

; <label>:466                                     ; preds = %458, %453, %451, %447, %424, %375, %294
  %467 = phi float [ %370, %294 ], [ %422, %375 ], [ %436, %424 ], [ %465, %458 ], [ %450, %447 ], [ %457, %453 ], [ %445, %451 ]
  %468 = phi float [ %366, %294 ], [ %418, %375 ], [ %20, %424 ], [ %20, %458 ], [ %20, %447 ], [ %20, %453 ], [ %20, %451 ]
  %469 = phi float [ %367, %294 ], [ %419, %375 ], [ %21, %424 ], [ %21, %458 ], [ %21, %447 ], [ %21, %453 ], [ %21, %451 ]
  %470 = phi float [ %368, %294 ], [ %420, %375 ], [ %22, %424 ], [ %22, %458 ], [ %22, %447 ], [ %22, %453 ], [ %22, %451 ]
  %471 = phi float [ %356, %294 ], [ %408, %375 ], [ 1.000000e+00, %424 ], [ 1.000000e+00, %458 ], [ 1.000000e+00, %447 ], [ 1.000000e+00, %453 ], [ 1.000000e+00, %451 ]
  %472 = call float @dx.op.unary.f32(i32 7, float %467)  ; Saturate(value)
  %473 = fmul fast float %471, %184
  %474 = fmul fast float %473, %472
  br label %475

; <label>:475                                     ; preds = %466, %223
  %476 = phi float [ %474, %466 ], [ %184, %223 ]
  %477 = phi float [ %468, %466 ], [ %20, %223 ]
  %478 = phi float [ %469, %466 ], [ %21, %223 ]
  %479 = phi float [ %470, %466 ], [ %22, %223 ]
  %480 = fmul fast float %477, %23
  %481 = fmul fast float %478, %23
  %482 = fmul fast float %479, %23
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = fptosi float %35 to i32
  %486 = sitofp i32 %485 to float
  %487 = fadd fast float %484, %486
  %488 = fmul fast float %487, 0x3FE3C6EF40000000
  %489 = frem fast float %39, 2.560000e+02
  %490 = frem fast float %40, 2.560000e+02
  %491 = fptoui float %489 to i32
  %492 = fptoui float %490 to i32
  %493 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %491, i32 %492, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = fadd fast float %494, %488
  %496 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %497 = and i32 %117, 1
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %555, label %499, !dx.controlflow.hints !56

; <label>:499                                     ; preds = %475
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 2
  %502 = extractvalue %dx.types.ResRet.f32 %500, 3
  %503 = add i32 %114, 16
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = add i32 %114, 32
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = and i32 %117, 2
  %514 = icmp eq i32 %513, 0
  %515 = call float @dx.op.dot3.f32(i32 55, float %26, float %27, float %28, float %26, float %27, float %28)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.unary.f32(i32 25, float %515)  ; Rsqrt(value)
  %517 = fmul fast float %516, %26
  %518 = fmul fast float %516, %27
  %519 = fmul fast float %516, %28
  %520 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.unary.f32(i32 25, float %520)  ; Rsqrt(value)
  %522 = fmul fast float %521, %74
  %523 = fmul fast float %521, %75
  %524 = fmul fast float %521, %76
  %525 = call float @dx.op.dot3.f32(i32 55, float %522, float %523, float %524, float %517, float %518, float %519)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = fmul fast float %525, %525
  %527 = fmul fast float %526, %501
  %528 = fadd fast float %527, %502
  %529 = call float @dx.op.unary.f32(i32 7, float %528)  ; Saturate(value)
  br i1 %514, label %530, label %540, !dx.controlflow.hints !57

; <label>:530                                     ; preds = %499
  %531 = extractvalue %dx.types.ResRet.f32 %500, 1
  %532 = extractvalue %dx.types.ResRet.f32 %500, 0
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 3
  %535 = fmul fast float %534, %520
  %536 = fsub fast float %532, %535
  %537 = fmul fast float %536, %531
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = fmul fast float %538, %529
  br label %540

; <label>:540                                     ; preds = %530, %499
  %541 = phi float [ %539, %530 ], [ %529, %499 ]
  %542 = fsub fast float %505, %510
  %543 = fsub fast float %506, %511
  %544 = fsub fast float %507, %512
  %545 = fmul fast float %541, %542
  %546 = fmul fast float %541, %543
  %547 = fmul fast float %541, %544
  %548 = fadd fast float %545, %510
  %549 = fadd fast float %546, %511
  %550 = fadd fast float %547, %512
  %551 = fmul fast float %548, %480
  %552 = fmul fast float %549, %481
  %553 = fmul fast float %550, %482
  %554 = fmul fast float %541, %476
  br label %555

; <label>:555                                     ; preds = %540, %475
  %556 = phi float [ %554, %540 ], [ %476, %475 ]
  %557 = phi float [ %551, %540 ], [ %480, %475 ]
  %558 = phi float [ %552, %540 ], [ %481, %475 ]
  %559 = phi float [ %553, %540 ], [ %482, %475 ]
  %560 = add i32 %15, 72
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = add i32 %562, 0
  %564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %564, %dx.types.Handle %36, float %154, float %155, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = add i32 %15, 44
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = shl i32 %571, 4
  %573 = and i32 %572, 32752
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %571, 7
  %576 = and i32 %575, 32752
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %571, 22
  %579 = shl nuw nsw i32 %578, 5
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = fmul fast float %574, %566
  %582 = fmul fast float %577, %567
  %583 = fmul fast float %580, %568
  %584 = add i32 %15, 48
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = lshr i32 %586, 22
  %588 = shl nuw nsw i32 %587, 5
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = fmul fast float %589, %581
  %591 = select i1 %97, float %590, float %581
  %592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %597 = fmul fast float %591, %557
  %598 = fmul fast float %582, %558
  %599 = fmul fast float %583, %559
  %600 = call float @dx.op.dot3.f32(i32 55, float %597, float %598, float %599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = select i1 %97, float 0.000000e+00, float %597
  %602 = select i1 %97, float %600, float %598
  %603 = fmul fast float %477, %29
  %604 = fmul fast float %603, %591
  %605 = fmul fast float %604, %593
  %606 = fmul fast float %605, %596
  %607 = fmul fast float %478, %29
  %608 = fmul fast float %607, %582
  %609 = fmul fast float %608, %594
  %610 = fmul fast float %609, %596
  %611 = fadd fast float %606, %601
  %612 = fadd fast float %602, %610
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  br i1 %97, label %615, label %619

; <label>:615                                     ; preds = %555
  %616 = fadd fast float %611, %612
  %617 = fmul fast float %616, %556
  %618 = fmul fast float %617, %614
  br label %638

; <label>:619                                     ; preds = %555
  %620 = select i1 %97, float 0.000000e+00, float %599
  %621 = extractvalue %dx.types.ResRet.f32 %592, 2
  %622 = fmul fast float %611, %556
  %623 = fmul fast float %612, %556
  %624 = fmul fast float %479, %29
  %625 = fmul fast float %624, %583
  %626 = fmul fast float %625, %621
  %627 = fmul fast float %626, %596
  %628 = fadd fast float %627, %620
  %629 = fmul fast float %628, %556
  %630 = fmul fast float %622, %614
  %631 = fmul fast float %623, %614
  %632 = fmul fast float %629, %614
  %633 = call float @dx.op.binary.f32(i32 35, float %631, float %632)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 35, float %630, float %633)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 35, float %634, float 0.000000e+00)  ; FMax(a,b)
  %636 = fcmp fast ugt float %635, 0x3F10000000000000
  br i1 %636, label %638, label %637

; <label>:637                                     ; preds = %619
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %638

; <label>:638                                     ; preds = %637, %619, %615
  %639 = phi float [ %618, %615 ], [ %630, %637 ], [ %630, %619 ]
  %640 = phi float [ 0.000000e+00, %615 ], [ %631, %637 ], [ %631, %619 ]
  %641 = phi float [ 0.000000e+00, %615 ], [ %632, %637 ], [ %632, %619 ]
  %642 = fadd fast float %496, 0x3FE3C6EF40000000
  %643 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  %644 = call float @dx.op.unary.f32(i32 23, float %639)  ; Log(value)
  %645 = fadd fast float %644, -7.000000e+00
  %646 = call float @dx.op.unary.f32(i32 21, float %645)  ; Exp(value)
  %647 = fmul fast float %643, 2.000000e+00
  %648 = fadd fast float %647, -1.000000e+00
  %649 = fmul fast float %646, %648
  %650 = fcmp fast ogt float %639, 0.000000e+00
  %651 = select i1 %650, float %649, float 0.000000e+00
  %652 = fadd fast float %651, %639
  %653 = fadd fast float %496, 0x3FF3C6EF40000000
  %654 = call float @dx.op.unary.f32(i32 22, float %653)  ; Frc(value)
  %655 = call float @dx.op.unary.f32(i32 23, float %640)  ; Log(value)
  %656 = fadd fast float %655, -7.000000e+00
  %657 = call float @dx.op.unary.f32(i32 21, float %656)  ; Exp(value)
  %658 = fmul fast float %654, 2.000000e+00
  %659 = fadd fast float %658, -1.000000e+00
  %660 = fmul fast float %657, %659
  %661 = fcmp fast ogt float %640, 0.000000e+00
  %662 = select i1 %661, float %660, float 0.000000e+00
  %663 = fadd fast float %662, %640
  %664 = fadd fast float %496, 0x3FFDAA66E0000000
  %665 = call float @dx.op.unary.f32(i32 22, float %664)  ; Frc(value)
  %666 = call float @dx.op.unary.f32(i32 23, float %641)  ; Log(value)
  %667 = fadd fast float %666, -6.000000e+00
  %668 = call float @dx.op.unary.f32(i32 21, float %667)  ; Exp(value)
  %669 = fmul fast float %665, 2.000000e+00
  %670 = fadd fast float %669, -1.000000e+00
  %671 = fmul fast float %668, %670
  %672 = fcmp fast ogt float %641, 0.000000e+00
  %673 = select i1 %672, float %671, float 0.000000e+00
  %674 = fadd fast float %673, %641
  %675 = select i1 %97, float %640, float %663
  %676 = select i1 %97, float %641, float %674
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %677 = call float @dx.op.binary.f32(i32 36, float %652, float 3.225500e+04)  ; FMin(a,b)
  %678 = call float @dx.op.binary.f32(i32 36, float %675, float 3.225500e+04)  ; FMin(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float %676, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %677)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %678)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %679)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!25 = !{[33 x i32] [i32 31, i32 8, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!26 = !{void ()* @ps_main, !"ps_main", !27, !4, !51}
!27 = !{!28, !47, null}
!28 = !{!29, !32, !34, !36, !39, !41, !43, !44, !46}
!29 = !{i32 0, !"SV_Position", i8 9, i8 3, !30, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!30 = !{i32 0}
!31 = !{i32 3, i32 11}
!32 = !{i32 1, !"COLOR", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!33 = !{i32 3, i32 8}
!34 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 2, i32 2, i8 0, !35}
!35 = !{i32 3, i32 3}
!36 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 3, i8 0, !38}
!37 = !{i32 3}
!38 = !{i32 3, i32 15}
!39 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !40, i8 3, i32 1, i8 2, i32 4, i8 0, !35}
!40 = !{i32 5}
!41 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 4, i32 5, i8 0, !38}
!42 = !{i32 8}
!43 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !30, i8 1, i32 1, i8 4, i32 6, i8 0, !38}
!44 = !{i32 7, !"COLOR", i8 5, i8 0, !37, i8 1, i32 1, i8 3, i32 7, i8 0, !45}
!45 = !{i32 3, i32 5}
!46 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !30, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!47 = !{!48, !49}
!48 = !{i32 0, !"SV_Target", i8 9, i8 16, !30, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!49 = !{i32 1, !"SV_Target", i8 9, i8 16, !50, i8 0, i32 1, i8 4, i32 1, i8 0, !38}
!50 = !{i32 1}
!51 = !{i32 0, i64 24}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}

