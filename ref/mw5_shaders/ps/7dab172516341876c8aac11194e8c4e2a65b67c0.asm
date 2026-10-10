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
; shader hash: d73b3c94ae28af8b4e6585d88b5c9772
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %27 = fcmp fast ogt float %26, 0.000000e+00
  br i1 %27, label %28, label %78, !dx.controlflow.hints !45

; <label>:28                                      ; preds = %0
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %31 = fmul fast float %30, 1.000000e+01
  %32 = call float @dx.op.unary.f32(i32 27, float %31)  ; Round_ni(value)
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = fmul fast float %34, %23
  %37 = fmul fast float %35, %24
  %38 = call float @dx.op.unary.f32(i32 27, float %36)  ; Round_ni(value)
  %39 = call float @dx.op.unary.f32(i32 27, float %37)  ; Round_ni(value)
  %40 = fmul fast float %32, 0x4002B851E0000000
  %41 = call float @dx.op.unary.f32(i32 22, float %40)  ; Frc(value)
  %42 = fadd fast float %41, 0x3FB99999A0000000
  %43 = fadd fast float %42, %38
  %44 = fadd fast float %42, %39
  %45 = fmul fast float %43, 0x3FE1BEDF00000000
  %46 = call float @dx.op.unary.f32(i32 22, float %45)  ; Frc(value)
  %47 = fmul fast float %43, %46
  %48 = fadd fast float %47, %44
  %49 = fmul fast float %44, 0x3FD3BEBE20000000
  %50 = call float @dx.op.unary.f32(i32 22, float %49)  ; Frc(value)
  %51 = fmul fast float %44, %50
  %52 = fadd fast float %51, %43
  %53 = fmul fast float %48, %52
  %54 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %55 = extractvalue %dx.types.CBufRet.f32 %33, 3
  %56 = bitcast float %55 to i32
  %57 = and i32 %56, 255
  %58 = uitofp i32 %57 to float
  %59 = fmul fast float %54, 0x4085373340000000
  %60 = call float @dx.op.unary.f32(i32 22, float %59)  ; Frc(value)
  %61 = fmul fast float %58, 0x3F6CE9B6A0000000
  %62 = fcmp fast olt float %60, %61
  br i1 %62, label %63, label %78, !dx.controlflow.hints !46

; <label>:63                                      ; preds = %28
  %64 = fdiv fast float %60, %61
  %65 = fmul fast float %64, 2.000000e+00
  %66 = fadd fast float %65, -1.000000e+00
  %67 = lshr i32 %56, 8
  %68 = and i32 %67, 255
  %69 = uitofp i32 %68 to float
  %70 = call float @dx.op.unary.f32(i32 83, float %17)  ; DerivCoarseX(value)
  %71 = call float @dx.op.unary.f32(i32 83, float %18)  ; DerivCoarseX(value)
  %72 = fmul fast float %66, %70
  %73 = fmul fast float %72, %69
  %74 = fmul fast float %71, %66
  %75 = fmul fast float %74, %69
  %76 = fadd fast float %73, %17
  %77 = fadd fast float %75, %18
  br label %78

; <label>:78                                      ; preds = %63, %28, %0
  %79 = phi float [ %76, %63 ], [ %17, %28 ], [ %17, %0 ]
  %80 = phi float [ %77, %63 ], [ %18, %28 ], [ %18, %0 ]
  %81 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %82 = extractvalue %dx.types.Dimensions %81, 0
  %83 = sitofp i32 %82 to float
  %84 = extractvalue %dx.types.Dimensions %81, 1
  %85 = sitofp i32 %84 to float
  %86 = fdiv fast float 5.000000e-01, %83
  %87 = fdiv fast float 5.000000e-01, %85
  %88 = fsub fast float 1.000000e+00, %86
  %89 = call float @dx.op.binary.f32(i32 35, float %79, float %86)  ; FMax(a,b)
  %90 = call float @dx.op.binary.f32(i32 36, float %89, float %88)  ; FMin(a,b)
  %91 = fsub fast float 1.000000e+00, %87
  %92 = call float @dx.op.binary.f32(i32 35, float %80, float %87)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 36, float %92, float %91)  ; FMin(a,b)
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %96 = bitcast float %95 to i32
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  %99 = select i1 %98, float %90, float %79
  %100 = and i32 %96, 2
  %101 = icmp ne i32 %100, 0
  %102 = select i1 %101, float %93, float %80
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %105 = bitcast float %104 to i32
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108, !dx.controlflow.hints !47

