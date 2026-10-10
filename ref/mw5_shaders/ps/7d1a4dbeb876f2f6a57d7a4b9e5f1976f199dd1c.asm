;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 1   xyzw        2     NONE   float   xyzw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 61426e8a6ad0d728f425e10ecb3d90ea
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
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
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %20 = alloca [4 x i32], align 4
  %21 = alloca [4 x float], align 4
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x float], align 4
  %24 = alloca [4 x i32], align 4
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = icmp eq i32 %26, 2
  br i1 %33, label %34, label %38

; <label>:34                                      ; preds = %0
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = fcmp fast olt float %35, 0x3F847AE140000000
  br i1 %36, label %37, label %1172

; <label>:37                                      ; preds = %34
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1172

; <label>:38                                      ; preds = %0
  %39 = icmp eq i32 %26, 1
  br i1 %39, label %1172, label %40

; <label>:40                                      ; preds = %38
  %41 = icmp eq i32 %26, 0
  br i1 %41, label %42, label %253

; <label>:42                                      ; preds = %40
  %43 = fptosi float %19 to i32
  %44 = shl i32 %43, 5
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %44, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = extractvalue %dx.types.ResRet.i32 %45, 1
  %48 = extractvalue %dx.types.ResRet.i32 %45, 2
  %49 = extractvalue %dx.types.ResRet.i32 %45, 3
  %50 = or i32 %44, 16
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = extractvalue %dx.types.ResRet.i32 %51, 1
  %54 = extractvalue %dx.types.ResRet.i32 %51, 2
  %55 = shl i32 %46, 4
  %56 = and i32 %55, 32752
  %57 = call float @dx.op.legacyF16ToF32(i32 131, i32 %56)  ; LegacyF16ToF32(value)
  %58 = lshr i32 %46, 7
  %59 = and i32 %58, 32752
  %60 = call float @dx.op.legacyF16ToF32(i32 131, i32 %59)  ; LegacyF16ToF32(value)
  %61 = lshr i32 %46, 22
  %62 = shl nuw nsw i32 %61, 5
  %63 = call float @dx.op.legacyF16ToF32(i32 131, i32 %62)  ; LegacyF16ToF32(value)
  %64 = and i32 %47, 255
  %65 = uitofp i32 %64 to float
  %66 = fmul fast float %65, 0x3F80204080000000
  %67 = fadd fast float %66, -1.000000e+00
  %68 = lshr i32 %47, 8
  %69 = and i32 %68, 255
  %70 = uitofp i32 %69 to float
  %71 = lshr i32 %47, 16
  %72 = and i32 %71, 255
  %73 = uitofp i32 %72 to float
  %74 = fmul fast float %73, 0x3F80204080000000
  %75 = fadd fast float %74, -1.000000e+00
  %76 = lshr i32 %47, 24
  %77 = uitofp i32 %76 to float
  %78 = fmul fast float %77, 0x3F80204080000000
  %79 = fadd fast float %78, -1.000000e+00
  %80 = and i32 %48, 255
  %81 = uitofp i32 %80 to float
  %82 = lshr i32 %48, 8
  %83 = and i32 %82, 255
  %84 = uitofp i32 %83 to float
  %85 = lshr i32 %48, 16
  %86 = and i32 %85, 255
  %87 = uitofp i32 %86 to float
  %88 = lshr i32 %48, 24
  %89 = uitofp i32 %88 to float
  %90 = and i32 %49, 255
  %91 = uitofp i32 %90 to float
  %92 = fmul fast float %91, 0x3F80204080000000
  %93 = fadd fast float %92, -1.000000e+00
  %94 = lshr i32 %49, 8
  %95 = and i32 %94, 255
  %96 = uitofp i32 %95 to float
  %97 = lshr i32 %49, 16
  %98 = and i32 %97, 255
  %99 = uitofp i32 %98 to float
  %100 = fmul fast float %99, 0x3F80204080000000
  %101 = fadd fast float %100, -1.000000e+00
  %102 = lshr i32 %49, 24
  %103 = uitofp i32 %102 to float
  %104 = fmul fast float %103, 0x3F80204080000000
  %105 = fadd fast float %104, -1.000000e+00
  %106 = and i32 %52, 255
  %107 = uitofp i32 %106 to float
  %108 = lshr i32 %52, 8
  %109 = and i32 %108, 255
  %110 = uitofp i32 %109 to float
  %111 = lshr i32 %52, 16
  %112 = and i32 %111, 255
  %113 = uitofp i32 %112 to float
  %114 = lshr i32 %52, 24
  %115 = uitofp i32 %114 to float
  %116 = and i32 %53, 255
  %117 = uitofp i32 %116 to float
  %118 = fmul fast float %117, 0x3F80204080000000
  %119 = fadd fast float %118, -1.000000e+00
  %120 = lshr i32 %53, 8
  %121 = and i32 %120, 255
  %122 = uitofp i32 %121 to float
  %123 = lshr i32 %53, 16
  %124 = and i32 %123, 255
  %125 = uitofp i32 %124 to float
  %126 = fmul fast float %125, 0x3F80204080000000
  %127 = fadd fast float %126, -1.000000e+00
  %128 = lshr i32 %53, 24
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %129, 0x3F80204080000000
  %131 = fadd fast float %130, -1.000000e+00
  %132 = and i32 %54, 255
  %133 = uitofp i32 %132 to float
  %134 = lshr i32 %54, 8
  %135 = and i32 %134, 255
  %136 = uitofp i32 %135 to float
  %137 = lshr i32 %54, 16
  %138 = and i32 %137, 255
  %139 = uitofp i32 %138 to float
  %140 = lshr i32 %54, 24
  %141 = uitofp i32 %140 to float
  %142 = call float @dx.op.dot3.f32(i32 55, float %16, float %17, float %18, float %16, float %17, float %18)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = call float @dx.op.unary.f32(i32 25, float %142)  ; Rsqrt(value)
  %144 = fmul fast float %143, %16
  %145 = fmul fast float %143, %17
  %146 = fmul fast float %143, %18
  %147 = fmul fast float %70, 0x3F72323BE0000000
  %148 = fadd fast float %147, 0xBFE20DD760000000
  %149 = fmul fast float %148, %146
  %150 = fmul fast float %146, %146
  %151 = fmul fast float %150, 0x3FEE471020000000
  %152 = fadd fast float %151, 0xBFD42F6020000000
  %153 = fmul fast float %84, 0x3F720786A0000000
  %154 = fadd fast float %153, 0xBFE1E377A0000000
  %155 = fmul fast float %154, %152
  %156 = fmul fast float %144, %75
  %157 = fmul fast float %145, %67
  %158 = fmul fast float %146, 0xBFF17B1420000000
  %159 = fmul fast float %87, 0x3F6F3A5360000000
  %160 = fadd fast float %159, 0xBFDEFBDEC0000000
  %161 = fmul fast float %160, %158
  %162 = fmul fast float %81, 0x3F6F3A5360000000
  %163 = fadd fast float %162, 0xBFDEFBDEC0000000
  %164 = fmul fast float %163, %145
  %165 = fmul fast float %164, %158
  %166 = fmul fast float %144, %144
  %167 = fmul fast float %145, %145
  %168 = fsub fast float %166, %167
  %169 = fmul fast float %89, 0x3F610F1820000000
  %170 = fadd fast float %169, 0xBFD0ECFA00000000
  %171 = fmul fast float %170, %168
  %172 = fmul fast float %17, 0x3FE0ECFA00000000
  %173 = fmul fast float %172, %79
  %174 = fmul fast float %173, %143
  %175 = fadd fast float %174, %161
  %176 = fmul fast float %175, %144
  %177 = fadd fast float %165, 0x3FD20DD760000000
  %178 = fadd fast float %177, %149
  %179 = fadd fast float %178, %171
  %180 = fadd fast float %179, %155
  %181 = fadd fast float %180, %176
  %182 = fadd fast float %156, %157
  %183 = fmul fast float %182, 0x3FE20DD760000000
  %184 = fsub fast float %181, %183
  %185 = fmul fast float %57, %184
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = fmul fast float %185, %187
  %189 = fmul fast float %96, 0x3F72323BE0000000
  %190 = fadd fast float %189, 0xBFE20DD760000000
  %191 = fmul fast float %190, %146
  %192 = fmul fast float %110, 0x3F720786A0000000
  %193 = fadd fast float %192, 0xBFE1E377A0000000
  %194 = fmul fast float %193, %152
  %195 = fmul fast float %144, %101
  %196 = fmul fast float %145, %93
  %197 = fmul fast float %113, 0x3F6F3A5360000000
  %198 = fadd fast float %197, 0xBFDEFBDEC0000000
  %199 = fmul fast float %198, %158
  %200 = fmul fast float %107, 0x3F6F3A5360000000
  %201 = fadd fast float %200, 0xBFDEFBDEC0000000
  %202 = fmul fast float %201, %145
  %203 = fmul fast float %202, %158
  %204 = fmul fast float %115, 0x3F610F1820000000
  %205 = fadd fast float %204, 0xBFD0ECFA00000000
  %206 = fmul fast float %205, %168
  %207 = fmul fast float %172, %105
  %208 = fmul fast float %207, %143
  %209 = fadd fast float %208, %199
  %210 = fmul fast float %209, %144
  %211 = fadd fast float %203, 0x3FD20DD760000000
  %212 = fadd fast float %211, %191
  %213 = fadd fast float %212, %206
  %214 = fadd fast float %213, %194
  %215 = fadd fast float %214, %210
  %216 = fadd fast float %195, %196
  %217 = fmul fast float %216, 0x3FE20DD760000000
  %218 = fsub fast float %215, %217
  %219 = fmul fast float %60, %218
  %220 = fmul fast float %219, %187
  %221 = fmul fast float %122, 0x3F72323BE0000000
  %222 = fadd fast float %221, 0xBFE20DD760000000
  %223 = fmul fast float %222, %146
  %224 = fmul fast float %136, 0x3F720786A0000000
  %225 = fadd fast float %224, 0xBFE1E377A0000000
  %226 = fmul fast float %225, %152
  %227 = fmul fast float %144, %127
  %228 = fmul fast float %145, %119
  %229 = fmul fast float %139, 0x3F6F3A5360000000
  %230 = fadd fast float %229, 0xBFDEFBDEC0000000
  %231 = fmul fast float %230, %158
  %232 = fmul fast float %133, 0x3F6F3A5360000000
  %233 = fadd fast float %232, 0xBFDEFBDEC0000000
  %234 = fmul fast float %233, %145
  %235 = fmul fast float %234, %158
  %236 = fmul fast float %141, 0x3F610F1820000000
  %237 = fadd fast float %236, 0xBFD0ECFA00000000
  %238 = fmul fast float %237, %168
  %239 = fmul fast float %172, %131
  %240 = fmul fast float %239, %143
  %241 = fadd fast float %240, %231
  %242 = fmul fast float %241, %144
  %243 = fadd fast float %235, 0x3FD20DD760000000
  %244 = fadd fast float %243, %223
  %245 = fadd fast float %244, %238
  %246 = fadd fast float %245, %226
  %247 = fadd fast float %246, %242
  %248 = fadd fast float %227, %228
  %249 = fmul fast float %248, 0x3FE20DD760000000
  %250 = fsub fast float %247, %249
  %251 = fmul fast float %63, %250
  %252 = fmul fast float %251, %187
  br label %1172

