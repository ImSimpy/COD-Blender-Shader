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
; shader hash: 7ec83ae53783c965157e1e7a7901bc72
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s4     1
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
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 1
  %28 = fsub fast float %23, %26
  %29 = fsub fast float %24, %27
  %30 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %32 = fmul fast float %28, %30
  %33 = fmul fast float %29, %31
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 1
  %37 = fmul fast float %32, %35
  %38 = fmul fast float %33, %36
  %39 = fptoui float %37 to i32
  %40 = fptoui float %38 to i32
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %43 = shl i32 %42, 2
  %44 = extractvalue %dx.types.CBufRet.i32 %41, 3
  %45 = add i32 %43, %44
  %46 = lshr i32 %40, 2
  %47 = extractvalue %dx.types.CBufRet.i32 %41, 2
  %48 = mul i32 %46, %47
  %49 = lshr i32 %39, 3
  %50 = add i32 %45, %49
  %51 = add i32 %50, %48
  %52 = shl i32 %51, 2
  %53 = shl i32 %40, 3
  %54 = and i32 %53, 24
  %55 = and i32 %39, 7
  %56 = or i32 %54, %55
  %57 = shl i32 1, %56
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !dx.controlflow.hints !46

; <label>:62                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %63

; <label>:63                                      ; preds = %62, %0
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %66 = fcmp fast ogt float %65, 0.000000e+00
  br i1 %66, label %67, label %117, !dx.controlflow.hints !47

; <label>:67                                      ; preds = %63
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %70 = fmul fast float %69, 1.000000e+01
  %71 = call float @dx.op.unary.f32(i32 27, float %70)  ; Round_ni(value)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = fmul fast float %73, %23
  %76 = fmul fast float %74, %24
  %77 = call float @dx.op.unary.f32(i32 27, float %75)  ; Round_ni(value)
  %78 = call float @dx.op.unary.f32(i32 27, float %76)  ; Round_ni(value)
  %79 = fmul fast float %71, 0x4002B851E0000000
  %80 = call float @dx.op.unary.f32(i32 22, float %79)  ; Frc(value)
  %81 = fadd fast float %80, 0x3FB99999A0000000
  %82 = fadd fast float %81, %77
  %83 = fadd fast float %81, %78
  %84 = fmul fast float %82, 0x3FE1BEDF00000000
  %85 = call float @dx.op.unary.f32(i32 22, float %84)  ; Frc(value)
  %86 = fmul fast float %82, %85
  %87 = fadd fast float %86, %83
  %88 = fmul fast float %83, 0x3FD3BEBE20000000
  %89 = call float @dx.op.unary.f32(i32 22, float %88)  ; Frc(value)
  %90 = fmul fast float %83, %89
  %91 = fadd fast float %90, %82
  %92 = fmul fast float %87, %91
  %93 = call float @dx.op.unary.f32(i32 22, float %92)  ; Frc(value)
  %94 = extractvalue %dx.types.CBufRet.f32 %72, 3
  %95 = bitcast float %94 to i32
  %96 = and i32 %95, 255
  %97 = uitofp i32 %96 to float
  %98 = fmul fast float %93, 0x4085373340000000
  %99 = call float @dx.op.unary.f32(i32 22, float %98)  ; Frc(value)
  %100 = fmul fast float %97, 0x3F6CE9B6A0000000
  %101 = fcmp fast olt float %99, %100
  br i1 %101, label %102, label %117, !dx.controlflow.hints !48

; <label>:102                                     ; preds = %67
  %103 = fdiv fast float %99, %100
  %104 = fmul fast float %103, 2.000000e+00
  %105 = fadd fast float %104, -1.000000e+00
  %106 = lshr i32 %95, 8
  %107 = and i32 %106, 255
  %108 = uitofp i32 %107 to float
  %109 = call float @dx.op.unary.f32(i32 83, float %17)  ; DerivCoarseX(value)
  %110 = call float @dx.op.unary.f32(i32 83, float %18)  ; DerivCoarseX(value)
  %111 = fmul fast float %105, %109
  %112 = fmul fast float %111, %108
  %113 = fmul fast float %110, %105
  %114 = fmul fast float %113, %108
  %115 = fadd fast float %112, %17
  %116 = fadd fast float %114, %18
  br label %117

; <label>:117                                     ; preds = %102, %67, %63
  %118 = phi float [ %115, %102 ], [ %17, %67 ], [ %17, %63 ]
  %119 = phi float [ %116, %102 ], [ %18, %67 ], [ %18, %63 ]
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %10, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 3
  %122 = fmul fast float %121, %22
  %123 = fcmp fast ole float %19, 0x3FA4B5DCC0000000
  %124 = fmul fast float %19, 0x3FB3D07220000000
  %125 = fadd fast float %19, 0x3FAC28F5C0000000
  %126 = fmul fast float %125, 0x3FEE54EDE0000000
  %127 = call float @dx.op.unary.f32(i32 23, float %126)  ; Log(value)
  %128 = fmul fast float %127, 0x4003333340000000
  %129 = call float @dx.op.unary.f32(i32 21, float %128)  ; Exp(value)
  %130 = select i1 %123, float %124, float %129
  %131 = fcmp fast ole float %20, 0x3FA4B5DCC0000000
  %132 = fmul fast float %20, 0x3FB3D07220000000
  %133 = fadd fast float %20, 0x3FAC28F5C0000000
  %134 = fmul fast float %133, 0x3FEE54EDE0000000
  %135 = call float @dx.op.unary.f32(i32 23, float %134)  ; Log(value)
  %136 = fmul fast float %135, 0x4003333340000000
  %137 = call float @dx.op.unary.f32(i32 21, float %136)  ; Exp(value)
  %138 = select i1 %131, float %132, float %137
  %139 = fcmp fast ole float %21, 0x3FA4B5DCC0000000
  %140 = fmul fast float %21, 0x3FB3D07220000000
  %141 = fadd fast float %21, 0x3FAC28F5C0000000
  %142 = fmul fast float %141, 0x3FEE54EDE0000000
  %143 = call float @dx.op.unary.f32(i32 23, float %142)  ; Log(value)
  %144 = fmul fast float %143, 0x4003333340000000
  %145 = call float @dx.op.unary.f32(i32 21, float %144)  ; Exp(value)
  %146 = select i1 %139, float %140, float %145
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %149 = bitcast float %148 to i32
  %150 = and i32 %149, 512
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %246, label %152

