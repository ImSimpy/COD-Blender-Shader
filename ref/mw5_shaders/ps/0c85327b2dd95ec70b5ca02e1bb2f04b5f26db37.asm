;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2     zw        2     NONE   float     zw
; TEXCOORD                 3   xy          3     NONE   float       
; TEXCOORD                 4     zw        3     NONE   float       
; TEXCOORD                 5   xy          4     NONE   float       
; TEXCOORD                 6     zw        4     NONE   float       
; TEXCOORD                 1   xy          5     NONE   float   xy  
; TEXCOORD                 7     zw        5     NONE   float     zw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 03fe481a7337861f75920fa247beebec
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
; TEXCOORD                 7                 linear       
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
;   [176 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
;                                   sampler      NA          NA      S4             s5     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t69,space2     1
;                                   texture     f32          2d      T2     t73,space2     1
;                                   texture     f32          2d      T3     t70,space2     1
;                                   texture    byte         r/o      T4     t15,space1     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6             t1     1
;                                   texture     f32          2d      T7             t2     1
;                                   texture     f32          3d      T8     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21, 22, 23 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11, 20, 21 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = fsub fast float %31, %34
  %37 = fsub fast float %32, %35
  %38 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %39 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %40 = fmul fast float %36, %38
  %41 = fmul fast float %37, %39
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = fmul fast float %40, %43
  %46 = fmul fast float %41, %44
  %47 = fptoui float %45 to i32
  %48 = fptoui float %46 to i32
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 1
  %51 = shl i32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.i32 %49, 3
  %53 = add i32 %51, %52
  %54 = lshr i32 %48, 2
  %55 = extractvalue %dx.types.CBufRet.i32 %49, 2
  %56 = mul i32 %54, %55
  %57 = lshr i32 %47, 3
  %58 = add i32 %53, %57
  %59 = add i32 %58, %56
  %60 = shl i32 %59, 2
  %61 = shl i32 %48, 3
  %62 = and i32 %61, 24
  %63 = and i32 %47, 7
  %64 = or i32 %62, %63
  %65 = shl i32 1, %64
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = and i32 %67, %65
  %69 = icmp ne i32 %68, 0
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %73 = call float @dx.op.binary.f32(i32 35, float %40, float %72)  ; FMax(a,b)
  %74 = call float @dx.op.binary.f32(i32 36, float %73, float %71)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 36, float %40, float %72)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 35, float %75, float %74)  ; FMax(a,b)
  %77 = fcmp fast oeq float %40, %76
  %78 = extractvalue %dx.types.CBufRet.f32 %70, 3
  %79 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %80 = call float @dx.op.binary.f32(i32 35, float %41, float %79)  ; FMax(a,b)
  %81 = call float @dx.op.binary.f32(i32 36, float %80, float %78)  ; FMin(a,b)
  %82 = call float @dx.op.binary.f32(i32 36, float %41, float %79)  ; FMin(a,b)
  %83 = call float @dx.op.binary.f32(i32 35, float %82, float %81)  ; FMax(a,b)
  %84 = fcmp fast oeq float %41, %83
  %85 = and i1 %77, %84
  %86 = select i1 %85, float 0.000000e+00, float 1.000000e+00
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %89 = fcmp fast une float %88, 0.000000e+00
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %91 = select i1 %89, float %86, float %90
  %92 = fcmp fast oeq float %91, %90
  %93 = and i1 %69, %92
  br i1 %93, label %95, label %94, !dx.controlflow.hints !54

; <label>:94                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %95

; <label>:95                                      ; preds = %94, %0
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %98 = fcmp fast ogt float %97, 0.000000e+00
  br i1 %98, label %99, label %149, !dx.controlflow.hints !55

; <label>:99                                      ; preds = %95
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %102 = fmul fast float %101, 1.000000e+01
  %103 = call float @dx.op.unary.f32(i32 27, float %102)  ; Round_ni(value)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = fmul fast float %105, %31
  %108 = fmul fast float %106, %32
  %109 = call float @dx.op.unary.f32(i32 27, float %107)  ; Round_ni(value)
  %110 = call float @dx.op.unary.f32(i32 27, float %108)  ; Round_ni(value)
  %111 = fmul fast float %103, 0x4002B851E0000000
  %112 = call float @dx.op.unary.f32(i32 22, float %111)  ; Frc(value)
  %113 = fadd fast float %112, 0x3FB99999A0000000
  %114 = fadd fast float %113, %109
  %115 = fadd fast float %113, %110
  %116 = fmul fast float %114, 0x3FE1BEDF00000000
  %117 = call float @dx.op.unary.f32(i32 22, float %116)  ; Frc(value)
  %118 = fmul fast float %114, %117
  %119 = fadd fast float %118, %115
  %120 = fmul fast float %115, 0x3FD3BEBE20000000
  %121 = call float @dx.op.unary.f32(i32 22, float %120)  ; Frc(value)
  %122 = fmul fast float %115, %121
  %123 = fadd fast float %122, %114
  %124 = fmul fast float %119, %123
  %125 = call float @dx.op.unary.f32(i32 22, float %124)  ; Frc(value)
  %126 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %127 = bitcast float %126 to i32
  %128 = and i32 %127, 255
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %125, 0x4085373340000000
  %131 = call float @dx.op.unary.f32(i32 22, float %130)  ; Frc(value)
  %132 = fmul fast float %129, 0x3F6CE9B6A0000000
  %133 = fcmp fast olt float %131, %132
  br i1 %133, label %134, label %149, !dx.controlflow.hints !56

; <label>:134                                     ; preds = %99
  %135 = fdiv fast float %131, %132
  %136 = fmul fast float %135, 2.000000e+00
  %137 = fadd fast float %136, -1.000000e+00
  %138 = lshr i32 %127, 8
  %139 = and i32 %138, 255
  %140 = uitofp i32 %139 to float
  %141 = call float @dx.op.unary.f32(i32 83, float %25)  ; DerivCoarseX(value)
  %142 = call float @dx.op.unary.f32(i32 83, float %26)  ; DerivCoarseX(value)
  %143 = fmul fast float %137, %141
  %144 = fmul fast float %143, %140
  %145 = fmul fast float %142, %137
  %146 = fmul fast float %145, %140
  %147 = fadd fast float %144, %25
  %148 = fadd fast float %146, %26
  br label %149

; <label>:149                                     ; preds = %134, %99, %95
  %150 = phi float [ %147, %134 ], [ %25, %99 ], [ %25, %95 ]
  %151 = phi float [ %148, %134 ], [ %26, %99 ], [ %26, %95 ]
  %152 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4, i32 0)  ; GetDimensions(handle,mipLevel)
  %153 = extractvalue %dx.types.Dimensions %152, 0
  %154 = sitofp i32 %153 to float
  %155 = extractvalue %dx.types.Dimensions %152, 1
  %156 = sitofp i32 %155 to float
  %157 = fdiv fast float 5.000000e-01, %154
  %158 = fdiv fast float 5.000000e-01, %156
  %159 = fsub fast float 1.000000e+00, %157
  %160 = call float @dx.op.binary.f32(i32 35, float %150, float %157)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 36, float %160, float %159)  ; FMin(a,b)
  %162 = fsub fast float 1.000000e+00, %158
  %163 = call float @dx.op.binary.f32(i32 35, float %151, float %158)  ; FMax(a,b)
  %164 = call float @dx.op.binary.f32(i32 36, float %163, float %162)  ; FMin(a,b)
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %167 = bitcast float %166 to i32
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  %170 = select i1 %169, float %161, float %150
  %171 = and i32 %167, 2
  %172 = icmp ne i32 %171, 0
  %173 = select i1 %172, float %164, float %151
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %176 = bitcast float %175 to i32
  %177 = and i32 %176, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179, !dx.controlflow.hints !57

; <label>:179                                     ; preds = %149
  %180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %10, float %170, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  br label %187

