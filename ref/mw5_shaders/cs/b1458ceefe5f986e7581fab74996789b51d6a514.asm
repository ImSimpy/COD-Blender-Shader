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
; shader hash: cf460189d23ff16b8e621430f52c0b55
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture     u32         buf      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }

define void @cs_copylightgrids() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 undef)  ; GetDimensions(handle,mipLevel)
  %6 = extractvalue %dx.types.Dimensions %5, 0
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %39, !dx.controlflow.hints !14

; <label>:8                                       ; preds = %0
  %9 = shl i32 %4, 6
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %9, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = extractvalue %dx.types.ResRet.i32 %10, 1
  %13 = extractvalue %dx.types.ResRet.i32 %10, 2
  %14 = extractvalue %dx.types.ResRet.i32 %10, 3
  %15 = or i32 %9, 16
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %15, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = extractvalue %dx.types.ResRet.i32 %16, 1
  %19 = extractvalue %dx.types.ResRet.i32 %16, 2
  %20 = extractvalue %dx.types.ResRet.i32 %16, 3
  %21 = or i32 %9, 32
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = extractvalue %dx.types.ResRet.i32 %22, 1
  %25 = extractvalue %dx.types.ResRet.i32 %22, 2
  %26 = extractvalue %dx.types.ResRet.i32 %22, 3
  %27 = or i32 %9, 48
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = extractvalue %dx.types.ResRet.i32 %28, 1
  %31 = extractvalue %dx.types.ResRet.i32 %28, 2
  %32 = extractvalue %dx.types.ResRet.i32 %28, 3
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %4, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = shl i32 %34, 6
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %35, i32 undef, i32 %11, i32 %12, i32 %13, i32 %14, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %36 = or i32 %35, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %36, i32 undef, i32 %17, i32 %18, i32 %19, i32 %20, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %37 = or i32 %35, 32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %37, i32 undef, i32 %23, i32 %24, i32 %25, i32 %26, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %38 = or i32 %35, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %38, i32 undef, i32 %29, i32 %30, i32 %31, i32 %32, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %39

; <label>:39                                      ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, null, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{void ()* @cs_copylightgrids, !"cs_copylightgrids", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}

