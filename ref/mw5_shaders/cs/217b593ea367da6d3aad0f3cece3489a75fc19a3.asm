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
; shader hash: 9481adf8444d91954df95535de28789b
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
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1            t13     1
;                                   texture    byte         r/o      T2            t14     1
;                                   texture    byte         r/o      T3            t16     1
;                                   texture  struct         r/o      T4            t17     1
;                                   texture    byte         r/o      T5            t18     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @triangle_expand_meshlet_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %11 = shl i32 %9, 2
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = and i32 %13, 65535
  %15 = lshr i32 %13, 16
  %16 = and i32 %15, 1023
  %17 = and i32 %13, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19, !dx.controlflow.hints !20

; <label>:19                                      ; preds = %0
  %20 = shl nuw nsw i32 %14, 4
  %21 = add nuw nsw i32 %20, 5767168
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = extractvalue %dx.types.ResRet.i32 %22, 2
  br label %32

; <label>:25                                      ; preds = %0
  %26 = mul nuw nsw i32 %14, 12
  %27 = add nuw nsw i32 %26, 1572864
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 1
  %30 = extractvalue %dx.types.ResRet.i32 %28, 2
  %31 = lshr i32 %29, 16
  br label %32

; <label>:32                                      ; preds = %25, %19
  %33 = phi i32 [ %24, %19 ], [ %30, %25 ]
  %34 = phi i32 [ %23, %19 ], [ %31, %25 ]
  %35 = icmp eq i32 %34, 16384
  br i1 %35, label %120, label %36, !dx.controlflow.hints !21

; <label>:36                                      ; preds = %32
  %37 = add i32 %33, %16
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %9, i32 0)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = extractvalue %dx.types.ResRet.i32 %38, 1
  %41 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %39)  ; Countbits(value)
  %42 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %40)  ; Countbits(value)
  %43 = sub i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %120, label %45, !dx.controlflow.hints !22

; <label>:45                                      ; preds = %36
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = icmp ult i32 %10, 64
  br i1 %48, label %49, label %120

; <label>:49                                      ; preds = %45
  %50 = lshr i32 %10, 5
  %51 = shl nuw nsw i32 %50, 2
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %9, i32 %51)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = and i32 %10, 31
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %10, 32
  %59 = add i32 %55, -1
  %60 = icmp eq i32 %58, 0
  %61 = and i32 %39, %59
  %62 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %61)  ; Countbits(value)
  %63 = and i32 %40, %59
  %64 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %63)  ; Countbits(value)
  %65 = add i32 %64, %41
  %66 = select i1 %60, i32 %62, i32 %65
  br i1 %57, label %120, label %67, !dx.controlflow.hints !23

; <label>:67                                      ; preds = %49
  %68 = mul i32 %10, 3
  %69 = add i32 %68, 416
  %70 = and i32 %69, -4
  %71 = shl i32 %37, 2
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = shl i32 %73, 5
  %75 = add i32 %74, %70
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = extractvalue %dx.types.ResRet.i32 %76, 1
  %79 = and i32 %10, 3
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81, !dx.controlflow.hints !24

; <label>:81                                      ; preds = %67
  %82 = icmp eq i32 %79, 1
  %83 = lshr i32 %77, 24
  br i1 %82, label %91, label %84, !dx.controlflow.hints !25

; <label>:84                                      ; preds = %81
  %85 = icmp eq i32 %79, 2
  %86 = lshr i32 %77, 16
  br i1 %85, label %89, label %87, !dx.controlflow.hints !26

; <label>:87                                      ; preds = %84
  %88 = lshr i32 %77, 8
  br label %98

; <label>:89                                      ; preds = %84
  %90 = and i32 %78, 255
  br label %98

; <label>:91                                      ; preds = %81
  %92 = lshr i32 %78, 8
  %93 = and i32 %92, 255
  br label %98

; <label>:94                                      ; preds = %67
  %95 = lshr i32 %77, 8
  %96 = lshr i32 %77, 16
  %97 = and i32 %96, 255
  br label %98

; <label>:98                                      ; preds = %94, %91, %89, %87
  %99 = phi i32 [ %77, %94 ], [ %83, %91 ], [ %86, %89 ], [ %88, %87 ]
  %100 = phi i32 [ %95, %94 ], [ %78, %91 ], [ %83, %89 ], [ %86, %87 ]
  %101 = phi i32 [ %97, %94 ], [ %93, %91 ], [ %90, %89 ], [ %83, %87 ]
  %102 = add i32 %66, %47
  %103 = mul i32 %102, 12
  %104 = add i32 %103, 12
  %105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.i32 %105, 1
  %107 = shl i32 %106, 2
  %108 = icmp ugt i32 %104, %107
  br i1 %108, label %120, label %109, !dx.controlflow.hints !27

; <label>:109                                     ; preds = %98
  %110 = shl i32 %9, 6
  %111 = and i32 %110, 16777152
  %112 = shl nuw i32 %101, 24
  %113 = or i32 %112, %111
  %114 = shl i32 %100, 24
  %115 = or i32 %114, %111
  %116 = and i32 %10, 63
  %117 = or i32 %116, %111
  %118 = shl i32 %99, 24
  %119 = or i32 %117, %118
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %103, i32 undef, i32 %119, i32 %115, i32 %113, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %120

; <label>:120                                     ; preds = %109, %98, %49, %45, %36, %32
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !15, null}
!5 = !{!6, !7, !8, !9, !10, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %"class.StructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 17, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 8}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!13 = !{!14}
!14 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16}
!16 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!17 = !{void ()* @triangle_expand_meshlet_pass, !"triangle_expand_meshlet_pass", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 64, i32 1, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