; <label>:253                                     ; preds = %40
  %254 = icmp eq i32 %26, 3
  br i1 %254, label %255, label %1172

; <label>:255                                     ; preds = %253
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = extractvalue %dx.types.ResRet.i32 %258, 1
  %261 = extractvalue %dx.types.ResRet.i32 %258, 2
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = fsub fast float %13, %263
  %271 = fsub fast float %14, %264
  %272 = fsub fast float %15, %265
  %273 = fptoui float %270 to i32
  %274 = fptoui float %271 to i32
  %275 = fptoui float %272 to i32
  %276 = fcmp fast olt float %13, %263
  %277 = fcmp fast olt float %14, %264
  %278 = fcmp fast olt float %15, %265
  %279 = or i1 %276, %277
  %280 = or i1 %278, %279
  %281 = fcmp fast oge float %13, %267
  %282 = fcmp fast oge float %14, %268
  %283 = fcmp fast oge float %15, %269
  %284 = or i1 %281, %282
  %285 = or i1 %283, %284
  %286 = or i1 %280, %285
  %287 = and i32 %259, 31
  %288 = lshr i32 %273, %287
  %289 = lshr i32 %274, %287
  %290 = lshr i32 %275, %287
  %291 = mul i32 %289, %257
  %292 = add i32 %291, %288
  %293 = mul i32 %292, 12
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = add i32 %293, 4
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = add i32 %293, 8
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = icmp ult i32 %290, %298
  %303 = icmp ugt i32 %290, %301
  %304 = or i1 %302, %303
  %305 = add i32 %295, %290
  %306 = sub i32 %305, %298
  %307 = or i1 %286, %304
  %308 = select i1 %307, i32 -2147483648, i32 %306
  %309 = icmp sgt i32 %308, -1
  %310 = and i32 %260, 31
  %311 = lshr i32 %273, %310
  %312 = lshr i32 %274, %310
  %313 = lshr i32 %275, %310
  %314 = and i32 %311, 3
  %315 = and i32 %313, 3
  %316 = shl nuw nsw i32 %315, 4
  %317 = shl i32 %312, 2
  %318 = and i32 %317, 12
  %319 = lshr i32 %315, 1
  %320 = and i32 %316, 16
  %321 = or i32 %318, %314
  %322 = or i32 %321, %320
  %323 = shl i32 1, %322
  %324 = shl i32 %308, 4
  %325 = shl nuw nsw i32 %319, 2
  %326 = or i32 %324, %325
  %327 = or i32 %326, 8
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, %323
  %331 = icmp eq i32 %330, 0
  %332 = add i32 %323, -1
  %333 = and i32 %329, %332
  %334 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %333)  ; Countbits(value)
  %335 = or i32 %324, %325
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = add i32 %337, %334
  %339 = select i1 %331, i32 -2147483648, i32 %338
  %340 = select i1 %309, i32 %339, i32 %308
  %341 = icmp sgt i32 %340, -1
  %342 = and i32 %261, 31
  %343 = lshr i32 %273, %342
  %344 = lshr i32 %274, %342
  %345 = lshr i32 %275, %342
  %346 = and i32 %343, 3
  %347 = and i32 %345, 3
  %348 = shl nuw nsw i32 %347, 4
  %349 = shl i32 %344, 2
  %350 = and i32 %349, 12
  %351 = lshr i32 %347, 1
  %352 = and i32 %348, 16
  %353 = or i32 %350, %346
  %354 = or i32 %353, %352
  %355 = shl i32 1, %354
  %356 = shl i32 %340, 4
  %357 = shl nuw nsw i32 %351, 2
  %358 = or i32 %356, %357
  %359 = or i32 %358, 8
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, %355
  %363 = icmp eq i32 %362, 0
  %364 = add i32 %355, -1
  %365 = and i32 %361, %364
  %366 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %365)  ; Countbits(value)
  %367 = or i32 %356, %357
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = add i32 %369, %366
  %371 = select i1 %363, i32 -2147483648, i32 %370
  %372 = select i1 %341, i32 %371, i32 %340
  br i1 %286, label %387, label %373

