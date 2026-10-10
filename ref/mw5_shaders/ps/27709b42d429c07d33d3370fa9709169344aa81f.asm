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
; shader hash: 75c948779e6b50f4e2b640d0ff38c943
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
;   [240 x i8] (type annotation not present)
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %148 = fmul fast float %147, %33
  %149 = fmul fast float %148, %146
  %150 = fcmp fast ole float %30, 0x3FA4B5DCC0000000
  %151 = fmul fast float %30, 0x3FB3D07220000000
  %152 = fadd fast float %30, 0x3FAC28F5C0000000
  %153 = fmul fast float %152, 0x3FEE54EDE0000000
  %154 = call float @dx.op.unary.f32(i32 23, float %153)  ; Log(value)
  %155 = fmul fast float %154, 0x4003333340000000
  %156 = call float @dx.op.unary.f32(i32 21, float %155)  ; Exp(value)
  %157 = select i1 %150, float %151, float %156
  %158 = fcmp fast ole float %31, 0x3FA4B5DCC0000000
  %159 = fmul fast float %31, 0x3FB3D07220000000
  %160 = fadd fast float %31, 0x3FAC28F5C0000000
  %161 = fmul fast float %160, 0x3FEE54EDE0000000
  %162 = call float @dx.op.unary.f32(i32 23, float %161)  ; Log(value)
  %163 = fmul fast float %162, 0x4003333340000000
  %164 = call float @dx.op.unary.f32(i32 21, float %163)  ; Exp(value)
  %165 = select i1 %158, float %159, float %164
  %166 = fcmp fast ole float %32, 0x3FA4B5DCC0000000
  %167 = fmul fast float %32, 0x3FB3D07220000000
  %168 = fadd fast float %32, 0x3FAC28F5C0000000
  %169 = fmul fast float %168, 0x3FEE54EDE0000000
  %170 = call float @dx.op.unary.f32(i32 23, float %169)  ; Log(value)
  %171 = fmul fast float %170, 0x4003333340000000
  %172 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %173 = select i1 %166, float %167, float %172
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %176 = bitcast float %175 to i32
  %177 = lshr i32 %176, 4
  %178 = lshr i32 %176, 9
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %275, label %181

; <label>:181                                     ; preds = %128
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %184 = bitcast float %183 to i32
  %185 = and i32 %184, 65535
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = lshr i32 %184, 16
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %190 = bitcast float %189 to i32
  %191 = and i32 %190, 65535
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = lshr i32 %190, 16
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = and i32 %177, 1
  %196 = icmp ne i32 %195, 0
  %197 = fcmp fast ogt float %186, 0.000000e+00
  %198 = fcmp fast ogt float %188, 0.000000e+00
  %199 = and i1 %197, %198
  %200 = fcmp fast ogt float %192, 0.000000e+00
  br i1 %199, label %201, label %261

; <label>:201                                     ; preds = %181
  br i1 %200, label %202, label %210

; <label>:202                                     ; preds = %201
  %203 = fmul fast float %188, %27
  %204 = fmul fast float %186, %26
  %205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %204, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = select i1 %196, float %207, float %206
  %209 = fmul fast float %208, %192
  br label %210

; <label>:210                                     ; preds = %202, %201
  %211 = phi float [ %209, %202 ], [ 0.000000e+00, %201 ]
  %212 = fadd fast float %211, %194
  %213 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  br i1 %200, label %214, label %224

; <label>:214                                     ; preds = %210
  %215 = fmul fast float %188, %27
  %216 = fsub fast float 1.000000e+00, %26
  %217 = fmul fast float %186, %216
  %218 = fsub fast float 1.000000e+00, %217
  %219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %218, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 1
  %221 = fsub fast float 1.000000e+00, %220
  %222 = select i1 %196, float %221, float %220
  %223 = fmul fast float %222, %192
  br label %224

; <label>:224                                     ; preds = %214, %210
  %225 = phi float [ %223, %214 ], [ 0.000000e+00, %210 ]
  %226 = fadd fast float %225, %194
  %227 = call float @dx.op.unary.f32(i32 7, float %226)  ; Saturate(value)
  %228 = fmul fast float %227, %213
  br i1 %200, label %229, label %241

; <label>:229                                     ; preds = %224
  %230 = fsub fast float 1.000000e+00, %27
  %231 = fmul fast float %188, %230
  %232 = fsub fast float 1.000000e+00, %231
  %233 = fsub fast float 1.000000e+00, %26
  %234 = fmul fast float %186, %233
  %235 = fsub fast float 1.000000e+00, %234
  %236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %235, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 2
  %238 = fsub fast float 1.000000e+00, %237
  %239 = select i1 %196, float %238, float %237
  %240 = fmul fast float %239, %192
  br label %241

; <label>:241                                     ; preds = %229, %224
  %242 = phi float [ %240, %229 ], [ 0.000000e+00, %224 ]
  %243 = fadd fast float %242, %194
  %244 = call float @dx.op.unary.f32(i32 7, float %243)  ; Saturate(value)
  %245 = fmul fast float %228, %244
  br i1 %200, label %246, label %256

; <label>:246                                     ; preds = %241
  %247 = fsub fast float 1.000000e+00, %27
  %248 = fmul fast float %188, %247
  %249 = fsub fast float 1.000000e+00, %248
  %250 = fmul fast float %186, %26
  %251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %250, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 3
  %253 = fsub fast float 1.000000e+00, %252
  %254 = select i1 %196, float %253, float %252
  %255 = fmul fast float %254, %192
  br label %256

; <label>:256                                     ; preds = %246, %241
  %257 = phi float [ %255, %246 ], [ 0.000000e+00, %241 ]
  %258 = fadd fast float %257, %194
  %259 = call float @dx.op.unary.f32(i32 7, float %258)  ; Saturate(value)
  %260 = fmul fast float %245, %259
  br label %272

; <label>:261                                     ; preds = %181
  br i1 %200, label %262, label %268

; <label>:262                                     ; preds = %261
  %263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %12, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fsub fast float 1.000000e+00, %264
  %266 = select i1 %196, float %265, float %264
  %267 = fmul fast float %266, %192
  br label %268

; <label>:268                                     ; preds = %262, %261
  %269 = phi float [ %267, %262 ], [ 0.000000e+00, %261 ]
  %270 = fadd fast float %269, %194
  %271 = call float @dx.op.unary.f32(i32 7, float %270)  ; Saturate(value)
  br label %272

; <label>:272                                     ; preds = %268, %256
  %273 = phi float [ %260, %256 ], [ %271, %268 ]
  %274 = fmul fast float %273, %149
  br label %275

; <label>:275                                     ; preds = %272, %128
  %276 = phi float [ %274, %272 ], [ %149, %128 ]
  %277 = and i32 %178, 2
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %373, label %279

; <label>:279                                     ; preds = %275
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %282 = bitcast float %281 to i32
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %288 = bitcast float %287 to i32
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = and i32 %177, 2
  %294 = icmp ne i32 %293, 0
  %295 = fcmp fast ogt float %284, 0.000000e+00
  %296 = fcmp fast ogt float %286, 0.000000e+00
  %297 = and i1 %295, %296
  %298 = fcmp fast ogt float %290, 0.000000e+00
  br i1 %297, label %299, label %359

; <label>:299                                     ; preds = %279
  br i1 %298, label %300, label %308

; <label>:300                                     ; preds = %299
  %301 = fmul fast float %286, %25
  %302 = fmul fast float %284, %24
  %303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %302, float %301, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = fsub fast float 1.000000e+00, %304
  %306 = select i1 %294, float %305, float %304
  %307 = fmul fast float %306, %290
  br label %308

; <label>:308                                     ; preds = %300, %299
  %309 = phi float [ %307, %300 ], [ 0.000000e+00, %299 ]
  %310 = fadd fast float %309, %292
  %311 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  br i1 %298, label %312, label %322

; <label>:312                                     ; preds = %308
  %313 = fmul fast float %286, %25
  %314 = fsub fast float 1.000000e+00, %24
  %315 = fmul fast float %284, %314
  %316 = fsub fast float 1.000000e+00, %315
  %317 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %316, float %313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 1
  %319 = fsub fast float 1.000000e+00, %318
  %320 = select i1 %294, float %319, float %318
  %321 = fmul fast float %320, %290
  br label %322

; <label>:322                                     ; preds = %312, %308
  %323 = phi float [ %321, %312 ], [ 0.000000e+00, %308 ]
  %324 = fadd fast float %323, %292
  %325 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %326 = fmul fast float %325, %311
  br i1 %298, label %327, label %339

