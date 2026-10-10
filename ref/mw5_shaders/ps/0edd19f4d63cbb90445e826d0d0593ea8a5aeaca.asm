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
; shader hash: 2dececc884f49d3a6ed98c1da34c4a70
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s4     1
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
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %25 = fcmp fast ogt float %24, 0.000000e+00
  br i1 %25, label %26, label %76, !dx.controlflow.hints !43

; <label>:26                                      ; preds = %0
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %29 = fmul fast float %28, 1.000000e+01
  %30 = call float @dx.op.unary.f32(i32 27, float %29)  ; Round_ni(value)
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %34 = fmul fast float %32, %21
  %35 = fmul fast float %33, %22
  %36 = call float @dx.op.unary.f32(i32 27, float %34)  ; Round_ni(value)
  %37 = call float @dx.op.unary.f32(i32 27, float %35)  ; Round_ni(value)
  %38 = fmul fast float %30, 0x4002B851E0000000
  %39 = call float @dx.op.unary.f32(i32 22, float %38)  ; Frc(value)
  %40 = fadd fast float %39, 0x3FB99999A0000000
  %41 = fadd fast float %40, %36
  %42 = fadd fast float %40, %37
  %43 = fmul fast float %41, 0x3FE1BEDF00000000
  %44 = call float @dx.op.unary.f32(i32 22, float %43)  ; Frc(value)
  %45 = fmul fast float %41, %44
  %46 = fadd fast float %45, %42
  %47 = fmul fast float %42, 0x3FD3BEBE20000000
  %48 = call float @dx.op.unary.f32(i32 22, float %47)  ; Frc(value)
  %49 = fmul fast float %42, %48
  %50 = fadd fast float %49, %41
  %51 = fmul fast float %46, %50
  %52 = call float @dx.op.unary.f32(i32 22, float %51)  ; Frc(value)
  %53 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %54 = bitcast float %53 to i32
  %55 = and i32 %54, 255
  %56 = uitofp i32 %55 to float
  %57 = fmul fast float %52, 0x4085373340000000
  %58 = call float @dx.op.unary.f32(i32 22, float %57)  ; Frc(value)
  %59 = fmul fast float %56, 0x3F6CE9B6A0000000
  %60 = fcmp fast olt float %58, %59
  br i1 %60, label %61, label %76, !dx.controlflow.hints !44

; <label>:61                                      ; preds = %26
  %62 = fdiv fast float %58, %59
  %63 = fmul fast float %62, 2.000000e+00
  %64 = fadd fast float %63, -1.000000e+00
  %65 = lshr i32 %54, 8
  %66 = and i32 %65, 255
  %67 = uitofp i32 %66 to float
  %68 = call float @dx.op.unary.f32(i32 83, float %15)  ; DerivCoarseX(value)
  %69 = call float @dx.op.unary.f32(i32 83, float %16)  ; DerivCoarseX(value)
  %70 = fmul fast float %64, %68
  %71 = fmul fast float %70, %67
  %72 = fmul fast float %69, %64
  %73 = fmul fast float %72, %67
  %74 = fadd fast float %71, %15
  %75 = fadd fast float %73, %16
  br label %76

; <label>:76                                      ; preds = %61, %26, %0
  %77 = phi float [ %74, %61 ], [ %15, %26 ], [ %15, %0 ]
  %78 = phi float [ %75, %61 ], [ %16, %26 ], [ %16, %0 ]
  %79 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %9, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 3
  %81 = fmul fast float %80, %20
  %82 = fcmp fast ole float %17, 0x3FA4B5DCC0000000
  %83 = fmul fast float %17, 0x3FB3D07220000000
  %84 = fadd fast float %17, 0x3FAC28F5C0000000
  %85 = fmul fast float %84, 0x3FEE54EDE0000000
  %86 = call float @dx.op.unary.f32(i32 23, float %85)  ; Log(value)
  %87 = fmul fast float %86, 0x4003333340000000
  %88 = call float @dx.op.unary.f32(i32 21, float %87)  ; Exp(value)
  %89 = select i1 %82, float %83, float %88
  %90 = fcmp fast ole float %18, 0x3FA4B5DCC0000000
  %91 = fmul fast float %18, 0x3FB3D07220000000
  %92 = fadd fast float %18, 0x3FAC28F5C0000000
  %93 = fmul fast float %92, 0x3FEE54EDE0000000
  %94 = call float @dx.op.unary.f32(i32 23, float %93)  ; Log(value)
  %95 = fmul fast float %94, 0x4003333340000000
  %96 = call float @dx.op.unary.f32(i32 21, float %95)  ; Exp(value)
  %97 = select i1 %90, float %91, float %96
  %98 = fcmp fast ole float %19, 0x3FA4B5DCC0000000
  %99 = fmul fast float %19, 0x3FB3D07220000000
  %100 = fadd fast float %19, 0x3FAC28F5C0000000
  %101 = fmul fast float %100, 0x3FEE54EDE0000000
  %102 = call float @dx.op.unary.f32(i32 23, float %101)  ; Log(value)
  %103 = fmul fast float %102, 0x4003333340000000
  %104 = call float @dx.op.unary.f32(i32 21, float %103)  ; Exp(value)
  %105 = select i1 %98, float %99, float %104
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %108 = bitcast float %107 to i32
  %109 = and i32 %108, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %205, label %111

; <label>:111                                     ; preds = %76
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %114 = bitcast float %113 to i32
  %115 = and i32 %114, 65535
  %116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %115)  ; LegacyF16ToF32(value)
  %117 = lshr i32 %114, 16
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117)  ; LegacyF16ToF32(value)
  %119 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %120 = bitcast float %119 to i32
  %121 = and i32 %120, 65535
  %122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %121)  ; LegacyF16ToF32(value)
  %123 = lshr i32 %120, 16
  %124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %123)  ; LegacyF16ToF32(value)
  %125 = and i32 %108, 16
  %126 = icmp ne i32 %125, 0
  %127 = fcmp fast ogt float %116, 0.000000e+00
  %128 = fcmp fast ogt float %118, 0.000000e+00
  %129 = and i1 %127, %128
  %130 = fcmp fast ogt float %122, 0.000000e+00
  br i1 %129, label %131, label %191

