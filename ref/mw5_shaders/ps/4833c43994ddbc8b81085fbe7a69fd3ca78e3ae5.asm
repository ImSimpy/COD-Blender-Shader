;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 1   xyzw        2     NONE   float   xyz 
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 6da4eea9550785726a864d1d0002c3a2
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
; TEXCOORD                 0                 linear       
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
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture     u32         buf      T1             t1     1
;                                   texture  struct         r/o      T2             t2     1
;                                   texture     u32         buf      T3             t3     1
;                                   texture     u32         buf      T4             t4     1
;                                   texture     u32         buf      T5             t5     1
;                                   texture     f32         buf      T6             t6     1
;                                   texture     u32         buf      T7             t7     1
;                                   texture     f32         buf      T8             t8     1
;                                   texture    byte         r/o      T9             t9     1
;                                   texture    byte         r/o     T10            t10     1
;
;
; ViewId state:
;
; Number of inputs: 12, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 8, 9, 10 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 8, 9, 10 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 8, 9, 10 }
;   output 3 depends on inputs: { 8, 9, 10 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = alloca [8 x float], align 4
  %21 = alloca [8 x i32], align 4
  %22 = alloca [8 x float], align 4
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = icmp eq i32 %24, 1
  br i1 %37, label %1110, label %38

; <label>:38                                      ; preds = %0
  %39 = icmp eq i32 %24, 0
  br i1 %39, label %40, label %251

; <label>:40                                      ; preds = %38
  %41 = fptosi float %19 to i32
  %42 = shl i32 %41, 5
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = extractvalue %dx.types.ResRet.i32 %43, 2
  %47 = extractvalue %dx.types.ResRet.i32 %43, 3
  %48 = or i32 %42, 16
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = extractvalue %dx.types.ResRet.i32 %49, 1
  %52 = extractvalue %dx.types.ResRet.i32 %49, 2
  %53 = shl i32 %44, 4
  %54 = and i32 %53, 32752
  %55 = call float @dx.op.legacyF16ToF32(i32 131, i32 %54)  ; LegacyF16ToF32(value)
  %56 = lshr i32 %44, 7
  %57 = and i32 %56, 32752
  %58 = call float @dx.op.legacyF16ToF32(i32 131, i32 %57)  ; LegacyF16ToF32(value)
  %59 = lshr i32 %44, 22
  %60 = shl nuw nsw i32 %59, 5
  %61 = call float @dx.op.legacyF16ToF32(i32 131, i32 %60)  ; LegacyF16ToF32(value)
  %62 = and i32 %45, 255
  %63 = uitofp i32 %62 to float
  %64 = fmul fast float %63, 0x3F80204080000000
  %65 = fadd fast float %64, -1.000000e+00
  %66 = lshr i32 %45, 8
  %67 = and i32 %66, 255
  %68 = uitofp i32 %67 to float
  %69 = lshr i32 %45, 16
  %70 = and i32 %69, 255
  %71 = uitofp i32 %70 to float
  %72 = fmul fast float %71, 0x3F80204080000000
  %73 = fadd fast float %72, -1.000000e+00
  %74 = lshr i32 %45, 24
  %75 = uitofp i32 %74 to float
  %76 = fmul fast float %75, 0x3F80204080000000
  %77 = fadd fast float %76, -1.000000e+00
  %78 = and i32 %46, 255
  %79 = uitofp i32 %78 to float
  %80 = lshr i32 %46, 8
  %81 = and i32 %80, 255
  %82 = uitofp i32 %81 to float
  %83 = lshr i32 %46, 16
  %84 = and i32 %83, 255
  %85 = uitofp i32 %84 to float
  %86 = lshr i32 %46, 24
  %87 = uitofp i32 %86 to float
  %88 = and i32 %47, 255
  %89 = uitofp i32 %88 to float
  %90 = fmul fast float %89, 0x3F80204080000000
  %91 = fadd fast float %90, -1.000000e+00
  %92 = lshr i32 %47, 8
  %93 = and i32 %92, 255
  %94 = uitofp i32 %93 to float
  %95 = lshr i32 %47, 16
  %96 = and i32 %95, 255
  %97 = uitofp i32 %96 to float
  %98 = fmul fast float %97, 0x3F80204080000000
  %99 = fadd fast float %98, -1.000000e+00
  %100 = lshr i32 %47, 24
  %101 = uitofp i32 %100 to float
  %102 = fmul fast float %101, 0x3F80204080000000
  %103 = fadd fast float %102, -1.000000e+00
  %104 = and i32 %50, 255
  %105 = uitofp i32 %104 to float
  %106 = lshr i32 %50, 8
  %107 = and i32 %106, 255
  %108 = uitofp i32 %107 to float
  %109 = lshr i32 %50, 16
  %110 = and i32 %109, 255
  %111 = uitofp i32 %110 to float
  %112 = lshr i32 %50, 24
  %113 = uitofp i32 %112 to float
  %114 = and i32 %51, 255
  %115 = uitofp i32 %114 to float
  %116 = fmul fast float %115, 0x3F80204080000000
  %117 = fadd fast float %116, -1.000000e+00
  %118 = lshr i32 %51, 8
  %119 = and i32 %118, 255
  %120 = uitofp i32 %119 to float
  %121 = lshr i32 %51, 16
  %122 = and i32 %121, 255
  %123 = uitofp i32 %122 to float
  %124 = fmul fast float %123, 0x3F80204080000000
  %125 = fadd fast float %124, -1.000000e+00
  %126 = lshr i32 %51, 24
  %127 = uitofp i32 %126 to float
  %128 = fmul fast float %127, 0x3F80204080000000
  %129 = fadd fast float %128, -1.000000e+00
  %130 = and i32 %52, 255
  %131 = uitofp i32 %130 to float
  %132 = lshr i32 %52, 8
  %133 = and i32 %132, 255
  %134 = uitofp i32 %133 to float
  %135 = lshr i32 %52, 16
  %136 = and i32 %135, 255
  %137 = uitofp i32 %136 to float
  %138 = lshr i32 %52, 24
  %139 = uitofp i32 %138 to float
  %140 = call float @dx.op.dot3.f32(i32 55, float %16, float %17, float %18, float %16, float %17, float %18)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = call float @dx.op.unary.f32(i32 25, float %140)  ; Rsqrt(value)
  %142 = fmul fast float %141, %16
  %143 = fmul fast float %141, %17
  %144 = fmul fast float %141, %18
  %145 = fmul fast float %68, 0x3F72323BE0000000
  %146 = fadd fast float %145, 0xBFE20DD760000000
  %147 = fmul fast float %146, %144
  %148 = fmul fast float %144, %144
  %149 = fmul fast float %148, 0x3FEE471020000000
  %150 = fadd fast float %149, 0xBFD42F6020000000
  %151 = fmul fast float %82, 0x3F720786A0000000
  %152 = fadd fast float %151, 0xBFE1E377A0000000
  %153 = fmul fast float %152, %150
  %154 = fmul fast float %142, %73
  %155 = fmul fast float %143, %65
  %156 = fmul fast float %144, 0xBFF17B1420000000
  %157 = fmul fast float %85, 0x3F6F3A5360000000
  %158 = fadd fast float %157, 0xBFDEFBDEC0000000
  %159 = fmul fast float %158, %156
  %160 = fmul fast float %79, 0x3F6F3A5360000000
  %161 = fadd fast float %160, 0xBFDEFBDEC0000000
  %162 = fmul fast float %161, %143
  %163 = fmul fast float %162, %156
  %164 = fmul fast float %142, %142
  %165 = fmul fast float %143, %143
  %166 = fsub fast float %164, %165
  %167 = fmul fast float %87, 0x3F610F1820000000
  %168 = fadd fast float %167, 0xBFD0ECFA00000000
  %169 = fmul fast float %168, %166
  %170 = fmul fast float %17, 0x3FE0ECFA00000000
  %171 = fmul fast float %170, %77
  %172 = fmul fast float %171, %141
  %173 = fadd fast float %172, %159
  %174 = fmul fast float %173, %142
  %175 = fadd fast float %163, 0x3FD20DD760000000
  %176 = fadd fast float %175, %147
  %177 = fadd fast float %176, %169
  %178 = fadd fast float %177, %153
  %179 = fadd fast float %178, %174
  %180 = fadd fast float %154, %155
  %181 = fmul fast float %180, 0x3FE20DD760000000
  %182 = fsub fast float %179, %181
  %183 = fmul fast float %55, %182
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %186 = fmul fast float %183, %185
  %187 = fmul fast float %94, 0x3F72323BE0000000
  %188 = fadd fast float %187, 0xBFE20DD760000000
  %189 = fmul fast float %188, %144
  %190 = fmul fast float %108, 0x3F720786A0000000
  %191 = fadd fast float %190, 0xBFE1E377A0000000
  %192 = fmul fast float %191, %150
  %193 = fmul fast float %142, %99
  %194 = fmul fast float %143, %91
  %195 = fmul fast float %111, 0x3F6F3A5360000000
  %196 = fadd fast float %195, 0xBFDEFBDEC0000000
  %197 = fmul fast float %196, %156
  %198 = fmul fast float %105, 0x3F6F3A5360000000
  %199 = fadd fast float %198, 0xBFDEFBDEC0000000
  %200 = fmul fast float %199, %143
  %201 = fmul fast float %200, %156
  %202 = fmul fast float %113, 0x3F610F1820000000
  %203 = fadd fast float %202, 0xBFD0ECFA00000000
  %204 = fmul fast float %203, %166
  %205 = fmul fast float %170, %103
  %206 = fmul fast float %205, %141
  %207 = fadd fast float %206, %197
  %208 = fmul fast float %207, %142
  %209 = fadd fast float %201, 0x3FD20DD760000000
  %210 = fadd fast float %209, %189
  %211 = fadd fast float %210, %204
  %212 = fadd fast float %211, %192
  %213 = fadd fast float %212, %208
  %214 = fadd fast float %193, %194
  %215 = fmul fast float %214, 0x3FE20DD760000000
  %216 = fsub fast float %213, %215
  %217 = fmul fast float %58, %216
  %218 = fmul fast float %217, %185
  %219 = fmul fast float %120, 0x3F72323BE0000000
  %220 = fadd fast float %219, 0xBFE20DD760000000
  %221 = fmul fast float %220, %144
  %222 = fmul fast float %134, 0x3F720786A0000000
  %223 = fadd fast float %222, 0xBFE1E377A0000000
  %224 = fmul fast float %223, %150
  %225 = fmul fast float %142, %125
  %226 = fmul fast float %143, %117
  %227 = fmul fast float %137, 0x3F6F3A5360000000
  %228 = fadd fast float %227, 0xBFDEFBDEC0000000
  %229 = fmul fast float %228, %156
  %230 = fmul fast float %131, 0x3F6F3A5360000000
  %231 = fadd fast float %230, 0xBFDEFBDEC0000000
  %232 = fmul fast float %231, %143
  %233 = fmul fast float %232, %156
  %234 = fmul fast float %139, 0x3F610F1820000000
  %235 = fadd fast float %234, 0xBFD0ECFA00000000
  %236 = fmul fast float %235, %166
  %237 = fmul fast float %170, %129
  %238 = fmul fast float %237, %141
  %239 = fadd fast float %238, %229
  %240 = fmul fast float %239, %142
  %241 = fadd fast float %233, 0x3FD20DD760000000
  %242 = fadd fast float %241, %221
  %243 = fadd fast float %242, %236
  %244 = fadd fast float %243, %224
  %245 = fadd fast float %244, %240
  %246 = fadd fast float %225, %226
  %247 = fmul fast float %246, 0x3FE20DD760000000
  %248 = fsub fast float %245, %247
  %249 = fmul fast float %61, %248
  %250 = fmul fast float %249, %185
  br label %1110

; <label>:251                                     ; preds = %38
  %252 = icmp eq i32 %24, 3
  br i1 %252, label %253, label %1110

; <label>:253                                     ; preds = %251
  %254 = fsub fast float %13, %26
  %255 = fsub fast float %14, %27
  %256 = fsub fast float %15, %28
  %257 = fmul fast float %254, %30
  %258 = fmul fast float %255, %31
  %259 = fmul fast float %256, %32
  %260 = fcmp fast ole float %257, 0.000000e+00
  %261 = fcmp fast ole float %258, 0.000000e+00
  %262 = fcmp fast ole float %259, 0.000000e+00
  %263 = or i1 %260, %261
  %264 = or i1 %262, %263
  %265 = fcmp fast oge float %257, 1.000000e+00
  %266 = fcmp fast oge float %258, 1.000000e+00
  %267 = fcmp fast oge float %259, 1.000000e+00
  %268 = or i1 %265, %266
  %269 = or i1 %267, %268
  %270 = or i1 %264, %269
  br i1 %270, label %999, label %271

; <label>:271                                     ; preds = %253
  %272 = fptosi float %254 to i32
  %273 = fptosi float %255 to i32
  %274 = fptosi float %256 to i32
  %275 = and i32 %36, 31
  %276 = ashr i32 %272, %275
  %277 = ashr i32 %273, %275
  %278 = ashr i32 %274, %275
  %279 = mul i32 %277, %34
  %280 = add nsw i32 %279, %276
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %280, i32 0)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %280, i32 4)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = icmp slt i32 %278, %282
  %286 = icmp sgt i32 %278, %284
  %287 = or i1 %285, %286
  br i1 %287, label %999, label %288