; <label>:373                                     ; preds = %255
  %374 = icmp eq i32 %372, -2147483648
  %375 = icmp eq i32 %340, -2147483648
  %376 = select i1 %375, i32 %308, i32 %340
  %377 = select i1 %374, i32 %376, i32 %372
  %378 = icmp sgt i32 %377, -1
  %379 = icmp ne i32 %32, -1
  %380 = and i1 %379, %378
  %381 = select i1 %380, i32 %32, i32 0
  %382 = add i32 %377, %30
  %383 = add i32 %382, %381
  %384 = shl i32 %383, 2
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  br label %387

; <label>:387                                     ; preds = %373, %255
  %388 = phi i32 [ %386, %373 ], [ -1, %255 ]
  %389 = icmp eq i32 %388, -1
  %390 = select i1 %389, i32 %28, i32 %388
  %391 = icmp eq i32 %390, -1
  br i1 %391, label %540, label %392

; <label>:392                                     ; preds = %387
  br label %393

; <label>:393                                     ; preds = %531, %392
  %394 = phi i32 [ %532, %531 ], [ 0, %392 ]
  %395 = phi i32 [ %396, %531 ], [ -1, %392 ]
  %396 = phi i32 [ %527, %531 ], [ %390, %392 ]
  %397 = phi float [ %503, %531 ], [ 0.000000e+00, %392 ]
  %398 = phi float [ %504, %531 ], [ 0.000000e+00, %392 ]
  %399 = phi float [ %505, %531 ], [ 0.000000e+00, %392 ]
  %400 = phi float [ %508, %531 ], [ 0.000000e+00, %392 ]
  %401 = icmp ugt i32 %394, 50
  br i1 %401, label %534, label %402

; <label>:402                                     ; preds = %393
  %403 = shl i32 %396, 4
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = extractvalue %dx.types.ResRet.i32 %404, 1
  %407 = extractvalue %dx.types.ResRet.i32 %404, 2
  %408 = extractvalue %dx.types.ResRet.i32 %404, 3
  %409 = and i32 %405, 2147483647
  %410 = mul nsw i32 %409, 12
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = extractvalue %dx.types.ResRet.i32 %411, 1
  %414 = extractvalue %dx.types.ResRet.i32 %411, 2
  %415 = and i32 %406, 2147483647
  %416 = mul nsw i32 %415, 12
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = extractvalue %dx.types.ResRet.i32 %417, 1
  %420 = extractvalue %dx.types.ResRet.i32 %417, 2
  %421 = and i32 %407, 2147483647
  %422 = mul nsw i32 %421, 12
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = extractvalue %dx.types.ResRet.i32 %423, 1
  %426 = extractvalue %dx.types.ResRet.i32 %423, 2
  %427 = and i32 %408, 2147483647
  %428 = mul nsw i32 %427, 12
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = extractvalue %dx.types.ResRet.i32 %429, 1
  %432 = extractvalue %dx.types.ResRet.i32 %429, 2
  %433 = bitcast i32 %412 to float
  %434 = bitcast i32 %413 to float
  %435 = bitcast i32 %414 to float
  %436 = bitcast i32 %430 to float
  %437 = bitcast i32 %431 to float
  %438 = bitcast i32 %432 to float
  %439 = fsub fast float %433, %436
  %440 = fsub fast float %434, %437
  %441 = fsub fast float %435, %438
  %442 = bitcast i32 %418 to float
  %443 = bitcast i32 %419 to float
  %444 = bitcast i32 %420 to float
  %445 = fsub fast float %442, %436
  %446 = fsub fast float %443, %437
  %447 = fsub fast float %444, %438
  %448 = bitcast i32 %424 to float
  %449 = bitcast i32 %425 to float
  %450 = bitcast i32 %426 to float
  %451 = fsub fast float %448, %436
  %452 = fsub fast float %449, %437
  %453 = fsub fast float %450, %438
  %454 = fsub fast float %13, %436
  %455 = fsub fast float %14, %437
  %456 = fsub fast float %15, %438
  %457 = fmul fast float %446, %453
  %458 = fmul fast float %452, %447
  %459 = fsub fast float %457, %458
  %460 = fmul fast float %459, %439
  %461 = fmul fast float %445, %453
  %462 = fmul fast float %447, %451
  %463 = fsub fast float %461, %462
  %464 = fmul fast float %463, %440
  %465 = fsub fast float %460, %464
  %466 = fmul fast float %445, %452
  %467 = fmul fast float %446, %451
  %468 = fsub fast float %466, %467
  %469 = fmul fast float %468, %441
  %470 = fadd fast float %465, %469
  %471 = fdiv fast float 1.000000e+00, %470
  %472 = fmul fast float %459, %471
  %473 = fmul fast float %471, %463
  %474 = fsub fast float -0.000000e+00, %473
  %475 = fmul fast float %468, %471
  %476 = fmul fast float %440, %453
  %477 = fmul fast float %441, %452
  %478 = fsub fast float %476, %477
  %479 = fmul fast float %471, %478
  %480 = fsub fast float -0.000000e+00, %479
  %481 = fmul fast float %439, %453
  %482 = fmul fast float %451, %441
  %483 = fsub fast float %481, %482
  %484 = fmul fast float %483, %471
  %485 = fmul fast float %439, %452
  %486 = fmul fast float %440, %451
  %487 = fsub fast float %485, %486
  %488 = fmul fast float %471, %487
  %489 = fsub fast float -0.000000e+00, %488
  %490 = fmul fast float %440, %447
  %491 = fmul fast float %441, %446
  %492 = fsub fast float %490, %491
  %493 = fmul fast float %492, %471
  %494 = fmul fast float %439, %447
  %495 = fmul fast float %441, %445
  %496 = fsub fast float %494, %495
  %497 = fmul fast float %471, %496
  %498 = fsub fast float -0.000000e+00, %497
  %499 = fmul fast float %439, %446
  %500 = fmul fast float %440, %445
  %501 = fsub fast float %499, %500
  %502 = fmul fast float %501, %471
  %503 = call float @dx.op.dot3.f32(i32 55, float %472, float %474, float %475, float %454, float %455, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %504 = call float @dx.op.dot3.f32(i32 55, float %480, float %484, float %489, float %454, float %455, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = call float @dx.op.dot3.f32(i32 55, float %493, float %498, float %502, float %454, float %455, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %506 = fsub fast float 1.000000e+00, %503
  %507 = fsub fast float %506, %504
  %508 = fsub fast float %507, %505
  %509 = call float @dx.op.binary.f32(i32 36, float %503, float %504)  ; FMin(a,b)
  %510 = call float @dx.op.binary.f32(i32 36, float %509, float %505)  ; FMin(a,b)
  %511 = call float @dx.op.binary.f32(i32 36, float %510, float %508)  ; FMin(a,b)
  %512 = call float @dx.op.binary.f32(i32 35, float %503, float %504)  ; FMax(a,b)
  %513 = call float @dx.op.binary.f32(i32 35, float %512, float %505)  ; FMax(a,b)
  %514 = call float @dx.op.binary.f32(i32 35, float %513, float %508)  ; FMax(a,b)
  %515 = fcmp fast oge float %511, 0xBF50624DE0000000
  %516 = fcmp fast olt float %514, 0x3FF00068E0000000
  %517 = and i1 %515, %516
  br i1 %517, label %534, label %518

; <label>:518                                     ; preds = %402
  %519 = fcmp fast oeq float %511, %503
  %520 = fcmp fast oeq float %511, %504
  %521 = fcmp fast oeq float %511, %505
  %522 = select i1 %521, i32 8, i32 12
  %523 = select i1 %520, i32 4, i32 %522
  %524 = select i1 %519, i32 0, i32 %523
  %525 = or i32 %524, %403
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = icmp ne i32 %395, -1
  %529 = icmp eq i32 %527, %395
  %530 = and i1 %528, %529
  br i1 %530, label %534, label %531

; <label>:531                                     ; preds = %518
  %532 = add nuw nsw i32 %394, 1
  %533 = icmp eq i32 %527, -1
  br i1 %533, label %534, label %393, !llvm.loop !32

; <label>:534                                     ; preds = %531, %518, %402, %393
  %535 = phi i32 [ -1, %531 ], [ %396, %402 ], [ %396, %518 ], [ -1, %393 ]
  %536 = phi float [ %503, %531 ], [ %503, %402 ], [ %503, %518 ], [ %397, %393 ]
  %537 = phi float [ %504, %531 ], [ %504, %402 ], [ %504, %518 ], [ %398, %393 ]
  %538 = phi float [ %505, %531 ], [ %505, %402 ], [ %505, %518 ], [ %399, %393 ]
  %539 = phi float [ %508, %531 ], [ %508, %402 ], [ %508, %518 ], [ %400, %393 ]
  br label %540

; <label>:540                                     ; preds = %534, %387
  %541 = phi i32 [ -1, %387 ], [ %535, %534 ]
  %542 = phi float [ 0.000000e+00, %387 ], [ %536, %534 ]
  %543 = phi float [ 0.000000e+00, %387 ], [ %537, %534 ]
  %544 = phi float [ 0.000000e+00, %387 ], [ %538, %534 ]
  %545 = phi float [ 0.000000e+00, %387 ], [ %539, %534 ]
  %546 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %542)  ; FMax(a,b)
  %547 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %543)  ; FMax(a,b)
  %548 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %544)  ; FMax(a,b)
  %549 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %545)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %546)  ; FMin(a,b)
  %551 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %547)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %548)  ; FMin(a,b)
  %553 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %549)  ; FMin(a,b)
  %554 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 0
  store float %550, float* %554, align 4
  %555 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 1
  store float %551, float* %555, align 4
  %556 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 2
  store float %552, float* %556, align 4
  %557 = getelementptr inbounds [4 x float], [4 x float]* %23, i32 0, i32 3
  store float %553, float* %557, align 4
  %558 = icmp eq i32 %541, -1
  br i1 %558, label %559, label %632

