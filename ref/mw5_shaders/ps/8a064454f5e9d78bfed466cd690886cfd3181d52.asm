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
; TEXCOORD                 7   xy          5     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 1f5f4e1010049f649f5a8d37b22c8674
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
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s3     1
;                                   sampler      NA          NA      S2             s4     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture     f32          2d      T3     t76,space2     1
;                                   texture     f32          2d      T4             t0     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          3d      T6     t71,space2     1
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
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 10, 11 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %82 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %80, float %81, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 3
  %84 = fmul fast float %83, 2.000000e+00
  %85 = fadd fast float %84, -1.000000e+00
  %86 = call float @dx.op.unary.f32(i32 83, float %85)  ; DerivCoarseX(value)
  %87 = call float @dx.op.unary.f32(i32 84, float %85)  ; DerivCoarseY(value)
  %88 = fmul fast float %86, %86
  %89 = fmul fast float %87, %87
  %90 = fadd fast float %89, %88
  %91 = call float @dx.op.unary.f32(i32 24, float %90)  ; Sqrt(value)
  %92 = fmul fast float %91, 2.000000e+00
  %93 = fadd fast float %91, %85
  %94 = fdiv fast float %93, %92
  %95 = call float @dx.op.unary.f32(i32 7, float %94)  ; Saturate(value)
  %96 = fmul fast float %95, 2.000000e+00
  %97 = fsub fast float 3.000000e+00, %96
  %98 = fmul fast float %95, %95
  %99 = fmul fast float %98, %23
  %100 = fmul fast float %99, %97
  %101 = fcmp fast ole float %20, 0x3FA4B5DCC0000000
  %102 = fmul fast float %20, 0x3FB3D07220000000
  %103 = fadd fast float %20, 0x3FAC28F5C0000000
  %104 = fmul fast float %103, 0x3FEE54EDE0000000
  %105 = call float @dx.op.unary.f32(i32 23, float %104)  ; Log(value)
  %106 = fmul fast float %105, 0x4003333340000000
  %107 = call float @dx.op.unary.f32(i32 21, float %106)  ; Exp(value)
  %108 = select i1 %101, float %102, float %107
  %109 = fcmp fast ole float %21, 0x3FA4B5DCC0000000
  %110 = fmul fast float %21, 0x3FB3D07220000000
  %111 = fadd fast float %21, 0x3FAC28F5C0000000
  %112 = fmul fast float %111, 0x3FEE54EDE0000000
  %113 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %114 = fmul fast float %113, 0x4003333340000000
  %115 = call float @dx.op.unary.f32(i32 21, float %114)  ; Exp(value)
  %116 = select i1 %109, float %110, float %115
  %117 = fcmp fast ole float %22, 0x3FA4B5DCC0000000
  %118 = fmul fast float %22, 0x3FB3D07220000000
  %119 = fadd fast float %22, 0x3FAC28F5C0000000
  %120 = fmul fast float %119, 0x3FEE54EDE0000000
  %121 = call float @dx.op.unary.f32(i32 23, float %120)  ; Log(value)
  %122 = fmul fast float %121, 0x4003333340000000
  %123 = call float @dx.op.unary.f32(i32 21, float %122)  ; Exp(value)
  %124 = select i1 %117, float %118, float %123
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %127 = bitcast float %126 to i32
  %128 = and i32 %127, 512
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %224, label %130

; <label>:130                                     ; preds = %79
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %133 = bitcast float %132 to i32
  %134 = and i32 %133, 65535
  %135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %134)  ; LegacyF16ToF32(value)
  %136 = lshr i32 %133, 16
  %137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %136)  ; LegacyF16ToF32(value)
  %138 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %139 = bitcast float %138 to i32
  %140 = and i32 %139, 65535
  %141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %140)  ; LegacyF16ToF32(value)
  %142 = lshr i32 %139, 16
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = and i32 %127, 16
  %145 = icmp ne i32 %144, 0
  %146 = fcmp fast ogt float %135, 0.000000e+00
  %147 = fcmp fast ogt float %137, 0.000000e+00
  %148 = and i1 %146, %147
  %149 = fcmp fast ogt float %141, 0.000000e+00
  br i1 %148, label %150, label %210

; <label>:150                                     ; preds = %130
  br i1 %149, label %151, label %159

; <label>:151                                     ; preds = %150
  %152 = fmul fast float %137, %17
  %153 = fmul fast float %135, %16
  %154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %153, float %152, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fsub fast float 1.000000e+00, %155
  %157 = select i1 %145, float %156, float %155
  %158 = fmul fast float %157, %141
  br label %159

; <label>:159                                     ; preds = %151, %150
  %160 = phi float [ %158, %151 ], [ 0.000000e+00, %150 ]
  %161 = fadd fast float %160, %143
  %162 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  br i1 %149, label %163, label %173

; <label>:163                                     ; preds = %159
  %164 = fmul fast float %137, %17
  %165 = fsub fast float 1.000000e+00, %16
  %166 = fmul fast float %135, %165
  %167 = fsub fast float 1.000000e+00, %166
  %168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %167, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 1
  %170 = fsub fast float 1.000000e+00, %169
  %171 = select i1 %145, float %170, float %169
  %172 = fmul fast float %171, %141
  br label %173

; <label>:173                                     ; preds = %163, %159
  %174 = phi float [ %172, %163 ], [ 0.000000e+00, %159 ]
  %175 = fadd fast float %174, %143
  %176 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %177 = fmul fast float %176, %162
  br i1 %149, label %178, label %190

; <label>:178                                     ; preds = %173
  %179 = fsub fast float 1.000000e+00, %17
  %180 = fmul fast float %137, %179
  %181 = fsub fast float 1.000000e+00, %180
  %182 = fsub fast float 1.000000e+00, %16
  %183 = fmul fast float %135, %182
  %184 = fsub fast float 1.000000e+00, %183
  %185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %184, float %181, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 2
  %187 = fsub fast float 1.000000e+00, %186
  %188 = select i1 %145, float %187, float %186
  %189 = fmul fast float %188, %141
  br label %190