; <label>:108                                     ; preds = %78
  %109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %6, float %99, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = extractvalue %dx.types.ResRet.f32 %109, 1
  %112 = extractvalue %dx.types.ResRet.f32 %109, 2
  %113 = extractvalue %dx.types.ResRet.f32 %109, 3
  br label %122

; <label>:114                                     ; preds = %78
  %115 = call float @dx.op.unary.f32(i32 22, float %99)  ; Frc(value)
  %116 = call float @dx.op.unary.f32(i32 22, float %102)  ; Frc(value)
  %117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %9, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = extractvalue %dx.types.ResRet.f32 %117, 1
  %120 = extractvalue %dx.types.ResRet.f32 %117, 2
  %121 = extractvalue %dx.types.ResRet.f32 %117, 3
  br label %122

; <label>:122                                     ; preds = %114, %108
  %123 = phi float [ %110, %108 ], [ %118, %114 ]
  %124 = phi float [ %111, %108 ], [ %119, %114 ]
  %125 = phi float [ %112, %108 ], [ %120, %114 ]
  %126 = phi float [ %113, %108 ], [ %121, %114 ]
  %127 = and i32 %105, 8
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %128, float 1.000000e+00, float %123
  %130 = select i1 %128, float 1.000000e+00, float %124
  %131 = select i1 %128, float 1.000000e+00, float %125
  %132 = select i1 %128, float %123, float %126
  %133 = fmul fast float %129, %19
  %134 = fmul fast float %130, %20
  %135 = fmul fast float %131, %21
  %136 = fmul fast float %132, %22
  %137 = and i32 %105, 512
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %233, label %139

; <label>:139                                     ; preds = %122
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %142 = bitcast float %141 to i32
  %143 = and i32 %142, 65535
  %144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %143)  ; LegacyF16ToF32(value)
  %145 = lshr i32 %142, 16
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145)  ; LegacyF16ToF32(value)
  %147 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %148 = bitcast float %147 to i32
  %149 = and i32 %148, 65535
  %150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %149)  ; LegacyF16ToF32(value)
  %151 = lshr i32 %148, 16
  %152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %151)  ; LegacyF16ToF32(value)
  %153 = and i32 %105, 16
  %154 = icmp ne i32 %153, 0
  %155 = fcmp fast ogt float %144, 0.000000e+00
  %156 = fcmp fast ogt float %146, 0.000000e+00
  %157 = and i1 %155, %156
  %158 = fcmp fast ogt float %150, 0.000000e+00
  br i1 %157, label %159, label %219

; <label>:159                                     ; preds = %139
  br i1 %158, label %160, label %168

; <label>:160                                     ; preds = %159
  %161 = fmul fast float %146, %16
  %162 = fmul fast float %144, %15
  %163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %7, float %162, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = fsub fast float 1.000000e+00, %164
  %166 = select i1 %154, float %165, float %164
  %167 = fmul fast float %166, %150
  br label %168

; <label>:168                                     ; preds = %160, %159
  %169 = phi float [ %167, %160 ], [ 0.000000e+00, %159 ]
  %170 = fadd fast float %169, %152
  %171 = call float @dx.op.unary.f32(i32 7, float %170)  ; Saturate(value)
  br i1 %158, label %172, label %182

; <label>:172                                     ; preds = %168
  %173 = fmul fast float %146, %16
  %174 = fsub fast float 1.000000e+00, %15
  %175 = fmul fast float %144, %174
  %176 = fsub fast float 1.000000e+00, %175
  %177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %7, float %176, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 1
  %179 = fsub fast float 1.000000e+00, %178
  %180 = select i1 %154, float %179, float %178
  %181 = fmul fast float %180, %150
  br label %182

; <label>:182                                     ; preds = %172, %168
  %183 = phi float [ %181, %172 ], [ 0.000000e+00, %168 ]
  %184 = fadd fast float %183, %152
  %185 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  %186 = fmul fast float %185, %171
  br i1 %158, label %187, label %199

; <label>:187                                     ; preds = %182
  %188 = fsub fast float 1.000000e+00, %16
  %189 = fmul fast float %146, %188
  %190 = fsub fast float 1.000000e+00, %189
  %191 = fsub fast float 1.000000e+00, %15
  %192 = fmul fast float %144, %191
  %193 = fsub fast float 1.000000e+00, %192
  %194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %7, float %193, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 2
  %196 = fsub fast float 1.000000e+00, %195
  %197 = select i1 %154, float %196, float %195
  %198 = fmul fast float %197, %150
  br label %199

; <label>:199                                     ; preds = %187, %182
  %200 = phi float [ %198, %187 ], [ 0.000000e+00, %182 ]
  %201 = fadd fast float %200, %152
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = fmul fast float %186, %202
  br i1 %158, label %204, label %214