; <label>:182                                     ; preds = %149
  %183 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %184 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4, %dx.types.Handle %14, float %183, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  br label %187

; <label>:187                                     ; preds = %182, %179
  %188 = phi float [ %181, %179 ], [ %186, %182 ]
  %189 = fmul fast float %188, 2.000000e+00
  %190 = fadd fast float %189, -1.000000e+00
  %191 = call float @dx.op.unary.f32(i32 83, float %190)  ; DerivCoarseX(value)
  %192 = call float @dx.op.unary.f32(i32 84, float %190)  ; DerivCoarseY(value)
  %193 = fmul fast float %191, %191
  %194 = fmul fast float %192, %192
  %195 = fadd fast float %194, %193
  %196 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %197 = fmul fast float %196, 2.000000e+00
  %198 = fadd fast float %196, %190
  %199 = fdiv fast float %198, %197
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fmul fast float %200, 2.000000e+00
  %202 = fsub fast float 3.000000e+00, %201
  %203 = fmul fast float %200, %200
  %204 = fmul fast float %203, %30
  %205 = fmul fast float %204, %202
  %206 = fcmp fast oeq float %91, 0.000000e+00
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %209 = fcmp fast une float %208, 0.000000e+00
  %210 = and i1 %206, %209
  br i1 %210, label %211, label %227

; <label>:211                                     ; preds = %187
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %13, float %40, float %41, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fsub fast float 1.000000e+00, %213
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 222)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %220 = fdiv fast float %214, %219
  %221 = fsub fast float %220, %216
  %222 = fmul fast float %221, %217
  %223 = call float @dx.op.unary.f32(i32 7, float %222)  ; Saturate(value)
  %224 = fsub fast float 1.000000e+00, %223
  %225 = fmul fast float %224, %224
  %226 = fmul fast float %225, %205
  br label %227

