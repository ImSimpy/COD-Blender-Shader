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
; shader hash: a3eafdc744ae2a3e660fc4e12233a1f5
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   sampler      NA          NA      S3             s4     1
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
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %29 = fcmp fast ogt float %28, 0.000000e+00
  br i1 %29, label %30, label %80, !dx.controlflow.hints !47

; <label>:30                                      ; preds = %0
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %33 = fmul fast float %32, 1.000000e+01
  %34 = call float @dx.op.unary.f32(i32 27, float %33)  ; Round_ni(value)
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = fmul fast float %36, %25
  %39 = fmul fast float %37, %26
  %40 = call float @dx.op.unary.f32(i32 27, float %38)  ; Round_ni(value)
  %41 = call float @dx.op.unary.f32(i32 27, float %39)  ; Round_ni(value)
  %42 = fmul fast float %34, 0x4002B851E0000000
  %43 = call float @dx.op.unary.f32(i32 22, float %42)  ; Frc(value)
  %44 = fadd fast float %43, 0x3FB99999A0000000
  %45 = fadd fast float %44, %40
  %46 = fadd fast float %44, %41
  %47 = fmul fast float %45, 0x3FE1BEDF00000000
  %48 = call float @dx.op.unary.f32(i32 22, float %47)  ; Frc(value)
  %49 = fmul fast float %45, %48
  %50 = fadd fast float %49, %46
  %51 = fmul fast float %46, 0x3FD3BEBE20000000
  %52 = call float @dx.op.unary.f32(i32 22, float %51)  ; Frc(value)
  %53 = fmul fast float %46, %52
  %54 = fadd fast float %53, %45
  %55 = fmul fast float %50, %54
  %56 = call float @dx.op.unary.f32(i32 22, float %55)  ; Frc(value)
  %57 = extractvalue %dx.types.CBufRet.f32 %35, 3
  %58 = bitcast float %57 to i32
  %59 = and i32 %58, 255
  %60 = uitofp i32 %59 to float
  %61 = fmul fast float %56, 0x4085373340000000
  %62 = call float @dx.op.unary.f32(i32 22, float %61)  ; Frc(value)
  %63 = fmul fast float %60, 0x3F6CE9B6A0000000
  %64 = fcmp fast olt float %62, %63
  br i1 %64, label %65, label %80, !dx.controlflow.hints !48

; <label>:65                                      ; preds = %30
  %66 = fdiv fast float %62, %63
  %67 = fmul fast float %66, 2.000000e+00
  %68 = fadd fast float %67, -1.000000e+00
  %69 = lshr i32 %58, 8
  %70 = and i32 %69, 255
  %71 = uitofp i32 %70 to float
  %72 = call float @dx.op.unary.f32(i32 83, float %19)  ; DerivCoarseX(value)
  %73 = call float @dx.op.unary.f32(i32 83, float %20)  ; DerivCoarseX(value)
  %74 = fmul fast float %68, %72
  %75 = fmul fast float %74, %71
  %76 = fmul fast float %73, %68
  %77 = fmul fast float %76, %71
  %78 = fadd fast float %75, %19
  %79 = fadd fast float %77, %20
  br label %80

; <label>:80                                      ; preds = %65, %30, %0
  %81 = phi float [ %78, %65 ], [ %19, %30 ], [ %19, %0 ]
  %82 = phi float [ %79, %65 ], [ %20, %30 ], [ %20, %0 ]
  %83 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 3
  %85 = fmul fast float %84, %24
  %86 = fcmp fast ole float %21, 0x3FA4B5DCC0000000
  %87 = fmul fast float %21, 0x3FB3D07220000000
  %88 = fadd fast float %21, 0x3FAC28F5C0000000
  %89 = fmul fast float %88, 0x3FEE54EDE0000000
  %90 = call float @dx.op.unary.f32(i32 23, float %89)  ; Log(value)
  %91 = fmul fast float %90, 0x4003333340000000
  %92 = call float @dx.op.unary.f32(i32 21, float %91)  ; Exp(value)
  %93 = select i1 %86, float %87, float %92
  %94 = fcmp fast ole float %22, 0x3FA4B5DCC0000000
  %95 = fmul fast float %22, 0x3FB3D07220000000
  %96 = fadd fast float %22, 0x3FAC28F5C0000000
  %97 = fmul fast float %96, 0x3FEE54EDE0000000
  %98 = call float @dx.op.unary.f32(i32 23, float %97)  ; Log(value)
  %99 = fmul fast float %98, 0x4003333340000000
  %100 = call float @dx.op.unary.f32(i32 21, float %99)  ; Exp(value)
  %101 = select i1 %94, float %95, float %100
  %102 = fcmp fast ole float %23, 0x3FA4B5DCC0000000
  %103 = fmul fast float %23, 0x3FB3D07220000000
  %104 = fadd fast float %23, 0x3FAC28F5C0000000
  %105 = fmul fast float %104, 0x3FEE54EDE0000000
  %106 = call float @dx.op.unary.f32(i32 23, float %105)  ; Log(value)
  %107 = fmul fast float %106, 0x4003333340000000
  %108 = call float @dx.op.unary.f32(i32 21, float %107)  ; Exp(value)
  %109 = select i1 %102, float %103, float %108
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %112 = bitcast float %111 to i32
  %113 = and i32 %112, 512
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %209, label %115