; <label>:204                                     ; preds = %199
  %205 = fsub fast float 1.000000e+00, %16
  %206 = fmul fast float %146, %205
  %207 = fsub fast float 1.000000e+00, %206
  %208 = fmul fast float %144, %15
  %209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %7, float %208, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 3
  %211 = fsub fast float 1.000000e+00, %210
  %212 = select i1 %154, float %211, float %210
  %213 = fmul fast float %212, %150
  br label %214

; <label>:214                                     ; preds = %204, %199
  %215 = phi float [ %213, %204 ], [ 0.000000e+00, %199 ]
  %216 = fadd fast float %215, %152
  %217 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %218 = fmul fast float %203, %217
  br label %230

; <label>:219                                     ; preds = %139
  br i1 %158, label %220, label %226

; <label>:220                                     ; preds = %219
  %221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %7, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fsub fast float 1.000000e+00, %222
  %224 = select i1 %154, float %223, float %222
  %225 = fmul fast float %224, %150
  br label %226

; <label>:226                                     ; preds = %220, %219
  %227 = phi float [ %225, %220 ], [ 0.000000e+00, %219 ]
  %228 = fadd fast float %227, %152
  %229 = call float @dx.op.unary.f32(i32 7, float %228)  ; Saturate(value)
  br label %230

; <label>:230                                     ; preds = %226, %214
  %231 = phi float [ %218, %214 ], [ %229, %226 ]
  %232 = fmul fast float %231, %136
  br label %233

; <label>:233                                     ; preds = %230, %122
  %234 = phi float [ %232, %230 ], [ %136, %122 ]
  %235 = call float @dx.op.binary.f32(i32 35, float %234, float 0.000000e+00)  ; FMax(a,b)
  %236 = fcmp fast oeq float %235, 0.000000e+00
  br i1 %236, label %237, label %238, !dx.controlflow.hints !48

; <label>:237                                     ; preds = %233
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %238

; <label>:238                                     ; preds = %237, %233
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fcmp fast ogt float %240, 0.000000e+00
  br i1 %241, label %242, label %308, !dx.controlflow.hints !49

; <label>:242                                     ; preds = %238
  %243 = fcmp fast oeq float %240, 2.000000e+00
  br i1 %243, label %244, label %296, !dx.controlflow.hints !50

; <label>:244                                     ; preds = %242
  %245 = fcmp fast ole float %133, 0x3F69A5C380000000
  %246 = fcmp fast ole float %134, 0x3F69A5C380000000
  %247 = fcmp fast ole float %135, 0x3F69A5C380000000
  %248 = fmul fast float %133, 0x4029D70A40000000
  %249 = fmul fast float %134, 0x4029D70A40000000
  %250 = fmul fast float %135, 0x4029D70A40000000
  %251 = call float @dx.op.unary.f32(i32 23, float %133)  ; Log(value)
  %252 = call float @dx.op.unary.f32(i32 23, float %134)  ; Log(value)
  %253 = call float @dx.op.unary.f32(i32 23, float %135)  ; Log(value)
  %254 = fmul fast float %251, 0x3FDAAAAAA0000000
  %255 = fmul fast float %252, 0x3FDAAAAAA0000000
  %256 = fmul fast float %253, 0x3FDAAAAAA0000000
  %257 = call float @dx.op.unary.f32(i32 21, float %254)  ; Exp(value)
  %258 = call float @dx.op.unary.f32(i32 21, float %255)  ; Exp(value)
  %259 = call float @dx.op.unary.f32(i32 21, float %256)  ; Exp(value)
  %260 = fmul fast float %257, 0x3FF0E147A0000000
  %261 = fmul fast float %258, 0x3FF0E147A0000000
  %262 = fmul fast float %259, 0x3FF0E147A0000000
  %263 = fadd fast float %260, 0xBFAC28F5C0000000
  %264 = fadd fast float %261, 0xBFAC28F5C0000000
  %265 = fadd fast float %262, 0xBFAC28F5C0000000
  %266 = select i1 %245, float %248, float %263
  %267 = select i1 %246, float %249, float %264
  %268 = select i1 %247, float %250, float %265
  %269 = fsub fast float 1.000000e+00, %266
  %270 = fsub fast float 1.000000e+00, %267
  %271 = fsub fast float 1.000000e+00, %268
  %272 = fcmp fast ole float %269, 0x3FA4B5DCC0000000
  %273 = fmul fast float %269, 0x3FB3D07220000000
  %274 = fsub fast float 0x3FF0E147A0000000, %266
  %275 = fmul fast float %274, 0x3FEE54EDE0000000
  %276 = call float @dx.op.unary.f32(i32 23, float %275)  ; Log(value)
  %277 = fmul fast float %276, 0x4003333340000000
  %278 = call float @dx.op.unary.f32(i32 21, float %277)  ; Exp(value)
  %279 = select i1 %272, float %273, float %278
  %280 = fcmp fast ole float %270, 0x3FA4B5DCC0000000
  %281 = fmul fast float %270, 0x3FB3D07220000000
  %282 = fsub fast float 0x3FF0E147A0000000, %267
  %283 = fmul fast float %282, 0x3FEE54EDE0000000
  %284 = call float @dx.op.unary.f32(i32 23, float %283)  ; Log(value)
  %285 = fmul fast float %284, 0x4003333340000000
  %286 = call float @dx.op.unary.f32(i32 21, float %285)  ; Exp(value)
  %287 = select i1 %280, float %281, float %286
  %288 = fcmp fast ole float %271, 0x3FA4B5DCC0000000
  %289 = fmul fast float %271, 0x3FB3D07220000000
  %290 = fsub fast float 0x3FF0E147A0000000, %268
  %291 = fmul fast float %290, 0x3FEE54EDE0000000
  %292 = call float @dx.op.unary.f32(i32 23, float %291)  ; Log(value)
  %293 = fmul fast float %292, 0x4003333340000000
  %294 = call float @dx.op.unary.f32(i32 21, float %293)  ; Exp(value)
  %295 = select i1 %288, float %289, float %294
  br label %308