; <label>:190                                     ; preds = %178, %173
  %191 = phi float [ %189, %178 ], [ 0.000000e+00, %173 ]
  %192 = fadd fast float %191, %143
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fmul fast float %177, %193
  br i1 %149, label %195, label %205

; <label>:195                                     ; preds = %190
  %196 = fsub fast float 1.000000e+00, %17
  %197 = fmul fast float %137, %196
  %198 = fsub fast float 1.000000e+00, %197
  %199 = fmul fast float %135, %16
  %200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %199, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 3
  %202 = fsub fast float 1.000000e+00, %201
  %203 = select i1 %145, float %202, float %201
  %204 = fmul fast float %203, %141
  br label %205

; <label>:205                                     ; preds = %195, %190
  %206 = phi float [ %204, %195 ], [ 0.000000e+00, %190 ]
  %207 = fadd fast float %206, %143
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = fmul fast float %194, %208
  br label %221

; <label>:210                                     ; preds = %130
  br i1 %149, label %211, label %217

; <label>:211                                     ; preds = %210
  %212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fsub fast float 1.000000e+00, %213
  %215 = select i1 %145, float %214, float %213
  %216 = fmul fast float %215, %141
  br label %217

; <label>:217                                     ; preds = %211, %210
  %218 = phi float [ %216, %211 ], [ 0.000000e+00, %210 ]
  %219 = fadd fast float %218, %143
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  br label %221

; <label>:221                                     ; preds = %217, %205
  %222 = phi float [ %209, %205 ], [ %220, %217 ]
  %223 = fmul fast float %222, %100
  br label %224

; <label>:224                                     ; preds = %221, %79
  %225 = phi float [ %223, %221 ], [ %100, %79 ]
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float 0.000000e+00)  ; FMax(a,b)
  %227 = fcmp fast oeq float %226, 0.000000e+00
  br i1 %227, label %228, label %229, !dx.controlflow.hints !48

; <label>:228                                     ; preds = %224
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %229

; <label>:229                                     ; preds = %228, %224
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %9, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %234 = bitcast float %233 to i32
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = fcmp fast une float %236, 0.000000e+00
  %238 = select i1 %237, float 0.000000e+00, float 1.000000e+00
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %241 = fmul fast float %240, %231
  %242 = fmul fast float %241, %238
  %243 = fsub fast float 1.000000e+00, %242
  %244 = fmul fast float %243, %108
  %245 = fmul fast float %243, %116
  %246 = fmul fast float %243, %124
  %247 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %250 = fmul fast float %247, %241
  %251 = fmul fast float %248, %241
  %252 = fmul fast float %249, %241
  %253 = fadd fast float %244, %250
  %254 = fadd fast float %245, %251
  %255 = fadd fast float %246, %252
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %258 = fcmp fast ogt float %257, 0.000000e+00
  br i1 %258, label %259, label %325, !dx.controlflow.hints !49

; <label>:259                                     ; preds = %229
  %260 = fcmp fast oeq float %257, 2.000000e+00
  br i1 %260, label %261, label %313, !dx.controlflow.hints !50

; <label>:261                                     ; preds = %259
  %262 = fcmp fast ole float %253, 0x3F69A5C380000000
  %263 = fcmp fast ole float %254, 0x3F69A5C380000000
  %264 = fcmp fast ole float %255, 0x3F69A5C380000000
  %265 = fmul fast float %253, 0x4029D70A40000000
  %266 = fmul fast float %254, 0x4029D70A40000000
  %267 = fmul fast float %255, 0x4029D70A40000000
  %268 = call float @dx.op.unary.f32(i32 23, float %253)  ; Log(value)
  %269 = call float @dx.op.unary.f32(i32 23, float %254)  ; Log(value)
  %270 = call float @dx.op.unary.f32(i32 23, float %255)  ; Log(value)
  %271 = fmul fast float %268, 0x3FDAAAAAA0000000
  %272 = fmul fast float %269, 0x3FDAAAAAA0000000
  %273 = fmul fast float %270, 0x3FDAAAAAA0000000
  %274 = call float @dx.op.unary.f32(i32 21, float %271)  ; Exp(value)
  %275 = call float @dx.op.unary.f32(i32 21, float %272)  ; Exp(value)
  %276 = call float @dx.op.unary.f32(i32 21, float %273)  ; Exp(value)
  %277 = fmul fast float %274, 0x3FF0E147A0000000
  %278 = fmul fast float %275, 0x3FF0E147A0000000
  %279 = fmul fast float %276, 0x3FF0E147A0000000
  %280 = fadd fast float %277, 0xBFAC28F5C0000000
  %281 = fadd fast float %278, 0xBFAC28F5C0000000
  %282 = fadd fast float %279, 0xBFAC28F5C0000000
  %283 = select i1 %262, float %265, float %280
  %284 = select i1 %263, float %266, float %281
  %285 = select i1 %264, float %267, float %282
  %286 = fsub fast float 1.000000e+00, %283
  %287 = fsub fast float 1.000000e+00, %284
  %288 = fsub fast float 1.000000e+00, %285
  %289 = fcmp fast ole float %286, 0x3FA4B5DCC0000000
  %290 = fmul fast float %286, 0x3FB3D07220000000
  %291 = fsub fast float 0x3FF0E147A0000000, %283
  %292 = fmul fast float %291, 0x3FEE54EDE0000000
  %293 = call float @dx.op.unary.f32(i32 23, float %292)  ; Log(value)
  %294 = fmul fast float %293, 0x4003333340000000
  %295 = call float @dx.op.unary.f32(i32 21, float %294)  ; Exp(value)
  %296 = select i1 %289, float %290, float %295
  %297 = fcmp fast ole float %287, 0x3FA4B5DCC0000000
  %298 = fmul fast float %287, 0x3FB3D07220000000
  %299 = fsub fast float 0x3FF0E147A0000000, %284
  %300 = fmul fast float %299, 0x3FEE54EDE0000000
  %301 = call float @dx.op.unary.f32(i32 23, float %300)  ; Log(value)
  %302 = fmul fast float %301, 0x4003333340000000
  %303 = call float @dx.op.unary.f32(i32 21, float %302)  ; Exp(value)
  %304 = select i1 %297, float %298, float %303
  %305 = fcmp fast ole float %288, 0x3FA4B5DCC0000000
  %306 = fmul fast float %288, 0x3FB3D07220000000
  %307 = fsub fast float 0x3FF0E147A0000000, %285
  %308 = fmul fast float %307, 0x3FEE54EDE0000000
  %309 = call float @dx.op.unary.f32(i32 23, float %308)  ; Log(value)
  %310 = fmul fast float %309, 0x4003333340000000
  %311 = call float @dx.op.unary.f32(i32 21, float %310)  ; Exp(value)
  %312 = select i1 %305, float %306, float %311
  br label %325

