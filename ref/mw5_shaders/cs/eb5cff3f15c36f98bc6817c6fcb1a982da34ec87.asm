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
; shader hash: 31bb29a7125d4ad2e4da23afa78b0a36
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
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
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
%FrustumGridClusteringConsts = type { i32, i32, i32, i32 }

@"\01?mergedPrebinMask@@3IA" = external addrspace(3) global i32, align 4

define void @cs_frustum_grid_clustering_prebinned() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 0
  %12 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %15 = urem i32 %8, %14
  %16 = lshr i32 %14, 2
  %17 = udiv i32 %9, %16
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6, i32 %19, i32 %17)  ; UMad(a,b,c)
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %20, i32 0)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = add i32 %11, %7
  %24 = call i32 @dx.op.tertiary.i32(i32 49, i32 %23, i32 %19, i32 %17)  ; UMad(a,b,c)
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %24, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = add i32 %12, %11
  %28 = add i32 %27, %15
  %29 = call i32 @dx.op.tertiary.i32(i32 49, i32 %28, i32 %19, i32 %17)  ; UMad(a,b,c)
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %29, i32 0)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = and i32 %26, %22
  %33 = and i32 %32, %31
  store i32 0, i32 addrspace(3)* @"\01?mergedPrebinMask@@3IA", align 4, !tbaa !17
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %34 = atomicrmw or i32 addrspace(3)* @"\01?mergedPrebinMask@@3IA", i32 %33 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %35 = load i32, i32 addrspace(3)* @"\01?mergedPrebinMask@@3IA", align 4, !tbaa !17
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %41 = icmp ult i32 %6, %37
  %42 = icmp ult i32 %7, %38
  %43 = icmp ult i32 %15, %40
  %44 = and i1 %41, %42
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %680, !dx.controlflow.hints !21

; <label>:46                                      ; preds = %0
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 2
  %49 = icmp eq i32 %48, 0
  %50 = uitofp i32 %6 to float
  %51 = uitofp i32 %7 to float
  %52 = fadd fast float %50, 5.000000e-01
  %53 = fadd fast float %51, 5.000000e-01
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = fmul fast float %55, %52
  %58 = fmul fast float %56, %53
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %57, %60
  %63 = fmul fast float %58, %61
  %64 = shl i32 %15, 2
  %65 = uitofp i32 %64 to float
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = fmul fast float %68, %65
  %70 = call float @dx.op.unary.f32(i32 21, float %69)  ; Exp(value)
  %71 = fmul fast float %70, %67
  %72 = fsub fast float 4.000000e+00, %67
  %73 = fadd fast float %72, %71
  %74 = add i32 %40, -1
  %75 = icmp eq i32 %15, %74
  %76 = and i1 %49, %75
  br i1 %76, label %84, label %77, !dx.controlflow.hints !22

; <label>:77                                      ; preds = %46
  %78 = add i32 %64, 4
  %79 = uitofp i32 %78 to float
  %80 = fmul fast float %68, %79
  %81 = call float @dx.op.unary.f32(i32 21, float %80)  ; Exp(value)
  %82 = fmul fast float %81, %67
  %83 = fadd fast float %72, %82
  br label %84

