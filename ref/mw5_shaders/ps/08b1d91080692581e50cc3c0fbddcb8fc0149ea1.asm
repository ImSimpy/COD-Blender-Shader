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
; TEXCOORD                 1   xy          5     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c23f46376b85cfcb08b26e0db3a525ac
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
; TEXCOORD                 1                 linear       
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
;   [288 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T1     t69,space2     1
;                                   texture     f32          2d      T2     t73,space2     1
;                                   texture     f32          2d      T3     t70,space2     1
;                                   texture    byte         r/o      T4     t15,space1     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          2d      T7             t2     1
;                                   texture     f32          2d      T8             t3     1
;                                   texture     f32          2d      T9             t4     1
;                                   texture     f32          2d     T10             t5     1
;                                   texture     f32          3d     T11     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %41 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %42 = fsub fast float %37, %40
  %43 = fsub fast float %38, %41
  %44 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %45 = extractvalue %dx.types.CBufRet.f32 %39, 3
  %46 = fmul fast float %42, %44
  %47 = fmul fast float %43, %45
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %51 = fmul fast float %46, %49
  %52 = fmul fast float %47, %50
  %53 = fptoui float %51 to i32
  %54 = fptoui float %52 to i32
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 1
  %57 = shl i32 %56, 2
  %58 = extractvalue %dx.types.CBufRet.i32 %55, 3
  %59 = add i32 %57, %58
  %60 = lshr i32 %54, 2
  %61 = extractvalue %dx.types.CBufRet.i32 %55, 2
  %62 = mul i32 %60, %61
  %63 = lshr i32 %53, 3
  %64 = add i32 %59, %63
  %65 = add i32 %64, %62
  %66 = shl i32 %65, 2
  %67 = shl i32 %54, 3
  %68 = and i32 %67, 24
  %69 = and i32 %53, 7
  %70 = or i32 %68, %69
  %71 = shl i32 1, %70
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = and i32 %73, %71
  %75 = icmp ne i32 %74, 0
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %79 = call float @dx.op.binary.f32(i32 35, float %46, float %78)  ; FMax(a,b)
  %80 = call float @dx.op.binary.f32(i32 36, float %79, float %77)  ; FMin(a,b)
  %81 = call float @dx.op.binary.f32(i32 36, float %46, float %78)  ; FMin(a,b)
  %82 = call float @dx.op.binary.f32(i32 35, float %81, float %80)  ; FMax(a,b)
  %83 = fcmp fast oeq float %46, %82
  %84 = extractvalue %dx.types.CBufRet.f32 %76, 3
  %85 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %86 = call float @dx.op.binary.f32(i32 35, float %47, float %85)  ; FMax(a,b)
  %87 = call float @dx.op.binary.f32(i32 36, float %86, float %84)  ; FMin(a,b)
  %88 = call float @dx.op.binary.f32(i32 36, float %47, float %85)  ; FMin(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %88, float %87)  ; FMax(a,b)
  %90 = fcmp fast oeq float %47, %89
  %91 = and i1 %83, %90
  %92 = select i1 %91, float 0.000000e+00, float 1.000000e+00
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %95 = fcmp fast une float %94, 0.000000e+00
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %97 = select i1 %95, float %92, float %96
  %98 = fcmp fast oeq float %97, %96
  %99 = and i1 %75, %98
  br i1 %99, label %101, label %100, !dx.controlflow.hints !52

; <label>:100                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %101

; <label>:101                                     ; preds = %100, %0
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %104 = fcmp fast ogt float %103, 0.000000e+00
  br i1 %104, label %105, label %155, !dx.controlflow.hints !53

; <label>:105                                     ; preds = %101
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %108 = fmul fast float %107, 1.000000e+01
  %109 = call float @dx.op.unary.f32(i32 27, float %108)  ; Round_ni(value)
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = fmul fast float %111, %37
  %114 = fmul fast float %112, %38
  %115 = call float @dx.op.unary.f32(i32 27, float %113)  ; Round_ni(value)
  %116 = call float @dx.op.unary.f32(i32 27, float %114)  ; Round_ni(value)
  %117 = fmul fast float %109, 0x4002B851E0000000
  %118 = call float @dx.op.unary.f32(i32 22, float %117)  ; Frc(value)
  %119 = fadd fast float %118, 0x3FB99999A0000000
  %120 = fadd fast float %119, %115
  %121 = fadd fast float %119, %116
  %122 = fmul fast float %120, 0x3FE1BEDF00000000
  %123 = call float @dx.op.unary.f32(i32 22, float %122)  ; Frc(value)
  %124 = fmul fast float %120, %123
  %125 = fadd fast float %124, %121
  %126 = fmul fast float %121, 0x3FD3BEBE20000000
  %127 = call float @dx.op.unary.f32(i32 22, float %126)  ; Frc(value)
  %128 = fmul fast float %121, %127
  %129 = fadd fast float %128, %120
  %130 = fmul fast float %125, %129
  %131 = call float @dx.op.unary.f32(i32 22, float %130)  ; Frc(value)
  %132 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %133 = bitcast float %132 to i32
  %134 = and i32 %133, 255
  %135 = uitofp i32 %134 to float
  %136 = fmul fast float %131, 0x4085373340000000
  %137 = call float @dx.op.unary.f32(i32 22, float %136)  ; Frc(value)
  %138 = fmul fast float %135, 0x3F6CE9B6A0000000
  %139 = fcmp fast olt float %137, %138
  br i1 %139, label %140, label %155, !dx.controlflow.hints !54

; <label>:140                                     ; preds = %105
  %141 = fdiv fast float %137, %138
  %142 = fmul fast float %141, 2.000000e+00
  %143 = fadd fast float %142, -1.000000e+00
  %144 = lshr i32 %133, 8
  %145 = and i32 %144, 255
  %146 = uitofp i32 %145 to float
  %147 = call float @dx.op.unary.f32(i32 83, float %31)  ; DerivCoarseX(value)
  %148 = call float @dx.op.unary.f32(i32 83, float %32)  ; DerivCoarseX(value)
  %149 = fmul fast float %143, %147
  %150 = fmul fast float %149, %146
  %151 = fmul fast float %148, %143
  %152 = fmul fast float %151, %146
  %153 = fadd fast float %150, %31
  %154 = fadd fast float %152, %32
  br label %155

; <label>:155                                     ; preds = %140, %105, %101
  %156 = phi float [ %153, %140 ], [ %31, %105 ], [ %31, %101 ]
  %157 = phi float [ %154, %140 ], [ %32, %105 ], [ %32, %101 ]
  %158 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %159 = extractvalue %dx.types.Dimensions %158, 0
  %160 = sitofp i32 %159 to float
  %161 = extractvalue %dx.types.Dimensions %158, 1
  %162 = sitofp i32 %161 to float
  %163 = fdiv fast float 5.000000e-01, %160
  %164 = fdiv fast float 5.000000e-01, %162
  %165 = fsub fast float 1.000000e+00, %163
  %166 = call float @dx.op.binary.f32(i32 35, float %156, float %163)  ; FMax(a,b)
  %167 = call float @dx.op.binary.f32(i32 36, float %166, float %165)  ; FMin(a,b)
  %168 = fsub fast float 1.000000e+00, %164
  %169 = call float @dx.op.binary.f32(i32 35, float %157, float %164)  ; FMax(a,b)
  %170 = call float @dx.op.binary.f32(i32 36, float %169, float %168)  ; FMin(a,b)
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %173 = bitcast float %172 to i32
  %174 = and i32 %173, 1
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float %167, float %156
  %177 = and i32 %173, 2
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %178, float %170, float %157
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = fadd fast float %181, -2.000000e+00
  %183 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %184 = fcmp fast olt float %183, 0x3F1A36E2E0000000
  %185 = fmul fast float %176, 2.000000e+00
  %186 = fmul fast float %179, 2.000000e+00
  %187 = fadd fast float %185, -1.000000e+00
  %188 = fadd fast float %186, -1.000000e+00
  %189 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %190 = call float @dx.op.unary.f32(i32 6, float %188)  ; FAbs(value)
  %191 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %194 = fsub fast float %192, %191
  %195 = fcmp fast ogt float %193, 1.000000e+00
  %196 = fdiv fast float 1.000000e+00, %193
  %197 = fmul fast float %194, %196
  %198 = select i1 %195, float %197, float %194
  %199 = fmul fast float %194, %193
  %200 = select i1 %195, float %194, float %199
  %201 = fsub fast float %192, %198
  %202 = fcmp fast ogt float %189, %201
  %203 = fsub fast float %192, %200
  %204 = fcmp fast ogt float %190, %203
  %205 = or i1 %202, %204
  %206 = select i1 %205, float 1.000000e+00, float 0.000000e+00
  %207 = call float @dx.op.dot2.f32(i32 54, float %187, float %188, float %187, float %188)  ; Dot2(ax,ay,bx,by)
  %208 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %209 = fsub fast float %208, %191
  %210 = fdiv fast float %209, %194
  %211 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %212 = fmul fast float %211, 2.000000e+00
  %213 = fsub fast float 3.000000e+00, %212
  %214 = fmul fast float %211, %211
  %215 = fmul fast float %214, 2.000000e+00
  %216 = fmul fast float %215, %213
  %217 = fadd fast float %216, -1.000000e+00
  %218 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %219 = fsub fast float 1.000000e+00, %218
  %220 = select i1 %184, float %206, float %219
  %221 = fmul fast float %220, %36
  %222 = fcmp fast oeq float %97, 0.000000e+00
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 3
  %225 = fcmp fast une float %224, 0.000000e+00
  %226 = and i1 %222, %225
  br i1 %226, label %227, label %243

; <label>:227                                     ; preds = %155
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %14, float %46, float %47, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fsub fast float 1.000000e+00, %229
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %236 = fdiv fast float %230, %235
  %237 = fsub fast float %236, %232
  %238 = fmul fast float %237, %233
  %239 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %240 = fsub fast float 1.000000e+00, %239
  %241 = fmul fast float %240, %240
  %242 = fmul fast float %241, %221
  br label %243

; <label>:243                                     ; preds = %227, %155
  %244 = phi float [ %242, %227 ], [ %221, %155 ]
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 3
  %247 = bitcast float %246 to i32
  %248 = lshr i32 %247, 4
  %249 = lshr i32 %247, 9
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %346, label %252

; <label>:252                                     ; preds = %243
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 3
  %255 = bitcast float %254 to i32
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %261 = bitcast float %260 to i32
  %262 = and i32 %261, 65535
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %261, 16
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = and i32 %248, 1
  %267 = icmp ne i32 %266, 0
  %268 = fcmp fast ogt float %257, 0.000000e+00
  %269 = fcmp fast ogt float %259, 0.000000e+00
  %270 = and i1 %268, %269
  %271 = fcmp fast ogt float %263, 0.000000e+00
  br i1 %270, label %272, label %332

; <label>:272                                     ; preds = %252
  br i1 %271, label %273, label %281

; <label>:273                                     ; preds = %272
  %274 = fmul fast float %259, %30
  %275 = fmul fast float %257, %29
  %276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %275, float %274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fsub fast float 1.000000e+00, %277
  %279 = select i1 %267, float %278, float %277
  %280 = fmul fast float %279, %263
  br label %281

; <label>:281                                     ; preds = %273, %272
  %282 = phi float [ %280, %273 ], [ 0.000000e+00, %272 ]
  %283 = fadd fast float %282, %265
  %284 = call float @dx.op.unary.f32(i32 7, float %283)  ; Saturate(value)
  br i1 %271, label %285, label %295

; <label>:285                                     ; preds = %281
  %286 = fmul fast float %259, %30
  %287 = fsub fast float 1.000000e+00, %29
  %288 = fmul fast float %257, %287
  %289 = fsub fast float 1.000000e+00, %288
  %290 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %289, float %286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 1
  %292 = fsub fast float 1.000000e+00, %291
  %293 = select i1 %267, float %292, float %291
  %294 = fmul fast float %293, %263
  br label %295

; <label>:295                                     ; preds = %285, %281
  %296 = phi float [ %294, %285 ], [ 0.000000e+00, %281 ]
  %297 = fadd fast float %296, %265
  %298 = call float @dx.op.unary.f32(i32 7, float %297)  ; Saturate(value)
  %299 = fmul fast float %298, %284
  br i1 %271, label %300, label %312

; <label>:300                                     ; preds = %295
  %301 = fsub fast float 1.000000e+00, %30
  %302 = fmul fast float %259, %301
  %303 = fsub fast float 1.000000e+00, %302
  %304 = fsub fast float 1.000000e+00, %29
  %305 = fmul fast float %257, %304
  %306 = fsub fast float 1.000000e+00, %305
  %307 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %306, float %303, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 2
  %309 = fsub fast float 1.000000e+00, %308
  %310 = select i1 %267, float %309, float %308
  %311 = fmul fast float %310, %263
  br label %312

; <label>:312                                     ; preds = %300, %295
  %313 = phi float [ %311, %300 ], [ 0.000000e+00, %295 ]
  %314 = fadd fast float %313, %265
  %315 = call float @dx.op.unary.f32(i32 7, float %314)  ; Saturate(value)
  %316 = fmul fast float %299, %315
  br i1 %271, label %317, label %327

; <label>:317                                     ; preds = %312
  %318 = fsub fast float 1.000000e+00, %30
  %319 = fmul fast float %259, %318
  %320 = fsub fast float 1.000000e+00, %319
  %321 = fmul fast float %257, %29
  %322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %321, float %320, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 3
  %324 = fsub fast float 1.000000e+00, %323
  %325 = select i1 %267, float %324, float %323
  %326 = fmul fast float %325, %263
  br label %327

; <label>:327                                     ; preds = %317, %312
  %328 = phi float [ %326, %317 ], [ 0.000000e+00, %312 ]
  %329 = fadd fast float %328, %265
  %330 = call float @dx.op.unary.f32(i32 7, float %329)  ; Saturate(value)
  %331 = fmul fast float %316, %330
  br label %343

; <label>:332                                     ; preds = %252
  br i1 %271, label %333, label %339

; <label>:333                                     ; preds = %332
  %334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %13, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = fsub fast float 1.000000e+00, %335
  %337 = select i1 %267, float %336, float %335
  %338 = fmul fast float %337, %263
  br label %339

; <label>:339                                     ; preds = %333, %332
  %340 = phi float [ %338, %333 ], [ 0.000000e+00, %332 ]
  %341 = fadd fast float %340, %265
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  br label %343

; <label>:343                                     ; preds = %339, %327
  %344 = phi float [ %331, %327 ], [ %342, %339 ]
  %345 = fmul fast float %344, %244
  br label %346

; <label>:346                                     ; preds = %343, %243
  %347 = phi float [ %345, %343 ], [ %244, %243 ]
  %348 = and i32 %249, 2
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %444, label %350

; <label>:350                                     ; preds = %346
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 3
  %353 = bitcast float %352 to i32
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %359 = bitcast float %358 to i32
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = and i32 %248, 2
  %365 = icmp ne i32 %364, 0
  %366 = fcmp fast ogt float %355, 0.000000e+00
  %367 = fcmp fast ogt float %357, 0.000000e+00
  %368 = and i1 %366, %367
  %369 = fcmp fast ogt float %361, 0.000000e+00
  br i1 %368, label %370, label %430

; <label>:370                                     ; preds = %350
  br i1 %369, label %371, label %379

; <label>:371                                     ; preds = %370
  %372 = fmul fast float %357, %28
  %373 = fmul fast float %355, %27
  %374 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %373, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = fsub fast float 1.000000e+00, %375
  %377 = select i1 %365, float %376, float %375
  %378 = fmul fast float %377, %361
  br label %379

; <label>:379                                     ; preds = %371, %370
  %380 = phi float [ %378, %371 ], [ 0.000000e+00, %370 ]
  %381 = fadd fast float %380, %363
  %382 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  br i1 %369, label %383, label %393

; <label>:383                                     ; preds = %379
  %384 = fmul fast float %357, %28
  %385 = fsub fast float 1.000000e+00, %27
  %386 = fmul fast float %355, %385
  %387 = fsub fast float 1.000000e+00, %386
  %388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %387, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 1
  %390 = fsub fast float 1.000000e+00, %389
  %391 = select i1 %365, float %390, float %389
  %392 = fmul fast float %391, %361
  br label %393

; <label>:393                                     ; preds = %383, %379
  %394 = phi float [ %392, %383 ], [ 0.000000e+00, %379 ]
  %395 = fadd fast float %394, %363
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, %382
  br i1 %369, label %398, label %410

; <label>:398                                     ; preds = %393
  %399 = fsub fast float 1.000000e+00, %28
  %400 = fmul fast float %357, %399
  %401 = fsub fast float 1.000000e+00, %400
  %402 = fsub fast float 1.000000e+00, %27
  %403 = fmul fast float %355, %402
  %404 = fsub fast float 1.000000e+00, %403
  %405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %404, float %401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 2
  %407 = fsub fast float 1.000000e+00, %406
  %408 = select i1 %365, float %407, float %406
  %409 = fmul fast float %408, %361
  br label %410

; <label>:410                                     ; preds = %398, %393
  %411 = phi float [ %409, %398 ], [ 0.000000e+00, %393 ]
  %412 = fadd fast float %411, %363
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %414 = fmul fast float %397, %413
  br i1 %369, label %415, label %425

; <label>:415                                     ; preds = %410
  %416 = fsub fast float 1.000000e+00, %28
  %417 = fmul fast float %357, %416
  %418 = fsub fast float 1.000000e+00, %417
  %419 = fmul fast float %355, %27
  %420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %419, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 3
  %422 = fsub fast float 1.000000e+00, %421
  %423 = select i1 %365, float %422, float %421
  %424 = fmul fast float %423, %361
  br label %425

; <label>:425                                     ; preds = %415, %410
  %426 = phi float [ %424, %415 ], [ 0.000000e+00, %410 ]
  %427 = fadd fast float %426, %363
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %414, %428
  br label %441

; <label>:430                                     ; preds = %350
  br i1 %369, label %431, label %437

; <label>:431                                     ; preds = %430
  %432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5, %dx.types.Handle %13, float %27, float %28, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = fsub fast float 1.000000e+00, %433
  %435 = select i1 %365, float %434, float %433
  %436 = fmul fast float %435, %361
  br label %437

; <label>:437                                     ; preds = %431, %430
  %438 = phi float [ %436, %431 ], [ 0.000000e+00, %430 ]
  %439 = fadd fast float %438, %363
  %440 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  br label %441

; <label>:441                                     ; preds = %437, %425
  %442 = phi float [ %429, %425 ], [ %440, %437 ]
  %443 = fmul fast float %442, %347
  br label %444

; <label>:444                                     ; preds = %441, %346
  %445 = phi float [ %443, %441 ], [ %347, %346 ]
  %446 = and i32 %249, 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %542, label %448

; <label>:448                                     ; preds = %444
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %451 = bitcast float %450 to i32
  %452 = and i32 %451, 65535
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %451, 16
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %457 = bitcast float %456 to i32
  %458 = and i32 %457, 65535
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = lshr i32 %457, 16
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = and i32 %248, 4
  %463 = icmp ne i32 %462, 0
  %464 = fcmp fast ogt float %453, 0.000000e+00
  %465 = fcmp fast ogt float %455, 0.000000e+00
  %466 = and i1 %464, %465
  %467 = fcmp fast ogt float %459, 0.000000e+00
  br i1 %466, label %468, label %528

; <label>:468                                     ; preds = %448
  br i1 %467, label %469, label %477

; <label>:469                                     ; preds = %468
  %470 = fmul fast float %455, %26
  %471 = fmul fast float %453, %25
  %472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %471, float %470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = fsub fast float 1.000000e+00, %473
  %475 = select i1 %463, float %474, float %473
  %476 = fmul fast float %475, %459
  br label %477

; <label>:477                                     ; preds = %469, %468
  %478 = phi float [ %476, %469 ], [ 0.000000e+00, %468 ]
  %479 = fadd fast float %478, %461
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  br i1 %467, label %481, label %491

; <label>:481                                     ; preds = %477
  %482 = fmul fast float %455, %26
  %483 = fsub fast float 1.000000e+00, %25
  %484 = fmul fast float %453, %483
  %485 = fsub fast float 1.000000e+00, %484
  %486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %485, float %482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 1
  %488 = fsub fast float 1.000000e+00, %487
  %489 = select i1 %463, float %488, float %487
  %490 = fmul fast float %489, %459
  br label %491

; <label>:491                                     ; preds = %481, %477
  %492 = phi float [ %490, %481 ], [ 0.000000e+00, %477 ]
  %493 = fadd fast float %492, %461
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = fmul fast float %494, %480
  br i1 %467, label %496, label %508

; <label>:496                                     ; preds = %491
  %497 = fsub fast float 1.000000e+00, %26
  %498 = fmul fast float %455, %497
  %499 = fsub fast float 1.000000e+00, %498
  %500 = fsub fast float 1.000000e+00, %25
  %501 = fmul fast float %453, %500
  %502 = fsub fast float 1.000000e+00, %501
  %503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %502, float %499, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 2
  %505 = fsub fast float 1.000000e+00, %504
  %506 = select i1 %463, float %505, float %504
  %507 = fmul fast float %506, %459
  br label %508

; <label>:508                                     ; preds = %496, %491
  %509 = phi float [ %507, %496 ], [ 0.000000e+00, %491 ]
  %510 = fadd fast float %509, %461
  %511 = call float @dx.op.unary.f32(i32 7, float %510)  ; Saturate(value)
  %512 = fmul fast float %495, %511
  br i1 %467, label %513, label %523

; <label>:513                                     ; preds = %508
  %514 = fsub fast float 1.000000e+00, %26
  %515 = fmul fast float %455, %514
  %516 = fsub fast float 1.000000e+00, %515
  %517 = fmul fast float %453, %25
  %518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %517, float %516, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 3
  %520 = fsub fast float 1.000000e+00, %519
  %521 = select i1 %463, float %520, float %519
  %522 = fmul fast float %521, %459
  br label %523

; <label>:523                                     ; preds = %513, %508
  %524 = phi float [ %522, %513 ], [ 0.000000e+00, %508 ]
  %525 = fadd fast float %524, %461
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = fmul fast float %512, %526
  br label %539

; <label>:528                                     ; preds = %448
  br i1 %467, label %529, label %535

; <label>:529                                     ; preds = %528
  %530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %13, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = fsub fast float 1.000000e+00, %531
  %533 = select i1 %463, float %532, float %531
  %534 = fmul fast float %533, %459
  br label %535

; <label>:535                                     ; preds = %529, %528
  %536 = phi float [ %534, %529 ], [ 0.000000e+00, %528 ]
  %537 = fadd fast float %536, %461
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  br label %539

; <label>:539                                     ; preds = %535, %523
  %540 = phi float [ %527, %523 ], [ %538, %535 ]
  %541 = fmul fast float %540, %445
  br label %542

; <label>:542                                     ; preds = %539, %444
  %543 = phi float [ %541, %539 ], [ %445, %444 ]
  %544 = and i32 %249, 8
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %640, label %546

; <label>:546                                     ; preds = %542
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 3
  %549 = bitcast float %548 to i32
  %550 = and i32 %549, 65535
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %549, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %555 = bitcast float %554 to i32
  %556 = and i32 %555, 65535
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = lshr i32 %555, 16
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = and i32 %248, 8
  %561 = icmp ne i32 %560, 0
  %562 = fcmp fast ogt float %551, 0.000000e+00
  %563 = fcmp fast ogt float %553, 0.000000e+00
  %564 = and i1 %562, %563
  %565 = fcmp fast ogt float %557, 0.000000e+00
  br i1 %564, label %566, label %626

; <label>:566                                     ; preds = %546
  br i1 %565, label %567, label %575

; <label>:567                                     ; preds = %566
  %568 = fmul fast float %553, %24
  %569 = fmul fast float %551, %23
  %570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %569, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = fsub fast float 1.000000e+00, %571
  %573 = select i1 %561, float %572, float %571
  %574 = fmul fast float %573, %557
  br label %575

; <label>:575                                     ; preds = %567, %566
  %576 = phi float [ %574, %567 ], [ 0.000000e+00, %566 ]
  %577 = fadd fast float %576, %559
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  br i1 %565, label %579, label %589

; <label>:579                                     ; preds = %575
  %580 = fmul fast float %553, %24
  %581 = fsub fast float 1.000000e+00, %23
  %582 = fmul fast float %551, %581
  %583 = fsub fast float 1.000000e+00, %582
  %584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %583, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 1
  %586 = fsub fast float 1.000000e+00, %585
  %587 = select i1 %561, float %586, float %585
  %588 = fmul fast float %587, %557
  br label %589

; <label>:589                                     ; preds = %579, %575
  %590 = phi float [ %588, %579 ], [ 0.000000e+00, %575 ]
  %591 = fadd fast float %590, %559
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fmul fast float %592, %578
  br i1 %565, label %594, label %606

; <label>:594                                     ; preds = %589
  %595 = fsub fast float 1.000000e+00, %24
  %596 = fmul fast float %553, %595
  %597 = fsub fast float 1.000000e+00, %596
  %598 = fsub fast float 1.000000e+00, %23
  %599 = fmul fast float %551, %598
  %600 = fsub fast float 1.000000e+00, %599
  %601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %600, float %597, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 2
  %603 = fsub fast float 1.000000e+00, %602
  %604 = select i1 %561, float %603, float %602
  %605 = fmul fast float %604, %557
  br label %606

; <label>:606                                     ; preds = %594, %589
  %607 = phi float [ %605, %594 ], [ 0.000000e+00, %589 ]
  %608 = fadd fast float %607, %559
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = fmul fast float %593, %609
  br i1 %565, label %611, label %621

; <label>:611                                     ; preds = %606
  %612 = fsub fast float 1.000000e+00, %24
  %613 = fmul fast float %553, %612
  %614 = fsub fast float 1.000000e+00, %613
  %615 = fmul fast float %551, %23
  %616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %615, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 3
  %618 = fsub fast float 1.000000e+00, %617
  %619 = select i1 %561, float %618, float %617
  %620 = fmul fast float %619, %557
  br label %621

; <label>:621                                     ; preds = %611, %606
  %622 = phi float [ %620, %611 ], [ 0.000000e+00, %606 ]
  %623 = fadd fast float %622, %559
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %625 = fmul fast float %610, %624
  br label %637

; <label>:626                                     ; preds = %546
  br i1 %565, label %627, label %633

; <label>:627                                     ; preds = %626
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %13, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = fsub fast float 1.000000e+00, %629
  %631 = select i1 %561, float %630, float %629
  %632 = fmul fast float %631, %557
  br label %633

; <label>:633                                     ; preds = %627, %626
  %634 = phi float [ %632, %627 ], [ 0.000000e+00, %626 ]
  %635 = fadd fast float %634, %559
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  br label %637

; <label>:637                                     ; preds = %633, %621
  %638 = phi float [ %625, %621 ], [ %636, %633 ]
  %639 = fmul fast float %638, %543
  br label %640

; <label>:640                                     ; preds = %637, %542
  %641 = phi float [ %639, %637 ], [ %543, %542 ]
  %642 = and i32 %249, 16
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %738, label %644

; <label>:644                                     ; preds = %640
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %647 = bitcast float %646 to i32
  %648 = and i32 %647, 65535
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = lshr i32 %647, 16
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %653 = bitcast float %652 to i32
  %654 = and i32 %653, 65535
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = lshr i32 %653, 16
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = and i32 %248, 16
  %659 = icmp ne i32 %658, 0
  %660 = fcmp fast ogt float %649, 0.000000e+00
  %661 = fcmp fast ogt float %651, 0.000000e+00
  %662 = and i1 %660, %661
  %663 = fcmp fast ogt float %655, 0.000000e+00
  br i1 %662, label %664, label %724

; <label>:664                                     ; preds = %644
  br i1 %663, label %665, label %673

; <label>:665                                     ; preds = %664
  %666 = fmul fast float %651, %22
  %667 = fmul fast float %649, %21
  %668 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %13, float %667, float %666, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = fsub fast float 1.000000e+00, %669
  %671 = select i1 %659, float %670, float %669
  %672 = fmul fast float %671, %655
  br label %673

; <label>:673                                     ; preds = %665, %664
  %674 = phi float [ %672, %665 ], [ 0.000000e+00, %664 ]
  %675 = fadd fast float %674, %657
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br i1 %663, label %677, label %687

; <label>:677                                     ; preds = %673
  %678 = fmul fast float %651, %22
  %679 = fsub fast float 1.000000e+00, %21
  %680 = fmul fast float %649, %679
  %681 = fsub fast float 1.000000e+00, %680
  %682 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %13, float %681, float %678, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 1
  %684 = fsub fast float 1.000000e+00, %683
  %685 = select i1 %659, float %684, float %683
  %686 = fmul fast float %685, %655
  br label %687

; <label>:687                                     ; preds = %677, %673
  %688 = phi float [ %686, %677 ], [ 0.000000e+00, %673 ]
  %689 = fadd fast float %688, %657
  %690 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %691 = fmul fast float %690, %676
  br i1 %663, label %692, label %704

; <label>:692                                     ; preds = %687
  %693 = fsub fast float 1.000000e+00, %22
  %694 = fmul fast float %651, %693
  %695 = fsub fast float 1.000000e+00, %694
  %696 = fsub fast float 1.000000e+00, %21
  %697 = fmul fast float %649, %696
  %698 = fsub fast float 1.000000e+00, %697
  %699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %13, float %698, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 2
  %701 = fsub fast float 1.000000e+00, %700
  %702 = select i1 %659, float %701, float %700
  %703 = fmul fast float %702, %655
  br label %704

; <label>:704                                     ; preds = %692, %687
  %705 = phi float [ %703, %692 ], [ 0.000000e+00, %687 ]
  %706 = fadd fast float %705, %657
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = fmul fast float %691, %707
  br i1 %663, label %709, label %719

; <label>:709                                     ; preds = %704
  %710 = fsub fast float 1.000000e+00, %22
  %711 = fmul fast float %651, %710
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %649, %21
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %13, float %713, float %712, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 3
  %716 = fsub fast float 1.000000e+00, %715
  %717 = select i1 %659, float %716, float %715
  %718 = fmul fast float %717, %655
  br label %719

; <label>:719                                     ; preds = %709, %704
  %720 = phi float [ %718, %709 ], [ 0.000000e+00, %704 ]
  %721 = fadd fast float %720, %657
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = fmul fast float %708, %722
  br label %735

; <label>:724                                     ; preds = %644
  br i1 %663, label %725, label %731

; <label>:725                                     ; preds = %724
  %726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %13, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = fsub fast float 1.000000e+00, %727
  %729 = select i1 %659, float %728, float %727
  %730 = fmul fast float %729, %655
  br label %731

; <label>:731                                     ; preds = %725, %724
  %732 = phi float [ %730, %725 ], [ 0.000000e+00, %724 ]
  %733 = fadd fast float %732, %657
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  br label %735

; <label>:735                                     ; preds = %731, %719
  %736 = phi float [ %723, %719 ], [ %734, %731 ]
  %737 = fmul fast float %736, %641
  br label %738

; <label>:738                                     ; preds = %735, %640
  %739 = phi float [ %737, %735 ], [ %641, %640 ]
  %740 = call float @dx.op.binary.f32(i32 35, float %739, float 0.000000e+00)  ; FMax(a,b)
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %743 = bitcast float %742 to i32
  %744 = and i32 %743, 1
  %745 = icmp eq i32 %744, 0
  %746 = and i32 %743, 4
  %747 = icmp eq i32 %746, 0
  br i1 %745, label %821, label %748, !dx.controlflow.hints !55

; <label>:748                                     ; preds = %738
  %749 = and i32 %743, 2
  %750 = icmp eq i32 %749, 0
  %751 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %752 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %753 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %754 = fmul fast float %751, %33
  %755 = fmul fast float %752, %34
  %756 = fmul fast float %753, %35
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %759 = fmul fast float %758, %754
  %760 = fmul fast float %758, %755
  %761 = fmul fast float %758, %756
  br i1 %750, label %821, label %762, !dx.controlflow.hints !56

; <label>:762                                     ; preds = %748
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %767 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %769 = call float @dx.op.dot3.f32(i32 55, float %759, float %760, float %761, float %766, float %767, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %773 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %774 = call float @dx.op.dot3.f32(i32 55, float %759, float %760, float %761, float %771, float %772, float %773)  ; Dot3(ax,ay,az,bx,by,bz)
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = extractvalue %dx.types.CBufRet.f32 %775, 1
  %778 = extractvalue %dx.types.CBufRet.f32 %775, 2
  %779 = call float @dx.op.dot3.f32(i32 55, float %759, float %760, float %761, float %776, float %777, float %778)  ; Dot3(ax,ay,az,bx,by,bz)
  %780 = fmul fast float %769, %764
  %781 = fmul fast float %774, %764
  %782 = fmul fast float %779, %764
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %785 = fmul fast float %780, %784
  %786 = fmul fast float %781, %784
  %787 = fmul fast float %782, %784
  %788 = fadd fast float %785, 9.765625e-04
  %789 = fadd fast float %786, 9.765625e-04
  %790 = fadd fast float %787, 9.765625e-04
  %791 = call float @dx.op.unary.f32(i32 23, float %788)  ; Log(value)
  %792 = call float @dx.op.unary.f32(i32 23, float %789)  ; Log(value)
  %793 = call float @dx.op.unary.f32(i32 23, float %790)  ; Log(value)
  %794 = fadd fast float %791, 1.000000e+01
  %795 = fadd fast float %792, 1.000000e+01
  %796 = fadd fast float %793, 1.000000e+01
  %797 = fmul fast float %794, 0x3FA99999A0000000
  %798 = fmul fast float %795, 0x3FA99999A0000000
  %799 = fmul fast float %796, 0x3FA99999A0000000
  %800 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %801 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %802 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 1
  %806 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %807 = fmul fast float %804, %800
  %808 = fmul fast float %805, %801
  %809 = fmul fast float %806, %802
  %810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.f32 %810, 0
  %812 = extractvalue %dx.types.CBufRet.f32 %810, 1
  %813 = extractvalue %dx.types.CBufRet.f32 %810, 2
  %814 = fadd fast float %807, %811
  %815 = fadd fast float %808, %812
  %816 = fadd fast float %809, %813
  %817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %814, float %815, float %816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  br label %821

; <label>:821                                     ; preds = %762, %748, %738
  %822 = phi float [ %818, %762 ], [ %33, %738 ], [ %759, %748 ]
  %823 = phi float [ %819, %762 ], [ %34, %738 ], [ %760, %748 ]
  %824 = phi float [ %820, %762 ], [ %35, %738 ], [ %761, %748 ]
  %825 = fcmp fast oeq float %740, 0.000000e+00
  br i1 %825, label %826, label %827, !dx.controlflow.hints !57

; <label>:826                                     ; preds = %821
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %827

; <label>:827                                     ; preds = %826, %821
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %830 = fcmp fast ogt float %829, 0.000000e+00
  br i1 %830, label %831, label %897, !dx.controlflow.hints !58

; <label>:831                                     ; preds = %827
  %832 = fcmp fast oeq float %829, 2.000000e+00
  br i1 %832, label %833, label %885, !dx.controlflow.hints !59

; <label>:833                                     ; preds = %831
  %834 = fcmp fast ole float %822, 0x3F69A5C380000000
  %835 = fcmp fast ole float %823, 0x3F69A5C380000000
  %836 = fcmp fast ole float %824, 0x3F69A5C380000000
  %837 = fmul fast float %822, 0x4029D70A40000000
  %838 = fmul fast float %823, 0x4029D70A40000000
  %839 = fmul fast float %824, 0x4029D70A40000000
  %840 = call float @dx.op.unary.f32(i32 23, float %822)  ; Log(value)
  %841 = call float @dx.op.unary.f32(i32 23, float %823)  ; Log(value)
  %842 = call float @dx.op.unary.f32(i32 23, float %824)  ; Log(value)
  %843 = fmul fast float %840, 0x3FDAAAAAA0000000
  %844 = fmul fast float %841, 0x3FDAAAAAA0000000
  %845 = fmul fast float %842, 0x3FDAAAAAA0000000
  %846 = call float @dx.op.unary.f32(i32 21, float %843)  ; Exp(value)
  %847 = call float @dx.op.unary.f32(i32 21, float %844)  ; Exp(value)
  %848 = call float @dx.op.unary.f32(i32 21, float %845)  ; Exp(value)
  %849 = fmul fast float %846, 0x3FF0E147A0000000
  %850 = fmul fast float %847, 0x3FF0E147A0000000
  %851 = fmul fast float %848, 0x3FF0E147A0000000
  %852 = fadd fast float %849, 0xBFAC28F5C0000000
  %853 = fadd fast float %850, 0xBFAC28F5C0000000
  %854 = fadd fast float %851, 0xBFAC28F5C0000000
  %855 = select i1 %834, float %837, float %852
  %856 = select i1 %835, float %838, float %853
  %857 = select i1 %836, float %839, float %854
  %858 = fsub fast float 1.000000e+00, %855
  %859 = fsub fast float 1.000000e+00, %856
  %860 = fsub fast float 1.000000e+00, %857
  %861 = fcmp fast ole float %858, 0x3FA4B5DCC0000000
  %862 = fmul fast float %858, 0x3FB3D07220000000
  %863 = fsub fast float 0x3FF0E147A0000000, %855
  %864 = fmul fast float %863, 0x3FEE54EDE0000000
  %865 = call float @dx.op.unary.f32(i32 23, float %864)  ; Log(value)
  %866 = fmul fast float %865, 0x4003333340000000
  %867 = call float @dx.op.unary.f32(i32 21, float %866)  ; Exp(value)
  %868 = select i1 %861, float %862, float %867
  %869 = fcmp fast ole float %859, 0x3FA4B5DCC0000000
  %870 = fmul fast float %859, 0x3FB3D07220000000
  %871 = fsub fast float 0x3FF0E147A0000000, %856
  %872 = fmul fast float %871, 0x3FEE54EDE0000000
  %873 = call float @dx.op.unary.f32(i32 23, float %872)  ; Log(value)
  %874 = fmul fast float %873, 0x4003333340000000
  %875 = call float @dx.op.unary.f32(i32 21, float %874)  ; Exp(value)
  %876 = select i1 %869, float %870, float %875
  %877 = fcmp fast ole float %860, 0x3FA4B5DCC0000000
  %878 = fmul fast float %860, 0x3FB3D07220000000
  %879 = fsub fast float 0x3FF0E147A0000000, %857
  %880 = fmul fast float %879, 0x3FEE54EDE0000000
  %881 = call float @dx.op.unary.f32(i32 23, float %880)  ; Log(value)
  %882 = fmul fast float %881, 0x4003333340000000
  %883 = call float @dx.op.unary.f32(i32 21, float %882)  ; Exp(value)
  %884 = select i1 %877, float %878, float %883
  br label %897

; <label>:885                                     ; preds = %831
  %886 = call float @dx.op.dot3.f32(i32 55, float %822, float %823, float %824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %887 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %888 = fsub fast float %822, %886
  %889 = fsub fast float %823, %886
  %890 = fsub fast float %824, %886
  %891 = fmul fast float %887, %888
  %892 = fmul fast float %887, %889
  %893 = fmul fast float %887, %890
  %894 = fadd fast float %891, %886
  %895 = fadd fast float %892, %886
  %896 = fadd fast float %893, %886
  br label %897

; <label>:897                                     ; preds = %885, %833, %827
  %898 = phi float [ %868, %833 ], [ %894, %885 ], [ %822, %827 ]
  %899 = phi float [ %876, %833 ], [ %895, %885 ], [ %823, %827 ]
  %900 = phi float [ %884, %833 ], [ %896, %885 ], [ %824, %827 ]
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = fcmp fast une float %902, 0.000000e+00
  br i1 %903, label %904, label %1078, !dx.controlflow.hints !60

; <label>:904                                     ; preds = %897
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %908 = fsub fast float %37, %906
  %909 = fsub fast float %38, %907
  %910 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %911 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %912 = fmul fast float %908, %910
  %913 = fmul fast float %909, %911
  %914 = call float @dx.op.unary.f32(i32 6, float %902)  ; FAbs(value)
  %915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %912, float %913, float undef, float undef, i32 0, i32 0, i32 undef, float %914)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.i32 %919, 3
  %921 = and i32 %920, 3
  %922 = icmp ne i32 %921, 0
  %923 = and i32 %920, 4
  %924 = icmp eq i32 %923, 0
  %925 = and i1 %922, %924
  br i1 %925, label %926, label %970

; <label>:926                                     ; preds = %904
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = fcmp fast oge float %917, %928
  %930 = zext i1 %929 to i32
  br i1 %929, label %931, label %970

; <label>:931                                     ; preds = %926
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %936 = fcmp fast ogt float %935, 0.000000e+00
  br i1 %936, label %937, label %945, !dx.controlflow.hints !61

; <label>:937                                     ; preds = %931
  %938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %14, float %917, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = fcmp fast ogt float %935, 1.500000e+00
  %943 = select i1 %942, float %939, float %940
  %944 = select i1 %942, float %939, float %941
  br label %963

; <label>:945                                     ; preds = %931
  %946 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %952 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %953 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %954 = fsub fast float %948, %951
  %955 = fsub fast float %949, %952
  %956 = fsub fast float %950, %953
  %957 = fmul fast float %954, %946
  %958 = fmul fast float %955, %946
  %959 = fmul fast float %956, %946
  %960 = fadd fast float %957, %951
  %961 = fadd fast float %958, %952
  %962 = fadd fast float %959, %953
  br label %963

; <label>:963                                     ; preds = %945, %937
  %964 = phi float [ %939, %937 ], [ %960, %945 ]
  %965 = phi float [ %943, %937 ], [ %961, %945 ]
  %966 = phi float [ %944, %937 ], [ %962, %945 ]
  %967 = fmul fast float %964, %933
  %968 = fmul fast float %965, %933
  %969 = fmul fast float %966, %933
  br label %970

; <label>:970                                     ; preds = %963, %926, %904
  %971 = phi float [ %967, %963 ], [ %916, %904 ], [ %916, %926 ]
  %972 = phi float [ %968, %963 ], [ %917, %904 ], [ %916, %926 ]
  %973 = phi float [ %969, %963 ], [ %918, %904 ], [ %916, %926 ]
  %974 = phi i32 [ %930, %963 ], [ 0, %904 ], [ %930, %926 ]
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %1030

; <label>:976                                     ; preds = %970
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %977, 2
  %981 = call float @dx.op.dot3.f32(i32 55, float %971, float %972, float %973, float %978, float %979, float %980)  ; Dot3(ax,ay,az,bx,by,bz)
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 0
  %984 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %985 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %986 = call float @dx.op.dot3.f32(i32 55, float %971, float %972, float %973, float %983, float %984, float %985)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = call float @dx.op.dot3.f32(i32 55, float %971, float %972, float %973, float %988, float %989, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %994 = fmul fast float %993, %981
  %995 = fmul fast float %993, %986
  %996 = fmul fast float %993, %991
  %997 = fadd fast float %994, 9.765625e-04
  %998 = fadd fast float %995, 9.765625e-04
  %999 = fadd fast float %996, 9.765625e-04
  %1000 = call float @dx.op.unary.f32(i32 23, float %997)  ; Log(value)
  %1001 = call float @dx.op.unary.f32(i32 23, float %998)  ; Log(value)
  %1002 = call float @dx.op.unary.f32(i32 23, float %999)  ; Log(value)
  %1003 = fadd fast float %1000, 1.000000e+01
  %1004 = fadd fast float %1001, 1.000000e+01
  %1005 = fadd fast float %1002, 1.000000e+01
  %1006 = fmul fast float %1003, 0x3FA99999A0000000
  %1007 = fmul fast float %1004, 0x3FA99999A0000000
  %1008 = fmul fast float %1005, 0x3FA99999A0000000
  %1009 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1010 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1011 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = fmul fast float %1013, %1009
  %1017 = fmul fast float %1014, %1010
  %1018 = fmul fast float %1015, %1011
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.CBufRet.f32 %1019, 2
  %1023 = fadd fast float %1016, %1020
  %1024 = fadd fast float %1017, %1021
  %1025 = fadd fast float %1018, %1022
  %1026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1023, float %1024, float %1025, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.ResRet.f32 %1026, 2
  br label %1030

; <label>:1030                                    ; preds = %976, %970
  %1031 = phi float [ %971, %970 ], [ %1027, %976 ]
  %1032 = phi float [ %972, %970 ], [ %1028, %976 ]
  %1033 = phi float [ %973, %970 ], [ %1029, %976 ]
  %1034 = fcmp fast ole float %1031, 0x3FA4B5DCC0000000
  %1035 = fmul fast float %1031, 0x3FB3D07220000000
  %1036 = fadd fast float %1031, 0x3FAC28F5C0000000
  %1037 = fmul fast float %1036, 0x3FEE54EDE0000000
  %1038 = call float @dx.op.unary.f32(i32 23, float %1037)  ; Log(value)
  %1039 = fmul fast float %1038, 0x4003333340000000
  %1040 = call float @dx.op.unary.f32(i32 21, float %1039)  ; Exp(value)
  %1041 = select i1 %1034, float %1035, float %1040
  %1042 = fcmp fast ole float %1032, 0x3FA4B5DCC0000000
  %1043 = fmul fast float %1032, 0x3FB3D07220000000
  %1044 = fadd fast float %1032, 0x3FAC28F5C0000000
  %1045 = fmul fast float %1044, 0x3FEE54EDE0000000
  %1046 = call float @dx.op.unary.f32(i32 23, float %1045)  ; Log(value)
  %1047 = fmul fast float %1046, 0x4003333340000000
  %1048 = call float @dx.op.unary.f32(i32 21, float %1047)  ; Exp(value)
  %1049 = select i1 %1042, float %1043, float %1048
  %1050 = fcmp fast ole float %1033, 0x3FA4B5DCC0000000
  %1051 = fmul fast float %1033, 0x3FB3D07220000000
  %1052 = fadd fast float %1033, 0x3FAC28F5C0000000
  %1053 = fmul fast float %1052, 0x3FEE54EDE0000000
  %1054 = call float @dx.op.unary.f32(i32 23, float %1053)  ; Log(value)
  %1055 = fmul fast float %1054, 0x4003333340000000
  %1056 = call float @dx.op.unary.f32(i32 21, float %1055)  ; Exp(value)
  %1057 = select i1 %1050, float %1051, float %1056
  %1058 = fcmp fast olt float %902, 0.000000e+00
  br i1 %1058, label %1059, label %1071

; <label>:1059                                    ; preds = %1030
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.CBufRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.CBufRet.f32 %1060, 2
  %1064 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1049, float %1057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = fsub fast float %1064, %1061
  %1066 = fmul fast float %1065, %1062
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fsub fast float 1.000000e+00, %1063
  %1069 = fmul fast float %1067, %1068
  %1070 = fadd fast float %1069, %1063
  br label %1071

; <label>:1071                                    ; preds = %1059, %1030
  %1072 = phi float [ %1070, %1059 ], [ %1041, %1030 ]
  %1073 = phi float [ %1070, %1059 ], [ %1049, %1030 ]
  %1074 = phi float [ %1070, %1059 ], [ %1057, %1030 ]
  %1075 = fmul fast float %1072, %898
  %1076 = fmul fast float %1073, %899
  %1077 = fmul fast float %1074, %900
  br label %1078

; <label>:1078                                    ; preds = %1071, %897
  %1079 = phi float [ %1075, %1071 ], [ %898, %897 ]
  %1080 = phi float [ %1076, %1071 ], [ %899, %897 ]
  %1081 = phi float [ %1077, %1071 ], [ %900, %897 ]
  %1082 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %1083 = fcmp fast ogt float %1082, 0.000000e+00
  br i1 %1083, label %1084, label %1125, !dx.controlflow.hints !62

; <label>:1084                                    ; preds = %1078
  %1085 = extractvalue %dx.types.CBufRet.f32 %901, 2
  %1086 = bitcast float %1085 to i32
  %1087 = and i32 %1086, 255
  %1088 = uitofp i32 %1087 to float
  %1089 = lshr i32 %1086, 8
  %1090 = and i32 %1089, 255
  %1091 = uitofp i32 %1090 to float
  %1092 = lshr i32 %1086, 16
  %1093 = and i32 %1092, 255
  %1094 = uitofp i32 %1093 to float
  %1095 = fmul fast float %1094, 0x3F70101020000000
  %1096 = lshr i32 %1086, 24
  %1097 = uitofp i32 %1096 to float
  %1098 = fmul fast float %1097, 0x3F70101020000000
  %1099 = fadd fast float %1094, %1088
  %1100 = fmul fast float %1099, 0x3F70101020000000
  %1101 = fadd fast float %1091, %1097
  %1102 = fmul fast float %1101, 0x3F70101020000000
  %1103 = fdiv fast float %37, %1100
  %1104 = fdiv fast float %38, %1102
  %1105 = fsub fast float -0.000000e+00, %1103
  %1106 = fsub fast float -0.000000e+00, %1104
  %1107 = fcmp fast oge float %1103, %1105
  %1108 = fcmp fast oge float %1104, %1106
  %1109 = call float @dx.op.unary.f32(i32 6, float %1103)  ; FAbs(value)
  %1110 = call float @dx.op.unary.f32(i32 6, float %1104)  ; FAbs(value)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1109)  ; Frc(value)
  %1112 = call float @dx.op.unary.f32(i32 22, float %1110)  ; Frc(value)
  %1113 = fsub fast float -0.000000e+00, %1111
  %1114 = fsub fast float -0.000000e+00, %1112
  %1115 = select i1 %1107, float %1111, float %1113
  %1116 = select i1 %1108, float %1112, float %1114
  %1117 = fmul fast float %1100, %1115
  %1118 = fmul fast float %1116, %1102
  %1119 = fcmp fast olt float %1117, %1095
  %1120 = fcmp fast olt float %1118, %1098
  %1121 = or i1 %1119, %1120
  br i1 %1121, label %1122, label %1125, !dx.controlflow.hints !63

; <label>:1122                                    ; preds = %1084
  %1123 = fsub fast float 1.000000e+00, %1082
  %1124 = fmul fast float %1123, %740
  br label %1125

; <label>:1125                                    ; preds = %1122, %1084, %1078
  %1126 = phi float [ %1124, %1122 ], [ %740, %1084 ], [ %740, %1078 ]
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1129 = fcmp fast ogt float %1128, 0.000000e+00
  br i1 %1129, label %1130, label %1213, !dx.controlflow.hints !64

; <label>:1130                                    ; preds = %1125
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 3
  %1136 = fmul fast float %1135, 1.000000e+01
  %1137 = call float @dx.op.unary.f32(i32 27, float %1136)  ; Round_ni(value)
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = fmul fast float %1139, %37
  %1142 = fmul fast float %1140, %38
  %1143 = call float @dx.op.unary.f32(i32 27, float %1141)  ; Round_ni(value)
  %1144 = call float @dx.op.unary.f32(i32 27, float %1142)  ; Round_ni(value)
  %1145 = fmul fast float %1137, 0x4002B851E0000000
  %1146 = call float @dx.op.unary.f32(i32 22, float %1145)  ; Frc(value)
  %1147 = fadd fast float %1146, 0x3FB99999A0000000
  %1148 = fadd fast float %1147, %1143
  %1149 = fadd fast float %1147, %1144
  %1150 = fmul fast float %1148, 0x3FE1BEDF00000000
  %1151 = call float @dx.op.unary.f32(i32 22, float %1150)  ; Frc(value)
  %1152 = fmul fast float %1148, %1151
  %1153 = fadd fast float %1152, %1149
  %1154 = fmul fast float %1149, 0x3FD3BEBE20000000
  %1155 = call float @dx.op.unary.f32(i32 22, float %1154)  ; Frc(value)
  %1156 = fmul fast float %1149, %1155
  %1157 = fadd fast float %1156, %1148
  %1158 = fmul fast float %1153, %1157
  %1159 = call float @dx.op.unary.f32(i32 22, float %1158)  ; Frc(value)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1138, 3
  %1161 = bitcast float %1160 to i32
  %1162 = and i32 %1161, 255
  %1163 = uitofp i32 %1162 to float
  %1164 = fmul fast float %1163, 0x3F70101020000000
  %1165 = fmul fast float %1164, %1132
  %1166 = fcmp fast olt float %1159, %1165
  br i1 %1166, label %1167, label %1174, !dx.controlflow.hints !65

; <label>:1167                                    ; preds = %1130
  %1168 = fmul fast float %1159, 0x4057091680000000
  %1169 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1170 = fmul fast float %1169, %1079
  %1171 = fmul fast float %1169, %1081
  %1172 = fsub fast float 1.000000e+00, %1169
  %1173 = fmul fast float %1172, %1080
  br label %1174

; <label>:1174                                    ; preds = %1167, %1130
  %1175 = phi float [ %1170, %1167 ], [ %1079, %1130 ]
  %1176 = phi float [ %1173, %1167 ], [ %1080, %1130 ]
  %1177 = phi float [ %1171, %1167 ], [ %1081, %1130 ]
  %1178 = fmul fast float %1159, 0x4028B0A3E0000000
  %1179 = call float @dx.op.unary.f32(i32 22, float %1178)  ; Frc(value)
  %1180 = fmul fast float %1164, %1133
  %1181 = fcmp fast olt float %1179, %1180
  br i1 %1181, label %1182, label %1201, !dx.controlflow.hints !66

; <label>:1182                                    ; preds = %1174
  %1183 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1184 = fmul fast float %1183, %37
  %1185 = call float @dx.op.unary.f32(i32 27, float %1184)  ; Round_ni(value)
  %1186 = fmul fast float %1185, 0x3FD5555560000000
  %1187 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1190 = fcmp fast olt float %1187, 0x3FD51EB860000000
  br i1 %1190, label %1194, label %1191, !dx.controlflow.hints !67

; <label>:1191                                    ; preds = %1182
  %1192 = fcmp fast olt float %1187, 0x3FE51EB860000000
  br i1 %1192, label %1194, label %1193, !dx.controlflow.hints !68

; <label>:1193                                    ; preds = %1191
  br label %1194

; <label>:1194                                    ; preds = %1193, %1191, %1182
  %1195 = phi float [ %1188, %1193 ], [ %1189, %1182 ], [ %1188, %1191 ]
  %1196 = phi float [ %1188, %1193 ], [ %1188, %1182 ], [ %1189, %1191 ]
  %1197 = phi float [ %1189, %1193 ], [ %1188, %1182 ], [ %1188, %1191 ]
  %1198 = fmul fast float %1195, %1175
  %1199 = fmul fast float %1196, %1176
  %1200 = fmul fast float %1197, %1177
  br label %1201

; <label>:1201                                    ; preds = %1194, %1174
  %1202 = phi float [ %1198, %1194 ], [ %1175, %1174 ]
  %1203 = phi float [ %1199, %1194 ], [ %1176, %1174 ]
  %1204 = phi float [ %1200, %1194 ], [ %1177, %1174 ]
  %1205 = fmul fast float %1159, 0x40223EF9E0000000
  %1206 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1207 = fmul fast float %1164, %1128
  %1208 = fmul fast float %1206, %1206
  %1209 = fmul fast float %1208, %1207
  %1210 = fsub fast float 1.000000e+00, %1209
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = fmul fast float %1211, %1126
  br label %1213

; <label>:1213                                    ; preds = %1201, %1125
  %1214 = phi float [ %1202, %1201 ], [ %1079, %1125 ]
  %1215 = phi float [ %1203, %1201 ], [ %1080, %1125 ]
  %1216 = phi float [ %1204, %1201 ], [ %1081, %1125 ]
  %1217 = phi float [ %1212, %1201 ], [ %1126, %1125 ]
  %1218 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %1219 = fcmp fast ogt float %1218, 0.000000e+00
  br i1 %1219, label %1220, label %1269, !dx.controlflow.hints !69

; <label>:1220                                    ; preds = %1213
  %1221 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %1222 = fmul fast float %1218, %19
  %1223 = fmul fast float %1221, %20
  %1224 = call float @dx.op.unary.f32(i32 85, float %1222)  ; DerivFineX(value)
  %1225 = call float @dx.op.unary.f32(i32 86, float %1222)  ; DerivFineY(value)
  %1226 = call float @dx.op.unary.f32(i32 85, float %1223)  ; DerivFineX(value)
  %1227 = call float @dx.op.unary.f32(i32 86, float %1223)  ; DerivFineY(value)
  %1228 = fmul fast float %1227, %1224
  %1229 = fmul fast float %1226, %1225
  %1230 = fsub fast float %1228, %1229
  %1231 = fdiv fast float 1.000000e+00, %1230
  %1232 = fmul fast float %1231, %1227
  %1233 = fmul fast float %1231, %1225
  %1234 = fmul fast float %1231, %1226
  %1235 = fmul fast float %1231, %1224
  %1236 = fmul fast float %1232, %1232
  %1237 = fmul fast float %1234, %1234
  %1238 = fadd fast float %1236, %1237
  %1239 = call float @dx.op.unary.f32(i32 24, float %1238)  ; Sqrt(value)
  %1240 = fmul fast float %1233, %1233
  %1241 = fmul fast float %1235, %1235
  %1242 = fadd fast float %1240, %1241
  %1243 = call float @dx.op.unary.f32(i32 24, float %1242)  ; Sqrt(value)
  %1244 = fmul fast float %1239, %1222
  %1245 = fmul fast float %1243, %1223
  %1246 = fsub fast float %1244, %1239
  %1247 = fsub fast float %1245, %1243
  %1248 = fsub fast float -0.000000e+00, %1244
  %1249 = fsub fast float -0.000000e+00, %1245
  %1250 = call float @dx.op.binary.f32(i32 35, float %1248, float %1246)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 35, float %1249, float %1247)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1250)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1251)  ; FMax(a,b)
  %1254 = fmul fast float %1252, %1252
  %1255 = fmul fast float %1253, %1253
  %1256 = fadd fast float %1255, %1254
  %1257 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1258 = call float @dx.op.binary.f32(i32 35, float %1250, float %1251)  ; FMax(a,b)
  %1259 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1258)  ; FMin(a,b)
  %1260 = fadd fast float %1257, -1.000000e+00
  %1261 = fadd fast float %1260, %1259
  %1262 = fmul fast float %1261, -5.000000e-01
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = fmul fast float %1263, 2.000000e+00
  %1265 = fsub fast float 3.000000e+00, %1264
  %1266 = fmul fast float %1263, %1263
  %1267 = fmul fast float %1266, %1217
  %1268 = fmul fast float %1267, %1265
  br label %1269

