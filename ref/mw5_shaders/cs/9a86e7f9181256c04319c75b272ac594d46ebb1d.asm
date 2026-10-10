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
; shader hash: 1fcdf9d28dacafe57e87e227fd7cd74a
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
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t1     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%ConstantBufferWriteBitmask = type { <2 x i32>, <2 x i32> }

define void @cs_frustum_lights_list_from_mask() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 2
  %8 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %9 = mul i32 %8, %5
  %10 = add i32 %9, %4
  %11 = mul i32 %10, %7
  %12 = shl i32 %10, 3
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %75, label %14

; <label>:14                                      ; preds = %0
  br label %15

; <label>:15                                      ; preds = %66, %14
  %16 = phi i32 [ %67, %66 ], [ 0, %14 ]
  %17 = phi i32 [ %68, %66 ], [ 1, %14 ]
  %18 = phi i32 [ %69, %66 ], [ 0, %14 ]
  %19 = phi i32 [ %70, %66 ], [ 0, %14 ]
  %20 = phi i32 [ %72, %66 ], [ 0, %14 ]
  %21 = phi i32 [ %71, %66 ], [ 0, %14 ]
  %22 = add i32 %20, %11
  %23 = shl i32 %22, 2
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = icmp ne i32 %25, 0
  %27 = icmp ult i32 %16, 8
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %66

; <label>:29                                      ; preds = %15
  br label %30

; <label>:30                                      ; preds = %57, %29
  %31 = phi i32 [ %58, %57 ], [ %16, %29 ]
  %32 = phi i32 [ %59, %57 ], [ %17, %29 ]
  %33 = phi i32 [ %60, %57 ], [ %18, %29 ]
  %34 = phi i32 [ %43, %57 ], [ %19, %29 ]
  %35 = phi i32 [ %61, %57 ], [ %21, %29 ]
  %36 = phi i32 [ %42, %57 ], [ %25, %29 ]
  %37 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %36)  ; FirstbitLo(value)
  %38 = shl i32 %20, 5
  %39 = add i32 %37, %38
  %40 = and i32 %37, 31
  %41 = shl i32 1, %40
  %42 = xor i32 %41, %36
  %43 = add i32 %34, 1
  %44 = shl i32 %32, 3
  %45 = and i32 %44, 24
  %46 = shl i32 %39, %45
  %47 = or i32 %46, %33
  %48 = add i32 %32, 1
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %57, !dx.controlflow.hints !15

; <label>:50                                      ; preds = %30
  %51 = icmp eq i32 %31, 0
  br i1 %51, label %54, label %52, !dx.controlflow.hints !16

; <label>:52                                      ; preds = %50
  %53 = add i32 %31, %12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %53, i32 0, i32 %47, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %54

; <label>:54                                      ; preds = %52, %50
  %55 = phi i32 [ %35, %52 ], [ %47, %50 ]
  %56 = add i32 %31, 1
  br label %57

; <label>:57                                      ; preds = %54, %30
  %58 = phi i32 [ %56, %54 ], [ %31, %30 ]
  %59 = phi i32 [ 0, %54 ], [ %48, %30 ]
  %60 = phi i32 [ 0, %54 ], [ %47, %30 ]
  %61 = phi i32 [ %55, %54 ], [ %35, %30 ]
  %62 = icmp ne i32 %36, %41
  %63 = icmp ult i32 %58, 8
  %64 = and i1 %62, %63
  br i1 %64, label %30, label %65

; <label>:65                                      ; preds = %57
  br label %66

; <label>:66                                      ; preds = %65, %15
  %67 = phi i32 [ %16, %15 ], [ %58, %65 ]
  %68 = phi i32 [ %17, %15 ], [ %59, %65 ]
  %69 = phi i32 [ %18, %15 ], [ %60, %65 ]
  %70 = phi i32 [ %19, %15 ], [ %43, %65 ]
  %71 = phi i32 [ %21, %15 ], [ %61, %65 ]
  %72 = add nuw i32 %20, 1
  %73 = icmp eq i32 %72, %7
  br i1 %73, label %74, label %15

; <label>:74                                      ; preds = %66
  br label %75

; <label>:75                                      ; preds = %74, %0
  %76 = phi i32 [ 0, %0 ], [ %67, %74 ]
  %77 = phi i32 [ 1, %0 ], [ %68, %74 ]
  %78 = phi i32 [ 0, %0 ], [ %69, %74 ]
  %79 = phi i32 [ 0, %0 ], [ %70, %74 ]
  %80 = phi i32 [ 0, %0 ], [ %71, %74 ]
  %81 = icmp eq i32 %76, 0
  %82 = select i1 %81, i32 %78, i32 %80
  %83 = icmp ne i32 %77, 0
  %84 = xor i1 %81, true
  %85 = and i1 %83, %84
  br i1 %85, label %86, label %88, !dx.controlflow.hints !17

; <label>:86                                      ; preds = %75
  %87 = add i32 %76, %12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %87, i32 0, i32 %78, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %88

; <label>:88                                      ; preds = %86, %75
  %89 = or i32 %82, %79
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %12, i32 0, i32 %89, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !10, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !9}
!9 = !{i32 1, i32 4}
!10 = !{!11}
!11 = !{i32 0, %ConstantBufferWriteBitmask* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!12 = !{void ()* @cs_frustum_lights_list_from_mask, !"cs_frustum_lights_list_from_mask", null, !4, !13}
!13 = !{i32 0, i64 272, i32 4, !14}
!14 = !{i32 8, i32 8, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

