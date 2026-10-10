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
; shader hash: f9fd184cb73aa5c8839618ee316d1d7f
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
;                                   texture  struct         r/o      T6            t19     1
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
%"class.StructuredBuffer<GPSortItem>" = type { %struct.GPSortItem }
%struct.GPSortItem = type { i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @sorted_triangle_expand_meshlet_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %10, i32 4)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = shl i32 %13, 2
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = and i32 %16, 65535
  %18 = lshr i32 %16, 16
  %19 = and i32 %18, 1023
  %20 = and i32 %16, 536870912
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22, !dx.controlflow.hints !21

; <label>:22                                      ; preds = %0
  %23 = shl nuw nsw i32 %17, 4
  %24 = add nuw nsw i32 %23, 5767168
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %24, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = extractvalue %dx.types.ResRet.i32 %25, 2
  br label %35

; <label>:28                                      ; preds = %0
  %29 = mul nuw nsw i32 %17, 12
  %30 = add nuw nsw i32 %29, 1572864
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 1
  %33 = extractvalue %dx.types.ResRet.i32 %31, 2
  %34 = lshr i32 %32, 16
  br label %35

; <label>:35                                      ; preds = %28, %22
  %36 = phi i32 [ %27, %22 ], [ %33, %28 ]
  %37 = phi i32 [ %26, %22 ], [ %34, %28 ]
  %38 = icmp eq i32 %37, 16384
  br i1 %38, label %124, label %39, !dx.controlflow.hints !22

; <label>:39                                      ; preds = %35
  %40 = add i32 %36, %19
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %10, i32 0)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %42)  ; Countbits(value)
  %45 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %43)  ; Countbits(value)
  %46 = sub i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %124, label %48, !dx.controlflow.hints !23

; <label>:48                                      ; preds = %39
  %49 = shl i32 %10, 2
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = icmp ult i32 %11, 64
  br i1 %52, label %53, label %124

; <label>:53                                      ; preds = %48
  %54 = lshr i32 %11, 5
  %55 = shl nuw nsw i32 %54, 2
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %10, i32 %55)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = and i32 %11, 31
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %11, 32
  %63 = add i32 %59, -1
  %64 = icmp eq i32 %62, 0
  %65 = and i32 %42, %63
  %66 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %65)  ; Countbits(value)
  %67 = and i32 %43, %63
  %68 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %67)  ; Countbits(value)
  %69 = add i32 %68, %44
  %70 = select i1 %64, i32 %66, i32 %69
  br i1 %61, label %124, label %71, !dx.controlflow.hints !24

; <label>:71                                      ; preds = %53
  %72 = mul i32 %11, 3
  %73 = add i32 %72, 416
  %74 = and i32 %73, -4
  %75 = shl i32 %40, 2
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = shl i32 %77, 5
  %79 = add i32 %78, %74
  %80 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %79, i32 undef)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = extractvalue %dx.types.ResRet.i32 %80, 1
  %83 = and i32 %11, 3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %98, label %85, !dx.controlflow.hints !25

; <label>:85                                      ; preds = %71
  %86 = icmp eq i32 %83, 1
  %87 = lshr i32 %81, 24
  br i1 %86, label %95, label %88, !dx.controlflow.hints !26

; <label>:88                                      ; preds = %85
  %89 = icmp eq i32 %83, 2
  %90 = lshr i32 %81, 16
  br i1 %89, label %93, label %91, !dx.controlflow.hints !27

; <label>:91                                      ; preds = %88
  %92 = lshr i32 %81, 8
  br label %102

; <label>:93                                      ; preds = %88
  %94 = and i32 %82, 255
  br label %102

; <label>:95                                      ; preds = %85
  %96 = lshr i32 %82, 8
  %97 = and i32 %96, 255
  br label %102

; <label>:98                                      ; preds = %71
  %99 = lshr i32 %81, 8
  %100 = lshr i32 %81, 16
  %101 = and i32 %100, 255
  br label %102

; <label>:102                                     ; preds = %98, %95, %93, %91
  %103 = phi i32 [ %81, %98 ], [ %87, %95 ], [ %90, %93 ], [ %92, %91 ]
  %104 = phi i32 [ %99, %98 ], [ %82, %95 ], [ %87, %93 ], [ %90, %91 ]
  %105 = phi i32 [ %101, %98 ], [ %97, %95 ], [ %94, %93 ], [ %87, %91 ]
  %106 = add i32 %70, %51
  %107 = mul i32 %106, 12
  %108 = add i32 %107, 12
  %109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.i32 %109, 1
  %111 = shl i32 %110, 2
  %112 = icmp ugt i32 %108, %111
  br i1 %112, label %124, label %113, !dx.controlflow.hints !28

; <label>:113                                     ; preds = %102
  %114 = shl i32 %13, 6
  %115 = and i32 %114, 16777152
  %116 = shl nuw i32 %105, 24
  %117 = or i32 %116, %115
  %118 = shl i32 %104, 24
  %119 = or i32 %118, %115
  %120 = and i32 %11, 63
  %121 = or i32 %115, %120
  %122 = shl i32 %103, 24
  %123 = or i32 %121, %122
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %107, i32 undef, i32 %123, i32 %119, i32 %117, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %124

; <label>:124                                     ; preds = %113, %102, %53, %48, %39, %35
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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !16, null}
!5 = !{!6, !7, !8, !9, !10, !12, !13}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 14, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %"class.StructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 17, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 8}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.StructuredBuffer<GPSortItem>"* undef, !"", i32 0, i32 19, i32 1, i32 12, i32 0, !11}
!14 = !{!15}
!15 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{!17}
!17 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!18 = !{void ()* @sorted_triangle_expand_meshlet_pass, !"sorted_triangle_expand_meshlet_pass", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}