; <label>:131                                     ; preds = %111
  br i1 %130, label %132, label %140

; <label>:132                                     ; preds = %131
  %133 = fmul fast float %118, %14
  %134 = fmul fast float %116, %13
  %135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %134, float %133, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 0
  %137 = fsub fast float 1.000000e+00, %136
  %138 = select i1 %126, float %137, float %136
  %139 = fmul fast float %138, %122
  br label %140

; <label>:140                                     ; preds = %132, %131
  %141 = phi float [ %139, %132 ], [ 0.000000e+00, %131 ]
  %142 = fadd fast float %141, %124
  %143 = call float @dx.op.unary.f32(i32 7, float %142)  ; Saturate(value)
  br i1 %130, label %144, label %154

; <label>:144                                     ; preds = %140
  %145 = fmul fast float %118, %14
  %146 = fsub fast float 1.000000e+00, %13
  %147 = fmul fast float %116, %146
  %148 = fsub fast float 1.000000e+00, %147
  %149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %148, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 1
  %151 = fsub fast float 1.000000e+00, %150
  %152 = select i1 %126, float %151, float %150
  %153 = fmul fast float %152, %122
  br label %154

; <label>:154                                     ; preds = %144, %140
  %155 = phi float [ %153, %144 ], [ 0.000000e+00, %140 ]
  %156 = fadd fast float %155, %124
  %157 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %158 = fmul fast float %157, %143
  br i1 %130, label %159, label %171

; <label>:159                                     ; preds = %154
  %160 = fsub fast float 1.000000e+00, %14
  %161 = fmul fast float %118, %160
  %162 = fsub fast float 1.000000e+00, %161
  %163 = fsub fast float 1.000000e+00, %13
  %164 = fmul fast float %116, %163
  %165 = fsub fast float 1.000000e+00, %164
  %166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %165, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 2
  %168 = fsub fast float 1.000000e+00, %167
  %169 = select i1 %126, float %168, float %167
  %170 = fmul fast float %169, %122
  br label %171

; <label>:171                                     ; preds = %159, %154
  %172 = phi float [ %170, %159 ], [ 0.000000e+00, %154 ]
  %173 = fadd fast float %172, %124
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = fmul fast float %158, %174
  br i1 %130, label %176, label %186

; <label>:176                                     ; preds = %171
  %177 = fsub fast float 1.000000e+00, %14
  %178 = fmul fast float %118, %177
  %179 = fsub fast float 1.000000e+00, %178
  %180 = fmul fast float %116, %13
  %181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %180, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 3
  %183 = fsub fast float 1.000000e+00, %182
  %184 = select i1 %126, float %183, float %182
  %185 = fmul fast float %184, %122
  br label %186

; <label>:186                                     ; preds = %176, %171
  %187 = phi float [ %185, %176 ], [ 0.000000e+00, %171 ]
  %188 = fadd fast float %187, %124
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fmul fast float %175, %189
  br label %202

; <label>:191                                     ; preds = %111
  br i1 %130, label %192, label %198

; <label>:192                                     ; preds = %191
  %193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fsub fast float 1.000000e+00, %194
  %196 = select i1 %126, float %195, float %194
  %197 = fmul fast float %196, %122
  br label %198

; <label>:198                                     ; preds = %192, %191
  %199 = phi float [ %197, %192 ], [ 0.000000e+00, %191 ]
  %200 = fadd fast float %199, %124
  %201 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  br label %202

; <label>:202                                     ; preds = %198, %186
  %203 = phi float [ %190, %186 ], [ %201, %198 ]
  %204 = fmul fast float %203, %81
  br label %205

; <label>:205                                     ; preds = %202, %76
  %206 = phi float [ %204, %202 ], [ %81, %76 ]
  %207 = call float @dx.op.binary.f32(i32 35, float %206, float 0.000000e+00)  ; FMax(a,b)
  %208 = fcmp fast oeq float %207, 0.000000e+00
  br i1 %208, label %209, label %210, !dx.controlflow.hints !45

; <label>:209                                     ; preds = %205
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %210

; <label>:210                                     ; preds = %209, %205
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = fcmp fast ogt float %212, 0.000000e+00
  br i1 %213, label %214, label %280, !dx.controlflow.hints !46

; <label>:214                                     ; preds = %210
  %215 = fcmp fast oeq float %212, 2.000000e+00
  br i1 %215, label %216, label %268, !dx.controlflow.hints !47

