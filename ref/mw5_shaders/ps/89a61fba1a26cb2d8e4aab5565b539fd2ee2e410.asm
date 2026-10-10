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
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: a506a6ff0cc7bc46de50bf314c3f57bf
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
;   [112 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s4     1
;                                   sampler      NA          NA      S3             s5     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture     f32          2d      T3             t0     1
;                                   texture     f32          2d      T4             t1     1
;                                   texture     f32          3d      T5     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11, 20, 21 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %28 = fcmp fast ogt float %27, 0.000000e+00
  br i1 %28, label %29, label %79, !dx.controlflow.hints !46

; <label>:29                                      ; preds = %0
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 3
  %32 = fmul fast float %31, 1.000000e+01
  %33 = call float @dx.op.unary.f32(i32 27, float %32)  ; Round_ni(value)
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 1
  %37 = fmul fast float %35, %24
  %38 = fmul fast float %36, %25
  %39 = call float @dx.op.unary.f32(i32 27, float %37)  ; Round_ni(value)
  %40 = call float @dx.op.unary.f32(i32 27, float %38)  ; Round_ni(value)
  %41 = fmul fast float %33, 0x4002B851E0000000
  %42 = call float @dx.op.unary.f32(i32 22, float %41)  ; Frc(value)
  %43 = fadd fast float %42, 0x3FB99999A0000000
  %44 = fadd fast float %43, %39
  %45 = fadd fast float %43, %40
  %46 = fmul fast float %44, 0x3FE1BEDF00000000
  %47 = call float @dx.op.unary.f32(i32 22, float %46)  ; Frc(value)
  %48 = fmul fast float %44, %47
  %49 = fadd fast float %48, %45
  %50 = fmul fast float %45, 0x3FD3BEBE20000000
  %51 = call float @dx.op.unary.f32(i32 22, float %50)  ; Frc(value)
  %52 = fmul fast float %45, %51
  %53 = fadd fast float %52, %44
  %54 = fmul fast float %49, %53
  %55 = call float @dx.op.unary.f32(i32 22, float %54)  ; Frc(value)
  %56 = extractvalue %dx.types.CBufRet.f32 %34, 3
  %57 = bitcast float %56 to i32
  %58 = and i32 %57, 255
  %59 = uitofp i32 %58 to float
  %60 = fmul fast float %55, 0x4085373340000000
  %61 = call float @dx.op.unary.f32(i32 22, float %60)  ; Frc(value)
  %62 = fmul fast float %59, 0x3F6CE9B6A0000000
  %63 = fcmp fast olt float %61, %62
  br i1 %63, label %64, label %79, !dx.controlflow.hints !47

; <label>:64                                      ; preds = %29
  %65 = fdiv fast float %61, %62
  %66 = fmul fast float %65, 2.000000e+00
  %67 = fadd fast float %66, -1.000000e+00
  %68 = lshr i32 %57, 8
  %69 = and i32 %68, 255
  %70 = uitofp i32 %69 to float
  %71 = call float @dx.op.unary.f32(i32 83, float %18)  ; DerivCoarseX(value)
  %72 = call float @dx.op.unary.f32(i32 83, float %19)  ; DerivCoarseX(value)
  %73 = fmul fast float %67, %71
  %74 = fmul fast float %73, %70
  %75 = fmul fast float %72, %67
  %76 = fmul fast float %75, %70
  %77 = fadd fast float %74, %18
  %78 = fadd fast float %76, %19
  br label %79

; <label>:79                                      ; preds = %64, %29, %0
  %80 = phi float [ %77, %64 ], [ %18, %29 ], [ %18, %0 ]
  %81 = phi float [ %78, %64 ], [ %19, %29 ], [ %19, %0 ]
  %82 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %83 = extractvalue %dx.types.Dimensions %82, 0
  %84 = sitofp i32 %83 to float
  %85 = extractvalue %dx.types.Dimensions %82, 1
  %86 = sitofp i32 %85 to float
  %87 = fdiv fast float 5.000000e-01, %84
  %88 = fdiv fast float 5.000000e-01, %86
  %89 = fsub fast float 1.000000e+00, %87
  %90 = call float @dx.op.binary.f32(i32 35, float %80, float %87)  ; FMax(a,b)
  %91 = call float @dx.op.binary.f32(i32 36, float %90, float %89)  ; FMin(a,b)
  %92 = fsub fast float 1.000000e+00, %88
  %93 = call float @dx.op.binary.f32(i32 35, float %81, float %88)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 36, float %93, float %92)  ; FMin(a,b)
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 3
  %97 = bitcast float %96 to i32
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %99, float %91, float %80
  %101 = and i32 %97, 2
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %102, float %94, float %81
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %106 = bitcast float %105 to i32
  %107 = and i32 %106, 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109, !dx.controlflow.hints !48

; <label>:109                                     ; preds = %79
  %110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %7, float %100, float %103, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  br label %117

; <label>:112                                     ; preds = %79
  %113 = call float @dx.op.unary.f32(i32 22, float %100)  ; Frc(value)
  %114 = call float @dx.op.unary.f32(i32 22, float %103)  ; Frc(value)
  %115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %10, float %113, float %114, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  br label %117

; <label>:117                                     ; preds = %112, %109
  %118 = phi float [ %111, %109 ], [ %116, %112 ]
  %119 = fmul fast float %118, 2.000000e+00
  %120 = fadd fast float %119, -1.000000e+00
  %121 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %122 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %123 = fmul fast float %121, %121
  %124 = fmul fast float %122, %122
  %125 = fadd fast float %124, %123
  %126 = call float @dx.op.unary.f32(i32 24, float %125)  ; Sqrt(value)
  %127 = fmul fast float %126, 2.000000e+00
  %128 = fadd fast float %126, %120
  %129 = fdiv fast float %128, %127
  %130 = call float @dx.op.unary.f32(i32 7, float %129)  ; Saturate(value)
  %131 = fmul fast float %130, 2.000000e+00
  %132 = fsub fast float 3.000000e+00, %131
  %133 = fmul fast float %130, %130
  %134 = fmul fast float %133, %23
  %135 = fmul fast float %134, %132
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %138 = bitcast float %137 to i32
  %139 = and i32 %138, 512
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %235, label %141