; <label>:152                                     ; preds = %117
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %155 = bitcast float %154 to i32
  %156 = and i32 %155, 65535
  %157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %156)  ; LegacyF16ToF32(value)
  %158 = lshr i32 %155, 16
  %159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %158)  ; LegacyF16ToF32(value)
  %160 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %161 = bitcast float %160 to i32
  %162 = and i32 %161, 65535
  %163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %162)  ; LegacyF16ToF32(value)
  %164 = lshr i32 %161, 16
  %165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %164)  ; LegacyF16ToF32(value)
  %166 = and i32 %149, 16
  %167 = icmp ne i32 %166, 0
  %168 = fcmp fast ogt float %157, 0.000000e+00
  %169 = fcmp fast ogt float %159, 0.000000e+00
  %170 = and i1 %168, %169
  %171 = fcmp fast ogt float %163, 0.000000e+00
  br i1 %170, label %172, label %232

; <label>:172                                     ; preds = %152
  br i1 %171, label %173, label %181

; <label>:173                                     ; preds = %172
  %174 = fmul fast float %159, %16
  %175 = fmul fast float %157, %15
  %176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %175, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fsub fast float 1.000000e+00, %177
  %179 = select i1 %167, float %178, float %177
  %180 = fmul fast float %179, %163
  br label %181

; <label>:181                                     ; preds = %173, %172
  %182 = phi float [ %180, %173 ], [ 0.000000e+00, %172 ]
  %183 = fadd fast float %182, %165
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  br i1 %171, label %185, label %195

; <label>:185                                     ; preds = %181
  %186 = fmul fast float %159, %16
  %187 = fsub fast float 1.000000e+00, %15
  %188 = fmul fast float %157, %187
  %189 = fsub fast float 1.000000e+00, %188
  %190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %189, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 1
  %192 = fsub fast float 1.000000e+00, %191
  %193 = select i1 %167, float %192, float %191
  %194 = fmul fast float %193, %163
  br label %195

; <label>:195                                     ; preds = %185, %181
  %196 = phi float [ %194, %185 ], [ 0.000000e+00, %181 ]
  %197 = fadd fast float %196, %165
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fmul fast float %198, %184
  br i1 %171, label %200, label %212

; <label>:200                                     ; preds = %195
  %201 = fsub fast float 1.000000e+00, %16
  %202 = fmul fast float %159, %201
  %203 = fsub fast float 1.000000e+00, %202
  %204 = fsub fast float 1.000000e+00, %15
  %205 = fmul fast float %157, %204
  %206 = fsub fast float 1.000000e+00, %205
  %207 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %206, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 2
  %209 = fsub fast float 1.000000e+00, %208
  %210 = select i1 %167, float %209, float %208
  %211 = fmul fast float %210, %163
  br label %212

; <label>:212                                     ; preds = %200, %195
  %213 = phi float [ %211, %200 ], [ 0.000000e+00, %195 ]
  %214 = fadd fast float %213, %165
  %215 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %216 = fmul fast float %199, %215
  br i1 %171, label %217, label %227

; <label>:217                                     ; preds = %212
  %218 = fsub fast float 1.000000e+00, %16
  %219 = fmul fast float %159, %218
  %220 = fsub fast float 1.000000e+00, %219
  %221 = fmul fast float %157, %15
  %222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %221, float %220, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 3
  %224 = fsub fast float 1.000000e+00, %223
  %225 = select i1 %167, float %224, float %223
  %226 = fmul fast float %225, %163
  br label %227

; <label>:227                                     ; preds = %217, %212
  %228 = phi float [ %226, %217 ], [ 0.000000e+00, %212 ]
  %229 = fadd fast float %228, %165
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = fmul fast float %216, %230
  br label %243

; <label>:232                                     ; preds = %152
  br i1 %171, label %233, label %239

; <label>:233                                     ; preds = %232
  %234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = fsub fast float 1.000000e+00, %235
  %237 = select i1 %167, float %236, float %235
  %238 = fmul fast float %237, %163
  br label %239

; <label>:239                                     ; preds = %233, %232
  %240 = phi float [ %238, %233 ], [ 0.000000e+00, %232 ]
  %241 = fadd fast float %240, %165
  %242 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  br label %243

; <label>:243                                     ; preds = %239, %227
  %244 = phi float [ %231, %227 ], [ %242, %239 ]
  %245 = fmul fast float %244, %122
  br label %246

; <label>:246                                     ; preds = %243, %117
  %247 = phi float [ %245, %243 ], [ %122, %117 ]
  %248 = call float @dx.op.binary.f32(i32 35, float %247, float 0.000000e+00)  ; FMax(a,b)
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %251 = bitcast float %250 to i32
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  %254 = and i32 %251, 4
  %255 = icmp eq i32 %254, 0
  br i1 %253, label %329, label %256, !dx.controlflow.hints !49

; <label>:256                                     ; preds = %246
  %257 = and i32 %251, 2
  %258 = icmp eq i32 %257, 0
  %259 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %261 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %262 = fmul fast float %259, %130
  %263 = fmul fast float %260, %138
  %264 = fmul fast float %261, %146
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = fmul fast float %266, %262
  %268 = fmul fast float %266, %263
  %269 = fmul fast float %266, %264
  br i1 %258, label %329, label %270, !dx.controlflow.hints !50

; <label>:270                                     ; preds = %256
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = extractvalue %dx.types.CBufRet.f32 %273, 1
  %276 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %277 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %280 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %281 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %282 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %287 = call float @dx.op.dot3.f32(i32 55, float %267, float %268, float %269, float %284, float %285, float %286)  ; Dot3(ax,ay,az,bx,by,bz)
  %288 = fmul fast float %277, %272
  %289 = fmul fast float %282, %272
  %290 = fmul fast float %287, %272
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %293 = fmul fast float %288, %292
  %294 = fmul fast float %289, %292
  %295 = fmul fast float %290, %292
  %296 = fadd fast float %293, 9.765625e-04
  %297 = fadd fast float %294, 9.765625e-04
  %298 = fadd fast float %295, 9.765625e-04
  %299 = call float @dx.op.unary.f32(i32 23, float %296)  ; Log(value)
  %300 = call float @dx.op.unary.f32(i32 23, float %297)  ; Log(value)
  %301 = call float @dx.op.unary.f32(i32 23, float %298)  ; Log(value)
  %302 = fadd fast float %299, 1.000000e+01
  %303 = fadd fast float %300, 1.000000e+01
  %304 = fadd fast float %301, 1.000000e+01
  %305 = fmul fast float %302, 0x3FA99999A0000000
  %306 = fmul fast float %303, 0x3FA99999A0000000
  %307 = fmul fast float %304, 0x3FA99999A0000000
  %308 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  %309 = call float @dx.op.unary.f32(i32 7, float %306)  ; Saturate(value)
  %310 = call float @dx.op.unary.f32(i32 7, float %307)  ; Saturate(value)
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = fmul fast float %312, %308
  %316 = fmul fast float %313, %309
  %317 = fmul fast float %314, %310
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fadd fast float %315, %319
  %323 = fadd fast float %316, %320
  %324 = fadd fast float %317, %321
  %325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %322, float %323, float %324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = extractvalue %dx.types.ResRet.f32 %325, 1
  %328 = extractvalue %dx.types.ResRet.f32 %325, 2
  br label %329

