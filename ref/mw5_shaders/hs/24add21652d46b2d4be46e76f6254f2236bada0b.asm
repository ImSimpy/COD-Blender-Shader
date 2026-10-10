;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; TEXCOORD                 0   xyz         0     NONE   float   xyz 
; TEXCOORD                 2   x           1     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; TEXCOORD                 0   xyz         0     NONE   float   xyz 
; TEXCOORD                 2   x           1     NONE    uint   x   
;
;
; Patch Constant signature signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_TessFactor            0      w        0  TRIEDGE   float      w
; SV_TessFactor            1      w        1  TRIEDGE   float      w
; SV_TessFactor            2      w        2  TRIEDGE   float      w
; SV_InsideTessFactor      0   x           3   TRIINT   float   x   
;
; shader hash: 7233546852a753087631dccad4769e94
;
; Pipeline Runtime Information: 
;
; Hull Shader
; InputControlPointCount=3
; OutputControlPointCount=3
; Domain=tri
; OutputPrimitive=triangle_cw
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; TEXCOORD                 0                 linear       
; TEXCOORD                 2        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; TEXCOORD                 0                 linear       
; TEXCOORD                 2        nointerpolation       
;
; Patch Constant signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_TessFactor            0                              
; SV_InsideTessFactor      0                              
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
;   [128 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [36 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb0     1
;                                   texture    byte         r/o      T0     t36,space1     1
;
;
; ViewId state:
;
; Number of inputs: 5, outputs: 5, patchconst: 13
; Outputs dependent on ViewId: {  }
; PCOutputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0 }
;   output 1 depends on inputs: { 1 }
;   output 2 depends on inputs: { 2 }
;   output 4 depends on inputs: { 4 }
; Inputs contributing to computation of PCOutputs:
;   output 3 depends on inputs: { 0, 1, 2 }
;   output 7 depends on inputs: { 0, 1, 2 }
;   output 11 depends on inputs: { 0, 1, 2 }
;   output 12 depends on inputs: { 0, 1, 2 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%superterrainConstantBuffer = type { %struct.GfxTerrainInstanceData }
%struct.GfxTerrainInstanceData = type { %struct.GfxBaseInstanceData, i32 }
%struct.GfxBaseInstanceData = type { <4 x float>, <3 x i32>, float }

define void @"\01?hs_patch_constants@@YA?AUhs_patch@@V?$InputPatch@UVSHS@@$02@@I@Z"() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [6 x float], align 4
  %9 = alloca [6 x float], align 4
  %10 = alloca [6 x float], align 4
  %11 = alloca [6 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [6 x float], align 4
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 0
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = fadd fast float %19, %16
  %23 = fadd fast float %20, %17
  %24 = fadd fast float %21, %18
  %25 = fmul fast float %22, 5.000000e-01
  %26 = fmul fast float %23, 5.000000e-01
  %27 = fmul fast float %24, 5.000000e-01
  %28 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 0
  %29 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 0
  %30 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 0
  store float %25, float* %28, align 4
  store float %26, float* %29, align 4
  store float %27, float* %30, align 4
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = fadd fast float %31, %19
  %35 = fadd fast float %32, %20
  %36 = fadd fast float %33, %21
  %37 = fmul fast float %34, 5.000000e-01
  %38 = fmul fast float %35, 5.000000e-01
  %39 = fmul fast float %36, 5.000000e-01
  %40 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 1
  %41 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 1
  %42 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 1
  store float %37, float* %40, align 4
  store float %38, float* %41, align 4
  store float %39, float* %42, align 4
  %43 = fadd fast float %31, %16
  %44 = fadd fast float %32, %17
  %45 = fadd fast float %33, %18
  %46 = fmul fast float %43, 5.000000e-01
  %47 = fmul fast float %44, 5.000000e-01
  %48 = fmul fast float %45, 5.000000e-01
  %49 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 2
  %50 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 2
  %51 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 2
  store float %46, float* %49, align 4
  store float %47, float* %50, align 4
  store float %48, float* %51, align 4
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 299)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  br label %55

; <label>:55                                      ; preds = %96, %0
  %56 = phi float [ %27, %0 ], [ %102, %96 ]
  %57 = phi float [ %26, %0 ], [ %100, %96 ]
  %58 = phi float [ %25, %0 ], [ %98, %96 ]
  %59 = phi i32 [ 0, %0 ], [ %94, %96 ]
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.i32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.i32 %64, 2
  %68 = bitcast float %61 to i32
  %69 = bitcast float %62 to i32
  %70 = bitcast float %63 to i32
  %71 = sub i32 %65, %68
  %72 = sub i32 %66, %69
  %73 = sub i32 %67, %70
  %74 = sitofp i32 %71 to float
  %75 = sitofp i32 %72 to float
  %76 = sitofp i32 %73 to float
  %77 = fmul fast float %74, 0x3F30000000000000
  %78 = fmul fast float %75, 0x3F30000000000000
  %79 = fmul fast float %76, 0x3F30000000000000
  %80 = fadd fast float %77, %58
  %81 = fadd fast float %78, %57
  %82 = fadd fast float %79, %56
  %83 = fmul fast float %80, %80
  %84 = fmul fast float %81, %81
  %85 = fadd fast float %83, %84
  %86 = fmul fast float %82, %82
  %87 = fadd fast float %85, %86
  %88 = call float @dx.op.unary.f32(i32 24, float %87)  ; Sqrt(value)
  %89 = fsub fast float %88, %53
  %90 = fsub fast float %54, %53
  %91 = fdiv fast float %89, %90
  %92 = call float @dx.op.unary.f32(i32 7, float %91)  ; Saturate(value)
  %93 = getelementptr inbounds [3 x float], [3 x float]* %12, i32 0, i32 %59
  store float %92, float* %93, align 4, !tbaa !27
  %94 = add nuw nsw i32 %59, 1
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %103, label %96

; <label>:96                                      ; preds = %55
  %97 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 %94
  %98 = load float, float* %97, align 4
  %99 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 %94
  %100 = load float, float* %99, align 4
  %101 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %94
  %102 = load float, float* %101, align 4
  br label %55

; <label>:103                                     ; preds = %55
  %104 = mul i32 %15, 204
  br label %105

; <label>:105                                     ; preds = %105, %103
  %106 = phi i32 [ %208, %105 ], [ 0, %103 ]
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 %106)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 %106)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 %106)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.i32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.i32 %114, 2
  %118 = bitcast float %111 to i32
  %119 = bitcast float %112 to i32
  %120 = bitcast float %113 to i32
  %121 = sub i32 %115, %118
  %122 = sub i32 %116, %119
  %123 = sub i32 %117, %120
  %124 = sitofp i32 %121 to float
  %125 = sitofp i32 %122 to float
  %126 = sitofp i32 %123 to float
  %127 = fmul fast float %124, 0x3F30000000000000
  %128 = fmul fast float %125, 0x3F30000000000000
  %129 = fmul fast float %126, 0x3F30000000000000
  %130 = fadd fast float %127, %107
  %131 = fadd fast float %128, %108
  %132 = add i32 %104, 176
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 3
  %135 = lshr i32 %134, 16
  %136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %135)  ; LegacyF16ToF32(value)
  %137 = fmul fast float %136, 5.000000e-01
  %138 = fsub fast float %109, %137
  %139 = fadd fast float %138, %129
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %155 = fmul fast float %130, %141
  %156 = call float @dx.op.tertiary.f32(i32 46, float %131, float %142, float %155)  ; FMad(a,b,c)
  %157 = call float @dx.op.tertiary.f32(i32 46, float %139, float %143, float %156)  ; FMad(a,b,c)
  %158 = fadd fast float %157, %144
  %159 = fmul fast float %130, %146
  %160 = call float @dx.op.tertiary.f32(i32 46, float %131, float %147, float %159)  ; FMad(a,b,c)
  %161 = call float @dx.op.tertiary.f32(i32 46, float %139, float %148, float %160)  ; FMad(a,b,c)
  %162 = fadd fast float %161, %149
  %163 = fmul fast float %151, %130
  %164 = call float @dx.op.tertiary.f32(i32 46, float %131, float %152, float %163)  ; FMad(a,b,c)
  %165 = call float @dx.op.tertiary.f32(i32 46, float %139, float %153, float %164)  ; FMad(a,b,c)
  %166 = fadd fast float %165, %154
  %167 = add i32 %106, 0
  %168 = getelementptr [6 x float], [6 x float]* %13, i32 0, i32 %167
  store float %166, float* %168, align 4, !tbaa !27
  %169 = fdiv fast float %158, %166
  %170 = fdiv fast float %162, %166
  %171 = add i32 %106, 0
  %172 = getelementptr [6 x float], [6 x float]* %10, i32 0, i32 %171
  store float %169, float* %172, align 4
  %173 = fsub fast float -0.000000e+00, %170
  %174 = add i32 %106, 0
  %175 = getelementptr [6 x float], [6 x float]* %11, i32 0, i32 %174
  store float %173, float* %175, align 4
  %176 = fmul fast float %169, 9.600000e+02
  %177 = fadd fast float %176, 9.600000e+02
  %178 = fmul fast float %170, 5.400000e+02
  %179 = fsub fast float 5.400000e+02, %178
  %180 = add i32 %106, 0
  %181 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 %180
  %182 = add i32 %106, 0
  %183 = getelementptr [6 x float], [6 x float]* %9, i32 0, i32 %182
  store float %177, float* %181, align 4
  store float %179, float* %183, align 4
  %184 = fadd fast float %139, %136
  %185 = call float @dx.op.tertiary.f32(i32 46, float %184, float %143, float %156)  ; FMad(a,b,c)
  %186 = fadd fast float %185, %144
  %187 = call float @dx.op.tertiary.f32(i32 46, float %184, float %148, float %160)  ; FMad(a,b,c)
  %188 = fadd fast float %187, %149
  %189 = call float @dx.op.tertiary.f32(i32 46, float %184, float %153, float %164)  ; FMad(a,b,c)
  %190 = fadd fast float %189, %154
  %191 = add i32 %106, 3
  %192 = getelementptr [6 x float], [6 x float]* %13, i32 0, i32 %191
  store float %190, float* %192, align 4, !tbaa !27
  %193 = fdiv fast float %186, %190
  %194 = fdiv fast float %188, %190
  %195 = add i32 %106, 3
  %196 = getelementptr [6 x float], [6 x float]* %10, i32 0, i32 %195
  store float %193, float* %196, align 4
  %197 = fsub fast float -0.000000e+00, %194
  %198 = add i32 %106, 3
  %199 = getelementptr [6 x float], [6 x float]* %11, i32 0, i32 %198
  store float %197, float* %199, align 4
  %200 = fmul fast float %193, 9.600000e+02
  %201 = fadd fast float %200, 9.600000e+02
  %202 = fmul fast float %194, 5.400000e+02
  %203 = fsub fast float 5.400000e+02, %202
  %204 = add i32 %106, 3
  %205 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 %204
  %206 = add i32 %106, 3
  %207 = getelementptr [6 x float], [6 x float]* %9, i32 0, i32 %206
  store float %201, float* %205, align 4
  store float %203, float* %207, align 4
  %208 = add nuw nsw i32 %106, 1
  %209 = icmp eq i32 %208, 3
  br i1 %209, label %210, label %105