; <label>:288                                     ; preds = %271
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %280, i32 8)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = sub i32 %278, %282
  %292 = add nsw i32 %291, %290
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = icmp eq i32 %294, -1
  br i1 %295, label %999, label %296

; <label>:296                                     ; preds = %288
  %297 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 0
  store i32 -1, i32* %297, align 4, !tbaa !36, !noalias !40
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 1
  store i32 -1, i32* %298, align 4, !tbaa !36, !noalias !40
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 2
  store i32 -1, i32* %299, align 4, !tbaa !36, !noalias !40
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 3
  store i32 -1, i32* %300, align 4, !tbaa !36, !noalias !40
  %301 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 4
  store i32 -1, i32* %301, align 4, !tbaa !36, !noalias !40
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 5
  store i32 -1, i32* %302, align 4, !tbaa !36, !noalias !40
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 6
  store i32 -1, i32* %303, align 4, !tbaa !36, !noalias !40
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 7
  store i32 -1, i32* %304, align 4, !tbaa !36, !noalias !40
  br label %305

; <label>:305                                     ; preds = %409, %296
  %306 = phi i32 [ -1, %296 ], [ %406, %409 ]
  %307 = phi i32 [ -1, %296 ], [ %401, %409 ]
  %308 = phi i32 [ -1, %296 ], [ %394, %409 ]
  %309 = phi i32 [ -1, %296 ], [ %389, %409 ]
  %310 = phi i32 [ -1, %296 ], [ %380, %409 ]
  %311 = phi i32 [ -1, %296 ], [ %375, %409 ]
  %312 = phi i32 [ -1, %296 ], [ %367, %409 ]
  %313 = phi i32 [ -1, %296 ], [ %360, %409 ]
  %314 = phi i32 [ %294, %296 ], [ %429, %409 ]
  %315 = phi i32 [ %36, %296 ], [ %316, %409 ]
  %316 = add nsw i32 %315, -2
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %318, 31
  %322 = shl i32 1, %321
  %323 = add i32 %322, 1
  %324 = and i32 %316, 31
  %325 = ashr i32 %272, %324
  %326 = ashr i32 %273, %324
  %327 = ashr i32 %274, %324
  %328 = and i32 %325, 3
  %329 = and i32 %326, 3
  %330 = and i32 %327, 3
  br label %331

