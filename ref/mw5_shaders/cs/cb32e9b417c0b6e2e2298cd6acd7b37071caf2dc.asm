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
; shader hash: 5d7e8eb203d34a12f706de175ee35462
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
;   [96 x i8] (type annotation not present)
;
; }
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
;   [36 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [64 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<sceneInfo>" = type { %struct.sceneInfo }
%struct.sceneInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.RWStructuredBuffer<ExposureInfo>" = type { %struct.ExposureInfo }
%struct.ExposureInfo = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%ConstantBufferFinish = type { i32, float, float, i32, float, float, i32, i32, float, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@"\01?reductionData@@3PAUReductionData@@A.0" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.1" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.2" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.3" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.4" = addrspace(3) global [64 x float] undef, align 4

define void @logaccumfinish() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = shl i32 %9, 6
  %11 = add i32 %10, %8
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %30, !dx.controlflow.hints !19

; <label>:15                                      ; preds = %0
  %16 = mul i32 %11, 20
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %16, i32 undef)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = extractvalue %dx.types.ResRet.i32 %17, 1
  %20 = extractvalue %dx.types.ResRet.i32 %17, 2
  %21 = extractvalue %dx.types.ResRet.i32 %17, 3
  %22 = bitcast i32 %18 to float
  %23 = bitcast i32 %19 to float
  %24 = bitcast i32 %20 to float
  %25 = bitcast i32 %21 to float
  %26 = add i32 %16, 16
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = bitcast i32 %28 to float
  br label %30

; <label>:30                                      ; preds = %15, %0
  %31 = phi float [ %29, %15 ], [ 0.000000e+00, %0 ]
  %32 = phi float [ %25, %15 ], [ 0.000000e+00, %0 ]
  %33 = phi float [ %24, %15 ], [ 0.000000e+00, %0 ]
  %34 = phi float [ %23, %15 ], [ 0.000000e+00, %0 ]
  %35 = phi float [ %22, %15 ], [ 0.000000e+00, %0 ]
  %36 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 %7
  %37 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 %7
  %38 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 %7
  %39 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 %7
  %40 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 %7
  store float %35, float addrspace(3)* %36, align 4
  store float %34, float addrspace(3)* %37, align 4
  store float %33, float addrspace(3)* %38, align 4
  store float %32, float addrspace(3)* %39, align 4
  store float %31, float addrspace(3)* %40, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %41

; <label>:41                                      ; preds = %68, %30
  %42 = phi i32 [ 1, %30 ], [ %43, %68 ]
  %43 = shl i32 %42, 1
  %44 = urem i32 %7, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %68, !dx.controlflow.hints !20

; <label>:46                                      ; preds = %41
  %47 = add i32 %42, %7
  %48 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 %47
  %49 = load float, float addrspace(3)* %48, align 4, !tbaa !21
  %50 = load float, float addrspace(3)* %36, align 4, !tbaa !21
  %51 = fadd fast float %50, %49
  store float %51, float addrspace(3)* %36, align 4, !tbaa !21
  %52 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 %47
  %53 = load float, float addrspace(3)* %52, align 4, !tbaa !21
  %54 = load float, float addrspace(3)* %38, align 4, !tbaa !21
  %55 = fadd fast float %54, %53
  store float %55, float addrspace(3)* %38, align 4, !tbaa !21
  %56 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 %47
  %57 = load float, float addrspace(3)* %56, align 4, !tbaa !21
  %58 = load float, float addrspace(3)* %37, align 4, !tbaa !21
  %59 = fadd fast float %58, %57
  store float %59, float addrspace(3)* %37, align 4, !tbaa !21
  %60 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 %47
  %61 = load float, float addrspace(3)* %60, align 4, !tbaa !21
  %62 = load float, float addrspace(3)* %39, align 4, !tbaa !21
  %63 = fadd fast float %62, %61
  store float %63, float addrspace(3)* %39, align 4, !tbaa !21
  %64 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 %47
  %65 = load float, float addrspace(3)* %64, align 4, !tbaa !21
  %66 = load float, float addrspace(3)* %40, align 4, !tbaa !21
  %67 = fadd fast float %66, %65
  store float %67, float addrspace(3)* %40, align 4, !tbaa !21
  br label %68

; <label>:68                                      ; preds = %46, %41
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %69 = icmp ult i32 %43, 64
  br i1 %69, label %41, label %70

; <label>:70                                      ; preds = %68
  %71 = icmp eq i32 %7, 0
  br i1 %71, label %72, label %387, !dx.controlflow.hints !25

; <label>:72                                      ; preds = %70
  %73 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 0), align 4, !tbaa !21
  %74 = fdiv fast float 1.000000e+00, %73
  %75 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 0), align 4, !tbaa !21
  %76 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 0), align 4, !tbaa !21
  %77 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 0), align 4, !tbaa !21
  %78 = fmul fast float %77, %74
  %79 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 0), align 4, !tbaa !21
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %83 = fmul fast float %74, 0x3FF7154760000000
  %84 = fmul fast float %83, %76
  %85 = call float @dx.op.unary.f32(i32 21, float %84)  ; Exp(value)
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 1
  %88 = fmul fast float %87, %85
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %91 = icmp eq i32 %90, 0
  %92 = call float @dx.op.unary.f32(i32 23, float %88)  ; Log(value)
  br i1 %91, label %93, label %163, !dx.controlflow.hints !26

