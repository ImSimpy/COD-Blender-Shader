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
; shader hash: fd9a153205c2fd4503aa074a8b66f88d
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
;   [48 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1            t16     1
;                                   texture  struct         r/o      T2            t17     1
;                                   texture    byte         r/o      T3            t18     1
;                                   texture    byte         r/o      T4            t25     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @indirect_triangle_expand_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = shl i32 %8, 2
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %10, i32 undef)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = shl i32 %12, 2
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %13, i32 undef)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = and i32 %15, 65535
  %17 = and i32 %15, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !dx.controlflow.hints !19

; <label>:19                                      ; preds = %0
  %20 = shl nuw nsw i32 %16, 4
  %21 = add nuw nsw i32 %20, 5767168
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  br label %30

; <label>:24                                      ; preds = %0
  %25 = mul nuw nsw i32 %16, 12
  %26 = add nuw nsw i32 %25, 1572864
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 1
  %29 = lshr i32 %28, 16
  br label %30

; <label>:30                                      ; preds = %24, %19
  %31 = phi i32 [ %23, %19 ], [ %29, %24 ]
  %32 = icmp eq i32 %31, 16384
  br i1 %32, label %78, label %33, !dx.controlflow.hints !20

; <label>:33                                      ; preds = %30
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %8, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = extractvalue %dx.types.ResRet.i32 %34, 1
  %37 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %35)  ; Countbits(value)
  %38 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %36)  ; Countbits(value)
  %39 = sub i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %78, label %41, !dx.controlflow.hints !21

; <label>:41                                      ; preds = %33
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %10, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = icmp ult i32 %9, 64
  br i1 %44, label %45, label %78

; <label>:45                                      ; preds = %41
  %46 = lshr i32 %9, 5
  %47 = shl nuw nsw i32 %46, 2
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %8, i32 %47)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = and i32 %9, 31
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp eq i32 %52, 0
  %54 = add i32 %51, -1
  br i1 %53, label %78, label %55, !dx.controlflow.hints !22

; <label>:55                                      ; preds = %45
  %56 = and i32 %9, 32
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %35, %54
  %59 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %58)  ; Countbits(value)
  %60 = and i32 %36, %54
  %61 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %60)  ; Countbits(value)
  %62 = add i32 %61, %37
  %63 = select i1 %57, i32 %59, i32 %62
  %64 = add i32 %63, %43
  %65 = shl i32 %64, 2
  %66 = add i32 %65, 4
  %67 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.i32 %67, 1
  %69 = shl i32 %68, 2
  %70 = icmp ugt i32 %66, %69
  br i1 %70, label %78, label %71, !dx.controlflow.hints !23

; <label>:71                                      ; preds = %55
  %72 = shl i32 %9, 3
  %73 = and i32 %72, 504
  %74 = shl i32 %12, 9
  %75 = and i32 %74, 134217216
  %76 = or i32 %73, %75
  %77 = or i32 %76, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %65, i32 undef, i32 %77, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %78

; <label>:78                                      ; preds = %71, %55, %45, %41, %33, %30
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, null}
!5 = !{!6, !7, !8, !10, !11}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.StructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 17, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 25, i32 1, i32 11, i32 0, null}
!12 = !{!13}
!13 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{!15}
!15 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!16 = !{void ()* @indirect_triangle_expand_pass, !"indirect_triangle_expand_pass", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 64, i32 1, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}

