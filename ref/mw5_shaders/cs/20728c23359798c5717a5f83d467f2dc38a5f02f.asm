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
; shader hash: 44e590016bc61d53ab1429c65e2cbf15
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture    byte         r/o      T0            t18     1
;                                   texture    byte         r/o      T1            t20     1
;                                   texture    byte         r/o      T2            t22     1
;                                   texture    byte         r/o      T3            t23     1
;                                   texture    byte         r/o      T4            t27     1
;                                       UAV    byte         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @init_draw_indirect_args() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = shl i32 %8, 6
  %11 = add i32 %10, %9
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %90, !dx.controlflow.hints !18

; <label>:15                                      ; preds = %0
  %16 = extractvalue %dx.types.CBufRet.i32 %12, 1
  %17 = extractvalue %dx.types.CBufRet.i32 %12, 2
  %18 = icmp eq i32 %17, 0
  %19 = shl i32 %11, 2
  br i1 %18, label %24, label %20, !dx.controlflow.hints !19

; <label>:20                                      ; preds = %15
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = lshr i32 %22, 16
  br label %24

; <label>:24                                      ; preds = %20, %15
  %25 = phi i32 [ %23, %20 ], [ 1, %15 ]
  %26 = add i32 %25, %11
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = shl i32 %26, 2
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = icmp ult i32 %28, %31
  %33 = icmp ult i32 %31, 65536
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %42, !dx.controlflow.hints !20

; <label>:35                                      ; preds = %24
  %36 = shl i32 %28, 2
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = shl i32 %31, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  br label %42

; <label>:42                                      ; preds = %35, %24
  %43 = phi i32 [ %38, %35 ], [ 0, %24 ]
  %44 = phi i32 [ %41, %35 ], [ 0, %24 ]
  %45 = icmp ult i32 %43, %44
  %46 = icmp ult i32 %44, 262144
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %57, !dx.controlflow.hints !21

; <label>:48                                      ; preds = %42
  %49 = shl i32 %43, 2
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = mul i32 %51, 3
  %53 = shl i32 %44, 2
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = mul i32 %55, 3
  br label %57

; <label>:57                                      ; preds = %48, %42
  %58 = phi i32 [ %52, %48 ], [ 0, %42 ]
  %59 = phi i32 [ %56, %48 ], [ 0, %42 ]
  %60 = icmp ugt i32 %59, %58
  %61 = icmp ult i32 %59, %16
  %62 = and i1 %60, %61
  %63 = sub i32 %59, %58
  %64 = select i1 %62, i32 %63, i32 0
  %65 = select i1 %62, i32 %58, i32 0
  %66 = extractvalue %dx.types.CBufRet.i32 %12, 3
  %67 = icmp eq i32 %66, 0
  %68 = icmp ne i32 %64, 0
  %69 = zext i1 %68 to i32
  br i1 %67, label %70, label %75, !dx.controlflow.hints !22

; <label>:70                                      ; preds = %57
  %71 = shl i32 %11, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %71, i32 undef, i32 %64, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %72 = or i32 %71, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %72, i32 undef, i32 %69, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %73 = or i32 %71, 8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %73, i32 undef, i32 %65, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %74 = or i32 %71, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %74, i32 undef, i32 %11, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %81

; <label>:75                                      ; preds = %57
  %76 = mul i32 %11, 20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %76, i32 undef, i32 %64, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %77 = add i32 %76, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %77, i32 undef, i32 %69, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %78 = add i32 %76, 8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %78, i32 undef, i32 %65, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %79 = add i32 %76, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %79, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %80 = add i32 %76, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %80, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %81

; <label>:81                                      ; preds = %75, %70
  %82 = icmp eq i32 %64, 0
  br i1 %82, label %90, label %83, !dx.controlflow.hints !23

; <label>:83                                      ; preds = %81
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = shl i32 %85, 3
  %87 = and i32 %86, 524280
  %88 = add nuw nsw i32 %87, 327680
  %89 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %88, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %90

; <label>:90                                      ; preds = %83, %81, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !13, null}
!5 = !{!6, !7, !8, !9, !10}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 23, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!11 = !{!12}
!12 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{!14}
!14 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!15 = !{void ()* @init_draw_indirect_args, !"init_draw_indirect_args", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 64, i32 1, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}

