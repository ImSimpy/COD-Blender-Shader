;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2     zw        2     NONE   float     zw
; TEXCOORD                 3   xy          3     NONE   float   xy  
; TEXCOORD                 4     zw        3     NONE   float     zw
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 6     zw        4     NONE   float     zw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 030f7ca26eb5de7d1bd1c876d4f6f9e1
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 2                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
; TEXCOORD                 5                 linear       
; TEXCOORD                 6                 linear       
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
;   [320 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [304 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   cbuffer      NA          NA     CB3            cb4     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture    byte         r/o      T3     t15,space1     1
;                                   texture     f32          2d      T4     t76,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          2d      T7             t2     1
;                                   texture     f32          2d      T8             t3     1
;                                   texture     f32          2d      T9             t4     1
;                                   texture     f32          3d     T10     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 20, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = fsub fast float %34, %37
  %40 = fsub fast float %35, %38
  %41 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %42 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %43 = fmul fast float %39, %41
  %44 = fmul fast float %40, %42
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = fmul fast float %43, %46
  %49 = fmul fast float %44, %47
  %50 = fptoui float %48 to i32
  %51 = fptoui float %49 to i32
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 1
  %54 = shl i32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.i32 %52, 3
  %56 = add i32 %54, %55
  %57 = lshr i32 %51, 2
  %58 = extractvalue %dx.types.CBufRet.i32 %52, 2
  %59 = mul i32 %57, %58
  %60 = lshr i32 %50, 3
  %61 = add i32 %56, %60
  %62 = add i32 %61, %59
  %63 = shl i32 %62, 2
  %64 = shl i32 %51, 3
  %65 = and i32 %64, 24
  %66 = and i32 %50, 7
  %67 = or i32 %65, %66
  %68 = shl i32 1, %67
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74, !dx.controlflow.hints !49

; <label>:73                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %74

; <label>:74                                      ; preds = %73, %0
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 3
  %77 = fcmp fast ogt float %76, 0.000000e+00
  br i1 %77, label %78, label %128, !dx.controlflow.hints !50

; <label>:78                                      ; preds = %74
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 3
  %81 = fmul fast float %80, 1.000000e+01
  %82 = call float @dx.op.unary.f32(i32 27, float %81)  ; Round_ni(value)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = fmul fast float %84, %34
  %87 = fmul fast float %85, %35
  %88 = call float @dx.op.unary.f32(i32 27, float %86)  ; Round_ni(value)
  %89 = call float @dx.op.unary.f32(i32 27, float %87)  ; Round_ni(value)
  %90 = fmul fast float %82, 0x4002B851E0000000
  %91 = call float @dx.op.unary.f32(i32 22, float %90)  ; Frc(value)
  %92 = fadd fast float %91, 0x3FB99999A0000000
  %93 = fadd fast float %92, %88
  %94 = fadd fast float %92, %89
  %95 = fmul fast float %93, 0x3FE1BEDF00000000
  %96 = call float @dx.op.unary.f32(i32 22, float %95)  ; Frc(value)
  %97 = fmul fast float %93, %96
  %98 = fadd fast float %97, %94
  %99 = fmul fast float %94, 0x3FD3BEBE20000000
  %100 = call float @dx.op.unary.f32(i32 22, float %99)  ; Frc(value)
  %101 = fmul fast float %94, %100
  %102 = fadd fast float %101, %93
  %103 = fmul fast float %98, %102
  %104 = call float @dx.op.unary.f32(i32 22, float %103)  ; Frc(value)
  %105 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %106 = bitcast float %105 to i32
  %107 = and i32 %106, 255
  %108 = uitofp i32 %107 to float
  %109 = fmul fast float %104, 0x4085373340000000
  %110 = call float @dx.op.unary.f32(i32 22, float %109)  ; Frc(value)
  %111 = fmul fast float %108, 0x3F6CE9B6A0000000
  %112 = fcmp fast olt float %110, %111
  br i1 %112, label %113, label %128, !dx.controlflow.hints !51

; <label>:113                                     ; preds = %78
  %114 = fdiv fast float %110, %111
  %115 = fmul fast float %114, 2.000000e+00
  %116 = fadd fast float %115, -1.000000e+00
  %117 = lshr i32 %106, 8
  %118 = and i32 %117, 255
  %119 = uitofp i32 %118 to float
  %120 = call float @dx.op.unary.f32(i32 83, float %28)  ; DerivCoarseX(value)
  %121 = call float @dx.op.unary.f32(i32 83, float %29)  ; DerivCoarseX(value)
  %122 = fmul fast float %116, %120
  %123 = fmul fast float %122, %119
  %124 = fmul fast float %121, %116
  %125 = fmul fast float %124, %119
  %126 = fadd fast float %123, %28
  %127 = fadd fast float %125, %29
  br label %128

; <label>:128                                     ; preds = %113, %78, %74
  %129 = phi float [ %126, %113 ], [ %28, %78 ], [ %28, %74 ]
  %130 = phi float [ %127, %113 ], [ %29, %78 ], [ %29, %74 ]
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %129, float %130, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 3
  %133 = fmul fast float %132, 2.000000e+00
  %134 = fadd fast float %133, -1.000000e+00
  %135 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %136 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %137 = fmul fast float %135, %135
  %138 = fmul fast float %136, %136
  %139 = fadd fast float %138, %137
  %140 = call float @dx.op.unary.f32(i32 24, float %139)  ; Sqrt(value)
  %141 = fmul fast float %140, 2.000000e+00
  %142 = fadd fast float %140, %134
  %143 = fdiv fast float %142, %141
  %144 = call float @dx.op.unary.f32(i32 7, float %143)  ; Saturate(value)
  %145 = fmul fast float %144, 2.000000e+00
  %146 = fsub fast float 3.000000e+00, %145
  %147 = fmul fast float %144, %144
  %148 = fmul fast float %147, %146
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = fcmp fast une float %159, %160
  br i1 %161, label %162, label %179

; <label>:162                                     ; preds = %128
  %163 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %164 = fadd fast float %163, %129
  %165 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %166 = fadd fast float %165, %130
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %164, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 3
  %169 = fmul fast float %168, 2.000000e+00
  %170 = fadd fast float %169, -1.000000e+00
  %171 = fsub fast float %160, %159
  %172 = fsub fast float %170, %159
  %173 = fdiv fast float %172, %171
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = fmul fast float %174, 2.000000e+00
  %176 = fsub fast float 3.000000e+00, %175
  %177 = fmul fast float %174, %174
  %178 = fmul fast float %177, %176
  br label %179

; <label>:179                                     ; preds = %162, %128
  %180 = phi float [ %178, %162 ], [ 0.000000e+00, %128 ]
  %181 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %182 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %183 = fcmp fast une float %181, %182
  br i1 %183, label %184, label %193

; <label>:184                                     ; preds = %179
  %185 = fsub fast float %182, %181
  %186 = fsub fast float %134, %181
  %187 = fdiv fast float %186, %185
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fmul fast float %188, 2.000000e+00
  %190 = fsub fast float 3.000000e+00, %189
  %191 = fmul fast float %188, %188
  %192 = fmul fast float %191, %190
  br label %193

; <label>:193                                     ; preds = %184, %179
  %194 = phi float [ %192, %184 ], [ 0.000000e+00, %179 ]
  %195 = fsub fast float %154, %150
  %196 = fsub fast float %155, %151
  %197 = fsub fast float %156, %152
  %198 = fmul fast float %194, %195
  %199 = fmul fast float %194, %196
  %200 = fmul fast float %194, %197
  %201 = fadd fast float %198, %150
  %202 = fadd fast float %199, %151
  %203 = fadd fast float %200, %152
  %204 = fsub fast float %30, %201
  %205 = fsub fast float %31, %202
  %206 = fsub fast float %32, %203
  %207 = fmul fast float %204, %148
  %208 = fmul fast float %205, %148
  %209 = fmul fast float %206, %148
  %210 = fadd fast float %207, %201
  %211 = fadd fast float %208, %202
  %212 = fadd fast float %209, %203
  %213 = fsub fast float %194, %180
  %214 = fmul fast float %213, %194
  %215 = fadd fast float %214, %180
  %216 = fsub fast float %148, %215
  %217 = fmul fast float %216, %148
  %218 = fadd fast float %217, %215
  %219 = fmul fast float %218, %33
  %220 = fcmp fast ole float %210, 0x3FA4B5DCC0000000
  %221 = fmul fast float %210, 0x3FB3D07220000000
  %222 = fadd fast float %210, 0x3FAC28F5C0000000
  %223 = fmul fast float %222, 0x3FEE54EDE0000000
  %224 = call float @dx.op.unary.f32(i32 23, float %223)  ; Log(value)
  %225 = fmul fast float %224, 0x4003333340000000
  %226 = call float @dx.op.unary.f32(i32 21, float %225)  ; Exp(value)
  %227 = select i1 %220, float %221, float %226
  %228 = fcmp fast ole float %211, 0x3FA4B5DCC0000000
  %229 = fmul fast float %211, 0x3FB3D07220000000
  %230 = fadd fast float %211, 0x3FAC28F5C0000000
  %231 = fmul fast float %230, 0x3FEE54EDE0000000
  %232 = call float @dx.op.unary.f32(i32 23, float %231)  ; Log(value)
  %233 = fmul fast float %232, 0x4003333340000000
  %234 = call float @dx.op.unary.f32(i32 21, float %233)  ; Exp(value)
  %235 = select i1 %228, float %229, float %234
  %236 = fcmp fast ole float %212, 0x3FA4B5DCC0000000
  %237 = fmul fast float %212, 0x3FB3D07220000000
  %238 = fadd fast float %212, 0x3FAC28F5C0000000
  %239 = fmul fast float %238, 0x3FEE54EDE0000000
  %240 = call float @dx.op.unary.f32(i32 23, float %239)  ; Log(value)
  %241 = fmul fast float %240, 0x4003333340000000
  %242 = call float @dx.op.unary.f32(i32 21, float %241)  ; Exp(value)
  %243 = select i1 %236, float %237, float %242
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %246 = bitcast float %245 to i32
  %247 = lshr i32 %246, 4
  %248 = lshr i32 %246, 9
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %345, label %251

; <label>:251                                     ; preds = %193
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 3
  %254 = bitcast float %253 to i32
  %255 = and i32 %254, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %254, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %260 = bitcast float %259 to i32
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = and i32 %247, 1
  %266 = icmp ne i32 %265, 0
  %267 = fcmp fast ogt float %256, 0.000000e+00
  %268 = fcmp fast ogt float %258, 0.000000e+00
  %269 = and i1 %267, %268
  %270 = fcmp fast ogt float %262, 0.000000e+00
  br i1 %269, label %271, label %331

; <label>:271                                     ; preds = %251
  br i1 %270, label %272, label %280

; <label>:272                                     ; preds = %271
  %273 = fmul fast float %258, %27
  %274 = fmul fast float %256, %26
  %275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %274, float %273, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = fsub fast float 1.000000e+00, %276
  %278 = select i1 %266, float %277, float %276
  %279 = fmul fast float %278, %262
  br label %280

; <label>:280                                     ; preds = %272, %271
  %281 = phi float [ %279, %272 ], [ 0.000000e+00, %271 ]
  %282 = fadd fast float %281, %264
  %283 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  br i1 %270, label %284, label %294

; <label>:284                                     ; preds = %280
  %285 = fmul fast float %258, %27
  %286 = fsub fast float 1.000000e+00, %26
  %287 = fmul fast float %256, %286
  %288 = fsub fast float 1.000000e+00, %287
  %289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %288, float %285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 1
  %291 = fsub fast float 1.000000e+00, %290
  %292 = select i1 %266, float %291, float %290
  %293 = fmul fast float %292, %262
  br label %294

; <label>:294                                     ; preds = %284, %280
  %295 = phi float [ %293, %284 ], [ 0.000000e+00, %280 ]
  %296 = fadd fast float %295, %264
  %297 = call float @dx.op.unary.f32(i32 7, float %296)  ; Saturate(value)
  %298 = fmul fast float %297, %283
  br i1 %270, label %299, label %311

; <label>:299                                     ; preds = %294
  %300 = fsub fast float 1.000000e+00, %27
  %301 = fmul fast float %258, %300
  %302 = fsub fast float 1.000000e+00, %301
  %303 = fsub fast float 1.000000e+00, %26
  %304 = fmul fast float %256, %303
  %305 = fsub fast float 1.000000e+00, %304
  %306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %305, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 2
  %308 = fsub fast float 1.000000e+00, %307
  %309 = select i1 %266, float %308, float %307
  %310 = fmul fast float %309, %262
  br label %311

; <label>:311                                     ; preds = %299, %294
  %312 = phi float [ %310, %299 ], [ 0.000000e+00, %294 ]
  %313 = fadd fast float %312, %264
  %314 = call float @dx.op.unary.f32(i32 7, float %313)  ; Saturate(value)
  %315 = fmul fast float %298, %314
  br i1 %270, label %316, label %326

; <label>:316                                     ; preds = %311
  %317 = fsub fast float 1.000000e+00, %27
  %318 = fmul fast float %258, %317
  %319 = fsub fast float 1.000000e+00, %318
  %320 = fmul fast float %256, %26
  %321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %320, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 3
  %323 = fsub fast float 1.000000e+00, %322
  %324 = select i1 %266, float %323, float %322
  %325 = fmul fast float %324, %262
  br label %326

; <label>:326                                     ; preds = %316, %311
  %327 = phi float [ %325, %316 ], [ 0.000000e+00, %311 ]
  %328 = fadd fast float %327, %264
  %329 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %330 = fmul fast float %315, %329
  br label %342

; <label>:331                                     ; preds = %251
  br i1 %270, label %332, label %338

; <label>:332                                     ; preds = %331
  %333 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = fsub fast float 1.000000e+00, %334
  %336 = select i1 %266, float %335, float %334
  %337 = fmul fast float %336, %262
  br label %338

; <label>:338                                     ; preds = %332, %331
  %339 = phi float [ %337, %332 ], [ 0.000000e+00, %331 ]
  %340 = fadd fast float %339, %264
  %341 = call float @dx.op.unary.f32(i32 7, float %340)  ; Saturate(value)
  br label %342

; <label>:342                                     ; preds = %338, %326
  %343 = phi float [ %330, %326 ], [ %341, %338 ]
  %344 = fmul fast float %343, %219
  br label %345

; <label>:345                                     ; preds = %342, %193
  %346 = phi float [ %344, %342 ], [ %219, %193 ]
  %347 = and i32 %248, 2
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %443, label %349

; <label>:349                                     ; preds = %345
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 3
  %352 = bitcast float %351 to i32
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %358 = bitcast float %357 to i32
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = and i32 %247, 2
  %364 = icmp ne i32 %363, 0
  %365 = fcmp fast ogt float %354, 0.000000e+00
  %366 = fcmp fast ogt float %356, 0.000000e+00
  %367 = and i1 %365, %366
  %368 = fcmp fast ogt float %360, 0.000000e+00
  br i1 %367, label %369, label %429

; <label>:369                                     ; preds = %349
  br i1 %368, label %370, label %378

; <label>:370                                     ; preds = %369
  %371 = fmul fast float %356, %25
  %372 = fmul fast float %354, %24
  %373 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %372, float %371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = fsub fast float 1.000000e+00, %374
  %376 = select i1 %364, float %375, float %374
  %377 = fmul fast float %376, %360
  br label %378

; <label>:378                                     ; preds = %370, %369
  %379 = phi float [ %377, %370 ], [ 0.000000e+00, %369 ]
  %380 = fadd fast float %379, %362
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  br i1 %368, label %382, label %392

; <label>:382                                     ; preds = %378
  %383 = fmul fast float %356, %25
  %384 = fsub fast float 1.000000e+00, %24
  %385 = fmul fast float %354, %384
  %386 = fsub fast float 1.000000e+00, %385
  %387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %386, float %383, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 1
  %389 = fsub fast float 1.000000e+00, %388
  %390 = select i1 %364, float %389, float %388
  %391 = fmul fast float %390, %360
  br label %392

; <label>:392                                     ; preds = %382, %378
  %393 = phi float [ %391, %382 ], [ 0.000000e+00, %378 ]
  %394 = fadd fast float %393, %362
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = fmul fast float %395, %381
  br i1 %368, label %397, label %409

; <label>:397                                     ; preds = %392
  %398 = fsub fast float 1.000000e+00, %25
  %399 = fmul fast float %356, %398
  %400 = fsub fast float 1.000000e+00, %399
  %401 = fsub fast float 1.000000e+00, %24
  %402 = fmul fast float %354, %401
  %403 = fsub fast float 1.000000e+00, %402
  %404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %403, float %400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 2
  %406 = fsub fast float 1.000000e+00, %405
  %407 = select i1 %364, float %406, float %405
  %408 = fmul fast float %407, %360
  br label %409

; <label>:409                                     ; preds = %397, %392
  %410 = phi float [ %408, %397 ], [ 0.000000e+00, %392 ]
  %411 = fadd fast float %410, %362
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = fmul fast float %396, %412
  br i1 %368, label %414, label %424

; <label>:414                                     ; preds = %409
  %415 = fsub fast float 1.000000e+00, %25
  %416 = fmul fast float %356, %415
  %417 = fsub fast float 1.000000e+00, %416
  %418 = fmul fast float %354, %24
  %419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %418, float %417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 3
  %421 = fsub fast float 1.000000e+00, %420
  %422 = select i1 %364, float %421, float %420
  %423 = fmul fast float %422, %360
  br label %424

; <label>:424                                     ; preds = %414, %409
  %425 = phi float [ %423, %414 ], [ 0.000000e+00, %409 ]
  %426 = fadd fast float %425, %362
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fmul fast float %413, %427
  br label %440

; <label>:429                                     ; preds = %349
  br i1 %368, label %430, label %436

; <label>:430                                     ; preds = %429
  %431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = fsub fast float 1.000000e+00, %432
  %434 = select i1 %364, float %433, float %432
  %435 = fmul fast float %434, %360
  br label %436

; <label>:436                                     ; preds = %430, %429
  %437 = phi float [ %435, %430 ], [ 0.000000e+00, %429 ]
  %438 = fadd fast float %437, %362
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  br label %440

; <label>:440                                     ; preds = %436, %424
  %441 = phi float [ %428, %424 ], [ %439, %436 ]
  %442 = fmul fast float %441, %346
  br label %443

; <label>:443                                     ; preds = %440, %345
  %444 = phi float [ %442, %440 ], [ %346, %345 ]
  %445 = and i32 %248, 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %541, label %447

; <label>:447                                     ; preds = %443
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 3
  %450 = bitcast float %449 to i32
  %451 = and i32 %450, 65535
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = lshr i32 %450, 16
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %456 = bitcast float %455 to i32
  %457 = and i32 %456, 65535
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = lshr i32 %456, 16
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = and i32 %247, 4
  %462 = icmp ne i32 %461, 0
  %463 = fcmp fast ogt float %452, 0.000000e+00
  %464 = fcmp fast ogt float %454, 0.000000e+00
  %465 = and i1 %463, %464
  %466 = fcmp fast ogt float %458, 0.000000e+00
  br i1 %465, label %467, label %527

; <label>:467                                     ; preds = %447
  br i1 %466, label %468, label %476

; <label>:468                                     ; preds = %467
  %469 = fmul fast float %454, %23
  %470 = fmul fast float %452, %22
  %471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %470, float %469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = fsub fast float 1.000000e+00, %472
  %474 = select i1 %462, float %473, float %472
  %475 = fmul fast float %474, %458
  br label %476

; <label>:476                                     ; preds = %468, %467
  %477 = phi float [ %475, %468 ], [ 0.000000e+00, %467 ]
  %478 = fadd fast float %477, %460
  %479 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  br i1 %466, label %480, label %490

; <label>:480                                     ; preds = %476
  %481 = fmul fast float %454, %23
  %482 = fsub fast float 1.000000e+00, %22
  %483 = fmul fast float %452, %482
  %484 = fsub fast float 1.000000e+00, %483
  %485 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %484, float %481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 1
  %487 = fsub fast float 1.000000e+00, %486
  %488 = select i1 %462, float %487, float %486
  %489 = fmul fast float %488, %458
  br label %490

; <label>:490                                     ; preds = %480, %476
  %491 = phi float [ %489, %480 ], [ 0.000000e+00, %476 ]
  %492 = fadd fast float %491, %460
  %493 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %494 = fmul fast float %493, %479
  br i1 %466, label %495, label %507

; <label>:495                                     ; preds = %490
  %496 = fsub fast float 1.000000e+00, %23
  %497 = fmul fast float %454, %496
  %498 = fsub fast float 1.000000e+00, %497
  %499 = fsub fast float 1.000000e+00, %22
  %500 = fmul fast float %452, %499
  %501 = fsub fast float 1.000000e+00, %500
  %502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %501, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 2
  %504 = fsub fast float 1.000000e+00, %503
  %505 = select i1 %462, float %504, float %503
  %506 = fmul fast float %505, %458
  br label %507

; <label>:507                                     ; preds = %495, %490
  %508 = phi float [ %506, %495 ], [ 0.000000e+00, %490 ]
  %509 = fadd fast float %508, %460
  %510 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  %511 = fmul fast float %494, %510
  br i1 %466, label %512, label %522

; <label>:512                                     ; preds = %507
  %513 = fsub fast float 1.000000e+00, %23
  %514 = fmul fast float %454, %513
  %515 = fsub fast float 1.000000e+00, %514
  %516 = fmul fast float %452, %22
  %517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %516, float %515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 3
  %519 = fsub fast float 1.000000e+00, %518
  %520 = select i1 %462, float %519, float %518
  %521 = fmul fast float %520, %458
  br label %522

; <label>:522                                     ; preds = %512, %507
  %523 = phi float [ %521, %512 ], [ 0.000000e+00, %507 ]
  %524 = fadd fast float %523, %460
  %525 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  %526 = fmul fast float %511, %525
  br label %538

; <label>:527                                     ; preds = %447
  br i1 %466, label %528, label %534

; <label>:528                                     ; preds = %527
  %529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = fsub fast float 1.000000e+00, %530
  %532 = select i1 %462, float %531, float %530
  %533 = fmul fast float %532, %458
  br label %534

; <label>:534                                     ; preds = %528, %527
  %535 = phi float [ %533, %528 ], [ 0.000000e+00, %527 ]
  %536 = fadd fast float %535, %460
  %537 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  br label %538

; <label>:538                                     ; preds = %534, %522
  %539 = phi float [ %526, %522 ], [ %537, %534 ]
  %540 = fmul fast float %539, %444
  br label %541

; <label>:541                                     ; preds = %538, %443
  %542 = phi float [ %540, %538 ], [ %444, %443 ]
  %543 = and i32 %248, 8
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %639, label %545

; <label>:545                                     ; preds = %541
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %548 = bitcast float %547 to i32
  %549 = and i32 %548, 65535
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %548, 16
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %554 = bitcast float %553 to i32
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %554, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = and i32 %247, 8
  %560 = icmp ne i32 %559, 0
  %561 = fcmp fast ogt float %550, 0.000000e+00
  %562 = fcmp fast ogt float %552, 0.000000e+00
  %563 = and i1 %561, %562
  %564 = fcmp fast ogt float %556, 0.000000e+00
  br i1 %563, label %565, label %625

; <label>:565                                     ; preds = %545
  br i1 %564, label %566, label %574

; <label>:566                                     ; preds = %565
  %567 = fmul fast float %552, %21
  %568 = fmul fast float %550, %20
  %569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %568, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  %571 = fsub fast float 1.000000e+00, %570
  %572 = select i1 %560, float %571, float %570
  %573 = fmul fast float %572, %556
  br label %574

; <label>:574                                     ; preds = %566, %565
  %575 = phi float [ %573, %566 ], [ 0.000000e+00, %565 ]
  %576 = fadd fast float %575, %558
  %577 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  br i1 %564, label %578, label %588

; <label>:578                                     ; preds = %574
  %579 = fmul fast float %552, %21
  %580 = fsub fast float 1.000000e+00, %20
  %581 = fmul fast float %550, %580
  %582 = fsub fast float 1.000000e+00, %581
  %583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %582, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 1
  %585 = fsub fast float 1.000000e+00, %584
  %586 = select i1 %560, float %585, float %584
  %587 = fmul fast float %586, %556
  br label %588

; <label>:588                                     ; preds = %578, %574
  %589 = phi float [ %587, %578 ], [ 0.000000e+00, %574 ]
  %590 = fadd fast float %589, %558
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %592 = fmul fast float %591, %577
  br i1 %564, label %593, label %605

; <label>:593                                     ; preds = %588
  %594 = fsub fast float 1.000000e+00, %21
  %595 = fmul fast float %552, %594
  %596 = fsub fast float 1.000000e+00, %595
  %597 = fsub fast float 1.000000e+00, %20
  %598 = fmul fast float %550, %597
  %599 = fsub fast float 1.000000e+00, %598
  %600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %599, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 2
  %602 = fsub fast float 1.000000e+00, %601
  %603 = select i1 %560, float %602, float %601
  %604 = fmul fast float %603, %556
  br label %605

; <label>:605                                     ; preds = %593, %588
  %606 = phi float [ %604, %593 ], [ 0.000000e+00, %588 ]
  %607 = fadd fast float %606, %558
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = fmul fast float %592, %608
  br i1 %564, label %610, label %620

; <label>:610                                     ; preds = %605
  %611 = fsub fast float 1.000000e+00, %21
  %612 = fmul fast float %552, %611
  %613 = fsub fast float 1.000000e+00, %612
  %614 = fmul fast float %550, %20
  %615 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %614, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 3
  %617 = fsub fast float 1.000000e+00, %616
  %618 = select i1 %560, float %617, float %616
  %619 = fmul fast float %618, %556
  br label %620

; <label>:620                                     ; preds = %610, %605
  %621 = phi float [ %619, %610 ], [ 0.000000e+00, %605 ]
  %622 = fadd fast float %621, %558
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = fmul fast float %609, %623
  br label %636

; <label>:625                                     ; preds = %545
  br i1 %564, label %626, label %632

; <label>:626                                     ; preds = %625
  %627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = fsub fast float 1.000000e+00, %628
  %630 = select i1 %560, float %629, float %628
  %631 = fmul fast float %630, %556
  br label %632

; <label>:632                                     ; preds = %626, %625
  %633 = phi float [ %631, %626 ], [ 0.000000e+00, %625 ]
  %634 = fadd fast float %633, %558
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  br label %636

; <label>:636                                     ; preds = %632, %620
  %637 = phi float [ %624, %620 ], [ %635, %632 ]
  %638 = fmul fast float %637, %542
  br label %639

; <label>:639                                     ; preds = %636, %541
  %640 = phi float [ %638, %636 ], [ %542, %541 ]
  %641 = and i32 %248, 16
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %737, label %643

; <label>:643                                     ; preds = %639
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %646 = bitcast float %645 to i32
  %647 = and i32 %646, 65535
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = lshr i32 %646, 16
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %652 = bitcast float %651 to i32
  %653 = and i32 %652, 65535
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = lshr i32 %652, 16
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = and i32 %247, 16
  %658 = icmp ne i32 %657, 0
  %659 = fcmp fast ogt float %648, 0.000000e+00
  %660 = fcmp fast ogt float %650, 0.000000e+00
  %661 = and i1 %659, %660
  %662 = fcmp fast ogt float %654, 0.000000e+00
  br i1 %661, label %663, label %723

; <label>:663                                     ; preds = %643
  br i1 %662, label %664, label %672

; <label>:664                                     ; preds = %663
  %665 = fmul fast float %650, %19
  %666 = fmul fast float %648, %18
  %667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %666, float %665, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = fsub fast float 1.000000e+00, %668
  %670 = select i1 %658, float %669, float %668
  %671 = fmul fast float %670, %654
  br label %672

; <label>:672                                     ; preds = %664, %663
  %673 = phi float [ %671, %664 ], [ 0.000000e+00, %663 ]
  %674 = fadd fast float %673, %656
  %675 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  br i1 %662, label %676, label %686

; <label>:676                                     ; preds = %672
  %677 = fmul fast float %650, %19
  %678 = fsub fast float 1.000000e+00, %18
  %679 = fmul fast float %648, %678
  %680 = fsub fast float 1.000000e+00, %679
  %681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %680, float %677, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 1
  %683 = fsub fast float 1.000000e+00, %682
  %684 = select i1 %658, float %683, float %682
  %685 = fmul fast float %684, %654
  br label %686

; <label>:686                                     ; preds = %676, %672
  %687 = phi float [ %685, %676 ], [ 0.000000e+00, %672 ]
  %688 = fadd fast float %687, %656
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = fmul fast float %689, %675
  br i1 %662, label %691, label %703

; <label>:691                                     ; preds = %686
  %692 = fsub fast float 1.000000e+00, %19
  %693 = fmul fast float %650, %692
  %694 = fsub fast float 1.000000e+00, %693
  %695 = fsub fast float 1.000000e+00, %18
  %696 = fmul fast float %648, %695
  %697 = fsub fast float 1.000000e+00, %696
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %697, float %694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 2
  %700 = fsub fast float 1.000000e+00, %699
  %701 = select i1 %658, float %700, float %699
  %702 = fmul fast float %701, %654
  br label %703

; <label>:703                                     ; preds = %691, %686
  %704 = phi float [ %702, %691 ], [ 0.000000e+00, %686 ]
  %705 = fadd fast float %704, %656
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  %707 = fmul fast float %690, %706
  br i1 %662, label %708, label %718

; <label>:708                                     ; preds = %703
  %709 = fsub fast float 1.000000e+00, %19
  %710 = fmul fast float %650, %709
  %711 = fsub fast float 1.000000e+00, %710
  %712 = fmul fast float %648, %18
  %713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %712, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 3
  %715 = fsub fast float 1.000000e+00, %714
  %716 = select i1 %658, float %715, float %714
  %717 = fmul fast float %716, %654
  br label %718

; <label>:718                                     ; preds = %708, %703
  %719 = phi float [ %717, %708 ], [ 0.000000e+00, %703 ]
  %720 = fadd fast float %719, %656
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %722 = fmul fast float %707, %721
  br label %734

; <label>:723                                     ; preds = %643
  br i1 %662, label %724, label %730

; <label>:724                                     ; preds = %723
  %725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %18, float %19, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = fsub fast float 1.000000e+00, %726
  %728 = select i1 %658, float %727, float %726
  %729 = fmul fast float %728, %654
  br label %730

; <label>:730                                     ; preds = %724, %723
  %731 = phi float [ %729, %724 ], [ 0.000000e+00, %723 ]
  %732 = fadd fast float %731, %656
  %733 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  br label %734

; <label>:734                                     ; preds = %730, %718
  %735 = phi float [ %722, %718 ], [ %733, %730 ]
  %736 = fmul fast float %735, %640
  br label %737

; <label>:737                                     ; preds = %734, %639
  %738 = phi float [ %736, %734 ], [ %640, %639 ]
  %739 = call float @dx.op.binary.f32(i32 35, float %738, float 0.000000e+00)  ; FMax(a,b)
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 3
  %742 = bitcast float %741 to i32
  %743 = and i32 %742, 1
  %744 = icmp eq i32 %743, 0
  %745 = and i32 %742, 4
  %746 = icmp eq i32 %745, 0
  br i1 %744, label %820, label %747, !dx.controlflow.hints !52

; <label>:747                                     ; preds = %737
  %748 = and i32 %742, 2
  %749 = icmp eq i32 %748, 0
  %750 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %751 = extractvalue %dx.types.CBufRet.f32 %740, 1
  %752 = extractvalue %dx.types.CBufRet.f32 %740, 2
  %753 = fmul fast float %750, %227
  %754 = fmul fast float %751, %235
  %755 = fmul fast float %752, %243
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %758 = fmul fast float %757, %753
  %759 = fmul fast float %757, %754
  %760 = fmul fast float %757, %755
  br i1 %749, label %820, label %761, !dx.controlflow.hints !53

; <label>:761                                     ; preds = %747
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %768 = call float @dx.op.dot3.f32(i32 55, float %758, float %759, float %760, float %765, float %766, float %767)  ; Dot3(ax,ay,az,bx,by,bz)
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %772 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %773 = call float @dx.op.dot3.f32(i32 55, float %758, float %759, float %760, float %770, float %771, float %772)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %776 = extractvalue %dx.types.CBufRet.f32 %774, 1
  %777 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %778 = call float @dx.op.dot3.f32(i32 55, float %758, float %759, float %760, float %775, float %776, float %777)  ; Dot3(ax,ay,az,bx,by,bz)
  %779 = fmul fast float %768, %763
  %780 = fmul fast float %773, %763
  %781 = fmul fast float %778, %763
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %784 = fmul fast float %779, %783
  %785 = fmul fast float %780, %783
  %786 = fmul fast float %781, %783
  %787 = fadd fast float %784, 9.765625e-04
  %788 = fadd fast float %785, 9.765625e-04
  %789 = fadd fast float %786, 9.765625e-04
  %790 = call float @dx.op.unary.f32(i32 23, float %787)  ; Log(value)
  %791 = call float @dx.op.unary.f32(i32 23, float %788)  ; Log(value)
  %792 = call float @dx.op.unary.f32(i32 23, float %789)  ; Log(value)
  %793 = fadd fast float %790, 1.000000e+01
  %794 = fadd fast float %791, 1.000000e+01
  %795 = fadd fast float %792, 1.000000e+01
  %796 = fmul fast float %793, 0x3FA99999A0000000
  %797 = fmul fast float %794, 0x3FA99999A0000000
  %798 = fmul fast float %795, 0x3FA99999A0000000
  %799 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %800 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %801 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %805 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %806 = fmul fast float %803, %799
  %807 = fmul fast float %804, %800
  %808 = fmul fast float %805, %801
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %812 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %813 = fadd fast float %806, %810
  %814 = fadd fast float %807, %811
  %815 = fadd fast float %808, %812
  %816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %813, float %814, float %815, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  br label %820

; <label>:820                                     ; preds = %761, %747, %737
  %821 = phi float [ %817, %761 ], [ %227, %737 ], [ %758, %747 ]
  %822 = phi float [ %818, %761 ], [ %235, %737 ], [ %759, %747 ]
  %823 = phi float [ %819, %761 ], [ %243, %737 ], [ %760, %747 ]
  %824 = fcmp fast oeq float %739, 0.000000e+00
  br i1 %824, label %825, label %826, !dx.controlflow.hints !54

; <label>:825                                     ; preds = %820
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %826

; <label>:826                                     ; preds = %825, %820
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %829 = fcmp fast ogt float %828, 0.000000e+00
  br i1 %829, label %830, label %896, !dx.controlflow.hints !55

; <label>:830                                     ; preds = %826
  %831 = fcmp fast oeq float %828, 2.000000e+00
  br i1 %831, label %832, label %884, !dx.controlflow.hints !56

; <label>:832                                     ; preds = %830
  %833 = fcmp fast ole float %821, 0x3F69A5C380000000
  %834 = fcmp fast ole float %822, 0x3F69A5C380000000
  %835 = fcmp fast ole float %823, 0x3F69A5C380000000
  %836 = fmul fast float %821, 0x4029D70A40000000
  %837 = fmul fast float %822, 0x4029D70A40000000
  %838 = fmul fast float %823, 0x4029D70A40000000
  %839 = call float @dx.op.unary.f32(i32 23, float %821)  ; Log(value)
  %840 = call float @dx.op.unary.f32(i32 23, float %822)  ; Log(value)
  %841 = call float @dx.op.unary.f32(i32 23, float %823)  ; Log(value)
  %842 = fmul fast float %839, 0x3FDAAAAAA0000000
  %843 = fmul fast float %840, 0x3FDAAAAAA0000000
  %844 = fmul fast float %841, 0x3FDAAAAAA0000000
  %845 = call float @dx.op.unary.f32(i32 21, float %842)  ; Exp(value)
  %846 = call float @dx.op.unary.f32(i32 21, float %843)  ; Exp(value)
  %847 = call float @dx.op.unary.f32(i32 21, float %844)  ; Exp(value)
  %848 = fmul fast float %845, 0x3FF0E147A0000000
  %849 = fmul fast float %846, 0x3FF0E147A0000000
  %850 = fmul fast float %847, 0x3FF0E147A0000000
  %851 = fadd fast float %848, 0xBFAC28F5C0000000
  %852 = fadd fast float %849, 0xBFAC28F5C0000000
  %853 = fadd fast float %850, 0xBFAC28F5C0000000
  %854 = select i1 %833, float %836, float %851
  %855 = select i1 %834, float %837, float %852
  %856 = select i1 %835, float %838, float %853
  %857 = fsub fast float 1.000000e+00, %854
  %858 = fsub fast float 1.000000e+00, %855
  %859 = fsub fast float 1.000000e+00, %856
  %860 = fcmp fast ole float %857, 0x3FA4B5DCC0000000
  %861 = fmul fast float %857, 0x3FB3D07220000000
  %862 = fsub fast float 0x3FF0E147A0000000, %854
  %863 = fmul fast float %862, 0x3FEE54EDE0000000
  %864 = call float @dx.op.unary.f32(i32 23, float %863)  ; Log(value)
  %865 = fmul fast float %864, 0x4003333340000000
  %866 = call float @dx.op.unary.f32(i32 21, float %865)  ; Exp(value)
  %867 = select i1 %860, float %861, float %866
  %868 = fcmp fast ole float %858, 0x3FA4B5DCC0000000
  %869 = fmul fast float %858, 0x3FB3D07220000000
  %870 = fsub fast float 0x3FF0E147A0000000, %855
  %871 = fmul fast float %870, 0x3FEE54EDE0000000
  %872 = call float @dx.op.unary.f32(i32 23, float %871)  ; Log(value)
  %873 = fmul fast float %872, 0x4003333340000000
  %874 = call float @dx.op.unary.f32(i32 21, float %873)  ; Exp(value)
  %875 = select i1 %868, float %869, float %874
  %876 = fcmp fast ole float %859, 0x3FA4B5DCC0000000
  %877 = fmul fast float %859, 0x3FB3D07220000000
  %878 = fsub fast float 0x3FF0E147A0000000, %856
  %879 = fmul fast float %878, 0x3FEE54EDE0000000
  %880 = call float @dx.op.unary.f32(i32 23, float %879)  ; Log(value)
  %881 = fmul fast float %880, 0x4003333340000000
  %882 = call float @dx.op.unary.f32(i32 21, float %881)  ; Exp(value)
  %883 = select i1 %876, float %877, float %882
  br label %896

; <label>:884                                     ; preds = %830
  %885 = call float @dx.op.dot3.f32(i32 55, float %821, float %822, float %823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = extractvalue %dx.types.CBufRet.f32 %827, 3
  %887 = fsub fast float %821, %885
  %888 = fsub fast float %822, %885
  %889 = fsub fast float %823, %885
  %890 = fmul fast float %886, %887
  %891 = fmul fast float %886, %888
  %892 = fmul fast float %886, %889
  %893 = fadd fast float %890, %885
  %894 = fadd fast float %891, %885
  %895 = fadd fast float %892, %885
  br label %896

; <label>:896                                     ; preds = %884, %832, %826
  %897 = phi float [ %867, %832 ], [ %893, %884 ], [ %821, %826 ]
  %898 = phi float [ %875, %832 ], [ %894, %884 ], [ %822, %826 ]
  %899 = phi float [ %883, %832 ], [ %895, %884 ], [ %823, %826 ]
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = fcmp fast une float %901, 0.000000e+00
  br i1 %902, label %903, label %1077, !dx.controlflow.hints !57

; <label>:903                                     ; preds = %896
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = fsub fast float %34, %905
  %908 = fsub fast float %35, %906
  %909 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %910 = extractvalue %dx.types.CBufRet.f32 %904, 3
  %911 = fmul fast float %907, %909
  %912 = fmul fast float %908, %910
  %913 = call float @dx.op.unary.f32(i32 6, float %901)  ; FAbs(value)
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %911, float %912, float undef, float undef, i32 0, i32 0, i32 undef, float %913)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = extractvalue %dx.types.ResRet.f32 %914, 1
  %917 = extractvalue %dx.types.ResRet.f32 %914, 2
  %918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.i32 %918, 3
  %920 = and i32 %919, 3
  %921 = icmp ne i32 %920, 0
  %922 = and i32 %919, 4
  %923 = icmp eq i32 %922, 0
  %924 = and i1 %921, %923
  br i1 %924, label %925, label %969

; <label>:925                                     ; preds = %903
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = fcmp fast oge float %916, %927
  %929 = zext i1 %928 to i32
  br i1 %928, label %930, label %969

; <label>:930                                     ; preds = %925
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %935 = fcmp fast ogt float %934, 0.000000e+00
  br i1 %935, label %936, label %944, !dx.controlflow.hints !58

; <label>:936                                     ; preds = %930
  %937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %916, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = extractvalue %dx.types.ResRet.f32 %937, 1
  %940 = extractvalue %dx.types.ResRet.f32 %937, 2
  %941 = fcmp fast ogt float %934, 1.500000e+00
  %942 = select i1 %941, float %938, float %939
  %943 = select i1 %941, float %938, float %940
  br label %962

; <label>:944                                     ; preds = %930
  %945 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %950 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %953 = fsub fast float %947, %950
  %954 = fsub fast float %948, %951
  %955 = fsub fast float %949, %952
  %956 = fmul fast float %953, %945
  %957 = fmul fast float %954, %945
  %958 = fmul fast float %955, %945
  %959 = fadd fast float %956, %950
  %960 = fadd fast float %957, %951
  %961 = fadd fast float %958, %952
  br label %962

; <label>:962                                     ; preds = %944, %936
  %963 = phi float [ %938, %936 ], [ %959, %944 ]
  %964 = phi float [ %942, %936 ], [ %960, %944 ]
  %965 = phi float [ %943, %936 ], [ %961, %944 ]
  %966 = fmul fast float %963, %932
  %967 = fmul fast float %964, %932
  %968 = fmul fast float %965, %932
  br label %969

; <label>:969                                     ; preds = %962, %925, %903
  %970 = phi float [ %966, %962 ], [ %915, %903 ], [ %915, %925 ]
  %971 = phi float [ %967, %962 ], [ %916, %903 ], [ %915, %925 ]
  %972 = phi float [ %968, %962 ], [ %917, %903 ], [ %915, %925 ]
  %973 = phi i32 [ %929, %962 ], [ 0, %903 ], [ %929, %925 ]
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %975, label %1029

; <label>:975                                     ; preds = %969
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %978 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %979 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %980 = call float @dx.op.dot3.f32(i32 55, float %970, float %971, float %972, float %977, float %978, float %979)  ; Dot3(ax,ay,az,bx,by,bz)
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %985 = call float @dx.op.dot3.f32(i32 55, float %970, float %971, float %972, float %982, float %983, float %984)  ; Dot3(ax,ay,az,bx,by,bz)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %990 = call float @dx.op.dot3.f32(i32 55, float %970, float %971, float %972, float %987, float %988, float %989)  ; Dot3(ax,ay,az,bx,by,bz)
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %993 = fmul fast float %992, %980
  %994 = fmul fast float %992, %985
  %995 = fmul fast float %992, %990
  %996 = fadd fast float %993, 9.765625e-04
  %997 = fadd fast float %994, 9.765625e-04
  %998 = fadd fast float %995, 9.765625e-04
  %999 = call float @dx.op.unary.f32(i32 23, float %996)  ; Log(value)
  %1000 = call float @dx.op.unary.f32(i32 23, float %997)  ; Log(value)
  %1001 = call float @dx.op.unary.f32(i32 23, float %998)  ; Log(value)
  %1002 = fadd fast float %999, 1.000000e+01
  %1003 = fadd fast float %1000, 1.000000e+01
  %1004 = fadd fast float %1001, 1.000000e+01
  %1005 = fmul fast float %1002, 0x3FA99999A0000000
  %1006 = fmul fast float %1003, 0x3FA99999A0000000
  %1007 = fmul fast float %1004, 0x3FA99999A0000000
  %1008 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1009 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1010 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fmul fast float %1012, %1008
  %1016 = fmul fast float %1013, %1009
  %1017 = fmul fast float %1014, %1010
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = fadd fast float %1015, %1019
  %1023 = fadd fast float %1016, %1020
  %1024 = fadd fast float %1017, %1021
  %1025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %1022, float %1023, float %1024, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  br label %1029

; <label>:1029                                    ; preds = %975, %969
  %1030 = phi float [ %970, %969 ], [ %1026, %975 ]
  %1031 = phi float [ %971, %969 ], [ %1027, %975 ]
  %1032 = phi float [ %972, %969 ], [ %1028, %975 ]
  %1033 = fcmp fast ole float %1030, 0x3FA4B5DCC0000000
  %1034 = fmul fast float %1030, 0x3FB3D07220000000
  %1035 = fadd fast float %1030, 0x3FAC28F5C0000000
  %1036 = fmul fast float %1035, 0x3FEE54EDE0000000
  %1037 = call float @dx.op.unary.f32(i32 23, float %1036)  ; Log(value)
  %1038 = fmul fast float %1037, 0x4003333340000000
  %1039 = call float @dx.op.unary.f32(i32 21, float %1038)  ; Exp(value)
  %1040 = select i1 %1033, float %1034, float %1039
  %1041 = fcmp fast ole float %1031, 0x3FA4B5DCC0000000
  %1042 = fmul fast float %1031, 0x3FB3D07220000000
  %1043 = fadd fast float %1031, 0x3FAC28F5C0000000
  %1044 = fmul fast float %1043, 0x3FEE54EDE0000000
  %1045 = call float @dx.op.unary.f32(i32 23, float %1044)  ; Log(value)
  %1046 = fmul fast float %1045, 0x4003333340000000
  %1047 = call float @dx.op.unary.f32(i32 21, float %1046)  ; Exp(value)
  %1048 = select i1 %1041, float %1042, float %1047
  %1049 = fcmp fast ole float %1032, 0x3FA4B5DCC0000000
  %1050 = fmul fast float %1032, 0x3FB3D07220000000
  %1051 = fadd fast float %1032, 0x3FAC28F5C0000000
  %1052 = fmul fast float %1051, 0x3FEE54EDE0000000
  %1053 = call float @dx.op.unary.f32(i32 23, float %1052)  ; Log(value)
  %1054 = fmul fast float %1053, 0x4003333340000000
  %1055 = call float @dx.op.unary.f32(i32 21, float %1054)  ; Exp(value)
  %1056 = select i1 %1049, float %1050, float %1055
  %1057 = fcmp fast olt float %901, 0.000000e+00
  br i1 %1057, label %1058, label %1070

; <label>:1058                                    ; preds = %1029
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1040, float %1048, float %1056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = fsub fast float %1063, %1060
  %1065 = fmul fast float %1064, %1061
  %1066 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1067 = fsub fast float 1.000000e+00, %1062
  %1068 = fmul fast float %1066, %1067
  %1069 = fadd fast float %1068, %1062
  br label %1070

; <label>:1070                                    ; preds = %1058, %1029
  %1071 = phi float [ %1069, %1058 ], [ %1040, %1029 ]
  %1072 = phi float [ %1069, %1058 ], [ %1048, %1029 ]
  %1073 = phi float [ %1069, %1058 ], [ %1056, %1029 ]
  %1074 = fmul fast float %1071, %897
  %1075 = fmul fast float %1072, %898
  %1076 = fmul fast float %1073, %899
  br label %1077

; <label>:1077                                    ; preds = %1070, %896
  %1078 = phi float [ %1074, %1070 ], [ %897, %896 ]
  %1079 = phi float [ %1075, %1070 ], [ %898, %896 ]
  %1080 = phi float [ %1076, %1070 ], [ %899, %896 ]
  %1081 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %1082 = fcmp fast ogt float %1081, 0.000000e+00
  br i1 %1082, label %1083, label %1124, !dx.controlflow.hints !59

; <label>:1083                                    ; preds = %1077
  %1084 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %1085 = bitcast float %1084 to i32
  %1086 = and i32 %1085, 255
  %1087 = uitofp i32 %1086 to float
  %1088 = lshr i32 %1085, 8
  %1089 = and i32 %1088, 255
  %1090 = uitofp i32 %1089 to float
  %1091 = lshr i32 %1085, 16
  %1092 = and i32 %1091, 255
  %1093 = uitofp i32 %1092 to float
  %1094 = fmul fast float %1093, 0x3F70101020000000
  %1095 = lshr i32 %1085, 24
  %1096 = uitofp i32 %1095 to float
  %1097 = fmul fast float %1096, 0x3F70101020000000
  %1098 = fadd fast float %1093, %1087
  %1099 = fmul fast float %1098, 0x3F70101020000000
  %1100 = fadd fast float %1090, %1096
  %1101 = fmul fast float %1100, 0x3F70101020000000
  %1102 = fdiv fast float %34, %1099
  %1103 = fdiv fast float %35, %1101
  %1104 = fsub fast float -0.000000e+00, %1102
  %1105 = fsub fast float -0.000000e+00, %1103
  %1106 = fcmp fast oge float %1102, %1104
  %1107 = fcmp fast oge float %1103, %1105
  %1108 = call float @dx.op.unary.f32(i32 6, float %1102)  ; FAbs(value)
  %1109 = call float @dx.op.unary.f32(i32 6, float %1103)  ; FAbs(value)
  %1110 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1109)  ; Frc(value)
  %1112 = fsub fast float -0.000000e+00, %1110
  %1113 = fsub fast float -0.000000e+00, %1111
  %1114 = select i1 %1106, float %1110, float %1112
  %1115 = select i1 %1107, float %1111, float %1113
  %1116 = fmul fast float %1099, %1114
  %1117 = fmul fast float %1115, %1101
  %1118 = fcmp fast olt float %1116, %1094
  %1119 = fcmp fast olt float %1117, %1097
  %1120 = or i1 %1118, %1119
  br i1 %1120, label %1121, label %1124, !dx.controlflow.hints !60

; <label>:1121                                    ; preds = %1083
  %1122 = fsub fast float 1.000000e+00, %1081
  %1123 = fmul fast float %1122, %739
  br label %1124

; <label>:1124                                    ; preds = %1121, %1083, %1077
  %1125 = phi float [ %1123, %1121 ], [ %739, %1083 ], [ %739, %1077 ]
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1128 = fcmp fast ogt float %1127, 0.000000e+00
  br i1 %1128, label %1129, label %1212, !dx.controlflow.hints !61

; <label>:1129                                    ; preds = %1124
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1132 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1135 = fmul fast float %1134, 1.000000e+01
  %1136 = call float @dx.op.unary.f32(i32 27, float %1135)  ; Round_ni(value)
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1140 = fmul fast float %1138, %34
  %1141 = fmul fast float %1139, %35
  %1142 = call float @dx.op.unary.f32(i32 27, float %1140)  ; Round_ni(value)
  %1143 = call float @dx.op.unary.f32(i32 27, float %1141)  ; Round_ni(value)
  %1144 = fmul fast float %1136, 0x4002B851E0000000
  %1145 = call float @dx.op.unary.f32(i32 22, float %1144)  ; Frc(value)
  %1146 = fadd fast float %1145, 0x3FB99999A0000000
  %1147 = fadd fast float %1146, %1142
  %1148 = fadd fast float %1146, %1143
  %1149 = fmul fast float %1147, 0x3FE1BEDF00000000
  %1150 = call float @dx.op.unary.f32(i32 22, float %1149)  ; Frc(value)
  %1151 = fmul fast float %1147, %1150
  %1152 = fadd fast float %1151, %1148
  %1153 = fmul fast float %1148, 0x3FD3BEBE20000000
  %1154 = call float @dx.op.unary.f32(i32 22, float %1153)  ; Frc(value)
  %1155 = fmul fast float %1148, %1154
  %1156 = fadd fast float %1155, %1147
  %1157 = fmul fast float %1152, %1156
  %1158 = call float @dx.op.unary.f32(i32 22, float %1157)  ; Frc(value)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1137, 3
  %1160 = bitcast float %1159 to i32
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1162, 0x3F70101020000000
  %1164 = fmul fast float %1163, %1131
  %1165 = fcmp fast olt float %1158, %1164
  br i1 %1165, label %1166, label %1173, !dx.controlflow.hints !62

; <label>:1166                                    ; preds = %1129
  %1167 = fmul fast float %1158, 0x4057091680000000
  %1168 = call float @dx.op.unary.f32(i32 22, float %1167)  ; Frc(value)
  %1169 = fmul fast float %1168, %1078
  %1170 = fmul fast float %1168, %1080
  %1171 = fsub fast float 1.000000e+00, %1168
  %1172 = fmul fast float %1171, %1079
  br label %1173

; <label>:1173                                    ; preds = %1166, %1129
  %1174 = phi float [ %1169, %1166 ], [ %1078, %1129 ]
  %1175 = phi float [ %1172, %1166 ], [ %1079, %1129 ]
  %1176 = phi float [ %1170, %1166 ], [ %1080, %1129 ]
  %1177 = fmul fast float %1158, 0x4028B0A3E0000000
  %1178 = call float @dx.op.unary.f32(i32 22, float %1177)  ; Frc(value)
  %1179 = fmul fast float %1163, %1132
  %1180 = fcmp fast olt float %1178, %1179
  br i1 %1180, label %1181, label %1200, !dx.controlflow.hints !63

; <label>:1181                                    ; preds = %1173
  %1182 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1183 = fmul fast float %1182, %34
  %1184 = call float @dx.op.unary.f32(i32 27, float %1183)  ; Round_ni(value)
  %1185 = fmul fast float %1184, 0x3FD5555560000000
  %1186 = call float @dx.op.unary.f32(i32 22, float %1185)  ; Frc(value)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1188 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1189 = fcmp fast olt float %1186, 0x3FD51EB860000000
  br i1 %1189, label %1193, label %1190, !dx.controlflow.hints !64

; <label>:1190                                    ; preds = %1181
  %1191 = fcmp fast olt float %1186, 0x3FE51EB860000000
  br i1 %1191, label %1193, label %1192, !dx.controlflow.hints !65

; <label>:1192                                    ; preds = %1190
  br label %1193

; <label>:1193                                    ; preds = %1192, %1190, %1181
  %1194 = phi float [ %1187, %1192 ], [ %1188, %1181 ], [ %1187, %1190 ]
  %1195 = phi float [ %1187, %1192 ], [ %1187, %1181 ], [ %1188, %1190 ]
  %1196 = phi float [ %1188, %1192 ], [ %1187, %1181 ], [ %1187, %1190 ]
  %1197 = fmul fast float %1194, %1174
  %1198 = fmul fast float %1195, %1175
  %1199 = fmul fast float %1196, %1176
  br label %1200

; <label>:1200                                    ; preds = %1193, %1173
  %1201 = phi float [ %1197, %1193 ], [ %1174, %1173 ]
  %1202 = phi float [ %1198, %1193 ], [ %1175, %1173 ]
  %1203 = phi float [ %1199, %1193 ], [ %1176, %1173 ]
  %1204 = fmul fast float %1158, 0x40223EF9E0000000
  %1205 = call float @dx.op.unary.f32(i32 22, float %1204)  ; Frc(value)
  %1206 = fmul fast float %1163, %1127
  %1207 = fmul fast float %1205, %1205
  %1208 = fmul fast float %1207, %1206
  %1209 = fsub fast float 1.000000e+00, %1208
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = fmul fast float %1210, %1125
  br label %1212

; <label>:1212                                    ; preds = %1200, %1124
  %1213 = phi float [ %1201, %1200 ], [ %1078, %1124 ]
  %1214 = phi float [ %1202, %1200 ], [ %1079, %1124 ]
  %1215 = phi float [ %1203, %1200 ], [ %1080, %1124 ]
  %1216 = phi float [ %1211, %1200 ], [ %1125, %1124 ]
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.CBufRet.f32 %1225, 2
  %1229 = fmul fast float %1218, %1213
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1219, float %1214, float %1229)  ; FMad(a,b,c)
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1215, float %1230)  ; FMad(a,b,c)
  %1232 = fmul fast float %1222, %1213
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %1223, float %1214, float %1232)  ; FMad(a,b,c)
  %1234 = call float @dx.op.tertiary.f32(i32 46, float %1224, float %1215, float %1233)  ; FMad(a,b,c)
  %1235 = fmul fast float %1226, %1213
  %1236 = call float @dx.op.tertiary.f32(i32 46, float %1227, float %1214, float %1235)  ; FMad(a,b,c)
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1228, float %1215, float %1236)  ; FMad(a,b,c)
  br i1 %746, label %1238, label %1545, !dx.controlflow.hints !66

