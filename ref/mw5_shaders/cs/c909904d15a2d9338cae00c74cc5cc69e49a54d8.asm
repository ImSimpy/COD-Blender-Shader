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
; shader hash: 07e41ee4d3dec59242ff05ccf839b7f9
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
%TriCullIndirectArgs = type { i32, i32, i32, i32 }

define void @triangle_expand_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = and i32 %9, 15
  %11 = shl i32 %8, 3
  %12 = lshr i32 %9, 4
  %13 = add i32 %12, %11
  %14 = shl i32 %13, 2
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = and i32 %16, 65535
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %20 = icmp ult i32 %13, %19
  br i1 %20, label %21, label %153, !dx.controlflow.hints !19

; <label>:21                                      ; preds = %0
  %22 = and i32 %16, 536870912
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24, !dx.controlflow.hints !20

; <label>:24                                      ; preds = %21
  %25 = shl nuw nsw i32 %17, 4
  %26 = add nuw nsw i32 %25, 5767168
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  br label %35

; <label>:29                                      ; preds = %21
  %30 = mul nuw nsw i32 %17, 12
  %31 = add nuw nsw i32 %30, 1572864
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 1
  %34 = lshr i32 %33, 16
  br label %35

; <label>:35                                      ; preds = %29, %24
  %36 = phi i32 [ %28, %24 ], [ %34, %29 ]
  %37 = icmp eq i32 %36, 16384
  br i1 %37, label %153, label %38, !dx.controlflow.hints !21

; <label>:38                                      ; preds = %35
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %40)  ; Countbits(value)
  %43 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %41)  ; Countbits(value)
  %44 = sub i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %153, label %46, !dx.controlflow.hints !22

; <label>:46                                      ; preds = %38
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = shl i32 1, %10
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %72, label %54, !dx.controlflow.hints !23

; <label>:54                                      ; preds = %46
  %55 = add i32 %51, -1
  %56 = and i32 %40, %55
  %57 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %56)  ; Countbits(value)
  %58 = add i32 %57, %48
  %59 = shl i32 %58, 2
  %60 = add i32 %59, 4
  %61 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.i32 %61, 1
  %63 = shl i32 %62, 2
  %64 = icmp ugt i32 %60, %63
  br i1 %64, label %72, label %65, !dx.controlflow.hints !24

; <label>:65                                      ; preds = %54
  %66 = shl i32 %9, 3
  %67 = and i32 %66, 120
  %68 = shl i32 %13, 9
  %69 = and i32 %68, 134217216
  %70 = or i32 %67, %69
  %71 = or i32 %70, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %59, i32 undef, i32 %71, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %72

; <label>:72                                      ; preds = %65, %54, %46
  %73 = or i32 %10, 16
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = shl i32 1, %73
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79, !dx.controlflow.hints !23

; <label>:79                                      ; preds = %72
  %80 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = add i32 %76, -1
  %83 = and i32 %81, %82
  %84 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %83)  ; Countbits(value)
  %85 = add i32 %84, %48
  %86 = shl i32 %85, 2
  %87 = add i32 %86, 4
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 1
  %90 = shl i32 %89, 2
  %91 = icmp ugt i32 %87, %90
  br i1 %91, label %98, label %92, !dx.controlflow.hints !24

; <label>:92                                      ; preds = %79
  %93 = shl nuw nsw i32 %73, 3
  %94 = shl i32 %13, 9
  %95 = and i32 %94, 134217216
  %96 = or i32 %93, %95
  %97 = or i32 %96, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %86, i32 undef, i32 %97, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %98

; <label>:98                                      ; preds = %92, %79, %72
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 4)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 0
  %101 = and i32 %100, %51
  %102 = icmp eq i32 %101, 0
  %103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  br i1 %102, label %126, label %104, !dx.controlflow.hints !23

; <label>:104                                     ; preds = %98
  %105 = extractvalue %dx.types.ResRet.i32 %103, 0
  %106 = add i32 %51, -1
  %107 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %105)  ; Countbits(value)
  %108 = extractvalue %dx.types.ResRet.i32 %103, 1
  %109 = and i32 %108, %106
  %110 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %109)  ; Countbits(value)
  %111 = add i32 %107, %48
  %112 = add i32 %111, %110
  %113 = shl i32 %112, 2
  %114 = add i32 %113, 4
  %115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.i32 %115, 1
  %117 = shl i32 %116, 2
  %118 = icmp ugt i32 %114, %117
  br i1 %118, label %126, label %119, !dx.controlflow.hints !24

; <label>:119                                     ; preds = %104
  %120 = shl nuw nsw i32 %73, 3
  %121 = add nuw nsw i32 %120, 128
  %122 = shl i32 %13, 9
  %123 = and i32 %122, 134217216
  %124 = or i32 %123, %121
  %125 = or i32 %124, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %113, i32 undef, i32 %125, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %126

; <label>:126                                     ; preds = %119, %104, %98
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 4)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %128, %76
  %130 = icmp eq i32 %129, 0
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  br i1 %130, label %153, label %132, !dx.controlflow.hints !23

; <label>:132                                     ; preds = %126
  %133 = extractvalue %dx.types.ResRet.i32 %131, 0
  %134 = add i32 %76, -1
  %135 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %133)  ; Countbits(value)
  %136 = extractvalue %dx.types.ResRet.i32 %131, 1
  %137 = and i32 %136, %134
  %138 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %137)  ; Countbits(value)
  %139 = add i32 %135, %48
  %140 = add i32 %139, %138
  %141 = shl i32 %140, 2
  %142 = add i32 %141, 4
  %143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.i32 %143, 1
  %145 = shl i32 %144, 2
  %146 = icmp ugt i32 %142, %145
  br i1 %146, label %153, label %147, !dx.controlflow.hints !24

; <label>:147                                     ; preds = %132
  %148 = shl nuw nsw i32 %10, 3
  %149 = shl i32 %13, 9
  %150 = and i32 %149, 134217216
  %151 = or i32 %148, %150
  %152 = or i32 %151, 385
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %141, i32 undef, i32 %152, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %153

; <label>:153                                     ; preds = %147, %132, %126, %38, %35, %0
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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !13, null}
!5 = !{!6, !7, !8, !10}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.StructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 17, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!11 = !{!12}
!12 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{!14, !15}
!14 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!15 = !{i32 1, %TriCullIndirectArgs* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!16 = !{void ()* @triangle_expand_pass, !"triangle_expand_pass", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 128, i32 1, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

