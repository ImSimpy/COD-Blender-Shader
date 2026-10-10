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
; shader hash: 65ff868e99d095023619a7e3fbb77e03
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
  %61 = phi i32 [ %59, %56 ], [ 0, %0 ]
  %62 = icmp ult i32 %54, %14
  br i1 %62, label %63, label %67, !dx.controlflow.hints !16

; <label>:63                                      ; preds = %60
  %64 = add i32 %54, %19
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %64, i32 0)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  br label %67

; <label>:67                                      ; preds = %63, %60
  %68 = phi i32 [ %66, %63 ], [ 0, %60 ]
  %69 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair16_16@@A.0", i32 0, i32 %5
  store i32 %61, i32 addrspace(3)* %69, align 4
  %70 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair16_16@@A.0", i32 0, i32 %34
  store i32 %68, i32 addrspace(3)* %70, align 4
  %71 = icmp ugt i32 %15, %17
  br i1 %71, label %124, label %72

; <label>:72                                      ; preds = %67
  br label %73

; <label>:73                                      ; preds = %119, %72
  %74 = phi i32 [ %121, %119 ], [ %15, %72 ]
  %75 = phi i32 [ %103, %119 ], [ %61, %72 ]
  %76 = phi i32 [ %120, %119 ], [ %68, %72 ]
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
  %89 = and i32 %75, 65535
  %90 = and i32 %83, 65535
  %91 = icmp ult i32 %89, %90
  %92 = xor i32 %83, %75
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 0
  %95 = xor i1 %88, %91
  %96 = zext i1 %95 to i32
  %97 = zext i1 %94 to i32
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101, !dx.controlflow.hints !17

; <label>:101                                     ; preds = %73
  store i32 %75, i32 addrspace(3)* %82, align 4
  br label %102

; <label>:102                                     ; preds = %101, %73
  %103 = phi i32 [ %83, %101 ], [ %75, %73 ]
  %104 = and i32 %79, %34
  %105 = icmp ugt i32 %104, %80
  %106 = and i32 %76, 65535
  %107 = and i32 %86, 65535
  %108 = icmp ult i32 %106, %107
  %109 = xor i32 %86, %76
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 0
  %112 = xor i1 %105, %108
  %113 = zext i1 %112 to i32
  %114 = zext i1 %111 to i32
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118, !dx.controlflow.hints !18

; <label>:118                                     ; preds = %102
  store i32 %76, i32 addrspace(3)* %85, align 4
  br label %119

; <label>:119                                     ; preds = %118, %102
  %120 = phi i32 [ %86, %118 ], [ %76, %102 ]
  %121 = add i32 %74, 1
  %122 = icmp ugt i32 %121, %17
  br i1 %122, label %123, label %73

; <label>:123                                     ; preds = %119
  br label %124

; <label>:124                                     ; preds = %123, %67
  %125 = phi i32 [ %61, %67 ], [ %103, %123 ]
  %126 = phi i32 [ %68, %67 ], [ %120, %123 ]
  %127 = add i32 %50, %19
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %127, i32 0, i32 %125, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %128 = add i32 %54, %19
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %128, i32 0, i32 %126, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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

