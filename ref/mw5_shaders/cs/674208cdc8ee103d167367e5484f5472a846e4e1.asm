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
; shader hash: fbc5296e9d3a91a9ac1c75a231300b5a
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
%"class.RWStructuredBuffer<CSMNodePlanes>" = type { %struct.CSMNodePlanes }
%struct.CSMNodePlanes = type { <4 x float>, float, i32, i32, i32 }
%CSMConstants = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x float> }

define void @prepare_data_layout() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = shl i32 %3, 2
  %5 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6 = extractvalue %dx.types.CBufRet.i32 %5, 1
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %133, !dx.controlflow.hints !13

; <label>:8                                       ; preds = %0
  %9 = extractvalue %dx.types.CBufRet.i32 %5, 0
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %9, %12
  %14 = and i32 %3, 1073741823
  br i1 %13, label %15, label %51, !dx.controlflow.hints !14

; <label>:15                                      ; preds = %8
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %14, i32 28)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = icmp eq i32 %17, 16777215
  br i1 %18, label %133, label %19, !dx.controlflow.hints !15

; <label>:19                                      ; preds = %15
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %14, i32 20)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = lshr i32 %21, 8
  %23 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %22)  ; Countbits(value)
  %24 = sub i32 4, %23
  %25 = mul i32 %24, 6
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %14, i32 24)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = add i32 %27, %25
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %14, i32 24, i32 %28, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = add i32 %30, -2
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %133

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
  %43 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %42, i32 24, i32 undef, i32 %25)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %44 = add i32 %39, %40
  %45 = lshr i32 %40, 2
  %46 = add nuw nsw i32 %38, 1
  %47 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.i32 %47, 1
  %49 = add i32 %48, -2
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %36, label %131

; <label>:51                                      ; preds = %8
  %52 = extractvalue %dx.types.CBufRet.i32 %5, 2
  %53 = add i32 %6, %52
  %54 = add i32 %53, %14
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %54, i32 28)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = icmp eq i32 %56, 16777215
  br i1 %57, label %133, label %58, !dx.controlflow.hints !16

; <label>:58                                      ; preds = %51
  %59 = add i32 %52, %4
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %59, i32 20)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  %64 = shl i32 %61, 1
  %65 = and i32 %64, 4
  %66 = xor i32 %65, 4
  %67 = add nuw nsw i32 %66, 6
  %68 = select i1 %63, i32 %67, i32 %66
  %69 = add i32 %59, 1
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %69, i32 20)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  %74 = shl i32 %71, 1
  %75 = and i32 %74, 4
  %76 = xor i32 %75, 4
  %77 = add nuw nsw i32 %76, 6
  %78 = select i1 %73, i32 %77, i32 %76
  %79 = add nuw nsw i32 %78, %68
  %80 = add i32 %59, 2
  %81 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %80, i32 20)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 0
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  %85 = shl i32 %82, 1
  %86 = and i32 %85, 4
  %87 = xor i32 %86, 4
  %88 = add nuw nsw i32 %87, 6
  %89 = select i1 %84, i32 %88, i32 %87
  %90 = add nuw nsw i32 %79, %89
  %91 = add i32 %59, 3
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %91, i32 20)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  %96 = shl i32 %93, 1
  %97 = and i32 %96, 4
  %98 = xor i32 %97, 4
  %99 = add nuw nsw i32 %98, 6
  %100 = select i1 %95, i32 %99, i32 %98
  %101 = add nuw nsw i32 %90, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %133, label %103, !dx.controlflow.hints !17

; <label>:103                                     ; preds = %58
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %54, i32 24)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = add i32 %105, %101
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %54, i32 24, i32 %106, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %107 = add nsw i32 %9, 1
  %108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.i32 %108, 1
  %110 = add i32 %109, -2
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %133

; <label>:112                                     ; preds = %103
  %113 = lshr i32 %6, 2
  %114 = lshr i32 %6, 4
  %115 = add i32 %113, %53
  br label %116

; <label>:116                                     ; preds = %116, %112
  %117 = phi i32 [ %107, %112 ], [ %126, %116 ]
  %118 = phi i32 [ %114, %112 ], [ %125, %116 ]
  %119 = phi i32 [ %14, %112 ], [ %121, %116 ]
  %120 = phi i32 [ %115, %112 ], [ %124, %116 ]
  %121 = lshr i32 %119, 2
  %122 = add i32 %121, %120
  %123 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %122, i32 24, i32 undef, i32 %101)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %124 = add i32 %120, %118
  %125 = lshr i32 %118, 2
  %126 = add nsw i32 %117, 1
  %127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.i32 %127, 1
  %129 = add i32 %128, -2
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %116, label %132

; <label>:131                                     ; preds = %36
  br label %133

; <label>:132                                     ; preds = %116
  br label %133

; <label>:133                                     ; preds = %132, %131, %103, %58, %51, %19, %15, %0
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
!6 = !{i32 0, %"class.RWStructuredBuffer<CSMNodePlanes>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
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

