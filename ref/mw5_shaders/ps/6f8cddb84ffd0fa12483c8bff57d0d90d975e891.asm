;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; INTERPOLANT_POSITION     0   xyzw        1     NONE   float     z 
; COLOR                    0   xyzw        2     NONE   float      w
; TEXCOORD                 0   xy          3     NONE   float   xy  
; TEXCOORD                 1   xyz         4     NONE   float   xyz 
; TEXCOORD                 2   xyzw        5     NONE   float   xyz 
; TEXCOORD                 3   xyz         6     NONE   float       
; QUAD_POSITION            0   xyzw        7     NONE   float      w
; COLOR                    3   xyz         8     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 1fa07d449ab7a20b43348e87333ad136
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; INTERPOLANT_POSITION     0                 linear       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 1                 linear       
; TEXCOORD                 2        nointerpolation       
; TEXCOORD                 3                 linear       
; QUAD_POSITION            0        nointerpolation       
; COLOR                    3        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
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
;   [192 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s0     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture     f32          2d      T2     t12,space2     1
;                                   texture    byte         r/o      T3             t0     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 6, 11, 12, 13, 16, 17, 18, 20, 21, 22, 31, 32, 34 }
;   output 1 depends on inputs: { 6, 11, 12, 13, 16, 17, 18, 20, 21, 22, 31, 32, 34 }
;   output 2 depends on inputs: { 6, 11, 12, 13, 16, 17, 18, 20, 21, 22, 31, 32, 34 }
;   output 3 depends on inputs: { 6, 11, 12, 13, 16, 17, 18, 20, 21, 22, 31, 32, 34 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = mul i32 %7, 208
  %22 = add i32 %21, 188
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = fadd fast float %16, %10
  %26 = fadd fast float %17, %11
  %27 = and i32 %24, 16
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %28, float 1.000000e+00, float %18
  %30 = add i32 %8, 112
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = add i32 %32, 0
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %37 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %34, %dx.types.Handle %20, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float %36, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = add i32 %40, 0
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %45 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %42, %dx.types.Handle %20, float %25, float %26, float undef, float undef, i32 0, i32 0, i32 undef, float %44, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = fsub fast float %46, %38
  %48 = fmul fast float %47, %12
  %49 = fadd fast float %48, %38
  %50 = fmul fast float %49, %29
  %51 = icmp eq i32 %27, 0
  br i1 %51, label %71, label %52, !dx.controlflow.hints !44

; <label>:52                                      ; preds = %0
  %53 = add i32 %21, 64
  %54 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = fadd fast float %55, 1.000000e+00
  %57 = fmul fast float %56, %18
  %58 = fsub fast float %57, %55
  %59 = fsub fast float %56, %58
  %60 = call float @dx.op.unary.f32(i32 7, float %59)  ; Saturate(value)
  %61 = fsub fast float 1.000000e+00, %57
  %62 = call float @dx.op.unary.f32(i32 7, float %61)  ; Saturate(value)
  %63 = fsub fast float %60, %62
  %64 = fsub fast float %50, %62
  %65 = fdiv fast float %64, %63
  %66 = call float @dx.op.unary.f32(i32 7, float %65)  ; Saturate(value)
  %67 = fmul fast float %66, 2.000000e+00
  %68 = fsub fast float 3.000000e+00, %67
  %69 = fmul fast float %66, %66
  %70 = fmul fast float %69, %68
  br label %71

; <label>:71                                      ; preds = %52, %0
  %72 = phi float [ %70, %52 ], [ %50, %0 ]
  %73 = fcmp fast ogt float %72, 0.000000e+00
  br i1 %73, label %75, label %74

; <label>:74                                      ; preds = %71
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %75

; <label>:75                                      ; preds = %74, %71
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %78 = fsub fast float %13, %77
  %79 = fsub fast float %14, %77
  %80 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %4, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float %15)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = fmul fast float %81, %72
  %83 = call float @dx.op.unary.f32(i32 7, float %82)  ; Saturate(value)
  %84 = fsub fast float 1.000000e+00, %83
  %85 = call float @dx.op.dot3.f32(i32 55, float %84, float %84, float %84, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %86 = fmul fast float %9, 2.000000e+00
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %89 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %90 = fmul fast float %86, %89
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = fmul fast float %92, %90
  %94 = fadd fast float %93, -1.000000e+00
  %95 = call float @dx.op.unary.f32(i32 7, float %94)  ; Saturate(value)
  %96 = fadd fast float %85, -1.000000e+00
  %97 = fmul fast float %96, 0x3FEFFF8000000000
  %98 = fmul fast float %97, %95
  %99 = fadd fast float %98, 1.000000e+00
  %100 = call float @dx.op.unary.f32(i32 23, float %99)  ; Log(value)
  %101 = fmul fast float %100, 0xBFE62E4300000000
  %102 = fdiv fast float %101, %90
  %103 = fsub fast float %19, %90
  %104 = fmul fast float %102, 0x3FD45F3060000000
  %105 = fsub fast float 1.500000e+00, %103
  %106 = fmul fast float %105, 0x400921FB60000000
  %107 = call float @dx.op.unary.f32(i32 13, float %106)  ; Sin(value)
  %108 = fsub fast float 1.500000e+00, %19
  %109 = fmul fast float %108, 0x400921FB60000000
  %110 = call float @dx.op.unary.f32(i32 13, float %109)  ; Sin(value)
  %111 = fsub fast float %107, %110
  %112 = fmul fast float %104, %111
  %113 = fmul fast float %102, 0x3FC45F3060000000
  %114 = fmul fast float %105, 0x401921FB60000000
  %115 = call float @dx.op.unary.f32(i32 13, float %114)  ; Sin(value)
  %116 = fmul fast float %108, 0x401921FB60000000
  %117 = call float @dx.op.unary.f32(i32 13, float %116)  ; Sin(value)
  %118 = fsub fast float %115, %117
  %119 = fmul fast float %113, %118
  %120 = fmul fast float %102, 0x3FBB2995E0000000
  %121 = fmul fast float %105, 0x4022D97C80000000
  %122 = call float @dx.op.unary.f32(i32 13, float %121)  ; Sin(value)
  %123 = fmul fast float %108, 0x4022D97C80000000
  %124 = call float @dx.op.unary.f32(i32 13, float %123)  ; Sin(value)
  %125 = fsub fast float %122, %124
  %126 = fmul fast float %120, %125
  %127 = fmul fast float %102, 0x3FB45F3060000000
  %128 = fmul fast float %105, 0x402921FB60000000
  %129 = call float @dx.op.unary.f32(i32 13, float %128)  ; Sin(value)
  %130 = fmul fast float %108, 0x402921FB60000000
  %131 = call float @dx.op.unary.f32(i32 13, float %130)  ; Sin(value)
  %132 = fsub fast float %129, %131
  %133 = fmul fast float %127, %132
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %134 = call float @dx.op.binary.f32(i32 36, float %112, float 3.225500e+04)  ; FMin(a,b)
  %135 = call float @dx.op.binary.f32(i32 36, float %119, float 3.225500e+04)  ; FMin(a,b)
  %136 = call float @dx.op.binary.f32(i32 36, float %126, float 3.225500e+04)  ; FMin(a,b)
  %137 = call float @dx.op.binary.f32(i32 36, float %133, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %134)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %135)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %136)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %137)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!17}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !11, !14}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!14 = !{!15, !16}
