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
; shader hash: 2098d371ec01c2dfaa5298dbe735317c
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
;   [80 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture     f32          2d      T1     t73,space2     1
;                                   texture     f32          2d      T2     t70,space2     1
;                                   texture     f32          2d      T3     t76,space2     1
;                                   texture     f32          2d      T4             t0     1
;                                   texture     f32          3d      T5     t71,space2     1
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 70, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %24 = fcmp fast ogt float %23, 0.000000e+00
  br i1 %24, label %25, label %75, !dx.controlflow.hints !42

; <label>:25                                      ; preds = %0
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %28 = fmul fast float %27, 1.000000e+01
  %29 = call float @dx.op.unary.f32(i32 27, float %28)  ; Round_ni(value)
  %30 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.f32 %30, 0
  %32 = extractvalue %dx.types.CBufRet.f32 %30, 1
  %33 = fmul fast float %31, %20
  %34 = fmul fast float %32, %21
  %35 = call float @dx.op.unary.f32(i32 27, float %33)  ; Round_ni(value)
  %36 = call float @dx.op.unary.f32(i32 27, float %34)  ; Round_ni(value)
  %37 = fmul fast float %29, 0x4002B851E0000000
  %38 = call float @dx.op.unary.f32(i32 22, float %37)  ; Frc(value)
  %39 = fadd fast float %38, 0x3FB99999A0000000
  %40 = fadd fast float %39, %35
  %41 = fadd fast float %39, %36
  %42 = fmul fast float %40, 0x3FE1BEDF00000000
  %43 = call float @dx.op.unary.f32(i32 22, float %42)  ; Frc(value)
  %44 = fmul fast float %40, %43
  %45 = fadd fast float %44, %41
  %46 = fmul fast float %41, 0x3FD3BEBE20000000
  %47 = call float @dx.op.unary.f32(i32 22, float %46)  ; Frc(value)
  %48 = fmul fast float %41, %47
  %49 = fadd fast float %48, %40
  %50 = fmul fast float %45, %49
  %51 = call float @dx.op.unary.f32(i32 22, float %50)  ; Frc(value)
  %52 = extractvalue %dx.types.CBufRet.f32 %30, 3
  %53 = bitcast float %52 to i32
  %54 = and i32 %53, 255
  %55 = uitofp i32 %54 to float
  %56 = fmul fast float %51, 0x4085373340000000
  %57 = call float @dx.op.unary.f32(i32 22, float %56)  ; Frc(value)
  %58 = fmul fast float %55, 0x3F6CE9B6A0000000
  %59 = fcmp fast olt float %57, %58
  br i1 %59, label %60, label %75, !dx.controlflow.hints !43

; <label>:60                                      ; preds = %25
  %61 = fdiv fast float %57, %58
  %62 = fmul fast float %61, 2.000000e+00
  %63 = fadd fast float %62, -1.000000e+00
  %64 = lshr i32 %53, 8
  %65 = and i32 %64, 255
  %66 = uitofp i32 %65 to float
  %67 = call float @dx.op.unary.f32(i32 83, float %14)  ; DerivCoarseX(value)
  %68 = call float @dx.op.unary.f32(i32 83, float %15)  ; DerivCoarseX(value)
  %69 = fmul fast float %63, %67
  %70 = fmul fast float %69, %66
  %71 = fmul fast float %68, %63
  %72 = fmul fast float %71, %66
  %73 = fadd fast float %70, %14
  %74 = fadd fast float %72, %15
  br label %75

; <label>:75                                      ; preds = %60, %25, %0
  %76 = phi float [ %73, %60 ], [ %14, %25 ], [ %14, %0 ]
  %77 = phi float [ %74, %60 ], [ %15, %25 ], [ %15, %0 ]
  %78 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 3
  %80 = fmul fast float %79, 2.000000e+00
  %81 = fadd fast float %80, -1.000000e+00
  %82 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %83 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  %84 = fmul fast float %82, %82
  %85 = fmul fast float %83, %83
  %86 = fadd fast float %85, %84
  %87 = call float @dx.op.unary.f32(i32 24, float %86)  ; Sqrt(value)
  %88 = fmul fast float %87, 2.000000e+00
  %89 = fadd fast float %87, %81
  %90 = fdiv fast float %89, %88
  %91 = call float @dx.op.unary.f32(i32 7, float %90)  ; Saturate(value)
  %92 = fmul fast float %91, 2.000000e+00
  %93 = fsub fast float 3.000000e+00, %92
  %94 = fmul fast float %91, %91
  %95 = fmul fast float %94, %19
  %96 = fmul fast float %95, %93
  %97 = fcmp fast ole float %16, 0x3FA4B5DCC0000000
  %98 = fmul fast float %16, 0x3FB3D07220000000
  %99 = fadd fast float %16, 0x3FAC28F5C0000000
  %100 = fmul fast float %99, 0x3FEE54EDE0000000
  %101 = call float @dx.op.unary.f32(i32 23, float %100)  ; Log(value)
  %102 = fmul fast float %101, 0x4003333340000000
  %103 = call float @dx.op.unary.f32(i32 21, float %102)  ; Exp(value)
  %104 = select i1 %97, float %98, float %103
  %105 = fcmp fast ole float %17, 0x3FA4B5DCC0000000
  %106 = fmul fast float %17, 0x3FB3D07220000000
  %107 = fadd fast float %17, 0x3FAC28F5C0000000
  %108 = fmul fast float %107, 0x3FEE54EDE0000000
  %109 = call float @dx.op.unary.f32(i32 23, float %108)  ; Log(value)
  %110 = fmul fast float %109, 0x4003333340000000
  %111 = call float @dx.op.unary.f32(i32 21, float %110)  ; Exp(value)
  %112 = select i1 %105, float %106, float %111
  %113 = fcmp fast ole float %18, 0x3FA4B5DCC0000000
  %114 = fmul fast float %18, 0x3FB3D07220000000
  %115 = fadd fast float %18, 0x3FAC28F5C0000000
  %116 = fmul fast float %115, 0x3FEE54EDE0000000
  %117 = call float @dx.op.unary.f32(i32 23, float %116)  ; Log(value)
  %118 = fmul fast float %117, 0x4003333340000000
  %119 = call float @dx.op.unary.f32(i32 21, float %118)  ; Exp(value)
  %120 = select i1 %113, float %114, float %119
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %123 = bitcast float %122 to i32
  %124 = and i32 %123, 512
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %220, label %126

; <label>:126                                     ; preds = %75
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %129 = bitcast float %128 to i32
  %130 = and i32 %129, 65535
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = lshr i32 %129, 16
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132)  ; LegacyF16ToF32(value)
  %134 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %135 = bitcast float %134 to i32
  %136 = and i32 %135, 65535
  %137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %136)  ; LegacyF16ToF32(value)
  %138 = lshr i32 %135, 16
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = and i32 %123, 16
  %141 = icmp ne i32 %140, 0
  %142 = fcmp fast ogt float %131, 0.000000e+00
  %143 = fcmp fast ogt float %133, 0.000000e+00
  %144 = and i1 %142, %143
  %145 = fcmp fast ogt float %137, 0.000000e+00
  br i1 %144, label %146, label %206