; <label>:331                                     ; preds = %331, %305
  %332 = phi i32 [ %306, %305 ], [ %406, %331 ]
  %333 = phi i32 [ %307, %305 ], [ %401, %331 ]
  %334 = phi i32 [ %308, %305 ], [ %394, %331 ]
  %335 = phi i32 [ %309, %305 ], [ %389, %331 ]
  %336 = phi i32 [ %310, %305 ], [ %380, %331 ]
  %337 = phi i32 [ %311, %305 ], [ %375, %331 ]
  %338 = phi i32 [ %312, %305 ], [ %367, %331 ]
  %339 = phi i32 [ %313, %305 ], [ %360, %331 ]
  %340 = phi i32 [ 0, %305 ], [ %407, %331 ]
  %341 = sub i32 2, %340
  %342 = and i32 %341, 31
  %343 = lshr i32 %328, %342
  %344 = lshr i32 %329, %342
  %345 = lshr i32 %330, %342
  %346 = sub i32 %318, %340
  %347 = and i32 %346, 31
  %348 = shl i32 %343, %347
  %349 = shl i32 %344, %347
  %350 = shl i32 %345, %347
  %351 = shl i32 1, %347
  %352 = mul i32 %350, %323
  %353 = add i32 %352, %349
  %354 = mul i32 %353, %323
  %355 = add i32 %348, %320
  %356 = add i32 %355, %354
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = icmp ne i32 %358, -1
  %360 = select i1 %359, i32 %358, i32 %339
  store i32 %360, i32* %297, align 4, !tbaa !36, !noalias !40
  %361 = add i32 %351, %320
  %362 = add i32 %361, %348
  %363 = add i32 %362, %354
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = icmp ne i32 %365, -1
  %367 = select i1 %366, i32 %365, i32 %338
  store i32 %367, i32* %298, align 4, !tbaa !36, !noalias !40
  %368 = add i32 %349, %351
  %369 = add i32 %368, %352
  %370 = mul i32 %369, %323
  %371 = add i32 %355, %370
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = icmp ne i32 %373, -1
  %375 = select i1 %374, i32 %373, i32 %337
  store i32 %375, i32* %299, align 4, !tbaa !36, !noalias !40
  %376 = add i32 %362, %370
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = icmp ne i32 %378, -1
  %380 = select i1 %379, i32 %378, i32 %336
  store i32 %380, i32* %300, align 4, !tbaa !36, !noalias !40
  %381 = add i32 %350, %351
  %382 = mul i32 %381, %323
  %383 = add i32 %382, %349
  %384 = mul i32 %383, %323
  %385 = add i32 %355, %384
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = icmp ne i32 %387, -1
  %389 = select i1 %388, i32 %387, i32 %335
  store i32 %389, i32* %301, align 4, !tbaa !36, !noalias !40
  %390 = add i32 %362, %384
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = icmp ne i32 %392, -1
  %394 = select i1 %393, i32 %392, i32 %334
  store i32 %394, i32* %302, align 4, !tbaa !36, !noalias !40
  %395 = add i32 %368, %382
  %396 = mul i32 %395, %323
  %397 = add i32 %355, %396
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = icmp ne i32 %399, -1
  %401 = select i1 %400, i32 %399, i32 %333
  store i32 %401, i32* %303, align 4, !tbaa !36, !noalias !40
  %402 = add i32 %362, %396
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = icmp ne i32 %404, -1
  %406 = select i1 %405, i32 %404, i32 %332
  store i32 %406, i32* %304, align 4, !tbaa !36, !noalias !40
  %407 = add i32 %340, 1
  %408 = icmp ugt i32 %407, %318
  br i1 %408, label %409, label %331

; <label>:409                                     ; preds = %331
  %410 = shl nuw nsw i32 %330, 4
  %411 = shl nuw nsw i32 %329, 2
  %412 = lshr i32 %330, 1
  %413 = and i32 %410, 16
  %414 = or i32 %411, %328
  %415 = or i32 %414, %413
  %416 = shl i32 1, %415
  %417 = shl nuw nsw i32 %412, 2
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %314, i32 %417)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, %416
  %421 = icmp eq i32 %420, 0
  %422 = add i32 %416, -1
  %423 = and i32 %419, %422
  %424 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %423)  ; Countbits(value)
  %425 = or i32 %417, 8
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %314, i32 %425)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, %424
  %429 = select i1 %421, i32 -1, i32 %428
  %430 = icmp eq i32 %429, -1
  br i1 %430, label %431, label %305

