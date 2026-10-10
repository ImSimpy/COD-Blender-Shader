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
; shader hash: 4c3777ab83b7781f8edcd3a0cd2b37d3
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @readback_gp_stats_batchesdrawn() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %8 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %9 = shl i32 %7, 6
  %10 = add i32 %9, %8
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %104, !dx.controlflow.hints !17

; <label>:14                                      ; preds = %0
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %19 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %20 = icmp eq i32 %19, 0
  %21 = shl i32 %10, 2
  br i1 %17, label %55, label %22, !dx.controlflow.hints !18

; <label>:22                                      ; preds = %14
  br i1 %20, label %27, label %23, !dx.controlflow.hints !19

; <label>:23                                      ; preds = %22
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = lshr i32 %25, 16
  br label %27

; <label>:27                                      ; preds = %23, %22
  %28 = phi i32 [ %26, %23 ], [ 1, %22 ]
  %29 = add i32 %28, %10
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = shl i32 %29, 2
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = icmp ult i32 %31, %34
  %36 = icmp ult i32 %34, 262144
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %47, !dx.controlflow.hints !20

; <label>:38                                      ; preds = %27
  %39 = shl i32 %31, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = mul i32 %41, 3
  %43 = shl i32 %34, 2
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = mul i32 %45, 3
  br label %47

; <label>:47                                      ; preds = %38, %27
  %48 = phi i32 [ %42, %38 ], [ 0, %27 ]
  %49 = phi i32 [ %46, %38 ], [ 0, %27 ]
  %50 = icmp ugt i32 %49, %48
  %51 = icmp ult i32 %49, %18
  %52 = and i1 %50, %51
  %53 = sub i32 %49, %48
  %54 = select i1 %52, i32 %53, i32 0
  br label %101

; <label>:55                                      ; preds = %14
  br i1 %20, label %60, label %56, !dx.controlflow.hints !21

; <label>:56                                      ; preds = %55
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = lshr i32 %58, 16
  br label %60

; <label>:60                                      ; preds = %56, %55
  %61 = phi i32 [ %59, %56 ], [ 1, %55 ]
  %62 = add i32 %61, %10
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = shl i32 %62, 2
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = icmp ult i32 %64, %67
  %69 = icmp ult i32 %67, 65536
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %78, !dx.controlflow.hints !22

; <label>:71                                      ; preds = %60
  %72 = shl i32 %64, 2
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = shl i32 %67, 2
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  br label %78

; <label>:78                                      ; preds = %71, %60
  %79 = phi i32 [ %77, %71 ], [ 0, %60 ]
  %80 = phi i32 [ %74, %71 ], [ 0, %60 ]
  %81 = icmp ult i32 %80, %79
  %82 = icmp ult i32 %79, 262144
  %83 = and i1 %82, %81
  br i1 %83, label %84, label %93, !dx.controlflow.hints !23

; <label>:84                                      ; preds = %78
  %85 = shl i32 %80, 2
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = mul i32 %87, 3
  %89 = shl i32 %79, 2
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = mul i32 %91, 3
  br label %93

; <label>:93                                      ; preds = %84, %78
  %94 = phi i32 [ %92, %84 ], [ 0, %78 ]
  %95 = phi i32 [ %88, %84 ], [ 0, %78 ]
  %96 = icmp ugt i32 %94, %95
  %97 = icmp ult i32 %94, %18
  %98 = and i1 %97, %96
  %99 = sub i32 %94, %95
  %100 = select i1 %98, i32 %99, i32 0
  br label %101

; <label>:101                                     ; preds = %93, %47
  %102 = phi i32 [ %54, %47 ], [ %100, %93 ]
  %103 = icmp ne i32 %102, 0
  br label %104