; <label>:115                                     ; preds = %80
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %118 = bitcast float %117 to i32
  %119 = and i32 %118, 65535
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %119)  ; LegacyF16ToF32(value)
  %121 = lshr i32 %118, 16
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %124 = bitcast float %123 to i32
  %125 = and i32 %124, 65535
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125)  ; LegacyF16ToF32(value)
  %127 = lshr i32 %124, 16
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127)  ; LegacyF16ToF32(value)
  %129 = and i32 %112, 16
  %130 = icmp ne i32 %129, 0
  %131 = fcmp fast ogt float %120, 0.000000e+00
  %132 = fcmp fast ogt float %122, 0.000000e+00
  %133 = and i1 %131, %132
  %134 = fcmp fast ogt float %126, 0.000000e+00
  br i1 %133, label %135, label %195

; <label>:135                                     ; preds = %115
  br i1 %134, label %136, label %144

; <label>:136                                     ; preds = %135
  %137 = fmul fast float %122, %18
  %138 = fmul fast float %120, %17
  %139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %138, float %137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = fsub fast float 1.000000e+00, %140
  %142 = select i1 %130, float %141, float %140
  %143 = fmul fast float %142, %126
  br label %144

; <label>:144                                     ; preds = %136, %135
  %145 = phi float [ %143, %136 ], [ 0.000000e+00, %135 ]
  %146 = fadd fast float %145, %128
  %147 = call float @dx.op.unary.f32(i32 7, float %146)  ; Saturate(value)
  br i1 %134, label %148, label %158

; <label>:148                                     ; preds = %144
  %149 = fmul fast float %122, %18
  %150 = fsub fast float 1.000000e+00, %17
  %151 = fmul fast float %120, %150
  %152 = fsub fast float 1.000000e+00, %151
  %153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %152, float %149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 1
  %155 = fsub fast float 1.000000e+00, %154
  %156 = select i1 %130, float %155, float %154
  %157 = fmul fast float %156, %126
  br label %158

; <label>:158                                     ; preds = %148, %144
  %159 = phi float [ %157, %148 ], [ 0.000000e+00, %144 ]
  %160 = fadd fast float %159, %128
  %161 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %162 = fmul fast float %161, %147
  br i1 %134, label %163, label %175

; <label>:163                                     ; preds = %158
  %164 = fsub fast float 1.000000e+00, %18
  %165 = fmul fast float %122, %164
  %166 = fsub fast float 1.000000e+00, %165
  %167 = fsub fast float 1.000000e+00, %17
  %168 = fmul fast float %120, %167
  %169 = fsub fast float 1.000000e+00, %168
  %170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %169, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 2
  %172 = fsub fast float 1.000000e+00, %171
  %173 = select i1 %130, float %172, float %171
  %174 = fmul fast float %173, %126
  br label %175

; <label>:175                                     ; preds = %163, %158
  %176 = phi float [ %174, %163 ], [ 0.000000e+00, %158 ]
  %177 = fadd fast float %176, %128
  %178 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %179 = fmul fast float %162, %178
  br i1 %134, label %180, label %190