; <label>:329                                     ; preds = %270, %256, %246
  %330 = phi float [ %326, %270 ], [ %130, %246 ], [ %267, %256 ]
  %331 = phi float [ %327, %270 ], [ %138, %246 ], [ %268, %256 ]
  %332 = phi float [ %328, %270 ], [ %146, %246 ], [ %269, %256 ]
  %333 = fcmp fast oeq float %248, 0.000000e+00
  br i1 %333, label %334, label %335, !dx.controlflow.hints !51

; <label>:334                                     ; preds = %329
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %335

; <label>:335                                     ; preds = %334, %329
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %338 = fcmp fast ogt float %337, 0.000000e+00
  br i1 %338, label %339, label %405, !dx.controlflow.hints !52

; <label>:339                                     ; preds = %335
  %340 = fcmp fast oeq float %337, 2.000000e+00
  br i1 %340, label %341, label %393, !dx.controlflow.hints !53

; <label>:341                                     ; preds = %339
  %342 = fcmp fast ole float %330, 0x3F69A5C380000000
  %343 = fcmp fast ole float %331, 0x3F69A5C380000000
  %344 = fcmp fast ole float %332, 0x3F69A5C380000000
  %345 = fmul fast float %330, 0x4029D70A40000000
  %346 = fmul fast float %331, 0x4029D70A40000000
  %347 = fmul fast float %332, 0x4029D70A40000000
  %348 = call float @dx.op.unary.f32(i32 23, float %330)  ; Log(value)
  %349 = call float @dx.op.unary.f32(i32 23, float %331)  ; Log(value)
  %350 = call float @dx.op.unary.f32(i32 23, float %332)  ; Log(value)
  %351 = fmul fast float %348, 0x3FDAAAAAA0000000
  %352 = fmul fast float %349, 0x3FDAAAAAA0000000
  %353 = fmul fast float %350, 0x3FDAAAAAA0000000
  %354 = call float @dx.op.unary.f32(i32 21, float %351)  ; Exp(value)
  %355 = call float @dx.op.unary.f32(i32 21, float %352)  ; Exp(value)
  %356 = call float @dx.op.unary.f32(i32 21, float %353)  ; Exp(value)
  %357 = fmul fast float %354, 0x3FF0E147A0000000
  %358 = fmul fast float %355, 0x3FF0E147A0000000
  %359 = fmul fast float %356, 0x3FF0E147A0000000
  %360 = fadd fast float %357, 0xBFAC28F5C0000000
  %361 = fadd fast float %358, 0xBFAC28F5C0000000
  %362 = fadd fast float %359, 0xBFAC28F5C0000000
  %363 = select i1 %342, float %345, float %360
  %364 = select i1 %343, float %346, float %361
  %365 = select i1 %344, float %347, float %362
  %366 = fsub fast float 1.000000e+00, %363
  %367 = fsub fast float 1.000000e+00, %364
  %368 = fsub fast float 1.000000e+00, %365
  %369 = fcmp fast ole float %366, 0x3FA4B5DCC0000000
  %370 = fmul fast float %366, 0x3FB3D07220000000
  %371 = fsub fast float 0x3FF0E147A0000000, %363
  %372 = fmul fast float %371, 0x3FEE54EDE0000000
  %373 = call float @dx.op.unary.f32(i32 23, float %372)  ; Log(value)
  %374 = fmul fast float %373, 0x4003333340000000
  %375 = call float @dx.op.unary.f32(i32 21, float %374)  ; Exp(value)
  %376 = select i1 %369, float %370, float %375
  %377 = fcmp fast ole float %367, 0x3FA4B5DCC0000000
  %378 = fmul fast float %367, 0x3FB3D07220000000
  %379 = fsub fast float 0x3FF0E147A0000000, %364
  %380 = fmul fast float %379, 0x3FEE54EDE0000000
  %381 = call float @dx.op.unary.f32(i32 23, float %380)  ; Log(value)
  %382 = fmul fast float %381, 0x4003333340000000
  %383 = call float @dx.op.unary.f32(i32 21, float %382)  ; Exp(value)
  %384 = select i1 %377, float %378, float %383
  %385 = fcmp fast ole float %368, 0x3FA4B5DCC0000000
  %386 = fmul fast float %368, 0x3FB3D07220000000
  %387 = fsub fast float 0x3FF0E147A0000000, %365
  %388 = fmul fast float %387, 0x3FEE54EDE0000000
  %389 = call float @dx.op.unary.f32(i32 23, float %388)  ; Log(value)
  %390 = fmul fast float %389, 0x4003333340000000
  %391 = call float @dx.op.unary.f32(i32 21, float %390)  ; Exp(value)
  %392 = select i1 %385, float %386, float %391
  br label %405

; <label>:393                                     ; preds = %339
  %394 = call float @dx.op.dot3.f32(i32 55, float %330, float %331, float %332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = extractvalue %dx.types.CBufRet.f32 %336, 3
  %396 = fsub fast float %330, %394
  %397 = fsub fast float %331, %394
  %398 = fsub fast float %332, %394
  %399 = fmul fast float %395, %396
  %400 = fmul fast float %395, %397
  %401 = fmul fast float %395, %398
  %402 = fadd fast float %399, %394
  %403 = fadd fast float %400, %394
  %404 = fadd fast float %401, %394
  br label %405

; <label>:405                                     ; preds = %393, %341, %335
  %406 = phi float [ %376, %341 ], [ %402, %393 ], [ %330, %335 ]
  %407 = phi float [ %384, %341 ], [ %403, %393 ], [ %331, %335 ]
  %408 = phi float [ %392, %341 ], [ %404, %393 ], [ %332, %335 ]
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = fcmp fast une float %410, 0.000000e+00
  br i1 %411, label %412, label %586, !dx.controlflow.hints !54

; <label>:412                                     ; preds = %405
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = fsub fast float %23, %414
  %417 = fsub fast float %24, %415
  %418 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %419 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %420 = fmul fast float %416, %418
  %421 = fmul fast float %417, %419
  %422 = call float @dx.op.unary.f32(i32 6, float %410)  ; FAbs(value)
  %423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %420, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float %422)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = extractvalue %dx.types.ResRet.f32 %423, 1
  %426 = extractvalue %dx.types.ResRet.f32 %423, 2
  %427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.i32 %427, 3
  %429 = and i32 %428, 3
  %430 = icmp ne i32 %429, 0
  %431 = and i32 %428, 4
  %432 = icmp eq i32 %431, 0
  %433 = and i1 %430, %432
  br i1 %433, label %434, label %478