; <label>:141                                     ; preds = %117
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %144 = bitcast float %143 to i32
  %145 = and i32 %144, 65535
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145)  ; LegacyF16ToF32(value)
  %147 = lshr i32 %144, 16
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147)  ; LegacyF16ToF32(value)
  %149 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %150 = bitcast float %149 to i32
  %151 = and i32 %150, 65535
  %152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %151)  ; LegacyF16ToF32(value)
  %153 = lshr i32 %150, 16
  %154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %153)  ; LegacyF16ToF32(value)
  %155 = and i32 %138, 16
  %156 = icmp ne i32 %155, 0
  %157 = fcmp fast ogt float %146, 0.000000e+00
  %158 = fcmp fast ogt float %148, 0.000000e+00
  %159 = and i1 %157, %158
  %160 = fcmp fast ogt float %152, 0.000000e+00
  br i1 %159, label %161, label %221

; <label>:161                                     ; preds = %141
  br i1 %160, label %162, label %170

; <label>:162                                     ; preds = %161
  %163 = fmul fast float %148, %17
  %164 = fmul fast float %146, %16
  %165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %164, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fsub fast float 1.000000e+00, %166
  %168 = select i1 %156, float %167, float %166
  %169 = fmul fast float %168, %152
  br label %170

; <label>:170                                     ; preds = %162, %161
  %171 = phi float [ %169, %162 ], [ 0.000000e+00, %161 ]
  %172 = fadd fast float %171, %154
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  br i1 %160, label %174, label %184

; <label>:174                                     ; preds = %170
  %175 = fmul fast float %148, %17
  %176 = fsub fast float 1.000000e+00, %16
  %177 = fmul fast float %146, %176
  %178 = fsub fast float 1.000000e+00, %177
  %179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %178, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 1
  %181 = fsub fast float 1.000000e+00, %180
  %182 = select i1 %156, float %181, float %180
  %183 = fmul fast float %182, %152
  br label %184

; <label>:184                                     ; preds = %174, %170
  %185 = phi float [ %183, %174 ], [ 0.000000e+00, %170 ]
  %186 = fadd fast float %185, %154
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = fmul fast float %187, %173
  br i1 %160, label %189, label %201

; <label>:189                                     ; preds = %184
  %190 = fsub fast float 1.000000e+00, %17
  %191 = fmul fast float %148, %190
  %192 = fsub fast float 1.000000e+00, %191
  %193 = fsub fast float 1.000000e+00, %16
  %194 = fmul fast float %146, %193
  %195 = fsub fast float 1.000000e+00, %194
  %196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %195, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 2
  %198 = fsub fast float 1.000000e+00, %197
  %199 = select i1 %156, float %198, float %197
  %200 = fmul fast float %199, %152
  br label %201

; <label>:201                                     ; preds = %189, %184
  %202 = phi float [ %200, %189 ], [ 0.000000e+00, %184 ]
  %203 = fadd fast float %202, %154
  %204 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %205 = fmul fast float %188, %204
  br i1 %160, label %206, label %216

; <label>:206                                     ; preds = %201
  %207 = fsub fast float 1.000000e+00, %17
  %208 = fmul fast float %148, %207
  %209 = fsub fast float 1.000000e+00, %208
  %210 = fmul fast float %146, %16
  %211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %210, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 3
  %213 = fsub fast float 1.000000e+00, %212
  %214 = select i1 %156, float %213, float %212
  %215 = fmul fast float %214, %152
  br label %216

; <label>:216                                     ; preds = %206, %201
  %217 = phi float [ %215, %206 ], [ 0.000000e+00, %201 ]
  %218 = fadd fast float %217, %154
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fmul fast float %205, %219
  br label %232

; <label>:221                                     ; preds = %141
  br i1 %160, label %222, label %228

; <label>:222                                     ; preds = %221
  %223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %8, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fsub fast float 1.000000e+00, %224
  %226 = select i1 %156, float %225, float %224
  %227 = fmul fast float %226, %152
  br label %228

; <label>:228                                     ; preds = %222, %221
  %229 = phi float [ %227, %222 ], [ 0.000000e+00, %221 ]
  %230 = fadd fast float %229, %154
  %231 = call float @dx.op.unary.f32(i32 7, float %230)  ; Saturate(value)
  br label %232

; <label>:232                                     ; preds = %228, %216
  %233 = phi float [ %220, %216 ], [ %231, %228 ]
  %234 = fmul fast float %233, %135
  br label %235

; <label>:235                                     ; preds = %232, %117
  %236 = phi float [ %234, %232 ], [ %135, %117 ]
  %237 = call float @dx.op.binary.f32(i32 35, float %236, float 0.000000e+00)  ; FMax(a,b)
  %238 = fcmp fast oeq float %237, 0.000000e+00
  br i1 %238, label %239, label %240, !dx.controlflow.hints !49

; <label>:239                                     ; preds = %235
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %240

; <label>:240                                     ; preds = %239, %235
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %243, label %244, label %310, !dx.controlflow.hints !50

; <label>:244                                     ; preds = %240
  %245 = fcmp fast oeq float %242, 2.000000e+00
  br i1 %245, label %246, label %298, !dx.controlflow.hints !51