; <label>:559                                     ; preds = %540
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = extractvalue %dx.types.ResRet.i32 %560, 1
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = extractvalue %dx.types.ResRet.i32 %563, 1
  %566 = extractvalue %dx.types.ResRet.i32 %563, 2
  %567 = extractvalue %dx.types.ResRet.i32 %563, 3
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = extractvalue %dx.types.ResRet.i32 %568, 1
  %571 = extractvalue %dx.types.ResRet.i32 %568, 2
  %572 = extractvalue %dx.types.ResRet.i32 %568, 3
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = extractvalue %dx.types.ResRet.i32 %573, 1
  %576 = extractvalue %dx.types.ResRet.i32 %573, 2
  %577 = extractvalue %dx.types.ResRet.i32 %573, 3
  %578 = and i32 %574, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %574, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = and i32 %575, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %575, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = and i32 %576, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %576, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = and i32 %577, 65535
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = lshr i32 %577, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = and i32 %569, 65535
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %569, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = and i32 %570, 65535
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %570, 16
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = and i32 %571, 65535
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = lshr i32 %571, 16
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = and i32 %572, 65535
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %572, 16
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = and i32 %564, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %564, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = and i32 %565, 65535
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %565, 16
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = and i32 %566, 65535
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %566, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %567, 65535
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = lshr i32 %567, 16
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = and i32 %561, 65535
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %561, 16
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = and i32 %562, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  br label %1050

; <label>:632                                     ; preds = %540
  %633 = shl nsw i32 %541, 4
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = extractvalue %dx.types.ResRet.i32 %634, 1
  %637 = extractvalue %dx.types.ResRet.i32 %634, 2
  %638 = extractvalue %dx.types.ResRet.i32 %634, 3
  %639 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %635, i32* %639, align 4
  %640 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %636, i32* %640, align 4
  %641 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %637, i32* %641, align 4
  %642 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %638, i32* %642, align 4
  br label %643