; <label>:327                                     ; preds = %322
  %328 = fsub fast float 1.000000e+00, %25
  %329 = fmul fast float %286, %328
  %330 = fsub fast float 1.000000e+00, %329
  %331 = fsub fast float 1.000000e+00, %24
  %332 = fmul fast float %284, %331
  %333 = fsub fast float 1.000000e+00, %332
  %334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %333, float %330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 2
  %336 = fsub fast float 1.000000e+00, %335
  %337 = select i1 %294, float %336, float %335
  %338 = fmul fast float %337, %290
  br label %339

; <label>:339                                     ; preds = %327, %322
  %340 = phi float [ %338, %327 ], [ 0.000000e+00, %322 ]
  %341 = fadd fast float %340, %292
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = fmul fast float %326, %342
  br i1 %298, label %344, label %354

; <label>:344                                     ; preds = %339
  %345 = fsub fast float 1.000000e+00, %25
  %346 = fmul fast float %286, %345
  %347 = fsub fast float 1.000000e+00, %346
  %348 = fmul fast float %284, %24
  %349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %348, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 3
  %351 = fsub fast float 1.000000e+00, %350
  %352 = select i1 %294, float %351, float %350
  %353 = fmul fast float %352, %290
  br label %354

; <label>:354                                     ; preds = %344, %339
  %355 = phi float [ %353, %344 ], [ 0.000000e+00, %339 ]
  %356 = fadd fast float %355, %292
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = fmul fast float %343, %357
  br label %370

; <label>:359                                     ; preds = %279
  br i1 %298, label %360, label %366

; <label>:360                                     ; preds = %359
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %12, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = fsub fast float 1.000000e+00, %362
  %364 = select i1 %294, float %363, float %362
  %365 = fmul fast float %364, %290
  br label %366

; <label>:366                                     ; preds = %360, %359
  %367 = phi float [ %365, %360 ], [ 0.000000e+00, %359 ]
  %368 = fadd fast float %367, %292
  %369 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  br label %370

; <label>:370                                     ; preds = %366, %354
  %371 = phi float [ %358, %354 ], [ %369, %366 ]
  %372 = fmul fast float %371, %276
  br label %373

; <label>:373                                     ; preds = %370, %275
  %374 = phi float [ %372, %370 ], [ %276, %275 ]
  %375 = and i32 %178, 4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %471, label %377

; <label>:377                                     ; preds = %373
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %380 = bitcast float %379 to i32
  %381 = and i32 %380, 65535
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %380, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %386 = bitcast float %385 to i32
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = and i32 %177, 4
  %392 = icmp ne i32 %391, 0
  %393 = fcmp fast ogt float %382, 0.000000e+00
  %394 = fcmp fast ogt float %384, 0.000000e+00
  %395 = and i1 %393, %394
  %396 = fcmp fast ogt float %388, 0.000000e+00
  br i1 %395, label %397, label %457

; <label>:397                                     ; preds = %377
  br i1 %396, label %398, label %406

; <label>:398                                     ; preds = %397
  %399 = fmul fast float %384, %23
  %400 = fmul fast float %382, %22
  %401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %400, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = fsub fast float 1.000000e+00, %402
  %404 = select i1 %392, float %403, float %402
  %405 = fmul fast float %404, %388
  br label %406

; <label>:406                                     ; preds = %398, %397
  %407 = phi float [ %405, %398 ], [ 0.000000e+00, %397 ]
  %408 = fadd fast float %407, %390
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  br i1 %396, label %410, label %420

; <label>:410                                     ; preds = %406
  %411 = fmul fast float %384, %23
  %412 = fsub fast float 1.000000e+00, %22
  %413 = fmul fast float %382, %412
  %414 = fsub fast float 1.000000e+00, %413
  %415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %414, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 1
  %417 = fsub fast float 1.000000e+00, %416
  %418 = select i1 %392, float %417, float %416
  %419 = fmul fast float %418, %388
  br label %420

; <label>:420                                     ; preds = %410, %406
  %421 = phi float [ %419, %410 ], [ 0.000000e+00, %406 ]
  %422 = fadd fast float %421, %390
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = fmul fast float %423, %409
  br i1 %396, label %425, label %437

; <label>:425                                     ; preds = %420
  %426 = fsub fast float 1.000000e+00, %23
  %427 = fmul fast float %384, %426
  %428 = fsub fast float 1.000000e+00, %427
  %429 = fsub fast float 1.000000e+00, %22
  %430 = fmul fast float %382, %429
  %431 = fsub fast float 1.000000e+00, %430
  %432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %431, float %428, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 2
  %434 = fsub fast float 1.000000e+00, %433
  %435 = select i1 %392, float %434, float %433
  %436 = fmul fast float %435, %388
  br label %437

; <label>:437                                     ; preds = %425, %420
  %438 = phi float [ %436, %425 ], [ 0.000000e+00, %420 ]
  %439 = fadd fast float %438, %390
  %440 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %441 = fmul fast float %424, %440
  br i1 %396, label %442, label %452

; <label>:442                                     ; preds = %437
  %443 = fsub fast float 1.000000e+00, %23
  %444 = fmul fast float %384, %443
  %445 = fsub fast float 1.000000e+00, %444
  %446 = fmul fast float %382, %22
  %447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %446, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 3
  %449 = fsub fast float 1.000000e+00, %448
  %450 = select i1 %392, float %449, float %448
  %451 = fmul fast float %450, %388
  br label %452

; <label>:452                                     ; preds = %442, %437
  %453 = phi float [ %451, %442 ], [ 0.000000e+00, %437 ]
  %454 = fadd fast float %453, %390
  %455 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %456 = fmul fast float %441, %455
  br label %468

; <label>:457                                     ; preds = %377
  br i1 %396, label %458, label %464

; <label>:458                                     ; preds = %457
  %459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %12, float %22, float %23, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = fsub fast float 1.000000e+00, %460
  %462 = select i1 %392, float %461, float %460
  %463 = fmul fast float %462, %388
  br label %464

; <label>:464                                     ; preds = %458, %457
  %465 = phi float [ %463, %458 ], [ 0.000000e+00, %457 ]
  %466 = fadd fast float %465, %390
  %467 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  br label %468

; <label>:468                                     ; preds = %464, %452
  %469 = phi float [ %456, %452 ], [ %467, %464 ]
  %470 = fmul fast float %469, %374
  br label %471

; <label>:471                                     ; preds = %468, %373
  %472 = phi float [ %470, %468 ], [ %374, %373 ]
  %473 = and i32 %178, 8
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %569, label %475

; <label>:475                                     ; preds = %471
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %478 = bitcast float %477 to i32
  %479 = and i32 %478, 65535
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = lshr i32 %478, 16
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %484 = bitcast float %483 to i32
  %485 = and i32 %484, 65535
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = lshr i32 %484, 16
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = and i32 %177, 8
  %490 = icmp ne i32 %489, 0
  %491 = fcmp fast ogt float %480, 0.000000e+00
  %492 = fcmp fast ogt float %482, 0.000000e+00
  %493 = and i1 %491, %492
  %494 = fcmp fast ogt float %486, 0.000000e+00
  br i1 %493, label %495, label %555

; <label>:495                                     ; preds = %475
  br i1 %494, label %496, label %504

; <label>:496                                     ; preds = %495
  %497 = fmul fast float %482, %21
  %498 = fmul fast float %480, %20
  %499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %498, float %497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = fsub fast float 1.000000e+00, %500
  %502 = select i1 %490, float %501, float %500
  %503 = fmul fast float %502, %486
  br label %504

; <label>:504                                     ; preds = %496, %495
  %505 = phi float [ %503, %496 ], [ 0.000000e+00, %495 ]
  %506 = fadd fast float %505, %488
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  br i1 %494, label %508, label %518

; <label>:508                                     ; preds = %504
  %509 = fmul fast float %482, %21
  %510 = fsub fast float 1.000000e+00, %20
  %511 = fmul fast float %480, %510
  %512 = fsub fast float 1.000000e+00, %511
  %513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %512, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 1
  %515 = fsub fast float 1.000000e+00, %514
  %516 = select i1 %490, float %515, float %514
  %517 = fmul fast float %516, %486
  br label %518

; <label>:518                                     ; preds = %508, %504
  %519 = phi float [ %517, %508 ], [ 0.000000e+00, %504 ]
  %520 = fadd fast float %519, %488
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %522 = fmul fast float %521, %507
  br i1 %494, label %523, label %535