; <label>:296                                     ; preds = %242
  %297 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %298 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %299 = fsub fast float %133, %297
  %300 = fsub fast float %134, %297
  %301 = fsub fast float %135, %297
  %302 = fmul fast float %298, %299
  %303 = fmul fast float %298, %300
  %304 = fmul fast float %298, %301
  %305 = fadd fast float %302, %297
  %306 = fadd fast float %303, %297
  %307 = fadd fast float %304, %297
  br label %308

; <label>:308                                     ; preds = %296, %244, %238
  %309 = phi float [ %279, %244 ], [ %305, %296 ], [ %133, %238 ]
  %310 = phi float [ %287, %244 ], [ %306, %296 ], [ %134, %238 ]
  %311 = phi float [ %295, %244 ], [ %307, %296 ], [ %135, %238 ]
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = fcmp fast une float %313, 0.000000e+00
  br i1 %314, label %315, label %489, !dx.controlflow.hints !51

; <label>:315                                     ; preds = %308
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = fsub fast float %23, %317
  %320 = fsub fast float %24, %318
  %321 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %322 = extractvalue %dx.types.CBufRet.f32 %316, 3
  %323 = fmul fast float %319, %321
  %324 = fmul fast float %320, %322
  %325 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %323, float %324, float undef, float undef, i32 0, i32 0, i32 undef, float %325)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = extractvalue %dx.types.ResRet.f32 %326, 1
  %329 = extractvalue %dx.types.ResRet.f32 %326, 2
  %330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.i32 %330, 3
  %332 = and i32 %331, 3
  %333 = icmp ne i32 %332, 0
  %334 = and i32 %331, 4
  %335 = icmp eq i32 %334, 0
  %336 = and i1 %333, %335
  br i1 %336, label %337, label %381

; <label>:337                                     ; preds = %315
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = fcmp fast oge float %328, %339
  %341 = zext i1 %340 to i32
  br i1 %340, label %342, label %381

; <label>:342                                     ; preds = %337
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 3
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %347 = fcmp fast ogt float %346, 0.000000e+00
  br i1 %347, label %348, label %356, !dx.controlflow.hints !52

; <label>:348                                     ; preds = %342
  %349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %328, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = fcmp fast ogt float %346, 1.500000e+00
  %354 = select i1 %353, float %350, float %351
  %355 = select i1 %353, float %350, float %352
  br label %374

; <label>:356                                     ; preds = %342
  %357 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %362 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %365 = fsub fast float %359, %362
  %366 = fsub fast float %360, %363
  %367 = fsub fast float %361, %364
  %368 = fmul fast float %365, %357
  %369 = fmul fast float %366, %357
  %370 = fmul fast float %367, %357
  %371 = fadd fast float %368, %362
  %372 = fadd fast float %369, %363
  %373 = fadd fast float %370, %364
  br label %374

; <label>:374                                     ; preds = %356, %348
  %375 = phi float [ %350, %348 ], [ %371, %356 ]
  %376 = phi float [ %354, %348 ], [ %372, %356 ]
  %377 = phi float [ %355, %348 ], [ %373, %356 ]
  %378 = fmul fast float %375, %344
  %379 = fmul fast float %376, %344
  %380 = fmul fast float %377, %344
  br label %381

