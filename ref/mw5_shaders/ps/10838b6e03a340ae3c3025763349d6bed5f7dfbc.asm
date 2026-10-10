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
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 56c93c1e735a1750f44216257cff6c52
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
;   [112 x i8] (type annotation not present)
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
;                                   texture     f32          3d      T6     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 20, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = fsub fast float %22, %25
  %28 = fsub fast float %23, %26
  %29 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %31 = fmul fast float %27, %29
  %32 = fmul fast float %28, %30
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = fmul fast float %31, %34
  %37 = fmul fast float %32, %35
  %38 = fptoui float %36 to i32
  %39 = fptoui float %37 to i32
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 1
  %42 = shl i32 %41, 2
  %43 = extractvalue %dx.types.CBufRet.i32 %40, 3
  %44 = add i32 %42, %43
  %45 = lshr i32 %39, 2
  %46 = extractvalue %dx.types.CBufRet.i32 %40, 2
  %47 = mul i32 %45, %46
  %48 = lshr i32 %38, 3
  %49 = add i32 %44, %48
  %50 = add i32 %49, %47
  %51 = shl i32 %50, 2
  %52 = shl i32 %39, 3
  %53 = and i32 %52, 24
  %54 = and i32 %38, 7
  %55 = or i32 %53, %54
  %56 = shl i32 1, %55
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %51, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62, !dx.controlflow.hints !45

; <label>:61                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %62

; <label>:62                                      ; preds = %61, %0
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %65 = fcmp fast ogt float %64, 0.000000e+00
  br i1 %65, label %66, label %116, !dx.controlflow.hints !46

; <label>:66                                      ; preds = %62
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %69 = fmul fast float %68, 1.000000e+01
  %70 = call float @dx.op.unary.f32(i32 27, float %69)  ; Round_ni(value)
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = fmul fast float %72, %22
  %75 = fmul fast float %73, %23
  %76 = call float @dx.op.unary.f32(i32 27, float %74)  ; Round_ni(value)
  %77 = call float @dx.op.unary.f32(i32 27, float %75)  ; Round_ni(value)
  %78 = fmul fast float %70, 0x4002B851E0000000
  %79 = call float @dx.op.unary.f32(i32 22, float %78)  ; Frc(value)
  %80 = fadd fast float %79, 0x3FB99999A0000000
  %81 = fadd fast float %80, %76
  %82 = fadd fast float %80, %77
  %83 = fmul fast float %81, 0x3FE1BEDF00000000
  %84 = call float @dx.op.unary.f32(i32 22, float %83)  ; Frc(value)
  %85 = fmul fast float %81, %84
  %86 = fadd fast float %85, %82
  %87 = fmul fast float %82, 0x3FD3BEBE20000000
  %88 = call float @dx.op.unary.f32(i32 22, float %87)  ; Frc(value)
  %89 = fmul fast float %82, %88
  %90 = fadd fast float %89, %81
  %91 = fmul fast float %86, %90
  %92 = call float @dx.op.unary.f32(i32 22, float %91)  ; Frc(value)
  %93 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %94 = bitcast float %93 to i32
  %95 = and i32 %94, 255
  %96 = uitofp i32 %95 to float
  %97 = fmul fast float %92, 0x4085373340000000
  %98 = call float @dx.op.unary.f32(i32 22, float %97)  ; Frc(value)
  %99 = fmul fast float %96, 0x3F6CE9B6A0000000
  %100 = fcmp fast olt float %98, %99
  br i1 %100, label %101, label %116, !dx.controlflow.hints !47

; <label>:101                                     ; preds = %66
  %102 = fdiv fast float %98, %99
  %103 = fmul fast float %102, 2.000000e+00
  %104 = fadd fast float %103, -1.000000e+00
  %105 = lshr i32 %94, 8
  %106 = and i32 %105, 255
  %107 = uitofp i32 %106 to float
  %108 = call float @dx.op.unary.f32(i32 83, float %16)  ; DerivCoarseX(value)
  %109 = call float @dx.op.unary.f32(i32 83, float %17)  ; DerivCoarseX(value)
  %110 = fmul fast float %104, %108
  %111 = fmul fast float %110, %107
  %112 = fmul fast float %109, %104
  %113 = fmul fast float %112, %107
  %114 = fadd fast float %111, %16
  %115 = fadd fast float %113, %17
  br label %116

; <label>:116                                     ; preds = %101, %66, %62
  %117 = phi float [ %114, %101 ], [ %16, %66 ], [ %16, %62 ]
  %118 = phi float [ %115, %101 ], [ %17, %66 ], [ %17, %62 ]
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %9, float %117, float %118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 3
  %121 = fmul fast float %120, 2.000000e+00
  %122 = fadd fast float %121, -1.000000e+00
  %123 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %124 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %125 = fmul fast float %123, %123
  %126 = fmul fast float %124, %124
  %127 = fadd fast float %126, %125
  %128 = call float @dx.op.unary.f32(i32 24, float %127)  ; Sqrt(value)
  %129 = fmul fast float %128, 2.000000e+00
  %130 = fadd fast float %128, %122
  %131 = fdiv fast float %130, %129
  %132 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  %133 = fmul fast float %132, 2.000000e+00
  %134 = fsub fast float 3.000000e+00, %133
  %135 = fmul fast float %132, %132
  %136 = fmul fast float %135, %21
  %137 = fmul fast float %136, %134
  %138 = fcmp fast ole float %18, 0x3FA4B5DCC0000000
  %139 = fmul fast float %18, 0x3FB3D07220000000
  %140 = fadd fast float %18, 0x3FAC28F5C0000000
  %141 = fmul fast float %140, 0x3FEE54EDE0000000
  %142 = call float @dx.op.unary.f32(i32 23, float %141)  ; Log(value)
  %143 = fmul fast float %142, 0x4003333340000000
  %144 = call float @dx.op.unary.f32(i32 21, float %143)  ; Exp(value)
  %145 = select i1 %138, float %139, float %144
  %146 = fcmp fast ole float %19, 0x3FA4B5DCC0000000
  %147 = fmul fast float %19, 0x3FB3D07220000000
  %148 = fadd fast float %19, 0x3FAC28F5C0000000
  %149 = fmul fast float %148, 0x3FEE54EDE0000000
  %150 = call float @dx.op.unary.f32(i32 23, float %149)  ; Log(value)
  %151 = fmul fast float %150, 0x4003333340000000
  %152 = call float @dx.op.unary.f32(i32 21, float %151)  ; Exp(value)
  %153 = select i1 %146, float %147, float %152
  %154 = fcmp fast ole float %20, 0x3FA4B5DCC0000000
  %155 = fmul fast float %20, 0x3FB3D07220000000
  %156 = fadd fast float %20, 0x3FAC28F5C0000000
  %157 = fmul fast float %156, 0x3FEE54EDE0000000
  %158 = call float @dx.op.unary.f32(i32 23, float %157)  ; Log(value)
  %159 = fmul fast float %158, 0x4003333340000000
  %160 = call float @dx.op.unary.f32(i32 21, float %159)  ; Exp(value)
  %161 = select i1 %154, float %155, float %160
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %164 = bitcast float %163 to i32
  %165 = and i32 %164, 512
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %261, label %167

