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
; shader hash: 38f3118a6978817817625fcae634f58d
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
;   [144 x i8] (type annotation not present)
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %95 = fmul fast float %94, %93
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = fcmp fast une float %106, %107
  br i1 %108, label %109, label %126

; <label>:109                                     ; preds = %75
  %110 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %111 = fadd fast float %110, %76
  %112 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %113 = fadd fast float %112, %77
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %111, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 3
  %116 = fmul fast float %115, 2.000000e+00
  %117 = fadd fast float %116, -1.000000e+00
  %118 = fsub fast float %107, %106
  %119 = fsub fast float %117, %106
  %120 = fdiv fast float %119, %118
  %121 = call float @dx.op.unary.f32(i32 7, float %120)  ; Saturate(value)
  %122 = fmul fast float %121, 2.000000e+00
  %123 = fsub fast float 3.000000e+00, %122
  %124 = fmul fast float %121, %121
  %125 = fmul fast float %124, %123
  br label %126

; <label>:126                                     ; preds = %109, %75
  %127 = phi float [ %125, %109 ], [ 0.000000e+00, %75 ]
  %128 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %129 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %130 = fcmp fast une float %128, %129
  br i1 %130, label %131, label %140

; <label>:131                                     ; preds = %126
  %132 = fsub fast float %129, %128
  %133 = fsub fast float %81, %128
  %134 = fdiv fast float %133, %132
  %135 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %136 = fmul fast float %135, 2.000000e+00
  %137 = fsub fast float 3.000000e+00, %136
  %138 = fmul fast float %135, %135
  %139 = fmul fast float %138, %137
  br label %140

; <label>:140                                     ; preds = %131, %126
  %141 = phi float [ %139, %131 ], [ 0.000000e+00, %126 ]
  %142 = fsub fast float %101, %97
  %143 = fsub fast float %102, %98
  %144 = fsub fast float %103, %99
  %145 = fmul fast float %141, %142
  %146 = fmul fast float %141, %143
  %147 = fmul fast float %141, %144
  %148 = fadd fast float %145, %97
  %149 = fadd fast float %146, %98
  %150 = fadd fast float %147, %99
  %151 = fsub fast float %16, %148
  %152 = fsub fast float %17, %149
  %153 = fsub fast float %18, %150
  %154 = fmul fast float %151, %95
  %155 = fmul fast float %152, %95
  %156 = fmul fast float %153, %95
  %157 = fadd fast float %154, %148
  %158 = fadd fast float %155, %149
  %159 = fadd fast float %156, %150
  %160 = fsub fast float %141, %127
  %161 = fmul fast float %160, %141
  %162 = fadd fast float %161, %127
  %163 = fsub fast float %95, %162
  %164 = fmul fast float %163, %95
  %165 = fadd fast float %164, %162
  %166 = fmul fast float %165, %19
  %167 = fcmp fast ole float %157, 0x3FA4B5DCC0000000
  %168 = fmul fast float %157, 0x3FB3D07220000000
  %169 = fadd fast float %157, 0x3FAC28F5C0000000
  %170 = fmul fast float %169, 0x3FEE54EDE0000000
  %171 = call float @dx.op.unary.f32(i32 23, float %170)  ; Log(value)
  %172 = fmul fast float %171, 0x4003333340000000
  %173 = call float @dx.op.unary.f32(i32 21, float %172)  ; Exp(value)
  %174 = select i1 %167, float %168, float %173
  %175 = fcmp fast ole float %158, 0x3FA4B5DCC0000000
  %176 = fmul fast float %158, 0x3FB3D07220000000
  %177 = fadd fast float %158, 0x3FAC28F5C0000000
  %178 = fmul fast float %177, 0x3FEE54EDE0000000
  %179 = call float @dx.op.unary.f32(i32 23, float %178)  ; Log(value)
  %180 = fmul fast float %179, 0x4003333340000000
  %181 = call float @dx.op.unary.f32(i32 21, float %180)  ; Exp(value)
  %182 = select i1 %175, float %176, float %181
  %183 = fcmp fast ole float %159, 0x3FA4B5DCC0000000
  %184 = fmul fast float %159, 0x3FB3D07220000000
  %185 = fadd fast float %159, 0x3FAC28F5C0000000
  %186 = fmul fast float %185, 0x3FEE54EDE0000000
  %187 = call float @dx.op.unary.f32(i32 23, float %186)  ; Log(value)
  %188 = fmul fast float %187, 0x4003333340000000
  %189 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %190 = select i1 %183, float %184, float %189
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %193 = bitcast float %192 to i32
  %194 = and i32 %193, 512
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %290, label %196

; <label>:196                                     ; preds = %140
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %199 = bitcast float %198 to i32
  %200 = and i32 %199, 65535
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %199, 16
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %205 = bitcast float %204 to i32
  %206 = and i32 %205, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %205, 16
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = and i32 %193, 16
  %211 = icmp ne i32 %210, 0
  %212 = fcmp fast ogt float %201, 0.000000e+00
  %213 = fcmp fast ogt float %203, 0.000000e+00
  %214 = and i1 %212, %213
  %215 = fcmp fast ogt float %207, 0.000000e+00
  br i1 %214, label %216, label %276

; <label>:216                                     ; preds = %196
  br i1 %215, label %217, label %225

; <label>:217                                     ; preds = %216
  %218 = fmul fast float %203, %13
  %219 = fmul fast float %201, %12
  %220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %219, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fsub fast float 1.000000e+00, %221
  %223 = select i1 %211, float %222, float %221
  %224 = fmul fast float %223, %207
  br label %225

; <label>:225                                     ; preds = %217, %216
  %226 = phi float [ %224, %217 ], [ 0.000000e+00, %216 ]
  %227 = fadd fast float %226, %209
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  br i1 %215, label %229, label %239

; <label>:229                                     ; preds = %225
  %230 = fmul fast float %203, %13
  %231 = fsub fast float 1.000000e+00, %12
  %232 = fmul fast float %201, %231
  %233 = fsub fast float 1.000000e+00, %232
  %234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %233, float %230, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 1
  %236 = fsub fast float 1.000000e+00, %235
  %237 = select i1 %211, float %236, float %235
  %238 = fmul fast float %237, %207
  br label %239

