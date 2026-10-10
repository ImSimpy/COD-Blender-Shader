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
; shader hash: 50af52650e3e3d8136b1504a5ef78fbd
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
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1            t16     1
;                                   texture  struct         r/o      T2            t17     1
;                                   texture    byte         r/o      T3            t18     1
;                                   texture  struct         r/o      T4            t19     1
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
%TriCullIndirectArgs = type { i32, i32, i32, i32 }

define void @sorted_triangle_expand_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %11 = and i32 %10, 15
  %12 = shl i32 %9, 3
  %13 = lshr i32 %10, 4
  %14 = add i32 %13, %12
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %14, i32 4)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = shl i32 %16, 2
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %17, i32 undef)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = and i32 %19, 65535
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = icmp ult i32 %14, %22
  br i1 %23, label %24, label %157, !dx.controlflow.hints !20

; <label>:24                                      ; preds = %0
  %25 = and i32 %19, 536870912
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27, !dx.controlflow.hints !21

; <label>:27                                      ; preds = %24
  %28 = shl nuw nsw i32 %20, 4
  %29 = add nuw nsw i32 %28, 5767168
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  br label %38

; <label>:32                                      ; preds = %24
  %33 = mul nuw nsw i32 %20, 12
  %34 = add nuw nsw i32 %33, 1572864
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 1
  %37 = lshr i32 %36, 16
  br label %38

; <label>:38                                      ; preds = %32, %27
  %39 = phi i32 [ %31, %27 ], [ %37, %32 ]
  %40 = icmp eq i32 %39, 16384
  br i1 %40, label %157, label %41, !dx.controlflow.hints !22

; <label>:41                                      ; preds = %38
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %43)  ; Countbits(value)
  %46 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %44)  ; Countbits(value)
  %47 = sub i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %157, label %49, !dx.controlflow.hints !23

; <label>:49                                      ; preds = %41
  %50 = shl i32 %14, 2
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = shl i32 1, %11
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %76, label %58, !dx.controlflow.hints !24

; <label>:58                                      ; preds = %49
  %59 = add i32 %55, -1
  %60 = and i32 %43, %59
  %61 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %60)  ; Countbits(value)
  %62 = add i32 %61, %52
  %63 = shl i32 %62, 2
  %64 = add i32 %63, 4
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 1
  %67 = shl i32 %66, 2
  %68 = icmp ugt i32 %64, %67
  br i1 %68, label %76, label %69, !dx.controlflow.hints !25

; <label>:69                                      ; preds = %58
  %70 = shl i32 %10, 3
  %71 = and i32 %70, 120
  %72 = shl i32 %16, 9
  %73 = and i32 %72, 134217216
  %74 = or i32 %71, %73
  %75 = or i32 %74, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %63, i32 undef, i32 %75, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %76

; <label>:76                                      ; preds = %69, %58, %49
  %77 = or i32 %11, 16
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = shl i32 1, %77
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %102, label %83, !dx.controlflow.hints !24

; <label>:83                                      ; preds = %76
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = add i32 %80, -1
  %87 = and i32 %85, %86
  %88 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %87)  ; Countbits(value)
  %89 = add i32 %88, %52
  %90 = shl i32 %89, 2
  %91 = add i32 %90, 4
  %92 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.i32 %92, 1
  %94 = shl i32 %93, 2
  %95 = icmp ugt i32 %91, %94
  br i1 %95, label %102, label %96, !dx.controlflow.hints !25

; <label>:96                                      ; preds = %83
  %97 = shl nuw nsw i32 %77, 3
  %98 = shl i32 %16, 9
  %99 = and i32 %98, 134217216
  %100 = or i32 %97, %99
  %101 = or i32 %100, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %90, i32 undef, i32 %101, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %102

; <label>:102                                     ; preds = %96, %83, %76
  %103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 4)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.i32 %103, 0
  %105 = and i32 %104, %55
  %106 = icmp eq i32 %105, 0
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  br i1 %106, label %130, label %108, !dx.controlflow.hints !24

; <label>:108                                     ; preds = %102
  %109 = extractvalue %dx.types.ResRet.i32 %107, 0
  %110 = add i32 %55, -1
  %111 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %109)  ; Countbits(value)
  %112 = extractvalue %dx.types.ResRet.i32 %107, 1
  %113 = and i32 %112, %110
  %114 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %113)  ; Countbits(value)
  %115 = add i32 %111, %52
  %116 = add i32 %115, %114
  %117 = shl i32 %116, 2
  %118 = add i32 %117, 4
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 1
  %121 = shl i32 %120, 2
  %122 = icmp ugt i32 %118, %121
  br i1 %122, label %130, label %123, !dx.controlflow.hints !25

; <label>:123                                     ; preds = %108
  %124 = shl nuw nsw i32 %77, 3
  %125 = add nuw nsw i32 %124, 128
  %126 = shl i32 %16, 9
  %127 = and i32 %126, 134217216
  %128 = or i32 %125, %127
  %129 = or i32 %128, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %117, i32 undef, i32 %129, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %130

; <label>:130                                     ; preds = %123, %108, %102
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 4)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = and i32 %132, %80
  %134 = icmp eq i32 %133, 0
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  br i1 %134, label %157, label %136, !dx.controlflow.hints !24

; <label>:136                                     ; preds = %130
  %137 = extractvalue %dx.types.ResRet.i32 %135, 0
  %138 = add i32 %80, -1
  %139 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %137)  ; Countbits(value)
  %140 = extractvalue %dx.types.ResRet.i32 %135, 1
  %141 = and i32 %140, %138
  %142 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %141)  ; Countbits(value)
  %143 = add i32 %139, %52
  %144 = add i32 %143, %142
  %145 = shl i32 %144, 2
  %146 = add i32 %145, 4
  %147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.i32 %147, 1
  %149 = shl i32 %148, 2
  %150 = icmp ugt i32 %146, %149
  br i1 %150, label %157, label %151, !dx.controlflow.hints !25

; <label>:151                                     ; preds = %136
  %152 = shl nuw nsw i32 %11, 3
  %153 = shl i32 %16, 9
  %154 = and i32 %153, 134217216
  %155 = or i32 %152, %154
  %156 = or i32 %155, 385
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %145, i32 undef, i32 %156, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %157

; <label>:157                                     ; preds = %151, %136, %130, %41, %38, %0
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
!4 = !{!5, !12, !14, null}
!5 = !{!6, !7, !8, !10, !11}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.StructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 17, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.StructuredBuffer<GPSortItem>"* undef, !"", i32 0, i32 19, i32 1, i32 12, i32 0, !9}
!12 = !{!13}
!13 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{!15, !16}
!15 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!16 = !{i32 1, %TriCullIndirectArgs* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!17 = !{void ()* @sorted_triangle_expand_pass, !"sorted_triangle_expand_pass", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 128, i32 1, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

