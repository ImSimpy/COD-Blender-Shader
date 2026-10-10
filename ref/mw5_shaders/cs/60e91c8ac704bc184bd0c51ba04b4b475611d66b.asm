;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: 83f863c4fa2ae0d633eef2ae38002aae
;
; Pipeline Runtime Information: 
;
;
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
;   [9232 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t3     1
;                                   texture    byte         r/o      T2             t1     1
;                                   texture    byte         r/o      T3             t2     1
;                                   texture    byte         r/o      T4             t4     1
;                                   texture    byte         r/o      T5             t5     1
;                                   texture    byte         r/o      T6             t6     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.globals = type { <4 x i32>, [64 x [4 x <4 x float>]], [64 x [4 x <4 x float>]], [64 x <4 x float>] }
%hostlayout.singleSurface = type { [4 x <4 x float>], [3 x <4 x i32>] }

define void @cs_bsp_tessfactors() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %16 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %17 = extractvalue %dx.types.CBufRet.i32 %13, 3
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 3
  %20 = lshr i32 %17, 9
  %21 = and i32 %17, 255
  %22 = and i32 %17, 256
  %23 = icmp eq i32 %22, 0
  %24 = shl nuw nsw i32 %21, 2
  %25 = or i32 %24, 1
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %25)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.f32 %26, 0
  %28 = extractvalue %dx.types.CBufRet.f32 %26, 1
  %29 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %30 = add nuw nsw i32 %25, 1
  %31 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %30)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.f32 %31, 0
  %33 = extractvalue %dx.types.CBufRet.f32 %31, 1
  %34 = extractvalue %dx.types.CBufRet.f32 %31, 3
  %35 = or i32 %24, 3
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %35)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 1
  %39 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %40 = add nuw nsw i32 %35, 1
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %40)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %44 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %45 = add nuw nsw i32 %24, 257
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %45)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = add nuw nsw i32 %24, 258
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %48)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 1
  %51 = add nuw nsw i32 %24, 259
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %51)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %54 = add nuw nsw i32 %21, 513
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 %54)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 0
  %78 = urem i32 %20, %77
  %79 = udiv i32 262144, %77
  %80 = mul i32 %79, %78
  %81 = add i32 %80, 7184
  %82 = udiv i32 81920, %77
  %83 = mul i32 %82, %78
  %84 = add i32 %83, 269328
  %85 = lshr i32 %12, 6
  %86 = and i32 %12, 63
  %87 = icmp ult i32 %85, %19
  br i1 %87, label %88, label %1265, !dx.controlflow.hints !22

; <label>:88                                      ; preds = %0
  %89 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 0
  %92 = add i32 %91, %85
  %93 = add i32 %92, %89
  %94 = shl i32 %93, 2
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = shl i32 %96, 5
  %98 = or i32 %97, 16
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %98, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 3
  %101 = lshr i32 %100, 16
  %102 = icmp ult i32 %86, %101
  br i1 %102, label %103, label %1265, !dx.controlflow.hints !23