; <label>:167                                     ; preds = %116
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %170 = bitcast float %169 to i32
  %171 = and i32 %170, 65535
  %172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %171)  ; LegacyF16ToF32(value)
  %173 = lshr i32 %170, 16
  %174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %173)  ; LegacyF16ToF32(value)
  %175 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %176 = bitcast float %175 to i32
  %177 = and i32 %176, 65535
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = lshr i32 %176, 16
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = and i32 %164, 16
  %182 = icmp ne i32 %181, 0
  %183 = fcmp fast ogt float %172, 0.000000e+00
  %184 = fcmp fast ogt float %174, 0.000000e+00
  %185 = and i1 %183, %184
  %186 = fcmp fast ogt float %178, 0.000000e+00
  br i1 %185, label %187, label %247

; <label>:187                                     ; preds = %167
  br i1 %186, label %188, label %196

; <label>:188                                     ; preds = %187
  %189 = fmul fast float %174, %15
  %190 = fmul fast float %172, %14
  %191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %190, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fsub fast float 1.000000e+00, %192
  %194 = select i1 %182, float %193, float %192
  %195 = fmul fast float %194, %178
  br label %196

; <label>:196                                     ; preds = %188, %187
  %197 = phi float [ %195, %188 ], [ 0.000000e+00, %187 ]
  %198 = fadd fast float %197, %180
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  br i1 %186, label %200, label %210

; <label>:200                                     ; preds = %196
  %201 = fmul fast float %174, %15
  %202 = fsub fast float 1.000000e+00, %14
  %203 = fmul fast float %172, %202
  %204 = fsub fast float 1.000000e+00, %203
  %205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %204, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 1
  %207 = fsub fast float 1.000000e+00, %206
  %208 = select i1 %182, float %207, float %206
  %209 = fmul fast float %208, %178
  br label %210

; <label>:210                                     ; preds = %200, %196
  %211 = phi float [ %209, %200 ], [ 0.000000e+00, %196 ]
  %212 = fadd fast float %211, %180
  %213 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  %214 = fmul fast float %213, %199
  br i1 %186, label %215, label %227

; <label>:215                                     ; preds = %210
  %216 = fsub fast float 1.000000e+00, %15
  %217 = fmul fast float %174, %216
  %218 = fsub fast float 1.000000e+00, %217
  %219 = fsub fast float 1.000000e+00, %14
  %220 = fmul fast float %172, %219
  %221 = fsub fast float 1.000000e+00, %220
  %222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %221, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 2
  %224 = fsub fast float 1.000000e+00, %223
  %225 = select i1 %182, float %224, float %223
  %226 = fmul fast float %225, %178
  br label %227

; <label>:227                                     ; preds = %215, %210
  %228 = phi float [ %226, %215 ], [ 0.000000e+00, %210 ]
  %229 = fadd fast float %228, %180
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = fmul fast float %214, %230
  br i1 %186, label %232, label %242

; <label>:232                                     ; preds = %227
  %233 = fsub fast float 1.000000e+00, %15
  %234 = fmul fast float %174, %233
  %235 = fsub fast float 1.000000e+00, %234
  %236 = fmul fast float %172, %14
  %237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %236, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 3
  %239 = fsub fast float 1.000000e+00, %238
  %240 = select i1 %182, float %239, float %238
  %241 = fmul fast float %240, %178
  br label %242

; <label>:242                                     ; preds = %232, %227
  %243 = phi float [ %241, %232 ], [ 0.000000e+00, %227 ]
  %244 = fadd fast float %243, %180
  %245 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  %246 = fmul fast float %231, %245
  br label %258

; <label>:247                                     ; preds = %167
  br i1 %186, label %248, label %254

; <label>:248                                     ; preds = %247
  %249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = fsub fast float 1.000000e+00, %250
  %252 = select i1 %182, float %251, float %250
  %253 = fmul fast float %252, %178
  br label %254

; <label>:254                                     ; preds = %248, %247
  %255 = phi float [ %253, %248 ], [ 0.000000e+00, %247 ]
  %256 = fadd fast float %255, %180
  %257 = call float @dx.op.unary.f32(i32 7, float %256)  ; Saturate(value)
  br label %258

; <label>:258                                     ; preds = %254, %242
  %259 = phi float [ %246, %242 ], [ %257, %254 ]
  %260 = fmul fast float %259, %137
  br label %261

; <label>:261                                     ; preds = %258, %116
  %262 = phi float [ %260, %258 ], [ %137, %116 ]
  %263 = call float @dx.op.binary.f32(i32 35, float %262, float 0.000000e+00)  ; FMax(a,b)
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 3
  %266 = bitcast float %265 to i32
  %267 = and i32 %266, 1
  %268 = icmp eq i32 %267, 0
  %269 = and i32 %266, 4
  %270 = icmp eq i32 %269, 0
  br i1 %268, label %344, label %271, !dx.controlflow.hints !48

; <label>:271                                     ; preds = %261
  %272 = and i32 %266, 2
  %273 = icmp eq i32 %272, 0
  %274 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %275 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %276 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %277 = fmul fast float %274, %145
  %278 = fmul fast float %275, %153
  %279 = fmul fast float %276, %161
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = fmul fast float %281, %277
  %283 = fmul fast float %281, %278
  %284 = fmul fast float %281, %279
  br i1 %273, label %344, label %285, !dx.controlflow.hints !49

; <label>:285                                     ; preds = %271
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 0
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %291 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %292 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float %284, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %297 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float %284, float %294, float %295, float %296)  ; Dot3(ax,ay,az,bx,by,bz)
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %301 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %302 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float %284, float %299, float %300, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = fmul fast float %292, %287
  %304 = fmul fast float %297, %287
  %305 = fmul fast float %302, %287
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = fmul fast float %303, %307
  %309 = fmul fast float %304, %307
  %310 = fmul fast float %305, %307
  %311 = fadd fast float %308, 9.765625e-04
  %312 = fadd fast float %309, 9.765625e-04
  %313 = fadd fast float %310, 9.765625e-04
  %314 = call float @dx.op.unary.f32(i32 23, float %311)  ; Log(value)
  %315 = call float @dx.op.unary.f32(i32 23, float %312)  ; Log(value)
  %316 = call float @dx.op.unary.f32(i32 23, float %313)  ; Log(value)
  %317 = fadd fast float %314, 1.000000e+01
  %318 = fadd fast float %315, 1.000000e+01
  %319 = fadd fast float %316, 1.000000e+01
  %320 = fmul fast float %317, 0x3FA99999A0000000
  %321 = fmul fast float %318, 0x3FA99999A0000000
  %322 = fmul fast float %319, 0x3FA99999A0000000
  %323 = call float @dx.op.unary.f32(i32 7, float %320)  ; Saturate(value)
  %324 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %325 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = fmul fast float %327, %323
  %331 = fmul fast float %328, %324
  %332 = fmul fast float %329, %325
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = fadd fast float %330, %334
  %338 = fadd fast float %331, %335
  %339 = fadd fast float %332, %336
  %340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %337, float %338, float %339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = extractvalue %dx.types.ResRet.f32 %340, 1
  %343 = extractvalue %dx.types.ResRet.f32 %340, 2
  br label %344

