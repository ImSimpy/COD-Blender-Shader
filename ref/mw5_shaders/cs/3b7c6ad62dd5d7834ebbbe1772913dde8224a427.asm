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
; shader hash: 434c3da644e7cf11ced0ef10b22d474a
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
;   [8 x i8] (type annotation not present)
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
%"class.RWStructuredBuffer<sortPair32_32>" = type { %struct.sortPair32_32 }
%struct.sortPair32_32 = type { i32, i32 }
%SortBaseConst = type { [3 x <4 x i32>] }

@"\01?tgArray@@3PAUsortPair32_32@@A.0" = addrspace(3) global [1024 x i32] undef, align 4
@"\01?tgArray@@3PAUsortPair32_32@@A.1" = addrspace(3) global [1024 x i32] undef, align 4

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
  br i1 %55, label %56, label %62, !dx.controlflow.hints !16

; <label>:56                                      ; preds = %0
  %57 = add i32 %50, %19
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %57, i32 0)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %57, i32 4)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  br label %62

; <label>:62                                      ; preds = %56, %0
  %63 = phi i32 [ %59, %56 ], [ -1, %0 ]
  %64 = phi i32 [ %61, %56 ], [ -1, %0 ]
  %65 = icmp ult i32 %54, %14
  br i1 %65, label %66, label %72, !dx.controlflow.hints !17

; <label>:66                                      ; preds = %62
  %67 = add i32 %54, %19
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %67, i32 0)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %67, i32 4)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  br label %72

; <label>:72                                      ; preds = %66, %62
  %73 = phi i32 [ %69, %66 ], [ -1, %62 ]
  %74 = phi i32 [ %71, %66 ], [ -1, %62 ]
  %75 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair32_32@@A.0", i32 0, i32 %5
  %76 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair32_32@@A.1", i32 0, i32 %5
  store i32 %63, i32 addrspace(3)* %75, align 4
  store i32 %64, i32 addrspace(3)* %76, align 4
  %77 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair32_32@@A.0", i32 0, i32 %34
  %78 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair32_32@@A.1", i32 0, i32 %34
  store i32 %73, i32 addrspace(3)* %77, align 4
  store i32 %74, i32 addrspace(3)* %78, align 4
  %79 = icmp ugt i32 %15, %17
  br i1 %79, label %132, label %80

; <label>:80                                      ; preds = %72
  br label %81

; <label>:81                                      ; preds = %126, %80
  %82 = phi i32 [ %129, %126 ], [ %15, %80 ]
  %83 = phi i32 [ %113, %126 ], [ %63, %80 ]
  %84 = phi i32 [ %114, %126 ], [ %64, %80 ]
  %85 = phi i32 [ %127, %126 ], [ %73, %80 ]
  %86 = phi i32 [ %128, %126 ], [ %74, %80 ]
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %82, i32 0)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = and i32 %88, 2147483647
  %90 = lshr i32 %89, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %91 = xor i32 %89, %5
  %92 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair32_32@@A.0", i32 0, i32 %91
  %93 = load i32, i32 addrspace(3)* %92, align 4
  %94 = xor i32 %89, %34
  %95 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair32_32@@A.0", i32 0, i32 %94
  %96 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair32_32@@A.1", i32 0, i32 %94
  %97 = load i32, i32 addrspace(3)* %95, align 4
  %98 = load i32, i32 addrspace(3)* %96, align 4
  %99 = and i32 %89, %5
  %100 = icmp ugt i32 %99, %90
  %101 = icmp ugt i32 %83, %93
  %102 = icmp eq i32 %83, %93
  %103 = xor i1 %101, %100
  %104 = zext i1 %103 to i32
  %105 = zext i1 %102 to i32
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109, !dx.controlflow.hints !18

; <label>:109                                     ; preds = %81
  %110 = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* @"\01?tgArray@@3PAUsortPair32_32@@A.1", i32 0, i32 %91
  %111 = load i32, i32 addrspace(3)* %110, align 4
  store i32 %83, i32 addrspace(3)* %92, align 4
  store i32 %84, i32 addrspace(3)* %110, align 4
  br label %112

; <label>:112                                     ; preds = %109, %81
  %113 = phi i32 [ %93, %109 ], [ %83, %81 ]
  %114 = phi i32 [ %111, %109 ], [ %84, %81 ]
  %115 = and i32 %89, %34
  %116 = icmp ugt i32 %115, %90
  %117 = icmp ugt i32 %85, %97
  %118 = icmp eq i32 %85, %97
  %119 = xor i1 %116, %117
  %120 = zext i1 %119 to i32
  %121 = zext i1 %118 to i32
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125, !dx.controlflow.hints !19

; <label>:125                                     ; preds = %112
  store i32 %85, i32 addrspace(3)* %95, align 4
  store i32 %86, i32 addrspace(3)* %96, align 4
  br label %126

; <label>:126                                     ; preds = %125, %112
  %127 = phi i32 [ %97, %125 ], [ %85, %112 ]
  %128 = phi i32 [ %98, %125 ], [ %86, %112 ]
  %129 = add i32 %82, 1
  %130 = icmp ugt i32 %129, %17
  br i1 %130, label %131, label %81

; <label>:131                                     ; preds = %126
  br label %132

; <label>:132                                     ; preds = %131, %72
  %133 = phi i32 [ %63, %72 ], [ %113, %131 ]
  %134 = phi i32 [ %64, %72 ], [ %114, %131 ]
  %135 = phi i32 [ %73, %72 ], [ %127, %131 ]
  %136 = phi i32 [ %74, %72 ], [ %128, %131 ]
  %137 = add i32 %50, %19
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %137, i32 0, i32 %133, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %137, i32 4, i32 %134, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %138 = add i32 %54, %19
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %138, i32 0, i32 %135, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %138, i32 4, i32 %136, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !11, null}
!5 = !{!6}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{!9}
!9 = !{i32 0, %"class.RWStructuredBuffer<sortPair32_32>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !10}
!10 = !{i32 1, i32 8}
!11 = !{!12}
!12 = !{i32 0, %SortBaseConst* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!13 = !{void ()* @bitonic_sort, !"bitonic_sort", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 512, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