; <label>:246                                     ; preds = %244
  %247 = fcmp fast ole float %20, 0x3F69A5C380000000
  %248 = fcmp fast ole float %21, 0x3F69A5C380000000
  %249 = fcmp fast ole float %22, 0x3F69A5C380000000
  %250 = fmul fast float %20, 0x4029D70A40000000
  %251 = fmul fast float %21, 0x4029D70A40000000
  %252 = fmul fast float %22, 0x4029D70A40000000
  %253 = call float @dx.op.unary.f32(i32 23, float %20)  ; Log(value)
  %254 = call float @dx.op.unary.f32(i32 23, float %21)  ; Log(value)
  %255 = call float @dx.op.unary.f32(i32 23, float %22)  ; Log(value)
  %256 = fmul fast float %253, 0x3FDAAAAAA0000000
  %257 = fmul fast float %254, 0x3FDAAAAAA0000000
  %258 = fmul fast float %255, 0x3FDAAAAAA0000000
  %259 = call float @dx.op.unary.f32(i32 21, float %256)  ; Exp(value)
  %260 = call float @dx.op.unary.f32(i32 21, float %257)  ; Exp(value)
  %261 = call float @dx.op.unary.f32(i32 21, float %258)  ; Exp(value)
  %262 = fmul fast float %259, 0x3FF0E147A0000000
  %263 = fmul fast float %260, 0x3FF0E147A0000000
  %264 = fmul fast float %261, 0x3FF0E147A0000000
  %265 = fadd fast float %262, 0xBFAC28F5C0000000
  %266 = fadd fast float %263, 0xBFAC28F5C0000000
  %267 = fadd fast float %264, 0xBFAC28F5C0000000
  %268 = select i1 %247, float %250, float %265
  %269 = select i1 %248, float %251, float %266
  %270 = select i1 %249, float %252, float %267
  %271 = fsub fast float 1.000000e+00, %268
  %272 = fsub fast float 1.000000e+00, %269
  %273 = fsub fast float 1.000000e+00, %270
  %274 = fcmp fast ole float %271, 0x3FA4B5DCC0000000
  %275 = fmul fast float %271, 0x3FB3D07220000000
  %276 = fsub fast float 0x3FF0E147A0000000, %268
  %277 = fmul fast float %276, 0x3FEE54EDE0000000
  %278 = call float @dx.op.unary.f32(i32 23, float %277)  ; Log(value)
  %279 = fmul fast float %278, 0x4003333340000000
  %280 = call float @dx.op.unary.f32(i32 21, float %279)  ; Exp(value)
  %281 = select i1 %274, float %275, float %280
  %282 = fcmp fast ole float %272, 0x3FA4B5DCC0000000
  %283 = fmul fast float %272, 0x3FB3D07220000000
  %284 = fsub fast float 0x3FF0E147A0000000, %269
  %285 = fmul fast float %284, 0x3FEE54EDE0000000
  %286 = call float @dx.op.unary.f32(i32 23, float %285)  ; Log(value)
  %287 = fmul fast float %286, 0x4003333340000000
  %288 = call float @dx.op.unary.f32(i32 21, float %287)  ; Exp(value)
  %289 = select i1 %282, float %283, float %288
  %290 = fcmp fast ole float %273, 0x3FA4B5DCC0000000
  %291 = fmul fast float %273, 0x3FB3D07220000000
  %292 = fsub fast float 0x3FF0E147A0000000, %270
  %293 = fmul fast float %292, 0x3FEE54EDE0000000
  %294 = call float @dx.op.unary.f32(i32 23, float %293)  ; Log(value)
  %295 = fmul fast float %294, 0x4003333340000000
  %296 = call float @dx.op.unary.f32(i32 21, float %295)  ; Exp(value)
  %297 = select i1 %290, float %291, float %296
  br label %310

; <label>:298                                     ; preds = %244
  %299 = call float @dx.op.dot3.f32(i32 55, float %20, float %21, float %22, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %301 = fsub fast float %20, %299
  %302 = fsub fast float %21, %299
  %303 = fsub fast float %22, %299
  %304 = fmul fast float %300, %301
  %305 = fmul fast float %300, %302
  %306 = fmul fast float %300, %303
  %307 = fadd fast float %304, %299
  %308 = fadd fast float %305, %299
  %309 = fadd fast float %306, %299
  br label %310

; <label>:310                                     ; preds = %298, %246, %240
  %311 = phi float [ %281, %246 ], [ %307, %298 ], [ %20, %240 ]
  %312 = phi float [ %289, %246 ], [ %308, %298 ], [ %21, %240 ]
  %313 = phi float [ %297, %246 ], [ %309, %298 ], [ %22, %240 ]
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = fcmp fast une float %315, 0.000000e+00
  br i1 %316, label %317, label %491, !dx.controlflow.hints !52

; <label>:317                                     ; preds = %310
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = fsub fast float %24, %319
  %322 = fsub fast float %25, %320
  %323 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %324 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %325 = fmul fast float %321, %323
  %326 = fmul fast float %322, %324
  %327 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %9, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float %327)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.i32 %332, 3
  %334 = and i32 %333, 3
  %335 = icmp ne i32 %334, 0
  %336 = and i32 %333, 4
  %337 = icmp eq i32 %336, 0
  %338 = and i1 %335, %337
  br i1 %338, label %339, label %383

; <label>:339                                     ; preds = %317
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = fcmp fast oge float %330, %341
  %343 = zext i1 %342 to i32
  br i1 %342, label %344, label %383

; <label>:344                                     ; preds = %339
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 3
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %349 = fcmp fast ogt float %348, 0.000000e+00
  br i1 %349, label %350, label %358, !dx.controlflow.hints !53

; <label>:350                                     ; preds = %344
  %351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %330, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = extractvalue %dx.types.ResRet.f32 %351, 1
  %354 = extractvalue %dx.types.ResRet.f32 %351, 2
  %355 = fcmp fast ogt float %348, 1.500000e+00
  %356 = select i1 %355, float %352, float %353
  %357 = select i1 %355, float %352, float %354
  br label %376

; <label>:358                                     ; preds = %344
  %359 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %367 = fsub fast float %361, %364
  %368 = fsub fast float %362, %365
  %369 = fsub fast float %363, %366
  %370 = fmul fast float %367, %359
  %371 = fmul fast float %368, %359
  %372 = fmul fast float %369, %359
  %373 = fadd fast float %370, %364
  %374 = fadd fast float %371, %365
  %375 = fadd fast float %372, %366
  br label %376

; <label>:376                                     ; preds = %358, %350
  %377 = phi float [ %352, %350 ], [ %373, %358 ]
  %378 = phi float [ %356, %350 ], [ %374, %358 ]
  %379 = phi float [ %357, %350 ], [ %375, %358 ]
  %380 = fmul fast float %377, %346
  %381 = fmul fast float %378, %346
  %382 = fmul fast float %379, %346
  br label %383

; <label>:383                                     ; preds = %376, %339, %317
  %384 = phi float [ %380, %376 ], [ %329, %317 ], [ %329, %339 ]
  %385 = phi float [ %381, %376 ], [ %330, %317 ], [ %329, %339 ]
  %386 = phi float [ %382, %376 ], [ %331, %317 ], [ %329, %339 ]
  %387 = phi i32 [ %343, %376 ], [ 0, %317 ], [ %343, %339 ]
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %443

; <label>:389                                     ; preds = %383
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %391, float %392, float %393)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %396, float %397, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %401, float %402, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %407 = fmul fast float %406, %394
  %408 = fmul fast float %406, %399
  %409 = fmul fast float %406, %404
  %410 = fadd fast float %407, 9.765625e-04
  %411 = fadd fast float %408, 9.765625e-04
  %412 = fadd fast float %409, 9.765625e-04
  %413 = call float @dx.op.unary.f32(i32 23, float %410)  ; Log(value)
  %414 = call float @dx.op.unary.f32(i32 23, float %411)  ; Log(value)
  %415 = call float @dx.op.unary.f32(i32 23, float %412)  ; Log(value)
  %416 = fadd fast float %413, 1.000000e+01
  %417 = fadd fast float %414, 1.000000e+01
  %418 = fadd fast float %415, 1.000000e+01
  %419 = fmul fast float %416, 0x3FA99999A0000000
  %420 = fmul fast float %417, 0x3FA99999A0000000
  %421 = fmul fast float %418, 0x3FA99999A0000000
  %422 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %423 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %424 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = fmul fast float %426, %422
  %430 = fmul fast float %427, %423
  %431 = fmul fast float %428, %424
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 0
  %434 = extractvalue %dx.types.CBufRet.f32 %432, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %432, 2
  %436 = fadd fast float %429, %433
  %437 = fadd fast float %430, %434
  %438 = fadd fast float %431, %435
  %439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %436, float %437, float %438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  br label %443