; <label>:210                                     ; preds = %105
  %211 = getelementptr [6 x float], [6 x float]* %13, i32 0, i32 3
  %212 = load float, float* %211, align 4, !tbaa !27
  %213 = getelementptr [6 x float], [6 x float]* %13, i32 0, i32 4
  %214 = load float, float* %213, align 4, !tbaa !27
  %215 = getelementptr [6 x float], [6 x float]* %13, i32 0, i32 5
  %216 = load float, float* %215, align 4, !tbaa !27
  %217 = getelementptr [6 x float], [6 x float]* %13, i32 0, i32 0
  %218 = load float, float* %217, align 4, !tbaa !27
  %219 = getelementptr [6 x float], [6 x float]* %13, i32 0, i32 1
  %220 = load float, float* %219, align 4, !tbaa !27
  %221 = getelementptr [6 x float], [6 x float]* %13, i32 0, i32 2
  %222 = load float, float* %221, align 4, !tbaa !27
  %223 = call float @dx.op.binary.f32(i32 35, float %218, float %212)  ; FMax(a,b)
  %224 = call float @dx.op.binary.f32(i32 35, float %220, float %214)  ; FMax(a,b)
  %225 = call float @dx.op.binary.f32(i32 35, float %222, float %216)  ; FMax(a,b)
  %226 = fcmp fast olt float %223, 0.000000e+00
  %227 = fcmp fast olt float %224, 0.000000e+00
  %228 = fcmp fast olt float %225, 0.000000e+00
  %229 = and i1 %226, %227
  %230 = and i1 %229, %228
  %231 = zext i1 %230 to i32
  %232 = xor i1 %230, true
  %233 = fcmp fast ogt float %218, 0.000000e+00
  %234 = fcmp fast ogt float %220, 0.000000e+00
  %235 = fcmp fast ogt float %222, 0.000000e+00
  %236 = and i1 %233, %234
  %237 = and i1 %236, %235
  %238 = and i1 %237, %232
  br i1 %238, label %239, label %313