; <label>:239                                     ; preds = %229, %225
  %240 = phi float [ %238, %229 ], [ 0.000000e+00, %225 ]
  %241 = fadd fast float %240, %209
  %242 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %243 = fmul fast float %242, %228
  br i1 %215, label %244, label %256

; <label>:244                                     ; preds = %239
  %245 = fsub fast float 1.000000e+00, %13
  %246 = fmul fast float %203, %245
  %247 = fsub fast float 1.000000e+00, %246
  %248 = fsub fast float 1.000000e+00, %12
  %249 = fmul fast float %201, %248
  %250 = fsub fast float 1.000000e+00, %249
  %251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %250, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 2
  %253 = fsub fast float 1.000000e+00, %252
  %254 = select i1 %211, float %253, float %252
  %255 = fmul fast float %254, %207
  br label %256

; <label>:256                                     ; preds = %244, %239
  %257 = phi float [ %255, %244 ], [ 0.000000e+00, %239 ]
  %258 = fadd fast float %257, %209
  %259 = call float @dx.op.unary.f32(i32 7, float %258)  ; Saturate(value)
  %260 = fmul fast float %243, %259
  br i1 %215, label %261, label %271

; <label>:261                                     ; preds = %256
  %262 = fsub fast float 1.000000e+00, %13
  %263 = fmul fast float %203, %262
  %264 = fsub fast float 1.000000e+00, %263
  %265 = fmul fast float %201, %12
  %266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %265, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 3
  %268 = fsub fast float 1.000000e+00, %267
  %269 = select i1 %211, float %268, float %267
  %270 = fmul fast float %269, %207
  br label %271

; <label>:271                                     ; preds = %261, %256
  %272 = phi float [ %270, %261 ], [ 0.000000e+00, %256 ]
  %273 = fadd fast float %272, %209
  %274 = call float @dx.op.unary.f32(i32 7, float %273)  ; Saturate(value)
  %275 = fmul fast float %260, %274
  br label %287

; <label>:276                                     ; preds = %196
  br i1 %215, label %277, label %283

; <label>:277                                     ; preds = %276
  %278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %7, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = fsub fast float 1.000000e+00, %279
  %281 = select i1 %211, float %280, float %279
  %282 = fmul fast float %281, %207
  br label %283

; <label>:283                                     ; preds = %277, %276
  %284 = phi float [ %282, %277 ], [ 0.000000e+00, %276 ]
  %285 = fadd fast float %284, %209
  %286 = call float @dx.op.unary.f32(i32 7, float %285)  ; Saturate(value)
  br label %287

; <label>:287                                     ; preds = %283, %271
  %288 = phi float [ %275, %271 ], [ %286, %283 ]
  %289 = fmul fast float %288, %166
  br label %290

; <label>:290                                     ; preds = %287, %140
  %291 = phi float [ %289, %287 ], [ %166, %140 ]
  %292 = call float @dx.op.binary.f32(i32 35, float %291, float 0.000000e+00)  ; FMax(a,b)
  %293 = fcmp fast oeq float %292, 0.000000e+00
  br i1 %293, label %294, label %295, !dx.controlflow.hints !44

; <label>:294                                     ; preds = %290
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %295

; <label>:295                                     ; preds = %294, %290
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = fcmp fast ogt float %297, 0.000000e+00
  br i1 %298, label %299, label %365, !dx.controlflow.hints !45

; <label>:299                                     ; preds = %295
  %300 = fcmp fast oeq float %297, 2.000000e+00
  br i1 %300, label %301, label %353, !dx.controlflow.hints !46

; <label>:301                                     ; preds = %299
  %302 = fcmp fast ole float %174, 0x3F69A5C380000000
  %303 = fcmp fast ole float %182, 0x3F69A5C380000000
  %304 = fcmp fast ole float %190, 0x3F69A5C380000000
  %305 = fmul fast float %174, 0x4029D70A40000000
  %306 = fmul fast float %182, 0x4029D70A40000000
  %307 = fmul fast float %190, 0x4029D70A40000000
  %308 = call float @dx.op.unary.f32(i32 23, float %174)  ; Log(value)
  %309 = call float @dx.op.unary.f32(i32 23, float %182)  ; Log(value)
  %310 = call float @dx.op.unary.f32(i32 23, float %190)  ; Log(value)
  %311 = fmul fast float %308, 0x3FDAAAAAA0000000
  %312 = fmul fast float %309, 0x3FDAAAAAA0000000
  %313 = fmul fast float %310, 0x3FDAAAAAA0000000
  %314 = call float @dx.op.unary.f32(i32 21, float %311)  ; Exp(value)
  %315 = call float @dx.op.unary.f32(i32 21, float %312)  ; Exp(value)
  %316 = call float @dx.op.unary.f32(i32 21, float %313)  ; Exp(value)
  %317 = fmul fast float %314, 0x3FF0E147A0000000
  %318 = fmul fast float %315, 0x3FF0E147A0000000
  %319 = fmul fast float %316, 0x3FF0E147A0000000
  %320 = fadd fast float %317, 0xBFAC28F5C0000000
  %321 = fadd fast float %318, 0xBFAC28F5C0000000
  %322 = fadd fast float %319, 0xBFAC28F5C0000000
  %323 = select i1 %302, float %305, float %320
  %324 = select i1 %303, float %306, float %321
  %325 = select i1 %304, float %307, float %322
  %326 = fsub fast float 1.000000e+00, %323
  %327 = fsub fast float 1.000000e+00, %324
  %328 = fsub fast float 1.000000e+00, %325
  %329 = fcmp fast ole float %326, 0x3FA4B5DCC0000000
  %330 = fmul fast float %326, 0x3FB3D07220000000
  %331 = fsub fast float 0x3FF0E147A0000000, %323
  %332 = fmul fast float %331, 0x3FEE54EDE0000000
  %333 = call float @dx.op.unary.f32(i32 23, float %332)  ; Log(value)
  %334 = fmul fast float %333, 0x4003333340000000
  %335 = call float @dx.op.unary.f32(i32 21, float %334)  ; Exp(value)
  %336 = select i1 %329, float %330, float %335
  %337 = fcmp fast ole float %327, 0x3FA4B5DCC0000000
  %338 = fmul fast float %327, 0x3FB3D07220000000
  %339 = fsub fast float 0x3FF0E147A0000000, %324
  %340 = fmul fast float %339, 0x3FEE54EDE0000000
  %341 = call float @dx.op.unary.f32(i32 23, float %340)  ; Log(value)
  %342 = fmul fast float %341, 0x4003333340000000
  %343 = call float @dx.op.unary.f32(i32 21, float %342)  ; Exp(value)
  %344 = select i1 %337, float %338, float %343
  %345 = fcmp fast ole float %328, 0x3FA4B5DCC0000000
  %346 = fmul fast float %328, 0x3FB3D07220000000
  %347 = fsub fast float 0x3FF0E147A0000000, %325
  %348 = fmul fast float %347, 0x3FEE54EDE0000000
  %349 = call float @dx.op.unary.f32(i32 23, float %348)  ; Log(value)
  %350 = fmul fast float %349, 0x4003333340000000
  %351 = call float @dx.op.unary.f32(i32 21, float %350)  ; Exp(value)
  %352 = select i1 %345, float %346, float %351
  br label %365