; <label>:443                                     ; preds = %389, %383
  %444 = phi float [ %384, %383 ], [ %440, %389 ]
  %445 = phi float [ %385, %383 ], [ %441, %389 ]
  %446 = phi float [ %386, %383 ], [ %442, %389 ]
  %447 = fcmp fast ole float %444, 0x3FA4B5DCC0000000
  %448 = fmul fast float %444, 0x3FB3D07220000000
  %449 = fadd fast float %444, 0x3FAC28F5C0000000
  %450 = fmul fast float %449, 0x3FEE54EDE0000000
  %451 = call float @dx.op.unary.f32(i32 23, float %450)  ; Log(value)
  %452 = fmul fast float %451, 0x4003333340000000
  %453 = call float @dx.op.unary.f32(i32 21, float %452)  ; Exp(value)
  %454 = select i1 %447, float %448, float %453
  %455 = fcmp fast ole float %445, 0x3FA4B5DCC0000000
  %456 = fmul fast float %445, 0x3FB3D07220000000
  %457 = fadd fast float %445, 0x3FAC28F5C0000000
  %458 = fmul fast float %457, 0x3FEE54EDE0000000
  %459 = call float @dx.op.unary.f32(i32 23, float %458)  ; Log(value)
  %460 = fmul fast float %459, 0x4003333340000000
  %461 = call float @dx.op.unary.f32(i32 21, float %460)  ; Exp(value)
  %462 = select i1 %455, float %456, float %461
  %463 = fcmp fast ole float %446, 0x3FA4B5DCC0000000
  %464 = fmul fast float %446, 0x3FB3D07220000000
  %465 = fadd fast float %446, 0x3FAC28F5C0000000
  %466 = fmul fast float %465, 0x3FEE54EDE0000000
  %467 = call float @dx.op.unary.f32(i32 23, float %466)  ; Log(value)
  %468 = fmul fast float %467, 0x4003333340000000
  %469 = call float @dx.op.unary.f32(i32 21, float %468)  ; Exp(value)
  %470 = select i1 %463, float %464, float %469
  %471 = fcmp fast olt float %315, 0.000000e+00
  br i1 %471, label %472, label %484

