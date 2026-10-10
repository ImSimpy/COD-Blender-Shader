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
; shader hash: 936bd455a20fc96eb8352f5813ca5994
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
;   [16 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%ConstantBufferContinue = type { i32, i32, i32, i32 }

@"\01?reductionData@@3PAUReductionData@@A.0" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.1" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.2" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.3" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.4" = addrspace(3) global [64 x float] undef, align 4

define void @logaccumcontinue() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %4 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = shl i32 %5, 6
  %7 = add i32 %6, %4
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %2, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 0
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %26, !dx.controlflow.hints !12

; <label>:11                                      ; preds = %0
  %12 = mul i32 %7, 20
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %12, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = extractvalue %dx.types.ResRet.i32 %13, 1
  %16 = extractvalue %dx.types.ResRet.i32 %13, 2
  %17 = extractvalue %dx.types.ResRet.i32 %13, 3
  %18 = bitcast i32 %14 to float
  %19 = bitcast i32 %15 to float
  %20 = bitcast i32 %16 to float
  %21 = bitcast i32 %17 to float
  %22 = add i32 %12, 16
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = bitcast i32 %24 to float
  br label %26

; <label>:26                                      ; preds = %11, %0
  %27 = phi float [ %18, %11 ], [ 0.000000e+00, %0 ]
  %28 = phi float [ %19, %11 ], [ 0.000000e+00, %0 ]
  %29 = phi float [ %20, %11 ], [ 0.000000e+00, %0 ]
  %30 = phi float [ %21, %11 ], [ 0.000000e+00, %0 ]
  %31 = phi float [ %25, %11 ], [ 0.000000e+00, %0 ]
  %32 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 %3
  %33 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 %3
  %34 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 %3
  %35 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 %3
  %36 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 %3
  store float %27, float addrspace(3)* %32, align 4
  store float %28, float addrspace(3)* %33, align 4
  store float %29, float addrspace(3)* %34, align 4
  store float %30, float addrspace(3)* %35, align 4
  store float %31, float addrspace(3)* %36, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %37

; <label>:37                                      ; preds = %64, %26
  %38 = phi i32 [ 1, %26 ], [ %39, %64 ]
  %39 = shl i32 %38, 1
  %40 = urem i32 %3, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %64, !dx.controlflow.hints !13

; <label>:42                                      ; preds = %37
  %43 = add i32 %38, %3
  %44 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 %43
  %45 = load float, float addrspace(3)* %44, align 4, !tbaa !14
  %46 = load float, float addrspace(3)* %32, align 4, !tbaa !14
  %47 = fadd fast float %46, %45
  store float %47, float addrspace(3)* %32, align 4, !tbaa !14
  %48 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 %43
  %49 = load float, float addrspace(3)* %48, align 4, !tbaa !14
  %50 = load float, float addrspace(3)* %34, align 4, !tbaa !14
  %51 = fadd fast float %50, %49
  store float %51, float addrspace(3)* %34, align 4, !tbaa !14
  %52 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 %43
  %53 = load float, float addrspace(3)* %52, align 4, !tbaa !14
  %54 = load float, float addrspace(3)* %33, align 4, !tbaa !14
  %55 = fadd fast float %54, %53
  store float %55, float addrspace(3)* %33, align 4, !tbaa !14
  %56 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 %43
  %57 = load float, float addrspace(3)* %56, align 4, !tbaa !14
  %58 = load float, float addrspace(3)* %35, align 4, !tbaa !14
  %59 = fadd fast float %58, %57
  store float %59, float addrspace(3)* %35, align 4, !tbaa !14
  %60 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 %43
  %61 = load float, float addrspace(3)* %60, align 4, !tbaa !14
  %62 = load float, float addrspace(3)* %36, align 4, !tbaa !14
  %63 = fadd fast float %62, %61
  store float %63, float addrspace(3)* %36, align 4, !tbaa !14
  br label %64

; <label>:64                                      ; preds = %42, %37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %65 = icmp ult i32 %39, 64
  br i1 %65, label %37, label %66

; <label>:66                                      ; preds = %64
  %67 = icmp eq i32 %3, 0
  br i1 %67, label %68, label %81, !dx.controlflow.hints !18

; <label>:68                                      ; preds = %66
  %69 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 0), align 4
  %70 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 0), align 4
  %71 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 0), align 4
  %72 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 0), align 4
  %73 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 0), align 4
  %74 = bitcast float %69 to i32
  %75 = bitcast float %70 to i32
  %76 = bitcast float %71 to i32
  %77 = bitcast float %72 to i32
  %78 = mul i32 %5, 20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %78, i32 undef, i32 %74, i32 %75, i32 %76, i32 %77, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %79 = bitcast float %73 to i32
  %80 = add i32 %78, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %80, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %81

; <label>:81                                      ; preds = %68, %66
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

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
!dx.entryPoints = !{!9}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !7, null}
!5 = !{!6}
!6 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!7 = !{!8}
!8 = !{i32 0, %ConstantBufferContinue* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!9 = !{void ()* @logaccumcontinue, !"logaccumcontinue", null, !4, !10}
!10 = !{i32 0, i64 272, i32 4, !11}
!11 = !{i32 64, i32 1, i32 1}
!12 = distinct !{!12, !"dx.controlflow.hints", i32 2}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

