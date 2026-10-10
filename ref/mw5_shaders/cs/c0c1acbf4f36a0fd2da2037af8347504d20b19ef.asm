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
; shader hash: bd1f28c31aac0c38ae64fd4139546f9f
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
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                       UAV    byte         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<rsSortItem>" = type { %struct.rsSortItem }
%struct.rsSortItem = type { i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%RadixSortConsts = type { i32, i32, i32, i32 }

@"\01?radixCount@@3PAIA" = external addrspace(3) global [16 x i32], align 4

define void @radix_sort_tile_radix_count() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.i32 %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !dx.controlflow.hints !16

; <label>:10                                      ; preds = %0
  %11 = extractvalue %dx.types.CBufRet.i32 %7, 1
  br label %16

; <label>:12                                      ; preds = %0
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = extractvalue %dx.types.ResRet.i32 %13, 1
  br label %16

; <label>:16                                      ; preds = %12, %10
  %17 = phi i32 [ %8, %10 ], [ %14, %12 ]
  %18 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %19 = add i32 %17, 63
  %20 = lshr i32 %19, 6
  %21 = icmp ult i32 %6, 16
  br i1 %21, label %22, label %24, !dx.controlflow.hints !17

; <label>:22                                      ; preds = %16
  %23 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?radixCount@@3PAIA", i32 0, i32 %6
  store i32 0, i32 addrspace(3)* %23, align 4, !tbaa !18
  br label %24

; <label>:24                                      ; preds = %22, %16
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %25 = shl i32 %5, 6
  %26 = add i32 %25, %6
  %27 = icmp ult i32 %26, %17
  br i1 %27, label %28, label %40, !dx.controlflow.hints !22

; <label>:28                                      ; preds = %24
  %29 = add i32 %18, %26
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %29, i32 0)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %34 = shl i32 %33, 2
  %35 = and i32 %34, 28
  %36 = lshr i32 %31, %35
  %37 = and i32 %36, 15
  %38 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?radixCount@@3PAIA", i32 0, i32 %37
  %39 = atomicrmw add i32 addrspace(3)* %38, i32 1 seq_cst
  br label %40

; <label>:40                                      ; preds = %28, %24
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %21, label %41, label %47, !dx.controlflow.hints !23

; <label>:41                                      ; preds = %40
  %42 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?radixCount@@3PAIA", i32 0, i32 %6
  %43 = load i32, i32 addrspace(3)* %42, align 4, !tbaa !18
  %44 = mul i32 %20, %6
  %45 = add i32 %44, %5
  %46 = shl i32 %45, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %46, i32 undef, i32 %43, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %47

; <label>:47                                      ; preds = %41, %40
  %48 = icmp eq i32 %26, 0
  br i1 %48, label %49, label %50, !dx.controlflow.hints !24

; <label>:49                                      ; preds = %47
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 263168, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %50

; <label>:50                                      ; preds = %49, %47
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!4 = !{!5, !9, !11, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<rsSortItem>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 8}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 true, i1 false, i1 false, null}
!11 = !{!12}
!12 = !{i32 0, %RadixSortConsts* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!13 = !{void ()* @radix_sort_tile_radix_count, !"radix_sort_tile_radix_count", null, !4, !14}
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

