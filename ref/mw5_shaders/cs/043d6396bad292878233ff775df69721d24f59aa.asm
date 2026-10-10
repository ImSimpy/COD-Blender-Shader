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
; shader hash: ea37f365e8e2a177fec417e4dc67105f
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
;                                       UAV     f32          2d      U0             u4     1
;                                       UAV     f32          2d      U1             u0     1
;                                       UAV     f32          2d      U2             u1     1
;                                       UAV     f32          2d      U3             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.RWTexture2D<float>" = type { float }

@"\01?sharedData@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @cs_sunshadow_downsample_8x8() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = shl i32 %5, 1
  %10 = shl i32 %6, 1
  %11 = or i32 %9, 1
  %12 = or i32 %10, 1
  %13 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  %15 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %11, i32 %10, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %16 = extractvalue %dx.types.ResRet.f32 %15, 0
  %17 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %9, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 undef, i32 %9, i32 %10, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = call float @dx.op.binary.f32(i32 36, float %18, float %16)  ; FMin(a,b)
  %22 = call float @dx.op.binary.f32(i32 36, float %20, float %21)  ; FMin(a,b)
  %23 = call float @dx.op.binary.f32(i32 36, float %22, float %14)  ; FMin(a,b)
  %24 = and i32 %5, 2147483647
  %25 = and i32 %6, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %24, i32 %25, i32 undef, float %23, float %23, float %23, float %23, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %26 = mul i32 %7, 8
  %27 = add i32 %8, %26
  %28 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %27
  store float %23, float addrspace(3)* %28, align 4, !tbaa !14, !noalias !18
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %29 = xor i32 %8, 1
  %30 = xor i32 %7, 1
  %31 = mul i32 %30, 8
  %32 = add i32 %29, %31
  %33 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %32
  %34 = load float, float addrspace(3)* %33, align 4, !tbaa !14, !noalias !18
  %35 = mul i32 %7, 8
  %36 = add i32 %29, %35
  %37 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %36
  %38 = load float, float addrspace(3)* %37, align 4, !tbaa !14, !noalias !18
  %39 = mul i32 %30, 8
  %40 = add i32 %8, %39
  %41 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %40
  %42 = load float, float addrspace(3)* %41, align 4, !tbaa !14, !noalias !18
  %43 = call float @dx.op.binary.f32(i32 36, float %42, float %38)  ; FMin(a,b)
  %44 = call float @dx.op.binary.f32(i32 36, float %23, float %43)  ; FMin(a,b)
  %45 = call float @dx.op.binary.f32(i32 36, float %44, float %34)  ; FMin(a,b)
  %46 = lshr i32 %24, 1
  %47 = lshr i32 %25, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %46, i32 %47, i32 undef, float %45, float %45, float %45, float %45, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %45, float addrspace(3)* %28, align 4, !tbaa !14, !noalias !22
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %48 = xor i32 %8, 2
  %49 = xor i32 %7, 2
  %50 = mul i32 %49, 8
  %51 = add i32 %48, %50
  %52 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %51
  %53 = load float, float addrspace(3)* %52, align 4, !tbaa !14, !noalias !22
  %54 = mul i32 %7, 8
  %55 = add i32 %48, %54
  %56 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %55
  %57 = load float, float addrspace(3)* %56, align 4, !tbaa !14, !noalias !22
  %58 = mul i32 %49, 8
  %59 = add i32 %8, %58
  %60 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %59
  %61 = load float, float addrspace(3)* %60, align 4, !tbaa !14, !noalias !22
  %62 = call float @dx.op.binary.f32(i32 36, float %61, float %57)  ; FMin(a,b)
  %63 = call float @dx.op.binary.f32(i32 36, float %45, float %62)  ; FMin(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %63, float %53)  ; FMin(a,b)
  %65 = lshr i32 %24, 2
  %66 = lshr i32 %25, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %65, i32 %66, i32 undef, float %64, float %64, float %64, float %64, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

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
!4 = !{null, !5, null, null}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{void ()* @cs_sunshadow_downsample_8x8, !"cs_sunshadow_downsample_8x8", null, !4, !12}
!12 = !{i32 0, i64 256, i32 4, !13}
!13 = !{i32 8, i32 8, i32 1}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!20 = distinct !{!20, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!21 = distinct !{!21, !20, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!24 = distinct !{!24, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!25 = distinct !{!25, !24, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}