; <label>:313                                     ; preds = %259
  %314 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %315 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %316 = fsub fast float %253, %314
  %317 = fsub fast float %254, %314
  %318 = fsub fast float %255, %314
  %319 = fmul fast float %315, %316
  %320 = fmul fast float %315, %317
  %321 = fmul fast float %315, %318
  %322 = fadd fast float %319, %314
  %323 = fadd fast float %320, %314
  %324 = fadd fast float %321, %314
  br label %325

; <label>:325                                     ; preds = %313, %261, %229
  %326 = phi float [ %296, %261 ], [ %322, %313 ], [ %253, %229 ]
  %327 = phi float [ %304, %261 ], [ %323, %313 ], [ %254, %229 ]
  %328 = phi float [ %312, %261 ], [ %324, %313 ], [ %255, %229 ]
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = fcmp fast une float %330, 0.000000e+00
  br i1 %331, label %332, label %506, !dx.controlflow.hints !51

; <label>:332                                     ; preds = %325
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = fsub fast float %24, %334
  %337 = fsub fast float %25, %335
  %338 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %339 = extractvalue %dx.types.CBufRet.f32 %333, 3
  %340 = fmul fast float %336, %338
  %341 = fmul fast float %337, %339
  %342 = call float @dx.op.unary.f32(i32 6, float %330)  ; FAbs(value)
  %343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %340, float %341, float undef, float undef, i32 0, i32 0, i32 undef, float %342)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = extractvalue %dx.types.ResRet.f32 %343, 1
  %346 = extractvalue %dx.types.ResRet.f32 %343, 2
  %347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.i32 %347, 3
  %349 = and i32 %348, 3
  %350 = icmp ne i32 %349, 0
  %351 = and i32 %348, 4
  %352 = icmp eq i32 %351, 0
  %353 = and i1 %350, %352
  br i1 %353, label %354, label %398

; <label>:354                                     ; preds = %332
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = fcmp fast oge float %345, %356
  %358 = zext i1 %357 to i32
  br i1 %357, label %359, label %398

; <label>:359                                     ; preds = %354
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 3
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %364 = fcmp fast ogt float %363, 0.000000e+00
  br i1 %364, label %365, label %373, !dx.controlflow.hints !52

; <label>:365                                     ; preds = %359
  %366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %345, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = fcmp fast ogt float %363, 1.500000e+00
  %371 = select i1 %370, float %367, float %368
  %372 = select i1 %370, float %367, float %369
  br label %391

; <label>:373                                     ; preds = %359
  %374 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %379 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %382 = fsub fast float %376, %379
  %383 = fsub fast float %377, %380
  %384 = fsub fast float %378, %381
  %385 = fmul fast float %382, %374
  %386 = fmul fast float %383, %374
  %387 = fmul fast float %384, %374
  %388 = fadd fast float %385, %379
  %389 = fadd fast float %386, %380
  %390 = fadd fast float %387, %381
  br label %391

; <label>:391                                     ; preds = %373, %365
  %392 = phi float [ %367, %365 ], [ %388, %373 ]
  %393 = phi float [ %371, %365 ], [ %389, %373 ]
  %394 = phi float [ %372, %365 ], [ %390, %373 ]
  %395 = fmul fast float %392, %361
  %396 = fmul fast float %393, %361
  %397 = fmul fast float %394, %361
  br label %398

; <label>:398                                     ; preds = %391, %354, %332
  %399 = phi float [ %395, %391 ], [ %344, %332 ], [ %344, %354 ]
  %400 = phi float [ %396, %391 ], [ %345, %332 ], [ %344, %354 ]
  %401 = phi float [ %397, %391 ], [ %346, %332 ], [ %344, %354 ]
  %402 = phi i32 [ %358, %391 ], [ 0, %332 ], [ %358, %354 ]
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %458