; <label>:472                                     ; preds = %443
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %475 = extractvalue %dx.types.CBufRet.f32 %473, 1
  %476 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %477 = call float @dx.op.dot3.f32(i32 55, float %454, float %462, float %470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %478 = fsub fast float %477, %474
  %479 = fmul fast float %478, %475
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %481 = fsub fast float 1.000000e+00, %476
  %482 = fmul fast float %480, %481
  %483 = fadd fast float %482, %476
  br label %484

; <label>:484                                     ; preds = %472, %443
  %485 = phi float [ %483, %472 ], [ %454, %443 ]
  %486 = phi float [ %483, %472 ], [ %462, %443 ]
  %487 = phi float [ %483, %472 ], [ %470, %443 ]
  %488 = fmul fast float %485, %311
  %489 = fmul fast float %486, %312
  %490 = fmul fast float %487, %313
  br label %491

; <label>:491                                     ; preds = %484, %310
  %492 = phi float [ %488, %484 ], [ %311, %310 ]
  %493 = phi float [ %489, %484 ], [ %312, %310 ]
  %494 = phi float [ %490, %484 ], [ %313, %310 ]
  %495 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %496 = fcmp fast ogt float %495, 0.000000e+00
  br i1 %496, label %497, label %538, !dx.controlflow.hints !54

; <label>:497                                     ; preds = %491
  %498 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %499 = bitcast float %498 to i32
  %500 = and i32 %499, 255
  %501 = uitofp i32 %500 to float
  %502 = lshr i32 %499, 8
  %503 = and i32 %502, 255
  %504 = uitofp i32 %503 to float
  %505 = lshr i32 %499, 16
  %506 = and i32 %505, 255
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %507, 0x3F70101020000000
  %509 = lshr i32 %499, 24
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %510, 0x3F70101020000000
  %512 = fadd fast float %507, %501
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = fadd fast float %504, %510
  %515 = fmul fast float %514, 0x3F70101020000000
  %516 = fdiv fast float %24, %513
  %517 = fdiv fast float %25, %515
  %518 = fsub fast float -0.000000e+00, %516
  %519 = fsub fast float -0.000000e+00, %517
  %520 = fcmp fast oge float %516, %518
  %521 = fcmp fast oge float %517, %519
  %522 = call float @dx.op.unary.f32(i32 6, float %516)  ; FAbs(value)
  %523 = call float @dx.op.unary.f32(i32 6, float %517)  ; FAbs(value)
  %524 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %525 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %526 = fsub fast float -0.000000e+00, %524
  %527 = fsub fast float -0.000000e+00, %525
  %528 = select i1 %520, float %524, float %526
  %529 = select i1 %521, float %525, float %527
  %530 = fmul fast float %513, %528
  %531 = fmul fast float %529, %515
  %532 = fcmp fast olt float %530, %508
  %533 = fcmp fast olt float %531, %511
  %534 = or i1 %532, %533
  br i1 %534, label %535, label %538, !dx.controlflow.hints !55

; <label>:535                                     ; preds = %497
  %536 = fsub fast float 1.000000e+00, %495
  %537 = fmul fast float %536, %237
  br label %538

; <label>:538                                     ; preds = %535, %497, %491
  %539 = phi float [ %537, %535 ], [ %237, %497 ], [ %237, %491 ]
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = fcmp fast ogt float %541, 0.000000e+00
  br i1 %542, label %543, label %626, !dx.controlflow.hints !56

; <label>:543                                     ; preds = %538
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 3
  %549 = fmul fast float %548, 1.000000e+01
  %550 = call float @dx.op.unary.f32(i32 27, float %549)  ; Round_ni(value)
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %554 = fmul fast float %552, %24
  %555 = fmul fast float %553, %25
  %556 = call float @dx.op.unary.f32(i32 27, float %554)  ; Round_ni(value)
  %557 = call float @dx.op.unary.f32(i32 27, float %555)  ; Round_ni(value)
  %558 = fmul fast float %550, 0x4002B851E0000000
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = fadd fast float %559, 0x3FB99999A0000000
  %561 = fadd fast float %560, %556
  %562 = fadd fast float %560, %557
  %563 = fmul fast float %561, 0x3FE1BEDF00000000
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = fmul fast float %561, %564
  %566 = fadd fast float %565, %562
  %567 = fmul fast float %562, 0x3FD3BEBE20000000
  %568 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %569 = fmul fast float %562, %568
  %570 = fadd fast float %569, %561
  %571 = fmul fast float %566, %570
  %572 = call float @dx.op.unary.f32(i32 22, float %571)  ; Frc(value)
  %573 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %574 = bitcast float %573 to i32
  %575 = and i32 %574, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = fmul fast float %577, %545
  %579 = fcmp fast olt float %572, %578
  br i1 %579, label %580, label %587, !dx.controlflow.hints !57

; <label>:580                                     ; preds = %543
  %581 = fmul fast float %572, 0x4057091680000000
  %582 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %583 = fmul fast float %582, %492
  %584 = fmul fast float %582, %494
  %585 = fsub fast float 1.000000e+00, %582
  %586 = fmul fast float %585, %493
  br label %587

; <label>:587                                     ; preds = %580, %543
  %588 = phi float [ %583, %580 ], [ %492, %543 ]
  %589 = phi float [ %586, %580 ], [ %493, %543 ]
  %590 = phi float [ %584, %580 ], [ %494, %543 ]
  %591 = fmul fast float %572, 0x4028B0A3E0000000
  %592 = call float @dx.op.unary.f32(i32 22, float %591)  ; Frc(value)
  %593 = fmul fast float %577, %546
  %594 = fcmp fast olt float %592, %593
  br i1 %594, label %595, label %614, !dx.controlflow.hints !58

; <label>:595                                     ; preds = %587
  %596 = extractvalue %dx.types.CBufRet.f32 %551, 2
  %597 = fmul fast float %596, %24
  %598 = call float @dx.op.unary.f32(i32 27, float %597)  ; Round_ni(value)
  %599 = fmul fast float %598, 0x3FD5555560000000
  %600 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %601 = extractvalue %dx.types.CBufRet.f32 %544, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %544, 1
  %603 = fcmp fast olt float %600, 0x3FD51EB860000000
  br i1 %603, label %607, label %604, !dx.controlflow.hints !59

; <label>:604                                     ; preds = %595
  %605 = fcmp fast olt float %600, 0x3FE51EB860000000
  br i1 %605, label %607, label %606, !dx.controlflow.hints !60

; <label>:606                                     ; preds = %604
  br label %607

; <label>:607                                     ; preds = %606, %604, %595
  %608 = phi float [ %601, %606 ], [ %602, %595 ], [ %601, %604 ]
  %609 = phi float [ %601, %606 ], [ %601, %595 ], [ %602, %604 ]
  %610 = phi float [ %602, %606 ], [ %601, %595 ], [ %601, %604 ]
  %611 = fmul fast float %608, %588
  %612 = fmul fast float %609, %589
  %613 = fmul fast float %610, %590
  br label %614

; <label>:614                                     ; preds = %607, %587
  %615 = phi float [ %611, %607 ], [ %588, %587 ]
  %616 = phi float [ %612, %607 ], [ %589, %587 ]
  %617 = phi float [ %613, %607 ], [ %590, %587 ]
  %618 = fmul fast float %572, 0x40223EF9E0000000
  %619 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %620 = fmul fast float %577, %541
  %621 = fmul fast float %619, %619
  %622 = fmul fast float %621, %620
  %623 = fsub fast float 1.000000e+00, %622
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %625 = fmul fast float %624, %539
  br label %626

; <label>:626                                     ; preds = %614, %538
  %627 = phi float [ %615, %614 ], [ %492, %538 ]
  %628 = phi float [ %616, %614 ], [ %493, %538 ]
  %629 = phi float [ %617, %614 ], [ %494, %538 ]
  %630 = phi float [ %625, %614 ], [ %539, %538 ]
  %631 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %632 = fcmp fast ogt float %631, 0.000000e+00
  br i1 %632, label %633, label %682, !dx.controlflow.hints !61

; <label>:633                                     ; preds = %626
  %634 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %635 = fmul fast float %631, %14
  %636 = fmul fast float %634, %15
  %637 = call float @dx.op.unary.f32(i32 85, float %635)  ; DerivFineX(value)
  %638 = call float @dx.op.unary.f32(i32 86, float %635)  ; DerivFineY(value)
  %639 = call float @dx.op.unary.f32(i32 85, float %636)  ; DerivFineX(value)
  %640 = call float @dx.op.unary.f32(i32 86, float %636)  ; DerivFineY(value)
  %641 = fmul fast float %640, %637
  %642 = fmul fast float %639, %638
  %643 = fsub fast float %641, %642
  %644 = fdiv fast float 1.000000e+00, %643
  %645 = fmul fast float %644, %640
  %646 = fmul fast float %644, %638
  %647 = fmul fast float %644, %639
  %648 = fmul fast float %644, %637
  %649 = fmul fast float %645, %645
  %650 = fmul fast float %647, %647
  %651 = fadd fast float %649, %650
  %652 = call float @dx.op.unary.f32(i32 24, float %651)  ; Sqrt(value)
  %653 = fmul fast float %646, %646
  %654 = fmul fast float %648, %648
  %655 = fadd fast float %653, %654
  %656 = call float @dx.op.unary.f32(i32 24, float %655)  ; Sqrt(value)
  %657 = fmul fast float %652, %635
  %658 = fmul fast float %656, %636
  %659 = fsub fast float %657, %652
  %660 = fsub fast float %658, %656
  %661 = fsub fast float -0.000000e+00, %657
  %662 = fsub fast float -0.000000e+00, %658
  %663 = call float @dx.op.binary.f32(i32 35, float %661, float %659)  ; FMax(a,b)
  %664 = call float @dx.op.binary.f32(i32 35, float %662, float %660)  ; FMax(a,b)
  %665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %663)  ; FMax(a,b)
  %666 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %664)  ; FMax(a,b)
  %667 = fmul fast float %665, %665
  %668 = fmul fast float %666, %666
  %669 = fadd fast float %668, %667
  %670 = call float @dx.op.unary.f32(i32 24, float %669)  ; Sqrt(value)
  %671 = call float @dx.op.binary.f32(i32 35, float %663, float %664)  ; FMax(a,b)
  %672 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %671)  ; FMin(a,b)
  %673 = fadd fast float %670, -1.000000e+00
  %674 = fadd fast float %673, %672
  %675 = fmul fast float %674, -5.000000e-01
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %677 = fmul fast float %676, 2.000000e+00
  %678 = fsub fast float 3.000000e+00, %677
  %679 = fmul fast float %676, %676
  %680 = fmul fast float %679, %630
  %681 = fmul fast float %680, %678
  br label %682