; <label>:180                                     ; preds = %175
  %181 = fsub fast float 1.000000e+00, %18
  %182 = fmul fast float %122, %181
  %183 = fsub fast float 1.000000e+00, %182
  %184 = fmul fast float %120, %17
  %185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %184, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 3
  %187 = fsub fast float 1.000000e+00, %186
  %188 = select i1 %130, float %187, float %186
  %189 = fmul fast float %188, %126
  br label %190

; <label>:190                                     ; preds = %180, %175
  %191 = phi float [ %189, %180 ], [ 0.000000e+00, %175 ]
  %192 = fadd fast float %191, %128
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fmul fast float %179, %193
  br label %206

; <label>:195                                     ; preds = %115
  br i1 %134, label %196, label %202

; <label>:196                                     ; preds = %195
  %197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3, %dx.types.Handle %8, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = fsub fast float 1.000000e+00, %198
  %200 = select i1 %130, float %199, float %198
  %201 = fmul fast float %200, %126
  br label %202

; <label>:202                                     ; preds = %196, %195
  %203 = phi float [ %201, %196 ], [ 0.000000e+00, %195 ]
  %204 = fadd fast float %203, %128
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  br label %206

; <label>:206                                     ; preds = %202, %190
  %207 = phi float [ %194, %190 ], [ %205, %202 ]
  %208 = fmul fast float %207, %85
  br label %209

; <label>:209                                     ; preds = %206, %80
  %210 = phi float [ %208, %206 ], [ %85, %80 ]
  %211 = call float @dx.op.binary.f32(i32 35, float %210, float 0.000000e+00)  ; FMax(a,b)
  %212 = fcmp fast oeq float %211, 0.000000e+00
  br i1 %212, label %213, label %214, !dx.controlflow.hints !49

; <label>:213                                     ; preds = %209
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %214

; <label>:214                                     ; preds = %213, %209
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %9, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %219 = bitcast float %218 to i32
  %220 = and i32 %219, 65535
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = fcmp fast une float %221, 0.000000e+00
  %223 = select i1 %222, float 0.000000e+00, float 1.000000e+00
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %226 = fmul fast float %225, %216
  %227 = fmul fast float %226, %223
  %228 = fsub fast float 1.000000e+00, %227
  %229 = fmul fast float %228, %93
  %230 = fmul fast float %228, %101
  %231 = fmul fast float %228, %109
  %232 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %235 = fmul fast float %232, %226
  %236 = fmul fast float %233, %226
  %237 = fmul fast float %234, %226
  %238 = fadd fast float %229, %235
  %239 = fadd fast float %230, %236
  %240 = fadd fast float %231, %237
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %243, label %244, label %310, !dx.controlflow.hints !50

; <label>:244                                     ; preds = %214
  %245 = fcmp fast oeq float %242, 2.000000e+00
  br i1 %245, label %246, label %298, !dx.controlflow.hints !51

; <label>:246                                     ; preds = %244
  %247 = fcmp fast ole float %238, 0x3F69A5C380000000
  %248 = fcmp fast ole float %239, 0x3F69A5C380000000
  %249 = fcmp fast ole float %240, 0x3F69A5C380000000
  %250 = fmul fast float %238, 0x4029D70A40000000
  %251 = fmul fast float %239, 0x4029D70A40000000
  %252 = fmul fast float %240, 0x4029D70A40000000
  %253 = call float @dx.op.unary.f32(i32 23, float %238)  ; Log(value)
  %254 = call float @dx.op.unary.f32(i32 23, float %239)  ; Log(value)
  %255 = call float @dx.op.unary.f32(i32 23, float %240)  ; Log(value)
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
  %299 = call float @dx.op.dot3.f32(i32 55, float %238, float %239, float %240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %301 = fsub fast float %238, %299
  %302 = fsub fast float %239, %299
  %303 = fsub fast float %240, %299
  %304 = fmul fast float %300, %301
  %305 = fmul fast float %300, %302
  %306 = fmul fast float %300, %303
  %307 = fadd fast float %304, %299
  %308 = fadd fast float %305, %299
  %309 = fadd fast float %306, %299
  br label %310

; <label>:310                                     ; preds = %298, %246, %214
  %311 = phi float [ %281, %246 ], [ %307, %298 ], [ %238, %214 ]
  %312 = phi float [ %289, %246 ], [ %308, %298 ], [ %239, %214 ]
  %313 = phi float [ %297, %246 ], [ %309, %298 ], [ %240, %214 ]
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = fcmp fast une float %315, 0.000000e+00
  br i1 %316, label %317, label %491, !dx.controlflow.hints !52

; <label>:317                                     ; preds = %310
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = fsub fast float %25, %319
  %322 = fsub fast float %26, %320
  %323 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %324 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %325 = fmul fast float %321, %323
  %326 = fmul fast float %322, %324
  %327 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %10, float %325, float %326, float undef, float undef, i32 0, i32 0, i32 undef, float %327)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.i32 %332, 3
  %334 = and i32 %333, 3
  %335 = icmp ne i32 %334, 0
  %336 = and i32 %333, 4
  %337 = icmp eq i32 %336, 0
  %338 = and i1 %335, %337
  br i1 %338, label %339, label %383

