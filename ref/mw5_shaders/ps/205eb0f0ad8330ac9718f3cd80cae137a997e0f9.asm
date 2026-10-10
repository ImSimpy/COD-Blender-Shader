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
; shader hash: 5eb23ce12b561fdfa3a95ea24b8a971b
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
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 3 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24, 25, 26, 27, 28, 30 }
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
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = fmul fast float %37, %31
  %39 = fmul fast float %37, %32
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %43 = fmul fast float %38, 2.000000e+00
  %44 = fmul fast float %43, %41
  %45 = fmul fast float %39, 2.000000e+00
  %46 = fmul fast float %45, %42
  %47 = fsub fast float 1.000000e+00, %44
  %48 = fsub fast float 1.000000e+00, %46
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %52 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %53 = fmul fast float %47, %50
  %54 = fmul fast float %47, %51
  %55 = fmul fast float %47, %52
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %48, %57
  %61 = fmul fast float %48, %58
  %62 = fmul fast float %48, %59
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fadd fast float %60, %64
  %68 = fadd fast float %67, %53
  %69 = fadd fast float %61, %65
  %70 = fadd fast float %69, %54
  %71 = fadd fast float %62, %66
  %72 = fadd fast float %71, %55
  %73 = fmul fast float %68, %33
  %74 = fmul fast float %70, %33
  %75 = fmul fast float %72, %33
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 3
  %78 = and i32 %77, 3
  %79 = icmp ne i32 %78, 0
  %80 = and i32 %77, 4
  %81 = icmp ne i32 %80, 0
  %82 = and i1 %79, %81
  br i1 %82, label %83, label %92

; <label>:83                                      ; preds = %0
  %84 = fmul fast float %42, %39
  %85 = fmul fast float %41, %38
  %86 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %85, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = fsub fast float 1.000000e+00, %87
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = fcmp fast olt float %88, %90
  br label %95

; <label>:92                                      ; preds = %0
  %93 = icmp eq i32 %80, 0
  %94 = and i1 %79, %93
  br label %95

; <label>:95                                      ; preds = %92, %83
  %96 = phi i1 [ %91, %83 ], [ %94, %92 ]
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %98, %38
  %101 = fmul fast float %99, %39
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = and i32 %103, 114688
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %105, float %100, float 0.000000e+00
  %107 = select i1 %105, float %101, float 0.000000e+00
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %106, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fmul fast float %109, 2.550000e+02
  %111 = fptoui float %110 to i32
  %112 = select i1 %105, i32 %111, i32 0
  %113 = mul i32 %14, 208
  %114 = add i32 %113, 188
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = and i32 %77, 114688
  %118 = and i32 %77, 8
  %119 = icmp ne i32 %118, 0
  %120 = or i1 %96, %119
  %121 = select i1 %120, i32 %117, i32 16384
  %122 = and i32 %121, %116
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

; <label>:124                                     ; preds = %95
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %125

; <label>:125                                     ; preds = %124, %95
  %126 = and i32 %116, 512
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %152, label %128

; <label>:128                                     ; preds = %125
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %132 = fmul fast float %130, %38
  %133 = fmul fast float %131, %39
  %134 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %136 = fdiv fast float %134, %135
  %137 = fcmp fast ogt float %136, 0x3FFC71C720000000
  br i1 %137, label %138, label %144

; <label>:138                                     ; preds = %128
  %139 = fdiv fast float 0x3FFC71C720000000, %136
  %140 = fmul fast float %139, %133
  %141 = fsub fast float 1.000000e+00, %139
  %142 = fmul fast float %141, 5.000000e-01
  %143 = fadd fast float %142, %140
  br label %152

; <label>:144                                     ; preds = %128
  %145 = fcmp fast olt float %136, 0x3FFC71C720000000
  br i1 %145, label %146, label %152

; <label>:146                                     ; preds = %144
  %147 = fmul fast float %132, 5.625000e-01
  %148 = fmul fast float %147, %136
  %149 = fmul fast float %136, 2.812500e-01
  %150 = fsub fast float 5.000000e-01, %149
  %151 = fadd fast float %150, %148
  br label %152