; <label>:523                                     ; preds = %518
  %524 = fsub fast float 1.000000e+00, %21
  %525 = fmul fast float %482, %524
  %526 = fsub fast float 1.000000e+00, %525
  %527 = fsub fast float 1.000000e+00, %20
  %528 = fmul fast float %480, %527
  %529 = fsub fast float 1.000000e+00, %528
  %530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %529, float %526, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 2
  %532 = fsub fast float 1.000000e+00, %531
  %533 = select i1 %490, float %532, float %531
  %534 = fmul fast float %533, %486
  br label %535

; <label>:535                                     ; preds = %523, %518
  %536 = phi float [ %534, %523 ], [ 0.000000e+00, %518 ]
  %537 = fadd fast float %536, %488
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = fmul fast float %522, %538
  br i1 %494, label %540, label %550

; <label>:540                                     ; preds = %535
  %541 = fsub fast float 1.000000e+00, %21
  %542 = fmul fast float %482, %541
  %543 = fsub fast float 1.000000e+00, %542
  %544 = fmul fast float %480, %20
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %544, float %543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 3
  %547 = fsub fast float 1.000000e+00, %546
  %548 = select i1 %490, float %547, float %546
  %549 = fmul fast float %548, %486
  br label %550

; <label>:550                                     ; preds = %540, %535
  %551 = phi float [ %549, %540 ], [ 0.000000e+00, %535 ]
  %552 = fadd fast float %551, %488
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %539, %553
  br label %566

; <label>:555                                     ; preds = %475
  br i1 %494, label %556, label %562

; <label>:556                                     ; preds = %555
  %557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %12, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = fsub fast float 1.000000e+00, %558
  %560 = select i1 %490, float %559, float %558
  %561 = fmul fast float %560, %486
  br label %562

; <label>:562                                     ; preds = %556, %555
  %563 = phi float [ %561, %556 ], [ 0.000000e+00, %555 ]
  %564 = fadd fast float %563, %488
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  br label %566

; <label>:566                                     ; preds = %562, %550
  %567 = phi float [ %554, %550 ], [ %565, %562 ]
  %568 = fmul fast float %567, %472
  br label %569

; <label>:569                                     ; preds = %566, %471
  %570 = phi float [ %568, %566 ], [ %472, %471 ]
  %571 = and i32 %178, 16
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %667, label %573

; <label>:573                                     ; preds = %569
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %576 = bitcast float %575 to i32
  %577 = and i32 %576, 65535
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %576, 16
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %582 = bitcast float %581 to i32
  %583 = and i32 %582, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %582, 16
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = and i32 %177, 16
  %588 = icmp ne i32 %587, 0
  %589 = fcmp fast ogt float %578, 0.000000e+00
  %590 = fcmp fast ogt float %580, 0.000000e+00
  %591 = and i1 %589, %590
  %592 = fcmp fast ogt float %584, 0.000000e+00
  br i1 %591, label %593, label %653

; <label>:593                                     ; preds = %573
  br i1 %592, label %594, label %602

; <label>:594                                     ; preds = %593
  %595 = fmul fast float %580, %19
  %596 = fmul fast float %578, %18
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %596, float %595, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = fsub fast float 1.000000e+00, %598
  %600 = select i1 %588, float %599, float %598
  %601 = fmul fast float %600, %584
  br label %602

; <label>:602                                     ; preds = %594, %593
  %603 = phi float [ %601, %594 ], [ 0.000000e+00, %593 ]
  %604 = fadd fast float %603, %586
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  br i1 %592, label %606, label %616

; <label>:606                                     ; preds = %602
  %607 = fmul fast float %580, %19
  %608 = fsub fast float 1.000000e+00, %18
  %609 = fmul fast float %578, %608
  %610 = fsub fast float 1.000000e+00, %609
  %611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %610, float %607, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 1
  %613 = fsub fast float 1.000000e+00, %612
  %614 = select i1 %588, float %613, float %612
  %615 = fmul fast float %614, %584
  br label %616

; <label>:616                                     ; preds = %606, %602
  %617 = phi float [ %615, %606 ], [ 0.000000e+00, %602 ]
  %618 = fadd fast float %617, %586
  %619 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %620 = fmul fast float %619, %605
  br i1 %592, label %621, label %633

; <label>:621                                     ; preds = %616
  %622 = fsub fast float 1.000000e+00, %19
  %623 = fmul fast float %580, %622
  %624 = fsub fast float 1.000000e+00, %623
  %625 = fsub fast float 1.000000e+00, %18
  %626 = fmul fast float %578, %625
  %627 = fsub fast float 1.000000e+00, %626
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %627, float %624, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 2
  %630 = fsub fast float 1.000000e+00, %629
  %631 = select i1 %588, float %630, float %629
  %632 = fmul fast float %631, %584
  br label %633

; <label>:633                                     ; preds = %621, %616
  %634 = phi float [ %632, %621 ], [ 0.000000e+00, %616 ]
  %635 = fadd fast float %634, %586
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %637 = fmul fast float %620, %636
  br i1 %592, label %638, label %648

; <label>:638                                     ; preds = %633
  %639 = fsub fast float 1.000000e+00, %19
  %640 = fmul fast float %580, %639
  %641 = fsub fast float 1.000000e+00, %640
  %642 = fmul fast float %578, %18
  %643 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %642, float %641, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 3
  %645 = fsub fast float 1.000000e+00, %644
  %646 = select i1 %588, float %645, float %644
  %647 = fmul fast float %646, %584
  br label %648

; <label>:648                                     ; preds = %638, %633
  %649 = phi float [ %647, %638 ], [ 0.000000e+00, %633 ]
  %650 = fadd fast float %649, %586
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %652 = fmul fast float %637, %651
  br label %664

; <label>:653                                     ; preds = %573
  br i1 %592, label %654, label %660

; <label>:654                                     ; preds = %653
  %655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %18, float %19, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = fsub fast float 1.000000e+00, %656
  %658 = select i1 %588, float %657, float %656
  %659 = fmul fast float %658, %584
  br label %660

; <label>:660                                     ; preds = %654, %653
  %661 = phi float [ %659, %654 ], [ 0.000000e+00, %653 ]
  %662 = fadd fast float %661, %586
  %663 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  br label %664

; <label>:664                                     ; preds = %660, %648
  %665 = phi float [ %652, %648 ], [ %663, %660 ]
  %666 = fmul fast float %665, %570
  br label %667

; <label>:667                                     ; preds = %664, %569
  %668 = phi float [ %666, %664 ], [ %570, %569 ]
  %669 = call float @dx.op.binary.f32(i32 35, float %668, float 0.000000e+00)  ; FMax(a,b)
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %672 = bitcast float %671 to i32
  %673 = and i32 %672, 1
  %674 = icmp eq i32 %673, 0
  %675 = and i32 %672, 4
  %676 = icmp eq i32 %675, 0
  br i1 %674, label %750, label %677, !dx.controlflow.hints !52

; <label>:677                                     ; preds = %667
  %678 = and i32 %672, 2
  %679 = icmp eq i32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %681 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %682 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %683 = fmul fast float %680, %157
  %684 = fmul fast float %681, %165
  %685 = fmul fast float %682, %173
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = fmul fast float %687, %683
  %689 = fmul fast float %687, %684
  %690 = fmul fast float %687, %685
  br i1 %679, label %750, label %691, !dx.controlflow.hints !53