; <label>:104                                     ; preds = %101, %0
  %105 = phi i1 [ %103, %101 ], [ false, %0 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %106 = and i32 %8, 31
  %107 = shl i32 1, %106
  %108 = select i1 %105, i32 %107, i32 0
  %109 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %8
  store i32 %108, i32 addrspace(3)* %109, align 4, !tbaa !24
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %110 = icmp ult i32 %106, 16
  br i1 %110, label %111, label %117, !dx.controlflow.hints !28

; <label>:111                                     ; preds = %104
  %112 = add i32 %8, 16
  %113 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %112
  %114 = load i32, i32 addrspace(3)* %113, align 4, !tbaa !24
  %115 = load i32, i32 addrspace(3)* %109, align 4, !tbaa !24
  %116 = or i32 %115, %114
  store i32 %116, i32 addrspace(3)* %109, align 4, !tbaa !24
  br label %117

; <label>:117                                     ; preds = %111, %104
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %118 = icmp ult i32 %106, 8
  br i1 %118, label %119, label %125, !dx.controlflow.hints !29

; <label>:119                                     ; preds = %117
  %120 = add i32 %8, 8
  %121 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %120
  %122 = load i32, i32 addrspace(3)* %121, align 4, !tbaa !24
  %123 = load i32, i32 addrspace(3)* %109, align 4, !tbaa !24
  %124 = or i32 %123, %122
  store i32 %124, i32 addrspace(3)* %109, align 4, !tbaa !24
  br label %125

; <label>:125                                     ; preds = %119, %117
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %126 = icmp ult i32 %106, 4
  br i1 %126, label %127, label %133, !dx.controlflow.hints !30

; <label>:127                                     ; preds = %125
  %128 = add i32 %8, 4
  %129 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %128
  %130 = load i32, i32 addrspace(3)* %129, align 4, !tbaa !24
  %131 = load i32, i32 addrspace(3)* %109, align 4, !tbaa !24
  %132 = or i32 %131, %130
  store i32 %132, i32 addrspace(3)* %109, align 4, !tbaa !24
  br label %133

; <label>:133                                     ; preds = %127, %125
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %134 = icmp ult i32 %106, 2
  br i1 %134, label %135, label %141, !dx.controlflow.hints !31

; <label>:135                                     ; preds = %133
  %136 = add i32 %8, 2
  %137 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %136
  %138 = load i32, i32 addrspace(3)* %137, align 4, !tbaa !24
  %139 = load i32, i32 addrspace(3)* %109, align 4, !tbaa !24
  %140 = or i32 %139, %138
  store i32 %140, i32 addrspace(3)* %109, align 4, !tbaa !24
  br label %141

; <label>:141                                     ; preds = %135, %133
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %142 = icmp eq i32 %106, 0
  br i1 %142, label %143, label %149, !dx.controlflow.hints !32

; <label>:143                                     ; preds = %141
  %144 = add i32 %8, 1
  %145 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %144
  %146 = load i32, i32 addrspace(3)* %145, align 4, !tbaa !24
  %147 = load i32, i32 addrspace(3)* %109, align 4, !tbaa !24
  %148 = or i32 %147, %146
  store i32 %148, i32 addrspace(3)* %109, align 4, !tbaa !24
  br label %149

; <label>:149                                     ; preds = %143, %141
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %150 = and i32 %8, -64
  %151 = icmp eq i32 %8, 0
  br i1 %151, label %152, label %166, !dx.controlflow.hints !33

; <label>:152                                     ; preds = %149
  %153 = or i32 %150, 32
  %154 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %153
  %155 = load i32, i32 addrspace(3)* %154, align 4, !tbaa !24
  %156 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %150
  %157 = load i32, i32 addrspace(3)* %156, align 4, !tbaa !24
  %158 = lshr i32 %10, 5
  %159 = call i32 @dx.op.unary.i32(i32 30, i32 %157)  ; Bfrev(value)
  %160 = call i32 @dx.op.unary.i32(i32 30, i32 %155)  ; Bfrev(value)
  %161 = shl nuw nsw i32 %158, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %161, i32 undef, i32 %159, i32 %160, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %162 = icmp eq i32 %10, 0
  br i1 %162, label %163, label %166, !dx.controlflow.hints !34

; <label>:163                                     ; preds = %152
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 2048, i32 undef, i32 %165, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %166

; <label>:166                                     ; preds = %163, %152, %149
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unary.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, null}
!5 = !{!6, !7, !8, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{!11}
!11 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{!13}
!13 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!14 = !{void ()* @readback_gp_stats_batchesdrawn, !"readback_gp_stats_batchesdrawn", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}

