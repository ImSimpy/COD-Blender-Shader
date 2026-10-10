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
; shader hash: e74d2210bcf64234a7763ece6deb9bac
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%SunshadowDownsampleConsts = type { <4 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?sharedData@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @cs_sunshadow_downsample_8x8() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %11 = shl i32 %7, 1
  %12 = shl i32 %8, 1
  %13 = uitofp i32 %11 to float
  %14 = uitofp i32 %12 to float
  %15 = fadd fast float %13, 5.000000e-01
  %16 = fadd fast float %14, 5.000000e-01
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %19 = extractvalue %dx.types.CBufRet.f32 %17, 3
  %20 = fmul fast float %18, %15
  %21 = fmul fast float %19, %16
  %22 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %5, float %20, float %21, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = extractvalue %dx.types.ResRet.f32 %22, 1
  %25 = extractvalue %dx.types.ResRet.f32 %22, 2
  %26 = extractvalue %dx.types.ResRet.f32 %22, 3
  %27 = call float @dx.op.binary.f32(i32 36, float %24, float %25)  ; FMin(a,b)
  %28 = call float @dx.op.binary.f32(i32 36, float %23, float %27)  ; FMin(a,b)
  %29 = call float @dx.op.binary.f32(i32 36, float %28, float %26)  ; FMin(a,b)
  %30 = and i32 %7, 2147483647
  %31 = and i32 %8, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %30, i32 %31, i32 undef, float %29, float %29, float %29, float %29, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %32 = mul i32 %9, 8
  %33 = add i32 %10, %32
  %34 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %33
  store float %29, float addrspace(3)* %34, align 4, !tbaa !19, !noalias !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %35 = xor i32 %10, 1
  %36 = xor i32 %9, 1
  %37 = mul i32 %36, 8
  %38 = add i32 %35, %37
  %39 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %38
  %40 = load float, float addrspace(3)* %39, align 4, !tbaa !19, !noalias !23
  %41 = mul i32 %9, 8
  %42 = add i32 %35, %41
  %43 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %42
  %44 = load float, float addrspace(3)* %43, align 4, !tbaa !19, !noalias !23
  %45 = mul i32 %36, 8
  %46 = add i32 %10, %45
  %47 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %46
  %48 = load float, float addrspace(3)* %47, align 4, !tbaa !19, !noalias !23
  %49 = call float @dx.op.binary.f32(i32 36, float %48, float %44)  ; FMin(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %29, float %49)  ; FMin(a,b)
  %51 = call float @dx.op.binary.f32(i32 36, float %50, float %40)  ; FMin(a,b)
  %52 = lshr i32 %30, 1
  %53 = lshr i32 %31, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %52, i32 %53, i32 undef, float %51, float %51, float %51, float %51, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %51, float addrspace(3)* %34, align 4, !tbaa !19, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %54 = xor i32 %10, 2
  %55 = xor i32 %9, 2
  %56 = mul i32 %55, 8
  %57 = add i32 %54, %56
  %58 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %57
  %59 = load float, float addrspace(3)* %58, align 4, !tbaa !19, !noalias !27
  %60 = mul i32 %9, 8
  %61 = add i32 %54, %60
  %62 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %61
  %63 = load float, float addrspace(3)* %62, align 4, !tbaa !19, !noalias !27
  %64 = mul i32 %55, 8
  %65 = add i32 %10, %64
  %66 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %65
  %67 = load float, float addrspace(3)* %66, align 4, !tbaa !19, !noalias !27
  %68 = call float @dx.op.binary.f32(i32 36, float %67, float %63)  ; FMin(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %51, float %68)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float %69, float %59)  ; FMin(a,b)
  %71 = lshr i32 %30, 2
  %72 = lshr i32 %31, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %71, i32 %72, i32 undef, float %70, float %70, float %70, float %70, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !12, !14}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13}
!13 = !{i32 0, %SunshadowDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!16 = !{void ()* @cs_sunshadow_downsample_8x8, !"cs_sunshadow_downsample_8x8", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!25 = distinct !{!25, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!26 = distinct !{!26, !25, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!29 = distinct !{!29, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!30 = distinct !{!30, !29, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}