; <label>:691                                     ; preds = %677
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 0
  %696 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %697 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %698 = call float @dx.op.dot3.f32(i32 55, float %688, float %689, float %690, float %695, float %696, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 0
  %701 = extractvalue %dx.types.CBufRet.f32 %699, 1
  %702 = extractvalue %dx.types.CBufRet.f32 %699, 2
  %703 = call float @dx.op.dot3.f32(i32 55, float %688, float %689, float %690, float %700, float %701, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %708 = call float @dx.op.dot3.f32(i32 55, float %688, float %689, float %690, float %705, float %706, float %707)  ; Dot3(ax,ay,az,bx,by,bz)
  %709 = fmul fast float %698, %693
  %710 = fmul fast float %703, %693
  %711 = fmul fast float %708, %693
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 2
  %714 = fmul fast float %709, %713
  %715 = fmul fast float %710, %713
  %716 = fmul fast float %711, %713
  %717 = fadd fast float %714, 9.765625e-04
  %718 = fadd fast float %715, 9.765625e-04
  %719 = fadd fast float %716, 9.765625e-04
  %720 = call float @dx.op.unary.f32(i32 23, float %717)  ; Log(value)
  %721 = call float @dx.op.unary.f32(i32 23, float %718)  ; Log(value)
  %722 = call float @dx.op.unary.f32(i32 23, float %719)  ; Log(value)
  %723 = fadd fast float %720, 1.000000e+01
  %724 = fadd fast float %721, 1.000000e+01
  %725 = fadd fast float %722, 1.000000e+01
  %726 = fmul fast float %723, 0x3FA99999A0000000
  %727 = fmul fast float %724, 0x3FA99999A0000000
  %728 = fmul fast float %725, 0x3FA99999A0000000
  %729 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %730 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 0
  %734 = extractvalue %dx.types.CBufRet.f32 %732, 1
  %735 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %736 = fmul fast float %733, %729
  %737 = fmul fast float %734, %730
  %738 = fmul fast float %735, %731
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %742 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %743 = fadd fast float %736, %740
  %744 = fadd fast float %737, %741
  %745 = fadd fast float %738, %742
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %743, float %744, float %745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  br label %750

; <label>:750                                     ; preds = %691, %677, %667
  %751 = phi float [ %747, %691 ], [ %157, %667 ], [ %688, %677 ]
  %752 = phi float [ %748, %691 ], [ %165, %667 ], [ %689, %677 ]
  %753 = phi float [ %749, %691 ], [ %173, %667 ], [ %690, %677 ]
  %754 = fcmp fast oeq float %669, 0.000000e+00
  br i1 %754, label %755, label %756, !dx.controlflow.hints !54

; <label>:755                                     ; preds = %750
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %756

; <label>:756                                     ; preds = %755, %750
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %759 = fcmp fast ogt float %758, 0.000000e+00
  br i1 %759, label %760, label %826, !dx.controlflow.hints !55

; <label>:760                                     ; preds = %756
  %761 = fcmp fast oeq float %758, 2.000000e+00
  br i1 %761, label %762, label %814, !dx.controlflow.hints !56

; <label>:762                                     ; preds = %760
  %763 = fcmp fast ole float %751, 0x3F69A5C380000000
  %764 = fcmp fast ole float %752, 0x3F69A5C380000000
  %765 = fcmp fast ole float %753, 0x3F69A5C380000000
  %766 = fmul fast float %751, 0x4029D70A40000000
  %767 = fmul fast float %752, 0x4029D70A40000000
  %768 = fmul fast float %753, 0x4029D70A40000000
  %769 = call float @dx.op.unary.f32(i32 23, float %751)  ; Log(value)
  %770 = call float @dx.op.unary.f32(i32 23, float %752)  ; Log(value)
  %771 = call float @dx.op.unary.f32(i32 23, float %753)  ; Log(value)
  %772 = fmul fast float %769, 0x3FDAAAAAA0000000
  %773 = fmul fast float %770, 0x3FDAAAAAA0000000
  %774 = fmul fast float %771, 0x3FDAAAAAA0000000
  %775 = call float @dx.op.unary.f32(i32 21, float %772)  ; Exp(value)
  %776 = call float @dx.op.unary.f32(i32 21, float %773)  ; Exp(value)
  %777 = call float @dx.op.unary.f32(i32 21, float %774)  ; Exp(value)
  %778 = fmul fast float %775, 0x3FF0E147A0000000
  %779 = fmul fast float %776, 0x3FF0E147A0000000
  %780 = fmul fast float %777, 0x3FF0E147A0000000
  %781 = fadd fast float %778, 0xBFAC28F5C0000000
  %782 = fadd fast float %779, 0xBFAC28F5C0000000
  %783 = fadd fast float %780, 0xBFAC28F5C0000000
  %784 = select i1 %763, float %766, float %781
  %785 = select i1 %764, float %767, float %782
  %786 = select i1 %765, float %768, float %783
  %787 = fsub fast float 1.000000e+00, %784
  %788 = fsub fast float 1.000000e+00, %785
  %789 = fsub fast float 1.000000e+00, %786
  %790 = fcmp fast ole float %787, 0x3FA4B5DCC0000000
  %791 = fmul fast float %787, 0x3FB3D07220000000
  %792 = fsub fast float 0x3FF0E147A0000000, %784
  %793 = fmul fast float %792, 0x3FEE54EDE0000000
  %794 = call float @dx.op.unary.f32(i32 23, float %793)  ; Log(value)
  %795 = fmul fast float %794, 0x4003333340000000
  %796 = call float @dx.op.unary.f32(i32 21, float %795)  ; Exp(value)
  %797 = select i1 %790, float %791, float %796
  %798 = fcmp fast ole float %788, 0x3FA4B5DCC0000000
  %799 = fmul fast float %788, 0x3FB3D07220000000
  %800 = fsub fast float 0x3FF0E147A0000000, %785
  %801 = fmul fast float %800, 0x3FEE54EDE0000000
  %802 = call float @dx.op.unary.f32(i32 23, float %801)  ; Log(value)
  %803 = fmul fast float %802, 0x4003333340000000
  %804 = call float @dx.op.unary.f32(i32 21, float %803)  ; Exp(value)
  %805 = select i1 %798, float %799, float %804
  %806 = fcmp fast ole float %789, 0x3FA4B5DCC0000000
  %807 = fmul fast float %789, 0x3FB3D07220000000
  %808 = fsub fast float 0x3FF0E147A0000000, %786
  %809 = fmul fast float %808, 0x3FEE54EDE0000000
  %810 = call float @dx.op.unary.f32(i32 23, float %809)  ; Log(value)
  %811 = fmul fast float %810, 0x4003333340000000
  %812 = call float @dx.op.unary.f32(i32 21, float %811)  ; Exp(value)
  %813 = select i1 %806, float %807, float %812
  br label %826

; <label>:814                                     ; preds = %760
  %815 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = extractvalue %dx.types.CBufRet.f32 %757, 3
  %817 = fsub fast float %751, %815
  %818 = fsub fast float %752, %815
  %819 = fsub fast float %753, %815
  %820 = fmul fast float %816, %817
  %821 = fmul fast float %816, %818
  %822 = fmul fast float %816, %819
  %823 = fadd fast float %820, %815
  %824 = fadd fast float %821, %815
  %825 = fadd fast float %822, %815
  br label %826

; <label>:826                                     ; preds = %814, %762, %756
  %827 = phi float [ %797, %762 ], [ %823, %814 ], [ %751, %756 ]
  %828 = phi float [ %805, %762 ], [ %824, %814 ], [ %752, %756 ]
  %829 = phi float [ %813, %762 ], [ %825, %814 ], [ %753, %756 ]
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = fcmp fast une float %831, 0.000000e+00
  br i1 %832, label %833, label %1007, !dx.controlflow.hints !57

; <label>:833                                     ; preds = %826
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %837 = fsub fast float %34, %835
  %838 = fsub fast float %35, %836
  %839 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %840 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %841 = fmul fast float %837, %839
  %842 = fmul fast float %838, %840
  %843 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %841, float %842, float undef, float undef, i32 0, i32 0, i32 undef, float %843)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.i32 %848, 3
  %850 = and i32 %849, 3
  %851 = icmp ne i32 %850, 0
  %852 = and i32 %849, 4
  %853 = icmp eq i32 %852, 0
  %854 = and i1 %851, %853
  br i1 %854, label %855, label %899

; <label>:855                                     ; preds = %833
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = fcmp fast oge float %846, %857
  %859 = zext i1 %858 to i32
  br i1 %858, label %860, label %899

; <label>:860                                     ; preds = %855
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 3
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %865 = fcmp fast ogt float %864, 0.000000e+00
  br i1 %865, label %866, label %874, !dx.controlflow.hints !58

; <label>:866                                     ; preds = %860
  %867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %13, float %846, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = fcmp fast ogt float %864, 1.500000e+00
  %872 = select i1 %871, float %868, float %869
  %873 = select i1 %871, float %868, float %870
  br label %892

; <label>:874                                     ; preds = %860
  %875 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %879 = extractvalue %dx.types.CBufRet.f32 %876, 2
  %880 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %881 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %882 = extractvalue %dx.types.CBufRet.f32 %861, 2
  %883 = fsub fast float %877, %880
  %884 = fsub fast float %878, %881
  %885 = fsub fast float %879, %882
  %886 = fmul fast float %883, %875
  %887 = fmul fast float %884, %875
  %888 = fmul fast float %885, %875
  %889 = fadd fast float %886, %880
  %890 = fadd fast float %887, %881
  %891 = fadd fast float %888, %882
  br label %892

; <label>:892                                     ; preds = %874, %866
  %893 = phi float [ %868, %866 ], [ %889, %874 ]
  %894 = phi float [ %872, %866 ], [ %890, %874 ]
  %895 = phi float [ %873, %866 ], [ %891, %874 ]
  %896 = fmul fast float %893, %862
  %897 = fmul fast float %894, %862
  %898 = fmul fast float %895, %862
  br label %899

; <label>:899                                     ; preds = %892, %855, %833
  %900 = phi float [ %896, %892 ], [ %845, %833 ], [ %845, %855 ]
  %901 = phi float [ %897, %892 ], [ %846, %833 ], [ %845, %855 ]
  %902 = phi float [ %898, %892 ], [ %847, %833 ], [ %845, %855 ]
  %903 = phi i32 [ %859, %892 ], [ 0, %833 ], [ %859, %855 ]
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %959

; <label>:905                                     ; preds = %899
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %909 = extractvalue %dx.types.CBufRet.f32 %906, 2
  %910 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float %907, float %908, float %909)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %915 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float %912, float %913, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %916, 1
  %919 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %920 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float %917, float %918, float %919)  ; Dot3(ax,ay,az,bx,by,bz)
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = fmul fast float %922, %910
  %924 = fmul fast float %922, %915
  %925 = fmul fast float %922, %920
  %926 = fadd fast float %923, 9.765625e-04
  %927 = fadd fast float %924, 9.765625e-04
  %928 = fadd fast float %925, 9.765625e-04
  %929 = call float @dx.op.unary.f32(i32 23, float %926)  ; Log(value)
  %930 = call float @dx.op.unary.f32(i32 23, float %927)  ; Log(value)
  %931 = call float @dx.op.unary.f32(i32 23, float %928)  ; Log(value)
  %932 = fadd fast float %929, 1.000000e+01
  %933 = fadd fast float %930, 1.000000e+01
  %934 = fadd fast float %931, 1.000000e+01
  %935 = fmul fast float %932, 0x3FA99999A0000000
  %936 = fmul fast float %933, 0x3FA99999A0000000
  %937 = fmul fast float %934, 0x3FA99999A0000000
  %938 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %939 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  %940 = call float @dx.op.unary.f32(i32 7, float %937)  ; Saturate(value)
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %945 = fmul fast float %942, %938
  %946 = fmul fast float %943, %939
  %947 = fmul fast float %944, %940
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %951 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %952 = fadd fast float %945, %949
  %953 = fadd fast float %946, %950
  %954 = fadd fast float %947, %951
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %13, float %952, float %953, float %954, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = extractvalue %dx.types.ResRet.f32 %955, 2
  br label %959