; <label>:404                                     ; preds = %398
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = call float @dx.op.dot3.f32(i32 55, float %399, float %400, float %401, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %414 = call float @dx.op.dot3.f32(i32 55, float %399, float %400, float %401, float %411, float %412, float %413)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %418 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %419 = call float @dx.op.dot3.f32(i32 55, float %399, float %400, float %401, float %416, float %417, float %418)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %422 = fmul fast float %421, %409
  %423 = fmul fast float %421, %414
  %424 = fmul fast float %421, %419
  %425 = fadd fast float %422, 9.765625e-04
  %426 = fadd fast float %423, 9.765625e-04
  %427 = fadd fast float %424, 9.765625e-04
  %428 = call float @dx.op.unary.f32(i32 23, float %425)  ; Log(value)
  %429 = call float @dx.op.unary.f32(i32 23, float %426)  ; Log(value)
  %430 = call float @dx.op.unary.f32(i32 23, float %427)  ; Log(value)
  %431 = fadd fast float %428, 1.000000e+01
  %432 = fadd fast float %429, 1.000000e+01
  %433 = fadd fast float %430, 1.000000e+01
  %434 = fmul fast float %431, 0x3FA99999A0000000
  %435 = fmul fast float %432, 0x3FA99999A0000000
  %436 = fmul fast float %433, 0x3FA99999A0000000
  %437 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %438 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %439 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %443 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %444 = fmul fast float %441, %437
  %445 = fmul fast float %442, %438
  %446 = fmul fast float %443, %439
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %450 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %451 = fadd fast float %444, %448
  %452 = fadd fast float %445, %449
  %453 = fadd fast float %446, %450
  %454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %451, float %452, float %453, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  br label %458

; <label>:458                                     ; preds = %404, %398
  %459 = phi float [ %399, %398 ], [ %455, %404 ]
  %460 = phi float [ %400, %398 ], [ %456, %404 ]
  %461 = phi float [ %401, %398 ], [ %457, %404 ]
  %462 = fcmp fast ole float %459, 0x3FA4B5DCC0000000
  %463 = fmul fast float %459, 0x3FB3D07220000000
  %464 = fadd fast float %459, 0x3FAC28F5C0000000
  %465 = fmul fast float %464, 0x3FEE54EDE0000000
  %466 = call float @dx.op.unary.f32(i32 23, float %465)  ; Log(value)
  %467 = fmul fast float %466, 0x4003333340000000
  %468 = call float @dx.op.unary.f32(i32 21, float %467)  ; Exp(value)
  %469 = select i1 %462, float %463, float %468
  %470 = fcmp fast ole float %460, 0x3FA4B5DCC0000000
  %471 = fmul fast float %460, 0x3FB3D07220000000
  %472 = fadd fast float %460, 0x3FAC28F5C0000000
  %473 = fmul fast float %472, 0x3FEE54EDE0000000
  %474 = call float @dx.op.unary.f32(i32 23, float %473)  ; Log(value)
  %475 = fmul fast float %474, 0x4003333340000000
  %476 = call float @dx.op.unary.f32(i32 21, float %475)  ; Exp(value)
  %477 = select i1 %470, float %471, float %476
  %478 = fcmp fast ole float %461, 0x3FA4B5DCC0000000
  %479 = fmul fast float %461, 0x3FB3D07220000000
  %480 = fadd fast float %461, 0x3FAC28F5C0000000
  %481 = fmul fast float %480, 0x3FEE54EDE0000000
  %482 = call float @dx.op.unary.f32(i32 23, float %481)  ; Log(value)
  %483 = fmul fast float %482, 0x4003333340000000
  %484 = call float @dx.op.unary.f32(i32 21, float %483)  ; Exp(value)
  %485 = select i1 %478, float %479, float %484
  %486 = fcmp fast olt float %330, 0.000000e+00
  br i1 %486, label %487, label %499

; <label>:487                                     ; preds = %458
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %492 = call float @dx.op.dot3.f32(i32 55, float %469, float %477, float %485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %493 = fsub fast float %492, %489
  %494 = fmul fast float %493, %490
  %495 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %496 = fsub fast float 1.000000e+00, %491
  %497 = fmul fast float %495, %496
  %498 = fadd fast float %497, %491
  br label %499

; <label>:499                                     ; preds = %487, %458
  %500 = phi float [ %498, %487 ], [ %469, %458 ]
  %501 = phi float [ %498, %487 ], [ %477, %458 ]
  %502 = phi float [ %498, %487 ], [ %485, %458 ]
  %503 = fmul fast float %500, %326
  %504 = fmul fast float %501, %327
  %505 = fmul fast float %502, %328
  br label %506

; <label>:506                                     ; preds = %499, %325
  %507 = phi float [ %503, %499 ], [ %326, %325 ]
  %508 = phi float [ %504, %499 ], [ %327, %325 ]
  %509 = phi float [ %505, %499 ], [ %328, %325 ]
  %510 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %511 = fcmp fast ogt float %510, 0.000000e+00
  br i1 %511, label %512, label %553, !dx.controlflow.hints !53

; <label>:512                                     ; preds = %506
  %513 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %514 = bitcast float %513 to i32
  %515 = and i32 %514, 255
  %516 = uitofp i32 %515 to float
  %517 = lshr i32 %514, 8
  %518 = and i32 %517, 255
  %519 = uitofp i32 %518 to float
  %520 = lshr i32 %514, 16
  %521 = and i32 %520, 255
  %522 = uitofp i32 %521 to float
  %523 = fmul fast float %522, 0x3F70101020000000
  %524 = lshr i32 %514, 24
  %525 = uitofp i32 %524 to float
  %526 = fmul fast float %525, 0x3F70101020000000
  %527 = fadd fast float %522, %516
  %528 = fmul fast float %527, 0x3F70101020000000
  %529 = fadd fast float %519, %525
  %530 = fmul fast float %529, 0x3F70101020000000
  %531 = fdiv fast float %24, %528
  %532 = fdiv fast float %25, %530
  %533 = fsub fast float -0.000000e+00, %531
  %534 = fsub fast float -0.000000e+00, %532
  %535 = fcmp fast oge float %531, %533
  %536 = fcmp fast oge float %532, %534
  %537 = call float @dx.op.unary.f32(i32 6, float %531)  ; FAbs(value)
  %538 = call float @dx.op.unary.f32(i32 6, float %532)  ; FAbs(value)
  %539 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %540 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %541 = fsub fast float -0.000000e+00, %539
  %542 = fsub fast float -0.000000e+00, %540
  %543 = select i1 %535, float %539, float %541
  %544 = select i1 %536, float %540, float %542
  %545 = fmul fast float %528, %543
  %546 = fmul fast float %544, %530
  %547 = fcmp fast olt float %545, %523
  %548 = fcmp fast olt float %546, %526
  %549 = or i1 %547, %548
  br i1 %549, label %550, label %553, !dx.controlflow.hints !54

; <label>:550                                     ; preds = %512
  %551 = fsub fast float 1.000000e+00, %510
  %552 = fmul fast float %551, %226
  br label %553

; <label>:553                                     ; preds = %550, %512, %506
  %554 = phi float [ %552, %550 ], [ %226, %512 ], [ %226, %506 ]
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %557 = fcmp fast ogt float %556, 0.000000e+00
  br i1 %557, label %558, label %641, !dx.controlflow.hints !55

; <label>:558                                     ; preds = %553
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %561 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %564 = fmul fast float %563, 1.000000e+01
  %565 = call float @dx.op.unary.f32(i32 27, float %564)  ; Round_ni(value)
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = extractvalue %dx.types.CBufRet.f32 %566, 1
  %569 = fmul fast float %567, %24
  %570 = fmul fast float %568, %25
  %571 = call float @dx.op.unary.f32(i32 27, float %569)  ; Round_ni(value)
  %572 = call float @dx.op.unary.f32(i32 27, float %570)  ; Round_ni(value)
  %573 = fmul fast float %565, 0x4002B851E0000000
  %574 = call float @dx.op.unary.f32(i32 22, float %573)  ; Frc(value)
  %575 = fadd fast float %574, 0x3FB99999A0000000
  %576 = fadd fast float %575, %571
  %577 = fadd fast float %575, %572
  %578 = fmul fast float %576, 0x3FE1BEDF00000000
  %579 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %580 = fmul fast float %576, %579
  %581 = fadd fast float %580, %577
  %582 = fmul fast float %577, 0x3FD3BEBE20000000
  %583 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %584 = fmul fast float %577, %583
  %585 = fadd fast float %584, %576
  %586 = fmul fast float %581, %585
  %587 = call float @dx.op.unary.f32(i32 22, float %586)  ; Frc(value)
  %588 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %589 = bitcast float %588 to i32
  %590 = and i32 %589, 255
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = fmul fast float %592, %560
  %594 = fcmp fast olt float %587, %593
  br i1 %594, label %595, label %602, !dx.controlflow.hints !56

; <label>:595                                     ; preds = %558
  %596 = fmul fast float %587, 0x4057091680000000
  %597 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  %598 = fmul fast float %597, %507
  %599 = fmul fast float %597, %509
  %600 = fsub fast float 1.000000e+00, %597
  %601 = fmul fast float %600, %508
  br label %602

; <label>:602                                     ; preds = %595, %558
  %603 = phi float [ %598, %595 ], [ %507, %558 ]
  %604 = phi float [ %601, %595 ], [ %508, %558 ]
  %605 = phi float [ %599, %595 ], [ %509, %558 ]
  %606 = fmul fast float %587, 0x4028B0A3E0000000
  %607 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %608 = fmul fast float %592, %561
  %609 = fcmp fast olt float %607, %608
  br i1 %609, label %610, label %629, !dx.controlflow.hints !57

; <label>:610                                     ; preds = %602
  %611 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %612 = fmul fast float %611, %24
  %613 = call float @dx.op.unary.f32(i32 27, float %612)  ; Round_ni(value)
  %614 = fmul fast float %613, 0x3FD5555560000000
  %615 = call float @dx.op.unary.f32(i32 22, float %614)  ; Frc(value)
  %616 = extractvalue %dx.types.CBufRet.f32 %559, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %618 = fcmp fast olt float %615, 0x3FD51EB860000000
  br i1 %618, label %622, label %619, !dx.controlflow.hints !58

; <label>:619                                     ; preds = %610
  %620 = fcmp fast olt float %615, 0x3FE51EB860000000
  br i1 %620, label %622, label %621, !dx.controlflow.hints !59

; <label>:621                                     ; preds = %619
  br label %622

; <label>:622                                     ; preds = %621, %619, %610
  %623 = phi float [ %616, %621 ], [ %617, %610 ], [ %616, %619 ]
  %624 = phi float [ %616, %621 ], [ %616, %610 ], [ %617, %619 ]
  %625 = phi float [ %617, %621 ], [ %616, %610 ], [ %616, %619 ]
  %626 = fmul fast float %623, %603
  %627 = fmul fast float %624, %604
  %628 = fmul fast float %625, %605
  br label %629

; <label>:629                                     ; preds = %622, %602
  %630 = phi float [ %626, %622 ], [ %603, %602 ]
  %631 = phi float [ %627, %622 ], [ %604, %602 ]
  %632 = phi float [ %628, %622 ], [ %605, %602 ]
  %633 = fmul fast float %587, 0x40223EF9E0000000
  %634 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %635 = fmul fast float %592, %556
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %636, %635
  %638 = fsub fast float 1.000000e+00, %637
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %640 = fmul fast float %639, %554
  br label %641

; <label>:641                                     ; preds = %629, %553
  %642 = phi float [ %630, %629 ], [ %507, %553 ]
  %643 = phi float [ %631, %629 ], [ %508, %553 ]
  %644 = phi float [ %632, %629 ], [ %509, %553 ]
  %645 = phi float [ %640, %629 ], [ %554, %553 ]
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = extractvalue %dx.types.CBufRet.f32 %646, 1
  %649 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = extractvalue %dx.types.CBufRet.f32 %650, 1
  %653 = extractvalue %dx.types.CBufRet.f32 %650, 2
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %657 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %658 = fmul fast float %647, %642
  %659 = call float @dx.op.tertiary.f32(i32 46, float %648, float %643, float %658)  ; FMad(a,b,c)
  %660 = call float @dx.op.tertiary.f32(i32 46, float %649, float %644, float %659)  ; FMad(a,b,c)
  %661 = fmul fast float %651, %642
  %662 = call float @dx.op.tertiary.f32(i32 46, float %652, float %643, float %661)  ; FMad(a,b,c)
  %663 = call float @dx.op.tertiary.f32(i32 46, float %653, float %644, float %662)  ; FMad(a,b,c)
  %664 = fmul fast float %655, %642
  %665 = call float @dx.op.tertiary.f32(i32 46, float %656, float %643, float %664)  ; FMad(a,b,c)
  %666 = call float @dx.op.tertiary.f32(i32 46, float %657, float %644, float %665)  ; FMad(a,b,c)
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = bitcast float %668 to i32
  %670 = and i32 %669, 128
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %686, label %672

; <label>:672                                     ; preds = %641
  %673 = call float @dx.op.unary.f32(i32 24, float %660)  ; Sqrt(value)
  %674 = call float @dx.op.unary.f32(i32 24, float %663)  ; Sqrt(value)
  %675 = call float @dx.op.unary.f32(i32 24, float %666)  ; Sqrt(value)
  %676 = fmul fast float %673, 9.687500e-01
  %677 = fmul fast float %674, 9.687500e-01
  %678 = fmul fast float %675, 9.687500e-01
  %679 = fadd fast float %676, 1.562500e-02
  %680 = fadd fast float %677, 1.562500e-02
  %681 = fadd fast float %678, 1.562500e-02
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %10, float %679, float %680, float %681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = extractvalue %dx.types.ResRet.f32 %682, 1
  %685 = extractvalue %dx.types.ResRet.f32 %682, 2
  br label %973

; <label>:686                                     ; preds = %641
  %687 = and i32 %669, 127
  switch i32 %687, label %973 [
    i32 1, label %688
    i32 2, label %688
    i32 0, label %688
    i32 3, label %718
    i32 4, label %839
  ]

; <label>:688                                     ; preds = %686, %686, %686
  %689 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %690 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %691 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %692 = call float @dx.op.unary.f32(i32 23, float %689)  ; Log(value)
  %693 = call float @dx.op.unary.f32(i32 23, float %690)  ; Log(value)
  %694 = call float @dx.op.unary.f32(i32 23, float %691)  ; Log(value)
  %695 = fmul fast float %692, 0x3FDAAAAAA0000000
  %696 = fmul fast float %693, 0x3FDAAAAAA0000000
  %697 = fmul fast float %694, 0x3FDAAAAAA0000000
  %698 = call float @dx.op.unary.f32(i32 21, float %695)  ; Exp(value)
  %699 = call float @dx.op.unary.f32(i32 21, float %696)  ; Exp(value)
  %700 = call float @dx.op.unary.f32(i32 21, float %697)  ; Exp(value)
  %701 = fmul fast float %698, 0x3FF0E147A0000000
  %702 = fmul fast float %699, 0x3FF0E147A0000000
  %703 = fmul fast float %700, 0x3FF0E147A0000000
  %704 = fadd fast float %701, 0xBFAC28F5C0000000
  %705 = fadd fast float %702, 0xBFAC28F5C0000000
  %706 = fadd fast float %703, 0xBFAC28F5C0000000
  %707 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %708 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  %709 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %710 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %711 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %712 = fmul fast float %710, %707
  %713 = fmul fast float %710, %708
  %714 = fmul fast float %710, %709
  %715 = fadd fast float %712, %711
  %716 = fadd fast float %713, %711
  %717 = fadd fast float %714, %711
  br label %973

; <label>:718                                     ; preds = %686
  %719 = fmul fast float %660, 0x4163D57C00000000
  %720 = fmul fast float %663, 0x4163D57C00000000
  %721 = fmul fast float %666, 0x4163D57C00000000
  %722 = fadd fast float %719, 9.999980e+05
  %723 = fadd fast float %720, 9.999980e+05
  %724 = fadd fast float %721, 9.999980e+05
  %725 = fmul fast float %722, %660
  %726 = fmul fast float %723, %663
  %727 = fmul fast float %724, %666
  %728 = fadd fast float %725, 0xC0AFE17A60000000
  %729 = fadd fast float %726, 0xC0AFE17A60000000
  %730 = fadd fast float %727, 0xC0AFE17A60000000
  %731 = fmul fast float %728, %660
  %732 = fmul fast float %729, %663
  %733 = fmul fast float %730, %666
  %734 = fmul fast float %660, 0x40F753C340000000
  %735 = fmul fast float %663, 0x40F753C340000000
  %736 = fmul fast float %666, 0x40F753C340000000
  %737 = fsub fast float 9.999990e+06, %734
  %738 = fsub fast float 9.999990e+06, %735
  %739 = fsub fast float 9.999990e+06, %736
  %740 = fmul fast float %737, %660
  %741 = fmul fast float %738, %663
  %742 = fmul fast float %739, %666
  %743 = fadd fast float %740, 0x4136D1DD80000000
  %744 = fadd fast float %741, 0x4136D1DD80000000
  %745 = fadd fast float %742, 0x4136D1DD80000000
  %746 = fmul fast float %743, %660
  %747 = fmul fast float %744, %663
  %748 = fmul fast float %745, %666
  %749 = fadd fast float %746, 1.000000e+00
  %750 = fadd fast float %747, 1.000000e+00
  %751 = fadd fast float %748, 1.000000e+00
  %752 = fdiv fast float %731, %749
  %753 = fdiv fast float %732, %750
  %754 = fdiv fast float %733, %751
  %755 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %756 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %757 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %758 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %759 = fmul fast float %755, 0x3FE413A920000000
  %760 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %756, float %759)  ; FMad(a,b,c)
  %761 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %757, float %760)  ; FMad(a,b,c)
  %762 = fmul fast float %755, 0x3FB1B089A0000000
  %763 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %756, float %762)  ; FMad(a,b,c)
  %764 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %757, float %763)  ; FMad(a,b,c)
  %765 = fmul fast float %755, 0x3F90CB2960000000
  %766 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %756, float %765)  ; FMad(a,b,c)
  %767 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %757, float %766)  ; FMad(a,b,c)
  %768 = fmul fast float %761, %758
  %769 = fmul fast float %764, %758
  %770 = fmul fast float %767, %758
  %771 = fmul fast float %768, 0x3F847AE140000000
  %772 = fmul fast float %769, 0x3F847AE140000000
  %773 = fmul fast float %770, 0x3F847AE140000000
  %774 = fmul fast float %768, 0x40B4D2F520000000
  %775 = fmul fast float %769, 0x40B4D2F520000000
  %776 = fmul fast float %770, 0x40B4D2F520000000
  %777 = fadd fast float %774, 0x41869ECF20000000
  %778 = fadd fast float %775, 0x41869ECF20000000
  %779 = fadd fast float %776, 0x41869ECF20000000
  %780 = fmul fast float %777, %771
  %781 = fmul fast float %778, %772
  %782 = fmul fast float %779, %773
  %783 = fadd fast float %780, 0x417BB79C60000000
  %784 = fadd fast float %781, 0x417BB79C60000000
  %785 = fadd fast float %782, 0x417BB79C60000000
  %786 = fmul fast float %783, %771
  %787 = fmul fast float %784, %772
  %788 = fmul fast float %785, %773
  %789 = fadd fast float %786, 0x41218DE180000000
  %790 = fadd fast float %787, 0x41218DE180000000
  %791 = fadd fast float %788, 0x41218DE180000000
  %792 = fmul fast float %789, %771
  %793 = fmul fast float %790, %772
  %794 = fmul fast float %791, %773
  %795 = fadd fast float %792, 0x4077F174E0000000
  %796 = fadd fast float %793, 0x4077F174E0000000
  %797 = fadd fast float %794, 0x4077F174E0000000
  %798 = fmul fast float %795, %771
  %799 = fmul fast float %796, %772
  %800 = fmul fast float %797, %773
  %801 = fadd fast float %798, 0x3F3FF79B80000000
  %802 = fadd fast float %799, 0x3F3FF79B80000000
  %803 = fadd fast float %800, 0x3F3FF79B80000000
  %804 = fmul fast float %768, 0x412442D320000000
  %805 = fmul fast float %769, 0x412442D320000000
  %806 = fmul fast float %770, 0x412442D320000000
  %807 = fadd fast float %804, 0x419385D5C0000000
  %808 = fadd fast float %805, 0x419385D5C0000000
  %809 = fadd fast float %806, 0x419385D5C0000000
  %810 = fmul fast float %807, %771
  %811 = fmul fast float %808, %772
  %812 = fmul fast float %809, %773
  %813 = fadd fast float %810, 4.182885e+06
  %814 = fadd fast float %811, 4.182885e+06
  %815 = fadd fast float %812, 4.182885e+06
  %816 = fmul fast float %813, %771
  %817 = fmul fast float %814, %772
  %818 = fmul fast float %815, %773
  %819 = fadd fast float %816, 0x40C4D633C0000000
  %820 = fadd fast float %817, 0x40C4D633C0000000
  %821 = fadd fast float %818, 0x40C4D633C0000000
  %822 = fmul fast float %819, %771
  %823 = fmul fast float %820, %772
  %824 = fmul fast float %821, %773
  %825 = fadd fast float %822, 1.000000e+00
  %826 = fadd fast float %823, 1.000000e+00
  %827 = fadd fast float %824, 1.000000e+00
  %828 = fdiv fast float %801, %825
  %829 = fdiv fast float %802, %826
  %830 = fdiv fast float %803, %827
  %831 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %832 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %833 = fmul fast float %831, %828
  %834 = fmul fast float %831, %829
  %835 = fmul fast float %831, %830
  %836 = fadd fast float %833, %832
  %837 = fadd fast float %834, %832
  %838 = fadd fast float %835, %832
  br label %973