; <label>:84                                      ; preds = %77, %46
  %85 = phi float [ %83, %77 ], [ 2.560000e+05, %46 ]
  %86 = fmul fast float %60, %55
  %87 = fmul fast float %61, %56
  %88 = fmul fast float %62, 2.000000e+00
  %89 = fmul fast float %63, 2.000000e+00
  %90 = fsub fast float 1.000000e+00, %88
  %91 = fsub fast float 1.000000e+00, %89
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %93, %90
  %97 = fmul fast float %94, %90
  %98 = fmul fast float %95, %90
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %100, %91
  %104 = fmul fast float %101, %91
  %105 = fmul fast float %102, %91
  %106 = fadd fast float %103, %96
  %107 = fadd fast float %104, %97
  %108 = fadd fast float %105, %98
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fadd fast float %106, %110
  %114 = fadd fast float %107, %111
  %115 = fadd fast float %108, %112
  %116 = fmul fast float %113, %73
  %117 = fmul fast float %114, %73
  %118 = fmul fast float %115, %73
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fadd fast float %116, %120
  %124 = fadd fast float %117, %121
  %125 = fadd fast float %118, %122
  %126 = fmul fast float %86, %73
  %127 = fmul fast float %126, %93
  %128 = fsub fast float -0.000000e+00, %127
  %129 = fmul fast float %126, %94
  %130 = fsub fast float -0.000000e+00, %129
  %131 = fmul fast float %126, %95
  %132 = fsub fast float -0.000000e+00, %131
  %133 = fmul fast float %87, %73
  %134 = fmul fast float %133, %100
  %135 = fmul fast float %133, %101
  %136 = fmul fast float %133, %102
  %137 = fmul fast float %113, %85
  %138 = fmul fast float %114, %85
  %139 = fmul fast float %115, %85
  %140 = fadd fast float %137, %120
  %141 = fadd fast float %138, %121
  %142 = fadd fast float %139, %122
  %143 = fmul fast float %86, %85
  %144 = fmul fast float %143, %93
  %145 = fmul fast float %143, %94
  %146 = fmul fast float %143, %95
  %147 = fmul fast float %87, %85
  %148 = fmul fast float %147, %100
  %149 = fmul fast float %147, %101
  %150 = fmul fast float %147, %102
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 2
  %153 = extractvalue %dx.types.CBufRet.i32 %151, 3
  %154 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7, i32 %152, i32 %6)  ; UMad(a,b,c)
  %155 = call i32 @dx.op.tertiary.i32(i32 49, i32 %15, i32 %153, i32 %154)  ; UMad(a,b,c)
  %156 = icmp eq i32 %35, 0
  br i1 %156, label %675, label %157

; <label>:157                                     ; preds = %84
  br label %158

; <label>:158                                     ; preds = %669, %157
  %159 = phi i32 [ %165, %669 ], [ %35, %157 ]
  %160 = phi i32 [ %672, %669 ], [ 0, %157 ]
  %161 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %159)  ; FirstbitLo(value)
  %162 = call i32 @dx.op.tertiary.i32(i32 49, i32 %17, i32 32, i32 %161)  ; UMad(a,b,c)
  %163 = and i32 %161, 31
  %164 = shl i32 1, %163
  %165 = xor i32 %164, %159
  %166 = mul i32 %162, 60
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 1
  %170 = extractvalue %dx.types.ResRet.f32 %167, 2
  %171 = add i32 %166, 12
  %172 = add i32 %166, 48
  %173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = extractvalue %dx.types.ResRet.f32 %177, 1
  %180 = extractvalue %dx.types.ResRet.f32 %177, 2
  %181 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = fmul fast float %182, %174
  %184 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %185 = add i32 %166, 24
  %186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = extractvalue %dx.types.ResRet.f32 %186, 1
  %189 = extractvalue %dx.types.ResRet.f32 %186, 2
  %190 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %191 = fmul fast float %190, %175
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fadd fast float %192, %184
  %194 = add i32 %166, 36
  %195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = extractvalue %dx.types.ResRet.f32 %195, 2
  %199 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = fmul fast float %199, %176
  %201 = call float @dx.op.unary.f32(i32 6, float %200)  ; FAbs(value)
  %202 = fadd fast float %193, %201
  %203 = fsub fast float %181, %202
  %204 = fadd fast float %202, %181
  %205 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %206 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %207 = call float @dx.op.unary.f32(i32 6, float %206)  ; FAbs(value)
  %208 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %210 = fadd fast float %209, %207
  %211 = fsub fast float %205, %210
  %212 = fadd fast float %210, %205
  %213 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %218 = fadd fast float %217, %215
  %219 = fsub fast float %213, %218
  %220 = fadd fast float %218, %213
  %221 = fcmp fast olt float %219, %211
  %222 = select i1 %221, float %219, float %211
  %223 = fcmp fast ogt float %220, %212
  %224 = select i1 %223, float %220, float %212
  %225 = fcmp fast olt float %224, %203
  %226 = fcmp fast olt float %204, %222
  %227 = or i1 %225, %226
  br i1 %227, label %669, label %228, !dx.controlflow.hints !23