; <label>:103                                     ; preds = %88
  %104 = shl i32 %96, 6
  %105 = or i32 %104, %86
  %106 = mul i32 %105, 3
  %107 = mul i32 %105, 6
  %108 = and i32 %107, -4
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = extractvalue %dx.types.ResRet.i32 %109, 1
  %112 = and i32 %106, 1
  %113 = icmp eq i32 %112, 0
  %114 = lshr i32 %110, 16
  %115 = and i32 %111, 65535
  %116 = lshr i32 %111, 16
  %117 = and i32 %110, 65535
  %118 = select i1 %113, i32 %117, i32 %114
  %119 = select i1 %113, i32 %114, i32 %115
  %120 = select i1 %113, i32 %115, i32 %116
  %121 = shl i32 %15, 7
  %122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = extractvalue %dx.types.ResRet.f32 %122, 1
  %125 = extractvalue %dx.types.ResRet.f32 %122, 2
  %126 = or i32 %121, 12
  %127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = or i32 %121, 36
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = or i32 %121, 40
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = or i32 %121, 72
  %136 = shl nuw nsw i32 %118, 3
  %137 = lshr i32 %118, 7
  %138 = add i32 %131, %137
  %139 = shl i32 %138, 2
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %139, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = shl i32 %141, 10
  %143 = and i32 %136, 1016
  %144 = or i32 %142, %143
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = extractvalue %dx.types.ResRet.i32 %145, 1
  %148 = and i32 %146, 2097151
  %149 = uitofp i32 %148 to float
  %150 = lshr i32 %146, 21
  %151 = shl i32 %147, 11
  %152 = and i32 %151, 2095104
  %153 = or i32 %152, %150
  %154 = uitofp i32 %153 to float
  %155 = lshr i32 %147, 10
  %156 = and i32 %155, 2097151
  %157 = uitofp i32 %156 to float
  %158 = fmul float %128, %149
  %159 = fmul float %128, %154
  %160 = fmul float %128, %157
  %161 = fadd float %123, %158
  %162 = fadd float %124, %159
  %163 = fadd float %125, %160
  %164 = fmul fast float %161, %61
  %165 = call float @dx.op.tertiary.f32(i32 46, float %65, float %162, float %164)  ; FMad(a,b,c)
  %166 = call float @dx.op.tertiary.f32(i32 46, float %69, float %163, float %165)  ; FMad(a,b,c)
  %167 = fadd fast float %166, %73
  %168 = fmul fast float %161, %62
  %169 = call float @dx.op.tertiary.f32(i32 46, float %66, float %162, float %168)  ; FMad(a,b,c)
  %170 = call float @dx.op.tertiary.f32(i32 46, float %70, float %163, float %169)  ; FMad(a,b,c)
  %171 = fadd fast float %170, %74
  %172 = fmul fast float %161, %63
  %173 = call float @dx.op.tertiary.f32(i32 46, float %67, float %162, float %172)  ; FMad(a,b,c)
  %174 = call float @dx.op.tertiary.f32(i32 46, float %71, float %163, float %173)  ; FMad(a,b,c)
  %175 = fadd fast float %174, %75
  %176 = shl nuw nsw i32 %118, 2
  %177 = lshr i32 %118, 8
  %178 = add i32 %134, %177
  %179 = shl i32 %178, 2
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = shl i32 %181, 10
  %183 = and i32 %176, 1020
  %184 = or i32 %182, %183
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = lshr i32 %186, 30
  %188 = and i32 %186, 1023
  %189 = uitofp i32 %188 to float
  %190 = lshr i32 %186, 10
  %191 = and i32 %190, 1023
  %192 = uitofp i32 %191 to float
  %193 = lshr i32 %186, 20
  %194 = and i32 %193, 511
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %189, 0x3F56A64800000000
  %197 = fadd fast float %196, 0xBFE6A09E60000000
  %198 = fmul fast float %192, 0x3F56A64800000000
  %199 = fadd fast float %198, 0xBFE6A09E60000000
  %200 = fmul fast float %195, 0x3F66ABF460000000
  %201 = fadd fast float %200, 0xBFE6A09E60000000
  %202 = call float @dx.op.dot3.f32(i32 55, float %197, float %199, float %201, float %197, float %199, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %204 = fsub fast float 1.000000e+00, %203
  %205 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %206 = icmp eq i32 %187, 0
  br i1 %206, label %213, label %207, !dx.controlflow.hints !24

; <label>:207                                     ; preds = %103
  %208 = icmp eq i32 %187, 1
  br i1 %208, label %213, label %209, !dx.controlflow.hints !25

; <label>:209                                     ; preds = %207
  %210 = icmp eq i32 %187, 2
  %211 = select i1 %210, float %205, float %201
  %212 = select i1 %210, float %201, float %205
  br label %213

; <label>:213                                     ; preds = %209, %207, %103
  %214 = phi float [ %197, %207 ], [ %205, %103 ], [ %197, %209 ]
  %215 = phi float [ %205, %207 ], [ %197, %103 ], [ %199, %209 ]
  %216 = phi float [ %199, %207 ], [ %199, %103 ], [ %211, %209 ]
  %217 = phi float [ %201, %207 ], [ %201, %103 ], [ %212, %209 ]
  %218 = fmul fast float %216, %214
  %219 = fmul fast float %217, %215
  %220 = fadd fast float %219, %218
  %221 = fmul fast float %220, 2.000000e+00
  %222 = fmul fast float %215, 2.000000e+00
  %223 = fmul fast float %222, %216
  %224 = fmul fast float %214, 2.000000e+00
  %225 = fmul fast float %224, %217
  %226 = fsub fast float %223, %225
  %227 = fmul fast float %214, %214
  %228 = fmul fast float %227, 2.000000e+00
  %229 = fsub fast float 1.000000e+00, %228
  %230 = fmul fast float %215, %215
  %231 = fmul fast float %230, 2.000000e+00
  %232 = fsub fast float %229, %231
  %233 = fmul fast float %221, %61
  %234 = call float @dx.op.tertiary.f32(i32 46, float %65, float %226, float %233)  ; FMad(a,b,c)
  %235 = call float @dx.op.tertiary.f32(i32 46, float %69, float %232, float %234)  ; FMad(a,b,c)
  %236 = fmul fast float %221, %62
  %237 = call float @dx.op.tertiary.f32(i32 46, float %66, float %226, float %236)  ; FMad(a,b,c)
  %238 = call float @dx.op.tertiary.f32(i32 46, float %70, float %232, float %237)  ; FMad(a,b,c)
  %239 = fmul fast float %221, %63
  %240 = call float @dx.op.tertiary.f32(i32 46, float %67, float %226, float %239)  ; FMad(a,b,c)
  %241 = call float @dx.op.tertiary.f32(i32 46, float %71, float %232, float %240)  ; FMad(a,b,c)
  %242 = fmul fast float %59, %56
  %243 = fmul fast float %59, %57
  %244 = fmul fast float %59, %58
  %245 = fsub fast float %167, %242
  %246 = fsub fast float %171, %243
  %247 = fsub fast float %175, %244
  %248 = fmul fast float %245, %27
  %249 = call float @dx.op.tertiary.f32(i32 46, float %32, float %246, float %248)  ; FMad(a,b,c)
  %250 = call float @dx.op.tertiary.f32(i32 46, float %37, float %247, float %249)  ; FMad(a,b,c)
  %251 = fadd fast float %250, %42
  %252 = fmul fast float %245, %28
  %253 = call float @dx.op.tertiary.f32(i32 46, float %33, float %246, float %252)  ; FMad(a,b,c)
  %254 = call float @dx.op.tertiary.f32(i32 46, float %38, float %247, float %253)  ; FMad(a,b,c)
  %255 = fadd fast float %254, %43
  %256 = fmul fast float %245, %29
  %257 = call float @dx.op.tertiary.f32(i32 46, float %34, float %246, float %256)  ; FMad(a,b,c)
  %258 = call float @dx.op.tertiary.f32(i32 46, float %39, float %247, float %257)  ; FMad(a,b,c)
  %259 = fadd fast float %258, %44
  %260 = fmul fast float %167, %59
  %261 = fmul fast float %171, %59
  %262 = fmul fast float %175, %59
  %263 = fsub fast float %56, %260
  %264 = fsub fast float %57, %261
  %265 = fsub fast float %58, %262
  %266 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %267 = call float @dx.op.unary.f32(i32 25, float %266)  ; Rsqrt(value)
  %268 = fmul fast float %267, %263
  %269 = fmul fast float %267, %264
  %270 = fmul fast float %267, %265
  %271 = call float @dx.op.dot3.f32(i32 55, float %235, float %238, float %241, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %272 = shl nuw nsw i32 %119, 3
  %273 = lshr i32 %119, 7
  %274 = add i32 %131, %273
  %275 = shl i32 %274, 2
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = shl i32 %277, 10
  %279 = and i32 %272, 1016
  %280 = or i32 %278, %279
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = extractvalue %dx.types.ResRet.i32 %281, 1
  %284 = and i32 %282, 2097151
  %285 = uitofp i32 %284 to float
  %286 = lshr i32 %282, 21
  %287 = shl i32 %283, 11
  %288 = and i32 %287, 2095104
  %289 = or i32 %288, %286
  %290 = uitofp i32 %289 to float
  %291 = lshr i32 %283, 10
  %292 = and i32 %291, 2097151
  %293 = uitofp i32 %292 to float
  %294 = fmul float %128, %285
  %295 = fmul float %128, %290
  %296 = fmul float %128, %293
  %297 = fadd float %123, %294
  %298 = fadd float %124, %295
  %299 = fadd float %125, %296
  %300 = fmul fast float %297, %61
  %301 = call float @dx.op.tertiary.f32(i32 46, float %65, float %298, float %300)  ; FMad(a,b,c)
  %302 = call float @dx.op.tertiary.f32(i32 46, float %69, float %299, float %301)  ; FMad(a,b,c)
  %303 = fadd fast float %302, %73
  %304 = fmul fast float %297, %62
  %305 = call float @dx.op.tertiary.f32(i32 46, float %66, float %298, float %304)  ; FMad(a,b,c)
  %306 = call float @dx.op.tertiary.f32(i32 46, float %70, float %299, float %305)  ; FMad(a,b,c)
  %307 = fadd fast float %306, %74
  %308 = fmul fast float %297, %63
  %309 = call float @dx.op.tertiary.f32(i32 46, float %67, float %298, float %308)  ; FMad(a,b,c)
  %310 = call float @dx.op.tertiary.f32(i32 46, float %71, float %299, float %309)  ; FMad(a,b,c)
  %311 = fadd fast float %310, %75
  %312 = shl nuw nsw i32 %119, 2
  %313 = lshr i32 %119, 8
  %314 = add i32 %134, %313
  %315 = shl i32 %314, 2
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = shl i32 %317, 10
  %319 = and i32 %312, 1020
  %320 = or i32 %318, %319
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = lshr i32 %322, 30
  %324 = and i32 %322, 1023
  %325 = uitofp i32 %324 to float
  %326 = lshr i32 %322, 10
  %327 = and i32 %326, 1023
  %328 = uitofp i32 %327 to float
  %329 = lshr i32 %322, 20
  %330 = and i32 %329, 511
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %325, 0x3F56A64800000000
  %333 = fadd fast float %332, 0xBFE6A09E60000000
  %334 = fmul fast float %328, 0x3F56A64800000000
  %335 = fadd fast float %334, 0xBFE6A09E60000000
  %336 = fmul fast float %331, 0x3F66ABF460000000
  %337 = fadd fast float %336, 0xBFE6A09E60000000
  %338 = call float @dx.op.dot3.f32(i32 55, float %333, float %335, float %337, float %333, float %335, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = call float @dx.op.unary.f32(i32 7, float %338)  ; Saturate(value)
  %340 = fsub fast float 1.000000e+00, %339
  %341 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %342 = icmp eq i32 %323, 0
  br i1 %342, label %349, label %343, !dx.controlflow.hints !24

; <label>:343                                     ; preds = %213
  %344 = icmp eq i32 %323, 1
  br i1 %344, label %349, label %345, !dx.controlflow.hints !25

; <label>:345                                     ; preds = %343
  %346 = icmp eq i32 %323, 2
  %347 = select i1 %346, float %341, float %337
  %348 = select i1 %346, float %337, float %341
  br label %349

; <label>:349                                     ; preds = %345, %343, %213
  %350 = phi float [ %333, %343 ], [ %341, %213 ], [ %333, %345 ]
  %351 = phi float [ %341, %343 ], [ %333, %213 ], [ %335, %345 ]
  %352 = phi float [ %335, %343 ], [ %335, %213 ], [ %347, %345 ]
  %353 = phi float [ %337, %343 ], [ %337, %213 ], [ %348, %345 ]
  %354 = fmul fast float %352, %350
  %355 = fmul fast float %353, %351
  %356 = fadd fast float %355, %354
  %357 = fmul fast float %356, 2.000000e+00
  %358 = fmul fast float %351, 2.000000e+00
  %359 = fmul fast float %358, %352
  %360 = fmul fast float %350, 2.000000e+00
  %361 = fmul fast float %360, %353
  %362 = fsub fast float %359, %361
  %363 = fmul fast float %350, %350
  %364 = fmul fast float %363, 2.000000e+00
  %365 = fsub fast float 1.000000e+00, %364
  %366 = fmul fast float %351, %351
  %367 = fmul fast float %366, 2.000000e+00
  %368 = fsub fast float %365, %367
  %369 = fmul fast float %357, %61
  %370 = call float @dx.op.tertiary.f32(i32 46, float %65, float %362, float %369)  ; FMad(a,b,c)
  %371 = call float @dx.op.tertiary.f32(i32 46, float %69, float %368, float %370)  ; FMad(a,b,c)
  %372 = fmul fast float %357, %62
  %373 = call float @dx.op.tertiary.f32(i32 46, float %66, float %362, float %372)  ; FMad(a,b,c)
  %374 = call float @dx.op.tertiary.f32(i32 46, float %70, float %368, float %373)  ; FMad(a,b,c)
  %375 = fmul fast float %357, %63
  %376 = call float @dx.op.tertiary.f32(i32 46, float %67, float %362, float %375)  ; FMad(a,b,c)
  %377 = call float @dx.op.tertiary.f32(i32 46, float %71, float %368, float %376)  ; FMad(a,b,c)
  %378 = fsub fast float %303, %242
  %379 = fsub fast float %307, %243
  %380 = fsub fast float %311, %244
  %381 = fmul fast float %378, %27
  %382 = call float @dx.op.tertiary.f32(i32 46, float %32, float %379, float %381)  ; FMad(a,b,c)
  %383 = call float @dx.op.tertiary.f32(i32 46, float %37, float %380, float %382)  ; FMad(a,b,c)
  %384 = fadd fast float %383, %42
  %385 = fmul fast float %378, %28
  %386 = call float @dx.op.tertiary.f32(i32 46, float %33, float %379, float %385)  ; FMad(a,b,c)
  %387 = call float @dx.op.tertiary.f32(i32 46, float %38, float %380, float %386)  ; FMad(a,b,c)
  %388 = fadd fast float %387, %43
  %389 = fmul fast float %378, %29
  %390 = call float @dx.op.tertiary.f32(i32 46, float %34, float %379, float %389)  ; FMad(a,b,c)
  %391 = call float @dx.op.tertiary.f32(i32 46, float %39, float %380, float %390)  ; FMad(a,b,c)
  %392 = fadd fast float %391, %44
  %393 = fmul fast float %303, %59
  %394 = fmul fast float %307, %59
  %395 = fmul fast float %311, %59
  %396 = fsub fast float %56, %393
  %397 = fsub fast float %57, %394
  %398 = fsub fast float %58, %395
  %399 = call float @dx.op.dot3.f32(i32 55, float %396, float %397, float %398, float %396, float %397, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = call float @dx.op.unary.f32(i32 25, float %399)  ; Rsqrt(value)
  %401 = fmul fast float %400, %396
  %402 = fmul fast float %400, %397
  %403 = fmul fast float %400, %398
  %404 = call float @dx.op.dot3.f32(i32 55, float %371, float %374, float %377, float %401, float %402, float %403)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = shl nuw nsw i32 %120, 3
  %406 = lshr i32 %120, 7
  %407 = add i32 %131, %406
  %408 = shl i32 %407, 2
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = shl i32 %410, 10
  %412 = and i32 %405, 1016
  %413 = or i32 %411, %412
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = extractvalue %dx.types.ResRet.i32 %414, 1
  %417 = and i32 %415, 2097151
  %418 = uitofp i32 %417 to float
  %419 = lshr i32 %415, 21
  %420 = shl i32 %416, 11
  %421 = and i32 %420, 2095104
  %422 = or i32 %421, %419
  %423 = uitofp i32 %422 to float
  %424 = lshr i32 %416, 10
  %425 = and i32 %424, 2097151
  %426 = uitofp i32 %425 to float
  %427 = fmul float %128, %418
  %428 = fmul float %128, %423
  %429 = fmul float %128, %426
  %430 = fadd float %123, %427
  %431 = fadd float %124, %428
  %432 = fadd float %125, %429
  %433 = fmul fast float %430, %61
  %434 = call float @dx.op.tertiary.f32(i32 46, float %65, float %431, float %433)  ; FMad(a,b,c)
  %435 = call float @dx.op.tertiary.f32(i32 46, float %69, float %432, float %434)  ; FMad(a,b,c)
  %436 = fadd fast float %435, %73
  %437 = fmul fast float %430, %62
  %438 = call float @dx.op.tertiary.f32(i32 46, float %66, float %431, float %437)  ; FMad(a,b,c)
  %439 = call float @dx.op.tertiary.f32(i32 46, float %70, float %432, float %438)  ; FMad(a,b,c)
  %440 = fadd fast float %439, %74
  %441 = fmul fast float %430, %63
  %442 = call float @dx.op.tertiary.f32(i32 46, float %67, float %431, float %441)  ; FMad(a,b,c)
  %443 = call float @dx.op.tertiary.f32(i32 46, float %71, float %432, float %442)  ; FMad(a,b,c)
  %444 = fadd fast float %443, %75
  %445 = shl nuw nsw i32 %120, 2
  %446 = lshr i32 %120, 8
  %447 = add i32 %134, %446
  %448 = shl i32 %447, 2
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = shl i32 %450, 10
  %452 = and i32 %445, 1020
  %453 = or i32 %451, %452
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 30
  %457 = and i32 %455, 1023
  %458 = uitofp i32 %457 to float
  %459 = lshr i32 %455, 10
  %460 = and i32 %459, 1023
  %461 = uitofp i32 %460 to float
  %462 = lshr i32 %455, 20
  %463 = and i32 %462, 511
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %458, 0x3F56A64800000000
  %466 = fadd fast float %465, 0xBFE6A09E60000000
  %467 = fmul fast float %461, 0x3F56A64800000000
  %468 = fadd fast float %467, 0xBFE6A09E60000000
  %469 = fmul fast float %464, 0x3F66ABF460000000
  %470 = fadd fast float %469, 0xBFE6A09E60000000
  %471 = call float @dx.op.dot3.f32(i32 55, float %466, float %468, float %470, float %466, float %468, float %470)  ; Dot3(ax,ay,az,bx,by,bz)
  %472 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %473 = fsub fast float 1.000000e+00, %472
  %474 = call float @dx.op.unary.f32(i32 24, float %473)  ; Sqrt(value)
  %475 = icmp eq i32 %456, 0
  br i1 %475, label %482, label %476, !dx.controlflow.hints !24

; <label>:476                                     ; preds = %349
  %477 = icmp eq i32 %456, 1
  br i1 %477, label %482, label %478, !dx.controlflow.hints !25

; <label>:478                                     ; preds = %476
  %479 = icmp eq i32 %456, 2
  %480 = select i1 %479, float %474, float %470
  %481 = select i1 %479, float %470, float %474
  br label %482

; <label>:482                                     ; preds = %478, %476, %349
  %483 = phi float [ %466, %476 ], [ %474, %349 ], [ %466, %478 ]
  %484 = phi float [ %474, %476 ], [ %466, %349 ], [ %468, %478 ]
  %485 = phi float [ %468, %476 ], [ %468, %349 ], [ %480, %478 ]
  %486 = phi float [ %470, %476 ], [ %470, %349 ], [ %481, %478 ]
  %487 = fmul fast float %485, %483
  %488 = fmul fast float %486, %484
  %489 = fadd fast float %488, %487
  %490 = fmul fast float %489, 2.000000e+00
  %491 = fmul fast float %484, 2.000000e+00
  %492 = fmul fast float %491, %485
  %493 = fmul fast float %483, 2.000000e+00
  %494 = fmul fast float %493, %486
  %495 = fsub fast float %492, %494
  %496 = fmul fast float %483, %483
  %497 = fmul fast float %496, 2.000000e+00
  %498 = fsub fast float 1.000000e+00, %497
  %499 = fmul fast float %484, %484
  %500 = fmul fast float %499, 2.000000e+00
  %501 = fsub fast float %498, %500
  %502 = fmul fast float %490, %61
  %503 = call float @dx.op.tertiary.f32(i32 46, float %65, float %495, float %502)  ; FMad(a,b,c)
  %504 = call float @dx.op.tertiary.f32(i32 46, float %69, float %501, float %503)  ; FMad(a,b,c)
  %505 = fmul fast float %490, %62
  %506 = call float @dx.op.tertiary.f32(i32 46, float %66, float %495, float %505)  ; FMad(a,b,c)
  %507 = call float @dx.op.tertiary.f32(i32 46, float %70, float %501, float %506)  ; FMad(a,b,c)
  %508 = fmul fast float %490, %63
  %509 = call float @dx.op.tertiary.f32(i32 46, float %67, float %495, float %508)  ; FMad(a,b,c)
  %510 = call float @dx.op.tertiary.f32(i32 46, float %71, float %501, float %509)  ; FMad(a,b,c)
  %511 = fsub fast float %436, %242
  %512 = fsub fast float %440, %243
  %513 = fsub fast float %444, %244
  %514 = fmul fast float %511, %27
  %515 = call float @dx.op.tertiary.f32(i32 46, float %32, float %512, float %514)  ; FMad(a,b,c)
  %516 = call float @dx.op.tertiary.f32(i32 46, float %37, float %513, float %515)  ; FMad(a,b,c)
  %517 = fadd fast float %516, %42
  %518 = fmul fast float %511, %28
  %519 = call float @dx.op.tertiary.f32(i32 46, float %33, float %512, float %518)  ; FMad(a,b,c)
  %520 = call float @dx.op.tertiary.f32(i32 46, float %38, float %513, float %519)  ; FMad(a,b,c)
  %521 = fadd fast float %520, %43
  %522 = fmul fast float %511, %29
  %523 = call float @dx.op.tertiary.f32(i32 46, float %34, float %512, float %522)  ; FMad(a,b,c)
  %524 = call float @dx.op.tertiary.f32(i32 46, float %39, float %513, float %523)  ; FMad(a,b,c)
  %525 = fadd fast float %524, %44
  %526 = fmul fast float %436, %59
  %527 = fmul fast float %440, %59
  %528 = fmul fast float %444, %59
  %529 = fsub fast float %56, %526
  %530 = fsub fast float %57, %527
  %531 = fsub fast float %58, %528
  %532 = call float @dx.op.dot3.f32(i32 55, float %529, float %530, float %531, float %529, float %530, float %531)  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = call float @dx.op.unary.f32(i32 25, float %532)  ; Rsqrt(value)
  %534 = fmul fast float %533, %529
  %535 = fmul fast float %533, %530
  %536 = fmul fast float %533, %531
  %537 = call float @dx.op.dot3.f32(i32 55, float %504, float %507, float %510, float %534, float %535, float %536)  ; Dot3(ax,ay,az,bx,by,bz)
  br i1 %23, label %551, label %538, !dx.controlflow.hints !26

; <label>:538                                     ; preds = %482
  %539 = shl i32 %14, 4
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 2
  %542 = bitcast i32 %541 to float
  %543 = add i32 %539, 16
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 2
  %546 = bitcast i32 %545 to float
  %547 = call float @dx.op.unary.f32(i32 6, float %542)  ; FAbs(value)
  %548 = call float @dx.op.unary.f32(i32 6, float %546)  ; FAbs(value)
  %549 = fadd fast float %548, %547
  %550 = fsub fast float -0.000000e+00, %549
  br label %910

; <label>:551                                     ; preds = %482
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %620, label %555, !dx.controlflow.hints !27

; <label>:555                                     ; preds = %551
  %556 = shl i32 %14, 4
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = extractvalue %dx.types.ResRet.i32 %557, 1
  %560 = bitcast i32 %558 to float
  %561 = bitcast i32 %559 to float
  %562 = add i32 %553, %177
  %563 = shl i32 %562, 2
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = shl i32 %565, 10
  %567 = or i32 %566, %183
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 65535
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %569, 16
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %576 = call float @dx.op.unary.f32(i32 6, float %575)  ; FAbs(value)
  %577 = fmul fast float %576, %571
  %578 = fcmp fast olt float %575, 0.000000e+00
  %579 = fmul fast float %573, 2.560000e+02
  %580 = fdiv fast float %577, %579
  %581 = select i1 %578, float %580, float %577
  %582 = fmul fast float %581, %561
  %583 = fmul fast float %581, %560
  %584 = add i32 %553, %313
  %585 = shl i32 %584, 2
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = shl i32 %587, 10
  %589 = or i32 %588, %319
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 65535
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = lshr i32 %591, 16
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = fmul fast float %576, %593
  %597 = fmul fast float %595, 2.560000e+02
  %598 = fdiv fast float %596, %597
  %599 = select i1 %578, float %598, float %596
  %600 = fmul fast float %599, %561
  %601 = fmul fast float %599, %560
  %602 = add i32 %553, %446
  %603 = shl i32 %602, 2
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = shl i32 %605, 10
  %607 = or i32 %606, %452
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %609, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = fmul fast float %576, %611
  %615 = fmul fast float %613, 2.560000e+02
  %616 = fdiv fast float %614, %615
  %617 = select i1 %578, float %616, float %614
  %618 = fmul fast float %617, %561
  %619 = fmul fast float %617, %560
  br label %620

; <label>:620                                     ; preds = %555, %551
  %621 = phi float [ 0.000000e+00, %551 ], [ %618, %555 ]
  %622 = phi float [ 0.000000e+00, %551 ], [ %600, %555 ]
  %623 = phi float [ 0.000000e+00, %551 ], [ %582, %555 ]
  %624 = phi float [ 0.000000e+00, %551 ], [ %619, %555 ]
  %625 = phi float [ 0.000000e+00, %551 ], [ %601, %555 ]
  %626 = phi float [ 0.000000e+00, %551 ], [ %583, %555 ]
  %627 = or i32 %121, 76
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %703, label %631, !dx.controlflow.hints !27

; <label>:631                                     ; preds = %620
  %632 = shl i32 %14, 4
  %633 = add i32 %632, 16
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = extractvalue %dx.types.ResRet.i32 %634, 1
  %637 = bitcast i32 %635 to float
  %638 = bitcast i32 %636 to float
  %639 = add i32 %629, %177
  %640 = shl i32 %639, 2
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = shl i32 %642, 10
  %644 = or i32 %643, %183
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = and i32 %646, 65535
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = lshr i32 %646, 16
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 2
  %653 = call float @dx.op.unary.f32(i32 6, float %652)  ; FAbs(value)
  %654 = fmul fast float %653, %648
  %655 = fcmp fast olt float %652, 0.000000e+00
  %656 = fmul fast float %650, 2.560000e+02
  %657 = fdiv fast float %654, %656
  %658 = select i1 %655, float %657, float %654
  %659 = fmul fast float %658, %638
  %660 = fadd fast float %659, %623
  %661 = fmul fast float %658, %637
  %662 = fadd fast float %661, %626
  %663 = add i32 %629, %313
  %664 = shl i32 %663, 2
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = shl i32 %666, 10
  %668 = or i32 %667, %319
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 65535
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = lshr i32 %670, 16
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = fmul fast float %653, %672
  %676 = fmul fast float %674, 2.560000e+02
  %677 = fdiv fast float %675, %676
  %678 = select i1 %655, float %677, float %675
  %679 = fmul fast float %678, %638
  %680 = fadd fast float %679, %622
  %681 = fmul fast float %678, %637
  %682 = fadd fast float %681, %625
  %683 = add i32 %629, %446
  %684 = shl i32 %683, 2
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = shl i32 %686, 10
  %688 = or i32 %687, %452
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 65535
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = lshr i32 %690, 16
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  %695 = fmul fast float %653, %692
  %696 = fmul fast float %694, 2.560000e+02
  %697 = fdiv fast float %695, %696
  %698 = select i1 %655, float %697, float %695
  %699 = fmul fast float %698, %638
  %700 = fadd fast float %699, %621
  %701 = fmul fast float %698, %637
  %702 = fadd fast float %701, %624
  br label %703

; <label>:703                                     ; preds = %631, %620
  %704 = phi float [ %621, %620 ], [ %700, %631 ]
  %705 = phi float [ %622, %620 ], [ %680, %631 ]
  %706 = phi float [ %623, %620 ], [ %660, %631 ]
  %707 = phi float [ %624, %620 ], [ %702, %631 ]
  %708 = phi float [ %625, %620 ], [ %682, %631 ]
  %709 = phi float [ %626, %620 ], [ %662, %631 ]
  %710 = add nsw i32 %135, 8
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %786, label %714, !dx.controlflow.hints !27

; <label>:714                                     ; preds = %703
  %715 = shl i32 %14, 4
  %716 = add i32 %715, 32
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = extractvalue %dx.types.ResRet.i32 %717, 1
  %720 = bitcast i32 %718 to float
  %721 = bitcast i32 %719 to float
  %722 = add i32 %712, %177
  %723 = shl i32 %722, 2
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = shl i32 %725, 10
  %727 = or i32 %726, %183
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %729, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %736 = call float @dx.op.unary.f32(i32 6, float %735)  ; FAbs(value)
  %737 = fmul fast float %736, %731
  %738 = fcmp fast olt float %735, 0.000000e+00
  %739 = fmul fast float %733, 2.560000e+02
  %740 = fdiv fast float %737, %739
  %741 = select i1 %738, float %740, float %737
  %742 = fmul fast float %741, %721
  %743 = fadd fast float %742, %706
  %744 = fmul fast float %741, %720
  %745 = fadd fast float %744, %709
  %746 = add i32 %712, %313
  %747 = shl i32 %746, 2
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = shl i32 %749, 10
  %751 = or i32 %750, %319
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 65535
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = lshr i32 %753, 16
  %757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %756)  ; LegacyF16ToF32(value)
  %758 = fmul fast float %736, %755
  %759 = fmul fast float %757, 2.560000e+02
  %760 = fdiv fast float %758, %759
  %761 = select i1 %738, float %760, float %758
  %762 = fmul fast float %761, %721
  %763 = fadd fast float %762, %705
  %764 = fmul fast float %761, %720
  %765 = fadd fast float %764, %708
  %766 = add i32 %712, %446
  %767 = shl i32 %766, 2
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = shl i32 %769, 10
  %771 = or i32 %770, %452
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 65535
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = lshr i32 %773, 16
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = fmul fast float %736, %775
  %779 = fmul fast float %777, 2.560000e+02
  %780 = fdiv fast float %778, %779
  %781 = select i1 %738, float %780, float %778
  %782 = fmul fast float %781, %721
  %783 = fadd fast float %782, %704
  %784 = fmul fast float %781, %720
  %785 = fadd fast float %784, %707
  br label %786

; <label>:786                                     ; preds = %714, %703
  %787 = phi float [ %704, %703 ], [ %783, %714 ]
  %788 = phi float [ %705, %703 ], [ %763, %714 ]
  %789 = phi float [ %706, %703 ], [ %743, %714 ]
  %790 = phi float [ %707, %703 ], [ %785, %714 ]
  %791 = phi float [ %708, %703 ], [ %765, %714 ]
  %792 = phi float [ %709, %703 ], [ %745, %714 ]
  %793 = add i32 %135, 12
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %869, label %797, !dx.controlflow.hints !27

; <label>:797                                     ; preds = %786
  %798 = shl i32 %14, 4
  %799 = add i32 %798, 48
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = extractvalue %dx.types.ResRet.i32 %800, 1
  %803 = bitcast i32 %801 to float
  %804 = bitcast i32 %802 to float
  %805 = add i32 %795, %177
  %806 = shl i32 %805, 2
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = shl i32 %808, 10
  %810 = or i32 %809, %183
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = lshr i32 %812, 16
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %819 = call float @dx.op.unary.f32(i32 6, float %818)  ; FAbs(value)
  %820 = fmul fast float %819, %814
  %821 = fcmp fast olt float %818, 0.000000e+00
  %822 = fmul fast float %816, 2.560000e+02
  %823 = fdiv fast float %820, %822
  %824 = select i1 %821, float %823, float %820
  %825 = fmul fast float %824, %804
  %826 = fadd fast float %825, %789
  %827 = fmul fast float %824, %803
  %828 = fadd fast float %827, %792
  %829 = add i32 %795, %313
  %830 = shl i32 %829, 2
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = shl i32 %832, 10
  %834 = or i32 %833, %319
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 65535
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %836, 16
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = fmul fast float %819, %838
  %842 = fmul fast float %840, 2.560000e+02
  %843 = fdiv fast float %841, %842
  %844 = select i1 %821, float %843, float %841
  %845 = fmul fast float %844, %804
  %846 = fadd fast float %845, %788
  %847 = fmul fast float %844, %803
  %848 = fadd fast float %847, %791
  %849 = add i32 %795, %446
  %850 = shl i32 %849, 2
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = shl i32 %852, 10
  %854 = or i32 %853, %452
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 65535
  %858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %857)  ; LegacyF16ToF32(value)
  %859 = lshr i32 %856, 16
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = fmul fast float %819, %858
  %862 = fmul fast float %860, 2.560000e+02
  %863 = fdiv fast float %861, %862
  %864 = select i1 %821, float %863, float %861
  %865 = fmul fast float %864, %804
  %866 = fadd fast float %865, %787
  %867 = fmul fast float %864, %803
  %868 = fadd fast float %867, %790
  br label %869

; <label>:869                                     ; preds = %797, %786
  %870 = phi float [ %787, %786 ], [ %866, %797 ]
  %871 = phi float [ %788, %786 ], [ %846, %797 ]
  %872 = phi float [ %789, %786 ], [ %826, %797 ]
  %873 = phi float [ %790, %786 ], [ %868, %797 ]
  %874 = phi float [ %791, %786 ], [ %848, %797 ]
  %875 = phi float [ %792, %786 ], [ %828, %797 ]
  %876 = icmp eq i32 %21, 0
  br i1 %876, label %883, label %877, !dx.controlflow.hints !28

; <label>:877                                     ; preds = %869
  %878 = call float @dx.op.unary.f32(i32 6, float %271)  ; FAbs(value)
  %879 = fmul fast float %878, 5.000000e-01
  %880 = fadd fast float %879, 2.500000e-01
  %881 = fmul fast float %880, %875
  %882 = fsub fast float %872, %881
  br label %883

; <label>:883                                     ; preds = %877, %869
  %884 = phi float [ %872, %869 ], [ %882, %877 ]
  %885 = fadd fast float %884, %875
  %886 = call float @dx.op.binary.f32(i32 36, float %884, float %885)  ; FMin(a,b)
  %887 = call float @dx.op.binary.f32(i32 35, float %884, float %885)  ; FMax(a,b)
  br i1 %876, label %894, label %888, !dx.controlflow.hints !28

; <label>:888                                     ; preds = %883
  %889 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  %890 = fmul fast float %889, 5.000000e-01
  %891 = fadd fast float %890, 2.500000e-01
  %892 = fmul fast float %891, %874
  %893 = fsub fast float %871, %892
  br label %894

; <label>:894                                     ; preds = %888, %883
  %895 = phi float [ %871, %883 ], [ %893, %888 ]
  %896 = fadd fast float %895, %874
  %897 = call float @dx.op.binary.f32(i32 36, float %895, float %896)  ; FMin(a,b)
  %898 = call float @dx.op.binary.f32(i32 35, float %895, float %896)  ; FMax(a,b)
  br i1 %876, label %905, label %899, !dx.controlflow.hints !28

; <label>:899                                     ; preds = %894
  %900 = call float @dx.op.unary.f32(i32 6, float %537)  ; FAbs(value)
  %901 = fmul fast float %900, 5.000000e-01
  %902 = fadd fast float %901, 2.500000e-01
  %903 = fmul fast float %902, %873
  %904 = fsub fast float %870, %903
  br label %905

; <label>:905                                     ; preds = %899, %894
  %906 = phi float [ %870, %894 ], [ %904, %899 ]
  %907 = fadd fast float %906, %873
  %908 = call float @dx.op.binary.f32(i32 36, float %906, float %907)  ; FMin(a,b)
  %909 = call float @dx.op.binary.f32(i32 35, float %906, float %907)  ; FMax(a,b)
  br label %910

; <label>:910                                     ; preds = %905, %538
  %911 = phi float [ %908, %905 ], [ %550, %538 ]
  %912 = phi float [ %897, %905 ], [ %550, %538 ]
  %913 = phi float [ %886, %905 ], [ %550, %538 ]
  %914 = phi float [ %909, %905 ], [ %549, %538 ]
  %915 = phi float [ %898, %905 ], [ %549, %538 ]
  %916 = phi float [ %887, %905 ], [ %549, %538 ]
  %917 = icmp eq i32 %21, 0
  br i1 %917, label %918, label %940, !dx.controlflow.hints !29

; <label>:918                                     ; preds = %910
  %919 = fsub fast float %166, %435
  %920 = fsub fast float %170, %439
  %921 = fsub fast float %174, %443
  %922 = fsub fast float %302, %166
  %923 = fsub fast float %306, %170
  %924 = fsub fast float %310, %174
  %925 = fmul fast float %921, %923
  %926 = fmul fast float %920, %924
  %927 = fsub fast float %925, %926
  %928 = fmul fast float %919, %924
  %929 = fmul fast float %921, %922
  %930 = fsub fast float %928, %929
  %931 = fmul fast float %920, %922
  %932 = fmul fast float %919, %923
  %933 = fsub fast float %931, %932
  %934 = call float @dx.op.dot3.f32(i32 55, float %927, float %930, float %933, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = fcmp fast olt float %934, 0.000000e+00
  br i1 %935, label %936, label %940, !dx.controlflow.hints !30

; <label>:936                                     ; preds = %918
  %937 = call float @dx.op.binary.f32(i32 35, float %404, float %537)  ; FMax(a,b)
  %938 = call float @dx.op.binary.f32(i32 35, float %271, float %937)  ; FMax(a,b)
  %939 = fcmp fast olt float %938, -2.500000e-01
  br i1 %939, label %1265, label %940, !dx.controlflow.hints !31

; <label>:940                                     ; preds = %936, %918, %910
  %941 = call float @dx.op.binary.f32(i32 36, float %912, float %911)  ; FMin(a,b)
  %942 = call float @dx.op.binary.f32(i32 36, float %913, float %941)  ; FMin(a,b)
  %943 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %942)  ; FMin(a,b)
  %944 = call float @dx.op.binary.f32(i32 35, float %915, float %914)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 35, float %916, float %944)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %945)  ; FMax(a,b)
  %947 = fmul fast float %235, %27
  %948 = call float @dx.op.tertiary.f32(i32 46, float %32, float %238, float %947)  ; FMad(a,b,c)
  %949 = call float @dx.op.tertiary.f32(i32 46, float %37, float %241, float %948)  ; FMad(a,b,c)
  %950 = fmul fast float %235, %28
  %951 = call float @dx.op.tertiary.f32(i32 46, float %33, float %238, float %950)  ; FMad(a,b,c)
  %952 = call float @dx.op.tertiary.f32(i32 46, float %38, float %241, float %951)  ; FMad(a,b,c)
  %953 = fmul fast float %235, %29
  %954 = call float @dx.op.tertiary.f32(i32 46, float %34, float %238, float %953)  ; FMad(a,b,c)
  %955 = call float @dx.op.tertiary.f32(i32 46, float %39, float %241, float %954)  ; FMad(a,b,c)
  %956 = fmul fast float %371, %27
  %957 = call float @dx.op.tertiary.f32(i32 46, float %32, float %374, float %956)  ; FMad(a,b,c)
  %958 = call float @dx.op.tertiary.f32(i32 46, float %37, float %377, float %957)  ; FMad(a,b,c)
  %959 = fmul fast float %371, %28
  %960 = call float @dx.op.tertiary.f32(i32 46, float %33, float %374, float %959)  ; FMad(a,b,c)
  %961 = call float @dx.op.tertiary.f32(i32 46, float %38, float %377, float %960)  ; FMad(a,b,c)
  %962 = fmul fast float %371, %29
  %963 = call float @dx.op.tertiary.f32(i32 46, float %34, float %374, float %962)  ; FMad(a,b,c)
  %964 = call float @dx.op.tertiary.f32(i32 46, float %39, float %377, float %963)  ; FMad(a,b,c)
  %965 = fmul fast float %504, %27
  %966 = call float @dx.op.tertiary.f32(i32 46, float %32, float %507, float %965)  ; FMad(a,b,c)
  %967 = call float @dx.op.tertiary.f32(i32 46, float %37, float %510, float %966)  ; FMad(a,b,c)
  %968 = fmul fast float %504, %28
  %969 = call float @dx.op.tertiary.f32(i32 46, float %33, float %507, float %968)  ; FMad(a,b,c)
  %970 = call float @dx.op.tertiary.f32(i32 46, float %38, float %510, float %969)  ; FMad(a,b,c)
  %971 = fmul fast float %504, %29
  %972 = call float @dx.op.tertiary.f32(i32 46, float %34, float %507, float %971)  ; FMad(a,b,c)
  %973 = call float @dx.op.tertiary.f32(i32 46, float %39, float %510, float %972)  ; FMad(a,b,c)
  %974 = call float @dx.op.binary.f32(i32 35, float %958, float %967)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 35, float %949, float %974)  ; FMax(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %961, float %970)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 35, float %952, float %976)  ; FMax(a,b)
  %978 = call float @dx.op.binary.f32(i32 35, float %964, float %973)  ; FMax(a,b)
  %979 = call float @dx.op.binary.f32(i32 35, float %955, float %978)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 36, float %958, float %967)  ; FMin(a,b)
  %981 = call float @dx.op.binary.f32(i32 36, float %949, float %980)  ; FMin(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %961, float %970)  ; FMin(a,b)
  %983 = call float @dx.op.binary.f32(i32 36, float %952, float %982)  ; FMin(a,b)
  %984 = call float @dx.op.binary.f32(i32 36, float %964, float %973)  ; FMin(a,b)
  %985 = call float @dx.op.binary.f32(i32 36, float %955, float %984)  ; FMin(a,b)
  %986 = fcmp fast oge float %981, 0.000000e+00
  %987 = fcmp fast oge float %983, 0.000000e+00
  %988 = fcmp fast oge float %985, 0.000000e+00
  %989 = fsub fast float -0.000000e+00, %943
  %990 = select i1 %986, float 0.000000e+00, float %989
  %991 = select i1 %987, float 0.000000e+00, float %989
  %992 = select i1 %988, float 0.000000e+00, float %989
  %993 = fcmp fast ole float %975, 0.000000e+00
  %994 = fcmp fast ole float %977, 0.000000e+00
  %995 = fcmp fast ole float %979, 0.000000e+00
  %996 = select i1 %993, float 0.000000e+00, float %946
  %997 = select i1 %994, float 0.000000e+00, float %946
  %998 = select i1 %995, float 0.000000e+00, float %946
  %999 = call float @dx.op.binary.f32(i32 35, float %996, float %990)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 35, float %997, float %991)  ; FMax(a,b)
  %1001 = call float @dx.op.binary.f32(i32 35, float %998, float %992)  ; FMax(a,b)
  %1002 = select i1 %993, float 0.000000e+00, float %943
  %1003 = select i1 %994, float 0.000000e+00, float %943
  %1004 = fsub fast float -0.000000e+00, %946
  %1005 = select i1 %986, float 0.000000e+00, float %1004
  %1006 = select i1 %987, float 0.000000e+00, float %1004
  %1007 = call float @dx.op.binary.f32(i32 36, float %1005, float %1002)  ; FMin(a,b)
  %1008 = call float @dx.op.binary.f32(i32 36, float %1006, float %1003)  ; FMin(a,b)
  %1009 = fmul fast float %999, %47
  %1010 = fmul fast float %1000, %50
  %1011 = fmul fast float %1001, %53
  %1012 = fmul fast float %1007, %47
  %1013 = fmul fast float %1008, %50
  %1014 = fadd fast float %1012, %251
  %1015 = fadd fast float %1013, %255
  %1016 = fadd fast float %1009, %251
  %1017 = fadd fast float %1010, %255
  %1018 = fadd fast float %1011, %259
  %1019 = fadd fast float %1012, %384
  %1020 = fadd fast float %1013, %388
  %1021 = fadd fast float %1009, %384
  %1022 = fadd fast float %1010, %388
  %1023 = fadd fast float %1011, %392
  %1024 = fadd fast float %1012, %517
  %1025 = fadd fast float %1013, %521
  %1026 = fadd fast float %1009, %517
  %1027 = fadd fast float %1010, %521
  %1028 = fadd fast float %1011, %525
  %1029 = fcmp fast ole float %1018, 0.000000e+00
  %1030 = fcmp fast ole float %1023, 0.000000e+00
  %1031 = and i1 %1029, %1030
  %1032 = fcmp fast ole float %1028, 0.000000e+00
  %1033 = and i1 %1032, %1031
  %1034 = fcmp fast ogt float %1014, %1018
  %1035 = fcmp fast ogt float %1019, %1023
  %1036 = and i1 %1034, %1035
  %1037 = fcmp fast ogt float %1024, %1028
  %1038 = and i1 %1037, %1036
  %1039 = or i1 %1033, %1038
  %1040 = fcmp fast ogt float %1015, %1018
  %1041 = fcmp fast ogt float %1020, %1023
  %1042 = and i1 %1040, %1041
  %1043 = fcmp fast ogt float %1025, %1028
  %1044 = and i1 %1043, %1042
  %1045 = or i1 %1039, %1044
  %1046 = fsub fast float -0.000000e+00, %1018
  %1047 = fcmp fast olt float %1016, %1046
  %1048 = fsub fast float -0.000000e+00, %1023
  %1049 = fcmp fast olt float %1021, %1048
  %1050 = and i1 %1047, %1049
  %1051 = fsub fast float -0.000000e+00, %1028
  %1052 = fcmp fast olt float %1026, %1051
  %1053 = and i1 %1052, %1050
  %1054 = or i1 %1053, %1045
  %1055 = fcmp fast olt float %1017, %1046
  %1056 = fcmp fast olt float %1022, %1048
  %1057 = and i1 %1055, %1056
  %1058 = fcmp fast olt float %1027, %1051
  %1059 = and i1 %1058, %1057
  %1060 = or i1 %1059, %1054
  %1061 = fadd fast float %1015, %1014
  %1062 = fmul fast float %1018, 2.000000e+00
  %1063 = fcmp fast ogt float %1061, %1062
  %1064 = fadd fast float %1020, %1019
  %1065 = fmul fast float %1023, 2.000000e+00
  %1066 = fcmp fast ogt float %1064, %1065
  %1067 = and i1 %1063, %1066
  %1068 = fadd fast float %1025, %1024
  %1069 = fmul fast float %1028, 2.000000e+00
  %1070 = fcmp fast ogt float %1068, %1069
  %1071 = and i1 %1070, %1067
  %1072 = or i1 %1071, %1060
  %1073 = fadd fast float %1017, %1016
  %1074 = fmul fast float %1018, -2.000000e+00
  %1075 = fcmp fast olt float %1073, %1074
  %1076 = fadd fast float %1022, %1021
  %1077 = fmul fast float %1023, -2.000000e+00
  %1078 = fcmp fast olt float %1076, %1077
  %1079 = and i1 %1075, %1078
  %1080 = fadd fast float %1027, %1026
  %1081 = fmul fast float %1028, -2.000000e+00
  %1082 = fcmp fast olt float %1080, %1081
  %1083 = and i1 %1082, %1079
  %1084 = or i1 %1083, %1072
  %1085 = fsub fast float %1014, %1017
  %1086 = fcmp fast ogt float %1085, %1062
  %1087 = fsub fast float %1019, %1022
  %1088 = fcmp fast ogt float %1087, %1065
  %1089 = and i1 %1086, %1088
  %1090 = fsub fast float %1024, %1027
  %1091 = fcmp fast ogt float %1090, %1069
  %1092 = and i1 %1091, %1089
  %1093 = or i1 %1092, %1084
  %1094 = fsub fast float %1016, %1015
  %1095 = fcmp fast olt float %1094, %1074
  %1096 = fsub fast float %1021, %1020
  %1097 = fcmp fast olt float %1096, %1077
  %1098 = and i1 %1095, %1097
  %1099 = fsub fast float %1026, %1025
  %1100 = fcmp fast olt float %1099, %1081
  %1101 = and i1 %1100, %1098
  %1102 = or i1 %1101, %1093
  br i1 %1102, label %1265, label %1103, !dx.controlflow.hints !32