; <label>:839                                     ; preds = %686
  %840 = fmul fast float %660, 0x4163D57C00000000
  %841 = fmul fast float %663, 0x4163D57C00000000
  %842 = fmul fast float %666, 0x4163D57C00000000
  %843 = fadd fast float %840, 9.999980e+05
  %844 = fadd fast float %841, 9.999980e+05
  %845 = fadd fast float %842, 9.999980e+05
  %846 = fmul fast float %843, %660
  %847 = fmul fast float %844, %663
  %848 = fmul fast float %845, %666
  %849 = fadd fast float %846, 0xC0AFE17A60000000
  %850 = fadd fast float %847, 0xC0AFE17A60000000
  %851 = fadd fast float %848, 0xC0AFE17A60000000
  %852 = fmul fast float %849, %660
  %853 = fmul fast float %850, %663
  %854 = fmul fast float %851, %666
  %855 = fmul fast float %660, 0x40F753C340000000
  %856 = fmul fast float %663, 0x40F753C340000000
  %857 = fmul fast float %666, 0x40F753C340000000
  %858 = fsub fast float 9.999990e+06, %855
  %859 = fsub fast float 9.999990e+06, %856
  %860 = fsub fast float 9.999990e+06, %857
  %861 = fmul fast float %858, %660
  %862 = fmul fast float %859, %663
  %863 = fmul fast float %860, %666
  %864 = fadd fast float %861, 0x4136D1DD80000000
  %865 = fadd fast float %862, 0x4136D1DD80000000
  %866 = fadd fast float %863, 0x4136D1DD80000000
  %867 = fmul fast float %864, %660
  %868 = fmul fast float %865, %663
  %869 = fmul fast float %866, %666
  %870 = fadd fast float %867, 1.000000e+00
  %871 = fadd fast float %868, 1.000000e+00
  %872 = fadd fast float %869, 1.000000e+00
  %873 = fdiv fast float %852, %870
  %874 = fdiv fast float %853, %871
  %875 = fdiv fast float %854, %872
  %876 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %877 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %878 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %879 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %880 = fmul fast float %876, 0x3FEA519BC0000000
  %881 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %877, float %880)  ; FMad(a,b,c)
  %882 = fmul fast float %876, 0x3FA0FED480000000
  %883 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %877, float %882)  ; FMad(a,b,c)
  %884 = fmul fast float %876, 0x3F917E1C00000000
  %885 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %877, float %884)  ; FMad(a,b,c)
  %886 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %878, float %885)  ; FMad(a,b,c)
  %887 = call float @dx.op.binary.f32(i32 35, float %876, float %877)  ; FMax(a,b)
  %888 = call float @dx.op.binary.f32(i32 35, float %887, float %878)  ; FMax(a,b)
  %889 = fadd fast float %888, -1.000000e+00
  %890 = fmul fast float %889, 2.500000e-01
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = fsub fast float 1.000000e+00, %891
  %893 = fmul fast float %892, %881
  %894 = fmul fast float %892, %883
  %895 = fmul fast float %892, %886
  %896 = fmul fast float %891, %876
  %897 = fmul fast float %891, %877
  %898 = fmul fast float %891, %878
  %899 = fadd fast float %893, %896
  %900 = fadd fast float %894, %897
  %901 = fadd fast float %895, %898
  %902 = fmul fast float %899, %879
  %903 = fmul fast float %900, %879
  %904 = fmul fast float %901, %879
  %905 = fmul fast float %902, 0x3F847AE140000000
  %906 = fmul fast float %903, 0x3F847AE140000000
  %907 = fmul fast float %904, 0x3F847AE140000000
  %908 = fmul fast float %902, 0x40B4D2F520000000
  %909 = fmul fast float %903, 0x40B4D2F520000000
  %910 = fmul fast float %904, 0x40B4D2F520000000
  %911 = fadd fast float %908, 0x41869ECF20000000
  %912 = fadd fast float %909, 0x41869ECF20000000
  %913 = fadd fast float %910, 0x41869ECF20000000
  %914 = fmul fast float %911, %905
  %915 = fmul fast float %912, %906
  %916 = fmul fast float %913, %907
  %917 = fadd fast float %914, 0x417BB79C60000000
  %918 = fadd fast float %915, 0x417BB79C60000000
  %919 = fadd fast float %916, 0x417BB79C60000000
  %920 = fmul fast float %917, %905
  %921 = fmul fast float %918, %906
  %922 = fmul fast float %919, %907
  %923 = fadd fast float %920, 0x41218DE180000000
  %924 = fadd fast float %921, 0x41218DE180000000
  %925 = fadd fast float %922, 0x41218DE180000000
  %926 = fmul fast float %923, %905
  %927 = fmul fast float %924, %906
  %928 = fmul fast float %925, %907
  %929 = fadd fast float %926, 0x4077F174E0000000
  %930 = fadd fast float %927, 0x4077F174E0000000
  %931 = fadd fast float %928, 0x4077F174E0000000
  %932 = fmul fast float %929, %905
  %933 = fmul fast float %930, %906
  %934 = fmul fast float %931, %907
  %935 = fadd fast float %932, 0x3F3FF79B80000000
  %936 = fadd fast float %933, 0x3F3FF79B80000000
  %937 = fadd fast float %934, 0x3F3FF79B80000000
  %938 = fmul fast float %902, 0x412442D320000000
  %939 = fmul fast float %903, 0x412442D320000000
  %940 = fmul fast float %904, 0x412442D320000000
  %941 = fadd fast float %938, 0x419385D5C0000000
  %942 = fadd fast float %939, 0x419385D5C0000000
  %943 = fadd fast float %940, 0x419385D5C0000000
  %944 = fmul fast float %941, %905
  %945 = fmul fast float %942, %906
  %946 = fmul fast float %943, %907
  %947 = fadd fast float %944, 4.182885e+06
  %948 = fadd fast float %945, 4.182885e+06
  %949 = fadd fast float %946, 4.182885e+06
  %950 = fmul fast float %947, %905
  %951 = fmul fast float %948, %906
  %952 = fmul fast float %949, %907
  %953 = fadd fast float %950, 0x40C4D633C0000000
  %954 = fadd fast float %951, 0x40C4D633C0000000
  %955 = fadd fast float %952, 0x40C4D633C0000000
  %956 = fmul fast float %953, %905
  %957 = fmul fast float %954, %906
  %958 = fmul fast float %955, %907
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fadd fast float %957, 1.000000e+00
  %961 = fadd fast float %958, 1.000000e+00
  %962 = fdiv fast float %935, %959
  %963 = fdiv fast float %936, %960
  %964 = fdiv fast float %937, %961
  %965 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %966 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %967 = fmul fast float %965, %962
  %968 = fmul fast float %965, %963
  %969 = fmul fast float %965, %964
  %970 = fadd fast float %967, %966
  %971 = fadd fast float %968, %966
  %972 = fadd fast float %969, %966
  br label %973

; <label>:973                                     ; preds = %839, %718, %688, %686, %672
  %974 = phi float [ %683, %672 ], [ %660, %686 ], [ %970, %839 ], [ %836, %718 ], [ %715, %688 ]
  %975 = phi float [ %684, %672 ], [ %663, %686 ], [ %971, %839 ], [ %837, %718 ], [ %716, %688 ]
  %976 = phi float [ %685, %672 ], [ %666, %686 ], [ %972, %839 ], [ %838, %718 ], [ %717, %688 ]
  %977 = fmul fast float %974, %645
  %978 = fmul fast float %975, %645
  %979 = fmul fast float %976, %645
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %977)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %978)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %979)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %645)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!4 = !{!5, null, !14, !18}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!17 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 112, null}
!18 = !{!19, !20, !21}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!21 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!22 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
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
!43 = !{i32 7}
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
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}