; <label>:682                                     ; preds = %633, %626
  %683 = phi float [ %681, %633 ], [ %630, %626 ]
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %687 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %691 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %696 = fmul fast float %685, %627
  %697 = call float @dx.op.tertiary.f32(i32 46, float %686, float %628, float %696)  ; FMad(a,b,c)
  %698 = call float @dx.op.tertiary.f32(i32 46, float %687, float %629, float %697)  ; FMad(a,b,c)
  %699 = fmul fast float %689, %627
  %700 = call float @dx.op.tertiary.f32(i32 46, float %690, float %628, float %699)  ; FMad(a,b,c)
  %701 = call float @dx.op.tertiary.f32(i32 46, float %691, float %629, float %700)  ; FMad(a,b,c)
  %702 = fmul fast float %693, %627
  %703 = call float @dx.op.tertiary.f32(i32 46, float %694, float %628, float %702)  ; FMad(a,b,c)
  %704 = call float @dx.op.tertiary.f32(i32 46, float %695, float %629, float %703)  ; FMad(a,b,c)
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 0
  %707 = bitcast float %706 to i32
  %708 = and i32 %707, 128
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %724, label %710

; <label>:710                                     ; preds = %682
  %711 = call float @dx.op.unary.f32(i32 24, float %698)  ; Sqrt(value)
  %712 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %713 = call float @dx.op.unary.f32(i32 24, float %704)  ; Sqrt(value)
  %714 = fmul fast float %711, 9.687500e-01
  %715 = fmul fast float %712, 9.687500e-01
  %716 = fmul fast float %713, 9.687500e-01
  %717 = fadd fast float %714, 1.562500e-02
  %718 = fadd fast float %715, 1.562500e-02
  %719 = fadd fast float %716, 1.562500e-02
  %720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %9, float %717, float %718, float %719, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = extractvalue %dx.types.ResRet.f32 %720, 1
  %723 = extractvalue %dx.types.ResRet.f32 %720, 2
  br label %1011

; <label>:724                                     ; preds = %682
  %725 = and i32 %707, 127
  switch i32 %725, label %1011 [
    i32 1, label %726
    i32 2, label %726
    i32 0, label %726
    i32 3, label %756
    i32 4, label %877
  ]

; <label>:726                                     ; preds = %724, %724, %724
  %727 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %728 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %729 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %730 = call float @dx.op.unary.f32(i32 23, float %727)  ; Log(value)
  %731 = call float @dx.op.unary.f32(i32 23, float %728)  ; Log(value)
  %732 = call float @dx.op.unary.f32(i32 23, float %729)  ; Log(value)
  %733 = fmul fast float %730, 0x3FDAAAAAA0000000
  %734 = fmul fast float %731, 0x3FDAAAAAA0000000
  %735 = fmul fast float %732, 0x3FDAAAAAA0000000
  %736 = call float @dx.op.unary.f32(i32 21, float %733)  ; Exp(value)
  %737 = call float @dx.op.unary.f32(i32 21, float %734)  ; Exp(value)
  %738 = call float @dx.op.unary.f32(i32 21, float %735)  ; Exp(value)
  %739 = fmul fast float %736, 0x3FF0E147A0000000
  %740 = fmul fast float %737, 0x3FF0E147A0000000
  %741 = fmul fast float %738, 0x3FF0E147A0000000
  %742 = fadd fast float %739, 0xBFAC28F5C0000000
  %743 = fadd fast float %740, 0xBFAC28F5C0000000
  %744 = fadd fast float %741, 0xBFAC28F5C0000000
  %745 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %746 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %747 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %748 = extractvalue %dx.types.CBufRet.f32 %705, 2
  %749 = extractvalue %dx.types.CBufRet.f32 %705, 3
  %750 = fmul fast float %748, %745
  %751 = fmul fast float %748, %746
  %752 = fmul fast float %748, %747
  %753 = fadd fast float %750, %749
  %754 = fadd fast float %751, %749
  %755 = fadd fast float %752, %749
  br label %1011