; <label>:431                                     ; preds = %409
  br label %432

; <label>:432                                     ; preds = %718, %431
  %433 = phi i32 [ %720, %718 ], [ %360, %431 ]
  %434 = phi float [ %715, %718 ], [ 0.000000e+00, %431 ]
  %435 = phi i32 [ %716, %718 ], [ 0, %431 ]
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = extractvalue %dx.types.ResRet.f32 %436, 3
  %441 = fsub fast float %13, %437
  %442 = fsub fast float %14, %438
  %443 = fsub fast float %15, %439
  %444 = fmul fast float %441, %440
  %445 = fmul fast float %442, %440
  %446 = fmul fast float %443, %440
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %450 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %451 = fsub fast float 1.000000e+00, %449
  %452 = fsub fast float 1.000000e+00, %450
  %453 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %454 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %455 = fmul fast float %454, %453
  %456 = mul i32 %448, 29
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = extractvalue %dx.types.ResRet.f32 %457, 3
  %462 = add i32 %456, 1
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = add i32 %456, 2
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = extractvalue %dx.types.ResRet.f32 %469, 3
  %474 = add i32 %456, 3
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = extractvalue %dx.types.ResRet.f32 %475, 3
  %480 = add i32 %456, 4
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = add i32 %456, 5
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = extractvalue %dx.types.ResRet.f32 %487, 3
  %492 = add i32 %456, 6
  %493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = add i32 %456, 7
  %499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = extractvalue %dx.types.ResRet.f32 %499, 1
  %502 = extractvalue %dx.types.ResRet.f32 %499, 2
  %503 = extractvalue %dx.types.ResRet.f32 %499, 3
  %504 = fmul fast float %458, %444
  %505 = fmul fast float %470, %445
  %506 = fadd fast float %505, %504
  %507 = fmul fast float %482, %446
  %508 = fadd fast float %506, %507
  %509 = fmul fast float %459, %444
  %510 = fmul fast float %471, %445
  %511 = fadd fast float %510, %509
  %512 = fmul fast float %483, %446
  %513 = fadd fast float %511, %512
  %514 = fmul fast float %460, %444
  %515 = fmul fast float %472, %445
  %516 = fadd fast float %515, %514
  %517 = fmul fast float %484, %446
  %518 = fadd fast float %516, %517
  %519 = fmul fast float %461, %444
  %520 = fmul fast float %473, %445
  %521 = fadd fast float %520, %519
  %522 = fmul fast float %485, %446
  %523 = fadd fast float %521, %522
  %524 = fmul fast float %464, %444
  %525 = fmul fast float %476, %445
  %526 = fadd fast float %525, %524
  %527 = fmul fast float %488, %446
  %528 = fadd fast float %526, %527
  %529 = fmul fast float %465, %444
  %530 = fmul fast float %477, %445
  %531 = fadd fast float %530, %529
  %532 = fmul fast float %489, %446
  %533 = fadd fast float %531, %532
  %534 = fmul fast float %466, %444
  %535 = fmul fast float %478, %445
  %536 = fadd fast float %535, %534
  %537 = fmul fast float %490, %446
  %538 = fadd fast float %536, %537
  %539 = fmul fast float %467, %444
  %540 = fmul fast float %479, %445
  %541 = fadd fast float %540, %539
  %542 = fmul fast float %491, %446
  %543 = fadd fast float %541, %542
  %544 = fadd fast float %508, %494
  %545 = fadd fast float %513, %495
  %546 = fadd fast float %518, %496
  %547 = fadd fast float %523, %497
  %548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %544)  ; FMax(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %545)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %546)  ; FMax(a,b)
  %551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %547)  ; FMax(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %544)  ; FMin(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %545)  ; FMin(a,b)
  %554 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %546)  ; FMin(a,b)
  %555 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %547)  ; FMin(a,b)
  %556 = fmul fast float %552, 0x3F847AE140000000
  %557 = fmul fast float %553, 0x3F847AE140000000
  %558 = fmul fast float %554, 0x3F847AE140000000
  %559 = fmul fast float %555, 0x3F847AE140000000
  %560 = fadd fast float %556, %548
  %561 = fadd fast float %557, %549
  %562 = fadd fast float %558, %550
  %563 = fadd fast float %559, %551
  %564 = fadd fast float %528, %500
  %565 = fadd fast float %533, %501
  %566 = fadd fast float %538, %502
  %567 = fadd fast float %543, %503
  %568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %564)  ; FMax(a,b)
  %569 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %565)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %566)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %567)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %564)  ; FMin(a,b)
  %573 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %565)  ; FMin(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %566)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %567)  ; FMin(a,b)
  %576 = fmul fast float %572, 0x3F847AE140000000
  %577 = fmul fast float %573, 0x3F847AE140000000
  %578 = fmul fast float %574, 0x3F847AE140000000
  %579 = fmul fast float %575, 0x3F847AE140000000
  %580 = fadd fast float %576, %568
  %581 = fadd fast float %577, %569
  %582 = fadd fast float %578, %570
  %583 = fadd fast float %579, %571
  br label %584

; <label>:584                                     ; preds = %584, %432
  %585 = phi i32 [ 0, %432 ], [ %605, %584 ]
  %586 = add i32 %456, 8
  %587 = shl i32 %585, 1
  %588 = add i32 %586, %587
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = extractvalue %dx.types.ResRet.f32 %589, 3
  %594 = add i32 %456, 9
  %595 = add i32 %594, %587
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = extractvalue %dx.types.ResRet.f32 %596, 3
  %601 = call float @dx.op.dot4.f32(i32 56, float %590, float %591, float %592, float %593, float %560, float %561, float %562, float %563)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %602 = call float @dx.op.dot4.f32(i32 56, float %597, float %598, float %599, float %600, float %580, float %581, float %582, float %583)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %603 = fadd fast float %602, %601
  %604 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 %585
  store float %603, float* %604, align 4, !tbaa !46, !noalias !40
  %605 = add nuw nsw i32 %585, 1
  %606 = icmp eq i32 %605, 8
  br i1 %606, label %607, label %584