; <label>:146                                     ; preds = %126
  br i1 %145, label %147, label %155

; <label>:147                                     ; preds = %146
  %148 = fmul fast float %133, %13
  %149 = fmul fast float %131, %12
  %150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %149, float %148, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fsub fast float 1.000000e+00, %151
  %153 = select i1 %141, float %152, float %151
  %154 = fmul fast float %153, %137
  br label %155

; <label>:155                                     ; preds = %147, %146
  %156 = phi float [ %154, %147 ], [ 0.000000e+00, %146 ]
  %157 = fadd fast float %156, %139
  %158 = call float @dx.op.unary.f32(i32 7, float %157)  ; Saturate(value)
  br i1 %145, label %159, label %169

; <label>:159                                     ; preds = %155
  %160 = fmul fast float %133, %13
  %161 = fsub fast float 1.000000e+00, %12
  %162 = fmul fast float %131, %161
  %163 = fsub fast float 1.000000e+00, %162
  %164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %163, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 1
  %166 = fsub fast float 1.000000e+00, %165
  %167 = select i1 %141, float %166, float %165
  %168 = fmul fast float %167, %137
  br label %169

; <label>:169                                     ; preds = %159, %155
  %170 = phi float [ %168, %159 ], [ 0.000000e+00, %155 ]
  %171 = fadd fast float %170, %139
  %172 = call float @dx.op.unary.f32(i32 7, float %171)  ; Saturate(value)
  %173 = fmul fast float %172, %158
  br i1 %145, label %174, label %186

; <label>:174                                     ; preds = %169
  %175 = fsub fast float 1.000000e+00, %13
  %176 = fmul fast float %133, %175
  %177 = fsub fast float 1.000000e+00, %176
  %178 = fsub fast float 1.000000e+00, %12
  %179 = fmul fast float %131, %178
  %180 = fsub fast float 1.000000e+00, %179
  %181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %180, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 2
  %183 = fsub fast float 1.000000e+00, %182
  %184 = select i1 %141, float %183, float %182
  %185 = fmul fast float %184, %137
  br label %186

; <label>:186                                     ; preds = %174, %169
  %187 = phi float [ %185, %174 ], [ 0.000000e+00, %169 ]
  %188 = fadd fast float %187, %139
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fmul fast float %173, %189
  br i1 %145, label %191, label %201

; <label>:191                                     ; preds = %186
  %192 = fsub fast float 1.000000e+00, %13
  %193 = fmul fast float %133, %192
  %194 = fsub fast float 1.000000e+00, %193
  %195 = fmul fast float %131, %12
  %196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %195, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 3
  %198 = fsub fast float 1.000000e+00, %197
  %199 = select i1 %141, float %198, float %197
  %200 = fmul fast float %199, %137
  br label %201

; <label>:201                                     ; preds = %191, %186
  %202 = phi float [ %200, %191 ], [ 0.000000e+00, %186 ]
  %203 = fadd fast float %202, %139
  %204 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %205 = fmul fast float %190, %204
  br label %217

; <label>:206                                     ; preds = %126
  br i1 %145, label %207, label %213

; <label>:207                                     ; preds = %206
  %208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fsub fast float 1.000000e+00, %209
  %211 = select i1 %141, float %210, float %209
  %212 = fmul fast float %211, %137
  br label %213

; <label>:213                                     ; preds = %207, %206
  %214 = phi float [ %212, %207 ], [ 0.000000e+00, %206 ]
  %215 = fadd fast float %214, %139
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  br label %217

; <label>:217                                     ; preds = %213, %201
  %218 = phi float [ %205, %201 ], [ %216, %213 ]
  %219 = fmul fast float %218, %96
  br label %220

; <label>:220                                     ; preds = %217, %75
  %221 = phi float [ %219, %217 ], [ %96, %75 ]
  %222 = call float @dx.op.binary.f32(i32 35, float %221, float 0.000000e+00)  ; FMax(a,b)
  %223 = fcmp fast oeq float %222, 0.000000e+00
  br i1 %223, label %224, label %225, !dx.controlflow.hints !44

; <label>:224                                     ; preds = %220
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %225

; <label>:225                                     ; preds = %224, %220
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = fcmp fast ogt float %227, 0.000000e+00
  br i1 %228, label %229, label %295, !dx.controlflow.hints !45

; <label>:229                                     ; preds = %225
  %230 = fcmp fast oeq float %227, 2.000000e+00
  br i1 %230, label %231, label %283, !dx.controlflow.hints !46