; <label>:227                                     ; preds = %211, %187
  %228 = phi float [ %226, %211 ], [ %205, %187 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %231 = bitcast float %230 to i32
  %232 = and i32 %231, 512
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %328, label %234

; <label>:234                                     ; preds = %227
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %237 = bitcast float %236 to i32
  %238 = and i32 %237, 65535
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %237, 16
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %243 = bitcast float %242 to i32
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = and i32 %231, 16
  %249 = icmp ne i32 %248, 0
  %250 = fcmp fast ogt float %239, 0.000000e+00
  %251 = fcmp fast ogt float %241, 0.000000e+00
  %252 = and i1 %250, %251
  %253 = fcmp fast ogt float %245, 0.000000e+00
  br i1 %252, label %254, label %314

; <label>:254                                     ; preds = %234
  br i1 %253, label %255, label %263

; <label>:255                                     ; preds = %254
  %256 = fmul fast float %241, %24
  %257 = fmul fast float %239, %23
  %258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %257, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fsub fast float 1.000000e+00, %259
  %261 = select i1 %249, float %260, float %259
  %262 = fmul fast float %261, %245
  br label %263

; <label>:263                                     ; preds = %255, %254
  %264 = phi float [ %262, %255 ], [ 0.000000e+00, %254 ]
  %265 = fadd fast float %264, %247
  %266 = call float @dx.op.unary.f32(i32 7, float %265)  ; Saturate(value)
  br i1 %253, label %267, label %277

; <label>:267                                     ; preds = %263
  %268 = fmul fast float %241, %24
  %269 = fsub fast float 1.000000e+00, %23
  %270 = fmul fast float %239, %269
  %271 = fsub fast float 1.000000e+00, %270
  %272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %271, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 1
  %274 = fsub fast float 1.000000e+00, %273
  %275 = select i1 %249, float %274, float %273
  %276 = fmul fast float %275, %245
  br label %277

; <label>:277                                     ; preds = %267, %263
  %278 = phi float [ %276, %267 ], [ 0.000000e+00, %263 ]
  %279 = fadd fast float %278, %247
  %280 = call float @dx.op.unary.f32(i32 7, float %279)  ; Saturate(value)
  %281 = fmul fast float %280, %266
  br i1 %253, label %282, label %294

; <label>:282                                     ; preds = %277
  %283 = fsub fast float 1.000000e+00, %24
  %284 = fmul fast float %241, %283
  %285 = fsub fast float 1.000000e+00, %284
  %286 = fsub fast float 1.000000e+00, %23
  %287 = fmul fast float %239, %286
  %288 = fsub fast float 1.000000e+00, %287
  %289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %288, float %285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 2
  %291 = fsub fast float 1.000000e+00, %290
  %292 = select i1 %249, float %291, float %290
  %293 = fmul fast float %292, %245
  br label %294

; <label>:294                                     ; preds = %282, %277
  %295 = phi float [ %293, %282 ], [ 0.000000e+00, %277 ]
  %296 = fadd fast float %295, %247
  %297 = call float @dx.op.unary.f32(i32 7, float %296)  ; Saturate(value)
  %298 = fmul fast float %281, %297
  br i1 %253, label %299, label %309

; <label>:299                                     ; preds = %294
  %300 = fsub fast float 1.000000e+00, %24
  %301 = fmul fast float %241, %300
  %302 = fsub fast float 1.000000e+00, %301
  %303 = fmul fast float %239, %23
  %304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %303, float %302, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 3
  %306 = fsub fast float 1.000000e+00, %305
  %307 = select i1 %249, float %306, float %305
  %308 = fmul fast float %307, %245
  br label %309

; <label>:309                                     ; preds = %299, %294
  %310 = phi float [ %308, %299 ], [ 0.000000e+00, %294 ]
  %311 = fadd fast float %310, %247
  %312 = call float @dx.op.unary.f32(i32 7, float %311)  ; Saturate(value)
  %313 = fmul fast float %298, %312
  br label %325

; <label>:314                                     ; preds = %234
  br i1 %253, label %315, label %321

; <label>:315                                     ; preds = %314
  %316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %11, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = fsub fast float 1.000000e+00, %317
  %319 = select i1 %249, float %318, float %317
  %320 = fmul fast float %319, %245
  br label %321

; <label>:321                                     ; preds = %315, %314
  %322 = phi float [ %320, %315 ], [ 0.000000e+00, %314 ]
  %323 = fadd fast float %322, %247
  %324 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  br label %325

; <label>:325                                     ; preds = %321, %309
  %326 = phi float [ %313, %309 ], [ %324, %321 ]
  %327 = fmul fast float %326, %228
  br label %328

; <label>:328                                     ; preds = %325, %227
  %329 = phi float [ %327, %325 ], [ %228, %227 ]
  %330 = call float @dx.op.binary.f32(i32 35, float %329, float 0.000000e+00)  ; FMax(a,b)
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 3
  %333 = bitcast float %332 to i32
  %334 = and i32 %333, 1
  %335 = icmp eq i32 %334, 0
  %336 = and i32 %333, 4
  %337 = icmp eq i32 %336, 0
  br i1 %335, label %411, label %338, !dx.controlflow.hints !58

; <label>:338                                     ; preds = %328
  %339 = and i32 %333, 2
  %340 = icmp eq i32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %344 = fmul fast float %341, %27
  %345 = fmul fast float %342, %28
  %346 = fmul fast float %343, %29
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = fmul fast float %348, %344
  %350 = fmul fast float %348, %345
  %351 = fmul fast float %348, %346
  br i1 %340, label %411, label %352, !dx.controlflow.hints !59

; <label>:352                                     ; preds = %338
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = call float @dx.op.dot3.f32(i32 55, float %349, float %350, float %351, float %356, float %357, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = call float @dx.op.dot3.f32(i32 55, float %349, float %350, float %351, float %361, float %362, float %363)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = call float @dx.op.dot3.f32(i32 55, float %349, float %350, float %351, float %366, float %367, float %368)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = fmul fast float %359, %354
  %371 = fmul fast float %364, %354
  %372 = fmul fast float %369, %354
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %375 = fmul fast float %370, %374
  %376 = fmul fast float %371, %374
  %377 = fmul fast float %372, %374
  %378 = fadd fast float %375, 9.765625e-04
  %379 = fadd fast float %376, 9.765625e-04
  %380 = fadd fast float %377, 9.765625e-04
  %381 = call float @dx.op.unary.f32(i32 23, float %378)  ; Log(value)
  %382 = call float @dx.op.unary.f32(i32 23, float %379)  ; Log(value)
  %383 = call float @dx.op.unary.f32(i32 23, float %380)  ; Log(value)
  %384 = fadd fast float %381, 1.000000e+01
  %385 = fadd fast float %382, 1.000000e+01
  %386 = fadd fast float %383, 1.000000e+01
  %387 = fmul fast float %384, 0x3FA99999A0000000
  %388 = fmul fast float %385, 0x3FA99999A0000000
  %389 = fmul fast float %386, 0x3FA99999A0000000
  %390 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %391 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %392 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %397 = fmul fast float %394, %390
  %398 = fmul fast float %395, %391
  %399 = fmul fast float %396, %392
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = fadd fast float %397, %401
  %405 = fadd fast float %398, %402
  %406 = fadd fast float %399, %403
  %407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %404, float %405, float %406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  br label %411

; <label>:411                                     ; preds = %352, %338, %328
  %412 = phi float [ %408, %352 ], [ %27, %328 ], [ %349, %338 ]
  %413 = phi float [ %409, %352 ], [ %28, %328 ], [ %350, %338 ]
  %414 = phi float [ %410, %352 ], [ %29, %328 ], [ %351, %338 ]
  %415 = fcmp fast oeq float %330, 0.000000e+00
  br i1 %415, label %416, label %417, !dx.controlflow.hints !60

; <label>:416                                     ; preds = %411
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %417

; <label>:417                                     ; preds = %416, %411
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %12, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 3
  %422 = bitcast float %421 to i32
  %423 = and i32 %422, 65535
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = fcmp fast une float %424, 0.000000e+00
  %426 = select i1 %425, float 0.000000e+00, float 1.000000e+00
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 3
  %429 = fmul fast float %428, %419
  %430 = fmul fast float %429, %426
  %431 = fsub fast float 1.000000e+00, %430
  %432 = fmul fast float %431, %412
  %433 = fmul fast float %431, %413
  %434 = fmul fast float %431, %414
  %435 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %436 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %437 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %438 = fmul fast float %435, %429
  %439 = fmul fast float %436, %429
  %440 = fmul fast float %437, %429
  %441 = fadd fast float %432, %438
  %442 = fadd fast float %433, %439
  %443 = fadd fast float %434, %440
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %446 = fcmp fast ogt float %445, 0.000000e+00
  br i1 %446, label %447, label %513, !dx.controlflow.hints !61

; <label>:447                                     ; preds = %417
  %448 = fcmp fast oeq float %445, 2.000000e+00
  br i1 %448, label %449, label %501, !dx.controlflow.hints !62

; <label>:449                                     ; preds = %447
  %450 = fcmp fast ole float %441, 0x3F69A5C380000000
  %451 = fcmp fast ole float %442, 0x3F69A5C380000000
  %452 = fcmp fast ole float %443, 0x3F69A5C380000000
  %453 = fmul fast float %441, 0x4029D70A40000000
  %454 = fmul fast float %442, 0x4029D70A40000000
  %455 = fmul fast float %443, 0x4029D70A40000000
  %456 = call float @dx.op.unary.f32(i32 23, float %441)  ; Log(value)
  %457 = call float @dx.op.unary.f32(i32 23, float %442)  ; Log(value)
  %458 = call float @dx.op.unary.f32(i32 23, float %443)  ; Log(value)
  %459 = fmul fast float %456, 0x3FDAAAAAA0000000
  %460 = fmul fast float %457, 0x3FDAAAAAA0000000
  %461 = fmul fast float %458, 0x3FDAAAAAA0000000
  %462 = call float @dx.op.unary.f32(i32 21, float %459)  ; Exp(value)
  %463 = call float @dx.op.unary.f32(i32 21, float %460)  ; Exp(value)
  %464 = call float @dx.op.unary.f32(i32 21, float %461)  ; Exp(value)
  %465 = fmul fast float %462, 0x3FF0E147A0000000
  %466 = fmul fast float %463, 0x3FF0E147A0000000
  %467 = fmul fast float %464, 0x3FF0E147A0000000
  %468 = fadd fast float %465, 0xBFAC28F5C0000000
  %469 = fadd fast float %466, 0xBFAC28F5C0000000
  %470 = fadd fast float %467, 0xBFAC28F5C0000000
  %471 = select i1 %450, float %453, float %468
  %472 = select i1 %451, float %454, float %469
  %473 = select i1 %452, float %455, float %470
  %474 = fsub fast float 1.000000e+00, %471
  %475 = fsub fast float 1.000000e+00, %472
  %476 = fsub fast float 1.000000e+00, %473
  %477 = fcmp fast ole float %474, 0x3FA4B5DCC0000000
  %478 = fmul fast float %474, 0x3FB3D07220000000
  %479 = fsub fast float 0x3FF0E147A0000000, %471
  %480 = fmul fast float %479, 0x3FEE54EDE0000000
  %481 = call float @dx.op.unary.f32(i32 23, float %480)  ; Log(value)
  %482 = fmul fast float %481, 0x4003333340000000
  %483 = call float @dx.op.unary.f32(i32 21, float %482)  ; Exp(value)
  %484 = select i1 %477, float %478, float %483
  %485 = fcmp fast ole float %475, 0x3FA4B5DCC0000000
  %486 = fmul fast float %475, 0x3FB3D07220000000
  %487 = fsub fast float 0x3FF0E147A0000000, %472
  %488 = fmul fast float %487, 0x3FEE54EDE0000000
  %489 = call float @dx.op.unary.f32(i32 23, float %488)  ; Log(value)
  %490 = fmul fast float %489, 0x4003333340000000
  %491 = call float @dx.op.unary.f32(i32 21, float %490)  ; Exp(value)
  %492 = select i1 %485, float %486, float %491
  %493 = fcmp fast ole float %476, 0x3FA4B5DCC0000000
  %494 = fmul fast float %476, 0x3FB3D07220000000
  %495 = fsub fast float 0x3FF0E147A0000000, %473
  %496 = fmul fast float %495, 0x3FEE54EDE0000000
  %497 = call float @dx.op.unary.f32(i32 23, float %496)  ; Log(value)
  %498 = fmul fast float %497, 0x4003333340000000
  %499 = call float @dx.op.unary.f32(i32 21, float %498)  ; Exp(value)
  %500 = select i1 %493, float %494, float %499
  br label %513

; <label>:501                                     ; preds = %447
  %502 = call float @dx.op.dot3.f32(i32 55, float %441, float %442, float %443, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %503 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %504 = fsub fast float %441, %502
  %505 = fsub fast float %442, %502
  %506 = fsub fast float %443, %502
  %507 = fmul fast float %503, %504
  %508 = fmul fast float %503, %505
  %509 = fmul fast float %503, %506
  %510 = fadd fast float %507, %502
  %511 = fadd fast float %508, %502
  %512 = fadd fast float %509, %502
  br label %513

; <label>:513                                     ; preds = %501, %449, %417
  %514 = phi float [ %484, %449 ], [ %510, %501 ], [ %441, %417 ]
  %515 = phi float [ %492, %449 ], [ %511, %501 ], [ %442, %417 ]
  %516 = phi float [ %500, %449 ], [ %512, %501 ], [ %443, %417 ]
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %519 = fcmp fast une float %518, 0.000000e+00
  br i1 %519, label %520, label %694, !dx.controlflow.hints !63

; <label>:520                                     ; preds = %513
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %524 = fsub fast float %31, %522
  %525 = fsub fast float %32, %523
  %526 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %527 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %528 = fmul fast float %524, %526
  %529 = fmul fast float %525, %527
  %530 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %13, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float %530)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %18, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.i32 %535, 3
  %537 = and i32 %536, 3
  %538 = icmp ne i32 %537, 0
  %539 = and i32 %536, 4
  %540 = icmp eq i32 %539, 0
  %541 = and i1 %538, %540
  br i1 %541, label %542, label %586

; <label>:542                                     ; preds = %520
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = fcmp fast oge float %533, %544
  %546 = zext i1 %545 to i32
  br i1 %545, label %547, label %586

; <label>:547                                     ; preds = %542
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %552 = fcmp fast ogt float %551, 0.000000e+00
  br i1 %552, label %553, label %561, !dx.controlflow.hints !64

; <label>:553                                     ; preds = %547
  %554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %13, float %533, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = fcmp fast ogt float %551, 1.500000e+00
  %559 = select i1 %558, float %555, float %556
  %560 = select i1 %558, float %555, float %557
  br label %579

; <label>:561                                     ; preds = %547
  %562 = call float @dx.op.unary.f32(i32 7, float %533)  ; Saturate(value)
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %563, 1
  %566 = extractvalue %dx.types.CBufRet.f32 %563, 2
  %567 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %569 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %570 = fsub fast float %564, %567
  %571 = fsub fast float %565, %568
  %572 = fsub fast float %566, %569
  %573 = fmul fast float %570, %562
  %574 = fmul fast float %571, %562
  %575 = fmul fast float %572, %562
  %576 = fadd fast float %573, %567
  %577 = fadd fast float %574, %568
  %578 = fadd fast float %575, %569
  br label %579

; <label>:579                                     ; preds = %561, %553
  %580 = phi float [ %555, %553 ], [ %576, %561 ]
  %581 = phi float [ %559, %553 ], [ %577, %561 ]
  %582 = phi float [ %560, %553 ], [ %578, %561 ]
  %583 = fmul fast float %580, %549
  %584 = fmul fast float %581, %549
  %585 = fmul fast float %582, %549
  br label %586

; <label>:586                                     ; preds = %579, %542, %520
  %587 = phi float [ %583, %579 ], [ %532, %520 ], [ %532, %542 ]
  %588 = phi float [ %584, %579 ], [ %533, %520 ], [ %532, %542 ]
  %589 = phi float [ %585, %579 ], [ %534, %520 ], [ %532, %542 ]
  %590 = phi i32 [ %546, %579 ], [ 0, %520 ], [ %546, %542 ]
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %646

; <label>:592                                     ; preds = %586
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = extractvalue %dx.types.CBufRet.f32 %593, 1
  %596 = extractvalue %dx.types.CBufRet.f32 %593, 2
  %597 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float %594, float %595, float %596)  ; Dot3(ax,ay,az,bx,by,bz)
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %602 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float %599, float %600, float %601)  ; Dot3(ax,ay,az,bx,by,bz)
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %606 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %607 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float %604, float %605, float %606)  ; Dot3(ax,ay,az,bx,by,bz)
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 2
  %610 = fmul fast float %609, %597
  %611 = fmul fast float %609, %602
  %612 = fmul fast float %609, %607
  %613 = fadd fast float %610, 9.765625e-04
  %614 = fadd fast float %611, 9.765625e-04
  %615 = fadd fast float %612, 9.765625e-04
  %616 = call float @dx.op.unary.f32(i32 23, float %613)  ; Log(value)
  %617 = call float @dx.op.unary.f32(i32 23, float %614)  ; Log(value)
  %618 = call float @dx.op.unary.f32(i32 23, float %615)  ; Log(value)
  %619 = fadd fast float %616, 1.000000e+01
  %620 = fadd fast float %617, 1.000000e+01
  %621 = fadd fast float %618, 1.000000e+01
  %622 = fmul fast float %619, 0x3FA99999A0000000
  %623 = fmul fast float %620, 0x3FA99999A0000000
  %624 = fmul fast float %621, 0x3FA99999A0000000
  %625 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %626 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %627 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %632 = fmul fast float %629, %625
  %633 = fmul fast float %630, %626
  %634 = fmul fast float %631, %627
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = fadd fast float %632, %636
  %640 = fadd fast float %633, %637
  %641 = fadd fast float %634, %638
  %642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %13, float %639, float %640, float %641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  br label %646