; <label>:344                                     ; preds = %285, %271, %261
  %345 = phi float [ %341, %285 ], [ %145, %261 ], [ %282, %271 ]
  %346 = phi float [ %342, %285 ], [ %153, %261 ], [ %283, %271 ]
  %347 = phi float [ %343, %285 ], [ %161, %261 ], [ %284, %271 ]
  %348 = fcmp fast oeq float %263, 0.000000e+00
  br i1 %348, label %349, label %350, !dx.controlflow.hints !50

; <label>:349                                     ; preds = %344
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %350

; <label>:350                                     ; preds = %349, %344
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %353 = fcmp fast ogt float %352, 0.000000e+00
  br i1 %353, label %354, label %420, !dx.controlflow.hints !51

; <label>:354                                     ; preds = %350
  %355 = fcmp fast oeq float %352, 2.000000e+00
  br i1 %355, label %356, label %408, !dx.controlflow.hints !52

; <label>:356                                     ; preds = %354
  %357 = fcmp fast ole float %345, 0x3F69A5C380000000
  %358 = fcmp fast ole float %346, 0x3F69A5C380000000
  %359 = fcmp fast ole float %347, 0x3F69A5C380000000
  %360 = fmul fast float %345, 0x4029D70A40000000
  %361 = fmul fast float %346, 0x4029D70A40000000
  %362 = fmul fast float %347, 0x4029D70A40000000
  %363 = call float @dx.op.unary.f32(i32 23, float %345)  ; Log(value)
  %364 = call float @dx.op.unary.f32(i32 23, float %346)  ; Log(value)
  %365 = call float @dx.op.unary.f32(i32 23, float %347)  ; Log(value)
  %366 = fmul fast float %363, 0x3FDAAAAAA0000000
  %367 = fmul fast float %364, 0x3FDAAAAAA0000000
  %368 = fmul fast float %365, 0x3FDAAAAAA0000000
  %369 = call float @dx.op.unary.f32(i32 21, float %366)  ; Exp(value)
  %370 = call float @dx.op.unary.f32(i32 21, float %367)  ; Exp(value)
  %371 = call float @dx.op.unary.f32(i32 21, float %368)  ; Exp(value)
  %372 = fmul fast float %369, 0x3FF0E147A0000000
  %373 = fmul fast float %370, 0x3FF0E147A0000000
  %374 = fmul fast float %371, 0x3FF0E147A0000000
  %375 = fadd fast float %372, 0xBFAC28F5C0000000
  %376 = fadd fast float %373, 0xBFAC28F5C0000000
  %377 = fadd fast float %374, 0xBFAC28F5C0000000
  %378 = select i1 %357, float %360, float %375
  %379 = select i1 %358, float %361, float %376
  %380 = select i1 %359, float %362, float %377
  %381 = fsub fast float 1.000000e+00, %378
  %382 = fsub fast float 1.000000e+00, %379
  %383 = fsub fast float 1.000000e+00, %380
  %384 = fcmp fast ole float %381, 0x3FA4B5DCC0000000
  %385 = fmul fast float %381, 0x3FB3D07220000000
  %386 = fsub fast float 0x3FF0E147A0000000, %378
  %387 = fmul fast float %386, 0x3FEE54EDE0000000
  %388 = call float @dx.op.unary.f32(i32 23, float %387)  ; Log(value)
  %389 = fmul fast float %388, 0x4003333340000000
  %390 = call float @dx.op.unary.f32(i32 21, float %389)  ; Exp(value)
  %391 = select i1 %384, float %385, float %390
  %392 = fcmp fast ole float %382, 0x3FA4B5DCC0000000
  %393 = fmul fast float %382, 0x3FB3D07220000000
  %394 = fsub fast float 0x3FF0E147A0000000, %379
  %395 = fmul fast float %394, 0x3FEE54EDE0000000
  %396 = call float @dx.op.unary.f32(i32 23, float %395)  ; Log(value)
  %397 = fmul fast float %396, 0x4003333340000000
  %398 = call float @dx.op.unary.f32(i32 21, float %397)  ; Exp(value)
  %399 = select i1 %392, float %393, float %398
  %400 = fcmp fast ole float %383, 0x3FA4B5DCC0000000
  %401 = fmul fast float %383, 0x3FB3D07220000000
  %402 = fsub fast float 0x3FF0E147A0000000, %380
  %403 = fmul fast float %402, 0x3FEE54EDE0000000
  %404 = call float @dx.op.unary.f32(i32 23, float %403)  ; Log(value)
  %405 = fmul fast float %404, 0x4003333340000000
  %406 = call float @dx.op.unary.f32(i32 21, float %405)  ; Exp(value)
  %407 = select i1 %400, float %401, float %406
  br label %420

; <label>:408                                     ; preds = %354
  %409 = call float @dx.op.dot3.f32(i32 55, float %345, float %346, float %347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = extractvalue %dx.types.CBufRet.f32 %351, 3
  %411 = fsub fast float %345, %409
  %412 = fsub fast float %346, %409
  %413 = fsub fast float %347, %409
  %414 = fmul fast float %410, %411
  %415 = fmul fast float %410, %412
  %416 = fmul fast float %410, %413
  %417 = fadd fast float %414, %409
  %418 = fadd fast float %415, %409
  %419 = fadd fast float %416, %409
  br label %420

; <label>:420                                     ; preds = %408, %356, %350
  %421 = phi float [ %391, %356 ], [ %417, %408 ], [ %345, %350 ]
  %422 = phi float [ %399, %356 ], [ %418, %408 ], [ %346, %350 ]
  %423 = phi float [ %407, %356 ], [ %419, %408 ], [ %347, %350 ]
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %426 = fcmp fast une float %425, 0.000000e+00
  br i1 %426, label %427, label %601, !dx.controlflow.hints !53

; <label>:427                                     ; preds = %420
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = fsub fast float %22, %429
  %432 = fsub fast float %23, %430
  %433 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %434 = extractvalue %dx.types.CBufRet.f32 %428, 3
  %435 = fmul fast float %431, %433
  %436 = fmul fast float %432, %434
  %437 = call float @dx.op.unary.f32(i32 6, float %425)  ; FAbs(value)
  %438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float %437)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.i32 %442, 3
  %444 = and i32 %443, 3
  %445 = icmp ne i32 %444, 0
  %446 = and i32 %443, 4
  %447 = icmp eq i32 %446, 0
  %448 = and i1 %445, %447
  br i1 %448, label %449, label %493

