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
; shader hash: e6f50978746464fa29518ee9de0880f7
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
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t0     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<sortPair16_16>" = type { %struct.sortPair16_16 }
%struct.sortPair16_16 = type { i32 }
%SortBaseConst = type { [3 x <4 x i32>] }

@"\01?tgArray@@3PAUsortPair16_16@@A.0" = addrspace(3) global [1024 x i32] undef, align 4

define void @bitonic_sort() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %8 = extractvalue %dx.types.CBufRet.i32 %6, 1
  %9 = extractvalue %dx.types.CBufRet.i32 %6, 2
  %10 = extractvalue %dx.types.CBufRet.i32 %6, 3
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %14 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %15 = extractvalue %dx.types.CBufRet.i32 %11, 3
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %18 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %19 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %20 = add i32 %18, %4
  %21 = and i32 %7, 31
  %22 = shl i32 %20, %21
  %23 = shl i32 1, %21
  %24 = add i32 %23, -1
  %25 = and i32 %9, 31
  %26 = shl i32 1, %25
  %27 = add i32 %26, -1
  %28 = and i32 %22, %27
  %29 = sub i32 0, %26
  %30 = and i32 %22, %29
  %31 = and i32 %10, 31
  %32 = shl i32 %30, %31
  %33 = or i32 %32, %28
  %34 = add i32 %5, 512
  %35 = and i32 %24, %5
  %36 = sub i32 0, %23
  %37 = and i32 %5, %36
  %38 = and i32 %8, 31
  %39 = shl i32 %37, %38
  %40 = or i32 %35, %39
  %41 = and i32 %24, %34
  %42 = and i32 %34, %36
  %43 = shl i32 %42, %38
  %44 = or i32 %41, %43
  %45 = add i32 %33, %40
  %46 = add i32 %33, %44
  %47 = and i32 %45, %13
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %48, i32 %12, i32 0
  %50 = xor i32 %49, %45
  %51 = and i32 %46, %13
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %52, i32 %12, i32 0
  %54 = xor i32 %53, %46
  %55 = icmp ult i32 %50, %14
  br i1 %55, label %56, label %60, !dx.controlflow.hints !15

; <label>:56                                      ; preds = %0
  %57 = add i32 %50, %19
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %57, i32 0)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  br label %60

; <label>:60                                      ; preds = %56, %0
  %61 = phi i32 [ %59, %56 ], [ -1, %0 ]
  %62 = icmp ult i32 %54, %14
  br i1 %62, label %63, label %67, !dx.controlflow.hints !16

; <label>:63                                      ; preds = %60
  %64 = add i32 %54, %19
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %64, i32 0)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  br label %67

; <label>:67                                      ; preds = %63, %60
  %68 = phi i32 [ %66, %63 ], [ -1, %60 ]
  %69 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair16_16@@A.0", i32 0, i32 %5
  store i32 %61, i32 addrspace(3)* %69, align 4
  %70 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair16_16@@A.0", i32 0, i32 %34
  store i32 %68, i32 addrspace(3)* %70, align 4
  %71 = icmp ugt i32 %15, %17
  br i1 %71, label %116, label %72

; <label>:72                                      ; preds = %67
  br label %73

; <label>:73                                      ; preds = %111, %72
  %74 = phi i32 [ %113, %111 ], [ %15, %72 ]
  %75 = phi i32 [ %99, %111 ], [ %61, %72 ]
  %76 = phi i32 [ %112, %111 ], [ %68, %72 ]
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %74, i32 0)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = and i32 %78, 2147483647
  %80 = lshr i32 %79, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %81 = xor i32 %79, %5
  %82 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair16_16@@A.0", i32 0, i32 %81
  %83 = load i32, i32 addrspace(3)* %82, align 4
  %84 = xor i32 %79, %34
  %85 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair16_16@@A.0", i32 0, i32 %84
  %86 = load i32, i32 addrspace(3)* %85, align 4
  %87 = and i32 %79, %5
  %88 = icmp ugt i32 %87, %80
  %89 = icmp ugt i32 %75, %83
  %90 = icmp eq i32 %75, %83
  %91 = xor i1 %89, %88
  %92 = zext i1 %91 to i32
  %93 = zext i1 %90 to i32
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97, !dx.controlflow.hints !17

; <label>:97                                      ; preds = %73
  store i32 %75, i32 addrspace(3)* %82, align 4
  br label %98

; <label>:98                                      ; preds = %97, %73
  %99 = phi i32 [ %83, %97 ], [ %75, %73 ]
  %100 = and i32 %79, %34
  %101 = icmp ugt i32 %100, %80
  %102 = icmp ugt i32 %76, %86
  %103 = icmp eq i32 %76, %86
  %104 = xor i1 %101, %102
  %105 = zext i1 %104 to i32
  %106 = zext i1 %103 to i32
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110, !dx.controlflow.hints !18

; <label>:110                                     ; preds = %98
  store i32 %76, i32 addrspace(3)* %85, align 4
  br label %111

; <label>:111                                     ; preds = %110, %98
  %112 = phi i32 [ %86, %110 ], [ %76, %98 ]
  %113 = add i32 %74, 1
  %114 = icmp ugt i32 %113, %17
  br i1 %114, label %115, label %73

; <label>:115                                     ; preds = %111
  br label %116

; <label>:116                                     ; preds = %115, %67
  %117 = phi i32 [ %61, %67 ], [ %99, %115 ]
  %118 = phi i32 [ %68, %67 ], [ %112, %115 ]
  %119 = add i32 %50, %19
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %119, i32 0, i32 %117, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %120 = add i32 %54, %19
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %120, i32 0, i32 %118, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

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
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{!9}
!9 = !{i32 0, %"class.RWStructuredBuffer<sortPair16_16>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %SortBaseConst* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!12 = !{void ()* @bitonic_sort, !"bitonic_sort", null, !4, !13}
!13 = !{i32 0, i64 272, i32 4, !14}
!14 = !{i32 512, i32 1, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