; <label>:959                                     ; preds = %905, %899
  %960 = phi float [ %900, %899 ], [ %956, %905 ]
  %961 = phi float [ %901, %899 ], [ %957, %905 ]
  %962 = phi float [ %902, %899 ], [ %958, %905 ]
  %963 = fcmp fast ole float %960, 0x3FA4B5DCC0000000
  %964 = fmul fast float %960, 0x3FB3D07220000000
  %965 = fadd fast float %960, 0x3FAC28F5C0000000
  %966 = fmul fast float %965, 0x3FEE54EDE0000000
  %967 = call float @dx.op.unary.f32(i32 23, float %966)  ; Log(value)
  %968 = fmul fast float %967, 0x4003333340000000
  %969 = call float @dx.op.unary.f32(i32 21, float %968)  ; Exp(value)
  %970 = select i1 %963, float %964, float %969
  %971 = fcmp fast ole float %961, 0x3FA4B5DCC0000000
  %972 = fmul fast float %961, 0x3FB3D07220000000
  %973 = fadd fast float %961, 0x3FAC28F5C0000000
  %974 = fmul fast float %973, 0x3FEE54EDE0000000
  %975 = call float @dx.op.unary.f32(i32 23, float %974)  ; Log(value)
  %976 = fmul fast float %975, 0x4003333340000000
  %977 = call float @dx.op.unary.f32(i32 21, float %976)  ; Exp(value)
  %978 = select i1 %971, float %972, float %977
  %979 = fcmp fast ole float %962, 0x3FA4B5DCC0000000
  %980 = fmul fast float %962, 0x3FB3D07220000000
  %981 = fadd fast float %962, 0x3FAC28F5C0000000
  %982 = fmul fast float %981, 0x3FEE54EDE0000000
  %983 = call float @dx.op.unary.f32(i32 23, float %982)  ; Log(value)
  %984 = fmul fast float %983, 0x4003333340000000
  %985 = call float @dx.op.unary.f32(i32 21, float %984)  ; Exp(value)
  %986 = select i1 %979, float %980, float %985
  %987 = fcmp fast olt float %831, 0.000000e+00
  br i1 %987, label %988, label %1000