; <label>:607                                     ; preds = %584
  %608 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %609 = fsub fast float 1.000000e+00, %608
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  %611 = fmul fast float %455, %610
  %612 = add i32 %456, 24
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = extractvalue %dx.types.ResRet.f32 %613, 3
  %618 = add i32 %456, 25
  %619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = extractvalue %dx.types.ResRet.f32 %619, 3
  %624 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 0
  %625 = load float, float* %624, align 4, !tbaa !46, !noalias !40
  %626 = fadd fast float %625, %614
  %627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %626)  ; FMax(a,b)
  %628 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %626)  ; FMin(a,b)
  %629 = fmul fast float %628, 0x3F847AE140000000
  %630 = fadd fast float %629, %627
  store float %630, float* %624, align 4, !tbaa !46, !noalias !40
  %631 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 1
  %632 = load float, float* %631, align 4, !tbaa !46, !noalias !40
  %633 = fadd fast float %632, %615
  %634 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %633)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %633)  ; FMin(a,b)
  %636 = fmul fast float %635, 0x3F847AE140000000
  %637 = fadd fast float %636, %634
  store float %637, float* %631, align 4, !tbaa !46, !noalias !40
  %638 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 2
  %639 = load float, float* %638, align 4, !tbaa !46, !noalias !40
  %640 = fadd fast float %639, %616
  %641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %640)  ; FMax(a,b)
  %642 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %640)  ; FMin(a,b)
  %643 = fmul fast float %642, 0x3F847AE140000000
  %644 = fadd fast float %643, %641
  store float %644, float* %638, align 4, !tbaa !46, !noalias !40
  %645 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 3
  %646 = load float, float* %645, align 4, !tbaa !46, !noalias !40
  %647 = fadd fast float %646, %617
  %648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %647)  ; FMax(a,b)
  %649 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %647)  ; FMin(a,b)
  %650 = fmul fast float %649, 0x3F847AE140000000
  %651 = fadd fast float %650, %648
  store float %651, float* %645, align 4, !tbaa !46, !noalias !40
  %652 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 4
  %653 = load float, float* %652, align 4, !tbaa !46, !noalias !40
  %654 = fadd fast float %653, %620
  %655 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %654)  ; FMax(a,b)
  %656 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %654)  ; FMin(a,b)
  %657 = fmul fast float %656, 0x3F847AE140000000
  %658 = fadd fast float %657, %655
  store float %658, float* %652, align 4, !tbaa !46, !noalias !40
  %659 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 5
  %660 = load float, float* %659, align 4, !tbaa !46, !noalias !40
  %661 = fadd fast float %660, %621
  %662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %661)  ; FMax(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %661)  ; FMin(a,b)
  %664 = fmul fast float %663, 0x3F847AE140000000
  %665 = fadd fast float %664, %662
  store float %665, float* %659, align 4, !tbaa !46, !noalias !40
  %666 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 6
  %667 = load float, float* %666, align 4, !tbaa !46, !noalias !40
  %668 = fadd fast float %667, %622
  %669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %668)  ; FMax(a,b)
  %670 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %668)  ; FMin(a,b)
  %671 = fmul fast float %670, 0x3F847AE140000000
  %672 = fadd fast float %671, %669
  store float %672, float* %666, align 4, !tbaa !46, !noalias !40
  %673 = getelementptr inbounds [8 x float], [8 x float]* %20, i32 0, i32 7
  %674 = load float, float* %673, align 4, !tbaa !46, !noalias !40
  %675 = fadd fast float %674, %623
  %676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %675)  ; FMax(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %675)  ; FMin(a,b)
  %678 = fmul fast float %677, 0x3F847AE140000000
  %679 = fadd fast float %678, %676
  store float %679, float* %673, align 4, !tbaa !46, !noalias !40
  %680 = add i32 %456, 26
  %681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = extractvalue %dx.types.ResRet.f32 %681, 1
  %684 = extractvalue %dx.types.ResRet.f32 %681, 2
  %685 = extractvalue %dx.types.ResRet.f32 %681, 3
  %686 = add i32 %456, 27
  %687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = extractvalue %dx.types.ResRet.f32 %687, 1
  %690 = extractvalue %dx.types.ResRet.f32 %687, 2
  %691 = extractvalue %dx.types.ResRet.f32 %687, 3
  %692 = fmul fast float %630, %682
  %693 = fmul fast float %637, %683
  %694 = fadd fast float %693, %692
  %695 = fmul fast float %644, %684
  %696 = fadd fast float %694, %695
  %697 = fmul fast float %651, %685
  %698 = fadd fast float %696, %697
  %699 = fmul fast float %658, %688
  %700 = fadd fast float %698, %699
  %701 = fmul fast float %665, %689
  %702 = fadd fast float %700, %701
  %703 = fmul fast float %672, %690
  %704 = fadd fast float %702, %703
  %705 = fmul fast float %679, %691
  %706 = fadd fast float %704, %705
  %707 = add i32 %456, 28
  %708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = fadd fast float %706, %709
  %711 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %710)  ; FMax(a,b)
  %712 = fmul fast float %611, %711
  %713 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %714 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 %435
  store float %713, float* %714, align 4, !tbaa !46, !noalias !40
  %715 = fadd fast float %713, %434
  %716 = add nuw nsw i32 %435, 1
  %717 = icmp eq i32 %716, 8
  br i1 %717, label %721, label %718

; <label>:718                                     ; preds = %607
  %719 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 %716
  %720 = load i32, i32* %719, align 4, !tbaa !36, !noalias !40
  br label %432

; <label>:721                                     ; preds = %607
  %722 = fcmp fast ugt float %715, 0x3EE4F8B580000000
  br i1 %722, label %723, label %999

; <label>:723                                     ; preds = %721
  %724 = fcmp fast ogt float %715, 0x3EE4F8B580000000
  %725 = fdiv fast float 1.000000e+00, %715
  %726 = select i1 %724, float %725, float 1.000000e+00
  %727 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 0
  %728 = load float, float* %727, align 4, !tbaa !46, !noalias !40
  %729 = fmul fast float %728, %726
  store float %729, float* %727, align 4, !tbaa !46, !noalias !40
  %730 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 1
  %731 = load float, float* %730, align 4, !tbaa !46, !noalias !40
  %732 = fmul fast float %731, %726
  store float %732, float* %730, align 4, !tbaa !46, !noalias !40
  %733 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 2
  %734 = load float, float* %733, align 4, !tbaa !46, !noalias !40
  %735 = fmul fast float %734, %726
  store float %735, float* %733, align 4, !tbaa !46, !noalias !40
  %736 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 3
  %737 = load float, float* %736, align 4, !tbaa !46, !noalias !40
  %738 = fmul fast float %737, %726
  store float %738, float* %736, align 4, !tbaa !46, !noalias !40
  %739 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 4
  %740 = load float, float* %739, align 4, !tbaa !46, !noalias !40
  %741 = fmul fast float %740, %726
  store float %741, float* %739, align 4, !tbaa !46, !noalias !40
  %742 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 5
  %743 = load float, float* %742, align 4, !tbaa !46, !noalias !40
  %744 = fmul fast float %743, %726
  store float %744, float* %742, align 4, !tbaa !46, !noalias !40
  %745 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 6
  %746 = load float, float* %745, align 4, !tbaa !46, !noalias !40
  %747 = fmul fast float %746, %726
  store float %747, float* %745, align 4, !tbaa !46, !noalias !40
  %748 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 7
  %749 = load float, float* %748, align 4, !tbaa !46, !noalias !40
  %750 = fmul fast float %749, %726
  store float %750, float* %748, align 4, !tbaa !46, !noalias !40
  br label %751

