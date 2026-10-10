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
; shader hash: 2d7c5e34c45f3a79fc888ffa69074b50
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
;   [3376 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb5     1
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV    byte         r/w      U0             u2     1
;                                       UAV    byte         r/w      U1             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_water_visibility_tile_finalize() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = alloca [4 x i32], align 4
  %9 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 358)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.i32 %9, 2
  %11 = extractvalue %dx.types.CBufRet.i32 %9, 1
  %12 = mul i32 %11, %10
  %13 = add i32 %12, 31
  %14 = lshr i32 %13, 5
  %15 = add nuw nsw i32 %14, 255
  %16 = lshr i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %104, label %18

; <label>:18                                      ; preds = %0
  br label %19

; <label>:19                                      ; preds = %98, %18
  %20 = phi i32 [ %89, %98 ], [ -1, %18 ]
  %21 = phi i32 [ %90, %98 ], [ -1, %18 ]
  %22 = phi i32 [ %91, %98 ], [ 0, %18 ]
  %23 = phi i32 [ %92, %98 ], [ 0, %18 ]
  %24 = phi i32 [ %100, %98 ], [ 0, %18 ]
  %25 = phi i32 [ %101, %98 ], [ 0, %18 ]
  %26 = shl i32 %25, 8
  %27 = shl i32 %7, 2
  %28 = add i32 %26, %27
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = icmp ult i32 %28, %14
  br i1 %33, label %34, label %41, !dx.controlflow.hints !16

; <label>:34                                      ; preds = %19
  %35 = shl i32 %28, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %35, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = extractvalue %dx.types.ResRet.i32 %36, 1
  %39 = extractvalue %dx.types.ResRet.i32 %36, 2
  %40 = extractvalue %dx.types.ResRet.i32 %36, 3
  store i32 %37, i32* %29, align 4
  store i32 %38, i32* %30, align 4
  store i32 %39, i32* %31, align 4
  store i32 %40, i32* %32, align 4
  br label %41

; <label>:41                                      ; preds = %34, %19
  %42 = phi i32 [ %40, %34 ], [ 0, %19 ]
  %43 = phi i32 [ %39, %34 ], [ 0, %19 ]
  %44 = phi i32 [ %38, %34 ], [ 0, %19 ]
  %45 = phi i32 [ %37, %34 ], [ 0, %19 ]
  %46 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %45)  ; Countbits(value)
  %47 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %44)  ; Countbits(value)
  %48 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %43)  ; Countbits(value)
  %49 = add i32 %46, %24
  %50 = add i32 %49, %47
  %51 = add i32 %50, %48
  br label %52

; <label>:52                                      ; preds = %95, %41
  %53 = phi i32 [ %45, %41 ], [ %97, %95 ]
  %54 = phi i32 [ %20, %41 ], [ %89, %95 ]
  %55 = phi i32 [ %21, %41 ], [ %90, %95 ]
  %56 = phi i32 [ %22, %41 ], [ %91, %95 ]
  %57 = phi i32 [ %23, %41 ], [ %92, %95 ]
  %58 = phi i32 [ 0, %41 ], [ %93, %95 ]
  %59 = icmp eq i32 %53, 0
  br i1 %59, label %88, label %60, !dx.controlflow.hints !17

