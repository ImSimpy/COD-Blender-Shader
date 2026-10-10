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
; shader hash: 7377f95c35f38174451f7e21403bab9c
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                       UAV    byte         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }

define void @cs_blendshapes_blendmaps_unified_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = alloca [4 x float], align 4
  %8 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %9 = extractvalue %dx.types.ResRet.i32 %8, 0
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = shl i32 %5, 2
  %13 = add i32 %11, %12
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %13, i32 undef)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = and i32 %15, 65535
  %17 = lshr i32 %15, 16
  %18 = add i32 %17, %6
  %19 = mul nuw nsw i32 %16, 48
  %20 = add i32 %9, 16
  %21 = add i32 %20, %19
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = add i32 %9, 32
  %25 = add i32 %24, %19
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 3
  %28 = icmp ult i32 %18, %27
  br i1 %28, label %29, label %115, !dx.controlflow.hints !14

; <label>:29                                      ; preds = %0
  %30 = extractvalue %dx.types.ResRet.i32 %26, 0
  %31 = extractvalue %dx.types.ResRet.i32 %22, 3
  %32 = extractvalue %dx.types.ResRet.i32 %8, 1
  %33 = shl i32 %18, 3
  %34 = lshr i32 %18, 7
  %35 = and i32 %34, 4194303
  %36 = add i32 %35, %23
  %37 = shl i32 %36, 2
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = shl i32 %39, 10
  %41 = and i32 %33, 1016
  %42 = or i32 %40, %41
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = extractvalue %dx.types.ResRet.i32 %43, 1
  %46 = lshr i32 %44, 16
  %47 = add i32 %46, %45
  %48 = shl i32 %30, 2
  %49 = and i32 %48, 262140
  %50 = add i32 %49, %32
  %51 = shl i32 %44, 4
  %52 = and i32 %51, 1048560
  %53 = add i32 %52, %31
  %54 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 3
  store float 0.000000e+00, float* %54, align 4, !tbaa !15
  %55 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 2
  store float 0.000000e+00, float* %55, align 4, !tbaa !15
  %56 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 1
  store float 0.000000e+00, float* %56, align 4, !tbaa !15
  %57 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 0
  store float 0.000000e+00, float* %57, align 4, !tbaa !15
  %58 = icmp ult i32 %45, %47
  br i1 %58, label %59, label %110

; <label>:59                                      ; preds = %29
  br label %60

; <label>:60                                      ; preds = %60, %59
  %61 = phi i32 [ %99, %60 ], [ %45, %59 ]
  %62 = shl i32 %61, 2
  %63 = lshr i32 %61, 8
  %64 = and i32 %63, 4194303
  %65 = add i32 %64, %23
  %66 = shl i32 %65, 2
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = shl i32 %68, 10
  %70 = and i32 %62, 1020
  %71 = or i32 %69, %70
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = lshr i32 %73, 10
  %75 = and i32 %74, 3
  %76 = lshr i32 %73, 12
  %77 = and i32 %76, 3
  %78 = lshr i32 %73, 16
  %79 = and i32 %78, 255
  %80 = lshr i32 %73, 24
  %81 = uitofp i32 %79 to float
  %82 = fmul fast float %81, 0x3F70101020000000
  %83 = uitofp i32 %80 to float
  %84 = fmul fast float %83, 0x3F70101020000000
  %85 = shl i32 %73, 2
  %86 = and i32 %85, 4092
  %87 = add i32 %50, %86
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = bitcast i32 %89 to float
  %91 = fmul fast float %82, %90
  %92 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 %75
  %93 = load float, float* %92, align 4, !tbaa !15
  %94 = call float @dx.op.binary.f32(i32 35, float %93, float %91)  ; FMax(a,b)
  store float %94, float* %92, align 4, !tbaa !15
  %95 = fmul fast float %84, %90
  %96 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 %77
  %97 = load float, float* %96, align 4, !tbaa !15
  %98 = call float @dx.op.binary.f32(i32 35, float %97, float %95)  ; FMax(a,b)
  store float %98, float* %96, align 4, !tbaa !15
  %99 = add nuw i32 %61, 1
  %100 = icmp eq i32 %99, %47
  br i1 %100, label %101, label %60, !llvm.loop !19

; <label>:101                                     ; preds = %60
  %102 = load float, float* %57, align 4, !tbaa !15
  %103 = load float, float* %56, align 4, !tbaa !15
  %104 = load float, float* %55, align 4, !tbaa !15
  %105 = load float, float* %54, align 4, !tbaa !15
  %106 = bitcast float %102 to i32
  %107 = bitcast float %103 to i32
  %108 = bitcast float %104 to i32
  %109 = bitcast float %105 to i32
  br label %110

; <label>:110                                     ; preds = %101, %29
  %111 = phi i32 [ %109, %101 ], [ 0, %29 ]
  %112 = phi i32 [ %108, %101 ], [ 0, %29 ]
  %113 = phi i32 [ %107, %101 ], [ 0, %29 ]
  %114 = phi i32 [ %106, %101 ], [ 0, %29 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %53, i32 undef, i32 %114, i32 %113, i32 %112, i32 %111, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %115

; <label>:115                                     ; preds = %110, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, null, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{void ()* @cs_blendshapes_blendmaps_unified_main, !"cs_blendshapes_blendmaps_unified_main", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}