; <label>:643                                     ; preds = %1016, %632
  %644 = phi float [ %550, %632 ], [ %1018, %1016 ]
  %645 = phi float [ 0.000000e+00, %632 ], [ %986, %1016 ]
  %646 = phi float [ 0.000000e+00, %632 ], [ %987, %1016 ]
  %647 = phi float [ 0.000000e+00, %632 ], [ %988, %1016 ]
  %648 = phi float [ 0.000000e+00, %632 ], [ %989, %1016 ]
  %649 = phi float [ 0.000000e+00, %632 ], [ %990, %1016 ]
  %650 = phi float [ 0.000000e+00, %632 ], [ %991, %1016 ]
  %651 = phi float [ 0.000000e+00, %632 ], [ %992, %1016 ]
  %652 = phi float [ 0.000000e+00, %632 ], [ %993, %1016 ]
  %653 = phi float [ 0.000000e+00, %632 ], [ %994, %1016 ]
  %654 = phi float [ 0.000000e+00, %632 ], [ %995, %1016 ]
  %655 = phi float [ 0.000000e+00, %632 ], [ %996, %1016 ]
  %656 = phi float [ 0.000000e+00, %632 ], [ %997, %1016 ]
  %657 = phi float [ 0.000000e+00, %632 ], [ %998, %1016 ]
  %658 = phi float [ 0.000000e+00, %632 ], [ %999, %1016 ]
  %659 = phi float [ 0.000000e+00, %632 ], [ %1000, %1016 ]
  %660 = phi float [ 0.000000e+00, %632 ], [ %1001, %1016 ]
  %661 = phi float [ 0.000000e+00, %632 ], [ %1002, %1016 ]
  %662 = phi float [ 0.000000e+00, %632 ], [ %1003, %1016 ]
  %663 = phi float [ 0.000000e+00, %632 ], [ %1004, %1016 ]
  %664 = phi float [ 0.000000e+00, %632 ], [ %1005, %1016 ]
  %665 = phi float [ 0.000000e+00, %632 ], [ %1006, %1016 ]
  %666 = phi float [ 0.000000e+00, %632 ], [ %1007, %1016 ]
  %667 = phi float [ 0.000000e+00, %632 ], [ %1008, %1016 ]
  %668 = phi float [ 0.000000e+00, %632 ], [ %1009, %1016 ]
  %669 = phi float [ 0.000000e+00, %632 ], [ %1010, %1016 ]
  %670 = phi float [ 0.000000e+00, %632 ], [ %1011, %1016 ]
  %671 = phi float [ 0.000000e+00, %632 ], [ %1012, %1016 ]
  %672 = phi float [ 0.000000e+00, %632 ], [ %1013, %1016 ]
  %673 = phi i32 [ 0, %632 ], [ %1014, %1016 ]
  %674 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 0
  store float %550, float* %674, align 4
  %675 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 1
  store float %551, float* %675, align 4
  %676 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 2
  store float %552, float* %676, align 4
  %677 = getelementptr inbounds [4 x float], [4 x float]* %21, i32 0, i32 3
  store float %553, float* %677, align 4
  %678 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %635, i32* %678, align 4
  %679 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %636, i32* %679, align 4
  %680 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %637, i32* %680, align 4
  %681 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %638, i32* %681, align 4
  %682 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %673
  %683 = load i32, i32* %682, align 4, !tbaa !34
  %684 = icmp slt i32 %683, 0
  br i1 %684, label %685, label %783

; <label>:685                                     ; preds = %643
  %686 = getelementptr [4 x float], [4 x float]* %21, i32 0, i32 %673
  %687 = load float, float* %686, align 4, !tbaa !38
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fdiv fast float 1.000000e+00, %688
  %690 = shl i32 %541, 2
  %691 = add nsw i32 %673, %690
  %692 = shl nsw i32 %691, 4
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = extractvalue %dx.types.ResRet.i32 %693, 1
  %696 = extractvalue %dx.types.ResRet.i32 %693, 2
  %697 = extractvalue %dx.types.ResRet.i32 %693, 3
  %698 = icmp eq i32 %673, 0
  %699 = select i1 %698, float %553, float %550
  %700 = icmp eq i32 %673, 1
  %701 = select i1 %700, float %553, float %551
  %702 = fmul fast float %699, %689
  %703 = fmul fast float %701, %689
  %704 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 0
  store i32 %694, i32* %704, align 4
  %705 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 1
  store i32 %695, i32* %705, align 4
  %706 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 2
  store i32 %696, i32* %706, align 4
  %707 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i32 3
  store i32 %697, i32* %707, align 4
  %708 = fmul fast float %703, 4.000000e+00
  %709 = call float @dx.op.unary.f32(i32 27, float %708)  ; Round_ni(value)
  %710 = fmul fast float %702, 4.000000e+00
  %711 = call float @dx.op.unary.f32(i32 27, float %710)  ; Round_ni(value)
  %712 = fsub fast float 1.100000e+01, %709
  %713 = fmul fast float %709, 5.000000e-01
  %714 = fmul fast float %713, %712
  %715 = fadd fast float %711, 5.000000e-01
  %716 = fadd fast float %715, %714
  %717 = fptosi float %716 to i32
  %718 = fptosi float %709 to i32
  %719 = sub nsw i32 5, %718
  %720 = fmul fast float %711, 2.500000e-01
  %721 = fmul fast float %709, 2.500000e-01
  %722 = add nsw i32 %717, 1
  %723 = add nsw i32 %717, %719
  %724 = fsub fast float %702, %720
  %725 = fmul fast float %724, 4.000000e+00
  %726 = fsub fast float %703, %721
  %727 = fmul fast float %726, 4.000000e+00
  %728 = fadd fast float %724, %726
  %729 = fmul fast float %728, 4.000000e+00
  %730 = fcmp fast ogt float %729, 1.000000e+00
  br i1 %730, label %731, label %737

; <label>:731                                     ; preds = %685
  %732 = add nsw i32 %723, 1
  %733 = fadd fast float %727, -1.000000e+00
  %734 = fsub fast float -0.000000e+00, %733
  %735 = fadd fast float %725, -1.000000e+00
  %736 = fsub fast float -0.000000e+00, %735
  br label %737

; <label>:737                                     ; preds = %731, %685
  %738 = phi i32 [ %732, %731 ], [ %717, %685 ]
  %739 = phi i32 [ %722, %731 ], [ %723, %685 ]
  %740 = phi i32 [ %723, %731 ], [ %722, %685 ]
  %741 = phi float [ %736, %731 ], [ %727, %685 ]
  %742 = phi float [ %734, %731 ], [ %725, %685 ]
  %743 = fsub fast float 1.000000e+00, %741
  %744 = fsub fast float %743, %742
  %745 = lshr i32 %740, 2
  %746 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %745
  %747 = load i32, i32* %746, align 4, !tbaa !34
  %748 = shl i32 %740, 3
  %749 = and i32 %748, 24
  %750 = lshr i32 %747, %749
  %751 = and i32 %750, 255
  %752 = sitofp i32 %751 to float
  %753 = fmul fast float %742, 0x3F70101020000000
  %754 = fmul fast float %753, %752
  %755 = lshr i32 %739, 2
  %756 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %755
  %757 = load i32, i32* %756, align 4, !tbaa !34
  %758 = shl i32 %739, 3
  %759 = and i32 %758, 24
  %760 = lshr i32 %757, %759
  %761 = and i32 %760, 255
  %762 = sitofp i32 %761 to float
  %763 = fmul fast float %741, 0x3F70101020000000
  %764 = fmul fast float %763, %762
  %765 = lshr i32 %738, 2
  %766 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %765
  %767 = load i32, i32* %766, align 4, !tbaa !34
  %768 = shl i32 %738, 3
  %769 = and i32 %768, 24
  %770 = lshr i32 %767, %769
  %771 = and i32 %770, 255
  %772 = sitofp i32 %771 to float
  %773 = fmul fast float %744, 0x3F70101020000000
  %774 = fmul fast float %773, %772
  %775 = fsub fast float 1.000000e+00, %754
  %776 = fsub fast float %775, %764
  %777 = fsub fast float %776, %774
  %778 = fmul fast float %687, 2.000000e+01
  %779 = fadd fast float %778, 1.000000e+00
  %780 = fmul fast float %777, 2.000000e+01
  %781 = fsub fast float %779, %780
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  br label %783