; <label>:339                                     ; preds = %317
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = fcmp fast oge float %330, %341
  %343 = zext i1 %342 to i32
  br i1 %342, label %344, label %383

; <label>:344                                     ; preds = %339
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 3
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %349 = fcmp fast ogt float %348, 0.000000e+00
  br i1 %349, label %350, label %358, !dx.controlflow.hints !53

; <label>:350                                     ; preds = %344
  %351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %10, float %330, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = extractvalue %dx.types.ResRet.f32 %351, 1
  %354 = extractvalue %dx.types.ResRet.f32 %351, 2
  %355 = fcmp fast ogt float %348, 1.500000e+00
  %356 = select i1 %355, float %352, float %353
  %357 = select i1 %355, float %352, float %354
  br label %376

; <label>:358                                     ; preds = %344
  %359 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
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
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %391, float %392, float %393)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %396, float %397, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = call float @dx.op.dot3.f32(i32 55, float %384, float %385, float %386, float %401, float %402, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
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
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 0
  %427 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %428 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %429 = fmul fast float %426, %422
  %430 = fmul fast float %427, %423
  %431 = fmul fast float %428, %424
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 0
  %434 = extractvalue %dx.types.CBufRet.f32 %432, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %432, 2
  %436 = fadd fast float %429, %433
  %437 = fadd fast float %430, %434
  %438 = fadd fast float %431, %435
  %439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %10, float %436, float %437, float %438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
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
  %516 = fdiv fast float %25, %513
  %517 = fdiv fast float %26, %515
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
  %537 = fmul fast float %536, %211
  br label %538

; <label>:538                                     ; preds = %535, %497, %491
  %539 = phi float [ %537, %535 ], [ %211, %497 ], [ %211, %491 ]
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = fcmp fast ogt float %541, 0.000000e+00
  br i1 %542, label %543, label %626, !dx.controlflow.hints !56

; <label>:543                                     ; preds = %538
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %546 = extractvalue %dx.types.CBufRet.f32 %544, 3
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 3
  %549 = fmul fast float %548, 1.000000e+01
  %550 = call float @dx.op.unary.f32(i32 27, float %549)  ; Round_ni(value)
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %554 = fmul fast float %552, %25
  %555 = fmul fast float %553, %26
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
  %597 = fmul fast float %596, %25
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
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 0
  %633 = extractvalue %dx.types.CBufRet.f32 %631, 1
  %634 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 0
  %641 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %642 = extractvalue %dx.types.CBufRet.f32 %639, 2
  %643 = fmul fast float %632, %627
  %644 = call float @dx.op.tertiary.f32(i32 46, float %633, float %628, float %643)  ; FMad(a,b,c)
  %645 = call float @dx.op.tertiary.f32(i32 46, float %634, float %629, float %644)  ; FMad(a,b,c)
  %646 = fmul fast float %636, %627
  %647 = call float @dx.op.tertiary.f32(i32 46, float %637, float %628, float %646)  ; FMad(a,b,c)
  %648 = call float @dx.op.tertiary.f32(i32 46, float %638, float %629, float %647)  ; FMad(a,b,c)
  %649 = fmul fast float %640, %627
  %650 = call float @dx.op.tertiary.f32(i32 46, float %641, float %628, float %649)  ; FMad(a,b,c)
  %651 = call float @dx.op.tertiary.f32(i32 46, float %642, float %629, float %650)  ; FMad(a,b,c)
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = bitcast float %653 to i32
  %655 = and i32 %654, 128
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %671, label %657

; <label>:657                                     ; preds = %626
  %658 = call float @dx.op.unary.f32(i32 24, float %645)  ; Sqrt(value)
  %659 = call float @dx.op.unary.f32(i32 24, float %648)  ; Sqrt(value)
  %660 = call float @dx.op.unary.f32(i32 24, float %651)  ; Sqrt(value)
  %661 = fmul fast float %658, 9.687500e-01
  %662 = fmul fast float %659, 9.687500e-01
  %663 = fmul fast float %660, 9.687500e-01
  %664 = fadd fast float %661, 1.562500e-02
  %665 = fadd fast float %662, 1.562500e-02
  %666 = fadd fast float %663, 1.562500e-02
  %667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %10, float %664, float %665, float %666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = extractvalue %dx.types.ResRet.f32 %667, 1
  %670 = extractvalue %dx.types.ResRet.f32 %667, 2
  br label %958

; <label>:671                                     ; preds = %626
  %672 = and i32 %654, 127
  switch i32 %672, label %958 [
    i32 1, label %673
    i32 2, label %673
    i32 0, label %673
    i32 3, label %703
    i32 4, label %824
  ]

; <label>:673                                     ; preds = %671, %671, %671
  %674 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %675 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %676 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %677 = call float @dx.op.unary.f32(i32 23, float %674)  ; Log(value)
  %678 = call float @dx.op.unary.f32(i32 23, float %675)  ; Log(value)
  %679 = call float @dx.op.unary.f32(i32 23, float %676)  ; Log(value)
  %680 = fmul fast float %677, 0x3FDAAAAAA0000000
  %681 = fmul fast float %678, 0x3FDAAAAAA0000000
  %682 = fmul fast float %679, 0x3FDAAAAAA0000000
  %683 = call float @dx.op.unary.f32(i32 21, float %680)  ; Exp(value)
  %684 = call float @dx.op.unary.f32(i32 21, float %681)  ; Exp(value)
  %685 = call float @dx.op.unary.f32(i32 21, float %682)  ; Exp(value)
  %686 = fmul fast float %683, 0x3FF0E147A0000000
  %687 = fmul fast float %684, 0x3FF0E147A0000000
  %688 = fmul fast float %685, 0x3FF0E147A0000000
  %689 = fadd fast float %686, 0xBFAC28F5C0000000
  %690 = fadd fast float %687, 0xBFAC28F5C0000000
  %691 = fadd fast float %688, 0xBFAC28F5C0000000
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %694 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %695 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %696 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %697 = fmul fast float %695, %692
  %698 = fmul fast float %695, %693
  %699 = fmul fast float %695, %694
  %700 = fadd fast float %697, %696
  %701 = fadd fast float %698, %696
  %702 = fadd fast float %699, %696
  br label %958

; <label>:703                                     ; preds = %671
  %704 = fmul fast float %645, 0x4163D57C00000000
  %705 = fmul fast float %648, 0x4163D57C00000000
  %706 = fmul fast float %651, 0x4163D57C00000000
  %707 = fadd fast float %704, 9.999980e+05
  %708 = fadd fast float %705, 9.999980e+05
  %709 = fadd fast float %706, 9.999980e+05
  %710 = fmul fast float %707, %645
  %711 = fmul fast float %708, %648
  %712 = fmul fast float %709, %651
  %713 = fadd fast float %710, 0xC0AFE17A60000000
  %714 = fadd fast float %711, 0xC0AFE17A60000000
  %715 = fadd fast float %712, 0xC0AFE17A60000000
  %716 = fmul fast float %713, %645
  %717 = fmul fast float %714, %648
  %718 = fmul fast float %715, %651
  %719 = fmul fast float %645, 0x40F753C340000000
  %720 = fmul fast float %648, 0x40F753C340000000
  %721 = fmul fast float %651, 0x40F753C340000000
  %722 = fsub fast float 9.999990e+06, %719
  %723 = fsub fast float 9.999990e+06, %720
  %724 = fsub fast float 9.999990e+06, %721
  %725 = fmul fast float %722, %645
  %726 = fmul fast float %723, %648
  %727 = fmul fast float %724, %651
  %728 = fadd fast float %725, 0x4136D1DD80000000
  %729 = fadd fast float %726, 0x4136D1DD80000000
  %730 = fadd fast float %727, 0x4136D1DD80000000
  %731 = fmul fast float %728, %645
  %732 = fmul fast float %729, %648
  %733 = fmul fast float %730, %651
  %734 = fadd fast float %731, 1.000000e+00
  %735 = fadd fast float %732, 1.000000e+00
  %736 = fadd fast float %733, 1.000000e+00
  %737 = fdiv fast float %716, %734
  %738 = fdiv fast float %717, %735
  %739 = fdiv fast float %718, %736
  %740 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %741 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %742 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %743 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %744 = fmul fast float %740, 0x3FE413A920000000
  %745 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %741, float %744)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %742, float %745)  ; FMad(a,b,c)
  %747 = fmul fast float %740, 0x3FB1B089A0000000
  %748 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %741, float %747)  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %742, float %748)  ; FMad(a,b,c)
  %750 = fmul fast float %740, 0x3F90CB2960000000
  %751 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %741, float %750)  ; FMad(a,b,c)
  %752 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %742, float %751)  ; FMad(a,b,c)
  %753 = fmul fast float %746, %743
  %754 = fmul fast float %749, %743
  %755 = fmul fast float %752, %743
  %756 = fmul fast float %753, 0x3F847AE140000000
  %757 = fmul fast float %754, 0x3F847AE140000000
  %758 = fmul fast float %755, 0x3F847AE140000000
  %759 = fmul fast float %753, 0x40B4D2F520000000
  %760 = fmul fast float %754, 0x40B4D2F520000000
  %761 = fmul fast float %755, 0x40B4D2F520000000
  %762 = fadd fast float %759, 0x41869ECF20000000
  %763 = fadd fast float %760, 0x41869ECF20000000
  %764 = fadd fast float %761, 0x41869ECF20000000
  %765 = fmul fast float %762, %756
  %766 = fmul fast float %763, %757
  %767 = fmul fast float %764, %758
  %768 = fadd fast float %765, 0x417BB79C60000000
  %769 = fadd fast float %766, 0x417BB79C60000000
  %770 = fadd fast float %767, 0x417BB79C60000000
  %771 = fmul fast float %768, %756
  %772 = fmul fast float %769, %757
  %773 = fmul fast float %770, %758
  %774 = fadd fast float %771, 0x41218DE180000000
  %775 = fadd fast float %772, 0x41218DE180000000
  %776 = fadd fast float %773, 0x41218DE180000000
  %777 = fmul fast float %774, %756
  %778 = fmul fast float %775, %757
  %779 = fmul fast float %776, %758
  %780 = fadd fast float %777, 0x4077F174E0000000
  %781 = fadd fast float %778, 0x4077F174E0000000
  %782 = fadd fast float %779, 0x4077F174E0000000
  %783 = fmul fast float %780, %756
  %784 = fmul fast float %781, %757
  %785 = fmul fast float %782, %758
  %786 = fadd fast float %783, 0x3F3FF79B80000000
  %787 = fadd fast float %784, 0x3F3FF79B80000000
  %788 = fadd fast float %785, 0x3F3FF79B80000000
  %789 = fmul fast float %753, 0x412442D320000000
  %790 = fmul fast float %754, 0x412442D320000000
  %791 = fmul fast float %755, 0x412442D320000000
  %792 = fadd fast float %789, 0x419385D5C0000000
  %793 = fadd fast float %790, 0x419385D5C0000000
  %794 = fadd fast float %791, 0x419385D5C0000000
  %795 = fmul fast float %792, %756
  %796 = fmul fast float %793, %757
  %797 = fmul fast float %794, %758
  %798 = fadd fast float %795, 4.182885e+06
  %799 = fadd fast float %796, 4.182885e+06
  %800 = fadd fast float %797, 4.182885e+06
  %801 = fmul fast float %798, %756
  %802 = fmul fast float %799, %757
  %803 = fmul fast float %800, %758
  %804 = fadd fast float %801, 0x40C4D633C0000000
  %805 = fadd fast float %802, 0x40C4D633C0000000
  %806 = fadd fast float %803, 0x40C4D633C0000000
  %807 = fmul fast float %804, %756
  %808 = fmul fast float %805, %757
  %809 = fmul fast float %806, %758
  %810 = fadd fast float %807, 1.000000e+00
  %811 = fadd fast float %808, 1.000000e+00
  %812 = fadd fast float %809, 1.000000e+00
  %813 = fdiv fast float %786, %810
  %814 = fdiv fast float %787, %811
  %815 = fdiv fast float %788, %812
  %816 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %817 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %818 = fmul fast float %816, %813
  %819 = fmul fast float %816, %814
  %820 = fmul fast float %816, %815
  %821 = fadd fast float %818, %817
  %822 = fadd fast float %819, %817
  %823 = fadd fast float %820, %817
  br label %958