; <label>:1103                                    ; preds = %940
  %1104 = icmp ne i32 %21, 0
  %1105 = fsub fast float %167, %56
  %1106 = fsub fast float %171, %57
  %1107 = fsub fast float %175, %58
  %1108 = fmul fast float %1105, %1105
  %1109 = fmul fast float %1106, %1106
  %1110 = fadd fast float %1109, %1108
  %1111 = fmul fast float %1107, %1107
  %1112 = fadd fast float %1110, %1111
  %1113 = call float @dx.op.unary.f32(i32 24, float %1112)  ; Sqrt(value)
  %1114 = fsub fast float %303, %56
  %1115 = fsub fast float %307, %57
  %1116 = fsub fast float %311, %58
  %1117 = fmul fast float %1114, %1114
  %1118 = fmul fast float %1115, %1115
  %1119 = fadd fast float %1118, %1117
  %1120 = fmul fast float %1116, %1116
  %1121 = fadd fast float %1119, %1120
  %1122 = call float @dx.op.unary.f32(i32 24, float %1121)  ; Sqrt(value)
  %1123 = fsub fast float %436, %56
  %1124 = fsub fast float %440, %57
  %1125 = fsub fast float %444, %58
  %1126 = fmul fast float %1123, %1123
  %1127 = fmul fast float %1124, %1124
  %1128 = fadd fast float %1127, %1126
  %1129 = fmul fast float %1125, %1125
  %1130 = fadd fast float %1128, %1129
  %1131 = call float @dx.op.unary.f32(i32 24, float %1130)  ; Sqrt(value)
  %1132 = fsub fast float %302, %166
  %1133 = fsub fast float %306, %170
  %1134 = fsub fast float %310, %174
  %1135 = fmul fast float %1132, %1132
  %1136 = fmul fast float %1133, %1133
  %1137 = fadd fast float %1136, %1135
  %1138 = fmul fast float %1134, %1134
  %1139 = fadd fast float %1137, %1138
  %1140 = call float @dx.op.unary.f32(i32 24, float %1139)  ; Sqrt(value)
  %1141 = call float @dx.op.binary.f32(i32 36, float %259, float %392)  ; FMin(a,b)
  %1142 = call float @dx.op.binary.f32(i32 35, float %259, float %392)  ; FMax(a,b)
  %1143 = fmul fast float %1142, 5.000000e-01
  %1144 = call float @dx.op.binary.f32(i32 35, float %1141, float %1143)  ; FMax(a,b)
  %1145 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1144)  ; FMax(a,b)
  %1146 = fdiv fast float %50, %1145
  %1147 = fmul fast float %1146, %1140
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = fmul fast float %1147, %1149
  br i1 %1104, label %1161, label %1151, !dx.controlflow.hints !33