; <label>:353                                     ; preds = %299
  %354 = call float @dx.op.dot3.f32(i32 55, float %174, float %182, float %190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %356 = fsub fast float %174, %354
  %357 = fsub fast float %182, %354
  %358 = fsub fast float %190, %354
  %359 = fmul fast float %355, %356
  %360 = fmul fast float %355, %357
  %361 = fmul fast float %355, %358
  %362 = fadd fast float %359, %354
  %363 = fadd fast float %360, %354
  %364 = fadd fast float %361, %354
  br label %365

; <label>:365                                     ; preds = %353, %301, %295
  %366 = phi float [ %336, %301 ], [ %362, %353 ], [ %174, %295 ]
  %367 = phi float [ %344, %301 ], [ %363, %353 ], [ %182, %295 ]
  %368 = phi float [ %352, %301 ], [ %364, %353 ], [ %190, %295 ]
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = fcmp fast une float %370, 0.000000e+00
  br i1 %371, label %372, label %546, !dx.controlflow.hints !47

; <label>:372                                     ; preds = %365
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = fsub fast float %20, %374
  %377 = fsub fast float %21, %375
  %378 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %379 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %380 = fmul fast float %376, %378
  %381 = fmul fast float %377, %379
  %382 = call float @dx.op.unary.f32(i32 6, float %370)  ; FAbs(value)
  %383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %380, float %381, float undef, float undef, i32 0, i32 0, i32 undef, float %382)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.i32 %387, 3
  %389 = and i32 %388, 3
  %390 = icmp ne i32 %389, 0
  %391 = and i32 %388, 4
  %392 = icmp eq i32 %391, 0
  %393 = and i1 %390, %392
  br i1 %393, label %394, label %438

; <label>:394                                     ; preds = %372
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = fcmp fast oge float %385, %396
  %398 = zext i1 %397 to i32
  br i1 %397, label %399, label %438

; <label>:399                                     ; preds = %394
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %404 = fcmp fast ogt float %403, 0.000000e+00
  br i1 %404, label %405, label %413, !dx.controlflow.hints !48

; <label>:405                                     ; preds = %399
  %406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %385, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %407 = extractvalue %dx.types.ResRet.f32 %406, 0
  %408 = extractvalue %dx.types.ResRet.f32 %406, 1
  %409 = extractvalue %dx.types.ResRet.f32 %406, 2
  %410 = fcmp fast ogt float %403, 1.500000e+00
  %411 = select i1 %410, float %407, float %408
  %412 = select i1 %410, float %407, float %409
  br label %431

; <label>:413                                     ; preds = %399
  %414 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 238)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %418 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %419 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %422 = fsub fast float %416, %419
  %423 = fsub fast float %417, %420
  %424 = fsub fast float %418, %421
  %425 = fmul fast float %422, %414
  %426 = fmul fast float %423, %414
  %427 = fmul fast float %424, %414
  %428 = fadd fast float %425, %419
  %429 = fadd fast float %426, %420
  %430 = fadd fast float %427, %421
  br label %431

; <label>:431                                     ; preds = %413, %405
  %432 = phi float [ %407, %405 ], [ %428, %413 ]
  %433 = phi float [ %411, %405 ], [ %429, %413 ]
  %434 = phi float [ %412, %405 ], [ %430, %413 ]
  %435 = fmul fast float %432, %401
  %436 = fmul fast float %433, %401
  %437 = fmul fast float %434, %401
  br label %438

; <label>:438                                     ; preds = %431, %394, %372
  %439 = phi float [ %435, %431 ], [ %384, %372 ], [ %384, %394 ]
  %440 = phi float [ %436, %431 ], [ %385, %372 ], [ %384, %394 ]
  %441 = phi float [ %437, %431 ], [ %386, %372 ], [ %384, %394 ]
  %442 = phi i32 [ %398, %431 ], [ 0, %372 ], [ %398, %394 ]
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %498

