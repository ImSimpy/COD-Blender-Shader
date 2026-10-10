;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; INTERPOLANT_POSITION     0   xyzw        1     NONE   float   xyzw
; COLOR                    0   xyzw        2     NONE   float      w
; TEXCOORD                 0   xyzw        3     NONE   float   xyzw
; TEXCOORD                 3   xyz         4     NONE   float       
; TEXCOORD                 4   xyzw        5     NONE   float   xy  
; COLOR                    3   xyz         6     NONE    uint   x   
; COLOR                    4      w        6     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 6c011c761af66eecae8049e0f90b447c
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
; TEXCOORD                 3                 linear       
; TEXCOORD                 4                 linear       
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t1     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 11, 12, 13, 14, 15, 20, 21, 24 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 11, 12, 13, 14, 15, 20, 21, 24 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 11, 12, 13, 14, 15, 20, 21, 24 }
;   output 3 depends on inputs: { 4, 5, 6, 7, 11, 12, 13, 14, 15, 20, 21, 24 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = fadd fast float %13, 1.000000e+00
  %19 = fsub fast float 1.000000e+00, %14
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 1
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %27 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %28 = fmul fast float %18, %21
  %29 = fmul fast float %28, %24
  %30 = fmul fast float %29, %26
  %31 = fmul fast float %19, %22
  %32 = fmul fast float %31, %24
  %33 = fmul fast float %32, %27
  %34 = fsub fast float 1.000000e+00, %30
  %35 = fsub fast float 1.000000e+00, %33
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = fmul fast float %34, %37
  %40 = fmul fast float %34, %38
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %44 = fmul fast float %35, %42
  %45 = fmul fast float %35, %43
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 1
  %49 = fadd fast float %44, %47
  %50 = fadd fast float %49, %39
  %51 = fadd fast float %45, %48
  %52 = fadd fast float %51, %40
  %53 = fmul fast float %50, %16
  %54 = fmul fast float %52, %16
  %55 = mul i32 %5, 208
  %56 = add i32 %55, 188
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = and i32 %58, 16
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %60, float 1.000000e+00, float %12
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = add i32 %63, 0
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %68 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %65, %dx.types.Handle %17, float %8, float %9, float undef, float undef, i32 0, i32 0, i32 undef, float %67, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = fmul fast float %69, %61
  %71 = icmp eq i32 %59, 0
  br i1 %71, label %91, label %72, !dx.controlflow.hints !38

; <label>:72                                      ; preds = %0
  %73 = add i32 %55, 64
  %74 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = fadd fast float %75, 1.000000e+00
  %77 = fmul fast float %76, %12
  %78 = fsub fast float %77, %75
  %79 = fsub fast float %76, %78
  %80 = call float @dx.op.unary.f32(i32 7, float %79)  ; Saturate(value)
  %81 = fsub fast float 1.000000e+00, %77
  %82 = call float @dx.op.unary.f32(i32 7, float %81)  ; Saturate(value)
  %83 = fsub fast float %80, %82
  %84 = fsub fast float %70, %82
  %85 = fdiv fast float %84, %83
  %86 = call float @dx.op.unary.f32(i32 7, float %85)  ; Saturate(value)
  %87 = fmul fast float %86, 2.000000e+00
  %88 = fsub fast float 3.000000e+00, %87
  %89 = fmul fast float %86, %86
  %90 = fmul fast float %89, %88
  br label %91

; <label>:91                                      ; preds = %72, %0
  %92 = phi float [ %90, %72 ], [ %70, %0 ]
  %93 = and i32 %58, 1024
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %127, label %95, !dx.controlflow.hints !39

; <label>:95                                      ; preds = %91
  %96 = add i32 %55, 48
  %97 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = extractvalue %dx.types.ResRet.f32 %97, 1
  %100 = fadd fast float %10, -5.000000e-01
  %101 = fmul fast float %100, 2.000000e+00
  %102 = fmul fast float %6, %101
  %103 = fmul fast float %7, %101
  %104 = fmul fast float %102, %99
  %105 = fmul fast float %103, %99
  %106 = call float @dx.op.dot2.f32(i32 54, float %6, float %7, float %6, float %7)  ; Dot2(ax,ay,bx,by)
  %107 = call float @dx.op.unary.f32(i32 25, float %106)  ; Rsqrt(value)
  %108 = fmul fast float %104, %107
  %109 = fmul fast float %105, %107
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = fsub fast float %53, %104
  %114 = fadd fast float %113, %111
  %115 = fadd fast float %114, %108
  %116 = fsub fast float %54, %105
  %117 = fadd fast float %116, %112
  %118 = fadd fast float %117, %109
  %119 = fmul fast float %115, %98
  %120 = fmul fast float %118, %98
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = add i32 %122, 0
  %124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %124, %dx.types.Handle %17, float %120, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  br label %134

; <label>:127                                     ; preds = %91
  %128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.i32 %128, 0
  %130 = add i32 %129, 0
  %131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %131, %dx.types.Handle %17, float %10, float %11, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  br label %134

; <label>:134                                     ; preds = %127, %95
  %135 = phi float [ %126, %95 ], [ %133, %127 ]
  %136 = fmul fast float %135, %92
  %137 = fcmp fast ogt float %136, 0.000000e+00
  br i1 %137, label %139, label %138

; <label>:138                                     ; preds = %134
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %139

; <label>:139                                     ; preds = %138, %134
  %140 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 255
  %144 = uitofp i32 %143 to float
  %145 = fmul fast float %144, 0x3F70101020000000
  %146 = lshr i32 %142, 8
  %147 = and i32 %146, 255
  %148 = uitofp i32 %147 to float
  %149 = fmul fast float %148, 0x3F70101020000000
  %150 = lshr i32 %142, 16
  %151 = and i32 %150, 255
  %152 = uitofp i32 %151 to float
  %153 = fmul fast float %152, 0x3F70101020000000
  %154 = fmul fast float %145, %145
  %155 = fmul fast float %149, %149
  %156 = fmul fast float %153, %153
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = add i32 %158, 0
  %160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %160, %dx.types.Handle %17, float %8, float %9, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = extractvalue %dx.types.ResRet.f32 %161, 1
  %164 = extractvalue %dx.types.ResRet.f32 %161, 2
  %165 = fmul fast float %154, %162
  %166 = fmul fast float %155, %163
  %167 = fmul fast float %156, %164
  %168 = fadd fast float %165, -1.000000e+00
  %169 = fadd fast float %166, -1.000000e+00
  %170 = fadd fast float %167, -1.000000e+00
  %171 = fmul fast float %168, %140
  %172 = fmul fast float %169, %140
  %173 = fmul fast float %170, %140
  %174 = fadd fast float %171, 1.000000e+00
  %175 = fadd fast float %172, 1.000000e+00
  %176 = fadd fast float %173, 1.000000e+00
  %177 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %181 = fmul fast float %180, 2.000000e+00
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = fmul fast float %183, %181
  %185 = fadd fast float %184, -1.000000e+00
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fadd fast float %177, -1.000000e+00
  %188 = fmul fast float %187, 0x3FEFFF8000000000
  %189 = fmul fast float %188, %186
  %190 = fadd fast float %189, 1.000000e+00
  %191 = call float @dx.op.unary.f32(i32 23, float %190)  ; Log(value)
  %192 = fmul fast float %191, 0xBFE62E4300000000
  %193 = fdiv fast float %192, %181
  %194 = fsub fast float %15, %181
  %195 = fmul fast float %193, 0x3FD45F3060000000
  %196 = fsub fast float 1.500000e+00, %194
  %197 = fmul fast float %196, 0x400921FB60000000
  %198 = call float @dx.op.unary.f32(i32 13, float %197)  ; Sin(value)
  %199 = fsub fast float 1.500000e+00, %15
  %200 = fmul fast float %199, 0x400921FB60000000
  %201 = call float @dx.op.unary.f32(i32 13, float %200)  ; Sin(value)
  %202 = fsub fast float %198, %201
  %203 = fmul fast float %195, %202
  %204 = fmul fast float %193, 0x3FC45F3060000000
  %205 = fmul fast float %196, 0x401921FB60000000
  %206 = call float @dx.op.unary.f32(i32 13, float %205)  ; Sin(value)
  %207 = fmul fast float %199, 0x401921FB60000000
  %208 = call float @dx.op.unary.f32(i32 13, float %207)  ; Sin(value)
  %209 = fsub fast float %206, %208
  %210 = fmul fast float %204, %209
  %211 = fmul fast float %193, 0x3FBB2995E0000000
  %212 = fmul fast float %196, 0x4022D97C80000000
  %213 = call float @dx.op.unary.f32(i32 13, float %212)  ; Sin(value)
  %214 = fmul fast float %199, 0x4022D97C80000000
  %215 = call float @dx.op.unary.f32(i32 13, float %214)  ; Sin(value)
  %216 = fsub fast float %213, %215
  %217 = fmul fast float %211, %216
  %218 = fmul fast float %193, 0x3FB45F3060000000
  %219 = fmul fast float %196, 0x402921FB60000000
  %220 = call float @dx.op.unary.f32(i32 13, float %219)  ; Sin(value)
  %221 = fmul fast float %199, 0x402921FB60000000
  %222 = call float @dx.op.unary.f32(i32 13, float %221)  ; Sin(value)
  %223 = fsub fast float %220, %222
  %224 = fmul fast float %218, %223
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %225 = call float @dx.op.binary.f32(i32 36, float %203, float 3.225500e+04)  ; FMin(a,b)
  %226 = call float @dx.op.binary.f32(i32 36, float %210, float 3.225500e+04)  ; FMin(a,b)
  %227 = call float @dx.op.binary.f32(i32 36, float %217, float 3.225500e+04)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 36, float %224, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %225)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %226)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %227)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %228)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!dx.viewIdState = !{!15}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !10, !13}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!13 = !{!14}