; <label>:1269                                    ; preds = %1220, %1213
  %1270 = phi float [ %1268, %1220 ], [ %1217, %1213 ]
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1283 = fmul fast float %1272, %1214
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1215, float %1283)  ; FMad(a,b,c)
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1216, float %1284)  ; FMad(a,b,c)
  %1286 = fmul fast float %1276, %1214
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1215, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1216, float %1287)  ; FMad(a,b,c)
  %1289 = fmul fast float %1280, %1214
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1215, float %1289)  ; FMad(a,b,c)
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1216, float %1290)  ; FMad(a,b,c)
  br i1 %747, label %1292, label %1599, !dx.controlflow.hints !70

; <label>:1292                                    ; preds = %1269
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = bitcast float %1294 to i32
  %1296 = and i32 %1295, 128
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1312, label %1298

; <label>:1298                                    ; preds = %1292
  %1299 = call float @dx.op.unary.f32(i32 24, float %1285)  ; Sqrt(value)
  %1300 = call float @dx.op.unary.f32(i32 24, float %1288)  ; Sqrt(value)
  %1301 = call float @dx.op.unary.f32(i32 24, float %1291)  ; Sqrt(value)
  %1302 = fmul fast float %1299, 9.687500e-01
  %1303 = fmul fast float %1300, 9.687500e-01
  %1304 = fmul fast float %1301, 9.687500e-01
  %1305 = fadd fast float %1302, 1.562500e-02
  %1306 = fadd fast float %1303, 1.562500e-02
  %1307 = fadd fast float %1304, 1.562500e-02
  %1308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %14, float %1305, float %1306, float %1307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  br label %1599

