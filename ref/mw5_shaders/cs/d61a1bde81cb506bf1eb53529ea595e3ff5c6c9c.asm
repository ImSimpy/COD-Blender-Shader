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
; shader hash: b291e2244380e8fbbb1e3ec8db8a3f16
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
;   [256 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t9     1
;                                       UAV  struct     r/w+cnt      U0   u0,space2001     1
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<NvShaderExtnStruct>" = type { %struct.NvShaderExtnStruct }
%struct.NvShaderExtnStruct = type { i32, i32, i32, <4 x i32>, [3 x <4 x i32>], <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, i32, [28 x float] }
%struct.RWByteAddressBuffer = type { i32 }
%ThreadCountConst = type { i32, i32, i32, i32 }

@"\01?tiledOffsets512@@3PAIA" = external addrspace(3) global [16 x i32], align 4

define void @cs_sum() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = shl i32 %5, 9
  %8 = add i32 %7, %6
  %9 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.i32 %9, 0
  %11 = icmp ult i32 %8, %10
  %12 = shl i32 %8, 2
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = select i1 %11, i32 %14, i32 0
  %16 = and i32 %6, 31
  %17 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %17, i32 76, i32 %15, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %17, i32 80, i32 16, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %17, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %17, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %18 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %19 = add i32 %18, %15
  %20 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %20, i32 76, i32 %19, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %20, i32 80, i32 8, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %20, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %20, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %21 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %22 = add i32 %21, %19
  %23 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %23, i32 76, i32 %22, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %23, i32 80, i32 4, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %23, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %23, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %24 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %25 = add i32 %24, %22
  %26 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %26, i32 76, i32 %25, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %26, i32 80, i32 2, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %26, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %26, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %27 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %28 = add i32 %27, %25
  %29 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %29, i32 76, i32 %28, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %29, i32 80, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %29, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %29, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %30 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %32, label %36, !dx.controlflow.hints !16

; <label>:32                                      ; preds = %0
  %33 = add i32 %30, %28
  %34 = lshr i32 %6, 5
  %35 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %34
  store i32 %33, i32 addrspace(3)* %35, align 4, !tbaa !17
  br label %36

; <label>:36                                      ; preds = %32, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %37 = icmp ult i32 %6, 16
  br i1 %37, label %38, label %53, !dx.controlflow.hints !21

; <label>:38                                      ; preds = %36
  %39 = getelementptr [16 x i32], [16 x i32] addrspace(3)* @"\01?tiledOffsets512@@3PAIA", i32 0, i32 %6
  %40 = load i32, i32 addrspace(3)* %39, align 4, !tbaa !17
  %41 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %41, i32 76, i32 %40, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %41, i32 80, i32 8, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %41, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %41, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %42 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %43 = add i32 %42, %40
  %44 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %44, i32 76, i32 %43, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %44, i32 80, i32 4, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %44, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %44, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %45 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %46 = add i32 %45, %43
  %47 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %47, i32 76, i32 %46, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %47, i32 80, i32 2, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %47, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %47, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %48 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %49 = add i32 %48, %46
  %50 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %50, i32 76, i32 %49, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %50, i32 80, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %50, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %50, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %51 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %2, i8 1)  ; BufferUpdateCounter(uav,inc)
  %52 = add i32 %51, %49
  br label %53

; <label>:53                                      ; preds = %38, %36
  %54 = phi i32 [ %52, %38 ], [ 0, %36 ]
  %55 = icmp eq i32 %6, 0
  br i1 %55, label %56, label %58, !dx.controlflow.hints !22

; <label>:56                                      ; preds = %53
  %57 = shl i32 %5, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %57, i32 undef, i32 %54, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %58

; <label>:58                                      ; preds = %56, %53
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.bufferUpdateCounter(i32, %dx.types.Handle, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

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
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!7 = !{!8, !10}
!8 = !{i32 0, %"class.RWStructuredBuffer<NvShaderExtnStruct>"* undef, !"", i32 2001, i32 0, i32 1, i32 12, i1 false, i1 true, i1 false, !9}
!9 = !{i32 1, i32 256}
!10 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12}
!12 = !{i32 0, %ThreadCountConst* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!13 = !{void ()* @cs_sum, !"cs_sum", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 512, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}