; <label>:1151                                    ; preds = %1103
  %1152 = call float @dx.op.binary.f32(i32 35, float %1113, float %1122)  ; FMax(a,b)
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 145)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1155 = fsub fast float %1152, %1154
  %1156 = extractvalue %dx.types.CBufRet.f32 %1153, 2
  %1157 = fmul fast float %1155, %1156
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1159 = fsub fast float 1.000000e+00, %1158
  %1160 = fmul fast float %1159, %1150
  br label %1161

; <label>:1161                                    ; preds = %1151, %1103
  %1162 = phi float [ %1160, %1151 ], [ %1150, %1103 ]
  %1163 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1162)  ; FMax(a,b)
  %1164 = fsub fast float %435, %302
  %1165 = fsub fast float %439, %306
  %1166 = fsub fast float %443, %310
  %1167 = fmul fast float %1164, %1164
  %1168 = fmul fast float %1165, %1165
  %1169 = fadd fast float %1168, %1167
  %1170 = fmul fast float %1166, %1166
  %1171 = fadd fast float %1169, %1170
  %1172 = call float @dx.op.unary.f32(i32 24, float %1171)  ; Sqrt(value)
  %1173 = call float @dx.op.binary.f32(i32 36, float %392, float %525)  ; FMin(a,b)
  %1174 = call float @dx.op.binary.f32(i32 35, float %392, float %525)  ; FMax(a,b)
  %1175 = fmul fast float %1174, 5.000000e-01
  %1176 = call float @dx.op.binary.f32(i32 35, float %1173, float %1175)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1176)  ; FMax(a,b)
  %1178 = fdiv fast float %50, %1177
  %1179 = fmul fast float %1178, %1172
  %1180 = fmul fast float %1179, %1149
  br i1 %1104, label %1191, label %1181, !dx.controlflow.hints !33