; <label>:434                                     ; preds = %412
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = fcmp fast oge float %425, %436
  %438 = zext i1 %437 to i32
  br i1 %437, label %439, label %478

; <label>:439                                     ; preds = %434
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %444 = fcmp fast ogt float %443, 0.000000e+00
  br i1 %444, label %445, label %453, !dx.controlflow.hints !55

; <label>:445                                     ; preds = %439
  %446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %425, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = fcmp fast ogt float %443, 1.500000e+00
  %451 = select i1 %450, float %447, float %448
  %452 = select i1 %450, float %447, float %449
  br label %471

; <label>:453                                     ; preds = %439
  %454 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %459 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %462 = fsub fast float %456, %459
  %463 = fsub fast float %457, %460
  %464 = fsub fast float %458, %461
  %465 = fmul fast float %462, %454
  %466 = fmul fast float %463, %454
  %467 = fmul fast float %464, %454
  %468 = fadd fast float %465, %459
  %469 = fadd fast float %466, %460
  %470 = fadd fast float %467, %461
  br label %471

; <label>:471                                     ; preds = %453, %445
  %472 = phi float [ %447, %445 ], [ %468, %453 ]
  %473 = phi float [ %451, %445 ], [ %469, %453 ]
  %474 = phi float [ %452, %445 ], [ %470, %453 ]
  %475 = fmul fast float %472, %441
  %476 = fmul fast float %473, %441
  %477 = fmul fast float %474, %441
  br label %478

; <label>:478                                     ; preds = %471, %434, %412
  %479 = phi float [ %475, %471 ], [ %424, %412 ], [ %424, %434 ]
  %480 = phi float [ %476, %471 ], [ %425, %412 ], [ %424, %434 ]
  %481 = phi float [ %477, %471 ], [ %426, %412 ], [ %424, %434 ]
  %482 = phi i32 [ %438, %471 ], [ 0, %412 ], [ %438, %434 ]
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %538