; <label>:1238                                    ; preds = %1212
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 0
  %1241 = bitcast float %1240 to i32
  %1242 = and i32 %1241, 128
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1258, label %1244

; <label>:1244                                    ; preds = %1238
  %1245 = call float @dx.op.unary.f32(i32 24, float %1231)  ; Sqrt(value)
  %1246 = call float @dx.op.unary.f32(i32 24, float %1234)  ; Sqrt(value)
  %1247 = call float @dx.op.unary.f32(i32 24, float %1237)  ; Sqrt(value)
  %1248 = fmul fast float %1245, 9.687500e-01
  %1249 = fmul fast float %1246, 9.687500e-01
  %1250 = fmul fast float %1247, 9.687500e-01
  %1251 = fadd fast float %1248, 1.562500e-02
  %1252 = fadd fast float %1249, 1.562500e-02
  %1253 = fadd fast float %1250, 1.562500e-02
  %1254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %1251, float %1252, float %1253, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  br label %1545

; <label>:1258                                    ; preds = %1238
  %1259 = and i32 %1241, 127
  switch i32 %1259, label %1545 [
    i32 1, label %1260
    i32 2, label %1260
    i32 0, label %1260
    i32 3, label %1290
    i32 4, label %1411
  ]

; <label>:1260                                    ; preds = %1258, %1258, %1258
  %1261 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1262 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1263 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1264 = call float @dx.op.unary.f32(i32 23, float %1261)  ; Log(value)
  %1265 = call float @dx.op.unary.f32(i32 23, float %1262)  ; Log(value)
  %1266 = call float @dx.op.unary.f32(i32 23, float %1263)  ; Log(value)
  %1267 = fmul fast float %1264, 0x3FDAAAAAA0000000
  %1268 = fmul fast float %1265, 0x3FDAAAAAA0000000
  %1269 = fmul fast float %1266, 0x3FDAAAAAA0000000
  %1270 = call float @dx.op.unary.f32(i32 21, float %1267)  ; Exp(value)
  %1271 = call float @dx.op.unary.f32(i32 21, float %1268)  ; Exp(value)
  %1272 = call float @dx.op.unary.f32(i32 21, float %1269)  ; Exp(value)
  %1273 = fmul fast float %1270, 0x3FF0E147A0000000
  %1274 = fmul fast float %1271, 0x3FF0E147A0000000
  %1275 = fmul fast float %1272, 0x3FF0E147A0000000
  %1276 = fadd fast float %1273, 0xBFAC28F5C0000000
  %1277 = fadd fast float %1274, 0xBFAC28F5C0000000
  %1278 = fadd fast float %1275, 0xBFAC28F5C0000000
  %1279 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1280 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1281 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1283 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1284 = fmul fast float %1282, %1279
  %1285 = fmul fast float %1282, %1280
  %1286 = fmul fast float %1282, %1281
  %1287 = fadd fast float %1284, %1283
  %1288 = fadd fast float %1285, %1283
  %1289 = fadd fast float %1286, %1283
  br label %1545