; <label>:228                                     ; preds = %158
  %229 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %231 = fmul fast float %230, %174
  %232 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %233 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %234 = fmul fast float %233, %175
  %235 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %236 = fadd fast float %235, %232
  %237 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %238 = fmul fast float %237, %176
  %239 = call float @dx.op.unary.f32(i32 6, float %238)  ; FAbs(value)
  %240 = fadd fast float %236, %239
  %241 = fsub fast float %229, %240
  %242 = fadd fast float %240, %229
  %243 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %244 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %245 = call float @dx.op.unary.f32(i32 6, float %244)  ; FAbs(value)
  %246 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %247 = call float @dx.op.unary.f32(i32 6, float %246)  ; FAbs(value)
  %248 = fadd fast float %247, %245
  %249 = fsub fast float %243, %248
  %250 = fadd fast float %248, %243
  %251 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %252 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %253 = call float @dx.op.unary.f32(i32 6, float %252)  ; FAbs(value)
  %254 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %255 = call float @dx.op.unary.f32(i32 6, float %254)  ; FAbs(value)
  %256 = fadd fast float %255, %253
  %257 = fsub fast float %251, %256
  %258 = fadd fast float %256, %251
  %259 = fcmp fast olt float %257, %249
  %260 = select i1 %259, float %257, float %249
  %261 = fcmp fast ogt float %258, %250
  %262 = select i1 %261, float %258, float %250
  %263 = fcmp fast olt float %262, %241
  %264 = fcmp fast olt float %242, %260
  %265 = or i1 %263, %264
  br i1 %265, label %669, label %266, !dx.controlflow.hints !23

; <label>:266                                     ; preds = %228
  %267 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %268 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %269 = fmul fast float %268, %174
  %270 = call float @dx.op.unary.f32(i32 6, float %269)  ; FAbs(value)
  %271 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %272 = fmul fast float %271, %175
  %273 = call float @dx.op.unary.f32(i32 6, float %272)  ; FAbs(value)
  %274 = fadd fast float %273, %270
  %275 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %276 = fmul fast float %275, %176
  %277 = call float @dx.op.unary.f32(i32 6, float %276)  ; FAbs(value)
  %278 = fadd fast float %274, %277
  %279 = fsub fast float %267, %278
  %280 = fadd fast float %278, %267
  %281 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %282 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %283 = call float @dx.op.unary.f32(i32 6, float %282)  ; FAbs(value)
  %284 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %285 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %286 = fadd fast float %285, %283
  %287 = fsub fast float %281, %286
  %288 = fadd fast float %286, %281
  %289 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %290 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = fadd fast float %293, %291
  %295 = fsub fast float %289, %294
  %296 = fadd fast float %294, %289
  %297 = fcmp fast olt float %295, %287
  %298 = select i1 %297, float %295, float %287
  %299 = fcmp fast ogt float %296, %288
  %300 = select i1 %299, float %296, float %288
  %301 = fcmp fast olt float %300, %279
  %302 = fcmp fast olt float %280, %298
  %303 = or i1 %301, %302
  br i1 %303, label %669, label %304, !dx.controlflow.hints !23

; <label>:304                                     ; preds = %266
  %305 = fcmp fast ole float %203, %222
  %306 = fcmp fast ole float %224, %204
  %307 = and i1 %305, %306
  %308 = zext i1 %307 to i32
  %309 = shl nuw nsw i32 %308, 1
  %310 = fcmp fast ole float %241, %260
  %311 = fcmp fast ole float %262, %242
  %312 = and i1 %310, %311
  %313 = zext i1 %312 to i32
  %314 = or i32 %313, %309
  %315 = shl nuw nsw i32 %314, 1
  %316 = fcmp fast ole float %279, %298
  %317 = fcmp fast ole float %300, %280
  %318 = and i1 %316, %317
  %319 = zext i1 %318 to i32
  %320 = or i32 %319, %315
  %321 = icmp eq i32 %320, 7
  br i1 %321, label %669, label %322, !dx.controlflow.hints !24