; <label>:783                                     ; preds = %737, %643
  %784 = phi float [ %782, %737 ], [ 1.000000e+00, %643 ]
  %785 = fcmp fast ogt float %784, 0.000000e+00
  br i1 %785, label %786, label %985

; <label>:786                                     ; preds = %783
  %787 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %673
  %788 = load i32, i32* %787, align 4, !tbaa !34
  %789 = fmul fast float %784, %644
  %790 = shl i32 %788, 5
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = extractvalue %dx.types.ResRet.i32 %791, 1
  %794 = extractvalue %dx.types.ResRet.i32 %791, 2
  %795 = extractvalue %dx.types.ResRet.i32 %791, 3
  %796 = or i32 %790, 16
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = extractvalue %dx.types.ResRet.i32 %797, 1
  %800 = extractvalue %dx.types.ResRet.i32 %797, 2
  %801 = shl i32 %792, 4
  %802 = and i32 %801, 32752
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = lshr i32 %792, 7
  %805 = and i32 %804, 32752
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = lshr i32 %792, 22
  %808 = shl nuw nsw i32 %807, 5
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = and i32 %793, 255
  %811 = uitofp i32 %810 to float
  %812 = fmul fast float %811, 0x3F80204080000000
  %813 = fadd fast float %812, -1.000000e+00
  %814 = lshr i32 %793, 8
  %815 = and i32 %814, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F80204080000000
  %818 = fadd fast float %817, -1.000000e+00
  %819 = lshr i32 %793, 16
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F80204080000000
  %823 = fadd fast float %822, -1.000000e+00
  %824 = lshr i32 %793, 24
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F80204080000000
  %827 = fadd fast float %826, -1.000000e+00
  %828 = and i32 %794, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F80204080000000
  %831 = fadd fast float %830, -1.000000e+00
  %832 = lshr i32 %794, 8
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F80204080000000
  %836 = fadd fast float %835, -1.000000e+00
  %837 = lshr i32 %794, 16
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F80204080000000
  %841 = fadd fast float %840, -1.000000e+00
  %842 = lshr i32 %794, 24
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F80204080000000
  %845 = fadd fast float %844, -1.000000e+00
  %846 = and i32 %795, 255
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F80204080000000
  %849 = fadd fast float %848, -1.000000e+00
  %850 = lshr i32 %795, 8
  %851 = and i32 %850, 255
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F80204080000000
  %854 = fadd fast float %853, -1.000000e+00
  %855 = lshr i32 %795, 16
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F80204080000000
  %859 = fadd fast float %858, -1.000000e+00
  %860 = lshr i32 %795, 24
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F80204080000000
  %863 = fadd fast float %862, -1.000000e+00
  %864 = and i32 %798, 255
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %865, 0x3F80204080000000
  %867 = fadd fast float %866, -1.000000e+00
  %868 = lshr i32 %798, 8
  %869 = and i32 %868, 255
  %870 = uitofp i32 %869 to float
  %871 = fmul fast float %870, 0x3F80204080000000
  %872 = fadd fast float %871, -1.000000e+00
  %873 = lshr i32 %798, 16
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = fmul fast float %875, 0x3F80204080000000
  %877 = fadd fast float %876, -1.000000e+00
  %878 = lshr i32 %798, 24
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F80204080000000
  %881 = fadd fast float %880, -1.000000e+00
  %882 = and i32 %799, 255
  %883 = uitofp i32 %882 to float
  %884 = fmul fast float %883, 0x3F80204080000000
  %885 = fadd fast float %884, -1.000000e+00
  %886 = lshr i32 %799, 8
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = fmul fast float %888, 0x3F80204080000000
  %890 = fadd fast float %889, -1.000000e+00
  %891 = lshr i32 %799, 16
  %892 = and i32 %891, 255
  %893 = uitofp i32 %892 to float
  %894 = fmul fast float %893, 0x3F80204080000000
  %895 = fadd fast float %894, -1.000000e+00
  %896 = lshr i32 %799, 24
  %897 = uitofp i32 %896 to float
  %898 = fmul fast float %897, 0x3F80204080000000
  %899 = fadd fast float %898, -1.000000e+00
  %900 = and i32 %800, 255
  %901 = uitofp i32 %900 to float
  %902 = fmul fast float %901, 0x3F80204080000000
  %903 = fadd fast float %902, -1.000000e+00
  %904 = lshr i32 %800, 8
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F80204080000000
  %908 = fadd fast float %907, -1.000000e+00
  %909 = lshr i32 %800, 16
  %910 = and i32 %909, 255
  %911 = uitofp i32 %910 to float
  %912 = fmul fast float %911, 0x3F80204080000000
  %913 = fadd fast float %912, -1.000000e+00
  %914 = lshr i32 %800, 24
  %915 = uitofp i32 %914 to float
  %916 = fmul fast float %915, 0x3F80204080000000
  %917 = fadd fast float %916, -1.000000e+00
  %918 = fmul fast float %803, %789
  %919 = fadd fast float %918, %671
  %920 = fmul fast float %789, 0x3FFBB67AE0000000
  %921 = fmul fast float %920, %803
  %922 = fmul fast float %921, %813
  %923 = fadd fast float %922, %670
  %924 = fmul fast float %921, %818
  %925 = fadd fast float %924, %669
  %926 = fmul fast float %921, %823
  %927 = fadd fast float %926, %668
  %928 = fmul fast float %789, 0x3FFEFBDEC0000000
  %929 = fmul fast float %928, %803
  %930 = fmul fast float %929, %827
  %931 = fadd fast float %930, %667
  %932 = fmul fast float %929, %831
  %933 = fadd fast float %932, %666
  %934 = fmul fast float %789, 0x4001E377A0000000
  %935 = fmul fast float %934, %803
  %936 = fmul fast float %935, %836
  %937 = fadd fast float %936, %665
  %938 = fmul fast float %929, %841
  %939 = fadd fast float %938, %664
  %940 = fmul fast float %929, %845
  %941 = fadd fast float %940, %663
  %942 = fmul fast float %806, %789
  %943 = fadd fast float %942, %662
  %944 = fmul fast float %920, %806
  %945 = fmul fast float %944, %849
  %946 = fadd fast float %945, %661
  %947 = fmul fast float %944, %854
  %948 = fadd fast float %947, %660
  %949 = fmul fast float %944, %859
  %950 = fadd fast float %949, %659
  %951 = fmul fast float %928, %806
  %952 = fmul fast float %951, %863
  %953 = fadd fast float %952, %658
  %954 = fmul fast float %951, %867
  %955 = fadd fast float %954, %657
  %956 = fmul fast float %934, %806
  %957 = fmul fast float %956, %872
  %958 = fadd fast float %957, %656
  %959 = fmul fast float %951, %877
  %960 = fadd fast float %959, %655
  %961 = fmul fast float %951, %881
  %962 = fadd fast float %961, %654
  %963 = fmul fast float %809, %789
  %964 = fadd fast float %963, %653
  %965 = fmul fast float %920, %809
  %966 = fmul fast float %965, %885
  %967 = fadd fast float %966, %652
  %968 = fmul fast float %965, %890
  %969 = fadd fast float %968, %651
  %970 = fmul fast float %965, %895
  %971 = fadd fast float %970, %650
  %972 = fmul fast float %928, %809
  %973 = fmul fast float %972, %899
  %974 = fadd fast float %973, %649
  %975 = fmul fast float %972, %903
  %976 = fadd fast float %975, %648
  %977 = fmul fast float %934, %809
  %978 = fmul fast float %977, %908
  %979 = fadd fast float %978, %647
  %980 = fmul fast float %972, %913
  %981 = fadd fast float %980, %646
  %982 = fmul fast float %972, %917
  %983 = fadd fast float %982, %645
  %984 = fadd fast float %789, %672
  br label %985