; <label>:751                                     ; preds = %978, %723
  %752 = phi float [ %982, %978 ], [ %729, %723 ]
  %753 = phi i32 [ %980, %978 ], [ %360, %723 ]
  %754 = phi float [ %954, %978 ], [ 0.000000e+00, %723 ]
  %755 = phi float [ %952, %978 ], [ 0.000000e+00, %723 ]
  %756 = phi float [ %950, %978 ], [ 0.000000e+00, %723 ]
  %757 = phi float [ %947, %978 ], [ 0.000000e+00, %723 ]
  %758 = phi float [ %945, %978 ], [ 0.000000e+00, %723 ]
  %759 = phi float [ %942, %978 ], [ 0.000000e+00, %723 ]
  %760 = phi float [ %940, %978 ], [ 0.000000e+00, %723 ]
  %761 = phi float [ %938, %978 ], [ 0.000000e+00, %723 ]
  %762 = phi float [ %935, %978 ], [ 0.000000e+00, %723 ]
  %763 = phi float [ %975, %978 ], [ 0.000000e+00, %723 ]
  %764 = phi float [ %973, %978 ], [ 0.000000e+00, %723 ]
  %765 = phi float [ %971, %978 ], [ 0.000000e+00, %723 ]
  %766 = phi float [ %968, %978 ], [ 0.000000e+00, %723 ]
  %767 = phi float [ %966, %978 ], [ 0.000000e+00, %723 ]
  %768 = phi float [ %963, %978 ], [ 0.000000e+00, %723 ]
  %769 = phi float [ %961, %978 ], [ 0.000000e+00, %723 ]
  %770 = phi float [ %959, %978 ], [ 0.000000e+00, %723 ]
  %771 = phi float [ %956, %978 ], [ 0.000000e+00, %723 ]
  %772 = phi float [ %933, %978 ], [ 0.000000e+00, %723 ]
  %773 = phi float [ %931, %978 ], [ 0.000000e+00, %723 ]
  %774 = phi float [ %929, %978 ], [ 0.000000e+00, %723 ]
  %775 = phi float [ %925, %978 ], [ 0.000000e+00, %723 ]
  %776 = phi float [ %923, %978 ], [ 0.000000e+00, %723 ]
  %777 = phi float [ %919, %978 ], [ 0.000000e+00, %723 ]
  %778 = phi float [ %917, %978 ], [ 0.000000e+00, %723 ]
  %779 = phi float [ %915, %978 ], [ 0.000000e+00, %723 ]
  %780 = phi float [ %911, %978 ], [ 0.000000e+00, %723 ]
  %781 = phi i32 [ %976, %978 ], [ 0, %723 ]
  %782 = shl i32 %753, 5
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = extractvalue %dx.types.ResRet.i32 %783, 1
  %786 = extractvalue %dx.types.ResRet.i32 %783, 2
  %787 = extractvalue %dx.types.ResRet.i32 %783, 3
  %788 = or i32 %782, 16
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = extractvalue %dx.types.ResRet.i32 %789, 1
  %792 = extractvalue %dx.types.ResRet.i32 %789, 2
  %793 = shl i32 %784, 4
  %794 = and i32 %793, 32752
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = lshr i32 %784, 7
  %797 = and i32 %796, 32752
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = lshr i32 %784, 22
  %800 = shl nuw nsw i32 %799, 5
  %801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %800)  ; LegacyF16ToF32(value)
  %802 = and i32 %785, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F80204080000000
  %805 = fadd fast float %804, -1.000000e+00
  %806 = lshr i32 %785, 8
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %808, 0x3F80204080000000
  %810 = fadd fast float %809, -1.000000e+00
  %811 = lshr i32 %785, 16
  %812 = and i32 %811, 255
  %813 = uitofp i32 %812 to float
  %814 = fmul fast float %813, 0x3F80204080000000
  %815 = fadd fast float %814, -1.000000e+00
  %816 = lshr i32 %785, 24
  %817 = uitofp i32 %816 to float
  %818 = fmul fast float %817, 0x3F80204080000000
  %819 = fadd fast float %818, -1.000000e+00
  %820 = and i32 %786, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F80204080000000
  %823 = fadd fast float %822, -1.000000e+00
  %824 = lshr i32 %786, 8
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F80204080000000
  %828 = fadd fast float %827, -1.000000e+00
  %829 = lshr i32 %786, 16
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F80204080000000
  %833 = fadd fast float %832, -1.000000e+00
  %834 = lshr i32 %786, 24
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F80204080000000
  %837 = fadd fast float %836, -1.000000e+00
  %838 = and i32 %787, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F80204080000000
  %841 = fadd fast float %840, -1.000000e+00
  %842 = lshr i32 %787, 8
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F80204080000000
  %846 = fadd fast float %845, -1.000000e+00
  %847 = lshr i32 %787, 16
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F80204080000000
  %851 = fadd fast float %850, -1.000000e+00
  %852 = lshr i32 %787, 24
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F80204080000000
  %855 = fadd fast float %854, -1.000000e+00
  %856 = and i32 %790, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F80204080000000
  %859 = fadd fast float %858, -1.000000e+00
  %860 = lshr i32 %790, 8
  %861 = and i32 %860, 255
  %862 = uitofp i32 %861 to float
  %863 = fmul fast float %862, 0x3F80204080000000
  %864 = fadd fast float %863, -1.000000e+00
  %865 = lshr i32 %790, 16
  %866 = and i32 %865, 255
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F80204080000000
  %869 = fadd fast float %868, -1.000000e+00
  %870 = lshr i32 %790, 24
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F80204080000000
  %873 = fadd fast float %872, -1.000000e+00
  %874 = and i32 %791, 255
  %875 = uitofp i32 %874 to float
  %876 = fmul fast float %875, 0x3F80204080000000
  %877 = fadd fast float %876, -1.000000e+00
  %878 = lshr i32 %791, 8
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = fmul fast float %880, 0x3F80204080000000
  %882 = fadd fast float %881, -1.000000e+00
  %883 = lshr i32 %791, 16
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = fmul fast float %885, 0x3F80204080000000
  %887 = fadd fast float %886, -1.000000e+00
  %888 = lshr i32 %791, 24
  %889 = uitofp i32 %888 to float
  %890 = fmul fast float %889, 0x3F80204080000000
  %891 = fadd fast float %890, -1.000000e+00
  %892 = and i32 %792, 255
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %893, 0x3F80204080000000
  %895 = fadd fast float %894, -1.000000e+00
  %896 = lshr i32 %792, 8
  %897 = and i32 %896, 255
  %898 = uitofp i32 %897 to float
  %899 = fmul fast float %898, 0x3F80204080000000
  %900 = fadd fast float %899, -1.000000e+00
  %901 = lshr i32 %792, 16
  %902 = and i32 %901, 255
  %903 = uitofp i32 %902 to float
  %904 = fmul fast float %903, 0x3F80204080000000
  %905 = fadd fast float %904, -1.000000e+00
  %906 = lshr i32 %792, 24
  %907 = uitofp i32 %906 to float
  %908 = fmul fast float %907, 0x3F80204080000000
  %909 = fadd fast float %908, -1.000000e+00
  %910 = fmul fast float %795, %752
  %911 = fadd fast float %910, %780
  %912 = fmul fast float %752, 0x3FFBB67AE0000000
  %913 = fmul fast float %912, %795
  %914 = fmul fast float %913, %805
  %915 = fadd fast float %914, %779
  %916 = fmul fast float %913, %810
  %917 = fadd fast float %916, %778
  %918 = fmul fast float %913, %815
  %919 = fadd fast float %918, %777
  %920 = fmul fast float %752, 0x3FFEFBDEC0000000
  %921 = fmul fast float %920, %795
  %922 = fmul fast float %921, %819
  %923 = fadd fast float %922, %776
  %924 = fmul fast float %921, %823
  %925 = fadd fast float %924, %775
  %926 = fmul fast float %752, 0x4001E377A0000000
  %927 = fmul fast float %926, %795
  %928 = fmul fast float %927, %828
  %929 = fadd fast float %928, %774
  %930 = fmul fast float %921, %833
  %931 = fadd fast float %930, %773
  %932 = fmul fast float %921, %837
  %933 = fadd fast float %932, %772
  %934 = fmul fast float %798, %752
  %935 = fadd fast float %934, %762
  %936 = fmul fast float %912, %798
  %937 = fmul fast float %936, %841
  %938 = fadd fast float %937, %761
  %939 = fmul fast float %936, %846
  %940 = fadd fast float %939, %760
  %941 = fmul fast float %936, %851
  %942 = fadd fast float %941, %759
  %943 = fmul fast float %920, %798
  %944 = fmul fast float %943, %855
  %945 = fadd fast float %944, %758
  %946 = fmul fast float %943, %859
  %947 = fadd fast float %946, %757
  %948 = fmul fast float %926, %798
  %949 = fmul fast float %948, %864
  %950 = fadd fast float %949, %756
  %951 = fmul fast float %943, %869
  %952 = fadd fast float %951, %755
  %953 = fmul fast float %943, %873
  %954 = fadd fast float %953, %754
  %955 = fmul fast float %801, %752
  %956 = fadd fast float %955, %771
  %957 = fmul fast float %912, %801
  %958 = fmul fast float %957, %877
  %959 = fadd fast float %958, %770
  %960 = fmul fast float %957, %882
  %961 = fadd fast float %960, %769
  %962 = fmul fast float %957, %887
  %963 = fadd fast float %962, %768
  %964 = fmul fast float %920, %801
  %965 = fmul fast float %964, %891
  %966 = fadd fast float %965, %767
  %967 = fmul fast float %964, %895
  %968 = fadd fast float %967, %766
  %969 = fmul fast float %926, %801
  %970 = fmul fast float %969, %900
  %971 = fadd fast float %970, %765
  %972 = fmul fast float %964, %905
  %973 = fadd fast float %972, %764
  %974 = fmul fast float %964, %909
  %975 = fadd fast float %974, %763
  %976 = add nuw nsw i32 %781, 1
  %977 = icmp eq i32 %976, 8
  br i1 %977, label %983, label %978