; <label>:152                                     ; preds = %146, %144, %138, %125
  %153 = phi float [ %25, %125 ], [ %132, %138 ], [ %151, %146 ], [ %132, %144 ]
  %154 = phi float [ %26, %125 ], [ %143, %138 ], [ %133, %146 ], [ %133, %144 ]
  %155 = add i32 %15, 72
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = extractvalue %dx.types.ResRet.i32 %156, 1
  %159 = bitcast i32 %157 to float
  %160 = bitcast i32 %158 to float
  %161 = fmul fast float %159, %25
  %162 = fmul fast float %160, %26
  %163 = call float @dx.op.unary.f32(i32 22, float %161)  ; Frc(value)
  %164 = call float @dx.op.unary.f32(i32 22, float %162)  ; Frc(value)
  %165 = and i32 %116, 16
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %166, float 1.000000e+00, float %30
  %168 = add i32 %15, 124
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = add i32 %170, 0
  %172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %172, %dx.types.Handle %35, float %153, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float %174, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fmul fast float %176, %167
  %178 = icmp eq i32 %165, 0
  br i1 %178, label %198, label %179, !dx.controlflow.hints !52

; <label>:179                                     ; preds = %152
  %180 = add i32 %113, 64
  %181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = fadd fast float %182, 1.000000e+00
  %184 = fmul fast float %183, %30
  %185 = fsub fast float %184, %182
  %186 = fsub fast float %183, %185
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = fsub fast float 1.000000e+00, %184
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fsub fast float %187, %189
  %191 = fsub fast float %177, %189
  %192 = fdiv fast float %191, %190
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fmul fast float %193, 2.000000e+00
  %195 = fsub fast float 3.000000e+00, %194
  %196 = fmul fast float %193, %193
  %197 = fmul fast float %196, %195
  br label %198

; <label>:198                                     ; preds = %179, %152
  %199 = phi float [ %197, %179 ], [ %177, %152 ]
  %200 = fcmp fast ogt float %199, 0.000000e+00
  br i1 %200, label %202, label %201

; <label>:201                                     ; preds = %198
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %202

; <label>:202                                     ; preds = %201, %198
  %203 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %204 = fmul fast float %38, 5.000000e-01
  %205 = fmul fast float %39, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = fsub fast float %223, %33
  %225 = fcmp fast ogt float %224, 0.000000e+00
  %226 = and i32 %112, -2
  %227 = icmp eq i32 %226, 2
  %228 = and i1 %227, %225
  %229 = xor i1 %225, true
  %230 = icmp eq i32 %112, 1
  %231 = and i1 %230, %229
  %232 = or i1 %228, %231
  %233 = and i32 %116, 262144
  %234 = icmp ne i32 %233, 0
  %235 = and i1 %234, %232
  %236 = xor i1 %232, true
  %237 = and i32 %116, 131072
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %238, %236
  %240 = or i1 %235, %239
  br i1 %240, label %241, label %242

; <label>:241                                     ; preds = %202
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %242

; <label>:242                                     ; preds = %241, %202
  %243 = and i32 %116, 32
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %495, label %245, !dx.controlflow.hints !53

; <label>:245                                     ; preds = %242
  %246 = add i32 %113, 80
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = add i32 %113, 96
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = add i32 %113, 112
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = extractvalue %dx.types.ResRet.f32 %258, 3
  %263 = add i32 %113, 128
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = extractvalue %dx.types.ResRet.f32 %264, 3
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 4096
  %272 = icmp ne i32 %271, 0
  %273 = fcmp fast une float %256, 0.000000e+00
  %274 = and i32 %270, 64
  %275 = icmp ne i32 %274, 0
  %276 = and i32 %270, 128
  %277 = icmp eq i32 %276, 0
  %278 = and i32 %270, 2048
  %279 = icmp eq i32 %278, 0
  %280 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %281 = extractvalue %dx.types.Dimensions %280, 0
  %282 = sitofp i32 %281 to float
  %283 = extractvalue %dx.types.Dimensions %280, 1
  %284 = sitofp i32 %283 to float
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %287 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %288 = fmul fast float %286, %38
  %289 = fmul fast float %287, %39
  %290 = fmul fast float %288, %282
  %291 = fmul fast float %289, %284
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %294 = fsub fast float -0.000000e+00, %293
  %295 = fptoui float %294 to i32
  %296 = fptoui float %290 to i32
  %297 = fptoui float %291 to i32
  %298 = and i32 %295, 31
  %299 = lshr i32 %296, %298
  %300 = lshr i32 %297, %298
  %301 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %295, i32 %299, i32 %300, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = fcmp fast ogt float %302, -1.000000e+00
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %306 = select i1 %303, float %305, float 1.000000e+00
  %307 = fadd fast float %302, 1.000000e+00
  %308 = fmul fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %310 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %311 = fcmp fast oge float %309, %310
  %312 = select i1 %311, float 0x4197782600000000, float %309
  br i1 %279, label %390, label %313, !dx.controlflow.hints !54