; <label>:239                                     ; preds = %210
  %240 = getelementptr [6 x float], [6 x float]* %10, i32 0, i32 0
  %241 = load float, float* %240, align 4
  %242 = getelementptr [6 x float], [6 x float]* %10, i32 0, i32 1
  %243 = load float, float* %242, align 4
  %244 = getelementptr [6 x float], [6 x float]* %10, i32 0, i32 2
  %245 = load float, float* %244, align 4
  %246 = fcmp fast olt float %241, -1.000000e+00
  %247 = fcmp fast olt float %243, -1.000000e+00
  %248 = fcmp fast olt float %245, -1.000000e+00
  %249 = getelementptr [6 x float], [6 x float]* %10, i32 0, i32 3
  %250 = load float, float* %249, align 4
  %251 = getelementptr [6 x float], [6 x float]* %10, i32 0, i32 4
  %252 = load float, float* %251, align 4
  %253 = getelementptr [6 x float], [6 x float]* %10, i32 0, i32 5
  %254 = load float, float* %253, align 4
  %255 = fcmp fast olt float %250, -1.000000e+00
  %256 = fcmp fast olt float %252, -1.000000e+00
  %257 = fcmp fast olt float %254, -1.000000e+00
  %258 = and i1 %246, %255
  %259 = and i1 %247, %256
  %260 = and i1 %248, %257
  %261 = and i1 %258, %259
  %262 = and i1 %261, %260
  %263 = or i1 %230, %262
  %264 = fcmp fast ogt float %241, 1.000000e+00
  %265 = fcmp fast ogt float %243, 1.000000e+00
  %266 = fcmp fast ogt float %245, 1.000000e+00
  %267 = fcmp fast ogt float %250, 1.000000e+00
  %268 = fcmp fast ogt float %252, 1.000000e+00
  %269 = fcmp fast ogt float %254, 1.000000e+00
  %270 = and i1 %264, %267
  %271 = and i1 %265, %268
  %272 = and i1 %266, %269
  %273 = and i1 %270, %271
  %274 = and i1 %273, %272
  %275 = or i1 %263, %274
  %276 = getelementptr [6 x float], [6 x float]* %11, i32 0, i32 0
  %277 = load float, float* %276, align 4
  %278 = getelementptr [6 x float], [6 x float]* %11, i32 0, i32 1
  %279 = load float, float* %278, align 4
  %280 = getelementptr [6 x float], [6 x float]* %11, i32 0, i32 2
  %281 = load float, float* %280, align 4
  %282 = fcmp fast olt float %277, -1.000000e+00
  %283 = fcmp fast olt float %279, -1.000000e+00
  %284 = fcmp fast olt float %281, -1.000000e+00
  %285 = getelementptr [6 x float], [6 x float]* %11, i32 0, i32 3
  %286 = load float, float* %285, align 4
  %287 = getelementptr [6 x float], [6 x float]* %11, i32 0, i32 4
  %288 = load float, float* %287, align 4
  %289 = getelementptr [6 x float], [6 x float]* %11, i32 0, i32 5
  %290 = load float, float* %289, align 4
  %291 = fcmp fast olt float %286, -1.000000e+00
  %292 = fcmp fast olt float %288, -1.000000e+00
  %293 = fcmp fast olt float %290, -1.000000e+00
  %294 = and i1 %282, %291
  %295 = and i1 %283, %292
  %296 = and i1 %284, %293
  %297 = and i1 %294, %295
  %298 = and i1 %297, %296
  %299 = or i1 %275, %298
  %300 = fcmp fast ogt float %277, 1.000000e+00
  %301 = fcmp fast ogt float %279, 1.000000e+00
  %302 = fcmp fast ogt float %281, 1.000000e+00
  %303 = fcmp fast ogt float %286, 1.000000e+00
  %304 = fcmp fast ogt float %288, 1.000000e+00
  %305 = fcmp fast ogt float %290, 1.000000e+00
  %306 = and i1 %300, %303
  %307 = and i1 %301, %304
  %308 = and i1 %302, %305
  %309 = and i1 %306, %307
  %310 = and i1 %309, %308
  %311 = or i1 %299, %310
  %312 = zext i1 %311 to i32
  br label %313