; <label>:1181                                    ; preds = %1161
  %1182 = call float @dx.op.binary.f32(i32 35, float %1122, float %1131)  ; FMax(a,b)
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 145)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1185 = fsub fast float %1182, %1184
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = fmul fast float %1185, %1186
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fsub fast float 1.000000e+00, %1188
  %1190 = fmul fast float %1189, %1180
  br label %1191

; <label>:1191                                    ; preds = %1181, %1161
  %1192 = phi float [ %1190, %1181 ], [ %1180, %1161 ]
  %1193 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1192)  ; FMax(a,b)
  %1194 = fsub fast float %166, %435
  %1195 = fsub fast float %170, %439
  %1196 = fsub fast float %174, %443
  %1197 = fmul fast float %1194, %1194
  %1198 = fmul fast float %1195, %1195
  %1199 = fadd fast float %1198, %1197
  %1200 = fmul fast float %1196, %1196
  %1201 = fadd fast float %1199, %1200
  %1202 = call float @dx.op.unary.f32(i32 24, float %1201)  ; Sqrt(value)
  %1203 = call float @dx.op.binary.f32(i32 36, float %525, float %259)  ; FMin(a,b)
  %1204 = call float @dx.op.binary.f32(i32 35, float %525, float %259)  ; FMax(a,b)
  %1205 = fmul fast float %1204, 5.000000e-01
  %1206 = call float @dx.op.binary.f32(i32 35, float %1203, float %1205)  ; FMax(a,b)
  %1207 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1206)  ; FMax(a,b)
  %1208 = fdiv fast float %50, %1207
  %1209 = fmul fast float %1208, %1202
  %1210 = fmul fast float %1209, %1149
  br i1 %1104, label %1221, label %1211, !dx.controlflow.hints !33