; <label>:1312                                    ; preds = %1292
  %1313 = and i32 %1295, 127
  switch i32 %1313, label %1599 [
    i32 1, label %1314
    i32 2, label %1314
    i32 0, label %1314
    i32 3, label %1344
    i32 4, label %1465
  ]

; <label>:1314                                    ; preds = %1312, %1312, %1312
  %1315 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1316 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1317 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1318 = call float @dx.op.unary.f32(i32 23, float %1315)  ; Log(value)
  %1319 = call float @dx.op.unary.f32(i32 23, float %1316)  ; Log(value)
  %1320 = call float @dx.op.unary.f32(i32 23, float %1317)  ; Log(value)
  %1321 = fmul fast float %1318, 0x3FDAAAAAA0000000
  %1322 = fmul fast float %1319, 0x3FDAAAAAA0000000
  %1323 = fmul fast float %1320, 0x3FDAAAAAA0000000
  %1324 = call float @dx.op.unary.f32(i32 21, float %1321)  ; Exp(value)
  %1325 = call float @dx.op.unary.f32(i32 21, float %1322)  ; Exp(value)
  %1326 = call float @dx.op.unary.f32(i32 21, float %1323)  ; Exp(value)
  %1327 = fmul fast float %1324, 0x3FF0E147A0000000
  %1328 = fmul fast float %1325, 0x3FF0E147A0000000
  %1329 = fmul fast float %1326, 0x3FF0E147A0000000
  %1330 = fadd fast float %1327, 0xBFAC28F5C0000000
  %1331 = fadd fast float %1328, 0xBFAC28F5C0000000
  %1332 = fadd fast float %1329, 0xBFAC28F5C0000000
  %1333 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1334 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1337 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  %1338 = fmul fast float %1336, %1333
  %1339 = fmul fast float %1336, %1334
  %1340 = fmul fast float %1336, %1335
  %1341 = fadd fast float %1338, %1337
  %1342 = fadd fast float %1339, %1337
  %1343 = fadd fast float %1340, %1337
  br label %1599

