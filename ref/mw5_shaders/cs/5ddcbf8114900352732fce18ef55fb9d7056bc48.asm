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
; shader hash: 25e4ea25ac7fe71a7f8ca4c639e7144d
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
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture     u32         buf      T0             t1     1
;                                       UAV     u32         buf      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.RWBuffer<unsigned int>" = type { i32 }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }

define void @cs_compute_global_group_start_probe_index() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 0
  %7 = shl i32 %4, 6
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %27, label %9

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %22, %9
  %11 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %12 = phi i32 [ %24, %22 ], [ %6, %9 ]
  %13 = lshr i32 %12, 1
  %14 = add i32 %13, %11
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = icmp ult i32 %16, %7
  br i1 %17, label %18, label %22, !dx.controlflow.hints !15

; <label>:18                                      ; preds = %10
  %19 = add i32 %14, 1
  %20 = add i32 %12, -1
  %21 = sub i32 %20, %13
  br label %22

; <label>:22                                      ; preds = %18, %10
  %23 = phi i32 [ %19, %18 ], [ %11, %10 ]
  %24 = phi i32 [ %21, %18 ], [ %13, %10 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %10

; <label>:26                                      ; preds = %22
  br label %27

; <label>:27                                      ; preds = %26, %0
  %28 = phi i32 [ 0, %0 ], [ %23, %26 ]
  %29 = icmp ne i32 %28, 0
  %30 = add i32 %28, -1
  %31 = select i1 %29, i32 %30, i32 0
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = sub i32 %7, %33
  %35 = shl i32 %31, 12
  %36 = and i32 %34, 4095
  %37 = or i32 %36, %35
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %4, i32 undef, i32 %37, i32 %37, i32 %37, i32 %37, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{!9}
!9 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!12 = !{void ()* @cs_compute_global_group_start_probe_index, !"cs_compute_global_group_start_probe_index", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}