; <label>:381                                     ; preds = %374, %337, %315
  %382 = phi float [ %378, %374 ], [ %327, %315 ], [ %327, %337 ]
  %383 = phi float [ %379, %374 ], [ %328, %315 ], [ %327, %337 ]
  %384 = phi float [ %380, %374 ], [ %329, %315 ], [ %327, %337 ]
  %385 = phi i32 [ %341, %374 ], [ 0, %315 ], [ %341, %337 ]
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %441

; <label>:387                                     ; preds = %381
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = call float @dx.op.dot3.f32(i32 55, float %382, float %383, float %384, float %389, float %390, float %391)  ; Dot3(ax,ay,az,bx,by,bz)
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %397 = call float @dx.op.dot3.f32(i32 55, float %382, float %383, float %384, float %394, float %395, float %396)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %402 = call float @dx.op.dot3.f32(i32 55, float %382, float %383, float %384, float %399, float %400, float %401)  ; Dot3(ax,ay,az,bx,by,bz)
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %405 = fmul fast float %404, %392
  %406 = fmul fast float %404, %397
  %407 = fmul fast float %404, %402
  %408 = fadd fast float %405, 9.765625e-04
  %409 = fadd fast float %406, 9.765625e-04
  %410 = fadd fast float %407, 9.765625e-04
  %411 = call float @dx.op.unary.f32(i32 23, float %408)  ; Log(value)
  %412 = call float @dx.op.unary.f32(i32 23, float %409)  ; Log(value)
  %413 = call float @dx.op.unary.f32(i32 23, float %410)  ; Log(value)
  %414 = fadd fast float %411, 1.000000e+01
  %415 = fadd fast float %412, 1.000000e+01
  %416 = fadd fast float %413, 1.000000e+01
  %417 = fmul fast float %414, 0x3FA99999A0000000
  %418 = fmul fast float %415, 0x3FA99999A0000000
  %419 = fmul fast float %416, 0x3FA99999A0000000
  %420 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %421 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %422 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.f32 %423, 0
  %425 = extractvalue %dx.types.CBufRet.f32 %423, 1
  %426 = extractvalue %dx.types.CBufRet.f32 %423, 2
  %427 = fmul fast float %424, %420
  %428 = fmul fast float %425, %421
  %429 = fmul fast float %426, %422
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %430, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %430, 2
  %434 = fadd fast float %427, %431
  %435 = fadd fast float %428, %432
  %436 = fadd fast float %429, %433
  %437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %434, float %435, float %436, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  br label %441

; <label>:441                                     ; preds = %387, %381
  %442 = phi float [ %382, %381 ], [ %438, %387 ]
  %443 = phi float [ %383, %381 ], [ %439, %387 ]
  %444 = phi float [ %384, %381 ], [ %440, %387 ]
  %445 = fcmp fast ole float %442, 0x3FA4B5DCC0000000
  %446 = fmul fast float %442, 0x3FB3D07220000000
  %447 = fadd fast float %442, 0x3FAC28F5C0000000
  %448 = fmul fast float %447, 0x3FEE54EDE0000000
  %449 = call float @dx.op.unary.f32(i32 23, float %448)  ; Log(value)
  %450 = fmul fast float %449, 0x4003333340000000
  %451 = call float @dx.op.unary.f32(i32 21, float %450)  ; Exp(value)
  %452 = select i1 %445, float %446, float %451
  %453 = fcmp fast ole float %443, 0x3FA4B5DCC0000000
  %454 = fmul fast float %443, 0x3FB3D07220000000
  %455 = fadd fast float %443, 0x3FAC28F5C0000000
  %456 = fmul fast float %455, 0x3FEE54EDE0000000
  %457 = call float @dx.op.unary.f32(i32 23, float %456)  ; Log(value)
  %458 = fmul fast float %457, 0x4003333340000000
  %459 = call float @dx.op.unary.f32(i32 21, float %458)  ; Exp(value)
  %460 = select i1 %453, float %454, float %459
  %461 = fcmp fast ole float %444, 0x3FA4B5DCC0000000
  %462 = fmul fast float %444, 0x3FB3D07220000000
  %463 = fadd fast float %444, 0x3FAC28F5C0000000
  %464 = fmul fast float %463, 0x3FEE54EDE0000000
  %465 = call float @dx.op.unary.f32(i32 23, float %464)  ; Log(value)
  %466 = fmul fast float %465, 0x4003333340000000
  %467 = call float @dx.op.unary.f32(i32 21, float %466)  ; Exp(value)
  %468 = select i1 %461, float %462, float %467
  %469 = fcmp fast olt float %313, 0.000000e+00
  br i1 %469, label %470, label %482