; <label>:313                                     ; preds = %245
  %314 = fmul fast float %43, %286
  %315 = fmul fast float %45, %287
  %316 = fsub fast float 1.000000e+00, %314
  %317 = fsub fast float 1.000000e+00, %315
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fmul fast float %316, %319
  %323 = fmul fast float %316, %320
  %324 = fmul fast float %316, %321
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %329 = fmul fast float %317, %326
  %330 = fmul fast float %317, %327
  %331 = fmul fast float %317, %328
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %335 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %336 = fadd fast float %329, %333
  %337 = fadd fast float %336, %322
  %338 = fadd fast float %330, %334
  %339 = fadd fast float %338, %323
  %340 = fadd fast float %331, %335
  %341 = fadd fast float %340, %324
  %342 = fmul fast float %337, %312
  %343 = fmul fast float %339, %312
  %344 = fmul fast float %341, %312
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = fsub fast float %346, %16
  %350 = fadd fast float %349, %342
  %351 = fsub fast float %347, %17
  %352 = fadd fast float %351, %343
  %353 = fsub fast float %348, %18
  %354 = fadd fast float %353, %344
  %355 = fmul fast float %19, %19
  %356 = call float @dx.op.dot3.f32(i32 55, float %350, float %352, float %354, float %350, float %352, float %354)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = fsub fast float %355, %356
  %358 = fmul fast float %255, %355
  %359 = fmul fast float %254, %355
  %360 = fcmp fast olt float %357, %358
  %361 = fcmp fast ogt float %357, %359
  %362 = or i1 %360, %361
  %363 = select i1 %362, float 0.000000e+00, float %357
  %364 = fsub fast float %254, %255
  %365 = fmul fast float %364, %355
  %366 = fsub fast float %363, %358
  %367 = fdiv fast float %366, %365
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = fmul fast float %368, 2.000000e+00
  %370 = fsub fast float 3.000000e+00, %369
  %371 = fmul fast float %368, %368
  %372 = fmul fast float %371, %370
  %373 = fmul fast float %259, %27
  %374 = fmul fast float %260, %28
  %375 = fmul fast float %261, %29
  %376 = fsub fast float %373, %265
  %377 = fsub fast float %374, %266
  %378 = fsub fast float %375, %267
  %379 = fsub fast float %262, %268
  %380 = fmul fast float %372, %376
  %381 = fmul fast float %372, %377
  %382 = fmul fast float %372, %378
  %383 = fmul fast float %372, %379
  %384 = fadd fast float %380, %265
  %385 = fadd fast float %381, %266
  %386 = fadd fast float %382, %267
  %387 = fadd fast float %383, %268
  %388 = fmul fast float %248, %248
  %389 = fmul fast float %388, %363
  br label %485

; <label>:390                                     ; preds = %245
  %391 = and i32 %270, 256
  %392 = icmp eq i32 %391, 0
  %393 = fsub fast float %312, %33
  br i1 %392, label %442, label %394