; <label>:322                                     ; preds = %304
  %323 = fsub fast float %168, %123
  %324 = fsub fast float %169, %124
  %325 = fsub fast float %170, %125
  %326 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %327 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = fmul fast float %327, %174
  %329 = call float @dx.op.unary.f32(i32 6, float %328)  ; FAbs(value)
  %330 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %331 = fmul fast float %330, %175
  %332 = call float @dx.op.unary.f32(i32 6, float %331)  ; FAbs(value)
  %333 = fadd fast float %332, %329
  %334 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %335 = fmul fast float %334, %176
  %336 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %337 = fadd fast float %333, %336
  %338 = fsub fast float %326, %337
  %339 = fadd fast float %337, %326
  %340 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %341 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = call float @dx.op.unary.f32(i32 6, float %341)  ; FAbs(value)
  %343 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %344 = call float @dx.op.unary.f32(i32 6, float %343)  ; FAbs(value)
  %345 = fadd fast float %344, %342
  %346 = fsub fast float %340, %345
  %347 = fadd fast float %345, %340
  %348 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %349 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = call float @dx.op.unary.f32(i32 6, float %349)  ; FAbs(value)
  %351 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %323, float %324, float %325)  ; Dot3(ax,ay,az,bx,by,bz)
  %352 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %353 = fadd fast float %352, %350
  %354 = fsub fast float %348, %353
  %355 = fadd fast float %353, %348
  %356 = fcmp fast olt float %354, %346
  %357 = select i1 %356, float %354, float %346
  %358 = fcmp fast ogt float %355, %347
  %359 = select i1 %358, float %355, float %347
  %360 = fcmp fast olt float %359, %338
  %361 = fcmp fast olt float %339, %357
  %362 = or i1 %360, %361
  br i1 %362, label %669, label %363, !dx.controlflow.hints !25

; <label>:363                                     ; preds = %322
  %364 = fmul fast float %136, %129
  %365 = fmul fast float %135, %131
  %366 = fsub fast float %364, %365
  %367 = fmul fast float %134, %131
  %368 = fmul fast float %136, %127
  %369 = fsub fast float %367, %368
  %370 = fmul fast float %135, %127
  %371 = fmul fast float %134, %129
  %372 = fsub fast float %370, %371
  %373 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fmul fast float %374, %174
  %376 = call float @dx.op.unary.f32(i32 6, float %375)  ; FAbs(value)
  %377 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %378 = fmul fast float %377, %175
  %379 = call float @dx.op.unary.f32(i32 6, float %378)  ; FAbs(value)
  %380 = fadd fast float %379, %376
  %381 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = fmul fast float %381, %176
  %383 = call float @dx.op.unary.f32(i32 6, float %382)  ; FAbs(value)
  %384 = fadd fast float %380, %383
  %385 = fsub fast float %373, %384
  %386 = fadd fast float %384, %373
  %387 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %389 = call float @dx.op.unary.f32(i32 6, float %388)  ; FAbs(value)
  %390 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 6, float %390)  ; FAbs(value)
  %392 = fadd fast float %391, %389
  %393 = fsub fast float %387, %392
  %394 = fadd fast float %392, %387
  %395 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %396 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = call float @dx.op.unary.f32(i32 6, float %396)  ; FAbs(value)
  %398 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %366, float %369, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %399 = call float @dx.op.unary.f32(i32 6, float %398)  ; FAbs(value)
  %400 = fadd fast float %399, %397
  %401 = fsub fast float %395, %400
  %402 = fadd fast float %400, %395
  %403 = fcmp fast olt float %401, %393
  %404 = select i1 %403, float %401, float %393
  %405 = fcmp fast ogt float %402, %394
  %406 = select i1 %405, float %402, float %394
  %407 = fcmp fast olt float %406, %385
  %408 = fcmp fast olt float %386, %404
  %409 = or i1 %407, %408
  br i1 %409, label %669, label %410, !dx.controlflow.hints !26