; <label>:484                                     ; preds = %478
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %487 = extractvalue %dx.types.CBufRet.f32 %485, 1
  %488 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %489 = call float @dx.op.dot3.f32(i32 55, float %479, float %480, float %481, float %486, float %487, float %488)  ; Dot3(ax,ay,az,bx,by,bz)
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 0
  %492 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %493 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %494 = call float @dx.op.dot3.f32(i32 55, float %479, float %480, float %481, float %491, float %492, float %493)  ; Dot3(ax,ay,az,bx,by,bz)
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 0
  %497 = extractvalue %dx.types.CBufRet.f32 %495, 1
  %498 = extractvalue %dx.types.CBufRet.f32 %495, 2
  %499 = call float @dx.op.dot3.f32(i32 55, float %479, float %480, float %481, float %496, float %497, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %502 = fmul fast float %501, %489
  %503 = fmul fast float %501, %494
  %504 = fmul fast float %501, %499
  %505 = fadd fast float %502, 9.765625e-04
  %506 = fadd fast float %503, 9.765625e-04
  %507 = fadd fast float %504, 9.765625e-04
  %508 = call float @dx.op.unary.f32(i32 23, float %505)  ; Log(value)
  %509 = call float @dx.op.unary.f32(i32 23, float %506)  ; Log(value)
  %510 = call float @dx.op.unary.f32(i32 23, float %507)  ; Log(value)
  %511 = fadd fast float %508, 1.000000e+01
  %512 = fadd fast float %509, 1.000000e+01
  %513 = fadd fast float %510, 1.000000e+01
  %514 = fmul fast float %511, 0x3FA99999A0000000
  %515 = fmul fast float %512, 0x3FA99999A0000000
  %516 = fmul fast float %513, 0x3FA99999A0000000
  %517 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %518 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %519 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %523 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %524 = fmul fast float %521, %517
  %525 = fmul fast float %522, %518
  %526 = fmul fast float %523, %519
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 0
  %529 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %530 = extractvalue %dx.types.CBufRet.f32 %527, 2
  %531 = fadd fast float %524, %528
  %532 = fadd fast float %525, %529
  %533 = fadd fast float %526, %530
  %534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %9, float %531, float %532, float %533, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  br label %538

; <label>:538                                     ; preds = %484, %478
  %539 = phi float [ %479, %478 ], [ %535, %484 ]
  %540 = phi float [ %480, %478 ], [ %536, %484 ]
  %541 = phi float [ %481, %478 ], [ %537, %484 ]
  %542 = fcmp fast ole float %539, 0x3FA4B5DCC0000000
  %543 = fmul fast float %539, 0x3FB3D07220000000
  %544 = fadd fast float %539, 0x3FAC28F5C0000000
  %545 = fmul fast float %544, 0x3FEE54EDE0000000
  %546 = call float @dx.op.unary.f32(i32 23, float %545)  ; Log(value)
  %547 = fmul fast float %546, 0x4003333340000000
  %548 = call float @dx.op.unary.f32(i32 21, float %547)  ; Exp(value)
  %549 = select i1 %542, float %543, float %548
  %550 = fcmp fast ole float %540, 0x3FA4B5DCC0000000
  %551 = fmul fast float %540, 0x3FB3D07220000000
  %552 = fadd fast float %540, 0x3FAC28F5C0000000
  %553 = fmul fast float %552, 0x3FEE54EDE0000000
  %554 = call float @dx.op.unary.f32(i32 23, float %553)  ; Log(value)
  %555 = fmul fast float %554, 0x4003333340000000
  %556 = call float @dx.op.unary.f32(i32 21, float %555)  ; Exp(value)
  %557 = select i1 %550, float %551, float %556
  %558 = fcmp fast ole float %541, 0x3FA4B5DCC0000000
  %559 = fmul fast float %541, 0x3FB3D07220000000
  %560 = fadd fast float %541, 0x3FAC28F5C0000000
  %561 = fmul fast float %560, 0x3FEE54EDE0000000
  %562 = call float @dx.op.unary.f32(i32 23, float %561)  ; Log(value)
  %563 = fmul fast float %562, 0x4003333340000000
  %564 = call float @dx.op.unary.f32(i32 21, float %563)  ; Exp(value)
  %565 = select i1 %558, float %559, float %564
  %566 = fcmp fast olt float %410, 0.000000e+00
  br i1 %566, label %567, label %579

; <label>:567                                     ; preds = %538
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %570 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %571 = extractvalue %dx.types.CBufRet.f32 %568, 2
  %572 = call float @dx.op.dot3.f32(i32 55, float %549, float %557, float %565, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = fsub fast float %572, %569
  %574 = fmul fast float %573, %570
  %575 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %576 = fsub fast float 1.000000e+00, %571
  %577 = fmul fast float %575, %576
  %578 = fadd fast float %577, %571
  br label %579

; <label>:579                                     ; preds = %567, %538
  %580 = phi float [ %578, %567 ], [ %549, %538 ]
  %581 = phi float [ %578, %567 ], [ %557, %538 ]
  %582 = phi float [ %578, %567 ], [ %565, %538 ]
  %583 = fmul fast float %580, %406
  %584 = fmul fast float %581, %407
  %585 = fmul fast float %582, %408
  br label %586

; <label>:586                                     ; preds = %579, %405
  %587 = phi float [ %583, %579 ], [ %406, %405 ]
  %588 = phi float [ %584, %579 ], [ %407, %405 ]
  %589 = phi float [ %585, %579 ], [ %408, %405 ]
  %590 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %591 = fcmp fast ogt float %590, 0.000000e+00
  br i1 %591, label %592, label %633, !dx.controlflow.hints !56

; <label>:592                                     ; preds = %586
  %593 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %594 = bitcast float %593 to i32
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = lshr i32 %594, 8
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = lshr i32 %594, 16
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = lshr i32 %594, 24
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = fadd fast float %602, %596
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = fadd fast float %599, %605
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = fdiv fast float %23, %608
  %612 = fdiv fast float %24, %610
  %613 = fsub fast float -0.000000e+00, %611
  %614 = fsub fast float -0.000000e+00, %612
  %615 = fcmp fast oge float %611, %613
  %616 = fcmp fast oge float %612, %614
  %617 = call float @dx.op.unary.f32(i32 6, float %611)  ; FAbs(value)
  %618 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %619 = call float @dx.op.unary.f32(i32 22, float %617)  ; Frc(value)
  %620 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %621 = fsub fast float -0.000000e+00, %619
  %622 = fsub fast float -0.000000e+00, %620
  %623 = select i1 %615, float %619, float %621
  %624 = select i1 %616, float %620, float %622
  %625 = fmul fast float %608, %623
  %626 = fmul fast float %624, %610
  %627 = fcmp fast olt float %625, %603
  %628 = fcmp fast olt float %626, %606
  %629 = or i1 %627, %628
  br i1 %629, label %630, label %633, !dx.controlflow.hints !57

; <label>:630                                     ; preds = %592
  %631 = fsub fast float 1.000000e+00, %590
  %632 = fmul fast float %631, %248
  br label %633

; <label>:633                                     ; preds = %630, %592, %586
  %634 = phi float [ %632, %630 ], [ %248, %592 ], [ %248, %586 ]
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %637 = fcmp fast ogt float %636, 0.000000e+00
  br i1 %637, label %638, label %721, !dx.controlflow.hints !58

; <label>:638                                     ; preds = %633
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 3
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %644 = fmul fast float %643, 1.000000e+01
  %645 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = extractvalue %dx.types.CBufRet.f32 %646, 1
  %649 = fmul fast float %647, %23
  %650 = fmul fast float %648, %24
  %651 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %652 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %653 = fmul fast float %645, 0x4002B851E0000000
  %654 = call float @dx.op.unary.f32(i32 22, float %653)  ; Frc(value)
  %655 = fadd fast float %654, 0x3FB99999A0000000
  %656 = fadd fast float %655, %651
  %657 = fadd fast float %655, %652
  %658 = fmul fast float %656, 0x3FE1BEDF00000000
  %659 = call float @dx.op.unary.f32(i32 22, float %658)  ; Frc(value)
  %660 = fmul fast float %656, %659
  %661 = fadd fast float %660, %657
  %662 = fmul fast float %657, 0x3FD3BEBE20000000
  %663 = call float @dx.op.unary.f32(i32 22, float %662)  ; Frc(value)
  %664 = fmul fast float %657, %663
  %665 = fadd fast float %664, %656
  %666 = fmul fast float %661, %665
  %667 = call float @dx.op.unary.f32(i32 22, float %666)  ; Frc(value)
  %668 = extractvalue %dx.types.CBufRet.f32 %646, 3
  %669 = bitcast float %668 to i32
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101020000000
  %673 = fmul fast float %672, %640
  %674 = fcmp fast olt float %667, %673
  br i1 %674, label %675, label %682, !dx.controlflow.hints !59

; <label>:675                                     ; preds = %638
  %676 = fmul fast float %667, 0x4057091680000000
  %677 = call float @dx.op.unary.f32(i32 22, float %676)  ; Frc(value)
  %678 = fmul fast float %677, %587
  %679 = fmul fast float %677, %589
  %680 = fsub fast float 1.000000e+00, %677
  %681 = fmul fast float %680, %588
  br label %682

; <label>:682                                     ; preds = %675, %638
  %683 = phi float [ %678, %675 ], [ %587, %638 ]
  %684 = phi float [ %681, %675 ], [ %588, %638 ]
  %685 = phi float [ %679, %675 ], [ %589, %638 ]
  %686 = fmul fast float %667, 0x4028B0A3E0000000
  %687 = call float @dx.op.unary.f32(i32 22, float %686)  ; Frc(value)
  %688 = fmul fast float %672, %641
  %689 = fcmp fast olt float %687, %688
  br i1 %689, label %690, label %709, !dx.controlflow.hints !60

; <label>:690                                     ; preds = %682
  %691 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %692 = fmul fast float %691, %23
  %693 = call float @dx.op.unary.f32(i32 27, float %692)  ; Round_ni(value)
  %694 = fmul fast float %693, 0x3FD5555560000000
  %695 = call float @dx.op.unary.f32(i32 22, float %694)  ; Frc(value)
  %696 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %697 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %698 = fcmp fast olt float %695, 0x3FD51EB860000000
  br i1 %698, label %702, label %699, !dx.controlflow.hints !61

; <label>:699                                     ; preds = %690
  %700 = fcmp fast olt float %695, 0x3FE51EB860000000
  br i1 %700, label %702, label %701, !dx.controlflow.hints !62

; <label>:701                                     ; preds = %699
  br label %702

; <label>:702                                     ; preds = %701, %699, %690
  %703 = phi float [ %696, %701 ], [ %697, %690 ], [ %696, %699 ]
  %704 = phi float [ %696, %701 ], [ %696, %690 ], [ %697, %699 ]
  %705 = phi float [ %697, %701 ], [ %696, %690 ], [ %696, %699 ]
  %706 = fmul fast float %703, %683
  %707 = fmul fast float %704, %684
  %708 = fmul fast float %705, %685
  br label %709

; <label>:709                                     ; preds = %702, %682
  %710 = phi float [ %706, %702 ], [ %683, %682 ]
  %711 = phi float [ %707, %702 ], [ %684, %682 ]
  %712 = phi float [ %708, %702 ], [ %685, %682 ]
  %713 = fmul fast float %667, 0x40223EF9E0000000
  %714 = call float @dx.op.unary.f32(i32 22, float %713)  ; Frc(value)
  %715 = fmul fast float %672, %636
  %716 = fmul fast float %714, %714
  %717 = fmul fast float %716, %715
  %718 = fsub fast float 1.000000e+00, %717
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %720 = fmul fast float %719, %634
  br label %721

; <label>:721                                     ; preds = %709, %633
  %722 = phi float [ %710, %709 ], [ %587, %633 ]
  %723 = phi float [ %711, %709 ], [ %588, %633 ]
  %724 = phi float [ %712, %709 ], [ %589, %633 ]
  %725 = phi float [ %720, %709 ], [ %634, %633 ]
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %729 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 1
  %737 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %738 = fmul fast float %727, %722
  %739 = call float @dx.op.tertiary.f32(i32 46, float %728, float %723, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %729, float %724, float %739)  ; FMad(a,b,c)
  %741 = fmul fast float %731, %722
  %742 = call float @dx.op.tertiary.f32(i32 46, float %732, float %723, float %741)  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %733, float %724, float %742)  ; FMad(a,b,c)
  %744 = fmul fast float %735, %722
  %745 = call float @dx.op.tertiary.f32(i32 46, float %736, float %723, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %737, float %724, float %745)  ; FMad(a,b,c)
  br i1 %255, label %747, label %1054, !dx.controlflow.hints !63

; <label>:747                                     ; preds = %721
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 0
  %750 = bitcast float %749 to i32
  %751 = and i32 %750, 128
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %767, label %753

; <label>:753                                     ; preds = %747
  %754 = call float @dx.op.unary.f32(i32 24, float %740)  ; Sqrt(value)
  %755 = call float @dx.op.unary.f32(i32 24, float %743)  ; Sqrt(value)
  %756 = call float @dx.op.unary.f32(i32 24, float %746)  ; Sqrt(value)
  %757 = fmul fast float %754, 9.687500e-01
  %758 = fmul fast float %755, 9.687500e-01
  %759 = fmul fast float %756, 9.687500e-01
  %760 = fadd fast float %757, 1.562500e-02
  %761 = fadd fast float %758, 1.562500e-02
  %762 = fadd fast float %759, 1.562500e-02
  %763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %9, float %760, float %761, float %762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  br label %1054

; <label>:767                                     ; preds = %747
  %768 = and i32 %750, 127
  switch i32 %768, label %1054 [
    i32 1, label %769
    i32 2, label %769
    i32 0, label %769
    i32 3, label %799
    i32 4, label %920
  ]

; <label>:769                                     ; preds = %767, %767, %767
  %770 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %771 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %772 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %773 = call float @dx.op.unary.f32(i32 23, float %770)  ; Log(value)
  %774 = call float @dx.op.unary.f32(i32 23, float %771)  ; Log(value)
  %775 = call float @dx.op.unary.f32(i32 23, float %772)  ; Log(value)
  %776 = fmul fast float %773, 0x3FDAAAAAA0000000
  %777 = fmul fast float %774, 0x3FDAAAAAA0000000
  %778 = fmul fast float %775, 0x3FDAAAAAA0000000
  %779 = call float @dx.op.unary.f32(i32 21, float %776)  ; Exp(value)
  %780 = call float @dx.op.unary.f32(i32 21, float %777)  ; Exp(value)
  %781 = call float @dx.op.unary.f32(i32 21, float %778)  ; Exp(value)
  %782 = fmul fast float %779, 0x3FF0E147A0000000
  %783 = fmul fast float %780, 0x3FF0E147A0000000
  %784 = fmul fast float %781, 0x3FF0E147A0000000
  %785 = fadd fast float %782, 0xBFAC28F5C0000000
  %786 = fadd fast float %783, 0xBFAC28F5C0000000
  %787 = fadd fast float %784, 0xBFAC28F5C0000000
  %788 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %789 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %790 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %791 = extractvalue %dx.types.CBufRet.f32 %748, 2
  %792 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %793 = fmul fast float %791, %788
  %794 = fmul fast float %791, %789
  %795 = fmul fast float %791, %790
  %796 = fadd fast float %793, %792
  %797 = fadd fast float %794, %792
  %798 = fadd fast float %795, %792
  br label %1054

; <label>:799                                     ; preds = %767
  %800 = fmul fast float %740, 0x4163D57C00000000
  %801 = fmul fast float %743, 0x4163D57C00000000
  %802 = fmul fast float %746, 0x4163D57C00000000
  %803 = fadd fast float %800, 9.999980e+05
  %804 = fadd fast float %801, 9.999980e+05
  %805 = fadd fast float %802, 9.999980e+05
  %806 = fmul fast float %803, %740
  %807 = fmul fast float %804, %743
  %808 = fmul fast float %805, %746
  %809 = fadd fast float %806, 0xC0AFE17A60000000
  %810 = fadd fast float %807, 0xC0AFE17A60000000
  %811 = fadd fast float %808, 0xC0AFE17A60000000
  %812 = fmul fast float %809, %740
  %813 = fmul fast float %810, %743
  %814 = fmul fast float %811, %746
  %815 = fmul fast float %740, 0x40F753C340000000
  %816 = fmul fast float %743, 0x40F753C340000000
  %817 = fmul fast float %746, 0x40F753C340000000
  %818 = fsub fast float 9.999990e+06, %815
  %819 = fsub fast float 9.999990e+06, %816
  %820 = fsub fast float 9.999990e+06, %817
  %821 = fmul fast float %818, %740
  %822 = fmul fast float %819, %743
  %823 = fmul fast float %820, %746
  %824 = fadd fast float %821, 0x4136D1DD80000000
  %825 = fadd fast float %822, 0x4136D1DD80000000
  %826 = fadd fast float %823, 0x4136D1DD80000000
  %827 = fmul fast float %824, %740
  %828 = fmul fast float %825, %743
  %829 = fmul fast float %826, %746
  %830 = fadd fast float %827, 1.000000e+00
  %831 = fadd fast float %828, 1.000000e+00
  %832 = fadd fast float %829, 1.000000e+00
  %833 = fdiv fast float %812, %830
  %834 = fdiv fast float %813, %831
  %835 = fdiv fast float %814, %832
  %836 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %837 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %838 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %839 = extractvalue %dx.types.CBufRet.f32 %748, 1
  %840 = fmul fast float %836, 0x3FE413A920000000
  %841 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %837, float %840)  ; FMad(a,b,c)
  %842 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %838, float %841)  ; FMad(a,b,c)
  %843 = fmul fast float %836, 0x3FB1B089A0000000
  %844 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %837, float %843)  ; FMad(a,b,c)
  %845 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %838, float %844)  ; FMad(a,b,c)
  %846 = fmul fast float %836, 0x3F90CB2960000000
  %847 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %837, float %846)  ; FMad(a,b,c)
  %848 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %838, float %847)  ; FMad(a,b,c)
  %849 = fmul fast float %842, %839
  %850 = fmul fast float %845, %839
  %851 = fmul fast float %848, %839
  %852 = fmul fast float %849, 0x3F847AE140000000
  %853 = fmul fast float %850, 0x3F847AE140000000
  %854 = fmul fast float %851, 0x3F847AE140000000
  %855 = fmul fast float %849, 0x40B4D2F520000000
  %856 = fmul fast float %850, 0x40B4D2F520000000
  %857 = fmul fast float %851, 0x40B4D2F520000000
  %858 = fadd fast float %855, 0x41869ECF20000000
  %859 = fadd fast float %856, 0x41869ECF20000000
  %860 = fadd fast float %857, 0x41869ECF20000000
  %861 = fmul fast float %858, %852
  %862 = fmul fast float %859, %853
  %863 = fmul fast float %860, %854
  %864 = fadd fast float %861, 0x417BB79C60000000
  %865 = fadd fast float %862, 0x417BB79C60000000
  %866 = fadd fast float %863, 0x417BB79C60000000
  %867 = fmul fast float %864, %852
  %868 = fmul fast float %865, %853
  %869 = fmul fast float %866, %854
  %870 = fadd fast float %867, 0x41218DE180000000
  %871 = fadd fast float %868, 0x41218DE180000000
  %872 = fadd fast float %869, 0x41218DE180000000
  %873 = fmul fast float %870, %852
  %874 = fmul fast float %871, %853
  %875 = fmul fast float %872, %854
  %876 = fadd fast float %873, 0x4077F174E0000000
  %877 = fadd fast float %874, 0x4077F174E0000000
  %878 = fadd fast float %875, 0x4077F174E0000000
  %879 = fmul fast float %876, %852
  %880 = fmul fast float %877, %853
  %881 = fmul fast float %878, %854
  %882 = fadd fast float %879, 0x3F3FF79B80000000
  %883 = fadd fast float %880, 0x3F3FF79B80000000
  %884 = fadd fast float %881, 0x3F3FF79B80000000
  %885 = fmul fast float %849, 0x412442D320000000
  %886 = fmul fast float %850, 0x412442D320000000
  %887 = fmul fast float %851, 0x412442D320000000
  %888 = fadd fast float %885, 0x419385D5C0000000
  %889 = fadd fast float %886, 0x419385D5C0000000
  %890 = fadd fast float %887, 0x419385D5C0000000
  %891 = fmul fast float %888, %852
  %892 = fmul fast float %889, %853
  %893 = fmul fast float %890, %854
  %894 = fadd fast float %891, 4.182885e+06
  %895 = fadd fast float %892, 4.182885e+06
  %896 = fadd fast float %893, 4.182885e+06
  %897 = fmul fast float %894, %852
  %898 = fmul fast float %895, %853
  %899 = fmul fast float %896, %854
  %900 = fadd fast float %897, 0x40C4D633C0000000
  %901 = fadd fast float %898, 0x40C4D633C0000000
  %902 = fadd fast float %899, 0x40C4D633C0000000
  %903 = fmul fast float %900, %852
  %904 = fmul fast float %901, %853
  %905 = fmul fast float %902, %854
  %906 = fadd fast float %903, 1.000000e+00
  %907 = fadd fast float %904, 1.000000e+00
  %908 = fadd fast float %905, 1.000000e+00
  %909 = fdiv fast float %882, %906
  %910 = fdiv fast float %883, %907
  %911 = fdiv fast float %884, %908
  %912 = extractvalue %dx.types.CBufRet.f32 %748, 2
  %913 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %914 = fmul fast float %912, %909
  %915 = fmul fast float %912, %910
  %916 = fmul fast float %912, %911
  %917 = fadd fast float %914, %913
  %918 = fadd fast float %915, %913
  %919 = fadd fast float %916, %913
  br label %1054