; <label>:646                                     ; preds = %592, %586
  %647 = phi float [ %587, %586 ], [ %643, %592 ]
  %648 = phi float [ %588, %586 ], [ %644, %592 ]
  %649 = phi float [ %589, %586 ], [ %645, %592 ]
  %650 = fcmp fast ole float %647, 0x3FA4B5DCC0000000
  %651 = fmul fast float %647, 0x3FB3D07220000000
  %652 = fadd fast float %647, 0x3FAC28F5C0000000
  %653 = fmul fast float %652, 0x3FEE54EDE0000000
  %654 = call float @dx.op.unary.f32(i32 23, float %653)  ; Log(value)
  %655 = fmul fast float %654, 0x4003333340000000
  %656 = call float @dx.op.unary.f32(i32 21, float %655)  ; Exp(value)
  %657 = select i1 %650, float %651, float %656
  %658 = fcmp fast ole float %648, 0x3FA4B5DCC0000000
  %659 = fmul fast float %648, 0x3FB3D07220000000
  %660 = fadd fast float %648, 0x3FAC28F5C0000000
  %661 = fmul fast float %660, 0x3FEE54EDE0000000
  %662 = call float @dx.op.unary.f32(i32 23, float %661)  ; Log(value)
  %663 = fmul fast float %662, 0x4003333340000000
  %664 = call float @dx.op.unary.f32(i32 21, float %663)  ; Exp(value)
  %665 = select i1 %658, float %659, float %664
  %666 = fcmp fast ole float %649, 0x3FA4B5DCC0000000
  %667 = fmul fast float %649, 0x3FB3D07220000000
  %668 = fadd fast float %649, 0x3FAC28F5C0000000
  %669 = fmul fast float %668, 0x3FEE54EDE0000000
  %670 = call float @dx.op.unary.f32(i32 23, float %669)  ; Log(value)
  %671 = fmul fast float %670, 0x4003333340000000
  %672 = call float @dx.op.unary.f32(i32 21, float %671)  ; Exp(value)
  %673 = select i1 %666, float %667, float %672
  %674 = fcmp fast olt float %518, 0.000000e+00
  br i1 %674, label %675, label %687