; <label>:410                                     ; preds = %363
  %411 = fsub fast float %127, %123
  %412 = fadd fast float %411, %134
  %413 = fsub fast float %412, %144
  %414 = fadd fast float %413, %140
  %415 = fsub fast float %414, %148
  %416 = fsub fast float %129, %124
  %417 = fadd fast float %416, %135
  %418 = fsub fast float %417, %145
  %419 = fadd fast float %418, %141
  %420 = fsub fast float %419, %149
  %421 = fsub fast float %131, %125
  %422 = fadd fast float %421, %136
  %423 = fsub fast float %422, %146
  %424 = fadd fast float %423, %142
  %425 = fsub fast float %424, %150
  %426 = fmul fast float %425, %129
  %427 = fmul fast float %420, %131
  %428 = fsub fast float %426, %427
  %429 = fmul fast float %415, %131
  %430 = fmul fast float %425, %127
  %431 = fsub fast float %429, %430
  %432 = fmul fast float %420, %127
  %433 = fmul fast float %415, %129
  %434 = fsub fast float %432, %433
  %435 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %436 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %437 = fmul fast float %436, %174
  %438 = call float @dx.op.unary.f32(i32 6, float %437)  ; FAbs(value)
  %439 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %440 = fmul fast float %439, %175
  %441 = call float @dx.op.unary.f32(i32 6, float %440)  ; FAbs(value)
  %442 = fadd fast float %441, %438
  %443 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %444 = fmul fast float %443, %176
  %445 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %446 = fadd fast float %442, %445
  %447 = fsub fast float %435, %446
  %448 = fadd fast float %446, %435
  %449 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %452 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %453 = call float @dx.op.unary.f32(i32 6, float %452)  ; FAbs(value)
  %454 = fadd fast float %453, %451
  %455 = fsub fast float %449, %454
  %456 = fadd fast float %454, %449
  %457 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  %460 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %428, float %431, float %434)  ; Dot3(ax,ay,az,bx,by,bz)
  %461 = call float @dx.op.unary.f32(i32 6, float %460)  ; FAbs(value)
  %462 = fadd fast float %461, %459
  %463 = fsub fast float %457, %462
  %464 = fadd fast float %462, %457
  %465 = fcmp fast olt float %463, %455
  %466 = select i1 %465, float %463, float %455
  %467 = fcmp fast ogt float %464, %456
  %468 = select i1 %467, float %464, float %456
  %469 = fcmp fast olt float %468, %447
  %470 = fcmp fast olt float %448, %466
  %471 = or i1 %469, %470
  br i1 %471, label %669, label %472, !dx.controlflow.hints !27

; <label>:472                                     ; preds = %410
  %473 = fmul fast float %425, %135
  %474 = fmul fast float %420, %136
  %475 = fsub fast float %473, %474
  %476 = fmul fast float %415, %136
  %477 = fmul fast float %425, %134
  %478 = fsub fast float %476, %477
  %479 = fmul fast float %420, %134
  %480 = fmul fast float %415, %135
  %481 = fsub fast float %479, %480
  %482 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %483 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %484 = fmul fast float %483, %174
  %485 = call float @dx.op.unary.f32(i32 6, float %484)  ; FAbs(value)
  %486 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %487 = fmul fast float %486, %175
  %488 = call float @dx.op.unary.f32(i32 6, float %487)  ; FAbs(value)
  %489 = fadd fast float %488, %485
  %490 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %491 = fmul fast float %490, %176
  %492 = call float @dx.op.unary.f32(i32 6, float %491)  ; FAbs(value)
  %493 = fadd fast float %489, %492
  %494 = fsub fast float %482, %493
  %495 = fadd fast float %493, %482
  %496 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %497 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %498 = call float @dx.op.unary.f32(i32 6, float %497)  ; FAbs(value)
  %499 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %500 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  %501 = fadd fast float %500, %498
  %502 = fsub fast float %496, %501
  %503 = fadd fast float %501, %496
  %504 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %506 = call float @dx.op.unary.f32(i32 6, float %505)  ; FAbs(value)
  %507 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %475, float %478, float %481)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %509 = fadd fast float %508, %506
  %510 = fsub fast float %504, %509
  %511 = fadd fast float %509, %504
  %512 = fcmp fast olt float %510, %502
  %513 = select i1 %512, float %510, float %502
  %514 = fcmp fast ogt float %511, %503
  %515 = select i1 %514, float %511, float %503
  %516 = fcmp fast olt float %515, %494
  %517 = fcmp fast olt float %495, %513
  %518 = or i1 %516, %517
  br i1 %518, label %669, label %519, !dx.controlflow.hints !28