; <label>:60                                      ; preds = %52
  %61 = add i32 %58, %28
  %62 = shl i32 %61, 5
  %63 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %53)  ; FirstbitLo(value)
  %64 = add i32 %63, %62
  %65 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %53)  ; FirstbitHi(value)
  %66 = sub i32 31, %65
  %67 = icmp eq i32 %65, -1
  %68 = select i1 %67, i32 -1, i32 %66
  %69 = add i32 %68, %62
  %70 = uitofp i32 %64 to float
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 358)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %73 = fmul fast float %72, %70
  %74 = fptoui float %73 to i32
  %75 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 358)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.i32 %75, 1
  %77 = mul i32 %74, %76
  %78 = sub i32 %64, %77
  %79 = uitofp i32 %69 to float
  %80 = fmul fast float %79, %72
  %81 = fptoui float %80 to i32
  %82 = mul i32 %81, %76
  %83 = sub i32 %69, %82
  %84 = call i32 @dx.op.binary.i32(i32 40, i32 %54, i32 %78)  ; UMin(a,b)
  %85 = call i32 @dx.op.binary.i32(i32 40, i32 %55, i32 %74)  ; UMin(a,b)
  %86 = call i32 @dx.op.binary.i32(i32 39, i32 %56, i32 %83)  ; UMax(a,b)
  %87 = call i32 @dx.op.binary.i32(i32 39, i32 %57, i32 %81)  ; UMax(a,b)
  br label %88

; <label>:88                                      ; preds = %60, %52
  %89 = phi i32 [ %84, %60 ], [ %54, %52 ]
  %90 = phi i32 [ %85, %60 ], [ %55, %52 ]
  %91 = phi i32 [ %86, %60 ], [ %56, %52 ]
  %92 = phi i32 [ %87, %60 ], [ %57, %52 ]
  %93 = add nuw nsw i32 %58, 1
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %98, label %95

; <label>:95                                      ; preds = %88
  %96 = getelementptr [4 x i32], [4 x i32]* %8, i32 0, i32 %93
  %97 = load i32, i32* %96, align 4, !tbaa !18
  br label %52

; <label>:98                                      ; preds = %88
  %99 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %42)  ; Countbits(value)
  %100 = add i32 %51, %99
  %101 = add nuw nsw i32 %25, 1
  %102 = icmp eq i32 %101, %16
  br i1 %102, label %103, label %19

; <label>:103                                     ; preds = %98
  br label %104