; <label>:93                                      ; preds = %72
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = fadd fast float %95, 0xC006B851E0000000
  %97 = call float @dx.op.unary.f32(i32 21, float %96)  ; Exp(value)
  %98 = fmul fast float %97, 0x3F50624DE0000000
  %99 = call float @dx.op.unary.f32(i32 23, float %98)  ; Log(value)
  %100 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %101 = fadd fast float %100, 0xC006B851E0000000
  %102 = call float @dx.op.unary.f32(i32 21, float %101)  ; Exp(value)
  %103 = fmul fast float %102, 0x3F50624DE0000000
  %104 = call float @dx.op.unary.f32(i32 23, float %103)  ; Log(value)
  %105 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %106 = fadd fast float %105, 0xC006B851E0000000
  %107 = call float @dx.op.unary.f32(i32 21, float %106)  ; Exp(value)
  %108 = fmul fast float %107, 0x3F50624DE0000000
  %109 = call float @dx.op.unary.f32(i32 23, float %108)  ; Log(value)
  %110 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %111 = call float @dx.op.unary.f32(i32 21, float %110)  ; Exp(value)
  %112 = fmul fast float %111, 0x3FC70A3D80000000
  %113 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %114 = fmul fast float %113, 0x3FDD1745C0000000
  %115 = call float @dx.op.unary.f32(i32 21, float %114)  ; Exp(value)
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = call float @dx.op.unary.f32(i32 21, float %117)  ; Exp(value)
  %119 = fmul fast float %118, 0x3FC70A3D80000000
  %120 = call float @dx.op.unary.f32(i32 23, float %119)  ; Log(value)
  %121 = fmul fast float %120, 0x3FDD1745C0000000
  %122 = call float @dx.op.unary.f32(i32 21, float %121)  ; Exp(value)
  %123 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %124 = call float @dx.op.unary.f32(i32 21, float %123)  ; Exp(value)
  %125 = fmul fast float %124, 0x3FC70A3D80000000
  %126 = call float @dx.op.unary.f32(i32 23, float %125)  ; Log(value)
  %127 = fmul fast float %126, 0x3FDD1745C0000000
  %128 = call float @dx.op.unary.f32(i32 21, float %127)  ; Exp(value)
  %129 = fsub fast float %104, %99
  %130 = fmul fast float %129, 0x3FE62E4300000000
  %131 = fsub fast float %109, %99
  %132 = fmul fast float %131, 0x3FE62E4300000000
  %133 = fdiv fast float %130, %132
  %134 = fsub fast float %122, %115
  %135 = fsub fast float %128, %115
  %136 = fdiv fast float %134, %135
  %137 = call float @dx.op.unary.f32(i32 23, float %136)  ; Log(value)
  %138 = fmul fast float %137, 0x3FE62E4300000000
  %139 = call float @dx.op.unary.f32(i32 23, float %133)  ; Log(value)
  %140 = fmul fast float %139, 0x3FE62E4300000000
  %141 = fdiv fast float %138, %140
  %142 = fsub fast float %92, %99
  %143 = fmul fast float %142, 0x3FE62E4300000000
  %144 = fdiv fast float %143, %132
  %145 = call float @dx.op.binary.f32(i32 35, float %144, float 0.000000e+00)  ; FMax(a,b)
  %146 = call float @dx.op.unary.f32(i32 23, float %145)  ; Log(value)
  %147 = fmul fast float %146, %141
  %148 = call float @dx.op.unary.f32(i32 21, float %147)  ; Exp(value)
  %149 = fmul fast float %148, %135
  %150 = fadd fast float %149, %115
  %151 = call float @dx.op.binary.f32(i32 35, float %150, float 0.000000e+00)  ; FMax(a,b)
  %152 = call float @dx.op.unary.f32(i32 23, float %151)  ; Log(value)
  %153 = fmul fast float %152, 0x40019999A0000000
  %154 = call float @dx.op.unary.f32(i32 21, float %153)  ; Exp(value)
  %155 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %156 = call float @dx.op.unary.f32(i32 21, float %155)  ; Exp(value)
  %157 = fmul fast float %156, 0x3FC70A3D80000000
  %158 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %159 = call float @dx.op.unary.f32(i32 21, float %158)  ; Exp(value)
  %160 = fmul fast float %159, 0x3FC70A3D80000000
  %161 = call float @dx.op.binary.f32(i32 35, float %154, float %157)  ; FMax(a,b)
  %162 = call float @dx.op.binary.f32(i32 36, float %161, float %160)  ; FMin(a,b)
  br label %167