; <label>:313                                     ; preds = %239, %210
  %314 = phi i32 [ %312, %239 ], [ %231, %210 ]
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %375

; <label>:316                                     ; preds = %313
  %317 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %318 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 2
  %319 = getelementptr [6 x float], [6 x float]* %9, i32 0, i32 2
  %320 = load float, float* %318, align 4
  %321 = load float, float* %319, align 4
  %322 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 1
  %323 = getelementptr [6 x float], [6 x float]* %9, i32 0, i32 1
  %324 = load float, float* %322, align 4
  %325 = load float, float* %323, align 4
  %326 = fsub fast float %320, %324
  %327 = fsub fast float %321, %325
  %328 = fmul fast float %326, %326
  %329 = fmul fast float %327, %327
  %330 = fadd fast float %329, %328
  %331 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %332 = fdiv fast float %331, %317
  %333 = call float @dx.op.binary.f32(i32 36, float 1.500000e+01, float %332)  ; FMin(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %333)  ; FMax(a,b)
  %335 = getelementptr [6 x float], [6 x float]* %8, i32 0, i32 0
  %336 = getelementptr [6 x float], [6 x float]* %9, i32 0, i32 0
  %337 = load float, float* %335, align 4
  %338 = load float, float* %336, align 4
  %339 = fsub fast float %337, %320
  %340 = fsub fast float %338, %321
  %341 = fmul fast float %339, %339
  %342 = fmul fast float %340, %340
  %343 = fadd fast float %342, %341
  %344 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %345 = fdiv fast float %344, %317
  %346 = call float @dx.op.binary.f32(i32 36, float 1.500000e+01, float %345)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %346)  ; FMax(a,b)
  %348 = fsub fast float %324, %337
  %349 = fsub fast float %325, %338
  %350 = fmul fast float %348, %348
  %351 = fmul fast float %349, %349
  %352 = fadd fast float %351, %350
  %353 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %354 = fdiv fast float %353, %317
  %355 = call float @dx.op.binary.f32(i32 36, float 1.500000e+01, float %354)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float 0x3F847AE140000000, float %355)  ; FMax(a,b)
  %357 = getelementptr inbounds [3 x float], [3 x float]* %12, i32 0, i32 1
  %358 = load float, float* %357, align 4, !tbaa !27
  %359 = fsub fast float 1.000000e+00, %334
  %360 = fmul fast float %358, %359
  %361 = fadd fast float %360, %334
  %362 = getelementptr inbounds [3 x float], [3 x float]* %12, i32 0, i32 2
  %363 = load float, float* %362, align 4, !tbaa !27
  %364 = fsub fast float 1.000000e+00, %347
  %365 = fmul fast float %363, %364
  %366 = fadd fast float %365, %347
  %367 = getelementptr inbounds [3 x float], [3 x float]* %12, i32 0, i32 0
  %368 = load float, float* %367, align 4, !tbaa !27
  %369 = fsub fast float 1.000000e+00, %356
  %370 = fmul fast float %368, %369
  %371 = fadd fast float %370, %356
  %372 = fadd fast float %366, %361
  %373 = fadd fast float %372, %371
  %374 = fmul fast float %373, 0x3FD5555560000000
  br label %375