; <label>:988                                     ; preds = %959
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 0
  %991 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %992 = extractvalue %dx.types.CBufRet.f32 %989, 2
  %993 = call float @dx.op.dot3.f32(i32 55, float %970, float %978, float %986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %994 = fsub fast float %993, %990
  %995 = fmul fast float %994, %991
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %997 = fsub fast float 1.000000e+00, %992
  %998 = fmul fast float %996, %997
  %999 = fadd fast float %998, %992
  br label %1000

; <label>:1000                                    ; preds = %988, %959
  %1001 = phi float [ %999, %988 ], [ %970, %959 ]
  %1002 = phi float [ %999, %988 ], [ %978, %959 ]
  %1003 = phi float [ %999, %988 ], [ %986, %959 ]
  %1004 = fmul fast float %1001, %827
  %1005 = fmul fast float %1002, %828
  %1006 = fmul fast float %1003, %829
  br label %1007

; <label>:1007                                    ; preds = %1000, %826
  %1008 = phi float [ %1004, %1000 ], [ %827, %826 ]
  %1009 = phi float [ %1005, %1000 ], [ %828, %826 ]
  %1010 = phi float [ %1006, %1000 ], [ %829, %826 ]
  %1011 = extractvalue %dx.types.CBufRet.f32 %830, 1
  %1012 = fcmp fast ogt float %1011, 0.000000e+00
  br i1 %1012, label %1013, label %1054, !dx.controlflow.hints !59

; <label>:1013                                    ; preds = %1007
  %1014 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %1015 = bitcast float %1014 to i32
  %1016 = and i32 %1015, 255
  %1017 = uitofp i32 %1016 to float
  %1018 = lshr i32 %1015, 8
  %1019 = and i32 %1018, 255
  %1020 = uitofp i32 %1019 to float
  %1021 = lshr i32 %1015, 16
  %1022 = and i32 %1021, 255
  %1023 = uitofp i32 %1022 to float
  %1024 = fmul fast float %1023, 0x3F70101020000000
  %1025 = lshr i32 %1015, 24
  %1026 = uitofp i32 %1025 to float
  %1027 = fmul fast float %1026, 0x3F70101020000000
  %1028 = fadd fast float %1023, %1017
  %1029 = fmul fast float %1028, 0x3F70101020000000
  %1030 = fadd fast float %1020, %1026
  %1031 = fmul fast float %1030, 0x3F70101020000000
  %1032 = fdiv fast float %34, %1029
  %1033 = fdiv fast float %35, %1031
  %1034 = fsub fast float -0.000000e+00, %1032
  %1035 = fsub fast float -0.000000e+00, %1033
  %1036 = fcmp fast oge float %1032, %1034
  %1037 = fcmp fast oge float %1033, %1035
  %1038 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1039 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1040 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1041 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1042 = fsub fast float -0.000000e+00, %1040
  %1043 = fsub fast float -0.000000e+00, %1041
  %1044 = select i1 %1036, float %1040, float %1042
  %1045 = select i1 %1037, float %1041, float %1043
  %1046 = fmul fast float %1029, %1044
  %1047 = fmul fast float %1045, %1031
  %1048 = fcmp fast olt float %1046, %1024
  %1049 = fcmp fast olt float %1047, %1027
  %1050 = or i1 %1048, %1049
  br i1 %1050, label %1051, label %1054, !dx.controlflow.hints !60

; <label>:1051                                    ; preds = %1013
  %1052 = fsub fast float 1.000000e+00, %1011
  %1053 = fmul fast float %1052, %669
  br label %1054

; <label>:1054                                    ; preds = %1051, %1013, %1007
  %1055 = phi float [ %1053, %1051 ], [ %669, %1013 ], [ %669, %1007 ]
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 3
  %1058 = fcmp fast ogt float %1057, 0.000000e+00
  br i1 %1058, label %1059, label %1142, !dx.controlflow.hints !61

; <label>:1059                                    ; preds = %1054
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 2
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 3
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 3
  %1065 = fmul fast float %1064, 1.000000e+01
  %1066 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.CBufRet.f32 %1067, 1
  %1070 = fmul fast float %1068, %34
  %1071 = fmul fast float %1069, %35
  %1072 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1073 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1074 = fmul fast float %1066, 0x4002B851E0000000
  %1075 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1076 = fadd fast float %1075, 0x3FB99999A0000000
  %1077 = fadd fast float %1076, %1072
  %1078 = fadd fast float %1076, %1073
  %1079 = fmul fast float %1077, 0x3FE1BEDF00000000
  %1080 = call float @dx.op.unary.f32(i32 22, float %1079)  ; Frc(value)
  %1081 = fmul fast float %1077, %1080
  %1082 = fadd fast float %1081, %1078
  %1083 = fmul fast float %1078, 0x3FD3BEBE20000000
  %1084 = call float @dx.op.unary.f32(i32 22, float %1083)  ; Frc(value)
  %1085 = fmul fast float %1078, %1084
  %1086 = fadd fast float %1085, %1077
  %1087 = fmul fast float %1082, %1086
  %1088 = call float @dx.op.unary.f32(i32 22, float %1087)  ; Frc(value)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1067, 3
  %1090 = bitcast float %1089 to i32
  %1091 = and i32 %1090, 255
  %1092 = uitofp i32 %1091 to float
  %1093 = fmul fast float %1092, 0x3F70101020000000
  %1094 = fmul fast float %1093, %1061
  %1095 = fcmp fast olt float %1088, %1094
  br i1 %1095, label %1096, label %1103, !dx.controlflow.hints !62

; <label>:1096                                    ; preds = %1059
  %1097 = fmul fast float %1088, 0x4057091680000000
  %1098 = call float @dx.op.unary.f32(i32 22, float %1097)  ; Frc(value)
  %1099 = fmul fast float %1098, %1008
  %1100 = fmul fast float %1098, %1010
  %1101 = fsub fast float 1.000000e+00, %1098
  %1102 = fmul fast float %1101, %1009
  br label %1103

; <label>:1103                                    ; preds = %1096, %1059
  %1104 = phi float [ %1099, %1096 ], [ %1008, %1059 ]
  %1105 = phi float [ %1102, %1096 ], [ %1009, %1059 ]
  %1106 = phi float [ %1100, %1096 ], [ %1010, %1059 ]
  %1107 = fmul fast float %1088, 0x4028B0A3E0000000
  %1108 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1109 = fmul fast float %1093, %1062
  %1110 = fcmp fast olt float %1108, %1109
  br i1 %1110, label %1111, label %1130, !dx.controlflow.hints !63

; <label>:1111                                    ; preds = %1103
  %1112 = extractvalue %dx.types.CBufRet.f32 %1067, 2
  %1113 = fmul fast float %1112, %34
  %1114 = call float @dx.op.unary.f32(i32 27, float %1113)  ; Round_ni(value)
  %1115 = fmul fast float %1114, 0x3FD5555560000000
  %1116 = call float @dx.op.unary.f32(i32 22, float %1115)  ; Frc(value)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1119 = fcmp fast olt float %1116, 0x3FD51EB860000000
  br i1 %1119, label %1123, label %1120, !dx.controlflow.hints !64

; <label>:1120                                    ; preds = %1111
  %1121 = fcmp fast olt float %1116, 0x3FE51EB860000000
  br i1 %1121, label %1123, label %1122, !dx.controlflow.hints !65

; <label>:1122                                    ; preds = %1120
  br label %1123

; <label>:1123                                    ; preds = %1122, %1120, %1111
  %1124 = phi float [ %1117, %1122 ], [ %1118, %1111 ], [ %1117, %1120 ]
  %1125 = phi float [ %1117, %1122 ], [ %1117, %1111 ], [ %1118, %1120 ]
  %1126 = phi float [ %1118, %1122 ], [ %1117, %1111 ], [ %1117, %1120 ]
  %1127 = fmul fast float %1124, %1104
  %1128 = fmul fast float %1125, %1105
  %1129 = fmul fast float %1126, %1106
  br label %1130

; <label>:1130                                    ; preds = %1123, %1103
  %1131 = phi float [ %1127, %1123 ], [ %1104, %1103 ]
  %1132 = phi float [ %1128, %1123 ], [ %1105, %1103 ]
  %1133 = phi float [ %1129, %1123 ], [ %1106, %1103 ]
  %1134 = fmul fast float %1088, 0x40223EF9E0000000
  %1135 = call float @dx.op.unary.f32(i32 22, float %1134)  ; Frc(value)
  %1136 = fmul fast float %1093, %1057
  %1137 = fmul fast float %1135, %1135
  %1138 = fmul fast float %1137, %1136
  %1139 = fsub fast float 1.000000e+00, %1138
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = fmul fast float %1140, %1055
  br label %1142

; <label>:1142                                    ; preds = %1130, %1054
  %1143 = phi float [ %1131, %1130 ], [ %1008, %1054 ]
  %1144 = phi float [ %1132, %1130 ], [ %1009, %1054 ]
  %1145 = phi float [ %1133, %1130 ], [ %1010, %1054 ]
  %1146 = phi float [ %1141, %1130 ], [ %1055, %1054 ]
  %1147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.CBufRet.f32 %1147, 1
  %1150 = extractvalue %dx.types.CBufRet.f32 %1147, 2
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.CBufRet.f32 %1155, 2
  %1159 = fmul fast float %1148, %1143
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %1149, float %1144, float %1159)  ; FMad(a,b,c)
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1150, float %1145, float %1160)  ; FMad(a,b,c)
  %1162 = fmul fast float %1152, %1143
  %1163 = call float @dx.op.tertiary.f32(i32 46, float %1153, float %1144, float %1162)  ; FMad(a,b,c)
  %1164 = call float @dx.op.tertiary.f32(i32 46, float %1154, float %1145, float %1163)  ; FMad(a,b,c)
  %1165 = fmul fast float %1156, %1143
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %1157, float %1144, float %1165)  ; FMad(a,b,c)
  %1167 = call float @dx.op.tertiary.f32(i32 46, float %1158, float %1145, float %1166)  ; FMad(a,b,c)
  br i1 %676, label %1168, label %1475, !dx.controlflow.hints !66

; <label>:1168                                    ; preds = %1142
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1171 = bitcast float %1170 to i32
  %1172 = and i32 %1171, 128
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1188, label %1174

; <label>:1174                                    ; preds = %1168
  %1175 = call float @dx.op.unary.f32(i32 24, float %1161)  ; Sqrt(value)
  %1176 = call float @dx.op.unary.f32(i32 24, float %1164)  ; Sqrt(value)
  %1177 = call float @dx.op.unary.f32(i32 24, float %1167)  ; Sqrt(value)
  %1178 = fmul fast float %1175, 9.687500e-01
  %1179 = fmul fast float %1176, 9.687500e-01
  %1180 = fmul fast float %1177, 9.687500e-01
  %1181 = fadd fast float %1178, 1.562500e-02
  %1182 = fadd fast float %1179, 1.562500e-02
  %1183 = fadd fast float %1180, 1.562500e-02
  %1184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %1181, float %1182, float %1183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  br label %1475

; <label>:1188                                    ; preds = %1168
  %1189 = and i32 %1171, 127
  switch i32 %1189, label %1475 [
    i32 1, label %1190
    i32 2, label %1190
    i32 0, label %1190
    i32 3, label %1220
    i32 4, label %1341
  ]

; <label>:1190                                    ; preds = %1188, %1188, %1188
  %1191 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1192 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  %1193 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1194 = call float @dx.op.unary.f32(i32 23, float %1191)  ; Log(value)
  %1195 = call float @dx.op.unary.f32(i32 23, float %1192)  ; Log(value)
  %1196 = call float @dx.op.unary.f32(i32 23, float %1193)  ; Log(value)
  %1197 = fmul fast float %1194, 0x3FDAAAAAA0000000
  %1198 = fmul fast float %1195, 0x3FDAAAAAA0000000
  %1199 = fmul fast float %1196, 0x3FDAAAAAA0000000
  %1200 = call float @dx.op.unary.f32(i32 21, float %1197)  ; Exp(value)
  %1201 = call float @dx.op.unary.f32(i32 21, float %1198)  ; Exp(value)
  %1202 = call float @dx.op.unary.f32(i32 21, float %1199)  ; Exp(value)
  %1203 = fmul fast float %1200, 0x3FF0E147A0000000
  %1204 = fmul fast float %1201, 0x3FF0E147A0000000
  %1205 = fmul fast float %1202, 0x3FF0E147A0000000
  %1206 = fadd fast float %1203, 0xBFAC28F5C0000000
  %1207 = fadd fast float %1204, 0xBFAC28F5C0000000
  %1208 = fadd fast float %1205, 0xBFAC28F5C0000000
  %1209 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1210 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1211 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1213 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1214 = fmul fast float %1212, %1209
  %1215 = fmul fast float %1212, %1210
  %1216 = fmul fast float %1212, %1211
  %1217 = fadd fast float %1214, %1213
  %1218 = fadd fast float %1215, %1213
  %1219 = fadd fast float %1216, %1213
  br label %1475