; <label>:104                                     ; preds = %103, %0
  %105 = phi i32 [ -1, %0 ], [ %89, %103 ]
  %106 = phi i32 [ -1, %0 ], [ %90, %103 ]
  %107 = phi i32 [ 0, %0 ], [ %91, %103 ]
  %108 = phi i32 [ 0, %0 ], [ %92, %103 ]
  %109 = phi i32 [ 0, %0 ], [ %100, %103 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %110 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %7
  store i32 %109, i32 addrspace(3)* %110, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %111 = and i32 %7, 63
  %112 = icmp ult i32 %111, 32
  br i1 %112, label %113, label %119, !dx.controlflow.hints !22

; <label>:113                                     ; preds = %104
  %114 = add i32 %7, 32
  %115 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %114
  %116 = load i32, i32 addrspace(3)* %115, align 4, !tbaa !18
  %117 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %118 = add i32 %117, %116
  store i32 %118, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %119

; <label>:119                                     ; preds = %113, %104
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %120 = icmp ult i32 %111, 16
  br i1 %120, label %121, label %127, !dx.controlflow.hints !23

; <label>:121                                     ; preds = %119
  %122 = add i32 %7, 16
  %123 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %122
  %124 = load i32, i32 addrspace(3)* %123, align 4, !tbaa !18
  %125 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %126 = add i32 %125, %124
  store i32 %126, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %127

; <label>:127                                     ; preds = %121, %119
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %128 = icmp ult i32 %111, 8
  br i1 %128, label %129, label %135, !dx.controlflow.hints !24

; <label>:129                                     ; preds = %127
  %130 = add i32 %7, 8
  %131 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %130
  %132 = load i32, i32 addrspace(3)* %131, align 4, !tbaa !18
  %133 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %134 = add i32 %133, %132
  store i32 %134, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %135

; <label>:135                                     ; preds = %129, %127
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %136 = icmp ult i32 %111, 4
  br i1 %136, label %137, label %143, !dx.controlflow.hints !25

; <label>:137                                     ; preds = %135
  %138 = add i32 %7, 4
  %139 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %138
  %140 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !18
  %141 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %142 = add i32 %141, %140
  store i32 %142, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %143

; <label>:143                                     ; preds = %137, %135
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %144 = icmp ult i32 %111, 2
  br i1 %144, label %145, label %151, !dx.controlflow.hints !26

; <label>:145                                     ; preds = %143
  %146 = add i32 %7, 2
  %147 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %146
  %148 = load i32, i32 addrspace(3)* %147, align 4, !tbaa !18
  %149 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %150 = add i32 %149, %148
  store i32 %150, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %151

; <label>:151                                     ; preds = %145, %143
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %152 = icmp eq i32 %111, 0
  br i1 %152, label %153, label %159, !dx.controlflow.hints !27

; <label>:153                                     ; preds = %151
  %154 = add i32 %7, 1
  %155 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %154
  %156 = load i32, i32 addrspace(3)* %155, align 4, !tbaa !18
  %157 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %158 = add i32 %157, %156
  store i32 %158, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %159

; <label>:159                                     ; preds = %153, %151
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %160 = and i32 %7, -64
  %161 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %160
  %162 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %105, i32 addrspace(3)* %110, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %112, label %163, label %169, !dx.controlflow.hints !28

; <label>:163                                     ; preds = %159
  %164 = add i32 %7, 32
  %165 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %164
  %166 = load i32, i32 addrspace(3)* %165, align 4, !tbaa !18
  %167 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %168 = call i32 @dx.op.binary.i32(i32 40, i32 %167, i32 %166)  ; UMin(a,b)
  store i32 %168, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %169

; <label>:169                                     ; preds = %163, %159
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %120, label %170, label %176, !dx.controlflow.hints !29

; <label>:170                                     ; preds = %169
  %171 = add i32 %7, 16
  %172 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %171
  %173 = load i32, i32 addrspace(3)* %172, align 4, !tbaa !18
  %174 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %175 = call i32 @dx.op.binary.i32(i32 40, i32 %174, i32 %173)  ; UMin(a,b)
  store i32 %175, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %176

; <label>:176                                     ; preds = %170, %169
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %128, label %177, label %183, !dx.controlflow.hints !30

; <label>:177                                     ; preds = %176
  %178 = add i32 %7, 8
  %179 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %178
  %180 = load i32, i32 addrspace(3)* %179, align 4, !tbaa !18
  %181 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %182 = call i32 @dx.op.binary.i32(i32 40, i32 %181, i32 %180)  ; UMin(a,b)
  store i32 %182, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %183

; <label>:183                                     ; preds = %177, %176
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %136, label %184, label %190, !dx.controlflow.hints !31

; <label>:184                                     ; preds = %183
  %185 = add i32 %7, 4
  %186 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %185
  %187 = load i32, i32 addrspace(3)* %186, align 4, !tbaa !18
  %188 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %189 = call i32 @dx.op.binary.i32(i32 40, i32 %188, i32 %187)  ; UMin(a,b)
  store i32 %189, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %190

; <label>:190                                     ; preds = %184, %183
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %144, label %191, label %197, !dx.controlflow.hints !32

; <label>:191                                     ; preds = %190
  %192 = add i32 %7, 2
  %193 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %192
  %194 = load i32, i32 addrspace(3)* %193, align 4, !tbaa !18
  %195 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %196 = call i32 @dx.op.binary.i32(i32 40, i32 %195, i32 %194)  ; UMin(a,b)
  store i32 %196, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %197

; <label>:197                                     ; preds = %191, %190
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %152, label %198, label %204, !dx.controlflow.hints !33

; <label>:198                                     ; preds = %197
  %199 = add i32 %7, 1
  %200 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %199
  %201 = load i32, i32 addrspace(3)* %200, align 4, !tbaa !18
  %202 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %203 = call i32 @dx.op.binary.i32(i32 40, i32 %202, i32 %201)  ; UMin(a,b)
  store i32 %203, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %204

; <label>:204                                     ; preds = %198, %197
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %205 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %106, i32 addrspace(3)* %110, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %112, label %206, label %212, !dx.controlflow.hints !28

; <label>:206                                     ; preds = %204
  %207 = add i32 %7, 32
  %208 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %207
  %209 = load i32, i32 addrspace(3)* %208, align 4, !tbaa !18
  %210 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %211 = call i32 @dx.op.binary.i32(i32 40, i32 %210, i32 %209)  ; UMin(a,b)
  store i32 %211, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %212

; <label>:212                                     ; preds = %206, %204
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %120, label %213, label %219, !dx.controlflow.hints !29

; <label>:213                                     ; preds = %212
  %214 = add i32 %7, 16
  %215 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %214
  %216 = load i32, i32 addrspace(3)* %215, align 4, !tbaa !18
  %217 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %218 = call i32 @dx.op.binary.i32(i32 40, i32 %217, i32 %216)  ; UMin(a,b)
  store i32 %218, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %219

; <label>:219                                     ; preds = %213, %212
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %128, label %220, label %226, !dx.controlflow.hints !30

; <label>:220                                     ; preds = %219
  %221 = add i32 %7, 8
  %222 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %221
  %223 = load i32, i32 addrspace(3)* %222, align 4, !tbaa !18
  %224 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %225 = call i32 @dx.op.binary.i32(i32 40, i32 %224, i32 %223)  ; UMin(a,b)
  store i32 %225, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %226

; <label>:226                                     ; preds = %220, %219
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %136, label %227, label %233, !dx.controlflow.hints !31

; <label>:227                                     ; preds = %226
  %228 = add i32 %7, 4
  %229 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %228
  %230 = load i32, i32 addrspace(3)* %229, align 4, !tbaa !18
  %231 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %232 = call i32 @dx.op.binary.i32(i32 40, i32 %231, i32 %230)  ; UMin(a,b)
  store i32 %232, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %233

; <label>:233                                     ; preds = %227, %226
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %144, label %234, label %240, !dx.controlflow.hints !32

; <label>:234                                     ; preds = %233
  %235 = add i32 %7, 2
  %236 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %235
  %237 = load i32, i32 addrspace(3)* %236, align 4, !tbaa !18
  %238 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %239 = call i32 @dx.op.binary.i32(i32 40, i32 %238, i32 %237)  ; UMin(a,b)
  store i32 %239, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %240

; <label>:240                                     ; preds = %234, %233
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %152, label %241, label %247, !dx.controlflow.hints !33

; <label>:241                                     ; preds = %240
  %242 = add i32 %7, 1
  %243 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %242
  %244 = load i32, i32 addrspace(3)* %243, align 4, !tbaa !18
  %245 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %246 = call i32 @dx.op.binary.i32(i32 40, i32 %245, i32 %244)  ; UMin(a,b)
  store i32 %246, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %247

; <label>:247                                     ; preds = %241, %240
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %248 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %107, i32 addrspace(3)* %110, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %112, label %249, label %255, !dx.controlflow.hints !34

; <label>:249                                     ; preds = %247
  %250 = add i32 %7, 32
  %251 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %250
  %252 = load i32, i32 addrspace(3)* %251, align 4, !tbaa !18
  %253 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %254 = call i32 @dx.op.binary.i32(i32 39, i32 %253, i32 %252)  ; UMax(a,b)
  store i32 %254, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %255

; <label>:255                                     ; preds = %249, %247
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %120, label %256, label %262, !dx.controlflow.hints !35

; <label>:256                                     ; preds = %255
  %257 = add i32 %7, 16
  %258 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %257
  %259 = load i32, i32 addrspace(3)* %258, align 4, !tbaa !18
  %260 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %261 = call i32 @dx.op.binary.i32(i32 39, i32 %260, i32 %259)  ; UMax(a,b)
  store i32 %261, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %262

; <label>:262                                     ; preds = %256, %255
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %128, label %263, label %269, !dx.controlflow.hints !36

; <label>:263                                     ; preds = %262
  %264 = add i32 %7, 8
  %265 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %264
  %266 = load i32, i32 addrspace(3)* %265, align 4, !tbaa !18
  %267 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %268 = call i32 @dx.op.binary.i32(i32 39, i32 %267, i32 %266)  ; UMax(a,b)
  store i32 %268, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %269

; <label>:269                                     ; preds = %263, %262
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %136, label %270, label %276, !dx.controlflow.hints !37

; <label>:270                                     ; preds = %269
  %271 = add i32 %7, 4
  %272 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %271
  %273 = load i32, i32 addrspace(3)* %272, align 4, !tbaa !18
  %274 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %275 = call i32 @dx.op.binary.i32(i32 39, i32 %274, i32 %273)  ; UMax(a,b)
  store i32 %275, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %276

; <label>:276                                     ; preds = %270, %269
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %144, label %277, label %283, !dx.controlflow.hints !38

; <label>:277                                     ; preds = %276
  %278 = add i32 %7, 2
  %279 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %278
  %280 = load i32, i32 addrspace(3)* %279, align 4, !tbaa !18
  %281 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %282 = call i32 @dx.op.binary.i32(i32 39, i32 %281, i32 %280)  ; UMax(a,b)
  store i32 %282, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %283

; <label>:283                                     ; preds = %277, %276
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %152, label %284, label %290, !dx.controlflow.hints !39

; <label>:284                                     ; preds = %283
  %285 = add i32 %7, 1
  %286 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %285
  %287 = load i32, i32 addrspace(3)* %286, align 4, !tbaa !18
  %288 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %289 = call i32 @dx.op.binary.i32(i32 39, i32 %288, i32 %287)  ; UMax(a,b)
  store i32 %289, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %290

; <label>:290                                     ; preds = %284, %283
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %291 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %108, i32 addrspace(3)* %110, align 4, !tbaa !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %112, label %292, label %298, !dx.controlflow.hints !34

; <label>:292                                     ; preds = %290
  %293 = add i32 %7, 32
  %294 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %293
  %295 = load i32, i32 addrspace(3)* %294, align 4, !tbaa !18
  %296 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %297 = call i32 @dx.op.binary.i32(i32 39, i32 %296, i32 %295)  ; UMax(a,b)
  store i32 %297, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %298

; <label>:298                                     ; preds = %292, %290
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %120, label %299, label %305, !dx.controlflow.hints !35

; <label>:299                                     ; preds = %298
  %300 = add i32 %7, 16
  %301 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %300
  %302 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !18
  %303 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %304 = call i32 @dx.op.binary.i32(i32 39, i32 %303, i32 %302)  ; UMax(a,b)
  store i32 %304, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %305

; <label>:305                                     ; preds = %299, %298
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %128, label %306, label %312, !dx.controlflow.hints !36

; <label>:306                                     ; preds = %305
  %307 = add i32 %7, 8
  %308 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %307
  %309 = load i32, i32 addrspace(3)* %308, align 4, !tbaa !18
  %310 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %311 = call i32 @dx.op.binary.i32(i32 39, i32 %310, i32 %309)  ; UMax(a,b)
  store i32 %311, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %312

; <label>:312                                     ; preds = %306, %305
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %136, label %313, label %319, !dx.controlflow.hints !37

; <label>:313                                     ; preds = %312
  %314 = add i32 %7, 4
  %315 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %314
  %316 = load i32, i32 addrspace(3)* %315, align 4, !tbaa !18
  %317 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %318 = call i32 @dx.op.binary.i32(i32 39, i32 %317, i32 %316)  ; UMax(a,b)
  store i32 %318, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %319

; <label>:319                                     ; preds = %313, %312
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %144, label %320, label %326, !dx.controlflow.hints !38

; <label>:320                                     ; preds = %319
  %321 = add i32 %7, 2
  %322 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %321
  %323 = load i32, i32 addrspace(3)* %322, align 4, !tbaa !18
  %324 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %325 = call i32 @dx.op.binary.i32(i32 39, i32 %324, i32 %323)  ; UMax(a,b)
  store i32 %325, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %326

; <label>:326                                     ; preds = %320, %319
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %152, label %327, label %333, !dx.controlflow.hints !39

; <label>:327                                     ; preds = %326
  %328 = add i32 %7, 1
  %329 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %328
  %330 = load i32, i32 addrspace(3)* %329, align 4, !tbaa !18
  %331 = load i32, i32 addrspace(3)* %110, align 4, !tbaa !18
  %332 = call i32 @dx.op.binary.i32(i32 39, i32 %331, i32 %330)  ; UMax(a,b)
  store i32 %332, i32 addrspace(3)* %110, align 4, !tbaa !18
  br label %333

; <label>:333                                     ; preds = %327, %326
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %334 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !18
  %335 = icmp ult i32 %6, 16
  %336 = and i32 %6, -8
  %337 = icmp eq i32 %336, 24
  %338 = icmp eq i32 %162, 0
  %339 = or i1 %335, %337
  %340 = and i1 %339, %338
  br i1 %340, label %341, label %355, !dx.controlflow.hints !40

; <label>:341                                     ; preds = %333
  %342 = add i32 %6, 154
  %343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 %342)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.i32 %343, 0
  %345 = add i32 %344, 8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %345, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 %342)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.i32 %346, 1
  %348 = add i32 %347, 8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %348, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 %342)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.i32 %349, 2
  %351 = add i32 %350, 8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %351, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 %342)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.i32 %352, 3
  %354 = add i32 %353, 8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %354, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %355