; <label>:920                                     ; preds = %767
  %921 = fmul fast float %740, 0x4163D57C00000000
  %922 = fmul fast float %743, 0x4163D57C00000000
  %923 = fmul fast float %746, 0x4163D57C00000000
  %924 = fadd fast float %921, 9.999980e+05
  %925 = fadd fast float %922, 9.999980e+05
  %926 = fadd fast float %923, 9.999980e+05
  %927 = fmul fast float %924, %740
  %928 = fmul fast float %925, %743
  %929 = fmul fast float %926, %746
  %930 = fadd fast float %927, 0xC0AFE17A60000000
  %931 = fadd fast float %928, 0xC0AFE17A60000000
  %932 = fadd fast float %929, 0xC0AFE17A60000000
  %933 = fmul fast float %930, %740
  %934 = fmul fast float %931, %743
  %935 = fmul fast float %932, %746
  %936 = fmul fast float %740, 0x40F753C340000000
  %937 = fmul fast float %743, 0x40F753C340000000
  %938 = fmul fast float %746, 0x40F753C340000000
  %939 = fsub fast float 9.999990e+06, %936
  %940 = fsub fast float 9.999990e+06, %937
  %941 = fsub fast float 9.999990e+06, %938
  %942 = fmul fast float %939, %740
  %943 = fmul fast float %940, %743
  %944 = fmul fast float %941, %746
  %945 = fadd fast float %942, 0x4136D1DD80000000
  %946 = fadd fast float %943, 0x4136D1DD80000000
  %947 = fadd fast float %944, 0x4136D1DD80000000
  %948 = fmul fast float %945, %740
  %949 = fmul fast float %946, %743
  %950 = fmul fast float %947, %746
  %951 = fadd fast float %948, 1.000000e+00
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fdiv fast float %933, %951
  %955 = fdiv fast float %934, %952
  %956 = fdiv fast float %935, %953
  %957 = call float @dx.op.unary.f32(i32 7, float %954)  ; Saturate(value)
  %958 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %959 = call float @dx.op.unary.f32(i32 7, float %956)  ; Saturate(value)
  %960 = extractvalue %dx.types.CBufRet.f32 %748, 1
  %961 = fmul fast float %957, 0x3FEA519BC0000000
  %962 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %958, float %961)  ; FMad(a,b,c)
  %963 = fmul fast float %957, 0x3FA0FED480000000
  %964 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %958, float %963)  ; FMad(a,b,c)
  %965 = fmul fast float %957, 0x3F917E1C00000000
  %966 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %958, float %965)  ; FMad(a,b,c)
  %967 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %959, float %966)  ; FMad(a,b,c)
  %968 = call float @dx.op.binary.f32(i32 35, float %957, float %958)  ; FMax(a,b)
  %969 = call float @dx.op.binary.f32(i32 35, float %968, float %959)  ; FMax(a,b)
  %970 = fadd fast float %969, -1.000000e+00
  %971 = fmul fast float %970, 2.500000e-01
  %972 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %973 = fsub fast float 1.000000e+00, %972
  %974 = fmul fast float %973, %962
  %975 = fmul fast float %973, %964
  %976 = fmul fast float %973, %967
  %977 = fmul fast float %972, %957
  %978 = fmul fast float %972, %958
  %979 = fmul fast float %972, %959
  %980 = fadd fast float %974, %977
  %981 = fadd fast float %975, %978
  %982 = fadd fast float %976, %979
  %983 = fmul fast float %980, %960
  %984 = fmul fast float %981, %960
  %985 = fmul fast float %982, %960
  %986 = fmul fast float %983, 0x3F847AE140000000
  %987 = fmul fast float %984, 0x3F847AE140000000
  %988 = fmul fast float %985, 0x3F847AE140000000
  %989 = fmul fast float %983, 0x40B4D2F520000000
  %990 = fmul fast float %984, 0x40B4D2F520000000
  %991 = fmul fast float %985, 0x40B4D2F520000000
  %992 = fadd fast float %989, 0x41869ECF20000000
  %993 = fadd fast float %990, 0x41869ECF20000000
  %994 = fadd fast float %991, 0x41869ECF20000000
  %995 = fmul fast float %992, %986
  %996 = fmul fast float %993, %987
  %997 = fmul fast float %994, %988
  %998 = fadd fast float %995, 0x417BB79C60000000
  %999 = fadd fast float %996, 0x417BB79C60000000
  %1000 = fadd fast float %997, 0x417BB79C60000000
  %1001 = fmul fast float %998, %986
  %1002 = fmul fast float %999, %987
  %1003 = fmul fast float %1000, %988
  %1004 = fadd fast float %1001, 0x41218DE180000000
  %1005 = fadd fast float %1002, 0x41218DE180000000
  %1006 = fadd fast float %1003, 0x41218DE180000000
  %1007 = fmul fast float %1004, %986
  %1008 = fmul fast float %1005, %987
  %1009 = fmul fast float %1006, %988
  %1010 = fadd fast float %1007, 0x4077F174E0000000
  %1011 = fadd fast float %1008, 0x4077F174E0000000
  %1012 = fadd fast float %1009, 0x4077F174E0000000
  %1013 = fmul fast float %1010, %986
  %1014 = fmul fast float %1011, %987
  %1015 = fmul fast float %1012, %988
  %1016 = fadd fast float %1013, 0x3F3FF79B80000000
  %1017 = fadd fast float %1014, 0x3F3FF79B80000000
  %1018 = fadd fast float %1015, 0x3F3FF79B80000000
  %1019 = fmul fast float %983, 0x412442D320000000
  %1020 = fmul fast float %984, 0x412442D320000000
  %1021 = fmul fast float %985, 0x412442D320000000
  %1022 = fadd fast float %1019, 0x419385D5C0000000
  %1023 = fadd fast float %1020, 0x419385D5C0000000
  %1024 = fadd fast float %1021, 0x419385D5C0000000
  %1025 = fmul fast float %1022, %986
  %1026 = fmul fast float %1023, %987
  %1027 = fmul fast float %1024, %988
  %1028 = fadd fast float %1025, 4.182885e+06
  %1029 = fadd fast float %1026, 4.182885e+06
  %1030 = fadd fast float %1027, 4.182885e+06
  %1031 = fmul fast float %1028, %986
  %1032 = fmul fast float %1029, %987
  %1033 = fmul fast float %1030, %988
  %1034 = fadd fast float %1031, 0x40C4D633C0000000
  %1035 = fadd fast float %1032, 0x40C4D633C0000000
  %1036 = fadd fast float %1033, 0x40C4D633C0000000
  %1037 = fmul fast float %1034, %986
  %1038 = fmul fast float %1035, %987
  %1039 = fmul fast float %1036, %988
  %1040 = fadd fast float %1037, 1.000000e+00
  %1041 = fadd fast float %1038, 1.000000e+00
  %1042 = fadd fast float %1039, 1.000000e+00
  %1043 = fdiv fast float %1016, %1040
  %1044 = fdiv fast float %1017, %1041
  %1045 = fdiv fast float %1018, %1042
  %1046 = extractvalue %dx.types.CBufRet.f32 %748, 2
  %1047 = extractvalue %dx.types.CBufRet.f32 %748, 3
  %1048 = fmul fast float %1046, %1043
  %1049 = fmul fast float %1046, %1044
  %1050 = fmul fast float %1046, %1045
  %1051 = fadd fast float %1048, %1047
  %1052 = fadd fast float %1049, %1047
  %1053 = fadd fast float %1050, %1047
  br label %1054