; <label>:216                                     ; preds = %214
  %217 = fcmp fast ole float %89, 0x3F69A5C380000000
  %218 = fcmp fast ole float %97, 0x3F69A5C380000000
  %219 = fcmp fast ole float %105, 0x3F69A5C380000000
  %220 = fmul fast float %89, 0x4029D70A40000000
  %221 = fmul fast float %97, 0x4029D70A40000000
  %222 = fmul fast float %105, 0x4029D70A40000000
  %223 = call float @dx.op.unary.f32(i32 23, float %89)  ; Log(value)
  %224 = call float @dx.op.unary.f32(i32 23, float %97)  ; Log(value)
  %225 = call float @dx.op.unary.f32(i32 23, float %105)  ; Log(value)
  %226 = fmul fast float %223, 0x3FDAAAAAA0000000
  %227 = fmul fast float %224, 0x3FDAAAAAA0000000
  %228 = fmul fast float %225, 0x3FDAAAAAA0000000
  %229 = call float @dx.op.unary.f32(i32 21, float %226)  ; Exp(value)
  %230 = call float @dx.op.unary.f32(i32 21, float %227)  ; Exp(value)
  %231 = call float @dx.op.unary.f32(i32 21, float %228)  ; Exp(value)
  %232 = fmul fast float %229, 0x3FF0E147A0000000
  %233 = fmul fast float %230, 0x3FF0E147A0000000
  %234 = fmul fast float %231, 0x3FF0E147A0000000
  %235 = fadd fast float %232, 0xBFAC28F5C0000000
  %236 = fadd fast float %233, 0xBFAC28F5C0000000
  %237 = fadd fast float %234, 0xBFAC28F5C0000000
  %238 = select i1 %217, float %220, float %235
  %239 = select i1 %218, float %221, float %236
  %240 = select i1 %219, float %222, float %237
  %241 = fsub fast float 1.000000e+00, %238
  %242 = fsub fast float 1.000000e+00, %239
  %243 = fsub fast float 1.000000e+00, %240
  %244 = fcmp fast ole float %241, 0x3FA4B5DCC0000000
  %245 = fmul fast float %241, 0x3FB3D07220000000
  %246 = fsub fast float 0x3FF0E147A0000000, %238
  %247 = fmul fast float %246, 0x3FEE54EDE0000000
  %248 = call float @dx.op.unary.f32(i32 23, float %247)  ; Log(value)
  %249 = fmul fast float %248, 0x4003333340000000
  %250 = call float @dx.op.unary.f32(i32 21, float %249)  ; Exp(value)
  %251 = select i1 %244, float %245, float %250
  %252 = fcmp fast ole float %242, 0x3FA4B5DCC0000000
  %253 = fmul fast float %242, 0x3FB3D07220000000
  %254 = fsub fast float 0x3FF0E147A0000000, %239
  %255 = fmul fast float %254, 0x3FEE54EDE0000000
  %256 = call float @dx.op.unary.f32(i32 23, float %255)  ; Log(value)
  %257 = fmul fast float %256, 0x4003333340000000
  %258 = call float @dx.op.unary.f32(i32 21, float %257)  ; Exp(value)
  %259 = select i1 %252, float %253, float %258
  %260 = fcmp fast ole float %243, 0x3FA4B5DCC0000000
  %261 = fmul fast float %243, 0x3FB3D07220000000
  %262 = fsub fast float 0x3FF0E147A0000000, %240
  %263 = fmul fast float %262, 0x3FEE54EDE0000000
  %264 = call float @dx.op.unary.f32(i32 23, float %263)  ; Log(value)
  %265 = fmul fast float %264, 0x4003333340000000
  %266 = call float @dx.op.unary.f32(i32 21, float %265)  ; Exp(value)
  %267 = select i1 %260, float %261, float %266
  br label %280

; <label>:268                                     ; preds = %214
  %269 = call float @dx.op.dot3.f32(i32 55, float %89, float %97, float %105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %270 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %271 = fsub fast float %89, %269
  %272 = fsub fast float %97, %269
  %273 = fsub fast float %105, %269
  %274 = fmul fast float %270, %271
  %275 = fmul fast float %270, %272
  %276 = fmul fast float %270, %273
  %277 = fadd fast float %274, %269
  %278 = fadd fast float %275, %269
  %279 = fadd fast float %276, %269
  br label %280

; <label>:280                                     ; preds = %268, %216, %210
  %281 = phi float [ %251, %216 ], [ %277, %268 ], [ %89, %210 ]
  %282 = phi float [ %259, %216 ], [ %278, %268 ], [ %97, %210 ]
  %283 = phi float [ %267, %216 ], [ %279, %268 ], [ %105, %210 ]
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 0
  %286 = fcmp fast une float %285, 0.000000e+00
  br i1 %286, label %287, label %461, !dx.controlflow.hints !48

; <label>:287                                     ; preds = %280
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %291 = fsub fast float %21, %289
  %292 = fsub fast float %22, %290
  %293 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %294 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %295 = fmul fast float %291, %293
  %296 = fmul fast float %292, %294
  %297 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %295, float %296, float undef, float undef, i32 0, i32 0, i32 undef, float %297)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.i32 %302, 3
  %304 = and i32 %303, 3
  %305 = icmp ne i32 %304, 0
  %306 = and i32 %303, 4
  %307 = icmp eq i32 %306, 0
  %308 = and i1 %305, %307
  br i1 %308, label %309, label %353

; <label>:309                                     ; preds = %287
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = fcmp fast oge float %300, %311
  %313 = zext i1 %312 to i32
  br i1 %312, label %314, label %353

; <label>:314                                     ; preds = %309
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %319 = fcmp fast ogt float %318, 0.000000e+00
  br i1 %319, label %320, label %328, !dx.controlflow.hints !49

; <label>:320                                     ; preds = %314
  %321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %300, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = extractvalue %dx.types.ResRet.f32 %321, 1
  %324 = extractvalue %dx.types.ResRet.f32 %321, 2
  %325 = fcmp fast ogt float %318, 1.500000e+00
  %326 = select i1 %325, float %322, float %323
  %327 = select i1 %325, float %322, float %324
  br label %346

; <label>:328                                     ; preds = %314
  %329 = call float @dx.op.unary.f32(i32 7, float %300)  ; Saturate(value)
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %315, 2
  %337 = fsub fast float %331, %334
  %338 = fsub fast float %332, %335
  %339 = fsub fast float %333, %336
  %340 = fmul fast float %337, %329
  %341 = fmul fast float %338, %329
  %342 = fmul fast float %339, %329
  %343 = fadd fast float %340, %334
  %344 = fadd fast float %341, %335
  %345 = fadd fast float %342, %336
  br label %346

; <label>:346                                     ; preds = %328, %320
  %347 = phi float [ %322, %320 ], [ %343, %328 ]
  %348 = phi float [ %326, %320 ], [ %344, %328 ]
  %349 = phi float [ %327, %320 ], [ %345, %328 ]
  %350 = fmul fast float %347, %316
  %351 = fmul fast float %348, %316
  %352 = fmul fast float %349, %316
  br label %353

; <label>:353                                     ; preds = %346, %309, %287
  %354 = phi float [ %350, %346 ], [ %299, %287 ], [ %299, %309 ]
  %355 = phi float [ %351, %346 ], [ %300, %287 ], [ %299, %309 ]
  %356 = phi float [ %352, %346 ], [ %301, %287 ], [ %299, %309 ]
  %357 = phi i32 [ %313, %346 ], [ 0, %287 ], [ %313, %309 ]
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %413