; <label>:985                                     ; preds = %786, %783
  %986 = phi float [ %983, %786 ], [ %645, %783 ]
  %987 = phi float [ %981, %786 ], [ %646, %783 ]
  %988 = phi float [ %979, %786 ], [ %647, %783 ]
  %989 = phi float [ %976, %786 ], [ %648, %783 ]
  %990 = phi float [ %974, %786 ], [ %649, %783 ]
  %991 = phi float [ %971, %786 ], [ %650, %783 ]
  %992 = phi float [ %969, %786 ], [ %651, %783 ]
  %993 = phi float [ %967, %786 ], [ %652, %783 ]
  %994 = phi float [ %964, %786 ], [ %653, %783 ]
  %995 = phi float [ %962, %786 ], [ %654, %783 ]
  %996 = phi float [ %960, %786 ], [ %655, %783 ]
  %997 = phi float [ %958, %786 ], [ %656, %783 ]
  %998 = phi float [ %955, %786 ], [ %657, %783 ]
  %999 = phi float [ %953, %786 ], [ %658, %783 ]
  %1000 = phi float [ %950, %786 ], [ %659, %783 ]
  %1001 = phi float [ %948, %786 ], [ %660, %783 ]
  %1002 = phi float [ %946, %786 ], [ %661, %783 ]
  %1003 = phi float [ %943, %786 ], [ %662, %783 ]
  %1004 = phi float [ %941, %786 ], [ %663, %783 ]
  %1005 = phi float [ %939, %786 ], [ %664, %783 ]
  %1006 = phi float [ %937, %786 ], [ %665, %783 ]
  %1007 = phi float [ %933, %786 ], [ %666, %783 ]
  %1008 = phi float [ %931, %786 ], [ %667, %783 ]
  %1009 = phi float [ %927, %786 ], [ %668, %783 ]
  %1010 = phi float [ %925, %786 ], [ %669, %783 ]
  %1011 = phi float [ %923, %786 ], [ %670, %783 ]
  %1012 = phi float [ %919, %786 ], [ %671, %783 ]
  %1013 = phi float [ %984, %786 ], [ %672, %783 ]
  %1014 = add nuw nsw i32 %673, 1
  %1015 = icmp eq i32 %1014, 4
  br i1 %1015, label %1019, label %1016

; <label>:1016                                    ; preds = %985
  %1017 = getelementptr [4 x float], [4 x float]* %23, i32 0, i32 %1014
  %1018 = load float, float* %1017, align 4, !tbaa !38
  br label %643

; <label>:1019                                    ; preds = %985
  %1020 = fcmp fast ogt float %1013, 0.000000e+00
  %1021 = fdiv fast float 1.000000e+00, %1013
  %1022 = select i1 %1020, float %1021, float 1.000000e+00
  %1023 = fmul fast float %1022, %1012
  %1024 = fmul fast float %1022, %1011
  %1025 = fmul fast float %1022, %1010
  %1026 = fmul fast float %1022, %1009
  %1027 = fmul fast float %1022, %1008
  %1028 = fmul fast float %1022, %1007
  %1029 = fmul fast float %1022, %1006
  %1030 = fmul fast float %1022, %1005
  %1031 = fmul fast float %1022, %1004
  %1032 = fmul fast float %1022, %1003
  %1033 = fmul fast float %1022, %1002
  %1034 = fmul fast float %1022, %1001
  %1035 = fmul fast float %1022, %1000
  %1036 = fmul fast float %1022, %999
  %1037 = fmul fast float %1022, %998
  %1038 = fmul fast float %1022, %997
  %1039 = fmul fast float %1022, %996
  %1040 = fmul fast float %1022, %995
  %1041 = fmul fast float %1022, %994
  %1042 = fmul fast float %1022, %993
  %1043 = fmul fast float %1022, %992
  %1044 = fmul fast float %1022, %991
  %1045 = fmul fast float %1022, %990
  %1046 = fmul fast float %1022, %989
  %1047 = fmul fast float %1022, %988
  %1048 = fmul fast float %1022, %987
  %1049 = fmul fast float %1022, %986
  br label %1050