; <label>:231                                     ; preds = %229
  %232 = fcmp fast ole float %104, 0x3F69A5C380000000
  %233 = fcmp fast ole float %112, 0x3F69A5C380000000
  %234 = fcmp fast ole float %120, 0x3F69A5C380000000
  %235 = fmul fast float %104, 0x4029D70A40000000
  %236 = fmul fast float %112, 0x4029D70A40000000
  %237 = fmul fast float %120, 0x4029D70A40000000
  %238 = call float @dx.op.unary.f32(i32 23, float %104)  ; Log(value)
  %239 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %240 = call float @dx.op.unary.f32(i32 23, float %120)  ; Log(value)
  %241 = fmul fast float %238, 0x3FDAAAAAA0000000
  %242 = fmul fast float %239, 0x3FDAAAAAA0000000
  %243 = fmul fast float %240, 0x3FDAAAAAA0000000
  %244 = call float @dx.op.unary.f32(i32 21, float %241)  ; Exp(value)
  %245 = call float @dx.op.unary.f32(i32 21, float %242)  ; Exp(value)
  %246 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %247 = fmul fast float %244, 0x3FF0E147A0000000
  %248 = fmul fast float %245, 0x3FF0E147A0000000
  %249 = fmul fast float %246, 0x3FF0E147A0000000
  %250 = fadd fast float %247, 0xBFAC28F5C0000000
  %251 = fadd fast float %248, 0xBFAC28F5C0000000
  %252 = fadd fast float %249, 0xBFAC28F5C0000000
  %253 = select i1 %232, float %235, float %250
  %254 = select i1 %233, float %236, float %251
  %255 = select i1 %234, float %237, float %252
  %256 = fsub fast float 1.000000e+00, %253
  %257 = fsub fast float 1.000000e+00, %254
  %258 = fsub fast float 1.000000e+00, %255
  %259 = fcmp fast ole float %256, 0x3FA4B5DCC0000000
  %260 = fmul fast float %256, 0x3FB3D07220000000
  %261 = fsub fast float 0x3FF0E147A0000000, %253
  %262 = fmul fast float %261, 0x3FEE54EDE0000000
  %263 = call float @dx.op.unary.f32(i32 23, float %262)  ; Log(value)
  %264 = fmul fast float %263, 0x4003333340000000
  %265 = call float @dx.op.unary.f32(i32 21, float %264)  ; Exp(value)
  %266 = select i1 %259, float %260, float %265
  %267 = fcmp fast ole float %257, 0x3FA4B5DCC0000000
  %268 = fmul fast float %257, 0x3FB3D07220000000
  %269 = fsub fast float 0x3FF0E147A0000000, %254
  %270 = fmul fast float %269, 0x3FEE54EDE0000000
  %271 = call float @dx.op.unary.f32(i32 23, float %270)  ; Log(value)
  %272 = fmul fast float %271, 0x4003333340000000
  %273 = call float @dx.op.unary.f32(i32 21, float %272)  ; Exp(value)
  %274 = select i1 %267, float %268, float %273
  %275 = fcmp fast ole float %258, 0x3FA4B5DCC0000000
  %276 = fmul fast float %258, 0x3FB3D07220000000
  %277 = fsub fast float 0x3FF0E147A0000000, %255
  %278 = fmul fast float %277, 0x3FEE54EDE0000000
  %279 = call float @dx.op.unary.f32(i32 23, float %278)  ; Log(value)
  %280 = fmul fast float %279, 0x4003333340000000
  %281 = call float @dx.op.unary.f32(i32 21, float %280)  ; Exp(value)
  %282 = select i1 %275, float %276, float %281
  br label %295

; <label>:283                                     ; preds = %229
  %284 = call float @dx.op.dot3.f32(i32 55, float %104, float %112, float %120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %285 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %286 = fsub fast float %104, %284
  %287 = fsub fast float %112, %284
  %288 = fsub fast float %120, %284
  %289 = fmul fast float %285, %286
  %290 = fmul fast float %285, %287
  %291 = fmul fast float %285, %288
  %292 = fadd fast float %289, %284
  %293 = fadd fast float %290, %284
  %294 = fadd fast float %291, %284
  br label %295

; <label>:295                                     ; preds = %283, %231, %225
  %296 = phi float [ %266, %231 ], [ %292, %283 ], [ %104, %225 ]
  %297 = phi float [ %274, %231 ], [ %293, %283 ], [ %112, %225 ]
  %298 = phi float [ %282, %231 ], [ %294, %283 ], [ %120, %225 ]
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = fcmp fast une float %300, 0.000000e+00
  br i1 %301, label %302, label %476, !dx.controlflow.hints !47

; <label>:302                                     ; preds = %295
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = fsub fast float %20, %304
  %307 = fsub fast float %21, %305
  %308 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %309 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %310 = fmul fast float %306, %308
  %311 = fmul fast float %307, %309
  %312 = call float @dx.op.unary.f32(i32 6, float %300)  ; FAbs(value)
  %313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %310, float %311, float undef, float undef, i32 0, i32 0, i32 undef, float %312)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = extractvalue %dx.types.ResRet.f32 %313, 1
  %316 = extractvalue %dx.types.ResRet.f32 %313, 2
  %317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.i32 %317, 3
  %319 = and i32 %318, 3
  %320 = icmp ne i32 %319, 0
  %321 = and i32 %318, 4
  %322 = icmp eq i32 %321, 0
  %323 = and i1 %320, %322
  br i1 %323, label %324, label %368

; <label>:324                                     ; preds = %302
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = fcmp fast oge float %315, %326
  %328 = zext i1 %327 to i32
  br i1 %327, label %329, label %368

; <label>:329                                     ; preds = %324
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 3
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %334 = fcmp fast ogt float %333, 0.000000e+00
  br i1 %334, label %335, label %343, !dx.controlflow.hints !48

; <label>:335                                     ; preds = %329
  %336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %315, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = fcmp fast ogt float %333, 1.500000e+00
  %341 = select i1 %340, float %337, float %338
  %342 = select i1 %340, float %337, float %339
  br label %361

; <label>:343                                     ; preds = %329
  %344 = call float @dx.op.unary.f32(i32 7, float %315)  ; Saturate(value)
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %352 = fsub fast float %346, %349
  %353 = fsub fast float %347, %350
  %354 = fsub fast float %348, %351
  %355 = fmul fast float %352, %344
  %356 = fmul fast float %353, %344
  %357 = fmul fast float %354, %344
  %358 = fadd fast float %355, %349
  %359 = fadd fast float %356, %350
  %360 = fadd fast float %357, %351
  br label %361

; <label>:361                                     ; preds = %343, %335
  %362 = phi float [ %337, %335 ], [ %358, %343 ]
  %363 = phi float [ %341, %335 ], [ %359, %343 ]
  %364 = phi float [ %342, %335 ], [ %360, %343 ]
  %365 = fmul fast float %362, %331
  %366 = fmul fast float %363, %331
  %367 = fmul fast float %364, %331
  br label %368