; <label>:359                                     ; preds = %353
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = call float @dx.op.dot3.f32(i32 55, float %354, float %355, float %356, float %361, float %362, float %363)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = call float @dx.op.dot3.f32(i32 55, float %354, float %355, float %356, float %366, float %367, float %368)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = call float @dx.op.dot3.f32(i32 55, float %354, float %355, float %356, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %377 = fmul fast float %376, %364
  %378 = fmul fast float %376, %369
  %379 = fmul fast float %376, %374
  %380 = fadd fast float %377, 9.765625e-04
  %381 = fadd fast float %378, 9.765625e-04
  %382 = fadd fast float %379, 9.765625e-04
  %383 = call float @dx.op.unary.f32(i32 23, float %380)  ; Log(value)
  %384 = call float @dx.op.unary.f32(i32 23, float %381)  ; Log(value)
  %385 = call float @dx.op.unary.f32(i32 23, float %382)  ; Log(value)
  %386 = fadd fast float %383, 1.000000e+01
  %387 = fadd fast float %384, 1.000000e+01
  %388 = fadd fast float %385, 1.000000e+01
  %389 = fmul fast float %386, 0x3FA99999A0000000
  %390 = fmul fast float %387, 0x3FA99999A0000000
  %391 = fmul fast float %388, 0x3FA99999A0000000
  %392 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %393 = call float @dx.op.unary.f32(i32 7, float %390)  ; Saturate(value)
  %394 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = fmul fast float %396, %392
  %400 = fmul fast float %397, %393
  %401 = fmul fast float %398, %394
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = fadd fast float %399, %403
  %407 = fadd fast float %400, %404
  %408 = fadd fast float %401, %405
  %409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %406, float %407, float %408, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  br label %413

; <label>:413                                     ; preds = %359, %353
  %414 = phi float [ %354, %353 ], [ %410, %359 ]
  %415 = phi float [ %355, %353 ], [ %411, %359 ]
  %416 = phi float [ %356, %353 ], [ %412, %359 ]
  %417 = fcmp fast ole float %414, 0x3FA4B5DCC0000000
  %418 = fmul fast float %414, 0x3FB3D07220000000
  %419 = fadd fast float %414, 0x3FAC28F5C0000000
  %420 = fmul fast float %419, 0x3FEE54EDE0000000
  %421 = call float @dx.op.unary.f32(i32 23, float %420)  ; Log(value)
  %422 = fmul fast float %421, 0x4003333340000000
  %423 = call float @dx.op.unary.f32(i32 21, float %422)  ; Exp(value)
  %424 = select i1 %417, float %418, float %423
  %425 = fcmp fast ole float %415, 0x3FA4B5DCC0000000
  %426 = fmul fast float %415, 0x3FB3D07220000000
  %427 = fadd fast float %415, 0x3FAC28F5C0000000
  %428 = fmul fast float %427, 0x3FEE54EDE0000000
  %429 = call float @dx.op.unary.f32(i32 23, float %428)  ; Log(value)
  %430 = fmul fast float %429, 0x4003333340000000
  %431 = call float @dx.op.unary.f32(i32 21, float %430)  ; Exp(value)
  %432 = select i1 %425, float %426, float %431
  %433 = fcmp fast ole float %416, 0x3FA4B5DCC0000000
  %434 = fmul fast float %416, 0x3FB3D07220000000
  %435 = fadd fast float %416, 0x3FAC28F5C0000000
  %436 = fmul fast float %435, 0x3FEE54EDE0000000
  %437 = call float @dx.op.unary.f32(i32 23, float %436)  ; Log(value)
  %438 = fmul fast float %437, 0x4003333340000000
  %439 = call float @dx.op.unary.f32(i32 21, float %438)  ; Exp(value)
  %440 = select i1 %433, float %434, float %439
  %441 = fcmp fast olt float %285, 0.000000e+00
  br i1 %441, label %442, label %454

; <label>:442                                     ; preds = %413
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 0
  %445 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %446 = extractvalue %dx.types.CBufRet.f32 %443, 2
  %447 = call float @dx.op.dot3.f32(i32 55, float %424, float %432, float %440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %448 = fsub fast float %447, %444
  %449 = fmul fast float %448, %445
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = fsub fast float 1.000000e+00, %446
  %452 = fmul fast float %450, %451
  %453 = fadd fast float %452, %446
  br label %454

; <label>:454                                     ; preds = %442, %413
  %455 = phi float [ %453, %442 ], [ %424, %413 ]
  %456 = phi float [ %453, %442 ], [ %432, %413 ]
  %457 = phi float [ %453, %442 ], [ %440, %413 ]
  %458 = fmul fast float %455, %281
  %459 = fmul fast float %456, %282
  %460 = fmul fast float %457, %283
  br label %461

; <label>:461                                     ; preds = %454, %280
  %462 = phi float [ %458, %454 ], [ %281, %280 ]
  %463 = phi float [ %459, %454 ], [ %282, %280 ]
  %464 = phi float [ %460, %454 ], [ %283, %280 ]
  %465 = extractvalue %dx.types.CBufRet.f32 %284, 1
  %466 = fcmp fast ogt float %465, 0.000000e+00
  br i1 %466, label %467, label %508, !dx.controlflow.hints !50

; <label>:467                                     ; preds = %461
  %468 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %469 = bitcast float %468 to i32
  %470 = and i32 %469, 255
  %471 = uitofp i32 %470 to float
  %472 = lshr i32 %469, 8
  %473 = and i32 %472, 255
  %474 = uitofp i32 %473 to float
  %475 = lshr i32 %469, 16
  %476 = and i32 %475, 255
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %477, 0x3F70101020000000
  %479 = lshr i32 %469, 24
  %480 = uitofp i32 %479 to float
  %481 = fmul fast float %480, 0x3F70101020000000
  %482 = fadd fast float %477, %471
  %483 = fmul fast float %482, 0x3F70101020000000
  %484 = fadd fast float %474, %480
  %485 = fmul fast float %484, 0x3F70101020000000
  %486 = fdiv fast float %21, %483
  %487 = fdiv fast float %22, %485
  %488 = fsub fast float -0.000000e+00, %486
  %489 = fsub fast float -0.000000e+00, %487
  %490 = fcmp fast oge float %486, %488
  %491 = fcmp fast oge float %487, %489
  %492 = call float @dx.op.unary.f32(i32 6, float %486)  ; FAbs(value)
  %493 = call float @dx.op.unary.f32(i32 6, float %487)  ; FAbs(value)
  %494 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %495 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %496 = fsub fast float -0.000000e+00, %494
  %497 = fsub fast float -0.000000e+00, %495
  %498 = select i1 %490, float %494, float %496
  %499 = select i1 %491, float %495, float %497
  %500 = fmul fast float %483, %498
  %501 = fmul fast float %499, %485
  %502 = fcmp fast olt float %500, %478
  %503 = fcmp fast olt float %501, %481
  %504 = or i1 %502, %503
  br i1 %504, label %505, label %508, !dx.controlflow.hints !51

; <label>:505                                     ; preds = %467
  %506 = fsub fast float 1.000000e+00, %465
  %507 = fmul fast float %506, %207
  br label %508

; <label>:508                                     ; preds = %505, %467, %461
  %509 = phi float [ %507, %505 ], [ %207, %467 ], [ %207, %461 ]
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 3
  %512 = fcmp fast ogt float %511, 0.000000e+00
  br i1 %512, label %513, label %596, !dx.controlflow.hints !52

; <label>:513                                     ; preds = %508
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %516 = extractvalue %dx.types.CBufRet.f32 %514, 3
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 3
  %519 = fmul fast float %518, 1.000000e+01
  %520 = call float @dx.op.unary.f32(i32 27, float %519)  ; Round_ni(value)
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %524 = fmul fast float %522, %21
  %525 = fmul fast float %523, %22
  %526 = call float @dx.op.unary.f32(i32 27, float %524)  ; Round_ni(value)
  %527 = call float @dx.op.unary.f32(i32 27, float %525)  ; Round_ni(value)
  %528 = fmul fast float %520, 0x4002B851E0000000
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = fadd fast float %529, 0x3FB99999A0000000
  %531 = fadd fast float %530, %526
  %532 = fadd fast float %530, %527
  %533 = fmul fast float %531, 0x3FE1BEDF00000000
  %534 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %535 = fmul fast float %531, %534
  %536 = fadd fast float %535, %532
  %537 = fmul fast float %532, 0x3FD3BEBE20000000
  %538 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %539 = fmul fast float %532, %538
  %540 = fadd fast float %539, %531
  %541 = fmul fast float %536, %540
  %542 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %543 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %544 = bitcast float %543 to i32
  %545 = and i32 %544, 255
  %546 = uitofp i32 %545 to float
  %547 = fmul fast float %546, 0x3F70101020000000
  %548 = fmul fast float %547, %515
  %549 = fcmp fast olt float %542, %548
  br i1 %549, label %550, label %557, !dx.controlflow.hints !53

; <label>:550                                     ; preds = %513
  %551 = fmul fast float %542, 0x4057091680000000
  %552 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %553 = fmul fast float %552, %462
  %554 = fmul fast float %552, %464
  %555 = fsub fast float 1.000000e+00, %552
  %556 = fmul fast float %555, %463
  br label %557

; <label>:557                                     ; preds = %550, %513
  %558 = phi float [ %553, %550 ], [ %462, %513 ]
  %559 = phi float [ %556, %550 ], [ %463, %513 ]
  %560 = phi float [ %554, %550 ], [ %464, %513 ]
  %561 = fmul fast float %542, 0x4028B0A3E0000000
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = fmul fast float %547, %516
  %564 = fcmp fast olt float %562, %563
  br i1 %564, label %565, label %584, !dx.controlflow.hints !54

; <label>:565                                     ; preds = %557
  %566 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %567 = fmul fast float %566, %21
  %568 = call float @dx.op.unary.f32(i32 27, float %567)  ; Round_ni(value)
  %569 = fmul fast float %568, 0x3FD5555560000000
  %570 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %571 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %573 = fcmp fast olt float %570, 0x3FD51EB860000000
  br i1 %573, label %577, label %574, !dx.controlflow.hints !55

; <label>:574                                     ; preds = %565
  %575 = fcmp fast olt float %570, 0x3FE51EB860000000
  br i1 %575, label %577, label %576, !dx.controlflow.hints !56

; <label>:576                                     ; preds = %574
  br label %577

; <label>:577                                     ; preds = %576, %574, %565
  %578 = phi float [ %571, %576 ], [ %572, %565 ], [ %571, %574 ]
  %579 = phi float [ %571, %576 ], [ %571, %565 ], [ %572, %574 ]
  %580 = phi float [ %572, %576 ], [ %571, %565 ], [ %571, %574 ]
  %581 = fmul fast float %578, %558
  %582 = fmul fast float %579, %559
  %583 = fmul fast float %580, %560
  br label %584

; <label>:584                                     ; preds = %577, %557
  %585 = phi float [ %581, %577 ], [ %558, %557 ]
  %586 = phi float [ %582, %577 ], [ %559, %557 ]
  %587 = phi float [ %583, %577 ], [ %560, %557 ]
  %588 = fmul fast float %542, 0x40223EF9E0000000
  %589 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %590 = fmul fast float %547, %511
  %591 = fmul fast float %589, %589
  %592 = fmul fast float %591, %590
  %593 = fsub fast float 1.000000e+00, %592
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %595 = fmul fast float %594, %509
  br label %596

; <label>:596                                     ; preds = %584, %508
  %597 = phi float [ %585, %584 ], [ %462, %508 ]
  %598 = phi float [ %586, %584 ], [ %463, %508 ]
  %599 = phi float [ %587, %584 ], [ %464, %508 ]
  %600 = phi float [ %595, %584 ], [ %509, %508 ]
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %604 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %609, 1
  %612 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %613 = fmul fast float %602, %597
  %614 = call float @dx.op.tertiary.f32(i32 46, float %603, float %598, float %613)  ; FMad(a,b,c)
  %615 = call float @dx.op.tertiary.f32(i32 46, float %604, float %599, float %614)  ; FMad(a,b,c)
  %616 = fmul fast float %606, %597
  %617 = call float @dx.op.tertiary.f32(i32 46, float %607, float %598, float %616)  ; FMad(a,b,c)
  %618 = call float @dx.op.tertiary.f32(i32 46, float %608, float %599, float %617)  ; FMad(a,b,c)
  %619 = fmul fast float %610, %597
  %620 = call float @dx.op.tertiary.f32(i32 46, float %611, float %598, float %619)  ; FMad(a,b,c)
  %621 = call float @dx.op.tertiary.f32(i32 46, float %612, float %599, float %620)  ; FMad(a,b,c)
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = bitcast float %623 to i32
  %625 = and i32 %624, 128
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %641, label %627

; <label>:627                                     ; preds = %596
  %628 = call float @dx.op.unary.f32(i32 24, float %615)  ; Sqrt(value)
  %629 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %630 = call float @dx.op.unary.f32(i32 24, float %621)  ; Sqrt(value)
  %631 = fmul fast float %628, 9.687500e-01
  %632 = fmul fast float %629, 9.687500e-01
  %633 = fmul fast float %630, 9.687500e-01
  %634 = fadd fast float %631, 1.562500e-02
  %635 = fadd fast float %632, 1.562500e-02
  %636 = fadd fast float %633, 1.562500e-02
  %637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %8, float %634, float %635, float %636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  br label %928

; <label>:641                                     ; preds = %596
  %642 = and i32 %624, 127
  switch i32 %642, label %928 [
    i32 1, label %643
    i32 2, label %643
    i32 0, label %643
    i32 3, label %673
    i32 4, label %794
  ]

; <label>:643                                     ; preds = %641, %641, %641
  %644 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %645 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %646 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %647 = call float @dx.op.unary.f32(i32 23, float %644)  ; Log(value)
  %648 = call float @dx.op.unary.f32(i32 23, float %645)  ; Log(value)
  %649 = call float @dx.op.unary.f32(i32 23, float %646)  ; Log(value)
  %650 = fmul fast float %647, 0x3FDAAAAAA0000000
  %651 = fmul fast float %648, 0x3FDAAAAAA0000000
  %652 = fmul fast float %649, 0x3FDAAAAAA0000000
  %653 = call float @dx.op.unary.f32(i32 21, float %650)  ; Exp(value)
  %654 = call float @dx.op.unary.f32(i32 21, float %651)  ; Exp(value)
  %655 = call float @dx.op.unary.f32(i32 21, float %652)  ; Exp(value)
  %656 = fmul fast float %653, 0x3FF0E147A0000000
  %657 = fmul fast float %654, 0x3FF0E147A0000000
  %658 = fmul fast float %655, 0x3FF0E147A0000000
  %659 = fadd fast float %656, 0xBFAC28F5C0000000
  %660 = fadd fast float %657, 0xBFAC28F5C0000000
  %661 = fadd fast float %658, 0xBFAC28F5C0000000
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %665 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %666 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %667 = fmul fast float %665, %662
  %668 = fmul fast float %665, %663
  %669 = fmul fast float %665, %664
  %670 = fadd fast float %667, %666
  %671 = fadd fast float %668, %666
  %672 = fadd fast float %669, %666
  br label %928

; <label>:673                                     ; preds = %641
  %674 = fmul fast float %615, 0x4163D57C00000000
  %675 = fmul fast float %618, 0x4163D57C00000000
  %676 = fmul fast float %621, 0x4163D57C00000000
  %677 = fadd fast float %674, 9.999980e+05
  %678 = fadd fast float %675, 9.999980e+05
  %679 = fadd fast float %676, 9.999980e+05
  %680 = fmul fast float %677, %615
  %681 = fmul fast float %678, %618
  %682 = fmul fast float %679, %621
  %683 = fadd fast float %680, 0xC0AFE17A60000000
  %684 = fadd fast float %681, 0xC0AFE17A60000000
  %685 = fadd fast float %682, 0xC0AFE17A60000000
  %686 = fmul fast float %683, %615
  %687 = fmul fast float %684, %618
  %688 = fmul fast float %685, %621
  %689 = fmul fast float %615, 0x40F753C340000000
  %690 = fmul fast float %618, 0x40F753C340000000
  %691 = fmul fast float %621, 0x40F753C340000000
  %692 = fsub fast float 9.999990e+06, %689
  %693 = fsub fast float 9.999990e+06, %690
  %694 = fsub fast float 9.999990e+06, %691
  %695 = fmul fast float %692, %615
  %696 = fmul fast float %693, %618
  %697 = fmul fast float %694, %621
  %698 = fadd fast float %695, 0x4136D1DD80000000
  %699 = fadd fast float %696, 0x4136D1DD80000000
  %700 = fadd fast float %697, 0x4136D1DD80000000
  %701 = fmul fast float %698, %615
  %702 = fmul fast float %699, %618
  %703 = fmul fast float %700, %621
  %704 = fadd fast float %701, 1.000000e+00
  %705 = fadd fast float %702, 1.000000e+00
  %706 = fadd fast float %703, 1.000000e+00
  %707 = fdiv fast float %686, %704
  %708 = fdiv fast float %687, %705
  %709 = fdiv fast float %688, %706
  %710 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %711 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %712 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %713 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %714 = fmul fast float %710, 0x3FE413A920000000
  %715 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %711, float %714)  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %712, float %715)  ; FMad(a,b,c)
  %717 = fmul fast float %710, 0x3FB1B089A0000000
  %718 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %711, float %717)  ; FMad(a,b,c)
  %719 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %712, float %718)  ; FMad(a,b,c)
  %720 = fmul fast float %710, 0x3F90CB2960000000
  %721 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %711, float %720)  ; FMad(a,b,c)
  %722 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %712, float %721)  ; FMad(a,b,c)
  %723 = fmul fast float %716, %713
  %724 = fmul fast float %719, %713
  %725 = fmul fast float %722, %713
  %726 = fmul fast float %723, 0x3F847AE140000000
  %727 = fmul fast float %724, 0x3F847AE140000000
  %728 = fmul fast float %725, 0x3F847AE140000000
  %729 = fmul fast float %723, 0x40B4D2F520000000
  %730 = fmul fast float %724, 0x40B4D2F520000000
  %731 = fmul fast float %725, 0x40B4D2F520000000
  %732 = fadd fast float %729, 0x41869ECF20000000
  %733 = fadd fast float %730, 0x41869ECF20000000
  %734 = fadd fast float %731, 0x41869ECF20000000
  %735 = fmul fast float %732, %726
  %736 = fmul fast float %733, %727
  %737 = fmul fast float %734, %728
  %738 = fadd fast float %735, 0x417BB79C60000000
  %739 = fadd fast float %736, 0x417BB79C60000000
  %740 = fadd fast float %737, 0x417BB79C60000000
  %741 = fmul fast float %738, %726
  %742 = fmul fast float %739, %727
  %743 = fmul fast float %740, %728
  %744 = fadd fast float %741, 0x41218DE180000000
  %745 = fadd fast float %742, 0x41218DE180000000
  %746 = fadd fast float %743, 0x41218DE180000000
  %747 = fmul fast float %744, %726
  %748 = fmul fast float %745, %727
  %749 = fmul fast float %746, %728
  %750 = fadd fast float %747, 0x4077F174E0000000
  %751 = fadd fast float %748, 0x4077F174E0000000
  %752 = fadd fast float %749, 0x4077F174E0000000
  %753 = fmul fast float %750, %726
  %754 = fmul fast float %751, %727
  %755 = fmul fast float %752, %728
  %756 = fadd fast float %753, 0x3F3FF79B80000000
  %757 = fadd fast float %754, 0x3F3FF79B80000000
  %758 = fadd fast float %755, 0x3F3FF79B80000000
  %759 = fmul fast float %723, 0x412442D320000000
  %760 = fmul fast float %724, 0x412442D320000000
  %761 = fmul fast float %725, 0x412442D320000000
  %762 = fadd fast float %759, 0x419385D5C0000000
  %763 = fadd fast float %760, 0x419385D5C0000000
  %764 = fadd fast float %761, 0x419385D5C0000000
  %765 = fmul fast float %762, %726
  %766 = fmul fast float %763, %727
  %767 = fmul fast float %764, %728
  %768 = fadd fast float %765, 4.182885e+06
  %769 = fadd fast float %766, 4.182885e+06
  %770 = fadd fast float %767, 4.182885e+06
  %771 = fmul fast float %768, %726
  %772 = fmul fast float %769, %727
  %773 = fmul fast float %770, %728
  %774 = fadd fast float %771, 0x40C4D633C0000000
  %775 = fadd fast float %772, 0x40C4D633C0000000
  %776 = fadd fast float %773, 0x40C4D633C0000000
  %777 = fmul fast float %774, %726
  %778 = fmul fast float %775, %727
  %779 = fmul fast float %776, %728
  %780 = fadd fast float %777, 1.000000e+00
  %781 = fadd fast float %778, 1.000000e+00
  %782 = fadd fast float %779, 1.000000e+00
  %783 = fdiv fast float %756, %780
  %784 = fdiv fast float %757, %781
  %785 = fdiv fast float %758, %782
  %786 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %787 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %788 = fmul fast float %786, %783
  %789 = fmul fast float %786, %784
  %790 = fmul fast float %786, %785
  %791 = fadd fast float %788, %787
  %792 = fadd fast float %789, %787
  %793 = fadd fast float %790, %787
  br label %928