; <label>:1050                                    ; preds = %1019, %559
  %1051 = phi float [ %631, %559 ], [ %1049, %1019 ]
  %1052 = phi float [ %629, %559 ], [ %1048, %1019 ]
  %1053 = phi float [ %627, %559 ], [ %1047, %1019 ]
  %1054 = phi float [ %625, %559 ], [ %1046, %1019 ]
  %1055 = phi float [ %623, %559 ], [ %1045, %1019 ]
  %1056 = phi float [ %621, %559 ], [ %1044, %1019 ]
  %1057 = phi float [ %619, %559 ], [ %1043, %1019 ]
  %1058 = phi float [ %617, %559 ], [ %1042, %1019 ]
  %1059 = phi float [ %615, %559 ], [ %1041, %1019 ]
  %1060 = phi float [ %613, %559 ], [ %1040, %1019 ]
  %1061 = phi float [ %611, %559 ], [ %1039, %1019 ]
  %1062 = phi float [ %609, %559 ], [ %1038, %1019 ]
  %1063 = phi float [ %607, %559 ], [ %1037, %1019 ]
  %1064 = phi float [ %605, %559 ], [ %1036, %1019 ]
  %1065 = phi float [ %603, %559 ], [ %1035, %1019 ]
  %1066 = phi float [ %601, %559 ], [ %1034, %1019 ]
  %1067 = phi float [ %599, %559 ], [ %1033, %1019 ]
  %1068 = phi float [ %597, %559 ], [ %1032, %1019 ]
  %1069 = phi float [ %595, %559 ], [ %1031, %1019 ]
  %1070 = phi float [ %593, %559 ], [ %1030, %1019 ]
  %1071 = phi float [ %591, %559 ], [ %1029, %1019 ]
  %1072 = phi float [ %589, %559 ], [ %1028, %1019 ]
  %1073 = phi float [ %587, %559 ], [ %1027, %1019 ]
  %1074 = phi float [ %585, %559 ], [ %1026, %1019 ]
  %1075 = phi float [ %583, %559 ], [ %1025, %1019 ]
  %1076 = phi float [ %581, %559 ], [ %1024, %1019 ]
  %1077 = phi float [ %579, %559 ], [ %1023, %1019 ]
  %1078 = phi float [ 0.000000e+00, %559 ], [ 1.000000e+00, %1019 ]
  %1079 = call float @dx.op.dot3.f32(i32 55, float %16, float %17, float %18, float %16, float %17, float %18)  ; Dot3(ax,ay,az,bx,by,bz)
  %1080 = call float @dx.op.unary.f32(i32 25, float %1079)  ; Rsqrt(value)
  %1081 = fmul fast float %1080, %16
  %1082 = fmul fast float %1080, %17
  %1083 = fmul fast float %1080, %18
  %1084 = fmul fast float %1077, 0x3FD20DD760000000
  %1085 = fmul fast float %1075, 0x3FD4D8D7C0000000
  %1086 = fmul fast float %1085, %1083
  %1087 = fmul fast float %1083, %1083
  %1088 = fmul fast float %1087, 0x3FEE471020000000
  %1089 = fadd fast float %1088, 0xBFD42F6020000000
  %1090 = fmul fast float %1089, %1071
  %1091 = fmul fast float %1074, 0x3FD4D8D7C0000000
  %1092 = fmul fast float %1091, %1081
  %1093 = fmul fast float %1076, 0x3FD4D8D7C0000000
  %1094 = fmul fast float %1093, %1082
  %1095 = fmul fast float %1083, 0xBFF17B1420000000
  %1096 = fmul fast float %1081, %1070
  %1097 = fmul fast float %1082, %1072
  %1098 = fmul fast float %1081, %1081
  %1099 = fmul fast float %1082, %1082
  %1100 = fsub fast float %1098, %1099
  %1101 = fmul fast float %1069, 0x3FC17B1420000000
  %1102 = fmul fast float %1101, %1100
  %1103 = fmul fast float %17, 0x3FD17B1420000000
  %1104 = fmul fast float %1103, %1073
  %1105 = fmul fast float %1104, %1080
  %1106 = fmul fast float %1105, %1081
  %1107 = fadd fast float %1096, %1097
  %1108 = fmul fast float %1095, %1107
  %1109 = fadd fast float %1108, %1090
  %1110 = fmul fast float %1109, 2.500000e-01
  %1111 = fadd fast float %1086, %1084
  %1112 = fsub fast float %1111, %1092
  %1113 = fsub fast float %1112, %1094
  %1114 = fadd fast float %1113, %1102
  %1115 = fadd fast float %1114, %1106
  %1116 = fadd fast float %1115, %1110
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 3
  %1119 = fmul fast float %1116, %1118
  %1120 = fmul fast float %1068, 0x3FD20DD760000000
  %1121 = fmul fast float %1066, 0x3FD4D8D7C0000000
  %1122 = fmul fast float %1121, %1083
  %1123 = fmul fast float %1089, %1062
  %1124 = fmul fast float %1065, 0x3FD4D8D7C0000000
  %1125 = fmul fast float %1124, %1081
  %1126 = fmul fast float %1067, 0x3FD4D8D7C0000000
  %1127 = fmul fast float %1126, %1082
  %1128 = fmul fast float %1081, %1061
  %1129 = fmul fast float %1082, %1063
  %1130 = fmul fast float %1060, 0x3FC17B1420000000
  %1131 = fmul fast float %1130, %1100
  %1132 = fmul fast float %1103, %1064
  %1133 = fmul fast float %1132, %1080
  %1134 = fmul fast float %1133, %1081
  %1135 = fadd fast float %1128, %1129
  %1136 = fmul fast float %1095, %1135
  %1137 = fadd fast float %1136, %1123
  %1138 = fmul fast float %1137, 2.500000e-01
  %1139 = fadd fast float %1122, %1120
  %1140 = fsub fast float %1139, %1125
  %1141 = fsub fast float %1140, %1127
  %1142 = fadd fast float %1141, %1131
  %1143 = fadd fast float %1142, %1134
  %1144 = fadd fast float %1143, %1138
  %1145 = fmul fast float %1144, %1118
  %1146 = fmul fast float %1059, 0x3FD20DD760000000
  %1147 = fmul fast float %1057, 0x3FD4D8D7C0000000
  %1148 = fmul fast float %1147, %1083
  %1149 = fmul fast float %1089, %1053
  %1150 = fmul fast float %1056, 0x3FD4D8D7C0000000
  %1151 = fmul fast float %1150, %1081
  %1152 = fmul fast float %1058, 0x3FD4D8D7C0000000
  %1153 = fmul fast float %1152, %1082
  %1154 = fmul fast float %1081, %1052
  %1155 = fmul fast float %1082, %1054
  %1156 = fmul fast float %1051, 0x3FC17B1420000000
  %1157 = fmul fast float %1156, %1100
  %1158 = fmul fast float %1103, %1055
  %1159 = fmul fast float %1158, %1080
  %1160 = fmul fast float %1159, %1081
  %1161 = fadd fast float %1154, %1155
  %1162 = fmul fast float %1095, %1161
  %1163 = fadd fast float %1162, %1149
  %1164 = fmul fast float %1163, 2.500000e-01
  %1165 = fadd fast float %1148, %1146
  %1166 = fsub fast float %1165, %1151
  %1167 = fsub fast float %1166, %1153
  %1168 = fadd fast float %1167, %1157
  %1169 = fadd fast float %1168, %1160
  %1170 = fadd fast float %1169, %1164
  %1171 = fmul fast float %1170, %1118
  br label %1172

; <label>:1172                                    ; preds = %1050, %253, %42, %38, %37, %34
  %1173 = phi float [ %188, %42 ], [ %1119, %1050 ], [ 0.000000e+00, %253 ], [ %13, %37 ], [ %13, %34 ], [ %13, %38 ]
  %1174 = phi float [ %220, %42 ], [ %1145, %1050 ], [ 0.000000e+00, %253 ], [ %14, %37 ], [ %14, %34 ], [ %14, %38 ]
  %1175 = phi float [ %252, %42 ], [ %1171, %1050 ], [ 0.000000e+00, %253 ], [ %15, %37 ], [ %15, %34 ], [ %15, %38 ]
  %1176 = phi float [ 1.000000e+00, %42 ], [ %1078, %1050 ], [ 1.000000e+00, %253 ], [ 1.000000e+00, %37 ], [ 1.000000e+00, %34 ], [ 1.000000e+00, %38 ]
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1179 = fmul fast float %1176, %1173
  %1180 = fmul fast float %1179, %1178
  %1181 = fmul fast float %1176, %1174
  %1182 = fmul fast float %1181, %1178
  %1183 = fmul fast float %1176, %1175
  %1184 = fmul fast float %1183, %1178
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1180)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1182)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1184)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1176)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.viewIdState = !{!19}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !17, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!16 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!17 = !{!18}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{[14 x i32] [i32 12, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 0]}
!20 = !{void ()* @ps_main, !"ps_main", !21, !4, !31}
!21 = !{!22, !29, null}
!22 = !{!23, !25, !27}
!23 = !{i32 0, !"SV_Position", i8 9, i8 3, !24, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!24 = !{i32 0}
!25 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !24, i8 2, i32 1, i8 4, i32 1, i8 0, !26}
!26 = !{i32 3, i32 15}
!27 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 2, i8 0, !26}
!28 = !{i32 1}
!29 = !{!30}
!30 = !{i32 0, !"SV_Target", i8 9, i8 16, !24, i8 0, i32 1, i8 4, i32 0, i8 0, !26}
!31 = !{i32 0, i64 16}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}