; <label>:368                                     ; preds = %361, %324, %302
  %369 = phi float [ %365, %361 ], [ %314, %302 ], [ %314, %324 ]
  %370 = phi float [ %366, %361 ], [ %315, %302 ], [ %314, %324 ]
  %371 = phi float [ %367, %361 ], [ %316, %302 ], [ %314, %324 ]
  %372 = phi i32 [ %328, %361 ], [ 0, %302 ], [ %328, %324 ]
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %428

; <label>:374                                     ; preds = %368
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %379 = call float @dx.op.dot3.f32(i32 55, float %369, float %370, float %371, float %376, float %377, float %378)  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %384 = call float @dx.op.dot3.f32(i32 55, float %369, float %370, float %371, float %381, float %382, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %388 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %389 = call float @dx.op.dot3.f32(i32 55, float %369, float %370, float %371, float %386, float %387, float %388)  ; Dot3(ax,ay,az,bx,by,bz)
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %392 = fmul fast float %391, %379
  %393 = fmul fast float %391, %384
  %394 = fmul fast float %391, %389
  %395 = fadd fast float %392, 9.765625e-04
  %396 = fadd fast float %393, 9.765625e-04
  %397 = fadd fast float %394, 9.765625e-04
  %398 = call float @dx.op.unary.f32(i32 23, float %395)  ; Log(value)
  %399 = call float @dx.op.unary.f32(i32 23, float %396)  ; Log(value)
  %400 = call float @dx.op.unary.f32(i32 23, float %397)  ; Log(value)
  %401 = fadd fast float %398, 1.000000e+01
  %402 = fadd fast float %399, 1.000000e+01
  %403 = fadd fast float %400, 1.000000e+01
  %404 = fmul fast float %401, 0x3FA99999A0000000
  %405 = fmul fast float %402, 0x3FA99999A0000000
  %406 = fmul fast float %403, 0x3FA99999A0000000
  %407 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %408 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %409 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %414 = fmul fast float %411, %407
  %415 = fmul fast float %412, %408
  %416 = fmul fast float %413, %409
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %421 = fadd fast float %414, %418
  %422 = fadd fast float %415, %419
  %423 = fadd fast float %416, %420
  %424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %421, float %422, float %423, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  br label %428

; <label>:428                                     ; preds = %374, %368
  %429 = phi float [ %369, %368 ], [ %425, %374 ]
  %430 = phi float [ %370, %368 ], [ %426, %374 ]
  %431 = phi float [ %371, %368 ], [ %427, %374 ]
  %432 = fcmp fast ole float %429, 0x3FA4B5DCC0000000
  %433 = fmul fast float %429, 0x3FB3D07220000000
  %434 = fadd fast float %429, 0x3FAC28F5C0000000
  %435 = fmul fast float %434, 0x3FEE54EDE0000000
  %436 = call float @dx.op.unary.f32(i32 23, float %435)  ; Log(value)
  %437 = fmul fast float %436, 0x4003333340000000
  %438 = call float @dx.op.unary.f32(i32 21, float %437)  ; Exp(value)
  %439 = select i1 %432, float %433, float %438
  %440 = fcmp fast ole float %430, 0x3FA4B5DCC0000000
  %441 = fmul fast float %430, 0x3FB3D07220000000
  %442 = fadd fast float %430, 0x3FAC28F5C0000000
  %443 = fmul fast float %442, 0x3FEE54EDE0000000
  %444 = call float @dx.op.unary.f32(i32 23, float %443)  ; Log(value)
  %445 = fmul fast float %444, 0x4003333340000000
  %446 = call float @dx.op.unary.f32(i32 21, float %445)  ; Exp(value)
  %447 = select i1 %440, float %441, float %446
  %448 = fcmp fast ole float %431, 0x3FA4B5DCC0000000
  %449 = fmul fast float %431, 0x3FB3D07220000000
  %450 = fadd fast float %431, 0x3FAC28F5C0000000
  %451 = fmul fast float %450, 0x3FEE54EDE0000000
  %452 = call float @dx.op.unary.f32(i32 23, float %451)  ; Log(value)
  %453 = fmul fast float %452, 0x4003333340000000
  %454 = call float @dx.op.unary.f32(i32 21, float %453)  ; Exp(value)
  %455 = select i1 %448, float %449, float %454
  %456 = fcmp fast olt float %300, 0.000000e+00
  br i1 %456, label %457, label %469

; <label>:457                                     ; preds = %428
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = call float @dx.op.dot3.f32(i32 55, float %439, float %447, float %455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %463 = fsub fast float %462, %459
  %464 = fmul fast float %463, %460
  %465 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %466 = fsub fast float 1.000000e+00, %461
  %467 = fmul fast float %465, %466
  %468 = fadd fast float %467, %461
  br label %469

; <label>:469                                     ; preds = %457, %428
  %470 = phi float [ %468, %457 ], [ %439, %428 ]
  %471 = phi float [ %468, %457 ], [ %447, %428 ]
  %472 = phi float [ %468, %457 ], [ %455, %428 ]
  %473 = fmul fast float %470, %296
  %474 = fmul fast float %471, %297
  %475 = fmul fast float %472, %298
  br label %476

; <label>:476                                     ; preds = %469, %295
  %477 = phi float [ %473, %469 ], [ %296, %295 ]
  %478 = phi float [ %474, %469 ], [ %297, %295 ]
  %479 = phi float [ %475, %469 ], [ %298, %295 ]
  %480 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %481 = fcmp fast ogt float %480, 0.000000e+00
  br i1 %481, label %482, label %523, !dx.controlflow.hints !49

; <label>:482                                     ; preds = %476
  %483 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %484 = bitcast float %483 to i32
  %485 = and i32 %484, 255
  %486 = uitofp i32 %485 to float
  %487 = lshr i32 %484, 8
  %488 = and i32 %487, 255
  %489 = uitofp i32 %488 to float
  %490 = lshr i32 %484, 16
  %491 = and i32 %490, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = lshr i32 %484, 24
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %495, 0x3F70101020000000
  %497 = fadd fast float %492, %486
  %498 = fmul fast float %497, 0x3F70101020000000
  %499 = fadd fast float %489, %495
  %500 = fmul fast float %499, 0x3F70101020000000
  %501 = fdiv fast float %20, %498
  %502 = fdiv fast float %21, %500
  %503 = fsub fast float -0.000000e+00, %501
  %504 = fsub fast float -0.000000e+00, %502
  %505 = fcmp fast oge float %501, %503
  %506 = fcmp fast oge float %502, %504
  %507 = call float @dx.op.unary.f32(i32 6, float %501)  ; FAbs(value)
  %508 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  %509 = call float @dx.op.unary.f32(i32 22, float %507)  ; Frc(value)
  %510 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %511 = fsub fast float -0.000000e+00, %509
  %512 = fsub fast float -0.000000e+00, %510
  %513 = select i1 %505, float %509, float %511
  %514 = select i1 %506, float %510, float %512
  %515 = fmul fast float %498, %513
  %516 = fmul fast float %514, %500
  %517 = fcmp fast olt float %515, %493
  %518 = fcmp fast olt float %516, %496
  %519 = or i1 %517, %518
  br i1 %519, label %520, label %523, !dx.controlflow.hints !50

; <label>:520                                     ; preds = %482
  %521 = fsub fast float 1.000000e+00, %480
  %522 = fmul fast float %521, %222
  br label %523

; <label>:523                                     ; preds = %520, %482, %476
  %524 = phi float [ %522, %520 ], [ %222, %482 ], [ %222, %476 ]
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 3
  %527 = fcmp fast ogt float %526, 0.000000e+00
  br i1 %527, label %528, label %611, !dx.controlflow.hints !51

; <label>:528                                     ; preds = %523
  %529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.f32 %529, 2
  %531 = extractvalue %dx.types.CBufRet.f32 %529, 3
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 3
  %534 = fmul fast float %533, 1.000000e+01
  %535 = call float @dx.op.unary.f32(i32 27, float %534)  ; Round_ni(value)
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 0
  %538 = extractvalue %dx.types.CBufRet.f32 %536, 1
  %539 = fmul fast float %537, %20
  %540 = fmul fast float %538, %21
  %541 = call float @dx.op.unary.f32(i32 27, float %539)  ; Round_ni(value)
  %542 = call float @dx.op.unary.f32(i32 27, float %540)  ; Round_ni(value)
  %543 = fmul fast float %535, 0x4002B851E0000000
  %544 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %545 = fadd fast float %544, 0x3FB99999A0000000
  %546 = fadd fast float %545, %541
  %547 = fadd fast float %545, %542
  %548 = fmul fast float %546, 0x3FE1BEDF00000000
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = fmul fast float %546, %549
  %551 = fadd fast float %550, %547
  %552 = fmul fast float %547, 0x3FD3BEBE20000000
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = fmul fast float %547, %553
  %555 = fadd fast float %554, %546
  %556 = fmul fast float %551, %555
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = extractvalue %dx.types.CBufRet.f32 %536, 3
  %559 = bitcast float %558 to i32
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101020000000
  %563 = fmul fast float %562, %530
  %564 = fcmp fast olt float %557, %563
  br i1 %564, label %565, label %572, !dx.controlflow.hints !52

; <label>:565                                     ; preds = %528
  %566 = fmul fast float %557, 0x4057091680000000
  %567 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %568 = fmul fast float %567, %477
  %569 = fmul fast float %567, %479
  %570 = fsub fast float 1.000000e+00, %567
  %571 = fmul fast float %570, %478
  br label %572

; <label>:572                                     ; preds = %565, %528
  %573 = phi float [ %568, %565 ], [ %477, %528 ]
  %574 = phi float [ %571, %565 ], [ %478, %528 ]
  %575 = phi float [ %569, %565 ], [ %479, %528 ]
  %576 = fmul fast float %557, 0x4028B0A3E0000000
  %577 = call float @dx.op.unary.f32(i32 22, float %576)  ; Frc(value)
  %578 = fmul fast float %562, %531
  %579 = fcmp fast olt float %577, %578
  br i1 %579, label %580, label %599, !dx.controlflow.hints !53

; <label>:580                                     ; preds = %572
  %581 = extractvalue %dx.types.CBufRet.f32 %536, 2
  %582 = fmul fast float %581, %20
  %583 = call float @dx.op.unary.f32(i32 27, float %582)  ; Round_ni(value)
  %584 = fmul fast float %583, 0x3FD5555560000000
  %585 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %586 = extractvalue %dx.types.CBufRet.f32 %529, 0
  %587 = extractvalue %dx.types.CBufRet.f32 %529, 1
  %588 = fcmp fast olt float %585, 0x3FD51EB860000000
  br i1 %588, label %592, label %589, !dx.controlflow.hints !54

; <label>:589                                     ; preds = %580
  %590 = fcmp fast olt float %585, 0x3FE51EB860000000
  br i1 %590, label %592, label %591, !dx.controlflow.hints !55

; <label>:591                                     ; preds = %589
  br label %592

; <label>:592                                     ; preds = %591, %589, %580
  %593 = phi float [ %586, %591 ], [ %587, %580 ], [ %586, %589 ]
  %594 = phi float [ %586, %591 ], [ %586, %580 ], [ %587, %589 ]
  %595 = phi float [ %587, %591 ], [ %586, %580 ], [ %586, %589 ]
  %596 = fmul fast float %593, %573
  %597 = fmul fast float %594, %574
  %598 = fmul fast float %595, %575
  br label %599

; <label>:599                                     ; preds = %592, %572
  %600 = phi float [ %596, %592 ], [ %573, %572 ]
  %601 = phi float [ %597, %592 ], [ %574, %572 ]
  %602 = phi float [ %598, %592 ], [ %575, %572 ]
  %603 = fmul fast float %557, 0x40223EF9E0000000
  %604 = call float @dx.op.unary.f32(i32 22, float %603)  ; Frc(value)
  %605 = fmul fast float %562, %526
  %606 = fmul fast float %604, %604
  %607 = fmul fast float %606, %605
  %608 = fsub fast float 1.000000e+00, %607
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = fmul fast float %609, %524
  br label %611

; <label>:611                                     ; preds = %599, %523
  %612 = phi float [ %600, %599 ], [ %477, %523 ]
  %613 = phi float [ %601, %599 ], [ %478, %523 ]
  %614 = phi float [ %602, %599 ], [ %479, %523 ]
  %615 = phi float [ %610, %599 ], [ %524, %523 ]
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %623 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %628 = fmul fast float %617, %612
  %629 = call float @dx.op.tertiary.f32(i32 46, float %618, float %613, float %628)  ; FMad(a,b,c)
  %630 = call float @dx.op.tertiary.f32(i32 46, float %619, float %614, float %629)  ; FMad(a,b,c)
  %631 = fmul fast float %621, %612
  %632 = call float @dx.op.tertiary.f32(i32 46, float %622, float %613, float %631)  ; FMad(a,b,c)
  %633 = call float @dx.op.tertiary.f32(i32 46, float %623, float %614, float %632)  ; FMad(a,b,c)
  %634 = fmul fast float %625, %612
  %635 = call float @dx.op.tertiary.f32(i32 46, float %626, float %613, float %634)  ; FMad(a,b,c)
  %636 = call float @dx.op.tertiary.f32(i32 46, float %627, float %614, float %635)  ; FMad(a,b,c)
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = bitcast float %638 to i32
  %640 = and i32 %639, 128
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %656, label %642

; <label>:642                                     ; preds = %611
  %643 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %644 = call float @dx.op.unary.f32(i32 24, float %633)  ; Sqrt(value)
  %645 = call float @dx.op.unary.f32(i32 24, float %636)  ; Sqrt(value)
  %646 = fmul fast float %643, 9.687500e-01
  %647 = fmul fast float %644, 9.687500e-01
  %648 = fmul fast float %645, 9.687500e-01
  %649 = fadd fast float %646, 1.562500e-02
  %650 = fadd fast float %647, 1.562500e-02
  %651 = fadd fast float %648, 1.562500e-02
  %652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %8, float %649, float %650, float %651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = extractvalue %dx.types.ResRet.f32 %652, 2
  br label %943

; <label>:656                                     ; preds = %611
  %657 = and i32 %639, 127
  switch i32 %657, label %943 [
    i32 1, label %658
    i32 2, label %658
    i32 0, label %658
    i32 3, label %688
    i32 4, label %809
  ]

; <label>:658                                     ; preds = %656, %656, %656
  %659 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %660 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %661 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 23, float %659)  ; Log(value)
  %663 = call float @dx.op.unary.f32(i32 23, float %660)  ; Log(value)
  %664 = call float @dx.op.unary.f32(i32 23, float %661)  ; Log(value)
  %665 = fmul fast float %662, 0x3FDAAAAAA0000000
  %666 = fmul fast float %663, 0x3FDAAAAAA0000000
  %667 = fmul fast float %664, 0x3FDAAAAAA0000000
  %668 = call float @dx.op.unary.f32(i32 21, float %665)  ; Exp(value)
  %669 = call float @dx.op.unary.f32(i32 21, float %666)  ; Exp(value)
  %670 = call float @dx.op.unary.f32(i32 21, float %667)  ; Exp(value)
  %671 = fmul fast float %668, 0x3FF0E147A0000000
  %672 = fmul fast float %669, 0x3FF0E147A0000000
  %673 = fmul fast float %670, 0x3FF0E147A0000000
  %674 = fadd fast float %671, 0xBFAC28F5C0000000
  %675 = fadd fast float %672, 0xBFAC28F5C0000000
  %676 = fadd fast float %673, 0xBFAC28F5C0000000
  %677 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %678 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %679 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %680 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %681 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %682 = fmul fast float %680, %677
  %683 = fmul fast float %680, %678
  %684 = fmul fast float %680, %679
  %685 = fadd fast float %682, %681
  %686 = fadd fast float %683, %681
  %687 = fadd fast float %684, %681
  br label %943

; <label>:688                                     ; preds = %656
  %689 = fmul fast float %630, 0x4163D57C00000000
  %690 = fmul fast float %633, 0x4163D57C00000000
  %691 = fmul fast float %636, 0x4163D57C00000000
  %692 = fadd fast float %689, 9.999980e+05
  %693 = fadd fast float %690, 9.999980e+05
  %694 = fadd fast float %691, 9.999980e+05
  %695 = fmul fast float %692, %630
  %696 = fmul fast float %693, %633
  %697 = fmul fast float %694, %636
  %698 = fadd fast float %695, 0xC0AFE17A60000000
  %699 = fadd fast float %696, 0xC0AFE17A60000000
  %700 = fadd fast float %697, 0xC0AFE17A60000000
  %701 = fmul fast float %698, %630
  %702 = fmul fast float %699, %633
  %703 = fmul fast float %700, %636
  %704 = fmul fast float %630, 0x40F753C340000000
  %705 = fmul fast float %633, 0x40F753C340000000
  %706 = fmul fast float %636, 0x40F753C340000000
  %707 = fsub fast float 9.999990e+06, %704
  %708 = fsub fast float 9.999990e+06, %705
  %709 = fsub fast float 9.999990e+06, %706
  %710 = fmul fast float %707, %630
  %711 = fmul fast float %708, %633
  %712 = fmul fast float %709, %636
  %713 = fadd fast float %710, 0x4136D1DD80000000
  %714 = fadd fast float %711, 0x4136D1DD80000000
  %715 = fadd fast float %712, 0x4136D1DD80000000
  %716 = fmul fast float %713, %630
  %717 = fmul fast float %714, %633
  %718 = fmul fast float %715, %636
  %719 = fadd fast float %716, 1.000000e+00
  %720 = fadd fast float %717, 1.000000e+00
  %721 = fadd fast float %718, 1.000000e+00
  %722 = fdiv fast float %701, %719
  %723 = fdiv fast float %702, %720
  %724 = fdiv fast float %703, %721
  %725 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %726 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %728 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %729 = fmul fast float %725, 0x3FE413A920000000
  %730 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %726, float %729)  ; FMad(a,b,c)
  %731 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %727, float %730)  ; FMad(a,b,c)
  %732 = fmul fast float %725, 0x3FB1B089A0000000
  %733 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %726, float %732)  ; FMad(a,b,c)
  %734 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %727, float %733)  ; FMad(a,b,c)
  %735 = fmul fast float %725, 0x3F90CB2960000000
  %736 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %726, float %735)  ; FMad(a,b,c)
  %737 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %727, float %736)  ; FMad(a,b,c)
  %738 = fmul fast float %731, %728
  %739 = fmul fast float %734, %728
  %740 = fmul fast float %737, %728
  %741 = fmul fast float %738, 0x3F847AE140000000
  %742 = fmul fast float %739, 0x3F847AE140000000
  %743 = fmul fast float %740, 0x3F847AE140000000
  %744 = fmul fast float %738, 0x40B4D2F520000000
  %745 = fmul fast float %739, 0x40B4D2F520000000
  %746 = fmul fast float %740, 0x40B4D2F520000000
  %747 = fadd fast float %744, 0x41869ECF20000000
  %748 = fadd fast float %745, 0x41869ECF20000000
  %749 = fadd fast float %746, 0x41869ECF20000000
  %750 = fmul fast float %747, %741
  %751 = fmul fast float %748, %742
  %752 = fmul fast float %749, %743
  %753 = fadd fast float %750, 0x417BB79C60000000
  %754 = fadd fast float %751, 0x417BB79C60000000
  %755 = fadd fast float %752, 0x417BB79C60000000
  %756 = fmul fast float %753, %741
  %757 = fmul fast float %754, %742
  %758 = fmul fast float %755, %743
  %759 = fadd fast float %756, 0x41218DE180000000
  %760 = fadd fast float %757, 0x41218DE180000000
  %761 = fadd fast float %758, 0x41218DE180000000
  %762 = fmul fast float %759, %741
  %763 = fmul fast float %760, %742
  %764 = fmul fast float %761, %743
  %765 = fadd fast float %762, 0x4077F174E0000000
  %766 = fadd fast float %763, 0x4077F174E0000000
  %767 = fadd fast float %764, 0x4077F174E0000000
  %768 = fmul fast float %765, %741
  %769 = fmul fast float %766, %742
  %770 = fmul fast float %767, %743
  %771 = fadd fast float %768, 0x3F3FF79B80000000
  %772 = fadd fast float %769, 0x3F3FF79B80000000
  %773 = fadd fast float %770, 0x3F3FF79B80000000
  %774 = fmul fast float %738, 0x412442D320000000
  %775 = fmul fast float %739, 0x412442D320000000
  %776 = fmul fast float %740, 0x412442D320000000
  %777 = fadd fast float %774, 0x419385D5C0000000
  %778 = fadd fast float %775, 0x419385D5C0000000
  %779 = fadd fast float %776, 0x419385D5C0000000
  %780 = fmul fast float %777, %741
  %781 = fmul fast float %778, %742
  %782 = fmul fast float %779, %743
  %783 = fadd fast float %780, 4.182885e+06
  %784 = fadd fast float %781, 4.182885e+06
  %785 = fadd fast float %782, 4.182885e+06
  %786 = fmul fast float %783, %741
  %787 = fmul fast float %784, %742
  %788 = fmul fast float %785, %743
  %789 = fadd fast float %786, 0x40C4D633C0000000
  %790 = fadd fast float %787, 0x40C4D633C0000000
  %791 = fadd fast float %788, 0x40C4D633C0000000
  %792 = fmul fast float %789, %741
  %793 = fmul fast float %790, %742
  %794 = fmul fast float %791, %743
  %795 = fadd fast float %792, 1.000000e+00
  %796 = fadd fast float %793, 1.000000e+00
  %797 = fadd fast float %794, 1.000000e+00
  %798 = fdiv fast float %771, %795
  %799 = fdiv fast float %772, %796
  %800 = fdiv fast float %773, %797
  %801 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %802 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %803 = fmul fast float %801, %798
  %804 = fmul fast float %801, %799
  %805 = fmul fast float %801, %800
  %806 = fadd fast float %803, %802
  %807 = fadd fast float %804, %802
  %808 = fadd fast float %805, %802
  br label %943