; <label>:375                                     ; preds = %316, %313
  %376 = phi float [ %371, %316 ], [ 0.000000e+00, %313 ]
  %377 = phi float [ %366, %316 ], [ 0.000000e+00, %313 ]
  %378 = phi float [ %361, %316 ], [ 0.000000e+00, %313 ]
  %379 = phi float [ %374, %316 ], [ 0.000000e+00, %313 ]
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 0, i8 0, float %378)  ; StorePatchConstant(outputSigID,row,col,value)
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 1, i8 0, float %377)  ; StorePatchConstant(outputSigID,row,col,value)
  call void @dx.op.storePatchConstant.f32(i32 106, i32 0, i32 2, i8 0, float %376)  ; StorePatchConstant(outputSigID,row,col,value)
  call void @dx.op.storePatchConstant.f32(i32 106, i32 1, i32 0, i8 0, float %379)  ; StorePatchConstant(outputSigID,row,col,value)
  ret void
}

define void @hs_main() {
  %1 = call i32 @dx.op.outputControlPointID.i32(i32 107)  ; OutputControlPointID()
  %2 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %3 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 %1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %5)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.outputControlPointID.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.storePatchConstant.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!11}
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"hs", i32 6, i32 0}
!4 = !{!5, null, !7, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 36, i32 1, i32 11, i32 0, null}
!7 = !{!8, !9, !10}
!8 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!9 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!10 = !{i32 2, %superterrainConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 36, null}
!11 = !{[13 x i32] [i32 5, i32 5, i32 1, i32 2, i32 4, i32 0, i32 16, i32 13, i32 6280, i32 6280, i32 6280, i32 0, i32 0]}
!12 = !{void ()* @hs_main, !"hs_main", !13, !4, !25}
!13 = !{!14, !14, !21}
!14 = !{!15, !18}
!15 = !{i32 0, !"TEXCOORD", i8 9, i8 0, !16, i8 2, i32 1, i8 3, i32 0, i8 0, !17}
!16 = !{i32 0}
!17 = !{i32 3, i32 7}
!18 = !{i32 1, !"TEXCOORD", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !20}
!19 = !{i32 2}
!20 = !{i32 3, i32 1}
!21 = !{!22, !24}
!22 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !23, i8 0, i32 3, i8 1, i32 0, i8 3, !20}
!23 = !{i32 0, i32 1, i32 2}
!24 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !16, i8 0, i32 1, i8 1, i32 3, i8 0, !20}
!25 = !{i32 0, i64 16, i32 3, !26}
!26 = !{void ()* @"\01?hs_patch_constants@@YA?AUhs_patch@@V?$InputPatch@UVSHS@@$02@@I@Z", i32 3, i32 3, i32 2, i32 3, i32 3, float 1.500000e+01}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}