; <label>:1344                                    ; preds = %1312
  %1345 = fmul fast float %1285, 0x4163D57C00000000
  %1346 = fmul fast float %1288, 0x4163D57C00000000
  %1347 = fmul fast float %1291, 0x4163D57C00000000
  %1348 = fadd fast float %1345, 9.999980e+05
  %1349 = fadd fast float %1346, 9.999980e+05
  %1350 = fadd fast float %1347, 9.999980e+05
  %1351 = fmul fast float %1348, %1285
  %1352 = fmul fast float %1349, %1288
  %1353 = fmul fast float %1350, %1291
  %1354 = fadd fast float %1351, 0xC0AFE17A60000000
  %1355 = fadd fast float %1352, 0xC0AFE17A60000000
  %1356 = fadd fast float %1353, 0xC0AFE17A60000000
  %1357 = fmul fast float %1354, %1285
  %1358 = fmul fast float %1355, %1288
  %1359 = fmul fast float %1356, %1291
  %1360 = fmul fast float %1285, 0x40F753C340000000
  %1361 = fmul fast float %1288, 0x40F753C340000000
  %1362 = fmul fast float %1291, 0x40F753C340000000
  %1363 = fsub fast float 9.999990e+06, %1360
  %1364 = fsub fast float 9.999990e+06, %1361
  %1365 = fsub fast float 9.999990e+06, %1362
  %1366 = fmul fast float %1363, %1285
  %1367 = fmul fast float %1364, %1288
  %1368 = fmul fast float %1365, %1291
  %1369 = fadd fast float %1366, 0x4136D1DD80000000
  %1370 = fadd fast float %1367, 0x4136D1DD80000000
  %1371 = fadd fast float %1368, 0x4136D1DD80000000
  %1372 = fmul fast float %1369, %1285
  %1373 = fmul fast float %1370, %1288
  %1374 = fmul fast float %1371, %1291
  %1375 = fadd fast float %1372, 1.000000e+00
  %1376 = fadd fast float %1373, 1.000000e+00
  %1377 = fadd fast float %1374, 1.000000e+00
  %1378 = fdiv fast float %1357, %1375
  %1379 = fdiv fast float %1358, %1376
  %1380 = fdiv fast float %1359, %1377
  %1381 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1382 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1383 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1385 = fmul fast float %1381, 0x3FE413A920000000
  %1386 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %1382, float %1385)  ; FMad(a,b,c)
  %1387 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %1383, float %1386)  ; FMad(a,b,c)
  %1388 = fmul fast float %1381, 0x3FB1B089A0000000
  %1389 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %1382, float %1388)  ; FMad(a,b,c)
  %1390 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %1383, float %1389)  ; FMad(a,b,c)
  %1391 = fmul fast float %1381, 0x3F90CB2960000000
  %1392 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %1382, float %1391)  ; FMad(a,b,c)
  %1393 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %1383, float %1392)  ; FMad(a,b,c)
  %1394 = fmul fast float %1387, %1384
  %1395 = fmul fast float %1390, %1384
  %1396 = fmul fast float %1393, %1384
  %1397 = fmul fast float %1394, 0x3F847AE140000000
  %1398 = fmul fast float %1395, 0x3F847AE140000000
  %1399 = fmul fast float %1396, 0x3F847AE140000000
  %1400 = fmul fast float %1394, 0x40B4D2F520000000
  %1401 = fmul fast float %1395, 0x40B4D2F520000000
  %1402 = fmul fast float %1396, 0x40B4D2F520000000
  %1403 = fadd fast float %1400, 0x41869ECF20000000
  %1404 = fadd fast float %1401, 0x41869ECF20000000
  %1405 = fadd fast float %1402, 0x41869ECF20000000
  %1406 = fmul fast float %1403, %1397
  %1407 = fmul fast float %1404, %1398
  %1408 = fmul fast float %1405, %1399
  %1409 = fadd fast float %1406, 0x417BB79C60000000
  %1410 = fadd fast float %1407, 0x417BB79C60000000
  %1411 = fadd fast float %1408, 0x417BB79C60000000
  %1412 = fmul fast float %1409, %1397
  %1413 = fmul fast float %1410, %1398
  %1414 = fmul fast float %1411, %1399
  %1415 = fadd fast float %1412, 0x41218DE180000000
  %1416 = fadd fast float %1413, 0x41218DE180000000
  %1417 = fadd fast float %1414, 0x41218DE180000000
  %1418 = fmul fast float %1415, %1397
  %1419 = fmul fast float %1416, %1398
  %1420 = fmul fast float %1417, %1399
  %1421 = fadd fast float %1418, 0x4077F174E0000000
  %1422 = fadd fast float %1419, 0x4077F174E0000000
  %1423 = fadd fast float %1420, 0x4077F174E0000000
  %1424 = fmul fast float %1421, %1397
  %1425 = fmul fast float %1422, %1398
  %1426 = fmul fast float %1423, %1399
  %1427 = fadd fast float %1424, 0x3F3FF79B80000000
  %1428 = fadd fast float %1425, 0x3F3FF79B80000000
  %1429 = fadd fast float %1426, 0x3F3FF79B80000000
  %1430 = fmul fast float %1394, 0x412442D320000000
  %1431 = fmul fast float %1395, 0x412442D320000000
  %1432 = fmul fast float %1396, 0x412442D320000000
  %1433 = fadd fast float %1430, 0x419385D5C0000000
  %1434 = fadd fast float %1431, 0x419385D5C0000000
  %1435 = fadd fast float %1432, 0x419385D5C0000000
  %1436 = fmul fast float %1433, %1397
  %1437 = fmul fast float %1434, %1398
  %1438 = fmul fast float %1435, %1399
  %1439 = fadd fast float %1436, 4.182885e+06
  %1440 = fadd fast float %1437, 4.182885e+06
  %1441 = fadd fast float %1438, 4.182885e+06
  %1442 = fmul fast float %1439, %1397
  %1443 = fmul fast float %1440, %1398
  %1444 = fmul fast float %1441, %1399
  %1445 = fadd fast float %1442, 0x40C4D633C0000000
  %1446 = fadd fast float %1443, 0x40C4D633C0000000
  %1447 = fadd fast float %1444, 0x40C4D633C0000000
  %1448 = fmul fast float %1445, %1397
  %1449 = fmul fast float %1446, %1398
  %1450 = fmul fast float %1447, %1399
  %1451 = fadd fast float %1448, 1.000000e+00
  %1452 = fadd fast float %1449, 1.000000e+00
  %1453 = fadd fast float %1450, 1.000000e+00
  %1454 = fdiv fast float %1427, %1451
  %1455 = fdiv fast float %1428, %1452
  %1456 = fdiv fast float %1429, %1453
  %1457 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1458 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  %1459 = fmul fast float %1457, %1454
  %1460 = fmul fast float %1457, %1455
  %1461 = fmul fast float %1457, %1456
  %1462 = fadd fast float %1459, %1458
  %1463 = fadd fast float %1460, %1458
  %1464 = fadd fast float %1461, %1458
  br label %1599