; <label>:449                                     ; preds = %427
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = fcmp fast oge float %440, %451
  %453 = zext i1 %452 to i32
  br i1 %452, label %454, label %493

; <label>:454                                     ; preds = %449
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 3
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %459 = fcmp fast ogt float %458, 0.000000e+00
  br i1 %459, label %460, label %468, !dx.controlflow.hints !54

; <label>:460                                     ; preds = %454
  %461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %440, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = fcmp fast ogt float %458, 1.500000e+00
  %466 = select i1 %465, float %462, float %463
  %467 = select i1 %465, float %462, float %464
  br label %486

; <label>:468                                     ; preds = %454
  %469 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %472 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %473 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %474 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %475 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %476 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %477 = fsub fast float %471, %474
  %478 = fsub fast float %472, %475
  %479 = fsub fast float %473, %476
  %480 = fmul fast float %477, %469
  %481 = fmul fast float %478, %469
  %482 = fmul fast float %479, %469
  %483 = fadd fast float %480, %474
  %484 = fadd fast float %481, %475
  %485 = fadd fast float %482, %476
  br label %486

; <label>:486                                     ; preds = %468, %460
  %487 = phi float [ %462, %460 ], [ %483, %468 ]
  %488 = phi float [ %466, %460 ], [ %484, %468 ]
  %489 = phi float [ %467, %460 ], [ %485, %468 ]
  %490 = fmul fast float %487, %456
  %491 = fmul fast float %488, %456
  %492 = fmul fast float %489, %456
  br label %493

; <label>:493                                     ; preds = %486, %449, %427
  %494 = phi float [ %490, %486 ], [ %439, %427 ], [ %439, %449 ]
  %495 = phi float [ %491, %486 ], [ %440, %427 ], [ %439, %449 ]
  %496 = phi float [ %492, %486 ], [ %441, %427 ], [ %439, %449 ]
  %497 = phi i32 [ %453, %486 ], [ 0, %427 ], [ %453, %449 ]
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %553

; <label>:499                                     ; preds = %493
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 0
  %502 = extractvalue %dx.types.CBufRet.f32 %500, 1
  %503 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %504 = call float @dx.op.dot3.f32(i32 55, float %494, float %495, float %496, float %501, float %502, float %503)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %508 = extractvalue %dx.types.CBufRet.f32 %505, 2
  %509 = call float @dx.op.dot3.f32(i32 55, float %494, float %495, float %496, float %506, float %507, float %508)  ; Dot3(ax,ay,az,bx,by,bz)
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %513 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %514 = call float @dx.op.dot3.f32(i32 55, float %494, float %495, float %496, float %511, float %512, float %513)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %517 = fmul fast float %516, %504
  %518 = fmul fast float %516, %509
  %519 = fmul fast float %516, %514
  %520 = fadd fast float %517, 9.765625e-04
  %521 = fadd fast float %518, 9.765625e-04
  %522 = fadd fast float %519, 9.765625e-04
  %523 = call float @dx.op.unary.f32(i32 23, float %520)  ; Log(value)
  %524 = call float @dx.op.unary.f32(i32 23, float %521)  ; Log(value)
  %525 = call float @dx.op.unary.f32(i32 23, float %522)  ; Log(value)
  %526 = fadd fast float %523, 1.000000e+01
  %527 = fadd fast float %524, 1.000000e+01
  %528 = fadd fast float %525, 1.000000e+01
  %529 = fmul fast float %526, 0x3FA99999A0000000
  %530 = fmul fast float %527, 0x3FA99999A0000000
  %531 = fmul fast float %528, 0x3FA99999A0000000
  %532 = call float @dx.op.unary.f32(i32 7, float %529)  ; Saturate(value)
  %533 = call float @dx.op.unary.f32(i32 7, float %530)  ; Saturate(value)
  %534 = call float @dx.op.unary.f32(i32 7, float %531)  ; Saturate(value)
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 0
  %537 = extractvalue %dx.types.CBufRet.f32 %535, 1
  %538 = extractvalue %dx.types.CBufRet.f32 %535, 2
  %539 = fmul fast float %536, %532
  %540 = fmul fast float %537, %533
  %541 = fmul fast float %538, %534
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %544 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %545 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %546 = fadd fast float %539, %543
  %547 = fadd fast float %540, %544
  %548 = fadd fast float %541, %545
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %546, float %547, float %548, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  br label %553

; <label>:553                                     ; preds = %499, %493
  %554 = phi float [ %494, %493 ], [ %550, %499 ]
  %555 = phi float [ %495, %493 ], [ %551, %499 ]
  %556 = phi float [ %496, %493 ], [ %552, %499 ]
  %557 = fcmp fast ole float %554, 0x3FA4B5DCC0000000
  %558 = fmul fast float %554, 0x3FB3D07220000000
  %559 = fadd fast float %554, 0x3FAC28F5C0000000
  %560 = fmul fast float %559, 0x3FEE54EDE0000000
  %561 = call float @dx.op.unary.f32(i32 23, float %560)  ; Log(value)
  %562 = fmul fast float %561, 0x4003333340000000
  %563 = call float @dx.op.unary.f32(i32 21, float %562)  ; Exp(value)
  %564 = select i1 %557, float %558, float %563
  %565 = fcmp fast ole float %555, 0x3FA4B5DCC0000000
  %566 = fmul fast float %555, 0x3FB3D07220000000
  %567 = fadd fast float %555, 0x3FAC28F5C0000000
  %568 = fmul fast float %567, 0x3FEE54EDE0000000
  %569 = call float @dx.op.unary.f32(i32 23, float %568)  ; Log(value)
  %570 = fmul fast float %569, 0x4003333340000000
  %571 = call float @dx.op.unary.f32(i32 21, float %570)  ; Exp(value)
  %572 = select i1 %565, float %566, float %571
  %573 = fcmp fast ole float %556, 0x3FA4B5DCC0000000
  %574 = fmul fast float %556, 0x3FB3D07220000000
  %575 = fadd fast float %556, 0x3FAC28F5C0000000
  %576 = fmul fast float %575, 0x3FEE54EDE0000000
  %577 = call float @dx.op.unary.f32(i32 23, float %576)  ; Log(value)
  %578 = fmul fast float %577, 0x4003333340000000
  %579 = call float @dx.op.unary.f32(i32 21, float %578)  ; Exp(value)
  %580 = select i1 %573, float %574, float %579
  %581 = fcmp fast olt float %425, 0.000000e+00
  br i1 %581, label %582, label %594