; <label>:470                                     ; preds = %441
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 0
  %473 = extractvalue %dx.types.CBufRet.f32 %471, 1
  %474 = extractvalue %dx.types.CBufRet.f32 %471, 2
  %475 = call float @dx.op.dot3.f32(i32 55, float %452, float %460, float %468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %476 = fsub fast float %475, %472
  %477 = fmul fast float %476, %473
  %478 = call float @dx.op.unary.f32(i32 7, float %477)  ; Saturate(value)
  %479 = fsub fast float 1.000000e+00, %474
  %480 = fmul fast float %478, %479
  %481 = fadd fast float %480, %474
  br label %482

; <label>:482                                     ; preds = %470, %441
  %483 = phi float [ %481, %470 ], [ %452, %441 ]
  %484 = phi float [ %481, %470 ], [ %460, %441 ]
  %485 = phi float [ %481, %470 ], [ %468, %441 ]
  %486 = fmul fast float %483, %309
  %487 = fmul fast float %484, %310
  %488 = fmul fast float %485, %311
  br label %489

; <label>:489                                     ; preds = %482, %308
  %490 = phi float [ %486, %482 ], [ %309, %308 ]
  %491 = phi float [ %487, %482 ], [ %310, %308 ]
  %492 = phi float [ %488, %482 ], [ %311, %308 ]
  %493 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %494 = fcmp fast ogt float %493, 0.000000e+00
  br i1 %494, label %495, label %536, !dx.controlflow.hints !53

; <label>:495                                     ; preds = %489
  %496 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %497 = bitcast float %496 to i32
  %498 = and i32 %497, 255
  %499 = uitofp i32 %498 to float
  %500 = lshr i32 %497, 8
  %501 = and i32 %500, 255
  %502 = uitofp i32 %501 to float
  %503 = lshr i32 %497, 16
  %504 = and i32 %503, 255
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, 0x3F70101020000000
  %507 = lshr i32 %497, 24
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = fadd fast float %505, %499
  %511 = fmul fast float %510, 0x3F70101020000000
  %512 = fadd fast float %502, %508
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = fdiv fast float %23, %511
  %515 = fdiv fast float %24, %513
  %516 = fsub fast float -0.000000e+00, %514
  %517 = fsub fast float -0.000000e+00, %515
  %518 = fcmp fast oge float %514, %516
  %519 = fcmp fast oge float %515, %517
  %520 = call float @dx.op.unary.f32(i32 6, float %514)  ; FAbs(value)
  %521 = call float @dx.op.unary.f32(i32 6, float %515)  ; FAbs(value)
  %522 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %523 = call float @dx.op.unary.f32(i32 22, float %521)  ; Frc(value)
  %524 = fsub fast float -0.000000e+00, %522
  %525 = fsub fast float -0.000000e+00, %523
  %526 = select i1 %518, float %522, float %524
  %527 = select i1 %519, float %523, float %525
  %528 = fmul fast float %511, %526
  %529 = fmul fast float %527, %513
  %530 = fcmp fast olt float %528, %506
  %531 = fcmp fast olt float %529, %509
  %532 = or i1 %530, %531
  br i1 %532, label %533, label %536, !dx.controlflow.hints !54

; <label>:533                                     ; preds = %495
  %534 = fsub fast float 1.000000e+00, %493
  %535 = fmul fast float %534, %235
  br label %536

; <label>:536                                     ; preds = %533, %495, %489
  %537 = phi float [ %535, %533 ], [ %235, %495 ], [ %235, %489 ]
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 3
  %540 = fcmp fast ogt float %539, 0.000000e+00
  br i1 %540, label %541, label %624, !dx.controlflow.hints !55

; <label>:541                                     ; preds = %536
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %544 = extractvalue %dx.types.CBufRet.f32 %542, 3
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 3
  %547 = fmul fast float %546, 1.000000e+01
  %548 = call float @dx.op.unary.f32(i32 27, float %547)  ; Round_ni(value)
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 0
  %551 = extractvalue %dx.types.CBufRet.f32 %549, 1
  %552 = fmul fast float %550, %23
  %553 = fmul fast float %551, %24
  %554 = call float @dx.op.unary.f32(i32 27, float %552)  ; Round_ni(value)
  %555 = call float @dx.op.unary.f32(i32 27, float %553)  ; Round_ni(value)
  %556 = fmul fast float %548, 0x4002B851E0000000
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = fadd fast float %557, 0x3FB99999A0000000
  %559 = fadd fast float %558, %554
  %560 = fadd fast float %558, %555
  %561 = fmul fast float %559, 0x3FE1BEDF00000000
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = fmul fast float %559, %562
  %564 = fadd fast float %563, %560
  %565 = fmul fast float %560, 0x3FD3BEBE20000000
  %566 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %567 = fmul fast float %560, %566
  %568 = fadd fast float %567, %559
  %569 = fmul fast float %564, %568
  %570 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %571 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %572 = bitcast float %571 to i32
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = fmul fast float %575, %543
  %577 = fcmp fast olt float %570, %576
  br i1 %577, label %578, label %585, !dx.controlflow.hints !56

; <label>:578                                     ; preds = %541
  %579 = fmul fast float %570, 0x4057091680000000
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = fmul fast float %580, %490
  %582 = fmul fast float %580, %492
  %583 = fsub fast float 1.000000e+00, %580
  %584 = fmul fast float %583, %491
  br label %585

; <label>:585                                     ; preds = %578, %541
  %586 = phi float [ %581, %578 ], [ %490, %541 ]
  %587 = phi float [ %584, %578 ], [ %491, %541 ]
  %588 = phi float [ %582, %578 ], [ %492, %541 ]
  %589 = fmul fast float %570, 0x4028B0A3E0000000
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = fmul fast float %575, %544
  %592 = fcmp fast olt float %590, %591
  br i1 %592, label %593, label %612, !dx.controlflow.hints !57

; <label>:593                                     ; preds = %585
  %594 = extractvalue %dx.types.CBufRet.f32 %549, 2
  %595 = fmul fast float %594, %23
  %596 = call float @dx.op.unary.f32(i32 27, float %595)  ; Round_ni(value)
  %597 = fmul fast float %596, 0x3FD5555560000000
  %598 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %599 = extractvalue %dx.types.CBufRet.f32 %542, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %542, 1
  %601 = fcmp fast olt float %598, 0x3FD51EB860000000
  br i1 %601, label %605, label %602, !dx.controlflow.hints !58

; <label>:602                                     ; preds = %593
  %603 = fcmp fast olt float %598, 0x3FE51EB860000000
  br i1 %603, label %605, label %604, !dx.controlflow.hints !59

; <label>:604                                     ; preds = %602
  br label %605

; <label>:605                                     ; preds = %604, %602, %593
  %606 = phi float [ %599, %604 ], [ %600, %593 ], [ %599, %602 ]
  %607 = phi float [ %599, %604 ], [ %599, %593 ], [ %600, %602 ]
  %608 = phi float [ %600, %604 ], [ %599, %593 ], [ %599, %602 ]
  %609 = fmul fast float %606, %586
  %610 = fmul fast float %607, %587
  %611 = fmul fast float %608, %588
  br label %612

; <label>:612                                     ; preds = %605, %585
  %613 = phi float [ %609, %605 ], [ %586, %585 ]
  %614 = phi float [ %610, %605 ], [ %587, %585 ]
  %615 = phi float [ %611, %605 ], [ %588, %585 ]
  %616 = fmul fast float %570, 0x40223EF9E0000000
  %617 = call float @dx.op.unary.f32(i32 22, float %616)  ; Frc(value)
  %618 = fmul fast float %575, %539
  %619 = fmul fast float %617, %617
  %620 = fmul fast float %619, %618
  %621 = fsub fast float 1.000000e+00, %620
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %623 = fmul fast float %622, %537
  br label %624

; <label>:624                                     ; preds = %612, %536
  %625 = phi float [ %613, %612 ], [ %490, %536 ]
  %626 = phi float [ %614, %612 ], [ %491, %536 ]
  %627 = phi float [ %615, %612 ], [ %492, %536 ]
  %628 = phi float [ %623, %612 ], [ %537, %536 ]
  %629 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %630 = fcmp fast ogt float %629, 0.000000e+00
  br i1 %630, label %631, label %680, !dx.controlflow.hints !60

; <label>:631                                     ; preds = %624
  %632 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %633 = fmul fast float %629, %13
  %634 = fmul fast float %632, %14
  %635 = call float @dx.op.unary.f32(i32 85, float %633)  ; DerivFineX(value)
  %636 = call float @dx.op.unary.f32(i32 86, float %633)  ; DerivFineY(value)
  %637 = call float @dx.op.unary.f32(i32 85, float %634)  ; DerivFineX(value)
  %638 = call float @dx.op.unary.f32(i32 86, float %634)  ; DerivFineY(value)
  %639 = fmul fast float %638, %635
  %640 = fmul fast float %637, %636
  %641 = fsub fast float %639, %640
  %642 = fdiv fast float 1.000000e+00, %641
  %643 = fmul fast float %642, %638
  %644 = fmul fast float %642, %636
  %645 = fmul fast float %642, %637
  %646 = fmul fast float %642, %635
  %647 = fmul fast float %643, %643
  %648 = fmul fast float %645, %645
  %649 = fadd fast float %647, %648
  %650 = call float @dx.op.unary.f32(i32 24, float %649)  ; Sqrt(value)
  %651 = fmul fast float %644, %644
  %652 = fmul fast float %646, %646
  %653 = fadd fast float %651, %652
  %654 = call float @dx.op.unary.f32(i32 24, float %653)  ; Sqrt(value)
  %655 = fmul fast float %650, %633
  %656 = fmul fast float %654, %634
  %657 = fsub fast float %655, %650
  %658 = fsub fast float %656, %654
  %659 = fsub fast float -0.000000e+00, %655
  %660 = fsub fast float -0.000000e+00, %656
  %661 = call float @dx.op.binary.f32(i32 35, float %659, float %657)  ; FMax(a,b)
  %662 = call float @dx.op.binary.f32(i32 35, float %660, float %658)  ; FMax(a,b)
  %663 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %661)  ; FMax(a,b)
  %664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %662)  ; FMax(a,b)
  %665 = fmul fast float %663, %663
  %666 = fmul fast float %664, %664
  %667 = fadd fast float %666, %665
  %668 = call float @dx.op.unary.f32(i32 24, float %667)  ; Sqrt(value)
  %669 = call float @dx.op.binary.f32(i32 35, float %661, float %662)  ; FMax(a,b)
  %670 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %669)  ; FMin(a,b)
  %671 = fadd fast float %668, -1.000000e+00
  %672 = fadd fast float %671, %670
  %673 = fmul fast float %672, -5.000000e-01
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = fmul fast float %674, 2.000000e+00
  %676 = fsub fast float 3.000000e+00, %675
  %677 = fmul fast float %674, %674
  %678 = fmul fast float %677, %628
  %679 = fmul fast float %678, %676
  br label %680