; <label>:756                                     ; preds = %724
  %757 = fmul fast float %698, 0x4163D57C00000000
  %758 = fmul fast float %701, 0x4163D57C00000000
  %759 = fmul fast float %704, 0x4163D57C00000000
  %760 = fadd fast float %757, 9.999980e+05
  %761 = fadd fast float %758, 9.999980e+05
  %762 = fadd fast float %759, 9.999980e+05
  %763 = fmul fast float %760, %698
  %764 = fmul fast float %761, %701
  %765 = fmul fast float %762, %704
  %766 = fadd fast float %763, 0xC0AFE17A60000000
  %767 = fadd fast float %764, 0xC0AFE17A60000000
  %768 = fadd fast float %765, 0xC0AFE17A60000000
  %769 = fmul fast float %766, %698
  %770 = fmul fast float %767, %701
  %771 = fmul fast float %768, %704
  %772 = fmul fast float %698, 0x40F753C340000000
  %773 = fmul fast float %701, 0x40F753C340000000
  %774 = fmul fast float %704, 0x40F753C340000000
  %775 = fsub fast float 9.999990e+06, %772
  %776 = fsub fast float 9.999990e+06, %773
  %777 = fsub fast float 9.999990e+06, %774
  %778 = fmul fast float %775, %698
  %779 = fmul fast float %776, %701
  %780 = fmul fast float %777, %704
  %781 = fadd fast float %778, 0x4136D1DD80000000
  %782 = fadd fast float %779, 0x4136D1DD80000000
  %783 = fadd fast float %780, 0x4136D1DD80000000
  %784 = fmul fast float %781, %698
  %785 = fmul fast float %782, %701
  %786 = fmul fast float %783, %704
  %787 = fadd fast float %784, 1.000000e+00
  %788 = fadd fast float %785, 1.000000e+00
  %789 = fadd fast float %786, 1.000000e+00
  %790 = fdiv fast float %769, %787
  %791 = fdiv fast float %770, %788
  %792 = fdiv fast float %771, %789
  %793 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %794 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  %795 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %796 = extractvalue %dx.types.CBufRet.f32 %705, 1
  %797 = fmul fast float %793, 0x3FE413A920000000
  %798 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %794, float %797)  ; FMad(a,b,c)
  %799 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %795, float %798)  ; FMad(a,b,c)
  %800 = fmul fast float %793, 0x3FB1B089A0000000
  %801 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %794, float %800)  ; FMad(a,b,c)
  %802 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %795, float %801)  ; FMad(a,b,c)
  %803 = fmul fast float %793, 0x3F90CB2960000000
  %804 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %794, float %803)  ; FMad(a,b,c)
  %805 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %795, float %804)  ; FMad(a,b,c)
  %806 = fmul fast float %799, %796
  %807 = fmul fast float %802, %796
  %808 = fmul fast float %805, %796
  %809 = fmul fast float %806, 0x3F847AE140000000
  %810 = fmul fast float %807, 0x3F847AE140000000
  %811 = fmul fast float %808, 0x3F847AE140000000
  %812 = fmul fast float %806, 0x40B4D2F520000000
  %813 = fmul fast float %807, 0x40B4D2F520000000
  %814 = fmul fast float %808, 0x40B4D2F520000000
  %815 = fadd fast float %812, 0x41869ECF20000000
  %816 = fadd fast float %813, 0x41869ECF20000000
  %817 = fadd fast float %814, 0x41869ECF20000000
  %818 = fmul fast float %815, %809
  %819 = fmul fast float %816, %810
  %820 = fmul fast float %817, %811
  %821 = fadd fast float %818, 0x417BB79C60000000
  %822 = fadd fast float %819, 0x417BB79C60000000
  %823 = fadd fast float %820, 0x417BB79C60000000
  %824 = fmul fast float %821, %809
  %825 = fmul fast float %822, %810
  %826 = fmul fast float %823, %811
  %827 = fadd fast float %824, 0x41218DE180000000
  %828 = fadd fast float %825, 0x41218DE180000000
  %829 = fadd fast float %826, 0x41218DE180000000
  %830 = fmul fast float %827, %809
  %831 = fmul fast float %828, %810
  %832 = fmul fast float %829, %811
  %833 = fadd fast float %830, 0x4077F174E0000000
  %834 = fadd fast float %831, 0x4077F174E0000000
  %835 = fadd fast float %832, 0x4077F174E0000000
  %836 = fmul fast float %833, %809
  %837 = fmul fast float %834, %810
  %838 = fmul fast float %835, %811
  %839 = fadd fast float %836, 0x3F3FF79B80000000
  %840 = fadd fast float %837, 0x3F3FF79B80000000
  %841 = fadd fast float %838, 0x3F3FF79B80000000
  %842 = fmul fast float %806, 0x412442D320000000
  %843 = fmul fast float %807, 0x412442D320000000
  %844 = fmul fast float %808, 0x412442D320000000
  %845 = fadd fast float %842, 0x419385D5C0000000
  %846 = fadd fast float %843, 0x419385D5C0000000
  %847 = fadd fast float %844, 0x419385D5C0000000
  %848 = fmul fast float %845, %809
  %849 = fmul fast float %846, %810
  %850 = fmul fast float %847, %811
  %851 = fadd fast float %848, 4.182885e+06
  %852 = fadd fast float %849, 4.182885e+06
  %853 = fadd fast float %850, 4.182885e+06
  %854 = fmul fast float %851, %809
  %855 = fmul fast float %852, %810
  %856 = fmul fast float %853, %811
  %857 = fadd fast float %854, 0x40C4D633C0000000
  %858 = fadd fast float %855, 0x40C4D633C0000000
  %859 = fadd fast float %856, 0x40C4D633C0000000
  %860 = fmul fast float %857, %809
  %861 = fmul fast float %858, %810
  %862 = fmul fast float %859, %811
  %863 = fadd fast float %860, 1.000000e+00
  %864 = fadd fast float %861, 1.000000e+00
  %865 = fadd fast float %862, 1.000000e+00
  %866 = fdiv fast float %839, %863
  %867 = fdiv fast float %840, %864
  %868 = fdiv fast float %841, %865
  %869 = extractvalue %dx.types.CBufRet.f32 %705, 2
  %870 = extractvalue %dx.types.CBufRet.f32 %705, 3
  %871 = fmul fast float %869, %866
  %872 = fmul fast float %869, %867
  %873 = fmul fast float %869, %868
  %874 = fadd fast float %871, %870
  %875 = fadd fast float %872, %870
  %876 = fadd fast float %873, %870
  br label %1011