; <label>:1220                                    ; preds = %1188
  %1221 = fmul fast float %1161, 0x4163D57C00000000
  %1222 = fmul fast float %1164, 0x4163D57C00000000
  %1223 = fmul fast float %1167, 0x4163D57C00000000
  %1224 = fadd fast float %1221, 9.999980e+05
  %1225 = fadd fast float %1222, 9.999980e+05
  %1226 = fadd fast float %1223, 9.999980e+05
  %1227 = fmul fast float %1224, %1161
  %1228 = fmul fast float %1225, %1164
  %1229 = fmul fast float %1226, %1167
  %1230 = fadd fast float %1227, 0xC0AFE17A60000000
  %1231 = fadd fast float %1228, 0xC0AFE17A60000000
  %1232 = fadd fast float %1229, 0xC0AFE17A60000000
  %1233 = fmul fast float %1230, %1161
  %1234 = fmul fast float %1231, %1164
  %1235 = fmul fast float %1232, %1167
  %1236 = fmul fast float %1161, 0x40F753C340000000
  %1237 = fmul fast float %1164, 0x40F753C340000000
  %1238 = fmul fast float %1167, 0x40F753C340000000
  %1239 = fsub fast float 9.999990e+06, %1236
  %1240 = fsub fast float 9.999990e+06, %1237
  %1241 = fsub fast float 9.999990e+06, %1238
  %1242 = fmul fast float %1239, %1161
  %1243 = fmul fast float %1240, %1164
  %1244 = fmul fast float %1241, %1167
  %1245 = fadd fast float %1242, 0x4136D1DD80000000
  %1246 = fadd fast float %1243, 0x4136D1DD80000000
  %1247 = fadd fast float %1244, 0x4136D1DD80000000
  %1248 = fmul fast float %1245, %1161
  %1249 = fmul fast float %1246, %1164
  %1250 = fmul fast float %1247, %1167
  %1251 = fadd fast float %1248, 1.000000e+00
  %1252 = fadd fast float %1249, 1.000000e+00
  %1253 = fadd fast float %1250, 1.000000e+00
  %1254 = fdiv fast float %1233, %1251
  %1255 = fdiv fast float %1234, %1252
  %1256 = fdiv fast float %1235, %1253
  %1257 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1258 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1259 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1261 = fmul fast float %1257, 0x3FE413A920000000
  %1262 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1258, float %1261)  ; FMad(a,b,c)
  %1263 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1259, float %1262)  ; FMad(a,b,c)
  %1264 = fmul fast float %1257, 0x3FB1B089A0000000
  %1265 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1258, float %1264)  ; FMad(a,b,c)
  %1266 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1259, float %1265)  ; FMad(a,b,c)
  %1267 = fmul fast float %1257, 0x3F90CB2960000000
  %1268 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1258, float %1267)  ; FMad(a,b,c)
  %1269 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1259, float %1268)  ; FMad(a,b,c)
  %1270 = fmul fast float %1263, %1260
  %1271 = fmul fast float %1266, %1260
  %1272 = fmul fast float %1269, %1260
  %1273 = fmul fast float %1270, 0x3F847AE140000000
  %1274 = fmul fast float %1271, 0x3F847AE140000000
  %1275 = fmul fast float %1272, 0x3F847AE140000000
  %1276 = fmul fast float %1270, 0x40B4D2F520000000
  %1277 = fmul fast float %1271, 0x40B4D2F520000000
  %1278 = fmul fast float %1272, 0x40B4D2F520000000
  %1279 = fadd fast float %1276, 0x41869ECF20000000
  %1280 = fadd fast float %1277, 0x41869ECF20000000
  %1281 = fadd fast float %1278, 0x41869ECF20000000
  %1282 = fmul fast float %1279, %1273
  %1283 = fmul fast float %1280, %1274
  %1284 = fmul fast float %1281, %1275
  %1285 = fadd fast float %1282, 0x417BB79C60000000
  %1286 = fadd fast float %1283, 0x417BB79C60000000
  %1287 = fadd fast float %1284, 0x417BB79C60000000
  %1288 = fmul fast float %1285, %1273
  %1289 = fmul fast float %1286, %1274
  %1290 = fmul fast float %1287, %1275
  %1291 = fadd fast float %1288, 0x41218DE180000000
  %1292 = fadd fast float %1289, 0x41218DE180000000
  %1293 = fadd fast float %1290, 0x41218DE180000000
  %1294 = fmul fast float %1291, %1273
  %1295 = fmul fast float %1292, %1274
  %1296 = fmul fast float %1293, %1275
  %1297 = fadd fast float %1294, 0x4077F174E0000000
  %1298 = fadd fast float %1295, 0x4077F174E0000000
  %1299 = fadd fast float %1296, 0x4077F174E0000000
  %1300 = fmul fast float %1297, %1273
  %1301 = fmul fast float %1298, %1274
  %1302 = fmul fast float %1299, %1275
  %1303 = fadd fast float %1300, 0x3F3FF79B80000000
  %1304 = fadd fast float %1301, 0x3F3FF79B80000000
  %1305 = fadd fast float %1302, 0x3F3FF79B80000000
  %1306 = fmul fast float %1270, 0x412442D320000000
  %1307 = fmul fast float %1271, 0x412442D320000000
  %1308 = fmul fast float %1272, 0x412442D320000000
  %1309 = fadd fast float %1306, 0x419385D5C0000000
  %1310 = fadd fast float %1307, 0x419385D5C0000000
  %1311 = fadd fast float %1308, 0x419385D5C0000000
  %1312 = fmul fast float %1309, %1273
  %1313 = fmul fast float %1310, %1274
  %1314 = fmul fast float %1311, %1275
  %1315 = fadd fast float %1312, 4.182885e+06
  %1316 = fadd fast float %1313, 4.182885e+06
  %1317 = fadd fast float %1314, 4.182885e+06
  %1318 = fmul fast float %1315, %1273
  %1319 = fmul fast float %1316, %1274
  %1320 = fmul fast float %1317, %1275
  %1321 = fadd fast float %1318, 0x40C4D633C0000000
  %1322 = fadd fast float %1319, 0x40C4D633C0000000
  %1323 = fadd fast float %1320, 0x40C4D633C0000000
  %1324 = fmul fast float %1321, %1273
  %1325 = fmul fast float %1322, %1274
  %1326 = fmul fast float %1323, %1275
  %1327 = fadd fast float %1324, 1.000000e+00
  %1328 = fadd fast float %1325, 1.000000e+00
  %1329 = fadd fast float %1326, 1.000000e+00
  %1330 = fdiv fast float %1303, %1327
  %1331 = fdiv fast float %1304, %1328
  %1332 = fdiv fast float %1305, %1329
  %1333 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1334 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1335 = fmul fast float %1333, %1330
  %1336 = fmul fast float %1333, %1331
  %1337 = fmul fast float %1333, %1332
  %1338 = fadd fast float %1335, %1334
  %1339 = fadd fast float %1336, %1334
  %1340 = fadd fast float %1337, %1334
  br label %1475

