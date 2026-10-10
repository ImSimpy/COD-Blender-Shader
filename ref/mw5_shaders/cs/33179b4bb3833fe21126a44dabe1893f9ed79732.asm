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
; shader hash: f27233fc00b072ad64016a1d4a95b754
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
;   [3376 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

define void @cs_water_tile_buckets_finalize() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = alloca [4 x i32], align 4
  %5 = alloca [4 x i32], align 4
  %6 = alloca [4 x i32], align 4
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  br label %8

; <label>:8                                       ; preds = %49, %0
  %9 = phi i32 [ 0, %0 ], [ %61, %49 ]
  %10 = add i32 %7, 154
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 %10)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %14 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %15 = extractvalue %dx.types.CBufRet.i32 %11, 3
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 2
  store i32 %14, i32* %18, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 3
  store i32 %15, i32* %19, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 %9
  %21 = load i32, i32* %20, align 4, !tbaa !13, !noalias !17
  %22 = add i32 %21, 4
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = add i32 %7, 76
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 %25)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %29 = extractvalue %dx.types.CBufRet.i32 %26, 2
  %30 = extractvalue %dx.types.CBufRet.i32 %26, 3
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 2
  store i32 %29, i32* %33, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 %9
  %36 = load i32, i32* %35, align 4, !tbaa !13, !noalias !17
  %37 = call i32 @dx.op.binary.i32(i32 40, i32 %24, i32 %36)  ; UMin(a,b)
  %38 = icmp eq i32 %7, 37
  %39 = icmp ult i32 %9, 2
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %49, !dx.controlflow.hints !20

; <label>:41                                      ; preds = %8
  %42 = icmp eq i32 %9, 0
  %43 = select i1 %42, i32 4, i32 1
  %44 = mul i32 %37, %43
  %45 = shl i32 %9, 5
  %46 = add nuw nsw i32 %45, 4992
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %46, i32 undef, i32 %44, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %47 = add nuw nsw i32 %45, 4996
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %47, i32 undef, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %48 = add nuw nsw i32 %45, 5000
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %48, i32 undef, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %49

; <label>:49                                      ; preds = %41, %8
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 197)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %53 = extractvalue %dx.types.CBufRet.i32 %50, 2
  %54 = extractvalue %dx.types.CBufRet.i32 %50, 3
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 2
  store i32 %53, i32* %57, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 3
  store i32 %54, i32* %58, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 %9
  %60 = load i32, i32* %59, align 4, !tbaa !13, !noalias !17
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %22, i32 undef, i32 %60, i32 %37, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %61 = add nuw nsw i32 %9, 1
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %8

; <label>:63                                      ; preds = %49
  %64 = icmp eq i32 %7, 0
  br i1 %64, label %65, label %70, !dx.controlflow.hints !21

; <label>:65                                      ; preds = %63
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = add i32 %67, 63
  %69 = lshr i32 %68, 6
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 4, i32 undef, i32 %69, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %70

; <label>:70                                      ; preds = %65, %63
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !8, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!7 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!8 = !{!9}
!9 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!10 = !{void ()* @cs_water_tile_buckets_finalize, !"cs_water_tile_buckets_finalize", null, !4, !11}
!11 = !{i32 0, i64 272, i32 4, !12}
!12 = !{i32 39, i32 1, i32 1}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"\01?Water_WriteBucketIndirectArgs@@YAXI_NAIAI@Z: %outTotalSubTileCount"}
!19 = distinct !{!19, !"\01?Water_WriteBucketIndirectArgs@@YAXI_NAIAI@Z"}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