; <label>:680                                     ; preds = %631, %624
  %681 = phi float [ %679, %631 ], [ %628, %624 ]
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 0
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %685 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %694 = fmul fast float %683, %625
  %695 = call float @dx.op.tertiary.f32(i32 46, float %684, float %626, float %694)  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float %685, float %627, float %695)  ; FMad(a,b,c)
  %697 = fmul fast float %687, %625
  %698 = call float @dx.op.tertiary.f32(i32 46, float %688, float %626, float %697)  ; FMad(a,b,c)
  %699 = call float @dx.op.tertiary.f32(i32 46, float %689, float %627, float %698)  ; FMad(a,b,c)
  %700 = fmul fast float %691, %625
  %701 = call float @dx.op.tertiary.f32(i32 46, float %692, float %626, float %700)  ; FMad(a,b,c)
  %702 = call float @dx.op.tertiary.f32(i32 46, float %693, float %627, float %701)  ; FMad(a,b,c)
  %703 = fmul fast float %696, %681
  %704 = fmul fast float %699, %681
  %705 = fmul fast float %702, %681
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %703)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %704)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %705)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %681)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!21}
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !12, !16}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 70, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{!13, !14, !15}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!15 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 112, null}
!16 = !{!17, !18, !19, !20}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!20 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!21 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15]}
!22 = !{void ()* @ps_main, !"ps_main", !23, !4, null}
!23 = !{!24, !43, null}
!24 = !{!25, !28, !30, !31, !33, !35, !37, !39, !41}
!25 = !{i32 0, !"SV_Position", i8 9, i8 3, !26, i8 4, i32 1, i8 4, i32 0, i8 0, !27}
!26 = !{i32 0}
!27 = !{i32 3, i32 3}
!28 = !{i32 1, !"COLOR", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 1, i8 0, !29}
!29 = !{i32 3, i32 15}
!30 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 2, i8 0, !27}
!31 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 2, i8 2, !27}
!32 = !{i32 2}
!33 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !34, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!34 = !{i32 3}
!35 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !36, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!36 = !{i32 4}
!37 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!38 = !{i32 5}
!39 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!40 = !{i32 6}
!41 = !{i32 8, !"TEXCOORD", i8 9, i8 0, !42, i8 2, i32 1, i8 2, i32 5, i8 0, !27}
!42 = !{i32 1}
!43 = !{!44}
!44 = !{i32 0, !"SV_Target", i8 9, i8 16, !26, i8 0, i32 1, i8 4, i32 0, i8 0, !29}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
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
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}