; <label>:519                                     ; preds = %472
  %520 = fsub fast float %168, %140
  %521 = fsub fast float %169, %141
  %522 = fsub fast float %170, %142
  %523 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %524 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %525 = fmul fast float %524, %174
  %526 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %527 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = fmul fast float %527, %175
  %529 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %530 = fadd fast float %529, %526
  %531 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %532 = fmul fast float %531, %176
  %533 = call float @dx.op.unary.f32(i32 6, float %532)  ; FAbs(value)
  %534 = fadd fast float %530, %533
  %535 = fsub fast float %523, %534
  %536 = fadd fast float %534, %523
  %537 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %538 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = call float @dx.op.unary.f32(i32 6, float %538)  ; FAbs(value)
  %540 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 6, float %540)  ; FAbs(value)
  %542 = fadd fast float %541, %539
  %543 = fsub fast float %537, %542
  %544 = fadd fast float %542, %537
  %545 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %547 = call float @dx.op.unary.f32(i32 6, float %546)  ; FAbs(value)
  %548 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %549 = call float @dx.op.unary.f32(i32 6, float %548)  ; FAbs(value)
  %550 = fadd fast float %549, %547
  %551 = fsub fast float %545, %550
  %552 = fadd fast float %550, %545
  %553 = fcmp fast olt float %551, %543
  %554 = select i1 %553, float %551, float %543
  %555 = fcmp fast ogt float %552, %544
  %556 = select i1 %555, float %552, float %544
  %557 = fcmp fast olt float %556, %535
  %558 = fcmp fast olt float %536, %554
  %559 = or i1 %557, %558
  br i1 %559, label %669, label %560, !dx.controlflow.hints !29

; <label>:560                                     ; preds = %519
  %561 = fsub fast float %128, %123
  %562 = fsub fast float %561, %134
  %563 = fadd fast float %562, %144
  %564 = fadd fast float %563, %140
  %565 = fadd fast float %564, %148
  %566 = fsub fast float %130, %124
  %567 = fsub fast float %566, %135
  %568 = fadd fast float %567, %145
  %569 = fadd fast float %568, %141
  %570 = fadd fast float %569, %149
  %571 = fsub fast float %132, %125
  %572 = fsub fast float %571, %136
  %573 = fadd fast float %572, %146
  %574 = fadd fast float %573, %142
  %575 = fadd fast float %574, %150
  %576 = fmul fast float %575, %129
  %577 = fmul fast float %570, %131
  %578 = fsub fast float %576, %577
  %579 = fmul fast float %565, %131
  %580 = fmul fast float %575, %127
  %581 = fsub fast float %579, %580
  %582 = fmul fast float %570, %127
  %583 = fmul fast float %565, %129
  %584 = fsub fast float %582, %583
  %585 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %586 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = fmul fast float %586, %174
  %588 = call float @dx.op.unary.f32(i32 6, float %587)  ; FAbs(value)
  %589 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = fmul fast float %589, %175
  %591 = call float @dx.op.unary.f32(i32 6, float %590)  ; FAbs(value)
  %592 = fadd fast float %591, %588
  %593 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %594 = fmul fast float %593, %176
  %595 = call float @dx.op.unary.f32(i32 6, float %594)  ; FAbs(value)
  %596 = fadd fast float %592, %595
  %597 = fsub fast float %585, %596
  %598 = fadd fast float %596, %585
  %599 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %600 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = call float @dx.op.unary.f32(i32 6, float %600)  ; FAbs(value)
  %602 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %603 = call float @dx.op.unary.f32(i32 6, float %602)  ; FAbs(value)
  %604 = fadd fast float %603, %601
  %605 = fsub fast float %599, %604
  %606 = fadd fast float %604, %599
  %607 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %608 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %609 = call float @dx.op.unary.f32(i32 6, float %608)  ; FAbs(value)
  %610 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %578, float %581, float %584)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = call float @dx.op.unary.f32(i32 6, float %610)  ; FAbs(value)
  %612 = fadd fast float %611, %609
  %613 = fsub fast float %607, %612
  %614 = fadd fast float %612, %607
  %615 = fcmp fast olt float %613, %605
  %616 = select i1 %615, float %613, float %605
  %617 = fcmp fast ogt float %614, %606
  %618 = select i1 %617, float %614, float %606
  %619 = fcmp fast olt float %618, %597
  %620 = fcmp fast olt float %598, %616
  %621 = or i1 %619, %620
  br i1 %621, label %669, label %622, !dx.controlflow.hints !30