; <label>:163                                     ; preds = %72
  %164 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %165 = call float @dx.op.unary.f32(i32 21, float %164)  ; Exp(value)
  %166 = fmul fast float %165, 0x3FC70A3D80000000
  br label %167

; <label>:167                                     ; preds = %163, %93
  %168 = phi float [ %166, %163 ], [ %162, %93 ]
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fadd fast float %170, 0xC006B851E0000000
  %172 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %173 = fmul fast float %172, 0x3F50624DE0000000
  %174 = call float @dx.op.unary.f32(i32 23, float %173)  ; Log(value)
  %175 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %176 = fadd fast float %175, 0xC006B851E0000000
  %177 = call float @dx.op.unary.f32(i32 21, float %176)  ; Exp(value)
  %178 = fmul fast float %177, 0x3F50624DE0000000
  %179 = call float @dx.op.unary.f32(i32 23, float %178)  ; Log(value)
  %180 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %181 = fadd fast float %180, 0xC006B851E0000000
  %182 = call float @dx.op.unary.f32(i32 21, float %181)  ; Exp(value)
  %183 = fmul fast float %182, 0x3F50624DE0000000
  %184 = call float @dx.op.unary.f32(i32 23, float %183)  ; Log(value)
  %185 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %186 = call float @dx.op.unary.f32(i32 21, float %185)  ; Exp(value)
  %187 = fmul fast float %186, 0x3FC70A3D80000000
  %188 = call float @dx.op.unary.f32(i32 23, float %187)  ; Log(value)
  %189 = fmul fast float %188, 0x3FDD1745C0000000
  %190 = call float @dx.op.unary.f32(i32 21, float %189)  ; Exp(value)
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = call float @dx.op.unary.f32(i32 21, float %192)  ; Exp(value)
  %194 = fmul fast float %193, 0x3FC70A3D80000000
  %195 = call float @dx.op.unary.f32(i32 23, float %194)  ; Log(value)
  %196 = fmul fast float %195, 0x3FDD1745C0000000
  %197 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %198 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %199 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %200 = fmul fast float %199, 0x3FC70A3D80000000
  %201 = call float @dx.op.unary.f32(i32 23, float %200)  ; Log(value)
  %202 = fmul fast float %201, 0x3FDD1745C0000000
  %203 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %204 = fsub fast float %179, %174
  %205 = fmul fast float %204, 0x3FE62E4300000000
  %206 = fsub fast float %184, %174
  %207 = fmul fast float %206, 0x3FE62E4300000000
  %208 = fdiv fast float %205, %207
  %209 = fsub fast float %197, %190
  %210 = fsub fast float %203, %190
  %211 = fdiv fast float %209, %210
  %212 = call float @dx.op.unary.f32(i32 23, float %211)  ; Log(value)
  %213 = fmul fast float %212, 0x3FE62E4300000000
  %214 = call float @dx.op.unary.f32(i32 23, float %208)  ; Log(value)
  %215 = fmul fast float %214, 0x3FE62E4300000000
  %216 = fdiv fast float %213, %215
  %217 = fsub fast float %92, %174
  %218 = fmul fast float %217, 0x3FE62E4300000000
  %219 = fdiv fast float %218, %207
  %220 = call float @dx.op.binary.f32(i32 35, float %219, float 0.000000e+00)  ; FMax(a,b)
  %221 = call float @dx.op.unary.f32(i32 23, float %220)  ; Log(value)
  %222 = fmul fast float %221, %216
  %223 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  %224 = fmul fast float %223, %210
  %225 = fadd fast float %224, %190
  %226 = call float @dx.op.binary.f32(i32 35, float %225, float 0.000000e+00)  ; FMax(a,b)
  %227 = call float @dx.op.unary.f32(i32 23, float %226)  ; Log(value)
  %228 = fmul fast float %227, 0x40019999A0000000
  %229 = call float @dx.op.unary.f32(i32 21, float %228)  ; Exp(value)
  %230 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fmul fast float %231, 0x3FC70A3D80000000
  %233 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %234 = call float @dx.op.unary.f32(i32 21, float %233)  ; Exp(value)
  %235 = fmul fast float %234, 0x3FC70A3D80000000
  %236 = call float @dx.op.binary.f32(i32 35, float %229, float %232)  ; FMax(a,b)
  %237 = call float @dx.op.binary.f32(i32 36, float %236, float %235)  ; FMin(a,b)
  %238 = fdiv fast float %237, %88
  %239 = extractvalue %dx.types.CBufRet.i32 %89, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %246, !dx.controlflow.hints !27