!15 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!16 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!17 = !{[37 x i32] [i32 35, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 15]}
!18 = !{void ()* @ps_main, !"ps_main", !19, !4, !43}
!19 = !{!20, !40, null}
!20 = !{!21, !23, !25, !27, !29, !32, !34, !36, !37, !39}
!21 = !{i32 0, !"SV_Position", i8 9, i8 3, !22, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!22 = !{i32 0}
!23 = !{i32 1, !"INTERPOLANT_POSITION", i8 9, i8 0, !22, i8 2, i32 1, i8 4, i32 1, i8 0, !24}
!24 = !{i32 3, i32 4}
!25 = !{i32 2, !"COLOR", i8 9, i8 0, !22, i8 2, i32 1, i8 4, i32 2, i8 0, !26}
!26 = !{i32 3, i32 8}
!27 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !22, i8 2, i32 1, i8 2, i32 3, i8 0, !28}
!28 = !{i32 3, i32 3}
!29 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 3, i32 4, i8 0, !31}
!30 = !{i32 1}
!31 = !{i32 3, i32 7}
!32 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !33, i8 1, i32 1, i8 4, i32 5, i8 0, !31}
!33 = !{i32 2}
!34 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !35, i8 2, i32 1, i8 3, i32 6, i8 0, null}
!35 = !{i32 3}
!36 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !22, i8 1, i32 1, i8 4, i32 7, i8 0, !26}
!37 = !{i32 8, !"COLOR", i8 5, i8 0, !35, i8 1, i32 1, i8 3, i32 8, i8 0, !38}
!38 = !{i32 3, i32 5}
!39 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !22, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!40 = !{!41}
!41 = !{i32 0, !"SV_Target", i8 9, i8 16, !22, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!42 = !{i32 3, i32 15}
!43 = !{i32 0, i64 24}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}

