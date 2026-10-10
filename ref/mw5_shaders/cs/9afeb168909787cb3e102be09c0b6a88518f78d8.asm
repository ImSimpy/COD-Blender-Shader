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
; shader hash: a06e0f2382f26d3c9d71e987f5fb0df3
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
;   [32 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb6     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1            t13     1
;                                   texture  struct         r/o      T2            t14     1
;                                   texture    byte         r/o      T3            t15     1
;                                   texture    byte         r/o      T4            t19     1
;                                   texture    byte         r/o      T5            t20     1
;                                       UAV    byte         r/w      U0             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GPCulledSubMesh>" = type { %struct.GPCulledSubMesh }
%struct.GPCulledSubMesh = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%GPCullConsts = type { i32, i32, i32, i32, i32, i32, i32, i32 }

define void @cluster_workgroup_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %11 = shl i32 %9, 2
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = and i32 %13, 65535
  %15 = and i32 %13, 4194304
  %16 = icmp ne i32 %15, 0
  %17 = lshr i32 %13, 10
  %18 = and i32 %17, 960
  %19 = add i32 %18, %10
  br i1 %16, label %20, label %32, !dx.controlflow.hints !20

; <label>:20                                      ; preds = %0
  %21 = shl nuw nsw i32 %14, 3
  %22 = or i32 %21, 5242880
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = extractvalue %dx.types.ResRet.i32 %23, 1
  %26 = and i32 %24, 65535
  %27 = lshr i32 %24, 16
  %28 = lshr i32 %25, 24
  %29 = lshr i32 %25, 25
  %30 = and i32 %29, 2
  %31 = xor i32 %30, 3
  br label %42

; <label>:32                                      ; preds = %0
  %33 = mul nuw nsw i32 %14, 12
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 1
  %36 = extractvalue %dx.types.ResRet.i32 %34, 2
  %37 = lshr i32 %35, 16
  %38 = and i32 %36, 15
  %39 = lshr i32 %36, 4
  %40 = and i32 %39, 15
  %41 = lshr i32 %36, 8
  br label %42

; <label>:42                                      ; preds = %32, %20
  %43 = phi i32 [ %27, %20 ], [ %41, %32 ]
  %44 = phi i32 [ %28, %20 ], [ %40, %32 ]
  %45 = phi i32 [ %31, %20 ], [ %38, %32 ]
  %46 = phi i32 [ %26, %20 ], [ %37, %32 ]
  br i1 %16, label %47, label %52, !dx.controlflow.hints !21

; <label>:47                                      ; preds = %42
  %48 = shl nuw nsw i32 %14, 4
  %49 = add nuw nsw i32 %48, 5767168
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 2
  br label %57

; <label>:52                                      ; preds = %42
  %53 = mul nuw nsw i32 %14, 12
  %54 = add nuw nsw i32 %53, 1572864
  %55 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 2
  br label %57

; <label>:57                                      ; preds = %52, %47
  %58 = phi i32 [ %51, %47 ], [ %56, %52 ]
  %59 = call i32 @dx.op.binary.i32(i32 40, i32 %19, i32 %46)  ; UMin(a,b)
  %60 = add i32 %59, %58
  %61 = shl i32 %60, 2
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = shl i32 %63, 5
  %65 = or i32 %64, 16
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 3
  %68 = lshr i32 %67, 16
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = icmp eq i32 %45, 2
  br i1 %71, label %72, label %77, !dx.controlflow.hints !22

; <label>:72                                      ; preds = %57
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 0
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  br label %105

; <label>:77                                      ; preds = %57
  %78 = icmp eq i32 %45, 0
  br i1 %78, label %79, label %91, !dx.controlflow.hints !23

; <label>:79                                      ; preds = %77
  %80 = and i32 %44, 1
  %81 = icmp eq i32 %80, 0
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  br i1 %81, label %87, label %83, !dx.controlflow.hints !24

; <label>:83                                      ; preds = %79
  %84 = extractvalue %dx.types.CBufRet.i32 %82, 2
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  br label %105

; <label>:87                                      ; preds = %79
  %88 = extractvalue %dx.types.CBufRet.i32 %82, 1
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  br label %105

; <label>:91                                      ; preds = %77
  %92 = icmp eq i32 %45, 3
  br i1 %92, label %93, label %98, !dx.controlflow.hints !25

; <label>:93                                      ; preds = %91
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 3
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  br label %105

; <label>:98                                      ; preds = %91
  %99 = icmp eq i32 %45, 1
  br i1 %99, label %100, label %105, !dx.controlflow.hints !26

; <label>:100                                     ; preds = %98
  %101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.i32 %101, 0
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  br label %105

; <label>:105                                     ; preds = %100, %98, %93, %87, %83, %72
  %106 = phi i32 [ %76, %72 ], [ %86, %83 ], [ %90, %87 ], [ %97, %93 ], [ %104, %100 ], [ 0, %98 ]
  %107 = lshr i32 %10, 5
  %108 = shl nuw nsw i32 %107, 2
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %9, i32 %108)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = and i32 %10, 31
  %112 = shl i32 1, %111
  %113 = and i32 %110, %112
  %114 = icmp eq i32 %113, 0
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %9, i32 0)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = add i32 %112, -1
  br i1 %114, label %155, label %118, !dx.controlflow.hints !27

; <label>:118                                     ; preds = %105
  %119 = and i32 %10, 32
  %120 = icmp eq i32 %119, 0
  %121 = and i32 %116, %117
  %122 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %121)  ; Countbits(value)
  %123 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %116)  ; Countbits(value)
  %124 = extractvalue %dx.types.ResRet.i32 %115, 1
  %125 = and i32 %124, %117
  %126 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %125)  ; Countbits(value)
  %127 = add i32 %126, %123
  %128 = select i1 %120, i32 %122, i32 %127
  %129 = add i32 %128, %70
  %130 = icmp ne i32 %106, 0
  %131 = and i32 %43, 16
  %132 = icmp ne i32 %131, 0
  %133 = and i1 %132, %130
  %134 = and i32 %43, 15
  %135 = icmp ne i32 %134, 0
  %136 = and i1 %135, %133
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 1
  %139 = icmp ugt i32 %68, %138
  %140 = and i1 %136, %139
  %141 = and i32 %59, 1023
  %142 = zext i1 %140 to i32
  %143 = shl nuw nsw i32 %142, 10
  %144 = and i32 %17, 2048
  %145 = shl i32 %43, 9
  %146 = and i32 %145, 4096
  %147 = lshr exact i32 %15, 9
  %148 = or i32 %147, %144
  %149 = or i32 %148, %146
  %150 = or i32 %149, %141
  %151 = or i32 %150, %143
  %152 = shl nuw nsw i32 %151, 16
  %153 = or i32 %152, %14
  %154 = shl i32 %129, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %154, i32 undef, i32 %153, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %155

; <label>:155                                     ; preds = %118, %105
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!5 = !{!6, !7, !8, !10, !11, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.StructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!13 = !{!14}
!14 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16}
!16 = !{i32 0, %GPCullConsts* undef, !"", i32 0, i32 6, i32 1, i32 32, null}
!17 = !{void ()* @cluster_workgroup_gen_pass, !"cluster_workgroup_gen_pass", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 64, i32 1, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