; <label>:355                                     ; preds = %341, %333
  %356 = icmp eq i32 %6, 0
  br i1 %356, label %357, label %471, !dx.controlflow.hints !41

; <label>:357                                     ; preds = %355
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = extractvalue %dx.types.ResRet.i32 %360, 1
  %363 = icmp ne i32 %162, 0
  %364 = or i32 %362, %162
  %365 = or i32 %364, %361
  %366 = icmp ne i32 %365, 0
  %367 = or i32 %359, %162
  %368 = icmp ne i32 %367, 0
  %369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.i32 %369, 0
  %371 = and i32 %370, 32
  %372 = icmp eq i32 %371, 0
  %373 = or i1 %368, %372
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = select i1 %363, i32 -1, i32 -16385
  %377 = and i32 %375, %376
  %378 = select i1 %373, i32 -1, i32 -98305
  %379 = and i32 %377, %378
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 0, i32 undef, i32 %379, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %380 = sext i1 %363 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 64, i32 undef, i32 %380, i32 %380, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %381 = sext i1 %366 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 72, i32 undef, i32 %381, i32 %381, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %382 = or i1 %363, %373
  %383 = sext i1 %382 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 80, i32 undef, i32 %383, i32 %383, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.i32 %384, 0
  %386 = and i32 %385, 128
  %387 = icmp eq i32 %386, 0
  %388 = or i1 %363, %387
  %389 = sext i1 %388 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 88, i32 undef, i32 %389, i32 %389, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br i1 %373, label %391, label %390, !dx.controlflow.hints !42