; <label>:394                                     ; preds = %390
  %395 = fadd fast float %254, %33
  %396 = fcmp fast olt float %312, %33
  %397 = fcmp fast ogt float %312, %395
  %398 = or i1 %396, %397
  %399 = select i1 %398, float 0.000000e+00, float %393
  %400 = call float @dx.op.unary.f32(i32 83, float %312)  ; DerivCoarseX(value)
  %401 = call float @dx.op.unary.f32(i32 84, float %312)  ; DerivCoarseY(value)
  %402 = fmul fast float %400, %400
  %403 = fmul fast float %401, %401
  %404 = fadd fast float %403, %402
  %405 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %406 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %407 = fmul fast float %406, %405
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = fmul fast float %408, %255
  %410 = fdiv fast float %393, %409
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fmul fast float %411, 2.000000e+00
  %413 = fsub fast float 3.000000e+00, %412
  %414 = fmul fast float %411, %411
  %415 = fmul fast float %414, %413
  %416 = fsub fast float %312, %395
  %417 = fadd fast float %416, %409
  %418 = fdiv fast float %417, %409
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fmul fast float %419, 2.000000e+00
  %421 = fsub fast float 3.000000e+00, %420
  %422 = fmul fast float %419, %419
  %423 = fmul fast float %422, %421
  %424 = fsub fast float %415, %423
  %425 = fmul fast float %259, %27
  %426 = fmul fast float %260, %28
  %427 = fmul fast float %261, %29
  %428 = fsub fast float %425, %265
  %429 = fsub fast float %426, %266
  %430 = fsub fast float %427, %267
  %431 = fsub fast float %262, %268
  %432 = fmul fast float %424, %428
  %433 = fmul fast float %424, %429
  %434 = fmul fast float %424, %430
  %435 = fmul fast float %424, %431
  %436 = fadd fast float %432, %265
  %437 = fadd fast float %433, %266
  %438 = fadd fast float %434, %267
  %439 = fadd fast float %435, %268
  %440 = fmul fast float %399, %248
  %441 = call float @dx.op.unary.f32(i32 6, float %440)  ; FAbs(value)
  br label %485

; <label>:442                                     ; preds = %390
  br i1 %273, label %443, label %456

; <label>:443                                     ; preds = %442
  %444 = fdiv fast float 5.000000e+01, %19
  %445 = select i1 %275, float %444, float 1.000000e+00
  %446 = fmul fast float %445, %248
  %447 = fmul fast float %163, 2.000000e+00
  %448 = fmul fast float %164, 2.000000e+00
  %449 = fadd fast float %447, -1.000000e+00
  %450 = fadd fast float %448, -1.000000e+00
  %451 = call float @dx.op.dot2.f32(i32 54, float %449, float %450, float %449, float %450)  ; Dot2(ax,ay,bx,by)
  %452 = fmul fast float %256, %19
  %453 = fmul fast float %452, %451
  %454 = fsub fast float %393, %453
  %455 = fmul fast float %446, %454
  br label %485

; <label>:456                                     ; preds = %442
  br i1 %277, label %477, label %457

; <label>:457                                     ; preds = %456
  %458 = fmul fast float %19, 0x3F947AE140000000
  %459 = select i1 %275, float %458, float 1.000000e+00
  %460 = fdiv fast float 1.000000e+00, %459
  %461 = fmul fast float %459, %249
  %462 = fmul fast float %459, %250
  %463 = fmul fast float %460, %251
  %464 = call float @dx.op.unary.f32(i32 6, float %393)  ; FAbs(value)
  %465 = fcmp fast olt float %464, %461
  br i1 %465, label %466, label %470, !dx.controlflow.hints !55

; <label>:466                                     ; preds = %457
  %467 = fmul fast float %460, %248
  %468 = fmul fast float %467, %464
  %469 = call float @dx.op.unary.f32(i32 6, float %468)  ; FAbs(value)
  br label %485

; <label>:470                                     ; preds = %457
  %471 = fcmp fast ogt float %464, %462
  br i1 %471, label %472, label %485

; <label>:472                                     ; preds = %470
  %473 = fsub fast float %464, %462
  %474 = fmul fast float %463, %473
  %475 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  %476 = fsub fast float 1.000000e+00, %475
  br label %485

; <label>:477                                     ; preds = %456
  %478 = fdiv fast float 5.000000e+01, %19
  %479 = select i1 %275, float %478, float 1.000000e+00
  %480 = fmul fast float %479, %248
  %481 = call float @dx.op.unary.f32(i32 6, float %224)  ; FAbs(value)
  %482 = select i1 %272, float %481, float 0x47EFFFFFE0000000
  %483 = call float @dx.op.binary.f32(i32 36, float %393, float %482)  ; FMin(a,b)
  %484 = fmul fast float %480, %483
  br label %485