; <label>:582                                     ; preds = %553
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %587 = call float @dx.op.dot3.f32(i32 55, float %564, float %572, float %580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = fsub fast float %587, %584
  %589 = fmul fast float %588, %585
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = fsub fast float 1.000000e+00, %586
  %592 = fmul fast float %590, %591
  %593 = fadd fast float %592, %586
  br label %594

; <label>:594                                     ; preds = %582, %553
  %595 = phi float [ %593, %582 ], [ %564, %553 ]
  %596 = phi float [ %593, %582 ], [ %572, %553 ]
  %597 = phi float [ %593, %582 ], [ %580, %553 ]
  %598 = fmul fast float %595, %421
  %599 = fmul fast float %596, %422
  %600 = fmul fast float %597, %423
  br label %601

; <label>:601                                     ; preds = %594, %420
  %602 = phi float [ %598, %594 ], [ %421, %420 ]
  %603 = phi float [ %599, %594 ], [ %422, %420 ]
  %604 = phi float [ %600, %594 ], [ %423, %420 ]
  %605 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %606 = fcmp fast ogt float %605, 0.000000e+00
  br i1 %606, label %607, label %648, !dx.controlflow.hints !55

; <label>:607                                     ; preds = %601
  %608 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %609 = bitcast float %608 to i32
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = lshr i32 %609, 8
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = lshr i32 %609, 16
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = lshr i32 %609, 24
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = fadd fast float %617, %611
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = fadd fast float %614, %620
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = fdiv fast float %22, %623
  %627 = fdiv fast float %23, %625
  %628 = fsub fast float -0.000000e+00, %626
  %629 = fsub fast float -0.000000e+00, %627
  %630 = fcmp fast oge float %626, %628
  %631 = fcmp fast oge float %627, %629
  %632 = call float @dx.op.unary.f32(i32 6, float %626)  ; FAbs(value)
  %633 = call float @dx.op.unary.f32(i32 6, float %627)  ; FAbs(value)
  %634 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %635 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %636 = fsub fast float -0.000000e+00, %634
  %637 = fsub fast float -0.000000e+00, %635
  %638 = select i1 %630, float %634, float %636
  %639 = select i1 %631, float %635, float %637
  %640 = fmul fast float %623, %638
  %641 = fmul fast float %639, %625
  %642 = fcmp fast olt float %640, %618
  %643 = fcmp fast olt float %641, %621
  %644 = or i1 %642, %643
  br i1 %644, label %645, label %648, !dx.controlflow.hints !56

; <label>:645                                     ; preds = %607
  %646 = fsub fast float 1.000000e+00, %605
  %647 = fmul fast float %646, %263
  br label %648

; <label>:648                                     ; preds = %645, %607, %601
  %649 = phi float [ %647, %645 ], [ %263, %607 ], [ %263, %601 ]
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 3
  %652 = fcmp fast ogt float %651, 0.000000e+00
  br i1 %652, label %653, label %736, !dx.controlflow.hints !57

; <label>:653                                     ; preds = %648
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 3
  %659 = fmul fast float %658, 1.000000e+01
  %660 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %663 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %664 = fmul fast float %662, %22
  %665 = fmul fast float %663, %23
  %666 = call float @dx.op.unary.f32(i32 27, float %664)  ; Round_ni(value)
  %667 = call float @dx.op.unary.f32(i32 27, float %665)  ; Round_ni(value)
  %668 = fmul fast float %660, 0x4002B851E0000000
  %669 = call float @dx.op.unary.f32(i32 22, float %668)  ; Frc(value)
  %670 = fadd fast float %669, 0x3FB99999A0000000
  %671 = fadd fast float %670, %666
  %672 = fadd fast float %670, %667
  %673 = fmul fast float %671, 0x3FE1BEDF00000000
  %674 = call float @dx.op.unary.f32(i32 22, float %673)  ; Frc(value)
  %675 = fmul fast float %671, %674
  %676 = fadd fast float %675, %672
  %677 = fmul fast float %672, 0x3FD3BEBE20000000
  %678 = call float @dx.op.unary.f32(i32 22, float %677)  ; Frc(value)
  %679 = fmul fast float %672, %678
  %680 = fadd fast float %679, %671
  %681 = fmul fast float %676, %680
  %682 = call float @dx.op.unary.f32(i32 22, float %681)  ; Frc(value)
  %683 = extractvalue %dx.types.CBufRet.f32 %661, 3
  %684 = bitcast float %683 to i32
  %685 = and i32 %684, 255
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, 0x3F70101020000000
  %688 = fmul fast float %687, %655
  %689 = fcmp fast olt float %682, %688
  br i1 %689, label %690, label %697, !dx.controlflow.hints !58

; <label>:690                                     ; preds = %653
  %691 = fmul fast float %682, 0x4057091680000000
  %692 = call float @dx.op.unary.f32(i32 22, float %691)  ; Frc(value)
  %693 = fmul fast float %692, %602
  %694 = fmul fast float %692, %604
  %695 = fsub fast float 1.000000e+00, %692
  %696 = fmul fast float %695, %603
  br label %697

; <label>:697                                     ; preds = %690, %653
  %698 = phi float [ %693, %690 ], [ %602, %653 ]
  %699 = phi float [ %696, %690 ], [ %603, %653 ]
  %700 = phi float [ %694, %690 ], [ %604, %653 ]
  %701 = fmul fast float %682, 0x4028B0A3E0000000
  %702 = call float @dx.op.unary.f32(i32 22, float %701)  ; Frc(value)
  %703 = fmul fast float %687, %656
  %704 = fcmp fast olt float %702, %703
  br i1 %704, label %705, label %724, !dx.controlflow.hints !59

; <label>:705                                     ; preds = %697
  %706 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %707 = fmul fast float %706, %22
  %708 = call float @dx.op.unary.f32(i32 27, float %707)  ; Round_ni(value)
  %709 = fmul fast float %708, 0x3FD5555560000000
  %710 = call float @dx.op.unary.f32(i32 22, float %709)  ; Frc(value)
  %711 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %712 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %713 = fcmp fast olt float %710, 0x3FD51EB860000000
  br i1 %713, label %717, label %714, !dx.controlflow.hints !60

; <label>:714                                     ; preds = %705
  %715 = fcmp fast olt float %710, 0x3FE51EB860000000
  br i1 %715, label %717, label %716, !dx.controlflow.hints !61

; <label>:716                                     ; preds = %714
  br label %717

; <label>:717                                     ; preds = %716, %714, %705
  %718 = phi float [ %711, %716 ], [ %712, %705 ], [ %711, %714 ]
  %719 = phi float [ %711, %716 ], [ %711, %705 ], [ %712, %714 ]
  %720 = phi float [ %712, %716 ], [ %711, %705 ], [ %711, %714 ]
  %721 = fmul fast float %718, %698
  %722 = fmul fast float %719, %699
  %723 = fmul fast float %720, %700
  br label %724

; <label>:724                                     ; preds = %717, %697
  %725 = phi float [ %721, %717 ], [ %698, %697 ]
  %726 = phi float [ %722, %717 ], [ %699, %697 ]
  %727 = phi float [ %723, %717 ], [ %700, %697 ]
  %728 = fmul fast float %682, 0x40223EF9E0000000
  %729 = call float @dx.op.unary.f32(i32 22, float %728)  ; Frc(value)
  %730 = fmul fast float %687, %651
  %731 = fmul fast float %729, %729
  %732 = fmul fast float %731, %730
  %733 = fsub fast float 1.000000e+00, %732
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %735 = fmul fast float %734, %649
  br label %736

; <label>:736                                     ; preds = %724, %648
  %737 = phi float [ %725, %724 ], [ %602, %648 ]
  %738 = phi float [ %726, %724 ], [ %603, %648 ]
  %739 = phi float [ %727, %724 ], [ %604, %648 ]
  %740 = phi float [ %735, %724 ], [ %649, %648 ]
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %743 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %744 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %747 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %748 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %751 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %752 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %753 = fmul fast float %742, %737
  %754 = call float @dx.op.tertiary.f32(i32 46, float %743, float %738, float %753)  ; FMad(a,b,c)
  %755 = call float @dx.op.tertiary.f32(i32 46, float %744, float %739, float %754)  ; FMad(a,b,c)
  %756 = fmul fast float %746, %737
  %757 = call float @dx.op.tertiary.f32(i32 46, float %747, float %738, float %756)  ; FMad(a,b,c)
  %758 = call float @dx.op.tertiary.f32(i32 46, float %748, float %739, float %757)  ; FMad(a,b,c)
  %759 = fmul fast float %750, %737
  %760 = call float @dx.op.tertiary.f32(i32 46, float %751, float %738, float %759)  ; FMad(a,b,c)
  %761 = call float @dx.op.tertiary.f32(i32 46, float %752, float %739, float %760)  ; FMad(a,b,c)
  br i1 %270, label %762, label %1069, !dx.controlflow.hints !62

; <label>:762                                     ; preds = %736
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = bitcast float %764 to i32
  %766 = and i32 %765, 128
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %782, label %768

; <label>:768                                     ; preds = %762
  %769 = call float @dx.op.unary.f32(i32 24, float %755)  ; Sqrt(value)
  %770 = call float @dx.op.unary.f32(i32 24, float %758)  ; Sqrt(value)
  %771 = call float @dx.op.unary.f32(i32 24, float %761)  ; Sqrt(value)
  %772 = fmul fast float %769, 9.687500e-01
  %773 = fmul fast float %770, 9.687500e-01
  %774 = fmul fast float %771, 9.687500e-01
  %775 = fadd fast float %772, 1.562500e-02
  %776 = fadd fast float %773, 1.562500e-02
  %777 = fadd fast float %774, 1.562500e-02
  %778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %9, float %775, float %776, float %777, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  br label %1069

; <label>:782                                     ; preds = %762
  %783 = and i32 %765, 127
  switch i32 %783, label %1069 [
    i32 1, label %784
    i32 2, label %784
    i32 0, label %784
    i32 3, label %814
    i32 4, label %935
  ]

; <label>:784                                     ; preds = %782, %782, %782
  %785 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %786 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %787 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %788 = call float @dx.op.unary.f32(i32 23, float %785)  ; Log(value)
  %789 = call float @dx.op.unary.f32(i32 23, float %786)  ; Log(value)
  %790 = call float @dx.op.unary.f32(i32 23, float %787)  ; Log(value)
  %791 = fmul fast float %788, 0x3FDAAAAAA0000000
  %792 = fmul fast float %789, 0x3FDAAAAAA0000000
  %793 = fmul fast float %790, 0x3FDAAAAAA0000000
  %794 = call float @dx.op.unary.f32(i32 21, float %791)  ; Exp(value)
  %795 = call float @dx.op.unary.f32(i32 21, float %792)  ; Exp(value)
  %796 = call float @dx.op.unary.f32(i32 21, float %793)  ; Exp(value)
  %797 = fmul fast float %794, 0x3FF0E147A0000000
  %798 = fmul fast float %795, 0x3FF0E147A0000000
  %799 = fmul fast float %796, 0x3FF0E147A0000000
  %800 = fadd fast float %797, 0xBFAC28F5C0000000
  %801 = fadd fast float %798, 0xBFAC28F5C0000000
  %802 = fadd fast float %799, 0xBFAC28F5C0000000
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %807 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %808 = fmul fast float %806, %803
  %809 = fmul fast float %806, %804
  %810 = fmul fast float %806, %805
  %811 = fadd fast float %808, %807
  %812 = fadd fast float %809, %807
  %813 = fadd fast float %810, %807
  br label %1069

; <label>:814                                     ; preds = %782
  %815 = fmul fast float %755, 0x4163D57C00000000
  %816 = fmul fast float %758, 0x4163D57C00000000
  %817 = fmul fast float %761, 0x4163D57C00000000
  %818 = fadd fast float %815, 9.999980e+05
  %819 = fadd fast float %816, 9.999980e+05
  %820 = fadd fast float %817, 9.999980e+05
  %821 = fmul fast float %818, %755
  %822 = fmul fast float %819, %758
  %823 = fmul fast float %820, %761
  %824 = fadd fast float %821, 0xC0AFE17A60000000
  %825 = fadd fast float %822, 0xC0AFE17A60000000
  %826 = fadd fast float %823, 0xC0AFE17A60000000
  %827 = fmul fast float %824, %755
  %828 = fmul fast float %825, %758
  %829 = fmul fast float %826, %761
  %830 = fmul fast float %755, 0x40F753C340000000
  %831 = fmul fast float %758, 0x40F753C340000000
  %832 = fmul fast float %761, 0x40F753C340000000
  %833 = fsub fast float 9.999990e+06, %830
  %834 = fsub fast float 9.999990e+06, %831
  %835 = fsub fast float 9.999990e+06, %832
  %836 = fmul fast float %833, %755
  %837 = fmul fast float %834, %758
  %838 = fmul fast float %835, %761
  %839 = fadd fast float %836, 0x4136D1DD80000000
  %840 = fadd fast float %837, 0x4136D1DD80000000
  %841 = fadd fast float %838, 0x4136D1DD80000000
  %842 = fmul fast float %839, %755
  %843 = fmul fast float %840, %758
  %844 = fmul fast float %841, %761
  %845 = fadd fast float %842, 1.000000e+00
  %846 = fadd fast float %843, 1.000000e+00
  %847 = fadd fast float %844, 1.000000e+00
  %848 = fdiv fast float %827, %845
  %849 = fdiv fast float %828, %846
  %850 = fdiv fast float %829, %847
  %851 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %852 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %853 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %854 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %855 = fmul fast float %851, 0x3FE413A920000000
  %856 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %852, float %855)  ; FMad(a,b,c)
  %857 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %853, float %856)  ; FMad(a,b,c)
  %858 = fmul fast float %851, 0x3FB1B089A0000000
  %859 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %852, float %858)  ; FMad(a,b,c)
  %860 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %853, float %859)  ; FMad(a,b,c)
  %861 = fmul fast float %851, 0x3F90CB2960000000
  %862 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %852, float %861)  ; FMad(a,b,c)
  %863 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %853, float %862)  ; FMad(a,b,c)
  %864 = fmul fast float %857, %854
  %865 = fmul fast float %860, %854
  %866 = fmul fast float %863, %854
  %867 = fmul fast float %864, 0x3F847AE140000000
  %868 = fmul fast float %865, 0x3F847AE140000000
  %869 = fmul fast float %866, 0x3F847AE140000000
  %870 = fmul fast float %864, 0x40B4D2F520000000
  %871 = fmul fast float %865, 0x40B4D2F520000000
  %872 = fmul fast float %866, 0x40B4D2F520000000
  %873 = fadd fast float %870, 0x41869ECF20000000
  %874 = fadd fast float %871, 0x41869ECF20000000
  %875 = fadd fast float %872, 0x41869ECF20000000
  %876 = fmul fast float %873, %867
  %877 = fmul fast float %874, %868
  %878 = fmul fast float %875, %869
  %879 = fadd fast float %876, 0x417BB79C60000000
  %880 = fadd fast float %877, 0x417BB79C60000000
  %881 = fadd fast float %878, 0x417BB79C60000000
  %882 = fmul fast float %879, %867
  %883 = fmul fast float %880, %868
  %884 = fmul fast float %881, %869
  %885 = fadd fast float %882, 0x41218DE180000000
  %886 = fadd fast float %883, 0x41218DE180000000
  %887 = fadd fast float %884, 0x41218DE180000000
  %888 = fmul fast float %885, %867
  %889 = fmul fast float %886, %868
  %890 = fmul fast float %887, %869
  %891 = fadd fast float %888, 0x4077F174E0000000
  %892 = fadd fast float %889, 0x4077F174E0000000
  %893 = fadd fast float %890, 0x4077F174E0000000
  %894 = fmul fast float %891, %867
  %895 = fmul fast float %892, %868
  %896 = fmul fast float %893, %869
  %897 = fadd fast float %894, 0x3F3FF79B80000000
  %898 = fadd fast float %895, 0x3F3FF79B80000000
  %899 = fadd fast float %896, 0x3F3FF79B80000000
  %900 = fmul fast float %864, 0x412442D320000000
  %901 = fmul fast float %865, 0x412442D320000000
  %902 = fmul fast float %866, 0x412442D320000000
  %903 = fadd fast float %900, 0x419385D5C0000000
  %904 = fadd fast float %901, 0x419385D5C0000000
  %905 = fadd fast float %902, 0x419385D5C0000000
  %906 = fmul fast float %903, %867
  %907 = fmul fast float %904, %868
  %908 = fmul fast float %905, %869
  %909 = fadd fast float %906, 4.182885e+06
  %910 = fadd fast float %907, 4.182885e+06
  %911 = fadd fast float %908, 4.182885e+06
  %912 = fmul fast float %909, %867
  %913 = fmul fast float %910, %868
  %914 = fmul fast float %911, %869
  %915 = fadd fast float %912, 0x40C4D633C0000000
  %916 = fadd fast float %913, 0x40C4D633C0000000
  %917 = fadd fast float %914, 0x40C4D633C0000000
  %918 = fmul fast float %915, %867
  %919 = fmul fast float %916, %868
  %920 = fmul fast float %917, %869
  %921 = fadd fast float %918, 1.000000e+00
  %922 = fadd fast float %919, 1.000000e+00
  %923 = fadd fast float %920, 1.000000e+00
  %924 = fdiv fast float %897, %921
  %925 = fdiv fast float %898, %922
  %926 = fdiv fast float %899, %923
  %927 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %928 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %929 = fmul fast float %927, %924
  %930 = fmul fast float %927, %925
  %931 = fmul fast float %927, %926
  %932 = fadd fast float %929, %928
  %933 = fadd fast float %930, %928
  %934 = fadd fast float %931, %928
  br label %1069