; <label>:675                                     ; preds = %646
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %678 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %679 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %680 = call float @dx.op.dot3.f32(i32 55, float %657, float %665, float %673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %681 = fsub fast float %680, %677
  %682 = fmul fast float %681, %678
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %684 = fsub fast float 1.000000e+00, %679
  %685 = fmul fast float %683, %684
  %686 = fadd fast float %685, %679
  br label %687

; <label>:687                                     ; preds = %675, %646
  %688 = phi float [ %686, %675 ], [ %657, %646 ]
  %689 = phi float [ %686, %675 ], [ %665, %646 ]
  %690 = phi float [ %686, %675 ], [ %673, %646 ]
  %691 = fmul fast float %688, %514
  %692 = fmul fast float %689, %515
  %693 = fmul fast float %690, %516
  br label %694

; <label>:694                                     ; preds = %687, %513
  %695 = phi float [ %691, %687 ], [ %514, %513 ]
  %696 = phi float [ %692, %687 ], [ %515, %513 ]
  %697 = phi float [ %693, %687 ], [ %516, %513 ]
  %698 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %699 = fcmp fast ogt float %698, 0.000000e+00
  br i1 %699, label %700, label %741, !dx.controlflow.hints !65

; <label>:700                                     ; preds = %694
  %701 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %702 = bitcast float %701 to i32
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = lshr i32 %702, 8
  %706 = and i32 %705, 255
  %707 = uitofp i32 %706 to float
  %708 = lshr i32 %702, 16
  %709 = and i32 %708, 255
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %710, 0x3F70101020000000
  %712 = lshr i32 %702, 24
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, 0x3F70101020000000
  %715 = fadd fast float %710, %704
  %716 = fmul fast float %715, 0x3F70101020000000
  %717 = fadd fast float %707, %713
  %718 = fmul fast float %717, 0x3F70101020000000
  %719 = fdiv fast float %31, %716
  %720 = fdiv fast float %32, %718
  %721 = fsub fast float -0.000000e+00, %719
  %722 = fsub fast float -0.000000e+00, %720
  %723 = fcmp fast oge float %719, %721
  %724 = fcmp fast oge float %720, %722
  %725 = call float @dx.op.unary.f32(i32 6, float %719)  ; FAbs(value)
  %726 = call float @dx.op.unary.f32(i32 6, float %720)  ; FAbs(value)
  %727 = call float @dx.op.unary.f32(i32 22, float %725)  ; Frc(value)
  %728 = call float @dx.op.unary.f32(i32 22, float %726)  ; Frc(value)
  %729 = fsub fast float -0.000000e+00, %727
  %730 = fsub fast float -0.000000e+00, %728
  %731 = select i1 %723, float %727, float %729
  %732 = select i1 %724, float %728, float %730
  %733 = fmul fast float %716, %731
  %734 = fmul fast float %732, %718
  %735 = fcmp fast olt float %733, %711
  %736 = fcmp fast olt float %734, %714
  %737 = or i1 %735, %736
  br i1 %737, label %738, label %741, !dx.controlflow.hints !66

; <label>:738                                     ; preds = %700
  %739 = fsub fast float 1.000000e+00, %698
  %740 = fmul fast float %739, %330
  br label %741

; <label>:741                                     ; preds = %738, %700, %694
  %742 = phi float [ %740, %738 ], [ %330, %700 ], [ %330, %694 ]
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 3
  %745 = fcmp fast ogt float %744, 0.000000e+00
  br i1 %745, label %746, label %829, !dx.controlflow.hints !67

; <label>:746                                     ; preds = %741
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 3
  %752 = fmul fast float %751, 1.000000e+01
  %753 = call float @dx.op.unary.f32(i32 27, float %752)  ; Round_ni(value)
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = fmul fast float %755, %31
  %758 = fmul fast float %756, %32
  %759 = call float @dx.op.unary.f32(i32 27, float %757)  ; Round_ni(value)
  %760 = call float @dx.op.unary.f32(i32 27, float %758)  ; Round_ni(value)
  %761 = fmul fast float %753, 0x4002B851E0000000
  %762 = call float @dx.op.unary.f32(i32 22, float %761)  ; Frc(value)
  %763 = fadd fast float %762, 0x3FB99999A0000000
  %764 = fadd fast float %763, %759
  %765 = fadd fast float %763, %760
  %766 = fmul fast float %764, 0x3FE1BEDF00000000
  %767 = call float @dx.op.unary.f32(i32 22, float %766)  ; Frc(value)
  %768 = fmul fast float %764, %767
  %769 = fadd fast float %768, %765
  %770 = fmul fast float %765, 0x3FD3BEBE20000000
  %771 = call float @dx.op.unary.f32(i32 22, float %770)  ; Frc(value)
  %772 = fmul fast float %765, %771
  %773 = fadd fast float %772, %764
  %774 = fmul fast float %769, %773
  %775 = call float @dx.op.unary.f32(i32 22, float %774)  ; Frc(value)
  %776 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %777 = bitcast float %776 to i32
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = fmul fast float %780, %748
  %782 = fcmp fast olt float %775, %781
  br i1 %782, label %783, label %790, !dx.controlflow.hints !68

; <label>:783                                     ; preds = %746
  %784 = fmul fast float %775, 0x4057091680000000
  %785 = call float @dx.op.unary.f32(i32 22, float %784)  ; Frc(value)
  %786 = fmul fast float %785, %695
  %787 = fmul fast float %785, %697
  %788 = fsub fast float 1.000000e+00, %785
  %789 = fmul fast float %788, %696
  br label %790

; <label>:790                                     ; preds = %783, %746
  %791 = phi float [ %786, %783 ], [ %695, %746 ]
  %792 = phi float [ %789, %783 ], [ %696, %746 ]
  %793 = phi float [ %787, %783 ], [ %697, %746 ]
  %794 = fmul fast float %775, 0x4028B0A3E0000000
  %795 = call float @dx.op.unary.f32(i32 22, float %794)  ; Frc(value)
  %796 = fmul fast float %780, %749
  %797 = fcmp fast olt float %795, %796
  br i1 %797, label %798, label %817, !dx.controlflow.hints !69

; <label>:798                                     ; preds = %790
  %799 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %800 = fmul fast float %799, %31
  %801 = call float @dx.op.unary.f32(i32 27, float %800)  ; Round_ni(value)
  %802 = fmul fast float %801, 0x3FD5555560000000
  %803 = call float @dx.op.unary.f32(i32 22, float %802)  ; Frc(value)
  %804 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %805 = extractvalue %dx.types.CBufRet.f32 %747, 1
  %806 = fcmp fast olt float %803, 0x3FD51EB860000000
  br i1 %806, label %810, label %807, !dx.controlflow.hints !70

; <label>:807                                     ; preds = %798
  %808 = fcmp fast olt float %803, 0x3FE51EB860000000
  br i1 %808, label %810, label %809, !dx.controlflow.hints !71

; <label>:809                                     ; preds = %807
  br label %810

; <label>:810                                     ; preds = %809, %807, %798
  %811 = phi float [ %804, %809 ], [ %805, %798 ], [ %804, %807 ]
  %812 = phi float [ %804, %809 ], [ %804, %798 ], [ %805, %807 ]
  %813 = phi float [ %805, %809 ], [ %804, %798 ], [ %804, %807 ]
  %814 = fmul fast float %811, %791
  %815 = fmul fast float %812, %792
  %816 = fmul fast float %813, %793
  br label %817

; <label>:817                                     ; preds = %810, %790
  %818 = phi float [ %814, %810 ], [ %791, %790 ]
  %819 = phi float [ %815, %810 ], [ %792, %790 ]
  %820 = phi float [ %816, %810 ], [ %793, %790 ]
  %821 = fmul fast float %775, 0x40223EF9E0000000
  %822 = call float @dx.op.unary.f32(i32 22, float %821)  ; Frc(value)
  %823 = fmul fast float %780, %744
  %824 = fmul fast float %822, %822
  %825 = fmul fast float %824, %823
  %826 = fsub fast float 1.000000e+00, %825
  %827 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %828 = fmul fast float %827, %742
  br label %829

; <label>:829                                     ; preds = %817, %741
  %830 = phi float [ %818, %817 ], [ %695, %741 ]
  %831 = phi float [ %819, %817 ], [ %696, %741 ]
  %832 = phi float [ %820, %817 ], [ %697, %741 ]
  %833 = phi float [ %828, %817 ], [ %742, %741 ]
  %834 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %835 = fcmp fast ogt float %834, 0.000000e+00
  br i1 %835, label %836, label %885, !dx.controlflow.hints !72

; <label>:836                                     ; preds = %829
  %837 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %838 = fmul fast float %834, %21
  %839 = fmul fast float %837, %22
  %840 = call float @dx.op.unary.f32(i32 85, float %838)  ; DerivFineX(value)
  %841 = call float @dx.op.unary.f32(i32 86, float %838)  ; DerivFineY(value)
  %842 = call float @dx.op.unary.f32(i32 85, float %839)  ; DerivFineX(value)
  %843 = call float @dx.op.unary.f32(i32 86, float %839)  ; DerivFineY(value)
  %844 = fmul fast float %843, %840
  %845 = fmul fast float %842, %841
  %846 = fsub fast float %844, %845
  %847 = fdiv fast float 1.000000e+00, %846
  %848 = fmul fast float %847, %843
  %849 = fmul fast float %847, %841
  %850 = fmul fast float %847, %842
  %851 = fmul fast float %847, %840
  %852 = fmul fast float %848, %848
  %853 = fmul fast float %850, %850
  %854 = fadd fast float %852, %853
  %855 = call float @dx.op.unary.f32(i32 24, float %854)  ; Sqrt(value)
  %856 = fmul fast float %849, %849
  %857 = fmul fast float %851, %851
  %858 = fadd fast float %856, %857
  %859 = call float @dx.op.unary.f32(i32 24, float %858)  ; Sqrt(value)
  %860 = fmul fast float %855, %838
  %861 = fmul fast float %859, %839
  %862 = fsub fast float %860, %855
  %863 = fsub fast float %861, %859
  %864 = fsub fast float -0.000000e+00, %860
  %865 = fsub fast float -0.000000e+00, %861
  %866 = call float @dx.op.binary.f32(i32 35, float %864, float %862)  ; FMax(a,b)
  %867 = call float @dx.op.binary.f32(i32 35, float %865, float %863)  ; FMax(a,b)
  %868 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %866)  ; FMax(a,b)
  %869 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %867)  ; FMax(a,b)
  %870 = fmul fast float %868, %868
  %871 = fmul fast float %869, %869
  %872 = fadd fast float %871, %870
  %873 = call float @dx.op.unary.f32(i32 24, float %872)  ; Sqrt(value)
  %874 = call float @dx.op.binary.f32(i32 35, float %866, float %867)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %874)  ; FMin(a,b)
  %876 = fadd fast float %873, -1.000000e+00
  %877 = fadd fast float %876, %875
  %878 = fmul fast float %877, -5.000000e-01
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %880 = fmul fast float %879, 2.000000e+00
  %881 = fsub fast float 3.000000e+00, %880
  %882 = fmul fast float %879, %879
  %883 = fmul fast float %882, %833
  %884 = fmul fast float %883, %881
  br label %885

