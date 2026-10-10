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
; shader hash: 8f33a44ad3684a57297a219ac947f9dc
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
;   [64 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.RWStructuredBuffer<CSMNodeIntervals>" = type { %struct.CSMNodeIntervals }
%struct.CSMNodeIntervals = type { <2 x float>, i32, i32, i32, i32, i32, i32 }
%CSMConstants = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x float> }

define void @prepare_data_layout() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = shl i32 %3, 2
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 1
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %129, !dx.controlflow.hints !13

; <label>:8                                       ; preds = %0
  %9 = extractvalue %dx.types.CBufRet.i32 %5, 0
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %9, %12
  %14 = and i32 %3, 1073741823
  br i1 %13, label %15, label %51, !dx.controlflow.hints !14

; <label>:15                                      ; preds = %8
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %14, i32 16)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = icmp eq i32 %17, 16777215
  br i1 %18, label %129, label %19, !dx.controlflow.hints !15

; <label>:19                                      ; preds = %15
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %14, i32 8)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = lshr i32 %21, 8
  %23 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %22)  ; Countbits(value)
  %24 = sub i32 4, %23
  %25 = shl i32 %24, 1
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %14, i32 12)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = add i32 %27, %25
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %14, i32 12, i32 %28, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = add i32 %30, -2
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %129

; <label>:33                                      ; preds = %19
  %34 = lshr i32 %6, 4
  %35 = lshr i32 %6, 2
  br label %36

; <label>:36                                      ; preds = %36, %33
  %37 = phi i32 [ %14, %33 ], [ %41, %36 ]
  %38 = phi i32 [ 0, %33 ], [ %46, %36 ]
  %39 = phi i32 [ %35, %33 ], [ %44, %36 ]
  %40 = phi i32 [ %34, %33 ], [ %45, %36 ]
  %41 = lshr i32 %37, 2
  %42 = add i32 %39, %41
  %43 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %42, i32 12, i32 undef, i32 %25)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %44 = add i32 %39, %40
  %45 = lshr i32 %40, 2
  %46 = add nuw nsw i32 %38, 1
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 1
  %49 = add i32 %48, -2
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %36, label %127

; <label>:51                                      ; preds = %8
  %52 = extractvalue %dx.types.CBufRet.i32 %5, 2
  %53 = add i32 %6, %52
  %54 = add i32 %53, %14
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %54, i32 16)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = icmp eq i32 %56, 16777215
  br i1 %57, label %129, label %58, !dx.controlflow.hints !16

; <label>:58                                      ; preds = %51
  %59 = add i32 %52, %4
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %59, i32 8)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = shl i32 %61, 1
  %63 = and i32 %62, 4
  %64 = shl i32 %61, 1
  %65 = and i32 %64, 2
  %66 = xor i32 %65, 6
  %67 = xor i32 %63, %66
  %68 = add i32 %59, 1
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %68, i32 8)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = shl i32 %70, 1
  %72 = and i32 %71, 4
  %73 = shl i32 %70, 1
  %74 = and i32 %73, 2
  %75 = xor i32 %74, 6
  %76 = xor i32 %72, %75
  %77 = add nuw nsw i32 %76, %67
  %78 = add i32 %59, 2
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %78, i32 8)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = shl i32 %80, 1
  %82 = and i32 %81, 4
  %83 = shl i32 %80, 1
  %84 = and i32 %83, 2
  %85 = xor i32 %84, 6
  %86 = xor i32 %82, %85
  %87 = add nuw nsw i32 %77, %86
  %88 = add i32 %59, 3
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %88, i32 8)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = shl i32 %90, 1
  %92 = and i32 %91, 4
  %93 = shl i32 %90, 1
  %94 = and i32 %93, 2
  %95 = xor i32 %94, 6
  %96 = xor i32 %92, %95
  %97 = add nuw nsw i32 %87, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %129, label %99, !dx.controlflow.hints !17

; <label>:99                                      ; preds = %58
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %54, i32 12)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = add i32 %101, %97
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %54, i32 12, i32 %102, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %103 = add nsw i32 %9, 1
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.i32 %104, 1
  %106 = add i32 %105, -2
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %129

; <label>:108                                     ; preds = %99
  %109 = lshr i32 %6, 2
  %110 = lshr i32 %6, 4
  %111 = add i32 %109, %53
  br label %112

; <label>:112                                     ; preds = %112, %108
  %113 = phi i32 [ %103, %108 ], [ %122, %112 ]
  %114 = phi i32 [ %110, %108 ], [ %121, %112 ]
  %115 = phi i32 [ %14, %108 ], [ %117, %112 ]
  %116 = phi i32 [ %111, %108 ], [ %120, %112 ]
  %117 = lshr i32 %115, 2
  %118 = add i32 %117, %116
  %119 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %118, i32 12, i32 undef, i32 %97)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %120 = add i32 %116, %114
  %121 = lshr i32 %114, 2
  %122 = add nsw i32 %113, 1
  %123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.i32 %123, 1
  %125 = add i32 %124, -2
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %112, label %128

; <label>:127                                     ; preds = %36
  br label %129

; <label>:128                                     ; preds = %112
  br label %129

; <label>:129                                     ; preds = %128, %127, %99, %58, %51, %19, %15, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !8, null}
!5 = !{!6}
!6 = !{i32 0, %"class.RWStructuredBuffer<CSMNodeIntervals>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!7 = !{i32 1, i32 32}
!8 = !{!9}
!9 = !{i32 0, %CSMConstants* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!10 = !{void ()* @prepare_data_layout, !"prepare_data_layout", null, !4, !11}
!11 = !{i32 0, i64 272, i32 4, !12}
!12 = !{i32 64, i32 1, i32 1}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

