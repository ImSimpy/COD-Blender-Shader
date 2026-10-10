;
; Note: shader requires additional functionality:
;       Wave level operations
;
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
; shader hash: b36243e270c86aa020979aeecc55d0d1
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
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
;                                   texture     u32          2d      T0            t29     1
;                                       UAV  struct         r/w      U0             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }

define void @vis_buffer_prepass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %5 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %3, i32 %4, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6 = extractvalue %dx.types.ResRet.i32 %5, 0
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %38, !dx.controlflow.hints !14

; <label>:9                                       ; preds = %0
  %10 = lshr i32 %6, 3
  %11 = and i32 %10, 63
  %12 = lshr i32 %6, 9
  %13 = and i32 %12, 262143
  %14 = icmp ult i32 %11, 32
  %15 = and i32 %10, 31
  %16 = shl i32 1, %15
  %17 = select i1 %14, i32 %16, i32 0
  %18 = icmp ugt i32 %11, 31
  %19 = select i1 %18, i32 %16, i32 0
  br label %20

; <label>:20                                      ; preds = %33, %9
  %21 = phi i32 [ 1, %9 ], [ %34, %33 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23, !dx.controlflow.hints !15

; <label>:23                                      ; preds = %20
  %24 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %13)  ; WaveReadLaneFirst(value)
  %25 = icmp eq i32 %13, %24
  br i1 %25, label %26, label %33, !dx.controlflow.hints !16

; <label>:26                                      ; preds = %23
  %27 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %17, i8 1)  ; WaveActiveBit(value,op)
  %28 = call i32 @dx.op.waveActiveBit.i32(i32 120, i32 %19, i8 1)  ; WaveActiveBit(value,op)
  %29 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %29, label %30, label %33, !dx.controlflow.hints !17

; <label>:30                                      ; preds = %26
  %31 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %13, i32 0, i32 undef, i32 %27)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %32 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %13, i32 4, i32 undef, i32 %28)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %33

; <label>:33                                      ; preds = %30, %26, %23, %20
  %34 = phi i32 [ %21, %23 ], [ 0, %20 ], [ 0, %30 ], [ 0, %26 ]
  %35 = icmp ne i32 %34, 0
  %36 = call i1 @dx.op.waveAnyTrue(i32 113, i1 %35)  ; WaveAnyTrue(cond)
  br i1 %36, label %20, label %37

; <label>:37                                      ; preds = %33
  br label %38

; <label>:38                                      ; preds = %37, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveBit.i32(i32, i32, i8) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveAnyTrue(i32, i1) #2

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, null, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{!9}
!9 = !{i32 0, %"class.RWStructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !10}
!10 = !{i32 1, i32 8}
!11 = !{void ()* @vis_buffer_prepass, !"vis_buffer_prepass", null, !4, !12}
!12 = !{i32 0, i64 524560, i32 4, !13}
!13 = !{i32 8, i32 8, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