; <label>:885                                     ; preds = %836, %829
  %886 = phi float [ %884, %836 ], [ %833, %829 ]
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %890 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fmul fast float %888, %830
  %900 = call float @dx.op.tertiary.f32(i32 46, float %889, float %831, float %899)  ; FMad(a,b,c)
  %901 = call float @dx.op.tertiary.f32(i32 46, float %890, float %832, float %900)  ; FMad(a,b,c)
  %902 = fmul fast float %892, %830
  %903 = call float @dx.op.tertiary.f32(i32 46, float %893, float %831, float %902)  ; FMad(a,b,c)
  %904 = call float @dx.op.tertiary.f32(i32 46, float %894, float %832, float %903)  ; FMad(a,b,c)
  %905 = fmul fast float %896, %830
  %906 = call float @dx.op.tertiary.f32(i32 46, float %897, float %831, float %905)  ; FMad(a,b,c)
  %907 = call float @dx.op.tertiary.f32(i32 46, float %898, float %832, float %906)  ; FMad(a,b,c)
  br i1 %337, label %908, label %1215, !dx.controlflow.hints !73

; <label>:908                                     ; preds = %885
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 0
  %911 = bitcast float %910 to i32
  %912 = and i32 %911, 128
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %928, label %914

; <label>:914                                     ; preds = %908
  %915 = call float @dx.op.unary.f32(i32 24, float %901)  ; Sqrt(value)
  %916 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %917 = call float @dx.op.unary.f32(i32 24, float %907)  ; Sqrt(value)
  %918 = fmul fast float %915, 9.687500e-01
  %919 = fmul fast float %916, 9.687500e-01
  %920 = fmul fast float %917, 9.687500e-01
  %921 = fadd fast float %918, 1.562500e-02
  %922 = fadd fast float %919, 1.562500e-02
  %923 = fadd fast float %920, 1.562500e-02
  %924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %13, float %921, float %922, float %923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = extractvalue %dx.types.ResRet.f32 %924, 1
  %927 = extractvalue %dx.types.ResRet.f32 %924, 2
  br label %1215

; <label>:928                                     ; preds = %908
  %929 = and i32 %911, 127
  switch i32 %929, label %1215 [
    i32 1, label %930
    i32 2, label %930
    i32 0, label %930
    i32 3, label %960
    i32 4, label %1081
  ]

; <label>:930                                     ; preds = %928, %928, %928
  %931 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %932 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  %933 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %934 = call float @dx.op.unary.f32(i32 23, float %931)  ; Log(value)
  %935 = call float @dx.op.unary.f32(i32 23, float %932)  ; Log(value)
  %936 = call float @dx.op.unary.f32(i32 23, float %933)  ; Log(value)
  %937 = fmul fast float %934, 0x3FDAAAAAA0000000
  %938 = fmul fast float %935, 0x3FDAAAAAA0000000
  %939 = fmul fast float %936, 0x3FDAAAAAA0000000
  %940 = call float @dx.op.unary.f32(i32 21, float %937)  ; Exp(value)
  %941 = call float @dx.op.unary.f32(i32 21, float %938)  ; Exp(value)
  %942 = call float @dx.op.unary.f32(i32 21, float %939)  ; Exp(value)
  %943 = fmul fast float %940, 0x3FF0E147A0000000
  %944 = fmul fast float %941, 0x3FF0E147A0000000
  %945 = fmul fast float %942, 0x3FF0E147A0000000
  %946 = fadd fast float %943, 0xBFAC28F5C0000000
  %947 = fadd fast float %944, 0xBFAC28F5C0000000
  %948 = fadd fast float %945, 0xBFAC28F5C0000000
  %949 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %950 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %951 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %952 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %953 = extractvalue %dx.types.CBufRet.f32 %909, 3
  %954 = fmul fast float %952, %949
  %955 = fmul fast float %952, %950
  %956 = fmul fast float %952, %951
  %957 = fadd fast float %954, %953
  %958 = fadd fast float %955, %953
  %959 = fadd fast float %956, %953
  br label %1215