; <label>:1290                                    ; preds = %1258
  %1291 = fmul fast float %1231, 0x4163D57C00000000
  %1292 = fmul fast float %1234, 0x4163D57C00000000
  %1293 = fmul fast float %1237, 0x4163D57C00000000
  %1294 = fadd fast float %1291, 9.999980e+05
  %1295 = fadd fast float %1292, 9.999980e+05
  %1296 = fadd fast float %1293, 9.999980e+05
  %1297 = fmul fast float %1294, %1231
  %1298 = fmul fast float %1295, %1234
  %1299 = fmul fast float %1296, %1237
  %1300 = fadd fast float %1297, 0xC0AFE17A60000000
  %1301 = fadd fast float %1298, 0xC0AFE17A60000000
  %1302 = fadd fast float %1299, 0xC0AFE17A60000000
  %1303 = fmul fast float %1300, %1231
  %1304 = fmul fast float %1301, %1234
  %1305 = fmul fast float %1302, %1237
  %1306 = fmul fast float %1231, 0x40F753C340000000
  %1307 = fmul fast float %1234, 0x40F753C340000000
  %1308 = fmul fast float %1237, 0x40F753C340000000
  %1309 = fsub fast float 9.999990e+06, %1306
  %1310 = fsub fast float 9.999990e+06, %1307
  %1311 = fsub fast float 9.999990e+06, %1308
  %1312 = fmul fast float %1309, %1231
  %1313 = fmul fast float %1310, %1234
  %1314 = fmul fast float %1311, %1237
  %1315 = fadd fast float %1312, 0x4136D1DD80000000
  %1316 = fadd fast float %1313, 0x4136D1DD80000000
  %1317 = fadd fast float %1314, 0x4136D1DD80000000
  %1318 = fmul fast float %1315, %1231
  %1319 = fmul fast float %1316, %1234
  %1320 = fmul fast float %1317, %1237
  %1321 = fadd fast float %1318, 1.000000e+00
  %1322 = fadd fast float %1319, 1.000000e+00
  %1323 = fadd fast float %1320, 1.000000e+00
  %1324 = fdiv fast float %1303, %1321
  %1325 = fdiv fast float %1304, %1322
  %1326 = fdiv fast float %1305, %1323
  %1327 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1328 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1329 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1331 = fmul fast float %1327, 0x3FE413A920000000
  %1332 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1328, float %1331)  ; FMad(a,b,c)
  %1333 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1329, float %1332)  ; FMad(a,b,c)
  %1334 = fmul fast float %1327, 0x3FB1B089A0000000
  %1335 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1328, float %1334)  ; FMad(a,b,c)
  %1336 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1329, float %1335)  ; FMad(a,b,c)
  %1337 = fmul fast float %1327, 0x3F90CB2960000000
  %1338 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1328, float %1337)  ; FMad(a,b,c)
  %1339 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1329, float %1338)  ; FMad(a,b,c)
  %1340 = fmul fast float %1333, %1330
  %1341 = fmul fast float %1336, %1330
  %1342 = fmul fast float %1339, %1330
  %1343 = fmul fast float %1340, 0x3F847AE140000000
  %1344 = fmul fast float %1341, 0x3F847AE140000000
  %1345 = fmul fast float %1342, 0x3F847AE140000000
  %1346 = fmul fast float %1340, 0x40B4D2F520000000
  %1347 = fmul fast float %1341, 0x40B4D2F520000000
  %1348 = fmul fast float %1342, 0x40B4D2F520000000
  %1349 = fadd fast float %1346, 0x41869ECF20000000
  %1350 = fadd fast float %1347, 0x41869ECF20000000
  %1351 = fadd fast float %1348, 0x41869ECF20000000
  %1352 = fmul fast float %1349, %1343
  %1353 = fmul fast float %1350, %1344
  %1354 = fmul fast float %1351, %1345
  %1355 = fadd fast float %1352, 0x417BB79C60000000
  %1356 = fadd fast float %1353, 0x417BB79C60000000
  %1357 = fadd fast float %1354, 0x417BB79C60000000
  %1358 = fmul fast float %1355, %1343
  %1359 = fmul fast float %1356, %1344
  %1360 = fmul fast float %1357, %1345
  %1361 = fadd fast float %1358, 0x41218DE180000000
  %1362 = fadd fast float %1359, 0x41218DE180000000
  %1363 = fadd fast float %1360, 0x41218DE180000000
  %1364 = fmul fast float %1361, %1343
  %1365 = fmul fast float %1362, %1344
  %1366 = fmul fast float %1363, %1345
  %1367 = fadd fast float %1364, 0x4077F174E0000000
  %1368 = fadd fast float %1365, 0x4077F174E0000000
  %1369 = fadd fast float %1366, 0x4077F174E0000000
  %1370 = fmul fast float %1367, %1343
  %1371 = fmul fast float %1368, %1344
  %1372 = fmul fast float %1369, %1345
  %1373 = fadd fast float %1370, 0x3F3FF79B80000000
  %1374 = fadd fast float %1371, 0x3F3FF79B80000000
  %1375 = fadd fast float %1372, 0x3F3FF79B80000000
  %1376 = fmul fast float %1340, 0x412442D320000000
  %1377 = fmul fast float %1341, 0x412442D320000000
  %1378 = fmul fast float %1342, 0x412442D320000000
  %1379 = fadd fast float %1376, 0x419385D5C0000000
  %1380 = fadd fast float %1377, 0x419385D5C0000000
  %1381 = fadd fast float %1378, 0x419385D5C0000000
  %1382 = fmul fast float %1379, %1343
  %1383 = fmul fast float %1380, %1344
  %1384 = fmul fast float %1381, %1345
  %1385 = fadd fast float %1382, 4.182885e+06
  %1386 = fadd fast float %1383, 4.182885e+06
  %1387 = fadd fast float %1384, 4.182885e+06
  %1388 = fmul fast float %1385, %1343
  %1389 = fmul fast float %1386, %1344
  %1390 = fmul fast float %1387, %1345
  %1391 = fadd fast float %1388, 0x40C4D633C0000000
  %1392 = fadd fast float %1389, 0x40C4D633C0000000
  %1393 = fadd fast float %1390, 0x40C4D633C0000000
  %1394 = fmul fast float %1391, %1343
  %1395 = fmul fast float %1392, %1344
  %1396 = fmul fast float %1393, %1345
  %1397 = fadd fast float %1394, 1.000000e+00
  %1398 = fadd fast float %1395, 1.000000e+00
  %1399 = fadd fast float %1396, 1.000000e+00
  %1400 = fdiv fast float %1373, %1397
  %1401 = fdiv fast float %1374, %1398
  %1402 = fdiv fast float %1375, %1399
  %1403 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1404 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1405 = fmul fast float %1403, %1400
  %1406 = fmul fast float %1403, %1401
  %1407 = fmul fast float %1403, %1402
  %1408 = fadd fast float %1405, %1404
  %1409 = fadd fast float %1406, %1404
  %1410 = fadd fast float %1407, %1404
  br label %1545