; <label>:241                                     ; preds = %167
  %242 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %243 = fadd fast float %242, 0xC006B851E0000000
  %244 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %245 = fdiv fast float 1.800000e+02, %244
  br label %248

; <label>:246                                     ; preds = %167
  %247 = fdiv fast float %168, %88
  br label %248

; <label>:248                                     ; preds = %246, %241
  %249 = phi float [ %247, %246 ], [ %245, %241 ]
  %250 = call float @dx.op.unary.f32(i32 23, float %249)  ; Log(value)
  %251 = fmul fast float %250, 0x3FE62E4300000000
  %252 = extractvalue %dx.types.CBufRet.i32 %89, 2
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %264, label %254, !dx.controlflow.hints !28

; <label>:254                                     ; preds = %248
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 0, i32 16)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fsub fast float %251, %256
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = fmul fast float %257, %259
  %261 = fadd fast float %260, %256
  %262 = fmul fast float %261, 0x3FF7154760000000
  %263 = call float @dx.op.unary.f32(i32 21, float %262)  ; Exp(value)
  br label %264

; <label>:264                                     ; preds = %254, %248
  %265 = phi float [ %263, %254 ], [ %249, %248 ]
  %266 = phi float [ %261, %254 ], [ %251, %248 ]
  %267 = fdiv fast float 1.800000e+02, %265
  %268 = fadd fast float %267, 0x3F0FFB4800000000
  %269 = call float @dx.op.unary.f32(i32 23, float %268)  ; Log(value)
  %270 = fsub fast float %269, %82
  %271 = call float @dx.op.unary.f32(i32 21, float %270)  ; Exp(value)
  %272 = fdiv fast float 1.800000e+02, %271
  %273 = fadd fast float %81, 0xC006B851E0000000
  %274 = call float @dx.op.unary.f32(i32 21, float %273)  ; Exp(value)
  %275 = fdiv fast float 1.800000e+02, %274
  %276 = call float @dx.op.binary.f32(i32 36, float %272, float %275)  ; FMin(a,b)
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = icmp ne i32 %278, 0
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 4)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = udiv i32 %281, %278
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 5.000000e-01
  %285 = fadd fast float %284, -3.200000e+01
  %286 = call float @dx.op.unary.f32(i32 21, float %285)  ; Exp(value)
  %287 = select i1 %279, float %286, float 1.000000e+00
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 8)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = udiv i32 %289, %278
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 5.000000e-01
  %293 = fadd fast float %292, -3.200000e+01
  %294 = call float @dx.op.unary.f32(i32 21, float %293)  ; Exp(value)
  %295 = select i1 %279, float %294, float 1.000000e+00
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 12)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = icmp ne i32 %297, 0
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 16)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = udiv i32 %300, %297
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 5.000000e-01
  %304 = fadd fast float %303, -3.200000e+01
  %305 = call float @dx.op.unary.f32(i32 21, float %304)  ; Exp(value)
  %306 = select i1 %298, float %305, float 1.000000e+00
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 20)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = udiv i32 %308, %297
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 5.000000e-01
  %312 = fadd fast float %311, -3.200000e+01
  %313 = call float @dx.op.unary.f32(i32 21, float %312)  ; Exp(value)
  %314 = select i1 %298, float %313, float 1.000000e+00
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 24)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = icmp ne i32 %316, 0
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 28)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = udiv i32 %319, %316
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 6.250000e-02
  %323 = fadd fast float %322, -3.200000e+01
  %324 = call float @dx.op.unary.f32(i32 21, float %323)  ; Exp(value)
  %325 = select i1 %317, float %324, float 1.000000e+00
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 32)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = xor i32 %327, -1
  %329 = uitofp i32 %328 to float
  %330 = select i1 %317, float %329, float 0.000000e+00
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 0
  %333 = and i32 %332, 1
  %334 = icmp ne i32 %333, 0
  %335 = select i1 %334, i32 156, i32 0
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 %337, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %338 = fmul fast float %92, 0x3FE62E4300000000
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %338, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 8, float %168, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 12, float %88, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %266, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 20, float %276, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %341 = fmul fast float %340, %276
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 24, float %341, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 28, float %238, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %287, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %295, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %306, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %314, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %325, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %330, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 1
  %345 = fdiv fast float 0x3FF7154760000000, %75
  %346 = fmul fast float %345, %79
  %347 = call float @dx.op.unary.f32(i32 21, float %346)  ; Exp(value)
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %350 = fmul fast float %349, %347
  %351 = call float @dx.op.unary.f32(i32 21, float %344)  ; Exp(value)
  %352 = fmul fast float %351, 0x3FC70A3D80000000
  %353 = fdiv fast float %352, %350
  %354 = fdiv fast float 1.800000e+02, %353
  %355 = fadd fast float %354, 0x3F0FFB4800000000
  %356 = call float @dx.op.unary.f32(i32 23, float %355)  ; Log(value)
  %357 = call float @dx.op.unary.f32(i32 21, float %356)  ; Exp(value)
  %358 = fdiv fast float 1.800000e+02, %357
  %359 = fadd fast float %343, 0xC006B851E0000000
  %360 = call float @dx.op.unary.f32(i32 21, float %359)  ; Exp(value)
  %361 = fdiv fast float 1.800000e+02, %360
  %362 = call float @dx.op.binary.f32(i32 35, float %358, float %361)  ; FMax(a,b)
  %363 = fmul fast float %349, %362
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 36, float %363, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.i32 %364, 2
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %380, label %367, !dx.controlflow.hints !29

; <label>:367                                     ; preds = %264
  %368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 0, i32 32)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = fmul fast float %371, %369
  %373 = call float @dx.op.unary.f32(i32 23, float %372)  ; Log(value)
  %374 = fmul fast float %373, 0x3FE62E4300000000
  %375 = fsub fast float %78, %374
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = fmul fast float %375, %377
  %379 = fadd fast float %378, %374
  br label %380

; <label>:380                                     ; preds = %367, %264
  %381 = phi float [ %379, %367 ], [ %78, %264 ]
  %382 = fmul fast float %381, 0x3FF7154760000000
  %383 = call float @dx.op.unary.f32(i32 21, float %382)  ; Exp(value)
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %386 = fmul fast float %385, %383
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %386, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %387

; <label>:387                                     ; preds = %380, %70
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !13, null}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<sceneInfo>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 36}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!10 = !{!11}
!11 = !{i32 0, %"class.RWStructuredBuffer<ExposureInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!12 = !{i32 1, i32 64}
!13 = !{!14, !15}
!14 = !{i32 0, %ConstantBufferFinish* undef, !"", i32 0, i32 0, i32 1, i32 96, null}
!15 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{void ()* @logaccumfinish, !"logaccumfinish", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 64, i32 1, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}