; <label>:960                                     ; preds = %928
  %961 = fmul fast float %901, 0x4163D57C00000000
  %962 = fmul fast float %904, 0x4163D57C00000000
  %963 = fmul fast float %907, 0x4163D57C00000000
  %964 = fadd fast float %961, 9.999980e+05
  %965 = fadd fast float %962, 9.999980e+05
  %966 = fadd fast float %963, 9.999980e+05
  %967 = fmul fast float %964, %901
  %968 = fmul fast float %965, %904
  %969 = fmul fast float %966, %907
  %970 = fadd fast float %967, 0xC0AFE17A60000000
  %971 = fadd fast float %968, 0xC0AFE17A60000000
  %972 = fadd fast float %969, 0xC0AFE17A60000000
  %973 = fmul fast float %970, %901
  %974 = fmul fast float %971, %904
  %975 = fmul fast float %972, %907
  %976 = fmul fast float %901, 0x40F753C340000000
  %977 = fmul fast float %904, 0x40F753C340000000
  %978 = fmul fast float %907, 0x40F753C340000000
  %979 = fsub fast float 9.999990e+06, %976
  %980 = fsub fast float 9.999990e+06, %977
  %981 = fsub fast float 9.999990e+06, %978
  %982 = fmul fast float %979, %901
  %983 = fmul fast float %980, %904
  %984 = fmul fast float %981, %907
  %985 = fadd fast float %982, 0x4136D1DD80000000
  %986 = fadd fast float %983, 0x4136D1DD80000000
  %987 = fadd fast float %984, 0x4136D1DD80000000
  %988 = fmul fast float %985, %901
  %989 = fmul fast float %986, %904
  %990 = fmul fast float %987, %907
  %991 = fadd fast float %988, 1.000000e+00
  %992 = fadd fast float %989, 1.000000e+00
  %993 = fadd fast float %990, 1.000000e+00
  %994 = fdiv fast float %973, %991
  %995 = fdiv fast float %974, %992
  %996 = fdiv fast float %975, %993
  %997 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %998 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %999 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %1000 = extractvalue %dx.types.CBufRet.f32 %909, 1
  %1001 = fmul fast float %997, 0x3FE413A920000000
  %1002 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %998, float %1001)  ; FMad(a,b,c)
  %1003 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %999, float %1002)  ; FMad(a,b,c)
  %1004 = fmul fast float %997, 0x3FB1B089A0000000
  %1005 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %998, float %1004)  ; FMad(a,b,c)
  %1006 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %999, float %1005)  ; FMad(a,b,c)
  %1007 = fmul fast float %997, 0x3F90CB2960000000
  %1008 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %998, float %1007)  ; FMad(a,b,c)
  %1009 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %999, float %1008)  ; FMad(a,b,c)
  %1010 = fmul fast float %1003, %1000
  %1011 = fmul fast float %1006, %1000
  %1012 = fmul fast float %1009, %1000
  %1013 = fmul fast float %1010, 0x3F847AE140000000
  %1014 = fmul fast float %1011, 0x3F847AE140000000
  %1015 = fmul fast float %1012, 0x3F847AE140000000
  %1016 = fmul fast float %1010, 0x40B4D2F520000000
  %1017 = fmul fast float %1011, 0x40B4D2F520000000
  %1018 = fmul fast float %1012, 0x40B4D2F520000000
  %1019 = fadd fast float %1016, 0x41869ECF20000000
  %1020 = fadd fast float %1017, 0x41869ECF20000000
  %1021 = fadd fast float %1018, 0x41869ECF20000000
  %1022 = fmul fast float %1019, %1013
  %1023 = fmul fast float %1020, %1014
  %1024 = fmul fast float %1021, %1015
  %1025 = fadd fast float %1022, 0x417BB79C60000000
  %1026 = fadd fast float %1023, 0x417BB79C60000000
  %1027 = fadd fast float %1024, 0x417BB79C60000000
  %1028 = fmul fast float %1025, %1013
  %1029 = fmul fast float %1026, %1014
  %1030 = fmul fast float %1027, %1015
  %1031 = fadd fast float %1028, 0x41218DE180000000
  %1032 = fadd fast float %1029, 0x41218DE180000000
  %1033 = fadd fast float %1030, 0x41218DE180000000
  %1034 = fmul fast float %1031, %1013
  %1035 = fmul fast float %1032, %1014
  %1036 = fmul fast float %1033, %1015
  %1037 = fadd fast float %1034, 0x4077F174E0000000
  %1038 = fadd fast float %1035, 0x4077F174E0000000
  %1039 = fadd fast float %1036, 0x4077F174E0000000
  %1040 = fmul fast float %1037, %1013
  %1041 = fmul fast float %1038, %1014
  %1042 = fmul fast float %1039, %1015
  %1043 = fadd fast float %1040, 0x3F3FF79B80000000
  %1044 = fadd fast float %1041, 0x3F3FF79B80000000
  %1045 = fadd fast float %1042, 0x3F3FF79B80000000
  %1046 = fmul fast float %1010, 0x412442D320000000
  %1047 = fmul fast float %1011, 0x412442D320000000
  %1048 = fmul fast float %1012, 0x412442D320000000
  %1049 = fadd fast float %1046, 0x419385D5C0000000
  %1050 = fadd fast float %1047, 0x419385D5C0000000
  %1051 = fadd fast float %1048, 0x419385D5C0000000
  %1052 = fmul fast float %1049, %1013
  %1053 = fmul fast float %1050, %1014
  %1054 = fmul fast float %1051, %1015
  %1055 = fadd fast float %1052, 4.182885e+06
  %1056 = fadd fast float %1053, 4.182885e+06
  %1057 = fadd fast float %1054, 4.182885e+06
  %1058 = fmul fast float %1055, %1013
  %1059 = fmul fast float %1056, %1014
  %1060 = fmul fast float %1057, %1015
  %1061 = fadd fast float %1058, 0x40C4D633C0000000
  %1062 = fadd fast float %1059, 0x40C4D633C0000000
  %1063 = fadd fast float %1060, 0x40C4D633C0000000
  %1064 = fmul fast float %1061, %1013
  %1065 = fmul fast float %1062, %1014
  %1066 = fmul fast float %1063, %1015
  %1067 = fadd fast float %1064, 1.000000e+00
  %1068 = fadd fast float %1065, 1.000000e+00
  %1069 = fadd fast float %1066, 1.000000e+00
  %1070 = fdiv fast float %1043, %1067
  %1071 = fdiv fast float %1044, %1068
  %1072 = fdiv fast float %1045, %1069
  %1073 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %1074 = extractvalue %dx.types.CBufRet.f32 %909, 3
  %1075 = fmul fast float %1073, %1070
  %1076 = fmul fast float %1073, %1071
  %1077 = fmul fast float %1073, %1072
  %1078 = fadd fast float %1075, %1074
  %1079 = fadd fast float %1076, %1074
  %1080 = fadd fast float %1077, %1074
  br label %1215

