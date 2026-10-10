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
; shader hash: 615f109c8ee95084dfeea97ccd42559c
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
;                                   texture    byte         r/o      T0             t1     1
;                                       UAV     f32          2d      U0             u4     1
;                                       UAV     f32          2d      U1             u0     1
;                                       UAV     f32          2d      U2             u1     1
;                                       UAV     f32          2d      U3             u2     1
;                                       UAV     f32          2d      U4             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%SunshadowDownsampleConsts = type { <4 x float>, i32, i32, i32, i32 }

@"\01?sharedData@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @cs_sunshadow_cache_downsample_16x16() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 3
  %13 = mul i32 %12, %12
  %14 = udiv i32 %10, %13
  %15 = urem i32 %10, %13
  %16 = urem i32 %15, %12
  %17 = udiv i32 %15, %12
  %18 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %19 = shl i32 %14, 2
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = and i32 %21, 65535
  %23 = lshr i32 %21, 16
  %24 = mul i32 %22, %18
  %25 = mul i32 %23, %18
  %26 = shl i32 %16, 3
  %27 = shl i32 %17, 3
  %28 = add i32 %26, %8
  %29 = add i32 %28, %24
  %30 = add i32 %27, %9
  %31 = add i32 %30, %25
  %32 = shl i32 %29, 1
  %33 = shl i32 %31, 1
  %34 = or i32 %32, 1
  %35 = or i32 %33, 1
  %36 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %34, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %34, i32 %33, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %32, i32 %35, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %32, i32 %33, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = call float @dx.op.binary.f32(i32 36, float %41, float %39)  ; FMin(a,b)
  %45 = call float @dx.op.binary.f32(i32 36, float %43, float %44)  ; FMin(a,b)
  %46 = call float @dx.op.binary.f32(i32 36, float %45, float %37)  ; FMin(a,b)
  %47 = and i32 %29, 2147483647
  %48 = and i32 %31, 2147483647
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %47, i32 %48, i32 undef, float %46, float %46, float %46, float %46, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %49 = mul i32 %8, 8
  %50 = add i32 %9, %49
  %51 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %50
  store float %46, float addrspace(3)* %51, align 4, !tbaa !19, !noalias !23
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %52 = xor i32 %9, 1
  %53 = xor i32 %8, 1
  %54 = mul i32 %53, 8
  %55 = add i32 %52, %54
  %56 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %55
  %57 = load float, float addrspace(3)* %56, align 4, !tbaa !19, !noalias !23
  %58 = mul i32 %8, 8
  %59 = add i32 %52, %58
  %60 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %59
  %61 = load float, float addrspace(3)* %60, align 4, !tbaa !19, !noalias !23
  %62 = mul i32 %53, 8
  %63 = add i32 %9, %62
  %64 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %63
  %65 = load float, float addrspace(3)* %64, align 4, !tbaa !19, !noalias !23
  %66 = call float @dx.op.binary.f32(i32 36, float %65, float %61)  ; FMin(a,b)
  %67 = call float @dx.op.binary.f32(i32 36, float %46, float %66)  ; FMin(a,b)
  %68 = call float @dx.op.binary.f32(i32 36, float %67, float %57)  ; FMin(a,b)
  %69 = lshr i32 %47, 1
  %70 = lshr i32 %48, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %69, i32 %70, i32 undef, float %68, float %68, float %68, float %68, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %68, float addrspace(3)* %51, align 4, !tbaa !19, !noalias !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %71 = xor i32 %9, 2
  %72 = xor i32 %8, 2
  %73 = mul i32 %72, 8
  %74 = add i32 %71, %73
  %75 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %74
  %76 = load float, float addrspace(3)* %75, align 4, !tbaa !19, !noalias !27
  %77 = mul i32 %8, 8
  %78 = add i32 %71, %77
  %79 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %78
  %80 = load float, float addrspace(3)* %79, align 4, !tbaa !19, !noalias !27
  %81 = mul i32 %72, 8
  %82 = add i32 %9, %81
  %83 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %82
  %84 = load float, float addrspace(3)* %83, align 4, !tbaa !19, !noalias !27
  %85 = call float @dx.op.binary.f32(i32 36, float %84, float %80)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 36, float %68, float %85)  ; FMin(a,b)
  %87 = call float @dx.op.binary.f32(i32 36, float %86, float %76)  ; FMin(a,b)
  %88 = lshr i32 %47, 2
  %89 = lshr i32 %48, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %88, i32 %89, i32 undef, float %87, float %87, float %87, float %87, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %87, float addrspace(3)* %51, align 4, !tbaa !19, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %90 = xor i32 %9, 4
  %91 = xor i32 %8, 4
  %92 = mul i32 %91, 8
  %93 = add i32 %90, %92
  %94 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %93
  %95 = load float, float addrspace(3)* %94, align 4, !tbaa !19, !noalias !31
  %96 = mul i32 %8, 8
  %97 = add i32 %90, %96
  %98 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %97
  %99 = load float, float addrspace(3)* %98, align 4, !tbaa !19, !noalias !31
  %100 = mul i32 %91, 8
  %101 = add i32 %9, %100
  %102 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %101
  %103 = load float, float addrspace(3)* %102, align 4, !tbaa !19, !noalias !31
  %104 = call float @dx.op.binary.f32(i32 36, float %103, float %99)  ; FMin(a,b)
  %105 = call float @dx.op.binary.f32(i32 36, float %87, float %104)  ; FMin(a,b)
  %106 = call float @dx.op.binary.f32(i32 36, float %105, float %95)  ; FMin(a,b)
  %107 = lshr i32 %47, 3
  %108 = lshr i32 %48, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %107, i32 %108, i32 undef, float %106, float %106, float %106, float %106, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
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
!4 = !{!5, !7, !14, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{!8, !10, !11, !12, !13}
!8 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!9 = !{i32 0, i32 9}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!11 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!12 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!13 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!14 = !{!15}
!15 = !{i32 0, %SunshadowDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!16 = !{void ()* @cs_sunshadow_cache_downsample_16x16, !"cs_sunshadow_cache_downsample_16x16", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
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
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %coords"}
!33 = distinct !{!33, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z"}
!34 = distinct !{!34, !33, !"\01?sunshadow_downsample_pass3@@YAXAIAV?$vector@I$01@@AIAMV1@@Z: %sunshadowMin"}