; <label>:444                                     ; preds = %438
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %449 = call float @dx.op.dot3.f32(i32 55, float %439, float %440, float %441, float %446, float %447, float %448)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %454 = call float @dx.op.dot3.f32(i32 55, float %439, float %440, float %441, float %451, float %452, float %453)  ; Dot3(ax,ay,az,bx,by,bz)
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %459 = call float @dx.op.dot3.f32(i32 55, float %439, float %440, float %441, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %462 = fmul fast float %461, %449
  %463 = fmul fast float %461, %454
  %464 = fmul fast float %461, %459
  %465 = fadd fast float %462, 9.765625e-04
  %466 = fadd fast float %463, 9.765625e-04
  %467 = fadd fast float %464, 9.765625e-04
  %468 = call float @dx.op.unary.f32(i32 23, float %465)  ; Log(value)
  %469 = call float @dx.op.unary.f32(i32 23, float %466)  ; Log(value)
  %470 = call float @dx.op.unary.f32(i32 23, float %467)  ; Log(value)
  %471 = fadd fast float %468, 1.000000e+01
  %472 = fadd fast float %469, 1.000000e+01
  %473 = fadd fast float %470, 1.000000e+01
  %474 = fmul fast float %471, 0x3FA99999A0000000
  %475 = fmul fast float %472, 0x3FA99999A0000000
  %476 = fmul fast float %473, 0x3FA99999A0000000
  %477 = call float @dx.op.unary.f32(i32 7, float %474)  ; Saturate(value)
  %478 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %479 = call float @dx.op.unary.f32(i32 7, float %476)  ; Saturate(value)
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %483 = extractvalue %dx.types.CBufRet.f32 %480, 2
  %484 = fmul fast float %481, %477
  %485 = fmul fast float %482, %478
  %486 = fmul fast float %483, %479
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %490 = extractvalue %dx.types.CBufRet.f32 %487, 2
  %491 = fadd fast float %484, %488
  %492 = fadd fast float %485, %489
  %493 = fadd fast float %486, %490
  %494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %491, float %492, float %493, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = extractvalue %dx.types.ResRet.f32 %494, 1
  %497 = extractvalue %dx.types.ResRet.f32 %494, 2
  br label %498

; <label>:498                                     ; preds = %444, %438
  %499 = phi float [ %439, %438 ], [ %495, %444 ]
  %500 = phi float [ %440, %438 ], [ %496, %444 ]
  %501 = phi float [ %441, %438 ], [ %497, %444 ]
  %502 = fcmp fast ole float %499, 0x3FA4B5DCC0000000
  %503 = fmul fast float %499, 0x3FB3D07220000000
  %504 = fadd fast float %499, 0x3FAC28F5C0000000
  %505 = fmul fast float %504, 0x3FEE54EDE0000000
  %506 = call float @dx.op.unary.f32(i32 23, float %505)  ; Log(value)
  %507 = fmul fast float %506, 0x4003333340000000
  %508 = call float @dx.op.unary.f32(i32 21, float %507)  ; Exp(value)
  %509 = select i1 %502, float %503, float %508
  %510 = fcmp fast ole float %500, 0x3FA4B5DCC0000000
  %511 = fmul fast float %500, 0x3FB3D07220000000
  %512 = fadd fast float %500, 0x3FAC28F5C0000000
  %513 = fmul fast float %512, 0x3FEE54EDE0000000
  %514 = call float @dx.op.unary.f32(i32 23, float %513)  ; Log(value)
  %515 = fmul fast float %514, 0x4003333340000000
  %516 = call float @dx.op.unary.f32(i32 21, float %515)  ; Exp(value)
  %517 = select i1 %510, float %511, float %516
  %518 = fcmp fast ole float %501, 0x3FA4B5DCC0000000
  %519 = fmul fast float %501, 0x3FB3D07220000000
  %520 = fadd fast float %501, 0x3FAC28F5C0000000
  %521 = fmul fast float %520, 0x3FEE54EDE0000000
  %522 = call float @dx.op.unary.f32(i32 23, float %521)  ; Log(value)
  %523 = fmul fast float %522, 0x4003333340000000
  %524 = call float @dx.op.unary.f32(i32 21, float %523)  ; Exp(value)
  %525 = select i1 %518, float %519, float %524
  %526 = fcmp fast olt float %370, 0.000000e+00
  br i1 %526, label %527, label %539

; <label>:527                                     ; preds = %498
  %528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.f32 %528, 0
  %530 = extractvalue %dx.types.CBufRet.f32 %528, 1
  %531 = extractvalue %dx.types.CBufRet.f32 %528, 2
  %532 = call float @dx.op.dot3.f32(i32 55, float %509, float %517, float %525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = fsub fast float %532, %529
  %534 = fmul fast float %533, %530
  %535 = call float @dx.op.unary.f32(i32 7, float %534)  ; Saturate(value)
  %536 = fsub fast float 1.000000e+00, %531
  %537 = fmul fast float %535, %536
  %538 = fadd fast float %537, %531
  br label %539

; <label>:539                                     ; preds = %527, %498
  %540 = phi float [ %538, %527 ], [ %509, %498 ]
  %541 = phi float [ %538, %527 ], [ %517, %498 ]
  %542 = phi float [ %538, %527 ], [ %525, %498 ]
  %543 = fmul fast float %540, %366
  %544 = fmul fast float %541, %367
  %545 = fmul fast float %542, %368
  br label %546

; <label>:546                                     ; preds = %539, %365
  %547 = phi float [ %543, %539 ], [ %366, %365 ]
  %548 = phi float [ %544, %539 ], [ %367, %365 ]
  %549 = phi float [ %545, %539 ], [ %368, %365 ]
  %550 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %551 = fcmp fast ogt float %550, 0.000000e+00
  br i1 %551, label %552, label %593, !dx.controlflow.hints !49

; <label>:552                                     ; preds = %546
  %553 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %554 = bitcast float %553 to i32
  %555 = and i32 %554, 255
  %556 = uitofp i32 %555 to float
  %557 = lshr i32 %554, 8
  %558 = and i32 %557, 255
  %559 = uitofp i32 %558 to float
  %560 = lshr i32 %554, 16
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = lshr i32 %554, 24
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %565, 0x3F70101020000000
  %567 = fadd fast float %562, %556
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = fadd fast float %559, %565
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = fdiv fast float %20, %568
  %572 = fdiv fast float %21, %570
  %573 = fsub fast float -0.000000e+00, %571
  %574 = fsub fast float -0.000000e+00, %572
  %575 = fcmp fast oge float %571, %573
  %576 = fcmp fast oge float %572, %574
  %577 = call float @dx.op.unary.f32(i32 6, float %571)  ; FAbs(value)
  %578 = call float @dx.op.unary.f32(i32 6, float %572)  ; FAbs(value)
  %579 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %580 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %581 = fsub fast float -0.000000e+00, %579
  %582 = fsub fast float -0.000000e+00, %580
  %583 = select i1 %575, float %579, float %581
  %584 = select i1 %576, float %580, float %582
  %585 = fmul fast float %568, %583
  %586 = fmul fast float %584, %570
  %587 = fcmp fast olt float %585, %563
  %588 = fcmp fast olt float %586, %566
  %589 = or i1 %587, %588
  br i1 %589, label %590, label %593, !dx.controlflow.hints !50

; <label>:590                                     ; preds = %552
  %591 = fsub fast float 1.000000e+00, %550
  %592 = fmul fast float %591, %292
  br label %593

; <label>:593                                     ; preds = %590, %552, %546
  %594 = phi float [ %592, %590 ], [ %292, %552 ], [ %292, %546 ]
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %597 = fcmp fast ogt float %596, 0.000000e+00
  br i1 %597, label %598, label %681, !dx.controlflow.hints !51

; <label>:598                                     ; preds = %593
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %601 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 3
  %604 = fmul fast float %603, 1.000000e+01
  %605 = call float @dx.op.unary.f32(i32 27, float %604)  ; Round_ni(value)
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = fmul fast float %607, %20
  %610 = fmul fast float %608, %21
  %611 = call float @dx.op.unary.f32(i32 27, float %609)  ; Round_ni(value)
  %612 = call float @dx.op.unary.f32(i32 27, float %610)  ; Round_ni(value)
  %613 = fmul fast float %605, 0x4002B851E0000000
  %614 = call float @dx.op.unary.f32(i32 22, float %613)  ; Frc(value)
  %615 = fadd fast float %614, 0x3FB99999A0000000
  %616 = fadd fast float %615, %611
  %617 = fadd fast float %615, %612
  %618 = fmul fast float %616, 0x3FE1BEDF00000000
  %619 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %620 = fmul fast float %616, %619
  %621 = fadd fast float %620, %617
  %622 = fmul fast float %617, 0x3FD3BEBE20000000
  %623 = call float @dx.op.unary.f32(i32 22, float %622)  ; Frc(value)
  %624 = fmul fast float %617, %623
  %625 = fadd fast float %624, %616
  %626 = fmul fast float %621, %625
  %627 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %628 = extractvalue %dx.types.CBufRet.f32 %606, 3
  %629 = bitcast float %628 to i32
  %630 = and i32 %629, 255
  %631 = uitofp i32 %630 to float
  %632 = fmul fast float %631, 0x3F70101020000000
  %633 = fmul fast float %632, %600
  %634 = fcmp fast olt float %627, %633
  br i1 %634, label %635, label %642, !dx.controlflow.hints !52

; <label>:635                                     ; preds = %598
  %636 = fmul fast float %627, 0x4057091680000000
  %637 = call float @dx.op.unary.f32(i32 22, float %636)  ; Frc(value)
  %638 = fmul fast float %637, %547
  %639 = fmul fast float %637, %549
  %640 = fsub fast float 1.000000e+00, %637
  %641 = fmul fast float %640, %548
  br label %642

; <label>:642                                     ; preds = %635, %598
  %643 = phi float [ %638, %635 ], [ %547, %598 ]
  %644 = phi float [ %641, %635 ], [ %548, %598 ]
  %645 = phi float [ %639, %635 ], [ %549, %598 ]
  %646 = fmul fast float %627, 0x4028B0A3E0000000
  %647 = call float @dx.op.unary.f32(i32 22, float %646)  ; Frc(value)
  %648 = fmul fast float %632, %601
  %649 = fcmp fast olt float %647, %648
  br i1 %649, label %650, label %669, !dx.controlflow.hints !53

; <label>:650                                     ; preds = %642
  %651 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %652 = fmul fast float %651, %20
  %653 = call float @dx.op.unary.f32(i32 27, float %652)  ; Round_ni(value)
  %654 = fmul fast float %653, 0x3FD5555560000000
  %655 = call float @dx.op.unary.f32(i32 22, float %654)  ; Frc(value)
  %656 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %657 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %658 = fcmp fast olt float %655, 0x3FD51EB860000000
  br i1 %658, label %662, label %659, !dx.controlflow.hints !54

; <label>:659                                     ; preds = %650
  %660 = fcmp fast olt float %655, 0x3FE51EB860000000
  br i1 %660, label %662, label %661, !dx.controlflow.hints !55

; <label>:661                                     ; preds = %659
  br label %662

; <label>:662                                     ; preds = %661, %659, %650
  %663 = phi float [ %656, %661 ], [ %657, %650 ], [ %656, %659 ]
  %664 = phi float [ %656, %661 ], [ %656, %650 ], [ %657, %659 ]
  %665 = phi float [ %657, %661 ], [ %656, %650 ], [ %656, %659 ]
  %666 = fmul fast float %663, %643
  %667 = fmul fast float %664, %644
  %668 = fmul fast float %665, %645
  br label %669

; <label>:669                                     ; preds = %662, %642
  %670 = phi float [ %666, %662 ], [ %643, %642 ]
  %671 = phi float [ %667, %662 ], [ %644, %642 ]
  %672 = phi float [ %668, %662 ], [ %645, %642 ]
  %673 = fmul fast float %627, 0x40223EF9E0000000
  %674 = call float @dx.op.unary.f32(i32 22, float %673)  ; Frc(value)
  %675 = fmul fast float %632, %596
  %676 = fmul fast float %674, %674
  %677 = fmul fast float %676, %675
  %678 = fsub fast float 1.000000e+00, %677
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fmul fast float %679, %594
  br label %681

; <label>:681                                     ; preds = %669, %593
  %682 = phi float [ %670, %669 ], [ %547, %593 ]
  %683 = phi float [ %671, %669 ], [ %548, %593 ]
  %684 = phi float [ %672, %669 ], [ %549, %593 ]
  %685 = phi float [ %680, %669 ], [ %594, %593 ]
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = extractvalue %dx.types.CBufRet.f32 %686, 1
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 0
  %696 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %697 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %698 = fmul fast float %687, %682
  %699 = call float @dx.op.tertiary.f32(i32 46, float %688, float %683, float %698)  ; FMad(a,b,c)
  %700 = call float @dx.op.tertiary.f32(i32 46, float %689, float %684, float %699)  ; FMad(a,b,c)
  %701 = fmul fast float %691, %682
  %702 = call float @dx.op.tertiary.f32(i32 46, float %692, float %683, float %701)  ; FMad(a,b,c)
  %703 = call float @dx.op.tertiary.f32(i32 46, float %693, float %684, float %702)  ; FMad(a,b,c)
  %704 = fmul fast float %695, %682
  %705 = call float @dx.op.tertiary.f32(i32 46, float %696, float %683, float %704)  ; FMad(a,b,c)
  %706 = call float @dx.op.tertiary.f32(i32 46, float %697, float %684, float %705)  ; FMad(a,b,c)
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = bitcast float %708 to i32
  %710 = and i32 %709, 128
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %726, label %712

; <label>:712                                     ; preds = %681
  %713 = call float @dx.op.unary.f32(i32 24, float %700)  ; Sqrt(value)
  %714 = call float @dx.op.unary.f32(i32 24, float %703)  ; Sqrt(value)
  %715 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %716 = fmul fast float %713, 9.687500e-01
  %717 = fmul fast float %714, 9.687500e-01
  %718 = fmul fast float %715, 9.687500e-01
  %719 = fadd fast float %716, 1.562500e-02
  %720 = fadd fast float %717, 1.562500e-02
  %721 = fadd fast float %718, 1.562500e-02
  %722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %8, float %719, float %720, float %721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = extractvalue %dx.types.ResRet.f32 %722, 1
  %725 = extractvalue %dx.types.ResRet.f32 %722, 2
  br label %1013

; <label>:726                                     ; preds = %681
  %727 = and i32 %709, 127
  switch i32 %727, label %1013 [
    i32 1, label %728
    i32 2, label %728
    i32 0, label %728
    i32 3, label %758
    i32 4, label %879
  ]

; <label>:728                                     ; preds = %726, %726, %726
  %729 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %730 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %732 = call float @dx.op.unary.f32(i32 23, float %729)  ; Log(value)
  %733 = call float @dx.op.unary.f32(i32 23, float %730)  ; Log(value)
  %734 = call float @dx.op.unary.f32(i32 23, float %731)  ; Log(value)
  %735 = fmul fast float %732, 0x3FDAAAAAA0000000
  %736 = fmul fast float %733, 0x3FDAAAAAA0000000
  %737 = fmul fast float %734, 0x3FDAAAAAA0000000
  %738 = call float @dx.op.unary.f32(i32 21, float %735)  ; Exp(value)
  %739 = call float @dx.op.unary.f32(i32 21, float %736)  ; Exp(value)
  %740 = call float @dx.op.unary.f32(i32 21, float %737)  ; Exp(value)
  %741 = fmul fast float %738, 0x3FF0E147A0000000
  %742 = fmul fast float %739, 0x3FF0E147A0000000
  %743 = fmul fast float %740, 0x3FF0E147A0000000
  %744 = fadd fast float %741, 0xBFAC28F5C0000000
  %745 = fadd fast float %742, 0xBFAC28F5C0000000
  %746 = fadd fast float %743, 0xBFAC28F5C0000000
  %747 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  %748 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %749 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %750 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %751 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %752 = fmul fast float %750, %747
  %753 = fmul fast float %750, %748
  %754 = fmul fast float %750, %749
  %755 = fadd fast float %752, %751
  %756 = fadd fast float %753, %751
  %757 = fadd fast float %754, %751
  br label %1013

; <label>:758                                     ; preds = %726
  %759 = fmul fast float %700, 0x4163D57C00000000
  %760 = fmul fast float %703, 0x4163D57C00000000
  %761 = fmul fast float %706, 0x4163D57C00000000
  %762 = fadd fast float %759, 9.999980e+05
  %763 = fadd fast float %760, 9.999980e+05
  %764 = fadd fast float %761, 9.999980e+05
  %765 = fmul fast float %762, %700
  %766 = fmul fast float %763, %703
  %767 = fmul fast float %764, %706
  %768 = fadd fast float %765, 0xC0AFE17A60000000
  %769 = fadd fast float %766, 0xC0AFE17A60000000
  %770 = fadd fast float %767, 0xC0AFE17A60000000
  %771 = fmul fast float %768, %700
  %772 = fmul fast float %769, %703
  %773 = fmul fast float %770, %706
  %774 = fmul fast float %700, 0x40F753C340000000
  %775 = fmul fast float %703, 0x40F753C340000000
  %776 = fmul fast float %706, 0x40F753C340000000
  %777 = fsub fast float 9.999990e+06, %774
  %778 = fsub fast float 9.999990e+06, %775
  %779 = fsub fast float 9.999990e+06, %776
  %780 = fmul fast float %777, %700
  %781 = fmul fast float %778, %703
  %782 = fmul fast float %779, %706
  %783 = fadd fast float %780, 0x4136D1DD80000000
  %784 = fadd fast float %781, 0x4136D1DD80000000
  %785 = fadd fast float %782, 0x4136D1DD80000000
  %786 = fmul fast float %783, %700
  %787 = fmul fast float %784, %703
  %788 = fmul fast float %785, %706
  %789 = fadd fast float %786, 1.000000e+00
  %790 = fadd fast float %787, 1.000000e+00
  %791 = fadd fast float %788, 1.000000e+00
  %792 = fdiv fast float %771, %789
  %793 = fdiv fast float %772, %790
  %794 = fdiv fast float %773, %791
  %795 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %796 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %797 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %798 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %799 = fmul fast float %795, 0x3FE413A920000000
  %800 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %796, float %799)  ; FMad(a,b,c)
  %801 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %797, float %800)  ; FMad(a,b,c)
  %802 = fmul fast float %795, 0x3FB1B089A0000000
  %803 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %796, float %802)  ; FMad(a,b,c)
  %804 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %797, float %803)  ; FMad(a,b,c)
  %805 = fmul fast float %795, 0x3F90CB2960000000
  %806 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %796, float %805)  ; FMad(a,b,c)
  %807 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %797, float %806)  ; FMad(a,b,c)
  %808 = fmul fast float %801, %798
  %809 = fmul fast float %804, %798
  %810 = fmul fast float %807, %798
  %811 = fmul fast float %808, 0x3F847AE140000000
  %812 = fmul fast float %809, 0x3F847AE140000000
  %813 = fmul fast float %810, 0x3F847AE140000000
  %814 = fmul fast float %808, 0x40B4D2F520000000
  %815 = fmul fast float %809, 0x40B4D2F520000000
  %816 = fmul fast float %810, 0x40B4D2F520000000
  %817 = fadd fast float %814, 0x41869ECF20000000
  %818 = fadd fast float %815, 0x41869ECF20000000
  %819 = fadd fast float %816, 0x41869ECF20000000
  %820 = fmul fast float %817, %811
  %821 = fmul fast float %818, %812
  %822 = fmul fast float %819, %813
  %823 = fadd fast float %820, 0x417BB79C60000000
  %824 = fadd fast float %821, 0x417BB79C60000000
  %825 = fadd fast float %822, 0x417BB79C60000000
  %826 = fmul fast float %823, %811
  %827 = fmul fast float %824, %812
  %828 = fmul fast float %825, %813
  %829 = fadd fast float %826, 0x41218DE180000000
  %830 = fadd fast float %827, 0x41218DE180000000
  %831 = fadd fast float %828, 0x41218DE180000000
  %832 = fmul fast float %829, %811
  %833 = fmul fast float %830, %812
  %834 = fmul fast float %831, %813
  %835 = fadd fast float %832, 0x4077F174E0000000
  %836 = fadd fast float %833, 0x4077F174E0000000
  %837 = fadd fast float %834, 0x4077F174E0000000
  %838 = fmul fast float %835, %811
  %839 = fmul fast float %836, %812
  %840 = fmul fast float %837, %813
  %841 = fadd fast float %838, 0x3F3FF79B80000000
  %842 = fadd fast float %839, 0x3F3FF79B80000000
  %843 = fadd fast float %840, 0x3F3FF79B80000000
  %844 = fmul fast float %808, 0x412442D320000000
  %845 = fmul fast float %809, 0x412442D320000000
  %846 = fmul fast float %810, 0x412442D320000000
  %847 = fadd fast float %844, 0x419385D5C0000000
  %848 = fadd fast float %845, 0x419385D5C0000000
  %849 = fadd fast float %846, 0x419385D5C0000000
  %850 = fmul fast float %847, %811
  %851 = fmul fast float %848, %812
  %852 = fmul fast float %849, %813
  %853 = fadd fast float %850, 4.182885e+06
  %854 = fadd fast float %851, 4.182885e+06
  %855 = fadd fast float %852, 4.182885e+06
  %856 = fmul fast float %853, %811
  %857 = fmul fast float %854, %812
  %858 = fmul fast float %855, %813
  %859 = fadd fast float %856, 0x40C4D633C0000000
  %860 = fadd fast float %857, 0x40C4D633C0000000
  %861 = fadd fast float %858, 0x40C4D633C0000000
  %862 = fmul fast float %859, %811
  %863 = fmul fast float %860, %812
  %864 = fmul fast float %861, %813
  %865 = fadd fast float %862, 1.000000e+00
  %866 = fadd fast float %863, 1.000000e+00
  %867 = fadd fast float %864, 1.000000e+00
  %868 = fdiv fast float %841, %865
  %869 = fdiv fast float %842, %866
  %870 = fdiv fast float %843, %867
  %871 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %872 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %873 = fmul fast float %871, %868
  %874 = fmul fast float %871, %869
  %875 = fmul fast float %871, %870
  %876 = fadd fast float %873, %872
  %877 = fadd fast float %874, %872
  %878 = fadd fast float %875, %872
  br label %1013

