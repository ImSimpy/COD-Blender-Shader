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
; shader hash: 87b7c87d5193d3aa0feb77f0454bbb46
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
;                                   texture    byte         r/o      T2             t2     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<rsSortItem>" = type { %struct.rsSortItem }
%struct.rsSortItem = type { i32, i32 }
%"class.RWStructuredBuffer<rsSortItem>" = type { %struct.rsSortItem }
%RadixSortConsts = type { i32, i32, i32, i32 }

@"\01?radixMask@@3PAY01$$CAIA.1dim" = addrspace(3) global [32 x i32] undef, align 4

define void @radix_sort_resolve_bins() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !dx.controlflow.hints !17

; <label>:11                                      ; preds = %0
  %12 = extractvalue %dx.types.CBufRet.i32 %8, 1
  br label %17

; <label>:13                                      ; preds = %0
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = extractvalue %dx.types.ResRet.i32 %14, 1
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %9, %11 ], [ %15, %13 ]
  %19 = phi i32 [ %12, %11 ], [ %16, %13 ]
  %20 = add i32 %18, 63
  %21 = lshr i32 %20, 6
  %22 = shl i32 %6, 6
  %23 = add i32 %22, %7
  %24 = icmp ult i32 %7, 16
  br i1 %24, label %25, label %32, !dx.controlflow.hints !18

; <label>:25                                      ; preds = %17
  %26 = mul i32 %7, 2
  %27 = add i32 0, %26
  %28 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?radixMask@@3PAY01$$CAIA.1dim", i32 0, i32 %27
  store i32 0, i32 addrspace(3)* %28, align 4, !tbaa !19
  %29 = mul i32 %7, 2
  %30 = add i32 1, %29
  %31 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?radixMask@@3PAY01$$CAIA.1dim", i32 0, i32 %30
  store i32 0, i32 addrspace(3)* %31, align 4, !tbaa !19
  br label %32

; <label>:32                                      ; preds = %25, %17
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %33 = icmp ult i32 %23, %18
  br i1 %33, label %34, label %53, !dx.controlflow.hints !23

; <label>:34                                      ; preds = %32
  %35 = add i32 %19, %23
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %35, i32 0)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %35, i32 4)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.i32 %40, 2
  %42 = shl i32 %41, 2
  %43 = and i32 %42, 28
  %44 = lshr i32 %37, %43
  %45 = and i32 %44, 15
  %46 = lshr i32 %7, 5
  %47 = and i32 %7, 31
  %48 = shl i32 1, %47
  %49 = mul i32 %45, 2
  %50 = add i32 %46, %49
  %51 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?radixMask@@3PAY01$$CAIA.1dim", i32 0, i32 %50
  %52 = atomicrmw or i32 addrspace(3)* %51, i32 %48 seq_cst
  br label %53

; <label>:53                                      ; preds = %34, %32
  %54 = phi i32 [ %45, %34 ], [ 16, %32 ]
  %55 = phi i32 [ %39, %34 ], [ 0, %32 ]
  %56 = phi i32 [ %37, %34 ], [ 0, %32 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %33, label %57, label %98, !dx.controlflow.hints !24

; <label>:57                                      ; preds = %53
  %58 = mul i32 %54, 2
  %59 = add i32 0, %58
  %60 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?radixMask@@3PAY01$$CAIA.1dim", i32 0, i32 %59
  %61 = load i32, i32 addrspace(3)* %60, align 4, !tbaa !19
  %62 = mul i32 %54, 2
  %63 = add i32 1, %62
  %64 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?radixMask@@3PAY01$$CAIA.1dim", i32 0, i32 %63
  %65 = load i32, i32 addrspace(3)* %64, align 4, !tbaa !19
  %66 = and i32 %7, 32
  %67 = and i32 %7, 31
  %68 = shl i32 1, %67
  %69 = add i32 %68, -1
  %70 = icmp eq i32 %66, 0
  %71 = and i32 %61, %69
  %72 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %71)  ; Countbits(value)
  %73 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %61)  ; Countbits(value)
  %74 = and i32 %65, %69
  %75 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %74)  ; Countbits(value)
  %76 = add i32 %75, %73
  %77 = select i1 %70, i32 %72, i32 %76
  %78 = mul nuw nsw i32 %54, %21
  %79 = add i32 %78, %6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81, !dx.controlflow.hints !25

; <label>:81                                      ; preds = %57
  %82 = add i32 %79, -1
  %83 = shl i32 %82, 2
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %83, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = icmp ult i32 %82, 256
  br i1 %86, label %94, label %87, !dx.controlflow.hints !26

; <label>:87                                      ; preds = %81
  %88 = lshr i32 %82, 8
  %89 = shl nuw nsw i32 %88, 2
  %90 = add nuw nsw i32 %89, 262140
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = add i32 %92, %85
  br label %94

; <label>:94                                      ; preds = %87, %81, %57
  %95 = phi i32 [ %93, %87 ], [ 0, %57 ], [ %85, %81 ]
  %96 = add i32 %77, %19
  %97 = add i32 %96, %95
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %97, i32 0, i32 %56, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %97, i32 4, i32 %55, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %98

; <label>:98                                      ; preds = %94, %53
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

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
!4 = !{!5, !10, !12, null}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<rsSortItem>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 8}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!10 = !{!11}
!11 = !{i32 0, %"class.RWStructuredBuffer<rsSortItem>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!12 = !{!13}
!13 = !{i32 0, %RadixSortConsts* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!14 = !{void ()* @radix_sort_resolve_bins, !"radix_sort_resolve_bins", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}