; <label>:1341                                    ; preds = %1188
  %1342 = fmul fast float %1161, 0x4163D57C00000000
  %1343 = fmul fast float %1164, 0x4163D57C00000000
  %1344 = fmul fast float %1167, 0x4163D57C00000000
  %1345 = fadd fast float %1342, 9.999980e+05
  %1346 = fadd fast float %1343, 9.999980e+05
  %1347 = fadd fast float %1344, 9.999980e+05
  %1348 = fmul fast float %1345, %1161
  %1349 = fmul fast float %1346, %1164
  %1350 = fmul fast float %1347, %1167
  %1351 = fadd fast float %1348, 0xC0AFE17A60000000
  %1352 = fadd fast float %1349, 0xC0AFE17A60000000
  %1353 = fadd fast float %1350, 0xC0AFE17A60000000
  %1354 = fmul fast float %1351, %1161
  %1355 = fmul fast float %1352, %1164
  %1356 = fmul fast float %1353, %1167
  %1357 = fmul fast float %1161, 0x40F753C340000000
  %1358 = fmul fast float %1164, 0x40F753C340000000
  %1359 = fmul fast float %1167, 0x40F753C340000000
  %1360 = fsub fast float 9.999990e+06, %1357
  %1361 = fsub fast float 9.999990e+06, %1358
  %1362 = fsub fast float 9.999990e+06, %1359
  %1363 = fmul fast float %1360, %1161
  %1364 = fmul fast float %1361, %1164
  %1365 = fmul fast float %1362, %1167
  %1366 = fadd fast float %1363, 0x4136D1DD80000000
  %1367 = fadd fast float %1364, 0x4136D1DD80000000
  %1368 = fadd fast float %1365, 0x4136D1DD80000000
  %1369 = fmul fast float %1366, %1161
  %1370 = fmul fast float %1367, %1164
  %1371 = fmul fast float %1368, %1167
  %1372 = fadd fast float %1369, 1.000000e+00
  %1373 = fadd fast float %1370, 1.000000e+00
  %1374 = fadd fast float %1371, 1.000000e+00
  %1375 = fdiv fast float %1354, %1372
  %1376 = fdiv fast float %1355, %1373
  %1377 = fdiv fast float %1356, %1374
  %1378 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1379 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1380 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1382 = fmul fast float %1378, 0x3FEA519BC0000000
  %1383 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1379, float %1382)  ; FMad(a,b,c)
  %1384 = fmul fast float %1378, 0x3FA0FED480000000
  %1385 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1379, float %1384)  ; FMad(a,b,c)
  %1386 = fmul fast float %1378, 0x3F917E1C00000000
  %1387 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1379, float %1386)  ; FMad(a,b,c)
  %1388 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1380, float %1387)  ; FMad(a,b,c)
  %1389 = call float @dx.op.binary.f32(i32 35, float %1378, float %1379)  ; FMax(a,b)
  %1390 = call float @dx.op.binary.f32(i32 35, float %1389, float %1380)  ; FMax(a,b)
  %1391 = fadd fast float %1390, -1.000000e+00
  %1392 = fmul fast float %1391, 2.500000e-01
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = fsub fast float 1.000000e+00, %1393
  %1395 = fmul fast float %1394, %1383
  %1396 = fmul fast float %1394, %1385
  %1397 = fmul fast float %1394, %1388
  %1398 = fmul fast float %1393, %1378
  %1399 = fmul fast float %1393, %1379
  %1400 = fmul fast float %1393, %1380
  %1401 = fadd fast float %1395, %1398
  %1402 = fadd fast float %1396, %1399
  %1403 = fadd fast float %1397, %1400
  %1404 = fmul fast float %1401, %1381
  %1405 = fmul fast float %1402, %1381
  %1406 = fmul fast float %1403, %1381
  %1407 = fmul fast float %1404, 0x3F847AE140000000
  %1408 = fmul fast float %1405, 0x3F847AE140000000
  %1409 = fmul fast float %1406, 0x3F847AE140000000
  %1410 = fmul fast float %1404, 0x40B4D2F520000000
  %1411 = fmul fast float %1405, 0x40B4D2F520000000
  %1412 = fmul fast float %1406, 0x40B4D2F520000000
  %1413 = fadd fast float %1410, 0x41869ECF20000000
  %1414 = fadd fast float %1411, 0x41869ECF20000000
  %1415 = fadd fast float %1412, 0x41869ECF20000000
  %1416 = fmul fast float %1413, %1407
  %1417 = fmul fast float %1414, %1408
  %1418 = fmul fast float %1415, %1409
  %1419 = fadd fast float %1416, 0x417BB79C60000000
  %1420 = fadd fast float %1417, 0x417BB79C60000000
  %1421 = fadd fast float %1418, 0x417BB79C60000000
  %1422 = fmul fast float %1419, %1407
  %1423 = fmul fast float %1420, %1408
  %1424 = fmul fast float %1421, %1409
  %1425 = fadd fast float %1422, 0x41218DE180000000
  %1426 = fadd fast float %1423, 0x41218DE180000000
  %1427 = fadd fast float %1424, 0x41218DE180000000
  %1428 = fmul fast float %1425, %1407
  %1429 = fmul fast float %1426, %1408
  %1430 = fmul fast float %1427, %1409
  %1431 = fadd fast float %1428, 0x4077F174E0000000
  %1432 = fadd fast float %1429, 0x4077F174E0000000
  %1433 = fadd fast float %1430, 0x4077F174E0000000
  %1434 = fmul fast float %1431, %1407
  %1435 = fmul fast float %1432, %1408
  %1436 = fmul fast float %1433, %1409
  %1437 = fadd fast float %1434, 0x3F3FF79B80000000
  %1438 = fadd fast float %1435, 0x3F3FF79B80000000
  %1439 = fadd fast float %1436, 0x3F3FF79B80000000
  %1440 = fmul fast float %1404, 0x412442D320000000
  %1441 = fmul fast float %1405, 0x412442D320000000
  %1442 = fmul fast float %1406, 0x412442D320000000
  %1443 = fadd fast float %1440, 0x419385D5C0000000
  %1444 = fadd fast float %1441, 0x419385D5C0000000
  %1445 = fadd fast float %1442, 0x419385D5C0000000
  %1446 = fmul fast float %1443, %1407
  %1447 = fmul fast float %1444, %1408
  %1448 = fmul fast float %1445, %1409
  %1449 = fadd fast float %1446, 4.182885e+06
  %1450 = fadd fast float %1447, 4.182885e+06
  %1451 = fadd fast float %1448, 4.182885e+06
  %1452 = fmul fast float %1449, %1407
  %1453 = fmul fast float %1450, %1408
  %1454 = fmul fast float %1451, %1409
  %1455 = fadd fast float %1452, 0x40C4D633C0000000
  %1456 = fadd fast float %1453, 0x40C4D633C0000000
  %1457 = fadd fast float %1454, 0x40C4D633C0000000
  %1458 = fmul fast float %1455, %1407
  %1459 = fmul fast float %1456, %1408
  %1460 = fmul fast float %1457, %1409
  %1461 = fadd fast float %1458, 1.000000e+00
  %1462 = fadd fast float %1459, 1.000000e+00
  %1463 = fadd fast float %1460, 1.000000e+00
  %1464 = fdiv fast float %1437, %1461
  %1465 = fdiv fast float %1438, %1462
  %1466 = fdiv fast float %1439, %1463
  %1467 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1468 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1469 = fmul fast float %1467, %1464
  %1470 = fmul fast float %1467, %1465
  %1471 = fmul fast float %1467, %1466
  %1472 = fadd fast float %1469, %1468
  %1473 = fadd fast float %1470, %1468
  %1474 = fadd fast float %1471, %1468
  br label %1475

; <label>:1475                                    ; preds = %1341, %1220, %1190, %1188, %1174, %1142
  %1476 = phi float [ %1161, %1142 ], [ %1185, %1174 ], [ %1161, %1188 ], [ %1472, %1341 ], [ %1338, %1220 ], [ %1217, %1190 ]
  %1477 = phi float [ %1164, %1142 ], [ %1186, %1174 ], [ %1164, %1188 ], [ %1473, %1341 ], [ %1339, %1220 ], [ %1218, %1190 ]
  %1478 = phi float [ %1167, %1142 ], [ %1187, %1174 ], [ %1167, %1188 ], [ %1474, %1341 ], [ %1340, %1220 ], [ %1219, %1190 ]
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %1482 = call float @dx.op.unary.f32(i32 23, float %1146)  ; Log(value)
  %1483 = fmul fast float %1482, %1481
  %1484 = call float @dx.op.unary.f32(i32 21, float %1483)  ; Exp(value)
  %1485 = fmul fast float %1484, %1480
  %1486 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1487 = extractvalue %dx.types.CBufRet.f32 %1479, 3
  %1488 = fmul fast float %1482, %1487
  %1489 = call float @dx.op.unary.f32(i32 21, float %1488)  ; Exp(value)
  %1490 = fmul fast float %1489, %1486
  %1491 = fadd fast float %1490, %1485
  %1492 = fmul fast float %1491, %1476
  %1493 = fmul fast float %1491, %1477
  %1494 = fmul fast float %1491, %1478
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1492)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1493)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1494)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1491)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!21 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 240, null}
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

