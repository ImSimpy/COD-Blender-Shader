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
; shader hash: 7fd11c5f80ac5170a198ba732b85e604
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
;                                   texture    byte         r/o      T1             t1     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%SunshadowDownsampleConsts = type { <4 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?sharedData@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @cs_sunshadow_cache_downsample_16x16() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 3
  %14 = mul i32 %13, %13
  %15 = udiv i32 %11, %14
  %16 = urem i32 %11, %14
  %17 = urem i32 %16, %13
  %18 = udiv i32 %16, %13
  %19 = extractvalue %dx.types.CBufRet.i32 %12, 2
  %20 = shl i32 %15, 2
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = and i32 %22, 65535
  %24 = lshr i32 %22, 16
  %25 = mul i32 %23, %19
  %26 = mul i32 %24, %19
  %27 = shl i32 %17, 3
  %28 = shl i32 %18, 3
  %29 = add i32 %27, %9
  %30 = add i32 %29, %25
  %31 = add i32 %28, %10
  %32 = add i32 %31, %26
  %33 = shl i32 %30, 1
  %34 = shl i32 %32, 1
  %35 = uitofp i32 %33 to float
  %36 = uitofp i32 %34 to float
  %37 = fadd fast float %35, 5.000000e-01
  %38 = fadd fast float %36, 5.000000e-01
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %41 = extractvalue %dx.types.CBufRet.f32 %39, 3
  %42 = fmul fast float %37, %40
  %43 = fmul fast float %38, %41
  %44 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %7, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  %46 = extractvalue %dx.types.ResRet.f32 %44, 1
  %47 = extractvalue %dx.types.ResRet.f32 %44, 2
  %48 = extractvalue %dx.types.ResRet.f32 %44, 3
  %49 = call float @dx.op.binary.f32(i32 36, float %46, float %47)  ; FMin(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %45, float %49)  ; FMin(a,b)
  %51 = call float @dx.op.binary.f32(i32 36, float %50, float %48)  ; FMin(a,b)
  %52 = and i32 %30, 2147483647
  %53 = and i32 %32, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %52, i32 %53, i32 undef, float %51, float %51, float %51, float %51, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %54 = mul i32 %9, 8
  %55 = add i32 %10, %54
  %56 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %55
  store float %51, float addrspace(3)* %56, align 4, !tbaa !21, !noalias !25
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %57 = xor i32 %10, 1
  %58 = xor i32 %9, 1
  %59 = mul i32 %58, 8
  %60 = add i32 %57, %59
  %61 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %60
  %62 = load float, float addrspace(3)* %61, align 4, !tbaa !21, !noalias !25
  %63 = mul i32 %9, 8
  %64 = add i32 %57, %63
  %65 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %64
  %66 = load float, float addrspace(3)* %65, align 4, !tbaa !21, !noalias !25
  %67 = mul i32 %58, 8
  %68 = add i32 %10, %67
  %69 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %68
  %70 = load float, float addrspace(3)* %69, align 4, !tbaa !21, !noalias !25
  %71 = call float @dx.op.binary.f32(i32 36, float %70, float %66)  ; FMin(a,b)
  %72 = call float @dx.op.binary.f32(i32 36, float %51, float %71)  ; FMin(a,b)
  %73 = call float @dx.op.binary.f32(i32 36, float %72, float %62)  ; FMin(a,b)
  %74 = lshr i32 %52, 1
  %75 = lshr i32 %53, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %74, i32 %75, i32 undef, float %73, float %73, float %73, float %73, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %73, float addrspace(3)* %56, align 4, !tbaa !21, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %76 = xor i32 %10, 2
  %77 = xor i32 %9, 2
  %78 = mul i32 %77, 8
  %79 = add i32 %76, %78
  %80 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %79
  %81 = load float, float addrspace(3)* %80, align 4, !tbaa !21, !noalias !29
  %82 = mul i32 %9, 8
  %83 = add i32 %76, %82
  %84 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %83
  %85 = load float, float addrspace(3)* %84, align 4, !tbaa !21, !noalias !29
  %86 = mul i32 %77, 8
  %87 = add i32 %10, %86
  %88 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %87
  %89 = load float, float addrspace(3)* %88, align 4, !tbaa !21, !noalias !29
  %90 = call float @dx.op.binary.f32(i32 36, float %89, float %85)  ; FMin(a,b)
  %91 = call float @dx.op.binary.f32(i32 36, float %73, float %90)  ; FMin(a,b)
  %92 = call float @dx.op.binary.f32(i32 36, float %91, float %81)  ; FMin(a,b)
  %93 = lshr i32 %52, 2
  %94 = lshr i32 %53, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %93, i32 %94, i32 undef, float %92, float %92, float %92, float %92, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %92, float addrspace(3)* %56, align 4, !tbaa !21, !noalias !33
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %95 = xor i32 %10, 4
  %96 = xor i32 %9, 4
  %97 = mul i32 %96, 8
  %98 = add i32 %95, %97
  %99 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %98
  %100 = load float, float addrspace(3)* %99, align 4, !tbaa !21, !noalias !33
  %101 = mul i32 %9, 8
  %102 = add i32 %95, %101
  %103 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %102
  %104 = load float, float addrspace(3)* %103, align 4, !tbaa !21, !noalias !33
  %105 = mul i32 %96, 8
  %106 = add i32 %10, %105
  %107 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %106
  %108 = load float, float addrspace(3)* %107, align 4, !tbaa !21, !noalias !33
  %109 = call float @dx.op.binary.f32(i32 36, float %108, float %104)  ; FMin(a,b)
  %110 = call float @dx.op.binary.f32(i32 36, float %92, float %109)  ; FMin(a,b)
  %111 = call float @dx.op.binary.f32(i32 36, float %110, float %100)  ; FMin(a,b)
  %112 = lshr i32 %52, 3
  %113 = lshr i32 %53, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %112, i32 %113, i32 undef, float %111, float %111, float %111, float %111, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !14, !16}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11, !12, !13}
!10 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15}
!15 = !{i32 0, %SunshadowDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @cs_sunshadow_cache_downsample_16x16, !"cs_sunshadow_cache_downsample_16x16", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!27 = distinct !{!27, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!28 = distinct !{!28, !27, !"\01?sunshadow_downsample_pass1@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!31 = distinct !{!31, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!32 = distinct !{!32, !31, !"\01?sunshadow_downsample_pass2@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!35 = distinct !{!35, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!36 = distinct !{!36, !35, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}