!14 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!15 = !{[30 x i32] [i32 28, i32 4, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, !37}
!17 = !{!18, !35, null}
!18 = !{!19, !21, !23, !25, !26, !28, !31, !33, !34}
!19 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!20 = !{i32 0}
!21 = !{i32 1, !"INTERPOLANT_POSITION", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 1, i8 0, !22}
!22 = !{i32 3, i32 15}
!23 = !{i32 2, !"COLOR", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 2, i8 0, !24}
!24 = !{i32 3, i32 8}
!25 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 3, i8 0, !22}
!26 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !27, i8 2, i32 1, i8 3, i32 4, i8 0, null}
!27 = !{i32 3}
!28 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 4, i32 5, i8 0, !30}
!29 = !{i32 4}
!30 = !{i32 3, i32 3}
!31 = !{i32 6, !"COLOR", i8 5, i8 0, !27, i8 1, i32 1, i8 3, i32 6, i8 0, !32}
!32 = !{i32 3, i32 1}
!33 = !{i32 7, !"COLOR", i8 5, i8 0, !29, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!34 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !20, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!35 = !{!36}
!36 = !{i32 0, !"SV_Target", i8 9, i8 16, !20, i8 0, i32 1, i8 4, i32 0, i8 0, !22}
!37 = !{i32 0, i64 24}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}