; <label>:879                                     ; preds = %726
  %880 = fmul fast float %700, 0x4163D57C00000000
  %881 = fmul fast float %703, 0x4163D57C00000000
  %882 = fmul fast float %706, 0x4163D57C00000000
  %883 = fadd fast float %880, 9.999980e+05
  %884 = fadd fast float %881, 9.999980e+05
  %885 = fadd fast float %882, 9.999980e+05
  %886 = fmul fast float %883, %700
  %887 = fmul fast float %884, %703
  %888 = fmul fast float %885, %706
  %889 = fadd fast float %886, 0xC0AFE17A60000000
  %890 = fadd fast float %887, 0xC0AFE17A60000000
  %891 = fadd fast float %888, 0xC0AFE17A60000000
  %892 = fmul fast float %889, %700
  %893 = fmul fast float %890, %703
  %894 = fmul fast float %891, %706
  %895 = fmul fast float %700, 0x40F753C340000000
  %896 = fmul fast float %703, 0x40F753C340000000
  %897 = fmul fast float %706, 0x40F753C340000000
  %898 = fsub fast float 9.999990e+06, %895
  %899 = fsub fast float 9.999990e+06, %896
  %900 = fsub fast float 9.999990e+06, %897
  %901 = fmul fast float %898, %700
  %902 = fmul fast float %899, %703
  %903 = fmul fast float %900, %706
  %904 = fadd fast float %901, 0x4136D1DD80000000
  %905 = fadd fast float %902, 0x4136D1DD80000000
  %906 = fadd fast float %903, 0x4136D1DD80000000
  %907 = fmul fast float %904, %700
  %908 = fmul fast float %905, %703
  %909 = fmul fast float %906, %706
  %910 = fadd fast float %907, 1.000000e+00
  %911 = fadd fast float %908, 1.000000e+00
  %912 = fadd fast float %909, 1.000000e+00
  %913 = fdiv fast float %892, %910
  %914 = fdiv fast float %893, %911
  %915 = fdiv fast float %894, %912
  %916 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %917 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %918 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %919 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %920 = fmul fast float %916, 0x3FEA519BC0000000
  %921 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %917, float %920)  ; FMad(a,b,c)
  %922 = fmul fast float %916, 0x3FA0FED480000000
  %923 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %917, float %922)  ; FMad(a,b,c)
  %924 = fmul fast float %916, 0x3F917E1C00000000
  %925 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %917, float %924)  ; FMad(a,b,c)
  %926 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %918, float %925)  ; FMad(a,b,c)
  %927 = call float @dx.op.binary.f32(i32 35, float %916, float %917)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 35, float %927, float %918)  ; FMax(a,b)
  %929 = fadd fast float %928, -1.000000e+00
  %930 = fmul fast float %929, 2.500000e-01
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = fsub fast float 1.000000e+00, %931
  %933 = fmul fast float %932, %921
  %934 = fmul fast float %932, %923
  %935 = fmul fast float %932, %926
  %936 = fmul fast float %931, %916
  %937 = fmul fast float %931, %917
  %938 = fmul fast float %931, %918
  %939 = fadd fast float %933, %936
  %940 = fadd fast float %934, %937
  %941 = fadd fast float %935, %938
  %942 = fmul fast float %939, %919
  %943 = fmul fast float %940, %919
  %944 = fmul fast float %941, %919
  %945 = fmul fast float %942, 0x3F847AE140000000
  %946 = fmul fast float %943, 0x3F847AE140000000
  %947 = fmul fast float %944, 0x3F847AE140000000
  %948 = fmul fast float %942, 0x40B4D2F520000000
  %949 = fmul fast float %943, 0x40B4D2F520000000
  %950 = fmul fast float %944, 0x40B4D2F520000000
  %951 = fadd fast float %948, 0x41869ECF20000000
  %952 = fadd fast float %949, 0x41869ECF20000000
  %953 = fadd fast float %950, 0x41869ECF20000000
  %954 = fmul fast float %951, %945
  %955 = fmul fast float %952, %946
  %956 = fmul fast float %953, %947
  %957 = fadd fast float %954, 0x417BB79C60000000
  %958 = fadd fast float %955, 0x417BB79C60000000
  %959 = fadd fast float %956, 0x417BB79C60000000
  %960 = fmul fast float %957, %945
  %961 = fmul fast float %958, %946
  %962 = fmul fast float %959, %947
  %963 = fadd fast float %960, 0x41218DE180000000
  %964 = fadd fast float %961, 0x41218DE180000000
  %965 = fadd fast float %962, 0x41218DE180000000
  %966 = fmul fast float %963, %945
  %967 = fmul fast float %964, %946
  %968 = fmul fast float %965, %947
  %969 = fadd fast float %966, 0x4077F174E0000000
  %970 = fadd fast float %967, 0x4077F174E0000000
  %971 = fadd fast float %968, 0x4077F174E0000000
  %972 = fmul fast float %969, %945
  %973 = fmul fast float %970, %946
  %974 = fmul fast float %971, %947
  %975 = fadd fast float %972, 0x3F3FF79B80000000
  %976 = fadd fast float %973, 0x3F3FF79B80000000
  %977 = fadd fast float %974, 0x3F3FF79B80000000
  %978 = fmul fast float %942, 0x412442D320000000
  %979 = fmul fast float %943, 0x412442D320000000
  %980 = fmul fast float %944, 0x412442D320000000
  %981 = fadd fast float %978, 0x419385D5C0000000
  %982 = fadd fast float %979, 0x419385D5C0000000
  %983 = fadd fast float %980, 0x419385D5C0000000
  %984 = fmul fast float %981, %945
  %985 = fmul fast float %982, %946
  %986 = fmul fast float %983, %947
  %987 = fadd fast float %984, 4.182885e+06
  %988 = fadd fast float %985, 4.182885e+06
  %989 = fadd fast float %986, 4.182885e+06
  %990 = fmul fast float %987, %945
  %991 = fmul fast float %988, %946
  %992 = fmul fast float %989, %947
  %993 = fadd fast float %990, 0x40C4D633C0000000
  %994 = fadd fast float %991, 0x40C4D633C0000000
  %995 = fadd fast float %992, 0x40C4D633C0000000
  %996 = fmul fast float %993, %945
  %997 = fmul fast float %994, %946
  %998 = fmul fast float %995, %947
  %999 = fadd fast float %996, 1.000000e+00
  %1000 = fadd fast float %997, 1.000000e+00
  %1001 = fadd fast float %998, 1.000000e+00
  %1002 = fdiv fast float %975, %999
  %1003 = fdiv fast float %976, %1000
  %1004 = fdiv fast float %977, %1001
  %1005 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %1006 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %1007 = fmul fast float %1005, %1002
  %1008 = fmul fast float %1005, %1003
  %1009 = fmul fast float %1005, %1004
  %1010 = fadd fast float %1007, %1006
  %1011 = fadd fast float %1008, %1006
  %1012 = fadd fast float %1009, %1006
  br label %1013

; <label>:1013                                    ; preds = %879, %758, %728, %726, %712
  %1014 = phi float [ %723, %712 ], [ %700, %726 ], [ %1010, %879 ], [ %876, %758 ], [ %755, %728 ]
  %1015 = phi float [ %724, %712 ], [ %703, %726 ], [ %1011, %879 ], [ %877, %758 ], [ %756, %728 ]
  %1016 = phi float [ %725, %712 ], [ %706, %726 ], [ %1012, %879 ], [ %878, %758 ], [ %757, %728 ]
  %1017 = fmul fast float %1014, %685
  %1018 = fmul fast float %1015, %685
  %1019 = fmul fast float %1016, %685
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1017)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1018)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1019)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %685)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!16 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 144, null}
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