; <label>:390                                     ; preds = %357
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 96, i32 undef, i32 0, i32 0, i32 0, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %391

; <label>:391                                     ; preds = %390, %357
  %392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.i32 %392, 0
  %394 = and i32 %393, 128
  %395 = icmp ne i32 %394, 0
  %396 = and i1 %363, %395
  br i1 %396, label %397, label %471, !dx.controlflow.hints !43

; <label>:397                                     ; preds = %391
  %398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.i32 %398, 0
  %400 = lshr i32 %399, 20
  %401 = and i32 %400, 1
  %402 = sub nsw i32 2, %401
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = call float @dx.op.binary.f32(i32 36, float %405, float %404)  ; FMin(a,b)
  %407 = fptosi float %406 to i32
  %408 = add i32 %407, 7
  %409 = and i32 %408, -8
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = fptoui float %411 to i32
  %414 = fptoui float %412 to i32
  %415 = lshr i32 %413, %402
  %416 = lshr i32 %414, %402
  %417 = icmp uge i32 %291, %205
  %418 = sub i32 1, %205
  %419 = add i32 %418, %291
  %420 = select i1 %417, i32 %419, i32 0
  %421 = icmp uge i32 %334, %248
  %422 = sub i32 1, %248
  %423 = add i32 %422, %334
  %424 = select i1 %421, i32 %423, i32 0
  %425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 358)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.i32 %425, 0
  %427 = and i32 %426, 31
  %428 = shl i32 %205, %427
  %429 = shl i32 %248, %427
  %430 = lshr i32 %428, %402
  %431 = lshr i32 %429, %402
  %432 = sub i32 %430, %409
  %433 = sub i32 %431, %409
  %434 = call i32 @dx.op.binary.i32(i32 37, i32 %432, i32 0)  ; IMax(a,b)
  %435 = call i32 @dx.op.binary.i32(i32 37, i32 %433, i32 0)  ; IMax(a,b)
  %436 = and i32 %434, -8
  %437 = and i32 %435, -8
  %438 = shl i32 %420, %427
  %439 = shl i32 %424, %427
  %440 = lshr i32 %438, %402
  %441 = lshr i32 %439, %402
  %442 = add i32 %409, 15
  %443 = add i32 %442, %440
  %444 = and i32 %443, -8
  %445 = add i32 %442, %441
  %446 = and i32 %445, -8
  %447 = add i32 %444, %436
  %448 = add i32 %446, %437
  %449 = call i32 @dx.op.binary.i32(i32 40, i32 %447, i32 %415)  ; UMin(a,b)
  %450 = call i32 @dx.op.binary.i32(i32 40, i32 %448, i32 %416)  ; UMin(a,b)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 140, i32 undef, i32 %436, i32 %437, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %451 = sub i32 7, %436
  %452 = add i32 %451, %449
  %453 = sub i32 7, %437
  %454 = add i32 %453, %450
  %455 = lshr i32 %452, 3
  %456 = lshr i32 %454, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 192, i32 undef, i32 %455, i32 %456, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %457 = sub i32 %436, %409
  %458 = sub i32 %437, %409
  %459 = call i32 @dx.op.binary.i32(i32 37, i32 %457, i32 0)  ; IMax(a,b)
  %460 = call i32 @dx.op.binary.i32(i32 37, i32 %458, i32 0)  ; IMax(a,b)
  %461 = add i32 %449, %409
  %462 = add i32 %450, %409
  %463 = call i32 @dx.op.binary.i32(i32 40, i32 %461, i32 %415)  ; UMin(a,b)
  %464 = call i32 @dx.op.binary.i32(i32 40, i32 %462, i32 %416)  ; UMin(a,b)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 132, i32 undef, i32 %459, i32 %460, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %465 = sub i32 7, %459
  %466 = add i32 %465, %463
  %467 = sub i32 7, %460
  %468 = add i32 %467, %464
  %469 = lshr i32 %466, 3
  %470 = lshr i32 %468, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 160, i32 undef, i32 %469, i32 %470, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %471

; <label>:471                                     ; preds = %397, %391, %355
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !10, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8, !9}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!13 = !{void ()* @cs_water_visibility_tile_finalize, !"cs_water_visibility_tile_finalize", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
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
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}