; <label>:935                                     ; preds = %782
  %936 = fmul fast float %755, 0x4163D57C00000000
  %937 = fmul fast float %758, 0x4163D57C00000000
  %938 = fmul fast float %761, 0x4163D57C00000000
  %939 = fadd fast float %936, 9.999980e+05
  %940 = fadd fast float %937, 9.999980e+05
  %941 = fadd fast float %938, 9.999980e+05
  %942 = fmul fast float %939, %755
  %943 = fmul fast float %940, %758
  %944 = fmul fast float %941, %761
  %945 = fadd fast float %942, 0xC0AFE17A60000000
  %946 = fadd fast float %943, 0xC0AFE17A60000000
  %947 = fadd fast float %944, 0xC0AFE17A60000000
  %948 = fmul fast float %945, %755
  %949 = fmul fast float %946, %758
  %950 = fmul fast float %947, %761
  %951 = fmul fast float %755, 0x40F753C340000000
  %952 = fmul fast float %758, 0x40F753C340000000
  %953 = fmul fast float %761, 0x40F753C340000000
  %954 = fsub fast float 9.999990e+06, %951
  %955 = fsub fast float 9.999990e+06, %952
  %956 = fsub fast float 9.999990e+06, %953
  %957 = fmul fast float %954, %755
  %958 = fmul fast float %955, %758
  %959 = fmul fast float %956, %761
  %960 = fadd fast float %957, 0x4136D1DD80000000
  %961 = fadd fast float %958, 0x4136D1DD80000000
  %962 = fadd fast float %959, 0x4136D1DD80000000
  %963 = fmul fast float %960, %755
  %964 = fmul fast float %961, %758
  %965 = fmul fast float %962, %761
  %966 = fadd fast float %963, 1.000000e+00
  %967 = fadd fast float %964, 1.000000e+00
  %968 = fadd fast float %965, 1.000000e+00
  %969 = fdiv fast float %948, %966
  %970 = fdiv fast float %949, %967
  %971 = fdiv fast float %950, %968
  %972 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %973 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  %974 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %975 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %976 = fmul fast float %972, 0x3FEA519BC0000000
  %977 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %973, float %976)  ; FMad(a,b,c)
  %978 = fmul fast float %972, 0x3FA0FED480000000
  %979 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %973, float %978)  ; FMad(a,b,c)
  %980 = fmul fast float %972, 0x3F917E1C00000000
  %981 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %973, float %980)  ; FMad(a,b,c)
  %982 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %974, float %981)  ; FMad(a,b,c)
  %983 = call float @dx.op.binary.f32(i32 35, float %972, float %973)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 35, float %983, float %974)  ; FMax(a,b)
  %985 = fadd fast float %984, -1.000000e+00
  %986 = fmul fast float %985, 2.500000e-01
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %988 = fsub fast float 1.000000e+00, %987
  %989 = fmul fast float %988, %977
  %990 = fmul fast float %988, %979
  %991 = fmul fast float %988, %982
  %992 = fmul fast float %987, %972
  %993 = fmul fast float %987, %973
  %994 = fmul fast float %987, %974
  %995 = fadd fast float %989, %992
  %996 = fadd fast float %990, %993
  %997 = fadd fast float %991, %994
  %998 = fmul fast float %995, %975
  %999 = fmul fast float %996, %975
  %1000 = fmul fast float %997, %975
  %1001 = fmul fast float %998, 0x3F847AE140000000
  %1002 = fmul fast float %999, 0x3F847AE140000000
  %1003 = fmul fast float %1000, 0x3F847AE140000000
  %1004 = fmul fast float %998, 0x40B4D2F520000000
  %1005 = fmul fast float %999, 0x40B4D2F520000000
  %1006 = fmul fast float %1000, 0x40B4D2F520000000
  %1007 = fadd fast float %1004, 0x41869ECF20000000
  %1008 = fadd fast float %1005, 0x41869ECF20000000
  %1009 = fadd fast float %1006, 0x41869ECF20000000
  %1010 = fmul fast float %1007, %1001
  %1011 = fmul fast float %1008, %1002
  %1012 = fmul fast float %1009, %1003
  %1013 = fadd fast float %1010, 0x417BB79C60000000
  %1014 = fadd fast float %1011, 0x417BB79C60000000
  %1015 = fadd fast float %1012, 0x417BB79C60000000
  %1016 = fmul fast float %1013, %1001
  %1017 = fmul fast float %1014, %1002
  %1018 = fmul fast float %1015, %1003
  %1019 = fadd fast float %1016, 0x41218DE180000000
  %1020 = fadd fast float %1017, 0x41218DE180000000
  %1021 = fadd fast float %1018, 0x41218DE180000000
  %1022 = fmul fast float %1019, %1001
  %1023 = fmul fast float %1020, %1002
  %1024 = fmul fast float %1021, %1003
  %1025 = fadd fast float %1022, 0x4077F174E0000000
  %1026 = fadd fast float %1023, 0x4077F174E0000000
  %1027 = fadd fast float %1024, 0x4077F174E0000000
  %1028 = fmul fast float %1025, %1001
  %1029 = fmul fast float %1026, %1002
  %1030 = fmul fast float %1027, %1003
  %1031 = fadd fast float %1028, 0x3F3FF79B80000000
  %1032 = fadd fast float %1029, 0x3F3FF79B80000000
  %1033 = fadd fast float %1030, 0x3F3FF79B80000000
  %1034 = fmul fast float %998, 0x412442D320000000
  %1035 = fmul fast float %999, 0x412442D320000000
  %1036 = fmul fast float %1000, 0x412442D320000000
  %1037 = fadd fast float %1034, 0x419385D5C0000000
  %1038 = fadd fast float %1035, 0x419385D5C0000000
  %1039 = fadd fast float %1036, 0x419385D5C0000000
  %1040 = fmul fast float %1037, %1001
  %1041 = fmul fast float %1038, %1002
  %1042 = fmul fast float %1039, %1003
  %1043 = fadd fast float %1040, 4.182885e+06
  %1044 = fadd fast float %1041, 4.182885e+06
  %1045 = fadd fast float %1042, 4.182885e+06
  %1046 = fmul fast float %1043, %1001
  %1047 = fmul fast float %1044, %1002
  %1048 = fmul fast float %1045, %1003
  %1049 = fadd fast float %1046, 0x40C4D633C0000000
  %1050 = fadd fast float %1047, 0x40C4D633C0000000
  %1051 = fadd fast float %1048, 0x40C4D633C0000000
  %1052 = fmul fast float %1049, %1001
  %1053 = fmul fast float %1050, %1002
  %1054 = fmul fast float %1051, %1003
  %1055 = fadd fast float %1052, 1.000000e+00
  %1056 = fadd fast float %1053, 1.000000e+00
  %1057 = fadd fast float %1054, 1.000000e+00
  %1058 = fdiv fast float %1031, %1055
  %1059 = fdiv fast float %1032, %1056
  %1060 = fdiv fast float %1033, %1057
  %1061 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %1062 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %1063 = fmul fast float %1061, %1058
  %1064 = fmul fast float %1061, %1059
  %1065 = fmul fast float %1061, %1060
  %1066 = fadd fast float %1063, %1062
  %1067 = fadd fast float %1064, %1062
  %1068 = fadd fast float %1065, %1062
  br label %1069