; <label>:485                                     ; preds = %477, %472, %470, %466, %443, %394, %313
  %486 = phi float [ %389, %313 ], [ %441, %394 ], [ %455, %443 ], [ %484, %477 ], [ %469, %466 ], [ %476, %472 ], [ %464, %470 ]
  %487 = phi float [ %384, %313 ], [ %436, %394 ], [ %27, %443 ], [ %27, %477 ], [ %27, %466 ], [ %27, %472 ], [ %27, %470 ]
  %488 = phi float [ %385, %313 ], [ %437, %394 ], [ %28, %443 ], [ %28, %477 ], [ %28, %466 ], [ %28, %472 ], [ %28, %470 ]
  %489 = phi float [ %386, %313 ], [ %438, %394 ], [ %29, %443 ], [ %29, %477 ], [ %29, %466 ], [ %29, %472 ], [ %29, %470 ]
  %490 = phi float [ %387, %313 ], [ %439, %394 ], [ 1.000000e+00, %443 ], [ 1.000000e+00, %477 ], [ 1.000000e+00, %466 ], [ 1.000000e+00, %472 ], [ 1.000000e+00, %470 ]
  %491 = call float @dx.op.unary.f32(i32 7, float %486)  ; Saturate(value)
  %492 = fmul fast float %491, %30
  %493 = fmul fast float %490, %203
  %494 = fmul fast float %493, %491
  br label %495

; <label>:495                                     ; preds = %485, %242
  %496 = phi float [ %487, %485 ], [ %27, %242 ]
  %497 = phi float [ %488, %485 ], [ %28, %242 ]
  %498 = phi float [ %489, %485 ], [ %29, %242 ]
  %499 = phi float [ %494, %485 ], [ %203, %242 ]
  %500 = phi float [ %492, %485 ], [ %30, %242 ]
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %503 = fptosi float %33 to i32
  %504 = sitofp i32 %503 to float
  %505 = fadd fast float %502, %504
  %506 = fmul fast float %505, 0x3FE3C6EF40000000
  %507 = frem fast float %38, 2.560000e+02
  %508 = frem fast float %39, 2.560000e+02
  %509 = fptoui float %507 to i32
  %510 = fptoui float %508 to i32
  %511 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %509, i32 %510, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = fadd fast float %512, %506
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = and i32 %116, 1
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %574, label %517, !dx.controlflow.hints !56

; <label>:517                                     ; preds = %495
  %518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 2
  %520 = extractvalue %dx.types.ResRet.f32 %518, 3
  %521 = add i32 %113, 16
  %522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = add i32 %113, 32
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = and i32 %116, 2
  %532 = icmp eq i32 %531, 0
  %533 = call float @dx.op.dot3.f32(i32 55, float %22, float %23, float %24, float %22, float %23, float %24)  ; Dot3(ax,ay,az,bx,by,bz)
  %534 = call float @dx.op.unary.f32(i32 25, float %533)  ; Rsqrt(value)
  %535 = fmul fast float %534, %22
  %536 = fmul fast float %534, %23
  %537 = fmul fast float %534, %24
  %538 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = call float @dx.op.unary.f32(i32 25, float %538)  ; Rsqrt(value)
  %540 = fmul fast float %539, %73
  %541 = fmul fast float %539, %74
  %542 = fmul fast float %539, %75
  %543 = call float @dx.op.dot3.f32(i32 55, float %540, float %541, float %542, float %535, float %536, float %537)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = fmul fast float %543, %543
  %545 = fmul fast float %544, %519
  %546 = fadd fast float %545, %520
  %547 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  br i1 %532, label %548, label %558, !dx.controlflow.hints !57

; <label>:548                                     ; preds = %517
  %549 = extractvalue %dx.types.ResRet.f32 %518, 1
  %550 = extractvalue %dx.types.ResRet.f32 %518, 0
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %553 = fmul fast float %552, %538
  %554 = fsub fast float %550, %553
  %555 = fmul fast float %554, %549
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %557 = fmul fast float %556, %547
  br label %558