; <label>:1465                                    ; preds = %1312
  %1466 = fmul fast float %1285, 0x4163D57C00000000
  %1467 = fmul fast float %1288, 0x4163D57C00000000
  %1468 = fmul fast float %1291, 0x4163D57C00000000
  %1469 = fadd fast float %1466, 9.999980e+05
  %1470 = fadd fast float %1467, 9.999980e+05
  %1471 = fadd fast float %1468, 9.999980e+05
  %1472 = fmul fast float %1469, %1285
  %1473 = fmul fast float %1470, %1288
  %1474 = fmul fast float %1471, %1291
  %1475 = fadd fast float %1472, 0xC0AFE17A60000000
  %1476 = fadd fast float %1473, 0xC0AFE17A60000000
  %1477 = fadd fast float %1474, 0xC0AFE17A60000000
  %1478 = fmul fast float %1475, %1285
  %1479 = fmul fast float %1476, %1288
  %1480 = fmul fast float %1477, %1291
  %1481 = fmul fast float %1285, 0x40F753C340000000
  %1482 = fmul fast float %1288, 0x40F753C340000000
  %1483 = fmul fast float %1291, 0x40F753C340000000
  %1484 = fsub fast float 9.999990e+06, %1481
  %1485 = fsub fast float 9.999990e+06, %1482
  %1486 = fsub fast float 9.999990e+06, %1483
  %1487 = fmul fast float %1484, %1285
  %1488 = fmul fast float %1485, %1288
  %1489 = fmul fast float %1486, %1291
  %1490 = fadd fast float %1487, 0x4136D1DD80000000
  %1491 = fadd fast float %1488, 0x4136D1DD80000000
  %1492 = fadd fast float %1489, 0x4136D1DD80000000
  %1493 = fmul fast float %1490, %1285
  %1494 = fmul fast float %1491, %1288
  %1495 = fmul fast float %1492, %1291
  %1496 = fadd fast float %1493, 1.000000e+00
  %1497 = fadd fast float %1494, 1.000000e+00
  %1498 = fadd fast float %1495, 1.000000e+00
  %1499 = fdiv fast float %1478, %1496
  %1500 = fdiv fast float %1479, %1497
  %1501 = fdiv fast float %1480, %1498
  %1502 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1503 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1504 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1505 = extractvalue %dx.types.CBufRet.f32 %1293, 1
  %1506 = fmul fast float %1502, 0x3FEA519BC0000000
  %1507 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1503, float %1506)  ; FMad(a,b,c)
  %1508 = fmul fast float %1502, 0x3FA0FED480000000
  %1509 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1503, float %1508)  ; FMad(a,b,c)
  %1510 = fmul fast float %1502, 0x3F917E1C00000000
  %1511 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1503, float %1510)  ; FMad(a,b,c)
  %1512 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1504, float %1511)  ; FMad(a,b,c)
  %1513 = call float @dx.op.binary.f32(i32 35, float %1502, float %1503)  ; FMax(a,b)
  %1514 = call float @dx.op.binary.f32(i32 35, float %1513, float %1504)  ; FMax(a,b)
  %1515 = fadd fast float %1514, -1.000000e+00
  %1516 = fmul fast float %1515, 2.500000e-01
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1518 = fsub fast float 1.000000e+00, %1517
  %1519 = fmul fast float %1518, %1507
  %1520 = fmul fast float %1518, %1509
  %1521 = fmul fast float %1518, %1512
  %1522 = fmul fast float %1517, %1502
  %1523 = fmul fast float %1517, %1503
  %1524 = fmul fast float %1517, %1504
  %1525 = fadd fast float %1519, %1522
  %1526 = fadd fast float %1520, %1523
  %1527 = fadd fast float %1521, %1524
  %1528 = fmul fast float %1525, %1505
  %1529 = fmul fast float %1526, %1505
  %1530 = fmul fast float %1527, %1505
  %1531 = fmul fast float %1528, 0x3F847AE140000000
  %1532 = fmul fast float %1529, 0x3F847AE140000000
  %1533 = fmul fast float %1530, 0x3F847AE140000000
  %1534 = fmul fast float %1528, 0x40B4D2F520000000
  %1535 = fmul fast float %1529, 0x40B4D2F520000000
  %1536 = fmul fast float %1530, 0x40B4D2F520000000
  %1537 = fadd fast float %1534, 0x41869ECF20000000
  %1538 = fadd fast float %1535, 0x41869ECF20000000
  %1539 = fadd fast float %1536, 0x41869ECF20000000
  %1540 = fmul fast float %1537, %1531
  %1541 = fmul fast float %1538, %1532
  %1542 = fmul fast float %1539, %1533
  %1543 = fadd fast float %1540, 0x417BB79C60000000
  %1544 = fadd fast float %1541, 0x417BB79C60000000
  %1545 = fadd fast float %1542, 0x417BB79C60000000
  %1546 = fmul fast float %1543, %1531
  %1547 = fmul fast float %1544, %1532
  %1548 = fmul fast float %1545, %1533
  %1549 = fadd fast float %1546, 0x41218DE180000000
  %1550 = fadd fast float %1547, 0x41218DE180000000
  %1551 = fadd fast float %1548, 0x41218DE180000000
  %1552 = fmul fast float %1549, %1531
  %1553 = fmul fast float %1550, %1532
  %1554 = fmul fast float %1551, %1533
  %1555 = fadd fast float %1552, 0x4077F174E0000000
  %1556 = fadd fast float %1553, 0x4077F174E0000000
  %1557 = fadd fast float %1554, 0x4077F174E0000000
  %1558 = fmul fast float %1555, %1531
  %1559 = fmul fast float %1556, %1532
  %1560 = fmul fast float %1557, %1533
  %1561 = fadd fast float %1558, 0x3F3FF79B80000000
  %1562 = fadd fast float %1559, 0x3F3FF79B80000000
  %1563 = fadd fast float %1560, 0x3F3FF79B80000000
  %1564 = fmul fast float %1528, 0x412442D320000000
  %1565 = fmul fast float %1529, 0x412442D320000000
  %1566 = fmul fast float %1530, 0x412442D320000000
  %1567 = fadd fast float %1564, 0x419385D5C0000000
  %1568 = fadd fast float %1565, 0x419385D5C0000000
  %1569 = fadd fast float %1566, 0x419385D5C0000000
  %1570 = fmul fast float %1567, %1531
  %1571 = fmul fast float %1568, %1532
  %1572 = fmul fast float %1569, %1533
  %1573 = fadd fast float %1570, 4.182885e+06
  %1574 = fadd fast float %1571, 4.182885e+06
  %1575 = fadd fast float %1572, 4.182885e+06
  %1576 = fmul fast float %1573, %1531
  %1577 = fmul fast float %1574, %1532
  %1578 = fmul fast float %1575, %1533
  %1579 = fadd fast float %1576, 0x40C4D633C0000000
  %1580 = fadd fast float %1577, 0x40C4D633C0000000
  %1581 = fadd fast float %1578, 0x40C4D633C0000000
  %1582 = fmul fast float %1579, %1531
  %1583 = fmul fast float %1580, %1532
  %1584 = fmul fast float %1581, %1533
  %1585 = fadd fast float %1582, 1.000000e+00
  %1586 = fadd fast float %1583, 1.000000e+00
  %1587 = fadd fast float %1584, 1.000000e+00
  %1588 = fdiv fast float %1561, %1585
  %1589 = fdiv fast float %1562, %1586
  %1590 = fdiv fast float %1563, %1587
  %1591 = extractvalue %dx.types.CBufRet.f32 %1293, 2
  %1592 = extractvalue %dx.types.CBufRet.f32 %1293, 3
  %1593 = fmul fast float %1591, %1588
  %1594 = fmul fast float %1591, %1589
  %1595 = fmul fast float %1591, %1590
  %1596 = fadd fast float %1593, %1592
  %1597 = fadd fast float %1594, %1592
  %1598 = fadd fast float %1595, %1592
  br label %1599