; <label>:1411                                    ; preds = %1258
  %1412 = fmul fast float %1231, 0x4163D57C00000000
  %1413 = fmul fast float %1234, 0x4163D57C00000000
  %1414 = fmul fast float %1237, 0x4163D57C00000000
  %1415 = fadd fast float %1412, 9.999980e+05
  %1416 = fadd fast float %1413, 9.999980e+05
  %1417 = fadd fast float %1414, 9.999980e+05
  %1418 = fmul fast float %1415, %1231
  %1419 = fmul fast float %1416, %1234
  %1420 = fmul fast float %1417, %1237
  %1421 = fadd fast float %1418, 0xC0AFE17A60000000
  %1422 = fadd fast float %1419, 0xC0AFE17A60000000
  %1423 = fadd fast float %1420, 0xC0AFE17A60000000
  %1424 = fmul fast float %1421, %1231
  %1425 = fmul fast float %1422, %1234
  %1426 = fmul fast float %1423, %1237
  %1427 = fmul fast float %1231, 0x40F753C340000000
  %1428 = fmul fast float %1234, 0x40F753C340000000
  %1429 = fmul fast float %1237, 0x40F753C340000000
  %1430 = fsub fast float 9.999990e+06, %1427
  %1431 = fsub fast float 9.999990e+06, %1428
  %1432 = fsub fast float 9.999990e+06, %1429
  %1433 = fmul fast float %1430, %1231
  %1434 = fmul fast float %1431, %1234
  %1435 = fmul fast float %1432, %1237
  %1436 = fadd fast float %1433, 0x4136D1DD80000000
  %1437 = fadd fast float %1434, 0x4136D1DD80000000
  %1438 = fadd fast float %1435, 0x4136D1DD80000000
  %1439 = fmul fast float %1436, %1231
  %1440 = fmul fast float %1437, %1234
  %1441 = fmul fast float %1438, %1237
  %1442 = fadd fast float %1439, 1.000000e+00
  %1443 = fadd fast float %1440, 1.000000e+00
  %1444 = fadd fast float %1441, 1.000000e+00
  %1445 = fdiv fast float %1424, %1442
  %1446 = fdiv fast float %1425, %1443
  %1447 = fdiv fast float %1426, %1444
  %1448 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1449 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1450 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1239, 1
  %1452 = fmul fast float %1448, 0x3FEA519BC0000000
  %1453 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1449, float %1452)  ; FMad(a,b,c)
  %1454 = fmul fast float %1448, 0x3FA0FED480000000
  %1455 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1449, float %1454)  ; FMad(a,b,c)
  %1456 = fmul fast float %1448, 0x3F917E1C00000000
  %1457 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1449, float %1456)  ; FMad(a,b,c)
  %1458 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1450, float %1457)  ; FMad(a,b,c)
  %1459 = call float @dx.op.binary.f32(i32 35, float %1448, float %1449)  ; FMax(a,b)
  %1460 = call float @dx.op.binary.f32(i32 35, float %1459, float %1450)  ; FMax(a,b)
  %1461 = fadd fast float %1460, -1.000000e+00
  %1462 = fmul fast float %1461, 2.500000e-01
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = fsub fast float 1.000000e+00, %1463
  %1465 = fmul fast float %1464, %1453
  %1466 = fmul fast float %1464, %1455
  %1467 = fmul fast float %1464, %1458
  %1468 = fmul fast float %1463, %1448
  %1469 = fmul fast float %1463, %1449
  %1470 = fmul fast float %1463, %1450
  %1471 = fadd fast float %1465, %1468
  %1472 = fadd fast float %1466, %1469
  %1473 = fadd fast float %1467, %1470
  %1474 = fmul fast float %1471, %1451
  %1475 = fmul fast float %1472, %1451
  %1476 = fmul fast float %1473, %1451
  %1477 = fmul fast float %1474, 0x3F847AE140000000
  %1478 = fmul fast float %1475, 0x3F847AE140000000
  %1479 = fmul fast float %1476, 0x3F847AE140000000
  %1480 = fmul fast float %1474, 0x40B4D2F520000000
  %1481 = fmul fast float %1475, 0x40B4D2F520000000
  %1482 = fmul fast float %1476, 0x40B4D2F520000000
  %1483 = fadd fast float %1480, 0x41869ECF20000000
  %1484 = fadd fast float %1481, 0x41869ECF20000000
  %1485 = fadd fast float %1482, 0x41869ECF20000000
  %1486 = fmul fast float %1483, %1477
  %1487 = fmul fast float %1484, %1478
  %1488 = fmul fast float %1485, %1479
  %1489 = fadd fast float %1486, 0x417BB79C60000000
  %1490 = fadd fast float %1487, 0x417BB79C60000000
  %1491 = fadd fast float %1488, 0x417BB79C60000000
  %1492 = fmul fast float %1489, %1477
  %1493 = fmul fast float %1490, %1478
  %1494 = fmul fast float %1491, %1479
  %1495 = fadd fast float %1492, 0x41218DE180000000
  %1496 = fadd fast float %1493, 0x41218DE180000000
  %1497 = fadd fast float %1494, 0x41218DE180000000
  %1498 = fmul fast float %1495, %1477
  %1499 = fmul fast float %1496, %1478
  %1500 = fmul fast float %1497, %1479
  %1501 = fadd fast float %1498, 0x4077F174E0000000
  %1502 = fadd fast float %1499, 0x4077F174E0000000
  %1503 = fadd fast float %1500, 0x4077F174E0000000
  %1504 = fmul fast float %1501, %1477
  %1505 = fmul fast float %1502, %1478
  %1506 = fmul fast float %1503, %1479
  %1507 = fadd fast float %1504, 0x3F3FF79B80000000
  %1508 = fadd fast float %1505, 0x3F3FF79B80000000
  %1509 = fadd fast float %1506, 0x3F3FF79B80000000
  %1510 = fmul fast float %1474, 0x412442D320000000
  %1511 = fmul fast float %1475, 0x412442D320000000
  %1512 = fmul fast float %1476, 0x412442D320000000
  %1513 = fadd fast float %1510, 0x419385D5C0000000
  %1514 = fadd fast float %1511, 0x419385D5C0000000
  %1515 = fadd fast float %1512, 0x419385D5C0000000
  %1516 = fmul fast float %1513, %1477
  %1517 = fmul fast float %1514, %1478
  %1518 = fmul fast float %1515, %1479
  %1519 = fadd fast float %1516, 4.182885e+06
  %1520 = fadd fast float %1517, 4.182885e+06
  %1521 = fadd fast float %1518, 4.182885e+06
  %1522 = fmul fast float %1519, %1477
  %1523 = fmul fast float %1520, %1478
  %1524 = fmul fast float %1521, %1479
  %1525 = fadd fast float %1522, 0x40C4D633C0000000
  %1526 = fadd fast float %1523, 0x40C4D633C0000000
  %1527 = fadd fast float %1524, 0x40C4D633C0000000
  %1528 = fmul fast float %1525, %1477
  %1529 = fmul fast float %1526, %1478
  %1530 = fmul fast float %1527, %1479
  %1531 = fadd fast float %1528, 1.000000e+00
  %1532 = fadd fast float %1529, 1.000000e+00
  %1533 = fadd fast float %1530, 1.000000e+00
  %1534 = fdiv fast float %1507, %1531
  %1535 = fdiv fast float %1508, %1532
  %1536 = fdiv fast float %1509, %1533
  %1537 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1538 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1539 = fmul fast float %1537, %1534
  %1540 = fmul fast float %1537, %1535
  %1541 = fmul fast float %1537, %1536
  %1542 = fadd fast float %1539, %1538
  %1543 = fadd fast float %1540, %1538
  %1544 = fadd fast float %1541, %1538
  br label %1545

