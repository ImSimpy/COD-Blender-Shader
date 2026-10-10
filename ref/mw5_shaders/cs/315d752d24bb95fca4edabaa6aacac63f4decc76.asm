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
; shader hash: 08934001d24f76488b1141e90b1dc937
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
;                                       UAV     f32          2d      U4             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.RWTexture2D<float>" = type { float }

@"\01?sharedData@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @cs_sunshadow_downsample_16x16() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %10 = shl i32 %6, 1
  %11 = shl i32 %7, 1
  %12 = or i32 %10, 1
  %13 = or i32 %11, 1
  %14 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %12, i32 %13, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %15 = extractvalue %dx.types.ResRet.f32 %14, 0
  %16 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %12, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 0
  %18 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %10, i32 %13, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 0
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %10, i32 %11, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = call float @dx.op.binary.f32(i32 36, float %19, float %17)  ; FMin(a,b)
  %23 = call float @dx.op.binary.f32(i32 36, float %21, float %22)  ; FMin(a,b)
  %24 = call float @dx.op.binary.f32(i32 36, float %23, float %15)  ; FMin(a,b)
  %25 = and i32 %6, 2147483647
  %26 = and i32 %7, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %25, i32 %26, i32 undef, float %24, float %24, float %24, float %24, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %27 = mul i32 %8, 8
  %28 = add i32 %9, %27
  %29 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %28
  store float %24, float addrspace(3)* %29, align 4, !tbaa !15, !noalias !19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %30 = xor i32 %9, 1
  %31 = xor i32 %8, 1
  %32 = mul i32 %31, 8
  %33 = add i32 %30, %32
  %34 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %33
  %35 = load float, float addrspace(3)* %34, align 4, !tbaa !15, !noalias !19
  %36 = mul i32 %8, 8
  %37 = add i32 %30, %36
  %38 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %37
  %39 = load float, float addrspace(3)* %38, align 4, !tbaa !15, !noalias !19
  %40 = mul i32 %31, 8
  %41 = add i32 %9, %40
  %42 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %41
  %43 = load float, float addrspace(3)* %42, align 4, !tbaa !15, !noalias !19
  %44 = call float @dx.op.binary.f32(i32 36, float %43, float %39)  ; FMin(a,b)
  %45 = call float @dx.op.binary.f32(i32 36, float %24, float %44)  ; FMin(a,b)
  %46 = call float @dx.op.binary.f32(i32 36, float %45, float %35)  ; FMin(a,b)
  %47 = lshr i32 %25, 1
  %48 = lshr i32 %26, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %47, i32 %48, i32 undef, float %46, float %46, float %46, float %46, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %46, float addrspace(3)* %29, align 4, !tbaa !15, !noalias !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %49 = xor i32 %9, 2
  %50 = xor i32 %8, 2
  %51 = mul i32 %50, 8
  %52 = add i32 %49, %51
  %53 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %52
  %54 = load float, float addrspace(3)* %53, align 4, !tbaa !15, !noalias !23
  %55 = mul i32 %8, 8
  %56 = add i32 %49, %55
  %57 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %56
  %58 = load float, float addrspace(3)* %57, align 4, !tbaa !15, !noalias !23
  %59 = mul i32 %50, 8
  %60 = add i32 %9, %59
  %61 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %60
  %62 = load float, float addrspace(3)* %61, align 4, !tbaa !15, !noalias !23
  %63 = call float @dx.op.binary.f32(i32 36, float %62, float %58)  ; FMin(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %46, float %63)  ; FMin(a,b)
  %65 = call float @dx.op.binary.f32(i32 36, float %64, float %54)  ; FMin(a,b)
  %66 = lshr i32 %25, 2
  %67 = lshr i32 %26, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %66, i32 %67, i32 undef, float %65, float %65, float %65, float %65, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %65, float addrspace(3)* %29, align 4, !tbaa !15, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %68 = xor i32 %9, 4
  %69 = xor i32 %8, 4
  %70 = mul i32 %69, 8
  %71 = add i32 %68, %70
  %72 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %71
  %73 = load float, float addrspace(3)* %72, align 4, !tbaa !15, !noalias !27
  %74 = mul i32 %8, 8
  %75 = add i32 %68, %74
  %76 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %75
  %77 = load float, float addrspace(3)* %76, align 4, !tbaa !15, !noalias !27
  %78 = mul i32 %69, 8
  %79 = add i32 %9, %78
  %80 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %79
  %81 = load float, float addrspace(3)* %80, align 4, !tbaa !15, !noalias !27
  %82 = call float @dx.op.binary.f32(i32 36, float %81, float %77)  ; FMin(a,b)
  %83 = call float @dx.op.binary.f32(i32 36, float %65, float %82)  ; FMin(a,b)
  %84 = call float @dx.op.binary.f32(i32 36, float %83, float %73)  ; FMin(a,b)
  %85 = lshr i32 %25, 3
  %86 = lshr i32 %26, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %85, i32 %86, i32 undef, float %84, float %84, float %84, float %84, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, null, null}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{void ()* @cs_sunshadow_downsample_16x16, !"cs_sunshadow_downsample_16x16", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 8, i32 8, i32 1}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!20, !22}
!20 = distinct !{!20, !21, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!21 = distinct !{!21, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!22 = distinct !{!22, !21, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!25 = distinct !{!25, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!26 = distinct !{!26, !25, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!29 = distinct !{!29, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!30 = distinct !{!30, !29, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}