; <label>:794                                     ; preds = %641
  %795 = fmul fast float %615, 0x4163D57C00000000
  %796 = fmul fast float %618, 0x4163D57C00000000
  %797 = fmul fast float %621, 0x4163D57C00000000
  %798 = fadd fast float %795, 9.999980e+05
  %799 = fadd fast float %796, 9.999980e+05
  %800 = fadd fast float %797, 9.999980e+05
  %801 = fmul fast float %798, %615
  %802 = fmul fast float %799, %618
  %803 = fmul fast float %800, %621
  %804 = fadd fast float %801, 0xC0AFE17A60000000
  %805 = fadd fast float %802, 0xC0AFE17A60000000
  %806 = fadd fast float %803, 0xC0AFE17A60000000
  %807 = fmul fast float %804, %615
  %808 = fmul fast float %805, %618
  %809 = fmul fast float %806, %621
  %810 = fmul fast float %615, 0x40F753C340000000
  %811 = fmul fast float %618, 0x40F753C340000000
  %812 = fmul fast float %621, 0x40F753C340000000
  %813 = fsub fast float 9.999990e+06, %810
  %814 = fsub fast float 9.999990e+06, %811
  %815 = fsub fast float 9.999990e+06, %812
  %816 = fmul fast float %813, %615
  %817 = fmul fast float %814, %618
  %818 = fmul fast float %815, %621
  %819 = fadd fast float %816, 0x4136D1DD80000000
  %820 = fadd fast float %817, 0x4136D1DD80000000
  %821 = fadd fast float %818, 0x4136D1DD80000000
  %822 = fmul fast float %819, %615
  %823 = fmul fast float %820, %618
  %824 = fmul fast float %821, %621
  %825 = fadd fast float %822, 1.000000e+00
  %826 = fadd fast float %823, 1.000000e+00
  %827 = fadd fast float %824, 1.000000e+00
  %828 = fdiv fast float %807, %825
  %829 = fdiv fast float %808, %826
  %830 = fdiv fast float %809, %827
  %831 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %832 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %833 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %834 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %835 = fmul fast float %831, 0x3FEA519BC0000000
  %836 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %832, float %835)  ; FMad(a,b,c)
  %837 = fmul fast float %831, 0x3FA0FED480000000
  %838 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %832, float %837)  ; FMad(a,b,c)
  %839 = fmul fast float %831, 0x3F917E1C00000000
  %840 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %832, float %839)  ; FMad(a,b,c)
  %841 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %833, float %840)  ; FMad(a,b,c)
  %842 = call float @dx.op.binary.f32(i32 35, float %831, float %832)  ; FMax(a,b)
  %843 = call float @dx.op.binary.f32(i32 35, float %842, float %833)  ; FMax(a,b)
  %844 = fadd fast float %843, -1.000000e+00
  %845 = fmul fast float %844, 2.500000e-01
  %846 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %847 = fsub fast float 1.000000e+00, %846
  %848 = fmul fast float %847, %836
  %849 = fmul fast float %847, %838
  %850 = fmul fast float %847, %841
  %851 = fmul fast float %846, %831
  %852 = fmul fast float %846, %832
  %853 = fmul fast float %846, %833
  %854 = fadd fast float %848, %851
  %855 = fadd fast float %849, %852
  %856 = fadd fast float %850, %853
  %857 = fmul fast float %854, %834
  %858 = fmul fast float %855, %834
  %859 = fmul fast float %856, %834
  %860 = fmul fast float %857, 0x3F847AE140000000
  %861 = fmul fast float %858, 0x3F847AE140000000
  %862 = fmul fast float %859, 0x3F847AE140000000
  %863 = fmul fast float %857, 0x40B4D2F520000000
  %864 = fmul fast float %858, 0x40B4D2F520000000
  %865 = fmul fast float %859, 0x40B4D2F520000000
  %866 = fadd fast float %863, 0x41869ECF20000000
  %867 = fadd fast float %864, 0x41869ECF20000000
  %868 = fadd fast float %865, 0x41869ECF20000000
  %869 = fmul fast float %866, %860
  %870 = fmul fast float %867, %861
  %871 = fmul fast float %868, %862
  %872 = fadd fast float %869, 0x417BB79C60000000
  %873 = fadd fast float %870, 0x417BB79C60000000
  %874 = fadd fast float %871, 0x417BB79C60000000
  %875 = fmul fast float %872, %860
  %876 = fmul fast float %873, %861
  %877 = fmul fast float %874, %862
  %878 = fadd fast float %875, 0x41218DE180000000
  %879 = fadd fast float %876, 0x41218DE180000000
  %880 = fadd fast float %877, 0x41218DE180000000
  %881 = fmul fast float %878, %860
  %882 = fmul fast float %879, %861
  %883 = fmul fast float %880, %862
  %884 = fadd fast float %881, 0x4077F174E0000000
  %885 = fadd fast float %882, 0x4077F174E0000000
  %886 = fadd fast float %883, 0x4077F174E0000000
  %887 = fmul fast float %884, %860
  %888 = fmul fast float %885, %861
  %889 = fmul fast float %886, %862
  %890 = fadd fast float %887, 0x3F3FF79B80000000
  %891 = fadd fast float %888, 0x3F3FF79B80000000
  %892 = fadd fast float %889, 0x3F3FF79B80000000
  %893 = fmul fast float %857, 0x412442D320000000
  %894 = fmul fast float %858, 0x412442D320000000
  %895 = fmul fast float %859, 0x412442D320000000
  %896 = fadd fast float %893, 0x419385D5C0000000
  %897 = fadd fast float %894, 0x419385D5C0000000
  %898 = fadd fast float %895, 0x419385D5C0000000
  %899 = fmul fast float %896, %860
  %900 = fmul fast float %897, %861
  %901 = fmul fast float %898, %862
  %902 = fadd fast float %899, 4.182885e+06
  %903 = fadd fast float %900, 4.182885e+06
  %904 = fadd fast float %901, 4.182885e+06
  %905 = fmul fast float %902, %860
  %906 = fmul fast float %903, %861
  %907 = fmul fast float %904, %862
  %908 = fadd fast float %905, 0x40C4D633C0000000
  %909 = fadd fast float %906, 0x40C4D633C0000000
  %910 = fadd fast float %907, 0x40C4D633C0000000
  %911 = fmul fast float %908, %860
  %912 = fmul fast float %909, %861
  %913 = fmul fast float %910, %862
  %914 = fadd fast float %911, 1.000000e+00
  %915 = fadd fast float %912, 1.000000e+00
  %916 = fadd fast float %913, 1.000000e+00
  %917 = fdiv fast float %890, %914
  %918 = fdiv fast float %891, %915
  %919 = fdiv fast float %892, %916
  %920 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %921 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %922 = fmul fast float %920, %917
  %923 = fmul fast float %920, %918
  %924 = fmul fast float %920, %919
  %925 = fadd fast float %922, %921
  %926 = fadd fast float %923, %921
  %927 = fadd fast float %924, %921
  br label %928

; <label>:928                                     ; preds = %794, %673, %643, %641, %627
  %929 = phi float [ %638, %627 ], [ %615, %641 ], [ %925, %794 ], [ %791, %673 ], [ %670, %643 ]
  %930 = phi float [ %639, %627 ], [ %618, %641 ], [ %926, %794 ], [ %792, %673 ], [ %671, %643 ]
  %931 = phi float [ %640, %627 ], [ %621, %641 ], [ %927, %794 ], [ %793, %673 ], [ %672, %643 ]
  %932 = fmul fast float %929, %600
  %933 = fmul fast float %930, %600
  %934 = fmul fast float %931, %600
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %933)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %934)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!21}
!dx.entryPoints = !{!22}

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
!17 = !{!18, !19, !20}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!21 = !{[22 x i32] [i32 20, i32 4, i32 15, i32 15, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!22 = !{void ()* @ps_main, !"ps_main", !23, !4, null}
!23 = !{!24, !41, null}
!24 = !{!25, !28, !30, !31, !33, !35, !37, !39}
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
!41 = !{!42}
!42 = !{i32 0, !"SV_Target", i8 9, i8 16, !26, i8 0, i32 1, i8 4, i32 0, i8 0, !29}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 1}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 1}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}