; <label>:1211                                    ; preds = %1191
  %1212 = call float @dx.op.binary.f32(i32 35, float %1131, float %1113)  ; FMax(a,b)
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 145)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1215 = fsub fast float %1212, %1214
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1217 = fmul fast float %1215, %1216
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fsub fast float 1.000000e+00, %1218
  %1220 = fmul fast float %1219, %1210
  br label %1221

; <label>:1221                                    ; preds = %1211, %1191
  %1222 = phi float [ %1220, %1211 ], [ %1210, %1191 ]
  %1223 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %1222)  ; FMax(a,b)
  %1224 = shl nuw nsw i32 %78, 2
  %1225 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %1224, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1226 = mul i32 %1225, 3
  %1227 = add i32 %1226, 3
  %1228 = icmp ugt i32 %1227, %79
  %1229 = add i32 %1225, 1
  %1230 = icmp ugt i32 %1229, %82
  %1231 = or i1 %1230, %1228
  br i1 %1231, label %1265, label %1232, !dx.controlflow.hints !34

; <label>:1232                                    ; preds = %1221
  %1233 = call float @dx.op.binary.f32(i32 36, float 6.400000e+01, float %1193)  ; FMin(a,b)
  %1234 = call float @dx.op.unary.f32(i32 28, float %1233)  ; Round_pi(value)
  %1235 = fptoui float %1234 to i32
  %1236 = add i32 %1235, -1
  %1237 = call float @dx.op.binary.f32(i32 36, float 6.400000e+01, float %1223)  ; FMin(a,b)
  %1238 = call float @dx.op.unary.f32(i32 28, float %1237)  ; Round_pi(value)
  %1239 = fptoui float %1238 to i32
  %1240 = shl i32 %1239, 6
  %1241 = add i32 %1240, -64
  %1242 = or i32 %1241, %1236
  %1243 = call float @dx.op.binary.f32(i32 36, float 6.400000e+01, float %1163)  ; FMin(a,b)
  %1244 = call float @dx.op.unary.f32(i32 28, float %1243)  ; Round_pi(value)
  %1245 = fptoui float %1244 to i32
  %1246 = shl i32 %1245, 12
  %1247 = add i32 %1246, -4096
  %1248 = or i32 %1242, %1247
  %1249 = fadd fast float %1193, %1163
  %1250 = fadd fast float %1249, %1223
  %1251 = fmul fast float %1250, 0x3FD5555560000000
  %1252 = call float @dx.op.binary.f32(i32 36, float 6.400000e+01, float %1251)  ; FMin(a,b)
  %1253 = call float @dx.op.unary.f32(i32 28, float %1252)  ; Round_pi(value)
  %1254 = fptoui float %1253 to i32
  %1255 = shl i32 %1254, 18
  %1256 = add i32 %1255, -262144
  %1257 = or i32 %1248, %1256
  %1258 = mul i32 %16, 20
  %1259 = add i32 %1258, 64
  %1260 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %1259, i32 undef, i32 undef, i32 3)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1261 = add i32 %81, %1226
  %1262 = shl i32 %1261, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1262, i32 undef, i32 %118, i32 %119, i32 %120, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1263 = add i32 %84, %1225
  %1264 = shl i32 %1263, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1264, i32 undef, i32 %1257, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1265

; <label>:1265                                    ; preds = %1232, %1221, %940, %936, %88, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!13 = !{!14}
!14 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16, !17, !18}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %hostlayout.globals* undef, !"", i32 0, i32 0, i32 1, i32 9232, null}
!18 = !{i32 2, %hostlayout.singleSurface* undef, !"", i32 0, i32 2, i32 1, i32 112, null}
!19 = !{void ()* @cs_bsp_tessfactors, !"cs_bsp_tessfactors", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 64, i32 1, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}