; <label>:558                                     ; preds = %548, %517
  %559 = phi float [ %557, %548 ], [ %547, %517 ]
  %560 = fsub fast float %523, %528
  %561 = fsub fast float %524, %529
  %562 = fsub fast float %525, %530
  %563 = fmul fast float %559, %560
  %564 = fmul fast float %559, %561
  %565 = fmul fast float %559, %562
  %566 = fadd fast float %563, %528
  %567 = fadd fast float %564, %529
  %568 = fadd fast float %565, %530
  %569 = fmul fast float %566, %496
  %570 = fmul fast float %567, %497
  %571 = fmul fast float %568, %498
  %572 = fmul fast float %559, %499
  %573 = fmul fast float %559, %500
  br label %574

; <label>:574                                     ; preds = %558, %495
  %575 = phi float [ %569, %558 ], [ %496, %495 ]
  %576 = phi float [ %570, %558 ], [ %497, %495 ]
  %577 = phi float [ %571, %558 ], [ %498, %495 ]
  %578 = phi float [ %572, %558 ], [ %499, %495 ]
  %579 = phi float [ %573, %558 ], [ %500, %495 ]
  %580 = add i32 %15, 120
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = add i32 %582, 0
  %584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %585 = add i32 %15, 24
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %584, %dx.types.Handle %34, float %153, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = extractvalue %dx.types.ResRet.f32 %588, 3
  %593 = and i32 %587, 255
  %594 = uitofp i32 %593 to float
  %595 = lshr i32 %587, 8
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %592, %594
  %599 = fadd fast float %598, %597
  %600 = fmul fast float %599, 0x3F70101000000000
  %601 = add i32 %15, 56
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = lshr i32 %603, 8
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = lshr i32 %603, 16
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %621 = fadd fast float %600, 0xBFB99999A0000000
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %623 = fmul fast float %622, 0x3FF1C71C80000000
  %624 = fsub fast float 1.000000e+00, %623
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = fmul fast float %589, %575
  %627 = fmul fast float %606, %606
  %628 = fmul fast float %627, %626
  %629 = fmul fast float %628, %625
  %630 = fmul fast float %590, %576
  %631 = fmul fast float %610, %610
  %632 = fmul fast float %631, %630
  %633 = fmul fast float %632, %625
  %634 = fmul fast float %591, %577
  %635 = fmul fast float %614, %614
  %636 = fmul fast float %635, %634
  %637 = fmul fast float %636, %625
  %638 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %640 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %641 = call float @dx.op.dot3.f32(i32 55, float %638, float %639, float %640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %642 = add i32 %15, 32
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = lshr i32 %644, 8
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, %641
  %651 = fadd fast float %650, %646
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %654 = and i32 %116, 8192
  %655 = icmp eq i32 %654, 0
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 0
  br i1 %655, label %664, label %658, !dx.controlflow.hints !58

; <label>:658                                     ; preds = %574
  %659 = add i32 %113, 176
  %660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = fcmp fast oge float %661, 0.000000e+00
  %663 = select i1 %662, float %661, float %657
  br label %671

; <label>:664                                     ; preds = %574
  %665 = add i32 %15, 104
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = bitcast i32 %667 to float
  %669 = fcmp fast oge float %668, 0.000000e+00
  %670 = select i1 %669, float %668, float %657
  br label %671

; <label>:671                                     ; preds = %664, %658
  %672 = phi float [ %663, %658 ], [ %670, %664 ]
  %673 = fmul fast float %579, %578
  %674 = fsub fast float 1.000000e+00, %578
  %675 = call float @dx.op.dot3.f32(i32 55, float %674, float %674, float %674, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fmul fast float %616, %578
  %678 = fmul fast float %677, %620
  %679 = fmul fast float %678, %638
  %680 = fmul fast float %617, %578
  %681 = fmul fast float %680, %620
  %682 = fmul fast float %681, %639
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 0
  br i1 %96, label %685, label %710

; <label>:685                                     ; preds = %671
  %686 = fmul fast float %672, %653
  %687 = fsub fast float 1.000000e+00, %673
  %688 = fsub fast float %687, %653
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 3
  %692 = fmul fast float %691, %689
  %693 = fadd fast float %692, %686
  %694 = fadd fast float %682, %679
  %695 = fmul fast float %684, %694
  %696 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %697 = fsub fast float %693, %696
  %698 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %699 = fmul fast float %697, %698
  %700 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %703 = fsub fast float %700, %702
  %704 = fmul fast float %703, 1.000000e+01
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %706 = fsub fast float %673, %676
  %707 = fmul fast float %705, %706
  %708 = fadd fast float %707, %676
  %709 = fmul fast float %708, %700
  br label %722

; <label>:710                                     ; preds = %671
  %711 = fmul fast float %684, %679
  %712 = fmul fast float %684, %682
  %713 = fmul fast float %618, %578
  %714 = fmul fast float %713, %620
  %715 = fmul fast float %714, %640
  %716 = fmul fast float %715, %684
  %717 = call float @dx.op.binary.f32(i32 35, float %712, float %716)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %711, float %717)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 35, float %718, float %676)  ; FMax(a,b)
  %720 = fcmp fast ugt float %719, 0x3F10000000000000
  br i1 %720, label %722, label %721

