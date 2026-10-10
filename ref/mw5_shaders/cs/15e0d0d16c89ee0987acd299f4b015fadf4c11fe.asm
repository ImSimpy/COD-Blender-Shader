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
; shader hash: dae0b158ee07ceab2257e3e66bf6f80b
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
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
;                                   texture     u32          2d      T0            t29     1
;                                       UAV  struct         r/w      U0             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }

@"\01?anyLeft@@3PAIA" = external addrspace(3) global [2 x i32], align 4
@"\01?wgDataBins@@3PAY0BA@$$CAIA.1dim" = addrspace(3) global [32 x i32] undef, align 4
@"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim" = addrspace(3) global [64 x i32] undef, align 4

define void @vis_buffer_prepass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %5 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %6 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %3, i32 %4, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7 = extractvalue %dx.types.ResRet.i32 %6, 0
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = lshr i32 %7, 3
  %12 = and i32 %11, 63
  %13 = lshr i32 %7, 9
  %14 = and i32 %13, 262143
  %15 = select i1 %9, i32 %14, i32 -1
  %16 = icmp ult i32 %12, 32
  %17 = and i32 %11, 31
  %18 = shl i32 1, %17
  %19 = select i1 %16, i32 %18, i32 0
  %20 = icmp ugt i32 %12, 31
  %21 = select i1 %20, i32 %18, i32 0
  %22 = and i32 %15, 15
  br label %23

; <label>:23                                      ; preds = %114, %0
  %24 = phi i32 [ %10, %0 ], [ %94, %114 ]
  %25 = phi i32 [ 0, %0 ], [ %115, %114 ]
  %26 = and i32 %25, 1
  %27 = getelementptr [2 x i32], [2 x i32] addrspace(3)* @"\01?anyLeft@@3PAIA", i32 0, i32 %26
  store i32 0, i32 addrspace(3)* %27, align 4, !tbaa !14
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %45, label %29, !dx.controlflow.hints !18

; <label>:29                                      ; preds = %23
  %30 = shl nsw i32 %15, 8
  %31 = or i32 %30, %5
  %32 = mul i32 %26, 16
  %33 = add i32 %22, %32
  %34 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?wgDataBins@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %33
  store i32 %31, i32 addrspace(3)* %34, align 4, !tbaa !14
  %35 = mul i32 %26, 16
  %36 = add i32 %22, %35
  %37 = mul i32 %36, 2
  %38 = add i32 0, %37
  %39 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %38
  store i32 0, i32 addrspace(3)* %39, align 4
  %40 = mul i32 %26, 16
  %41 = add i32 %22, %40
  %42 = mul i32 %41, 2
  %43 = add i32 1, %42
  %44 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %43
  store i32 0, i32 addrspace(3)* %44, align 4
  br label %45

; <label>:45                                      ; preds = %29, %23
  %46 = phi i1 [ true, %23 ], [ %28, %29 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %46, label %71, label %47, !dx.controlflow.hints !19

; <label>:47                                      ; preds = %45
  %48 = mul i32 %26, 16
  %49 = add i32 %22, %48
  %50 = getelementptr [32 x i32], [32 x i32] addrspace(3)* @"\01?wgDataBins@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %49
  %51 = load i32, i32 addrspace(3)* %50, align 4, !tbaa !14
  %52 = lshr i32 %51, 8
  %53 = and i32 %51, 255
  %54 = icmp eq i32 %15, %52
  br i1 %54, label %55, label %70, !dx.controlflow.hints !20

; <label>:55                                      ; preds = %47
  %56 = mul i32 %26, 16
  %57 = add i32 %22, %56
  %58 = mul i32 %57, 2
  %59 = add i32 0, %58
  %60 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %59
  %61 = load i32, i32 addrspace(3)* %60, align 4
  %62 = or i32 %61, %19
  store i32 %62, i32 addrspace(3)* %60, align 4
  %63 = mul i32 %26, 16
  %64 = add i32 %22, %63
  %65 = mul i32 %64, 2
  %66 = add i32 1, %65
  %67 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %66
  %68 = load i32, i32 addrspace(3)* %67, align 4
  %69 = or i32 %68, %21
  store i32 %69, i32 addrspace(3)* %67, align 4
  br label %71

; <label>:70                                      ; preds = %47
  store i32 1, i32 addrspace(3)* %27, align 4, !tbaa !14
  br label %71

; <label>:71                                      ; preds = %70, %55, %45
  %72 = phi i1 [ true, %55 ], [ false, %70 ], [ false, %45 ]
  %73 = phi i32 [ %53, %55 ], [ %53, %70 ], [ -1, %45 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %72, label %74, label %93, !dx.controlflow.hints !21

; <label>:74                                      ; preds = %71
  %75 = mul i32 %26, 16
  %76 = add i32 %22, %75
  %77 = mul i32 %76, 2
  %78 = add i32 0, %77
  %79 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %78
  %80 = load i32, i32 addrspace(3)* %79, align 4
  %81 = and i32 %80, %19
  %82 = icmp eq i32 %81, %19
  %83 = mul i32 %26, 16
  %84 = add i32 %22, %83
  %85 = mul i32 %84, 2
  %86 = add i32 1, %85
  %87 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %86
  %88 = load i32, i32 addrspace(3)* %87, align 4
  %89 = and i32 %88, %21
  %90 = icmp eq i32 %89, %21
  %91 = and i1 %82, %90
  br i1 %91, label %93, label %92, !dx.controlflow.hints !22

; <label>:92                                      ; preds = %74
  store i32 1, i32 addrspace(3)* %27, align 4, !tbaa !14
  br label %93

; <label>:93                                      ; preds = %92, %74, %71
  %94 = phi i32 [ %24, %92 ], [ %24, %71 ], [ 0, %74 ]
  %95 = icmp eq i32 %5, %73
  br i1 %95, label %96, label %111, !dx.controlflow.hints !23

; <label>:96                                      ; preds = %93
  %97 = mul i32 %26, 16
  %98 = add i32 %22, %97
  %99 = mul i32 %98, 2
  %100 = add i32 0, %99
  %101 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %100
  %102 = load i32, i32 addrspace(3)* %101, align 4
  %103 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %15, i32 0, i32 undef, i32 %102)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %104 = mul i32 %26, 16
  %105 = add i32 %22, %104
  %106 = mul i32 %105, 2
  %107 = add i32 1, %106
  %108 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?wgMaskBins@@3PAY0BA@$$CAV?$vector@I$01@@A.v.1dim", i32 0, i32 %107
  %109 = load i32, i32 addrspace(3)* %108, align 4
  %110 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %15, i32 4, i32 undef, i32 %109)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %111

; <label>:111                                     ; preds = %96, %93
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %112 = load i32, i32 addrspace(3)* %27, align 4, !tbaa !14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114, !dx.controlflow.hints !24

; <label>:114                                     ; preds = %111
  %115 = add nuw nsw i32 %25, 1
  %116 = icmp ult i32 %115, 64
  br i1 %116, label %23, label %117

; <label>:117                                     ; preds = %114, %111
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

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
!4 = !{!5, !8, null, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{!9}
!9 = !{i32 0, %"class.RWStructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !10}
!10 = !{i32 1, i32 8}
!11 = !{void ()* @vis_buffer_prepass, !"vis_buffer_prepass", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 8, i32 8, i32 1}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

