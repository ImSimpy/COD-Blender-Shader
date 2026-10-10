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
; shader hash: 567039d76fbbacd25b30824c0dd5c0d2
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
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   texture     u32         buf      T0             t0     1
;                                   texture     u32         buf      T1             t1     1
;                                       UAV     u32         buf      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWBuffer<unsigned int>" = type { i32 }
%GfxCombineLightGridVolumesSamplingListsConsts = type { i32, i32, i32, i32 }

define void @cs_compute_group_start_probe_index() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %8 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %7, i32 undef)  ; BufferLoad(srv,index,wot)
  %9 = extractvalue %dx.types.ResRet.i32 %8, 0
  %10 = shl i32 %5, 6
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %32, label %12

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %27, %12
  %14 = phi i32 [ %28, %27 ], [ 0, %12 ]
  %15 = phi i32 [ %29, %27 ], [ %9, %12 ]
  %16 = lshr i32 %15, 1
  %17 = add i32 %16, %14
  %18 = mul i32 %17, 20
  %19 = add i32 %18, %7
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = icmp ult i32 %21, %10
  br i1 %22, label %23, label %27, !dx.controlflow.hints !16

; <label>:23                                      ; preds = %13
  %24 = add i32 %17, 1
  %25 = add i32 %15, -1
  %26 = sub i32 %25, %16
  br label %27

; <label>:27                                      ; preds = %23, %13
  %28 = phi i32 [ %24, %23 ], [ %14, %13 ]
  %29 = phi i32 [ %26, %23 ], [ %16, %13 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %13

; <label>:31                                      ; preds = %27
  br label %32

; <label>:32                                      ; preds = %31, %0
  %33 = phi i32 [ 0, %0 ], [ %28, %31 ]
  %34 = icmp ne i32 %33, 0
  %35 = add i32 %33, -1
  %36 = select i1 %34, i32 %35, i32 0
  %37 = mul i32 %36, 20
  %38 = add i32 %37, %7
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = sub i32 %10, %40
  %42 = shl i32 %36, 12
  %43 = and i32 %41, 4095
  %44 = or i32 %43, %42
  %45 = mul i32 %5, 20
  %46 = add i32 %7, %45
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %46, i32 undef, i32 %44, i32 %44, i32 %44, i32 %44, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %GfxCombineLightGridVolumesSamplingListsConsts* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!13 = !{void ()* @cs_compute_group_start_probe_index, !"cs_compute_group_start_probe_index", null, !4, !14}
!14 = !{i32 0, i64 256, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