; <label>:1545                                    ; preds = %1411, %1290, %1260, %1258, %1244, %1212
  %1546 = phi float [ %1231, %1212 ], [ %1255, %1244 ], [ %1231, %1258 ], [ %1542, %1411 ], [ %1408, %1290 ], [ %1287, %1260 ]
  %1547 = phi float [ %1234, %1212 ], [ %1256, %1244 ], [ %1234, %1258 ], [ %1543, %1411 ], [ %1409, %1290 ], [ %1288, %1260 ]
  %1548 = phi float [ %1237, %1212 ], [ %1257, %1244 ], [ %1237, %1258 ], [ %1544, %1411 ], [ %1410, %1290 ], [ %1289, %1260 ]
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1552 = call float @dx.op.unary.f32(i32 23, float %1216)  ; Log(value)
  %1553 = fmul fast float %1552, %1551
  %1554 = call float @dx.op.unary.f32(i32 21, float %1553)  ; Exp(value)
  %1555 = fmul fast float %1554, %1550
  %1556 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1557 = extractvalue %dx.types.CBufRet.f32 %1549, 3
  %1558 = fmul fast float %1552, %1557
  %1559 = call float @dx.op.unary.f32(i32 21, float %1558)  ; Exp(value)
  %1560 = fmul fast float %1559, %1556
  %1561 = fadd fast float %1560, %1555
  %1562 = fmul fast float %1561, %1546
  %1563 = fmul fast float %1561, %1547
  %1564 = fmul fast float %1561, %1548
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1562)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1564)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1561)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!dx.viewIdState = !{!26}
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !18, !23}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!21 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 304, null}
!22 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!23 = !{!24, !25}
!24 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!26 = !{[22 x i32] [i32 20, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!27 = !{void ()* @ps_main, !"ps_main", !28, !4, !48}
!28 = !{!29, !46, null}
!29 = !{!30, !33, !35, !36, !38, !40, !42, !44}
!30 = !{i32 0, !"SV_Position", i8 9, i8 3, !31, i8 4, i32 1, i8 4, i32 0, i8 0, !32}
!31 = !{i32 0}
!32 = !{i32 3, i32 3}
!33 = !{i32 1, !"COLOR", i8 9, i8 0, !31, i8 2, i32 1, i8 4, i32 1, i8 0, !34}
!34 = !{i32 3, i32 15}
!35 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !31, i8 2, i32 1, i8 2, i32 2, i8 0, !32}
!36 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 2, i8 2, !32}
!37 = !{i32 2}
!38 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 3, i8 0, !32}
!39 = !{i32 3}
!40 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 3, i8 2, !32}
!41 = !{i32 4}
!42 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 2, i32 4, i8 0, !32}
!43 = !{i32 5}
!44 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 2, i32 4, i8 2, !32}
!45 = !{i32 6}
!46 = !{!47}
!47 = !{i32 0, !"SV_Target", i8 9, i8 16, !31, i8 0, i32 1, i8 4, i32 0, i8 0, !34}
!48 = !{i32 0, i64 16}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}