; <label>:1599                                    ; preds = %1465, %1344, %1314, %1312, %1298, %1269
  %1600 = phi float [ %1285, %1269 ], [ %1309, %1298 ], [ %1285, %1312 ], [ %1596, %1465 ], [ %1462, %1344 ], [ %1341, %1314 ]
  %1601 = phi float [ %1288, %1269 ], [ %1310, %1298 ], [ %1288, %1312 ], [ %1597, %1465 ], [ %1463, %1344 ], [ %1342, %1314 ]
  %1602 = phi float [ %1291, %1269 ], [ %1311, %1298 ], [ %1291, %1312 ], [ %1598, %1465 ], [ %1464, %1344 ], [ %1343, %1314 ]
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1606 = select i1 %222, float %1604, float %1605
  %1607 = fmul fast float %1606, %1270
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 0
  %1610 = extractvalue %dx.types.CBufRet.f32 %1608, 2
  %1611 = call float @dx.op.unary.f32(i32 23, float %1607)  ; Log(value)
  %1612 = fmul fast float %1611, %1610
  %1613 = call float @dx.op.unary.f32(i32 21, float %1612)  ; Exp(value)
  %1614 = fmul fast float %1613, %1609
  %1615 = extractvalue %dx.types.CBufRet.f32 %1608, 1
  %1616 = extractvalue %dx.types.CBufRet.f32 %1608, 3
  %1617 = fmul fast float %1611, %1616
  %1618 = call float @dx.op.unary.f32(i32 21, float %1617)  ; Exp(value)
  %1619 = fmul fast float %1618, %1615
  %1620 = fadd fast float %1619, %1614
  %1621 = fmul fast float %1620, %1600
  %1622 = fmul fast float %1620, %1601
  %1623 = fmul fast float %1620, %1602
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1622)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1623)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1620)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!27}
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !19, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!22 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 288, null}
!23 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!24 = !{!25, !26}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!27 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!28 = !{void ()* @ps_main, !"ps_main", !29, !4, !51}
!29 = !{!30, !49, null}
!30 = !{!31, !34, !36, !37, !39, !41, !43, !45, !47}
!31 = !{i32 0, !"SV_Position", i8 9, i8 3, !32, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!32 = !{i32 0}
!33 = !{i32 3, i32 3}
!34 = !{i32 1, !"COLOR", i8 9, i8 0, !32, i8 2, i32 1, i8 4, i32 1, i8 0, !35}
!35 = !{i32 3, i32 15}
!36 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 2, i8 0, !33}
!37 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 2, !33}
!38 = !{i32 2}
!39 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 3, i8 0, !33}
!40 = !{i32 3}
!41 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 3, i8 2, !33}
!42 = !{i32 4}
!43 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 4, i8 0, !33}
!44 = !{i32 5}
!45 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 4, i8 2, !33}
!46 = !{i32 6}
!47 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 5, i8 0, !33}
!48 = !{i32 1}
!49 = !{!50}
!50 = !{i32 0, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 0, i8 0, !35}
!51 = !{i32 0, i64 16}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