; <label>:809                                     ; preds = %656
  %810 = fmul fast float %630, 0x4163D57C00000000
  %811 = fmul fast float %633, 0x4163D57C00000000
  %812 = fmul fast float %636, 0x4163D57C00000000
  %813 = fadd fast float %810, 9.999980e+05
  %814 = fadd fast float %811, 9.999980e+05
  %815 = fadd fast float %812, 9.999980e+05
  %816 = fmul fast float %813, %630
  %817 = fmul fast float %814, %633
  %818 = fmul fast float %815, %636
  %819 = fadd fast float %816, 0xC0AFE17A60000000
  %820 = fadd fast float %817, 0xC0AFE17A60000000
  %821 = fadd fast float %818, 0xC0AFE17A60000000
  %822 = fmul fast float %819, %630
  %823 = fmul fast float %820, %633
  %824 = fmul fast float %821, %636
  %825 = fmul fast float %630, 0x40F753C340000000
  %826 = fmul fast float %633, 0x40F753C340000000
  %827 = fmul fast float %636, 0x40F753C340000000
  %828 = fsub fast float 9.999990e+06, %825
  %829 = fsub fast float 9.999990e+06, %826
  %830 = fsub fast float 9.999990e+06, %827
  %831 = fmul fast float %828, %630
  %832 = fmul fast float %829, %633
  %833 = fmul fast float %830, %636
  %834 = fadd fast float %831, 0x4136D1DD80000000
  %835 = fadd fast float %832, 0x4136D1DD80000000
  %836 = fadd fast float %833, 0x4136D1DD80000000
  %837 = fmul fast float %834, %630
  %838 = fmul fast float %835, %633
  %839 = fmul fast float %836, %636
  %840 = fadd fast float %837, 1.000000e+00
  %841 = fadd fast float %838, 1.000000e+00
  %842 = fadd fast float %839, 1.000000e+00
  %843 = fdiv fast float %822, %840
  %844 = fdiv fast float %823, %841
  %845 = fdiv fast float %824, %842
  %846 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %847 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  %848 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %849 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %850 = fmul fast float %846, 0x3FEA519BC0000000
  %851 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %847, float %850)  ; FMad(a,b,c)
  %852 = fmul fast float %846, 0x3FA0FED480000000
  %853 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %847, float %852)  ; FMad(a,b,c)
  %854 = fmul fast float %846, 0x3F917E1C00000000
  %855 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %847, float %854)  ; FMad(a,b,c)
  %856 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %848, float %855)  ; FMad(a,b,c)
  %857 = call float @dx.op.binary.f32(i32 35, float %846, float %847)  ; FMax(a,b)
  %858 = call float @dx.op.binary.f32(i32 35, float %857, float %848)  ; FMax(a,b)
  %859 = fadd fast float %858, -1.000000e+00
  %860 = fmul fast float %859, 2.500000e-01
  %861 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %862 = fsub fast float 1.000000e+00, %861
  %863 = fmul fast float %862, %851
  %864 = fmul fast float %862, %853
  %865 = fmul fast float %862, %856
  %866 = fmul fast float %861, %846
  %867 = fmul fast float %861, %847
  %868 = fmul fast float %861, %848
  %869 = fadd fast float %863, %866
  %870 = fadd fast float %864, %867
  %871 = fadd fast float %865, %868
  %872 = fmul fast float %869, %849
  %873 = fmul fast float %870, %849
  %874 = fmul fast float %871, %849
  %875 = fmul fast float %872, 0x3F847AE140000000
  %876 = fmul fast float %873, 0x3F847AE140000000
  %877 = fmul fast float %874, 0x3F847AE140000000
  %878 = fmul fast float %872, 0x40B4D2F520000000
  %879 = fmul fast float %873, 0x40B4D2F520000000
  %880 = fmul fast float %874, 0x40B4D2F520000000
  %881 = fadd fast float %878, 0x41869ECF20000000
  %882 = fadd fast float %879, 0x41869ECF20000000
  %883 = fadd fast float %880, 0x41869ECF20000000
  %884 = fmul fast float %881, %875
  %885 = fmul fast float %882, %876
  %886 = fmul fast float %883, %877
  %887 = fadd fast float %884, 0x417BB79C60000000
  %888 = fadd fast float %885, 0x417BB79C60000000
  %889 = fadd fast float %886, 0x417BB79C60000000
  %890 = fmul fast float %887, %875
  %891 = fmul fast float %888, %876
  %892 = fmul fast float %889, %877
  %893 = fadd fast float %890, 0x41218DE180000000
  %894 = fadd fast float %891, 0x41218DE180000000
  %895 = fadd fast float %892, 0x41218DE180000000
  %896 = fmul fast float %893, %875
  %897 = fmul fast float %894, %876
  %898 = fmul fast float %895, %877
  %899 = fadd fast float %896, 0x4077F174E0000000
  %900 = fadd fast float %897, 0x4077F174E0000000
  %901 = fadd fast float %898, 0x4077F174E0000000
  %902 = fmul fast float %899, %875
  %903 = fmul fast float %900, %876
  %904 = fmul fast float %901, %877
  %905 = fadd fast float %902, 0x3F3FF79B80000000
  %906 = fadd fast float %903, 0x3F3FF79B80000000
  %907 = fadd fast float %904, 0x3F3FF79B80000000
  %908 = fmul fast float %872, 0x412442D320000000
  %909 = fmul fast float %873, 0x412442D320000000
  %910 = fmul fast float %874, 0x412442D320000000
  %911 = fadd fast float %908, 0x419385D5C0000000
  %912 = fadd fast float %909, 0x419385D5C0000000
  %913 = fadd fast float %910, 0x419385D5C0000000
  %914 = fmul fast float %911, %875
  %915 = fmul fast float %912, %876
  %916 = fmul fast float %913, %877
  %917 = fadd fast float %914, 4.182885e+06
  %918 = fadd fast float %915, 4.182885e+06
  %919 = fadd fast float %916, 4.182885e+06
  %920 = fmul fast float %917, %875
  %921 = fmul fast float %918, %876
  %922 = fmul fast float %919, %877
  %923 = fadd fast float %920, 0x40C4D633C0000000
  %924 = fadd fast float %921, 0x40C4D633C0000000
  %925 = fadd fast float %922, 0x40C4D633C0000000
  %926 = fmul fast float %923, %875
  %927 = fmul fast float %924, %876
  %928 = fmul fast float %925, %877
  %929 = fadd fast float %926, 1.000000e+00
  %930 = fadd fast float %927, 1.000000e+00
  %931 = fadd fast float %928, 1.000000e+00
  %932 = fdiv fast float %905, %929
  %933 = fdiv fast float %906, %930
  %934 = fdiv fast float %907, %931
  %935 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %936 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %937 = fmul fast float %935, %932
  %938 = fmul fast float %935, %933
  %939 = fmul fast float %935, %934
  %940 = fadd fast float %937, %936
  %941 = fadd fast float %938, %936
  %942 = fadd fast float %939, %936
  br label %943