; <label>:1081                                    ; preds = %928
  %1082 = fmul fast float %901, 0x4163D57C00000000
  %1083 = fmul fast float %904, 0x4163D57C00000000
  %1084 = fmul fast float %907, 0x4163D57C00000000
  %1085 = fadd fast float %1082, 9.999980e+05
  %1086 = fadd fast float %1083, 9.999980e+05
  %1087 = fadd fast float %1084, 9.999980e+05
  %1088 = fmul fast float %1085, %901
  %1089 = fmul fast float %1086, %904
  %1090 = fmul fast float %1087, %907
  %1091 = fadd fast float %1088, 0xC0AFE17A60000000
  %1092 = fadd fast float %1089, 0xC0AFE17A60000000
  %1093 = fadd fast float %1090, 0xC0AFE17A60000000
  %1094 = fmul fast float %1091, %901
  %1095 = fmul fast float %1092, %904
  %1096 = fmul fast float %1093, %907
  %1097 = fmul fast float %901, 0x40F753C340000000
  %1098 = fmul fast float %904, 0x40F753C340000000
  %1099 = fmul fast float %907, 0x40F753C340000000
  %1100 = fsub fast float 9.999990e+06, %1097
  %1101 = fsub fast float 9.999990e+06, %1098
  %1102 = fsub fast float 9.999990e+06, %1099
  %1103 = fmul fast float %1100, %901
  %1104 = fmul fast float %1101, %904
  %1105 = fmul fast float %1102, %907
  %1106 = fadd fast float %1103, 0x4136D1DD80000000
  %1107 = fadd fast float %1104, 0x4136D1DD80000000
  %1108 = fadd fast float %1105, 0x4136D1DD80000000
  %1109 = fmul fast float %1106, %901
  %1110 = fmul fast float %1107, %904
  %1111 = fmul fast float %1108, %907
  %1112 = fadd fast float %1109, 1.000000e+00
  %1113 = fadd fast float %1110, 1.000000e+00
  %1114 = fadd fast float %1111, 1.000000e+00
  %1115 = fdiv fast float %1094, %1112
  %1116 = fdiv fast float %1095, %1113
  %1117 = fdiv fast float %1096, %1114
  %1118 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1119 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1120 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1121 = extractvalue %dx.types.CBufRet.f32 %909, 1
  %1122 = fmul fast float %1118, 0x3FEA519BC0000000
  %1123 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %1119, float %1122)  ; FMad(a,b,c)
  %1124 = fmul fast float %1118, 0x3FA0FED480000000
  %1125 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %1119, float %1124)  ; FMad(a,b,c)
  %1126 = fmul fast float %1118, 0x3F917E1C00000000
  %1127 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %1119, float %1126)  ; FMad(a,b,c)
  %1128 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %1120, float %1127)  ; FMad(a,b,c)
  %1129 = call float @dx.op.binary.f32(i32 35, float %1118, float %1119)  ; FMax(a,b)
  %1130 = call float @dx.op.binary.f32(i32 35, float %1129, float %1120)  ; FMax(a,b)
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = fmul fast float %1131, 2.500000e-01
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = fsub fast float 1.000000e+00, %1133
  %1135 = fmul fast float %1134, %1123
  %1136 = fmul fast float %1134, %1125
  %1137 = fmul fast float %1134, %1128
  %1138 = fmul fast float %1133, %1118
  %1139 = fmul fast float %1133, %1119
  %1140 = fmul fast float %1133, %1120
  %1141 = fadd fast float %1135, %1138
  %1142 = fadd fast float %1136, %1139
  %1143 = fadd fast float %1137, %1140
  %1144 = fmul fast float %1141, %1121
  %1145 = fmul fast float %1142, %1121
  %1146 = fmul fast float %1143, %1121
  %1147 = fmul fast float %1144, 0x3F847AE140000000
  %1148 = fmul fast float %1145, 0x3F847AE140000000
  %1149 = fmul fast float %1146, 0x3F847AE140000000
  %1150 = fmul fast float %1144, 0x40B4D2F520000000
  %1151 = fmul fast float %1145, 0x40B4D2F520000000
  %1152 = fmul fast float %1146, 0x40B4D2F520000000
  %1153 = fadd fast float %1150, 0x41869ECF20000000
  %1154 = fadd fast float %1151, 0x41869ECF20000000
  %1155 = fadd fast float %1152, 0x41869ECF20000000
  %1156 = fmul fast float %1153, %1147
  %1157 = fmul fast float %1154, %1148
  %1158 = fmul fast float %1155, %1149
  %1159 = fadd fast float %1156, 0x417BB79C60000000
  %1160 = fadd fast float %1157, 0x417BB79C60000000
  %1161 = fadd fast float %1158, 0x417BB79C60000000
  %1162 = fmul fast float %1159, %1147
  %1163 = fmul fast float %1160, %1148
  %1164 = fmul fast float %1161, %1149
  %1165 = fadd fast float %1162, 0x41218DE180000000
  %1166 = fadd fast float %1163, 0x41218DE180000000
  %1167 = fadd fast float %1164, 0x41218DE180000000
  %1168 = fmul fast float %1165, %1147
  %1169 = fmul fast float %1166, %1148
  %1170 = fmul fast float %1167, %1149
  %1171 = fadd fast float %1168, 0x4077F174E0000000
  %1172 = fadd fast float %1169, 0x4077F174E0000000
  %1173 = fadd fast float %1170, 0x4077F174E0000000
  %1174 = fmul fast float %1171, %1147
  %1175 = fmul fast float %1172, %1148
  %1176 = fmul fast float %1173, %1149
  %1177 = fadd fast float %1174, 0x3F3FF79B80000000
  %1178 = fadd fast float %1175, 0x3F3FF79B80000000
  %1179 = fadd fast float %1176, 0x3F3FF79B80000000
  %1180 = fmul fast float %1144, 0x412442D320000000
  %1181 = fmul fast float %1145, 0x412442D320000000
  %1182 = fmul fast float %1146, 0x412442D320000000
  %1183 = fadd fast float %1180, 0x419385D5C0000000
  %1184 = fadd fast float %1181, 0x419385D5C0000000
  %1185 = fadd fast float %1182, 0x419385D5C0000000
  %1186 = fmul fast float %1183, %1147
  %1187 = fmul fast float %1184, %1148
  %1188 = fmul fast float %1185, %1149
  %1189 = fadd fast float %1186, 4.182885e+06
  %1190 = fadd fast float %1187, 4.182885e+06
  %1191 = fadd fast float %1188, 4.182885e+06
  %1192 = fmul fast float %1189, %1147
  %1193 = fmul fast float %1190, %1148
  %1194 = fmul fast float %1191, %1149
  %1195 = fadd fast float %1192, 0x40C4D633C0000000
  %1196 = fadd fast float %1193, 0x40C4D633C0000000
  %1197 = fadd fast float %1194, 0x40C4D633C0000000
  %1198 = fmul fast float %1195, %1147
  %1199 = fmul fast float %1196, %1148
  %1200 = fmul fast float %1197, %1149
  %1201 = fadd fast float %1198, 1.000000e+00
  %1202 = fadd fast float %1199, 1.000000e+00
  %1203 = fadd fast float %1200, 1.000000e+00
  %1204 = fdiv fast float %1177, %1201
  %1205 = fdiv fast float %1178, %1202
  %1206 = fdiv fast float %1179, %1203
  %1207 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %1208 = extractvalue %dx.types.CBufRet.f32 %909, 3
  %1209 = fmul fast float %1207, %1204
  %1210 = fmul fast float %1207, %1205
  %1211 = fmul fast float %1207, %1206
  %1212 = fadd fast float %1209, %1208
  %1213 = fadd fast float %1210, %1208
  %1214 = fadd fast float %1211, %1208
  br label %1215

; <label>:1215                                    ; preds = %1081, %960, %930, %928, %914, %885
  %1216 = phi float [ %901, %885 ], [ %925, %914 ], [ %901, %928 ], [ %1212, %1081 ], [ %1078, %960 ], [ %957, %930 ]
  %1217 = phi float [ %904, %885 ], [ %926, %914 ], [ %904, %928 ], [ %1213, %1081 ], [ %1079, %960 ], [ %958, %930 ]
  %1218 = phi float [ %907, %885 ], [ %927, %914 ], [ %907, %928 ], [ %1214, %1081 ], [ %1080, %960 ], [ %959, %930 ]
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 225)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 3
  %1222 = select i1 %206, float %1220, float %1221
  %1223 = fmul fast float %1222, %886
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1227 = call float @dx.op.unary.f32(i32 23, float %1223)  ; Log(value)
  %1228 = fmul fast float %1227, %1226
  %1229 = call float @dx.op.unary.f32(i32 21, float %1228)  ; Exp(value)
  %1230 = fmul fast float %1229, %1225
  %1231 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1232 = extractvalue %dx.types.CBufRet.f32 %1224, 3
  %1233 = fmul fast float %1227, %1232
  %1234 = call float @dx.op.unary.f32(i32 21, float %1233)  ; Exp(value)
  %1235 = fmul fast float %1234, %1231
  %1236 = fadd fast float %1235, %1230
  %1237 = fmul fast float %1236, %1216
  %1238 = fmul fast float %1236, %1217
  %1239 = fmul fast float %1236, %1218
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1237)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1238)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1239)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1236)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!4 = !{!5, null, !16, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!16 = !{!17, !18, !19, !20}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!19 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!20 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!21 = !{!22, !23, !24, !25, !26}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!25 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!26 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!27 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 7, i32 7]}
!28 = !{void ()* @ps_main, !"ps_main", !29, !4, !53}
!29 = !{!30, !51, null}
!30 = !{!31, !34, !36, !37, !39, !41, !43, !45, !47, !49}
!31 = !{i32 0, !"SV_Position", i8 9, i8 3, !32, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!32 = !{i32 0}
!33 = !{i32 3, i32 3}
!34 = !{i32 1, !"COLOR", i8 9, i8 0, !32, i8 2, i32 1, i8 4, i32 1, i8 0, !35}
!35 = !{i32 3, i32 15}
!36 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 2, i8 0, !33}
!37 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 2, !33}
!38 = !{i32 2}
!39 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!40 = !{i32 3}
!41 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!42 = !{i32 4}
!43 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!44 = !{i32 5}
!45 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!46 = !{i32 6}
!47 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 2, i32 5, i8 0, !33}
!48 = !{i32 1}
!49 = !{i32 9, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 2, i32 5, i8 2, !33}
!50 = !{i32 7}
!51 = !{!52}
!52 = !{i32 0, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 0, i8 0, !35}
!53 = !{i32 0, i64 16}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