; <label>:877                                     ; preds = %724
  %878 = fmul fast float %698, 0x4163D57C00000000
  %879 = fmul fast float %701, 0x4163D57C00000000
  %880 = fmul fast float %704, 0x4163D57C00000000
  %881 = fadd fast float %878, 9.999980e+05
  %882 = fadd fast float %879, 9.999980e+05
  %883 = fadd fast float %880, 9.999980e+05
  %884 = fmul fast float %881, %698
  %885 = fmul fast float %882, %701
  %886 = fmul fast float %883, %704
  %887 = fadd fast float %884, 0xC0AFE17A60000000
  %888 = fadd fast float %885, 0xC0AFE17A60000000
  %889 = fadd fast float %886, 0xC0AFE17A60000000
  %890 = fmul fast float %887, %698
  %891 = fmul fast float %888, %701
  %892 = fmul fast float %889, %704
  %893 = fmul fast float %698, 0x40F753C340000000
  %894 = fmul fast float %701, 0x40F753C340000000
  %895 = fmul fast float %704, 0x40F753C340000000
  %896 = fsub fast float 9.999990e+06, %893
  %897 = fsub fast float 9.999990e+06, %894
  %898 = fsub fast float 9.999990e+06, %895
  %899 = fmul fast float %896, %698
  %900 = fmul fast float %897, %701
  %901 = fmul fast float %898, %704
  %902 = fadd fast float %899, 0x4136D1DD80000000
  %903 = fadd fast float %900, 0x4136D1DD80000000
  %904 = fadd fast float %901, 0x4136D1DD80000000
  %905 = fmul fast float %902, %698
  %906 = fmul fast float %903, %701
  %907 = fmul fast float %904, %704
  %908 = fadd fast float %905, 1.000000e+00
  %909 = fadd fast float %906, 1.000000e+00
  %910 = fadd fast float %907, 1.000000e+00
  %911 = fdiv fast float %890, %908
  %912 = fdiv fast float %891, %909
  %913 = fdiv fast float %892, %910
  %914 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %915 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %916 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %917 = extractvalue %dx.types.CBufRet.f32 %705, 1
  %918 = fmul fast float %914, 0x3FEA519BC0000000
  %919 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %915, float %918)  ; FMad(a,b,c)
  %920 = fmul fast float %914, 0x3FA0FED480000000
  %921 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %915, float %920)  ; FMad(a,b,c)
  %922 = fmul fast float %914, 0x3F917E1C00000000
  %923 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %915, float %922)  ; FMad(a,b,c)
  %924 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %916, float %923)  ; FMad(a,b,c)
  %925 = call float @dx.op.binary.f32(i32 35, float %914, float %915)  ; FMax(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %925, float %916)  ; FMax(a,b)
  %927 = fadd fast float %926, -1.000000e+00
  %928 = fmul fast float %927, 2.500000e-01
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %930, %919
  %932 = fmul fast float %930, %921
  %933 = fmul fast float %930, %924
  %934 = fmul fast float %929, %914
  %935 = fmul fast float %929, %915
  %936 = fmul fast float %929, %916
  %937 = fadd fast float %931, %934
  %938 = fadd fast float %932, %935
  %939 = fadd fast float %933, %936
  %940 = fmul fast float %937, %917
  %941 = fmul fast float %938, %917
  %942 = fmul fast float %939, %917
  %943 = fmul fast float %940, 0x3F847AE140000000
  %944 = fmul fast float %941, 0x3F847AE140000000
  %945 = fmul fast float %942, 0x3F847AE140000000
  %946 = fmul fast float %940, 0x40B4D2F520000000
  %947 = fmul fast float %941, 0x40B4D2F520000000
  %948 = fmul fast float %942, 0x40B4D2F520000000
  %949 = fadd fast float %946, 0x41869ECF20000000
  %950 = fadd fast float %947, 0x41869ECF20000000
  %951 = fadd fast float %948, 0x41869ECF20000000
  %952 = fmul fast float %949, %943
  %953 = fmul fast float %950, %944
  %954 = fmul fast float %951, %945
  %955 = fadd fast float %952, 0x417BB79C60000000
  %956 = fadd fast float %953, 0x417BB79C60000000
  %957 = fadd fast float %954, 0x417BB79C60000000
  %958 = fmul fast float %955, %943
  %959 = fmul fast float %956, %944
  %960 = fmul fast float %957, %945
  %961 = fadd fast float %958, 0x41218DE180000000
  %962 = fadd fast float %959, 0x41218DE180000000
  %963 = fadd fast float %960, 0x41218DE180000000
  %964 = fmul fast float %961, %943
  %965 = fmul fast float %962, %944
  %966 = fmul fast float %963, %945
  %967 = fadd fast float %964, 0x4077F174E0000000
  %968 = fadd fast float %965, 0x4077F174E0000000
  %969 = fadd fast float %966, 0x4077F174E0000000
  %970 = fmul fast float %967, %943
  %971 = fmul fast float %968, %944
  %972 = fmul fast float %969, %945
  %973 = fadd fast float %970, 0x3F3FF79B80000000
  %974 = fadd fast float %971, 0x3F3FF79B80000000
  %975 = fadd fast float %972, 0x3F3FF79B80000000
  %976 = fmul fast float %940, 0x412442D320000000
  %977 = fmul fast float %941, 0x412442D320000000
  %978 = fmul fast float %942, 0x412442D320000000
  %979 = fadd fast float %976, 0x419385D5C0000000
  %980 = fadd fast float %977, 0x419385D5C0000000
  %981 = fadd fast float %978, 0x419385D5C0000000
  %982 = fmul fast float %979, %943
  %983 = fmul fast float %980, %944
  %984 = fmul fast float %981, %945
  %985 = fadd fast float %982, 4.182885e+06
  %986 = fadd fast float %983, 4.182885e+06
  %987 = fadd fast float %984, 4.182885e+06
  %988 = fmul fast float %985, %943
  %989 = fmul fast float %986, %944
  %990 = fmul fast float %987, %945
  %991 = fadd fast float %988, 0x40C4D633C0000000
  %992 = fadd fast float %989, 0x40C4D633C0000000
  %993 = fadd fast float %990, 0x40C4D633C0000000
  %994 = fmul fast float %991, %943
  %995 = fmul fast float %992, %944
  %996 = fmul fast float %993, %945
  %997 = fadd fast float %994, 1.000000e+00
  %998 = fadd fast float %995, 1.000000e+00
  %999 = fadd fast float %996, 1.000000e+00
  %1000 = fdiv fast float %973, %997
  %1001 = fdiv fast float %974, %998
  %1002 = fdiv fast float %975, %999
  %1003 = extractvalue %dx.types.CBufRet.f32 %705, 2
  %1004 = extractvalue %dx.types.CBufRet.f32 %705, 3
  %1005 = fmul fast float %1003, %1000
  %1006 = fmul fast float %1003, %1001
  %1007 = fmul fast float %1003, %1002
  %1008 = fadd fast float %1005, %1004
  %1009 = fadd fast float %1006, %1004
  %1010 = fadd fast float %1007, %1004
  br label %1011

; <label>:1011                                    ; preds = %877, %756, %726, %724, %710
  %1012 = phi float [ %721, %710 ], [ %698, %724 ], [ %1008, %877 ], [ %874, %756 ], [ %753, %726 ]
  %1013 = phi float [ %722, %710 ], [ %701, %724 ], [ %1009, %877 ], [ %875, %756 ], [ %754, %726 ]
  %1014 = phi float [ %723, %710 ], [ %704, %724 ], [ %1010, %877 ], [ %876, %756 ], [ %755, %726 ]
  %1015 = fmul fast float %1012, %683
  %1016 = fmul fast float %1013, %683
  %1017 = fmul fast float %1014, %683
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1015)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1016)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1017)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %683)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!4 = !{!5, null, !13, !17}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!16 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 112, null}
!17 = !{!18, !19, !20, !21}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!21 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!22 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15]}
!23 = !{void ()* @ps_main, !"ps_main", !24, !4, null}
!24 = !{!25, !44, null}
!25 = !{!26, !29, !31, !32, !34, !36, !38, !40, !42}
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
!42 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 2, i32 5, i8 0, !28}
!43 = !{i32 1}
!44 = !{!45}
!45 = !{i32 0, !"SV_Target", i8 9, i8 16, !27, i8 0, i32 1, i8 4, i32 0, i8 0, !30}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}