; <label>:943                                     ; preds = %809, %688, %658, %656, %642
  %944 = phi float [ %653, %642 ], [ %630, %656 ], [ %940, %809 ], [ %806, %688 ], [ %685, %658 ]
  %945 = phi float [ %654, %642 ], [ %633, %656 ], [ %941, %809 ], [ %807, %688 ], [ %686, %658 ]
  %946 = phi float [ %655, %642 ], [ %636, %656 ], [ %942, %809 ], [ %808, %688 ], [ %687, %658 ]
  %947 = fmul fast float %944, %615
  %948 = fmul fast float %945, %615
  %949 = fmul fast float %946, %615
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %947)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %949)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %615)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!20}
!dx.entryPoints = !{!21}

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
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 320, null}
!16 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 80, null}
!17 = !{!18, !19}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!20 = !{[22 x i32] [i32 20, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!21 = !{void ()* @ps_main, !"ps_main", !22, !4, null}
!22 = !{!23, !40, null}
!23 = !{!24, !27, !29, !30, !32, !34, !36, !38}
!24 = !{i32 0, !"SV_Position", i8 9, i8 3, !25, i8 4, i32 1, i8 4, i32 0, i8 0, !26}
!25 = !{i32 0}
!26 = !{i32 3, i32 3}
!27 = !{i32 1, !"COLOR", i8 9, i8 0, !25, i8 2, i32 1, i8 4, i32 1, i8 0, !28}
!28 = !{i32 3, i32 15}
!29 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !25, i8 2, i32 1, i8 2, i32 2, i8 0, !26}
!30 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !31, i8 2, i32 1, i8 2, i32 2, i8 2, !26}
!31 = !{i32 2}
!32 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !33, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!33 = !{i32 3}
!34 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!35 = !{i32 4}
!36 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 4, i8 0, null}
!37 = !{i32 5}
!38 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 4, i8 2, null}
!39 = !{i32 6}
!40 = !{!41}
!41 = !{i32 0, !"SV_Target", i8 9, i8 16, !25, i8 0, i32 1, i8 4, i32 0, i8 0, !28}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}