; <label>:978                                     ; preds = %751
  %979 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i32 %976
  %980 = load i32, i32* %979, align 4, !tbaa !36, !noalias !40
  %981 = getelementptr inbounds [8 x float], [8 x float]* %22, i32 0, i32 %976
  %982 = load float, float* %981, align 4, !tbaa !46, !noalias !40
  br label %751

; <label>:983                                     ; preds = %751
  %984 = fmul float %911, 0x3FD20DD760000000
  %985 = fmul float %917, 0x3FD4D8D7C0000000
  %986 = fmul float %919, 0x3FD4D8D7C0000000
  %987 = fmul float %915, 0x3FD4D8D7C0000000
  %988 = fmul float %933, 0x3FC17B1420000000
  %989 = fmul float %935, 0x3FD20DD760000000
  %990 = fmul float %940, 0x3FD4D8D7C0000000
  %991 = fmul float %942, 0x3FD4D8D7C0000000
  %992 = fmul float %938, 0x3FD4D8D7C0000000
  %993 = fmul float %954, 0x3FC17B1420000000
  %994 = fmul float %956, 0x3FD20DD760000000
  %995 = fmul float %961, 0x3FD4D8D7C0000000
  %996 = fmul float %963, 0x3FD4D8D7C0000000
  %997 = fmul float %959, 0x3FD4D8D7C0000000
  %998 = fmul float %975, 0x3FC17B1420000000
  br label %999

