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
; shader hash: aa3c8f5f50f50278e293e8fc73a11b68
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;                                       UAV    byte         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%UGBPagingRingConsts = type { i32, i32, i32, i32 }

define void @copy_index_pages() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 0
  %10 = mul i32 %6, 40
  %11 = add i32 %9, %10
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = extractvalue %dx.types.ResRet.i32 %12, 1
  %15 = shl i32 %6, 6
  %16 = add i32 %15, %7
  %17 = mul i32 %16, 3
  %18 = shl i32 %14, 6
  %19 = add i32 %18, %7
  %20 = mul i32 %19, 3
  %21 = mul i32 %16, 6
  %22 = and i32 %21, -4
  %23 = extractvalue %dx.types.CBufRet.i32 %8, 1
  %24 = add i32 %23, %22
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %24, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = extractvalue %dx.types.ResRet.i32 %25, 1
  %28 = and i32 %17, 1
  %29 = icmp eq i32 %28, 0
  %30 = lshr i32 %26, 16
  %31 = and i32 %27, 65535
  %32 = lshr i32 %27, 16
  %33 = and i32 %26, 65535
  %34 = select i1 %29, i32 %33, i32 %30
  %35 = select i1 %29, i32 %30, i32 %31
  %36 = select i1 %29, i32 %31, i32 %32
  %37 = mul i32 %19, 6
  %38 = and i32 %37, -4
  %39 = and i32 %20, 1
  %40 = icmp eq i32 %39, 0
  %41 = add i32 %38, 4
  br i1 %40, label %46, label %42, !dx.controlflow.hints !16

; <label>:42                                      ; preds = %0
  %43 = shl nuw i32 %34, 16
  %44 = shl nuw i32 %36, 16
  %45 = or i32 %44, %35
  br label %49

; <label>:46                                      ; preds = %0
  %47 = shl nuw i32 %35, 16
  %48 = or i32 %47, %34
  br label %49

; <label>:49                                      ; preds = %46, %42
  %50 = phi i32 [ %43, %42 ], [ %36, %46 ]
  %51 = phi i32 [ %45, %42 ], [ %48, %46 ]
  %52 = phi i32 [ %38, %42 ], [ %41, %46 ]
  %53 = phi i32 [ %41, %42 ], [ %38, %46 ]
  %54 = phi i32 [ 65535, %42 ], [ -65536, %46 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %53, i32 undef, i32 %51, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %55 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 1, i32 %52, i32 undef, i32 undef, i32 %54)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %56 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 2, i32 %52, i32 undef, i32 undef, i32 %50)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %57 = icmp eq i32 %7, 0
  br i1 %57, label %58, label %60, !dx.controlflow.hints !17

; <label>:58                                      ; preds = %49
  %59 = shl i32 %13, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %59, i32 undef, i32 %14, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %60

; <label>:60                                      ; preds = %58, %49
  %61 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.i32 %61, 0
  %63 = add i32 %10, 8
  %64 = add i32 %63, %62
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = add i32 %10, 24
  %67 = add i32 %66, %62
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  br i1 %57, label %69, label %80, !dx.controlflow.hints !18

; <label>:69                                      ; preds = %60
  %70 = extractvalue %dx.types.ResRet.i32 %68, 3
  %71 = extractvalue %dx.types.ResRet.i32 %68, 2
  %72 = extractvalue %dx.types.ResRet.i32 %68, 1
  %73 = extractvalue %dx.types.ResRet.i32 %68, 0
  %74 = extractvalue %dx.types.ResRet.i32 %65, 3
  %75 = extractvalue %dx.types.ResRet.i32 %65, 2
  %76 = extractvalue %dx.types.ResRet.i32 %65, 1
  %77 = extractvalue %dx.types.ResRet.i32 %65, 0
  %78 = shl i32 %14, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %78, i32 undef, i32 %77, i32 %76, i32 %75, i32 %74, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %79 = or i32 %78, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %79, i32 undef, i32 %73, i32 %72, i32 %71, i32 %70, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %80

; <label>:80                                      ; preds = %69, %60
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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !11, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8, !9, !10}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12}
!12 = !{i32 0, %UGBPagingRingConsts* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!13 = !{void ()* @copy_index_pages, !"copy_index_pages", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

