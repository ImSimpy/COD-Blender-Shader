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
; shader hash: c3075567f46356e50b5e11a0e8a90ce0
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
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     u32         buf      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWBuffer<unsigned int>" = type { i32 }
%constants = type { <2 x i32>, <2 x i32> }

@"\01?groupValidationResult@@3IA" = external addrspace(3) global i32, align 4

define void @cs_render_validate() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %11, !dx.controlflow.hints !16

; <label>:10                                      ; preds = %0
  store i32 0, i32 addrspace(3)* @"\01?groupValidationResult@@3IA", align 4, !tbaa !17
  br label %11

; <label>:11                                      ; preds = %10, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = extractvalue %dx.types.CBufRet.i32 %12, 1
  %15 = icmp ult i32 %7, %13
  %16 = icmp ult i32 %8, %14
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %60, !dx.controlflow.hints !21

; <label>:18                                      ; preds = %11
  %19 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %7, i32 %8, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = fcmp fast olt float %20, 0.000000e+00
  %24 = fcmp fast olt float %21, 0.000000e+00
  %25 = fcmp fast olt float %22, 0.000000e+00
  %26 = or i1 %23, %24
  %27 = or i1 %25, %26
  %28 = select i1 %27, i32 2, i32 0
  %29 = fcmp fast oeq float %20, 0.000000e+00
  %30 = fcmp fast oeq float %21, 0.000000e+00
  %31 = or i1 %29, %30
  br i1 %31, label %36, label %32, !dx.controlflow.hints !22

; <label>:32                                      ; preds = %18
  %33 = call float @dx.op.binary.f32(i32 35, float %20, float %21)  ; FMax(a,b)
  %34 = call float @dx.op.binary.f32(i32 36, float %20, float %21)  ; FMin(a,b)
  %35 = fdiv fast float %33, %34
  br label %36

; <label>:36                                      ; preds = %32, %18
  %37 = phi float [ %35, %32 ], [ 0.000000e+00, %18 ]
  %38 = fcmp fast oeq float %22, 0.000000e+00
  %39 = or i1 %29, %38
  br i1 %39, label %44, label %40, !dx.controlflow.hints !22

; <label>:40                                      ; preds = %36
  %41 = call float @dx.op.binary.f32(i32 35, float %20, float %22)  ; FMax(a,b)
  %42 = call float @dx.op.binary.f32(i32 36, float %20, float %22)  ; FMin(a,b)
  %43 = fdiv fast float %41, %42
  br label %44

; <label>:44                                      ; preds = %40, %36
  %45 = phi float [ %43, %40 ], [ 0.000000e+00, %36 ]
  %46 = or i1 %30, %38
  br i1 %46, label %52, label %47, !dx.controlflow.hints !22

; <label>:47                                      ; preds = %44
  %48 = call float @dx.op.binary.f32(i32 35, float %21, float %22)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 36, float %21, float %22)  ; FMin(a,b)
  %50 = fdiv fast float %48, %49
  %51 = fcmp ogt float %50, 1.000000e+02
  br label %52

; <label>:52                                      ; preds = %47, %44
  %53 = phi i1 [ %51, %47 ], [ false, %44 ]
  %54 = fcmp fast ogt float %37, 1.000000e+02
  %55 = fcmp fast ogt float %45, 1.000000e+02
  %56 = or i1 %54, %55
  %57 = or i1 %56, %53
  %58 = or i32 %28, 8
  %59 = select i1 %57, i32 %58, i32 %28
  br label %60

; <label>:60                                      ; preds = %52, %11
  %61 = phi i32 [ 0, %11 ], [ %59, %52 ]
  %62 = atomicrmw or i32 addrspace(3)* @"\01?groupValidationResult@@3IA", i32 %61 seq_cst
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %9, label %63, label %69, !dx.controlflow.hints !23

; <label>:63                                      ; preds = %60
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 2
  %66 = mul i32 %65, %5
  %67 = add i32 %66, %4
  %68 = load i32, i32 addrspace(3)* @"\01?groupValidationResult@@3IA", align 4, !tbaa !17
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %67, i32 undef, i32 %68, i32 %68, i32 %68, i32 %68, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %69

; <label>:69                                      ; preds = %63, %60
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %constants* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!13 = !{void ()* @cs_render_validate, !"cs_render_validate", null, !4, !14}
!14 = !{i32 0, i64 256, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}