; <label>:1069                                    ; preds = %935, %814, %784, %782, %768, %736
  %1070 = phi float [ %755, %736 ], [ %779, %768 ], [ %755, %782 ], [ %1066, %935 ], [ %932, %814 ], [ %811, %784 ]
  %1071 = phi float [ %758, %736 ], [ %780, %768 ], [ %758, %782 ], [ %1067, %935 ], [ %933, %814 ], [ %812, %784 ]
  %1072 = phi float [ %761, %736 ], [ %781, %768 ], [ %761, %782 ], [ %1068, %935 ], [ %934, %814 ], [ %813, %784 ]
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1076 = call float @dx.op.unary.f32(i32 23, float %740)  ; Log(value)
  %1077 = fmul fast float %1076, %1075
  %1078 = call float @dx.op.unary.f32(i32 21, float %1077)  ; Exp(value)
  %1079 = fmul fast float %1078, %1074
  %1080 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1081 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1082 = fmul fast float %1076, %1081
  %1083 = call float @dx.op.unary.f32(i32 21, float %1082)  ; Exp(value)
  %1084 = fmul fast float %1083, %1080
  %1085 = fadd fast float %1084, %1079
  %1086 = fmul fast float %1085, %1070
  %1087 = fmul fast float %1085, %1071
  %1088 = fmul fast float %1085, %1072
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1086)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1087)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1088)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1085)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!22}
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !14, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!14 = !{!15, !16, !17, !18}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!17 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 112, null}
!18 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!22 = !{[22 x i32] [i32 20, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!23 = !{void ()* @ps_main, !"ps_main", !24, !4, !44}
!24 = !{!25, !42, null}
!25 = !{!26, !29, !31, !32, !34, !36, !38, !40}
!26 = !{i32 0, !"SV_Position", i8 9, i8 3, !27, i8 4, i32 1, i8 4, i32 0, i8 0, !28}
!27 = !{i32 0}
!28 = !{i32 3, i32 3}
!29 = !{i32 1, !"COLOR", i8 9, i8 0, !27, i8 2, i32 1, i8 4, i32 1, i8 0, !30}
!30 = !{i32 3, i32 15}
!31 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !27, i8 2, i32 1, i8 2, i32 2, i8 0, !28}
!32 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !33, i8 2, i32 1, i8 2, i32 2, i8 2, !28}
!33 = !{i32 2}
!34 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!35 = !{i32 3}
!36 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!37 = !{i32 4}
!38 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!39 = !{i32 5}
!40 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!41 = !{i32 6}
!42 = !{!43}
!43 = !{i32 0, !"SV_Target", i8 9, i8 16, !27, i8 0, i32 1, i8 4, i32 0, i8 0, !30}
!44 = !{i32 0, i64 16}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}