; <label>:824                                     ; preds = %671
  %825 = fmul fast float %645, 0x4163D57C00000000
  %826 = fmul fast float %648, 0x4163D57C00000000
  %827 = fmul fast float %651, 0x4163D57C00000000
  %828 = fadd fast float %825, 9.999980e+05
  %829 = fadd fast float %826, 9.999980e+05
  %830 = fadd fast float %827, 9.999980e+05
  %831 = fmul fast float %828, %645
  %832 = fmul fast float %829, %648
  %833 = fmul fast float %830, %651
  %834 = fadd fast float %831, 0xC0AFE17A60000000
  %835 = fadd fast float %832, 0xC0AFE17A60000000
  %836 = fadd fast float %833, 0xC0AFE17A60000000
  %837 = fmul fast float %834, %645
  %838 = fmul fast float %835, %648
  %839 = fmul fast float %836, %651
  %840 = fmul fast float %645, 0x40F753C340000000
  %841 = fmul fast float %648, 0x40F753C340000000
  %842 = fmul fast float %651, 0x40F753C340000000
  %843 = fsub fast float 9.999990e+06, %840
  %844 = fsub fast float 9.999990e+06, %841
  %845 = fsub fast float 9.999990e+06, %842
  %846 = fmul fast float %843, %645
  %847 = fmul fast float %844, %648
  %848 = fmul fast float %845, %651
  %849 = fadd fast float %846, 0x4136D1DD80000000
  %850 = fadd fast float %847, 0x4136D1DD80000000
  %851 = fadd fast float %848, 0x4136D1DD80000000
  %852 = fmul fast float %849, %645
  %853 = fmul fast float %850, %648
  %854 = fmul fast float %851, %651
  %855 = fadd fast float %852, 1.000000e+00
  %856 = fadd fast float %853, 1.000000e+00
  %857 = fadd fast float %854, 1.000000e+00
  %858 = fdiv fast float %837, %855
  %859 = fdiv fast float %838, %856
  %860 = fdiv fast float %839, %857
  %861 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %862 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  %863 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %864 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %865 = fmul fast float %861, 0x3FEA519BC0000000
  %866 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %862, float %865)  ; FMad(a,b,c)
  %867 = fmul fast float %861, 0x3FA0FED480000000
  %868 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %862, float %867)  ; FMad(a,b,c)
  %869 = fmul fast float %861, 0x3F917E1C00000000
  %870 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %862, float %869)  ; FMad(a,b,c)
  %871 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %863, float %870)  ; FMad(a,b,c)
  %872 = call float @dx.op.binary.f32(i32 35, float %861, float %862)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 35, float %872, float %863)  ; FMax(a,b)
  %874 = fadd fast float %873, -1.000000e+00
  %875 = fmul fast float %874, 2.500000e-01
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fsub fast float 1.000000e+00, %876
  %878 = fmul fast float %877, %866
  %879 = fmul fast float %877, %868
  %880 = fmul fast float %877, %871
  %881 = fmul fast float %876, %861
  %882 = fmul fast float %876, %862
  %883 = fmul fast float %876, %863
  %884 = fadd fast float %878, %881
  %885 = fadd fast float %879, %882
  %886 = fadd fast float %880, %883
  %887 = fmul fast float %884, %864
  %888 = fmul fast float %885, %864
  %889 = fmul fast float %886, %864
  %890 = fmul fast float %887, 0x3F847AE140000000
  %891 = fmul fast float %888, 0x3F847AE140000000
  %892 = fmul fast float %889, 0x3F847AE140000000
  %893 = fmul fast float %887, 0x40B4D2F520000000
  %894 = fmul fast float %888, 0x40B4D2F520000000
  %895 = fmul fast float %889, 0x40B4D2F520000000
  %896 = fadd fast float %893, 0x41869ECF20000000
  %897 = fadd fast float %894, 0x41869ECF20000000
  %898 = fadd fast float %895, 0x41869ECF20000000
  %899 = fmul fast float %896, %890
  %900 = fmul fast float %897, %891
  %901 = fmul fast float %898, %892
  %902 = fadd fast float %899, 0x417BB79C60000000
  %903 = fadd fast float %900, 0x417BB79C60000000
  %904 = fadd fast float %901, 0x417BB79C60000000
  %905 = fmul fast float %902, %890
  %906 = fmul fast float %903, %891
  %907 = fmul fast float %904, %892
  %908 = fadd fast float %905, 0x41218DE180000000
  %909 = fadd fast float %906, 0x41218DE180000000
  %910 = fadd fast float %907, 0x41218DE180000000
  %911 = fmul fast float %908, %890
  %912 = fmul fast float %909, %891
  %913 = fmul fast float %910, %892
  %914 = fadd fast float %911, 0x4077F174E0000000
  %915 = fadd fast float %912, 0x4077F174E0000000
  %916 = fadd fast float %913, 0x4077F174E0000000
  %917 = fmul fast float %914, %890
  %918 = fmul fast float %915, %891
  %919 = fmul fast float %916, %892
  %920 = fadd fast float %917, 0x3F3FF79B80000000
  %921 = fadd fast float %918, 0x3F3FF79B80000000
  %922 = fadd fast float %919, 0x3F3FF79B80000000
  %923 = fmul fast float %887, 0x412442D320000000
  %924 = fmul fast float %888, 0x412442D320000000
  %925 = fmul fast float %889, 0x412442D320000000
  %926 = fadd fast float %923, 0x419385D5C0000000
  %927 = fadd fast float %924, 0x419385D5C0000000
  %928 = fadd fast float %925, 0x419385D5C0000000
  %929 = fmul fast float %926, %890
  %930 = fmul fast float %927, %891
  %931 = fmul fast float %928, %892
  %932 = fadd fast float %929, 4.182885e+06
  %933 = fadd fast float %930, 4.182885e+06
  %934 = fadd fast float %931, 4.182885e+06
  %935 = fmul fast float %932, %890
  %936 = fmul fast float %933, %891
  %937 = fmul fast float %934, %892
  %938 = fadd fast float %935, 0x40C4D633C0000000
  %939 = fadd fast float %936, 0x40C4D633C0000000
  %940 = fadd fast float %937, 0x40C4D633C0000000
  %941 = fmul fast float %938, %890
  %942 = fmul fast float %939, %891
  %943 = fmul fast float %940, %892
  %944 = fadd fast float %941, 1.000000e+00
  %945 = fadd fast float %942, 1.000000e+00
  %946 = fadd fast float %943, 1.000000e+00
  %947 = fdiv fast float %920, %944
  %948 = fdiv fast float %921, %945
  %949 = fdiv fast float %922, %946
  %950 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %951 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %952 = fmul fast float %950, %947
  %953 = fmul fast float %950, %948
  %954 = fmul fast float %950, %949
  %955 = fadd fast float %952, %951
  %956 = fadd fast float %953, %951
  %957 = fadd fast float %954, %951
  br label %958

; <label>:958                                     ; preds = %824, %703, %673, %671, %657
  %959 = phi float [ %668, %657 ], [ %645, %671 ], [ %955, %824 ], [ %821, %703 ], [ %700, %673 ]
  %960 = phi float [ %669, %657 ], [ %648, %671 ], [ %956, %824 ], [ %822, %703 ], [ %701, %673 ]
  %961 = phi float [ %670, %657 ], [ %651, %671 ], [ %957, %824 ], [ %823, %703 ], [ %702, %673 ]
  %962 = fmul fast float %959, %630
  %963 = fmul fast float %960, %630
  %964 = fmul fast float %961, %630
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %962)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %964)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %630)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!23}
!dx.entryPoints = !{!24}

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
!18 = !{!19, !20, !21, !22}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!22 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!23 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!24 = !{void ()* @ps_main, !"ps_main", !25, !4, null}
!25 = !{!26, !45, null}
!26 = !{!27, !30, !32, !33, !35, !37, !39, !41, !43}
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
!43 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 2, i32 5, i8 0, !29}
!44 = !{i32 7}
!45 = !{!46}
!46 = !{i32 0, !"SV_Target", i8 9, i8 16, !28, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
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