; <label>:999                                     ; preds = %983, %721, %288, %271, %253
  %1000 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %993, %983 ]
  %1001 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %952, %983 ]
  %1002 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %950, %983 ]
  %1003 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %947, %983 ]
  %1004 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %945, %983 ]
  %1005 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %991, %983 ]
  %1006 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %990, %983 ]
  %1007 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %992, %983 ]
  %1008 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %989, %983 ]
  %1009 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %998, %983 ]
  %1010 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %973, %983 ]
  %1011 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %971, %983 ]
  %1012 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %968, %983 ]
  %1013 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %966, %983 ]
  %1014 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %996, %983 ]
  %1015 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %995, %983 ]
  %1016 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %997, %983 ]
  %1017 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %994, %983 ]
  %1018 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %988, %983 ]
  %1019 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %931, %983 ]
  %1020 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %929, %983 ]
  %1021 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %925, %983 ]
  %1022 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %923, %983 ]
  %1023 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %986, %983 ]
  %1024 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %985, %983 ]
  %1025 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %987, %983 ]
  %1026 = phi float [ 0.000000e+00, %253 ], [ 0.000000e+00, %271 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %721 ], [ %984, %983 ]
  %1027 = phi i1 [ false, %253 ], [ false, %271 ], [ false, %288 ], [ false, %721 ], [ true, %983 ]
  %1028 = call float @dx.op.dot3.f32(i32 55, float %16, float %17, float %18, float %16, float %17, float %18)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = call float @dx.op.unary.f32(i32 25, float %1028)  ; Rsqrt(value)
  %1030 = fmul fast float %1029, %16
  %1031 = fmul fast float %1029, %17
  %1032 = fmul fast float %1029, %18
  %1033 = fmul fast float %1024, %1032
  %1034 = fmul fast float %1032, %1032
  %1035 = fmul fast float %1034, 0x3FEE471020000000
  %1036 = fadd fast float %1035, 0xBFD42F6020000000
  %1037 = fmul fast float %1036, %1020
  %1038 = fmul fast float %1023, %1030
  %1039 = fmul fast float %1025, %1031
  %1040 = fmul fast float %1032, 0xBFF17B1420000000
  %1041 = fmul fast float %1030, %1019
  %1042 = fmul fast float %1031, %1021
  %1043 = fmul fast float %1030, %1030
  %1044 = fmul fast float %1031, %1031
  %1045 = fsub fast float %1043, %1044
  %1046 = fmul fast float %1018, %1045
  %1047 = fmul fast float %17, 0x3FD17B1420000000
  %1048 = fmul fast float %1047, %1022
  %1049 = fmul fast float %1048, %1029
  %1050 = fmul fast float %1049, %1030
  %1051 = fadd fast float %1041, %1042
  %1052 = fmul fast float %1040, %1051
  %1053 = fadd fast float %1052, %1037
  %1054 = fmul fast float %1053, 2.500000e-01
  %1055 = fadd fast float %1033, %1026
  %1056 = fsub fast float %1055, %1038
  %1057 = fsub fast float %1056, %1039
  %1058 = fadd fast float %1057, %1046
  %1059 = fadd fast float %1058, %1050
  %1060 = fadd fast float %1059, %1054
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 3
  %1063 = fmul fast float %1060, %1062
  %1064 = fmul fast float %1006, %1032
  %1065 = fmul fast float %1036, %1002
  %1066 = fmul fast float %1005, %1030
  %1067 = fmul fast float %1007, %1031
  %1068 = fmul fast float %1030, %1001
  %1069 = fmul fast float %1031, %1003
  %1070 = fmul fast float %1000, %1045
  %1071 = fmul fast float %1047, %1004
  %1072 = fmul fast float %1071, %1029
  %1073 = fmul fast float %1072, %1030
  %1074 = fadd fast float %1068, %1069
  %1075 = fmul fast float %1040, %1074
  %1076 = fadd fast float %1075, %1065
  %1077 = fmul fast float %1076, 2.500000e-01
  %1078 = fadd fast float %1064, %1008
  %1079 = fsub fast float %1078, %1066
  %1080 = fsub fast float %1079, %1067
  %1081 = fadd fast float %1080, %1070
  %1082 = fadd fast float %1081, %1073
  %1083 = fadd fast float %1082, %1077
  %1084 = fmul fast float %1083, %1062
  %1085 = fmul fast float %1015, %1032
  %1086 = fmul fast float %1036, %1011
  %1087 = fmul fast float %1014, %1030
  %1088 = fmul fast float %1016, %1031
  %1089 = fmul fast float %1030, %1010
  %1090 = fmul fast float %1031, %1012
  %1091 = fmul fast float %1009, %1045
  %1092 = fmul fast float %1047, %1013
  %1093 = fmul fast float %1092, %1029
  %1094 = fmul fast float %1093, %1030
  %1095 = fadd fast float %1089, %1090
  %1096 = fmul fast float %1040, %1095
  %1097 = fadd fast float %1096, %1086
  %1098 = fmul fast float %1097, 2.500000e-01
  %1099 = fadd fast float %1085, %1017
  %1100 = fsub fast float %1099, %1087
  %1101 = fsub fast float %1100, %1088
  %1102 = fadd fast float %1101, %1091
  %1103 = fadd fast float %1102, %1094
  %1104 = fadd fast float %1103, %1098
  %1105 = fmul fast float %1104, %1062
  %1106 = select i1 %1027, float %1063, float 5.000000e+00
  %1107 = select i1 %1027, float %1084, float 0.000000e+00
  %1108 = select i1 %1027, float %1105, float 0.000000e+00
  %1109 = select i1 %1027, float 1.000000e+00, float 0.000000e+00
  br label %1110

; <label>:1110                                    ; preds = %999, %251, %40, %0
  %1111 = phi float [ %186, %40 ], [ undef, %251 ], [ %13, %0 ], [ %1106, %999 ]
  %1112 = phi float [ %218, %40 ], [ undef, %251 ], [ %14, %0 ], [ %1107, %999 ]
  %1113 = phi float [ %250, %40 ], [ undef, %251 ], [ %15, %0 ], [ %1108, %999 ]
  %1114 = phi float [ 1.000000e+00, %40 ], [ 1.000000e+00, %251 ], [ 1.000000e+00, %0 ], [ %1109, %999 ]
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = fmul fast float %1114, %1111
  %1118 = fmul fast float %1117, %1116
  %1119 = fmul fast float %1114, %1112
  %1120 = fmul fast float %1119, %1116
  %1121 = fmul fast float %1114, %1113
  %1122 = fmul fast float %1121, %1116
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1118)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1120)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1122)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1114)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!4 = !{!5, null, !20, null}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19}
!6 = !{i32 0, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 16}
!8 = !{i32 1, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !7}
!11 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !9}
!12 = !{i32 4, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !9}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !9}
!14 = !{i32 6, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !15}
!15 = !{i32 0, i32 9}
!16 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !9}
!17 = !{i32 8, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !15}
!18 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!19 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!20 = !{!21}
!21 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!22 = !{[14 x i32] [i32 12, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 0]}
!23 = !{void ()* @ps_main, !"ps_main", !24, !4, !35}
!24 = !{!25, !33, null}
!25 = !{!26, !28, !30}
!26 = !{i32 0, !"SV_Position", i8 9, i8 3, !27, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!27 = !{i32 0}
!28 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !27, i8 2, i32 1, i8 4, i32 1, i8 0, !29}
!29 = !{i32 3, i32 15}
!30 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !31, i8 2, i32 1, i8 4, i32 2, i8 0, !32}
!31 = !{i32 1}
!32 = !{i32 3, i32 7}
!33 = !{!34}
!34 = !{i32 0, !"SV_Target", i8 9, i8 16, !27, i8 0, i32 1, i8 4, i32 0, i8 0, !29}
!35 = !{i32 0, i64 16}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !43, !44, !45}
!41 = distinct !{!41, !42, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!42 = distinct !{!42, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!43 = distinct !{!43, !42, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!44 = distinct !{!44, !42, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!45 = distinct !{!45, !42, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !38, i64 0}