; <label>:1054                                    ; preds = %920, %799, %769, %767, %753, %721
  %1055 = phi float [ %740, %721 ], [ %764, %753 ], [ %740, %767 ], [ %1051, %920 ], [ %917, %799 ], [ %796, %769 ]
  %1056 = phi float [ %743, %721 ], [ %765, %753 ], [ %743, %767 ], [ %1052, %920 ], [ %918, %799 ], [ %797, %769 ]
  %1057 = phi float [ %746, %721 ], [ %766, %753 ], [ %746, %767 ], [ %1053, %920 ], [ %919, %799 ], [ %798, %769 ]
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1061 = call float @dx.op.unary.f32(i32 23, float %725)  ; Log(value)
  %1062 = fmul fast float %1061, %1060
  %1063 = call float @dx.op.unary.f32(i32 21, float %1062)  ; Exp(value)
  %1064 = fmul fast float %1063, %1059
  %1065 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1066 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1067 = fmul fast float %1061, %1066
  %1068 = call float @dx.op.unary.f32(i32 21, float %1067)  ; Exp(value)
  %1069 = fmul fast float %1068, %1065
  %1070 = fadd fast float %1069, %1064
  %1071 = fmul fast float %1070, %1055
  %1072 = fmul fast float %1070, %1056
  %1073 = fmul fast float %1070, %1057
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1071)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1072)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1073)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1070)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

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
!19 = !{!20, !21, !22}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{[22 x i32] [i32 20, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, !45}
!25 = !{!26, !43, null}
!26 = !{!27, !30, !32, !33, !35, !37, !39, !41}
!27 = !{i32 0, !"SV_Position", i8 9, i8 3, !28, i8 4, i32 1, i8 4, i32 0, i8 0, !29}
!28 = !{i32 0}
!29 = !{i32 3, i32 3}
!30 = !{i32 1, !"COLOR", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 2, i8 0, !29}
!33 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !34, i8 2, i32 1, i8 2, i32 2, i8 2, !29}
!34 = !{i32 2}
!35 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !36, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!36 = !{i32 3}
!37 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!38 = !{i32 4}
!39 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!40 = !{i32 5}
!41 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!42 = !{i32 6}
!43 = !{!44}
!44 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!45 = !{i32 0, i64 16}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}

