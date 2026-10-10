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
; shader hash: d3c299132fa3b002bfc44556f560af26
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
;                                       UAV     f32          2d      U3             u3     1
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

define void @cs_sunshadow_downsample_16x16() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %12 = shl i32 %8, 1
  %13 = shl i32 %9, 1
  %14 = uitofp i32 %12 to float
  %15 = uitofp i32 %13 to float
  %16 = fadd fast float %14, 5.000000e-01
  %17 = fadd fast float %15, 5.000000e-01
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 2
  %20 = extractvalue %dx.types.CBufRet.f32 %18, 3
  %21 = fmul fast float %19, %16
  %22 = fmul fast float %20, %17
  %23 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %6, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = extractvalue %dx.types.ResRet.f32 %23, 1
  %26 = extractvalue %dx.types.ResRet.f32 %23, 2
  %27 = extractvalue %dx.types.ResRet.f32 %23, 3
  %28 = call float @dx.op.binary.f32(i32 36, float %25, float %26)  ; FMin(a,b)
  %29 = call float @dx.op.binary.f32(i32 36, float %24, float %28)  ; FMin(a,b)
  %30 = call float @dx.op.binary.f32(i32 36, float %29, float %27)  ; FMin(a,b)
  %31 = and i32 %8, 2147483647
  %32 = and i32 %9, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %31, i32 %32, i32 undef, float %30, float %30, float %30, float %30, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %33 = mul i32 %10, 8
  %34 = add i32 %11, %33
  %35 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %34
  store float %30, float addrspace(3)* %35, align 4, !tbaa !20, !noalias !24
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %36 = xor i32 %11, 1
  %37 = xor i32 %10, 1
  %38 = mul i32 %37, 8
  %39 = add i32 %36, %38
  %40 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %39
  %41 = load float, float addrspace(3)* %40, align 4, !tbaa !20, !noalias !24
  %42 = mul i32 %10, 8
  %43 = add i32 %36, %42
  %44 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %43
  %45 = load float, float addrspace(3)* %44, align 4, !tbaa !20, !noalias !24
  %46 = mul i32 %37, 8
  %47 = add i32 %11, %46
  %48 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %47
  %49 = load float, float addrspace(3)* %48, align 4, !tbaa !20, !noalias !24
  %50 = call float @dx.op.binary.f32(i32 36, float %49, float %45)  ; FMin(a,b)
  %51 = call float @dx.op.binary.f32(i32 36, float %30, float %50)  ; FMin(a,b)
  %52 = call float @dx.op.binary.f32(i32 36, float %51, float %41)  ; FMin(a,b)
  %53 = lshr i32 %31, 1
  %54 = lshr i32 %32, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %53, i32 %54, i32 undef, float %52, float %52, float %52, float %52, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %52, float addrspace(3)* %35, align 4, !tbaa !20, !noalias !28
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %55 = xor i32 %11, 2
  %56 = xor i32 %10, 2
  %57 = mul i32 %56, 8
  %58 = add i32 %55, %57
  %59 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %58
  %60 = load float, float addrspace(3)* %59, align 4, !tbaa !20, !noalias !28
  %61 = mul i32 %10, 8
  %62 = add i32 %55, %61
  %63 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %62
  %64 = load float, float addrspace(3)* %63, align 4, !tbaa !20, !noalias !28
  %65 = mul i32 %56, 8
  %66 = add i32 %11, %65
  %67 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %66
  %68 = load float, float addrspace(3)* %67, align 4, !tbaa !20, !noalias !28
  %69 = call float @dx.op.binary.f32(i32 36, float %68, float %64)  ; FMin(a,b)
  %70 = call float @dx.op.binary.f32(i32 36, float %52, float %69)  ; FMin(a,b)
  %71 = call float @dx.op.binary.f32(i32 36, float %70, float %60)  ; FMin(a,b)
  %72 = lshr i32 %31, 2
  %73 = lshr i32 %32, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %72, i32 %73, i32 undef, float %71, float %71, float %71, float %71, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %71, float addrspace(3)* %35, align 4, !tbaa !20, !noalias !32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %74 = xor i32 %11, 4
  %75 = xor i32 %10, 4
  %76 = mul i32 %75, 8
  %77 = add i32 %74, %76
  %78 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %77
  %79 = load float, float addrspace(3)* %78, align 4, !tbaa !20, !noalias !32
  %80 = mul i32 %10, 8
  %81 = add i32 %74, %80
  %82 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %81
  %83 = load float, float addrspace(3)* %82, align 4, !tbaa !20, !noalias !32
  %84 = mul i32 %75, 8
  %85 = add i32 %11, %84
  %86 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %85
  %87 = load float, float addrspace(3)* %86, align 4, !tbaa !20, !noalias !32
  %88 = call float @dx.op.binary.f32(i32 36, float %87, float %83)  ; FMin(a,b)
  %89 = call float @dx.op.binary.f32(i32 36, float %71, float %88)  ; FMin(a,b)
  %90 = call float @dx.op.binary.f32(i32 36, float %89, float %79)  ; FMin(a,b)
  %91 = lshr i32 %31, 3
  %92 = lshr i32 %32, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %91, i32 %92, i32 undef, float %90, float %90, float %90, float %90, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !13, !15}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %SunshadowDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{void ()* @cs_sunshadow_downsample_16x16, !"cs_sunshadow_downsample_16x16", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!25, !27}
!25 = distinct !{!25, !26, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!26 = distinct !{!26, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!27 = distinct !{!27, !26, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!30 = distinct !{!30, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!31 = distinct !{!31, !30, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}
!32 = !{!33, !35}
!33 = distinct !{!33, !34, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!34 = distinct !{!34, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!35 = distinct !{!35, !34, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}