; <label>:721                                     ; preds = %710
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %722

; <label>:722                                     ; preds = %721, %710, %685
  %723 = phi float [ %695, %685 ], [ %711, %721 ], [ %711, %710 ]
  %724 = phi float [ %709, %685 ], [ %712, %721 ], [ %712, %710 ]
  %725 = phi float [ %708, %685 ], [ %716, %721 ], [ %716, %710 ]
  %726 = phi float [ %708, %685 ], [ %676, %721 ], [ %676, %710 ]
  %727 = fadd fast float %514, 0x3FE3C6EF40000000
  %728 = call float @dx.op.unary.f32(i32 22, float %727)  ; Frc(value)
  %729 = call float @dx.op.unary.f32(i32 23, float %723)  ; Log(value)
  %730 = fadd fast float %729, -7.000000e+00
  %731 = call float @dx.op.unary.f32(i32 21, float %730)  ; Exp(value)
  %732 = fmul fast float %728, 2.000000e+00
  %733 = fadd fast float %732, -1.000000e+00
  %734 = fmul fast float %731, %733
  %735 = fcmp fast ogt float %723, 0.000000e+00
  %736 = select i1 %735, float %734, float 0.000000e+00
  %737 = fadd fast float %736, %723
  %738 = fadd fast float %514, 0x3FF3C6EF40000000
  %739 = call float @dx.op.unary.f32(i32 22, float %738)  ; Frc(value)
  %740 = call float @dx.op.unary.f32(i32 23, float %724)  ; Log(value)
  %741 = fadd fast float %740, -7.000000e+00
  %742 = call float @dx.op.unary.f32(i32 21, float %741)  ; Exp(value)
  %743 = fmul fast float %739, 2.000000e+00
  %744 = fadd fast float %743, -1.000000e+00
  %745 = fmul fast float %742, %744
  %746 = fcmp fast ogt float %724, 0.000000e+00
  %747 = select i1 %746, float %745, float 0.000000e+00
  %748 = fadd fast float %747, %724
  %749 = fadd fast float %514, 0x3FFDAA66E0000000
  %750 = call float @dx.op.unary.f32(i32 22, float %749)  ; Frc(value)
  %751 = call float @dx.op.unary.f32(i32 23, float %725)  ; Log(value)
  %752 = fadd fast float %751, -6.000000e+00
  %753 = call float @dx.op.unary.f32(i32 21, float %752)  ; Exp(value)
  %754 = fmul fast float %750, 2.000000e+00
  %755 = fadd fast float %754, -1.000000e+00
  %756 = fmul fast float %753, %755
  %757 = fcmp fast ogt float %725, 0.000000e+00
  %758 = select i1 %757, float %756, float 0.000000e+00
  %759 = fadd fast float %758, %725
  %760 = select i1 %96, float %724, float %748
  %761 = select i1 %96, float %725, float %759
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %762 = call float @dx.op.binary.f32(i32 36, float %737, float 3.225500e+04)  ; FMin(a,b)
  %763 = call float @dx.op.binary.f32(i32 36, float %760, float 3.225500e+04)  ; FMin(a,b)
  %764 = call float @dx.op.binary.f32(i32 36, float %761, float 3.225500e+04)  ; FMin(a,b)
  %765 = call float @dx.op.binary.f32(i32 36, float %726, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %762)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %763)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %764)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %765)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!25 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
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
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}