; <label>:622                                     ; preds = %560
  %623 = fmul fast float %575, %135
  %624 = fmul fast float %570, %136
  %625 = fsub fast float %623, %624
  %626 = fmul fast float %565, %136
  %627 = fmul fast float %575, %134
  %628 = fsub fast float %626, %627
  %629 = fmul fast float %570, %134
  %630 = fmul fast float %565, %135
  %631 = fsub fast float %629, %630
  %632 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %634 = fmul fast float %633, %174
  %635 = call float @dx.op.unary.f32(i32 6, float %634)  ; FAbs(value)
  %636 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %637 = fmul fast float %636, %175
  %638 = call float @dx.op.unary.f32(i32 6, float %637)  ; FAbs(value)
  %639 = fadd fast float %638, %635
  %640 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %641 = fmul fast float %640, %176
  %642 = call float @dx.op.unary.f32(i32 6, float %641)  ; FAbs(value)
  %643 = fadd fast float %639, %642
  %644 = fsub fast float %632, %643
  %645 = fadd fast float %643, %632
  %646 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %647 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = call float @dx.op.unary.f32(i32 6, float %647)  ; FAbs(value)
  %649 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %650 = call float @dx.op.unary.f32(i32 6, float %649)  ; FAbs(value)
  %651 = fadd fast float %650, %648
  %652 = fsub fast float %646, %651
  %653 = fadd fast float %651, %646
  %654 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %655 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %656 = call float @dx.op.unary.f32(i32 6, float %655)  ; FAbs(value)
  %657 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %625, float %628, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %658 = call float @dx.op.unary.f32(i32 6, float %657)  ; FAbs(value)
  %659 = fadd fast float %658, %656
  %660 = fsub fast float %654, %659
  %661 = fadd fast float %659, %654
  %662 = fcmp fast olt float %660, %652
  %663 = select i1 %662, float %660, float %652
  %664 = fcmp fast ogt float %661, %653
  %665 = select i1 %664, float %661, float %653
  %666 = fcmp uge float %665, %644
  %667 = fcmp uge float %645, %663
  %668 = and i1 %667, %666
  br label %669

; <label>:669                                     ; preds = %622, %560, %519, %472, %410, %363, %322, %304, %266, %228, %158
  %670 = phi i1 [ true, %304 ], [ false, %322 ], [ false, %363 ], [ false, %410 ], [ false, %472 ], [ false, %519 ], [ false, %560 ], [ %668, %622 ], [ false, %266 ], [ false, %228 ], [ false, %158 ]
  %671 = select i1 %670, i32 %164, i32 0
  %672 = or i32 %160, %671
  %673 = icmp eq i32 %159, %164
  br i1 %673, label %674, label %158

; <label>:674                                     ; preds = %669
  br label %675

; <label>:675                                     ; preds = %674, %84
  %676 = phi i32 [ 0, %84 ], [ %672, %674 ]
  %677 = extractvalue %dx.types.CBufRet.i32 %47, 1
  %678 = call i32 @dx.op.tertiary.i32(i32 49, i32 %155, i32 %677, i32 %17)  ; UMad(a,b,c)
  %679 = shl i32 %678, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %679, i32 undef, i32 %676, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %680

; <label>:680                                     ; preds = %675, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 4}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %FrustumGridClusteringConsts* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!14 = !{void ()* @cs_frustum_grid_clustering_prebinned, !"cs_frustum_grid_clustering_prebinned", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 4, i32 4, i32 4}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

