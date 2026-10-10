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
; shader hash: e7630b8040de6312b20e31068ab37a72
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
;   [64 x i8] (type annotation not present)
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
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u2     1
;                                       UAV     f32          2d      U2             u3     1
;                                       UAV     f32          2d      U3             u4     1
;                                       UAV     f32          2d      U4             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<float>" = type { float }
%constants = type { <2 x i32>, <2 x i32>, <2 x i32>, float, float, i32, <4 x float> }

@"\01?sharedData@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @copyrect2d_scale_bias_mipmaps() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %12 = alloca [4 x i32], align 4
  %13 = alloca [4 x i32], align 4
  %14 = alloca [4 x float], align 4
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %17 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %18 = icmp ult i32 %8, %16
  %19 = icmp ult i32 %9, %17
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %155, !dx.controlflow.hints !19

; <label>:21                                      ; preds = %0
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %25 = add i32 %23, %8
  %26 = add i32 %24, %9
  %27 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %25, i32 %26, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 0
  %29 = extractvalue %dx.types.ResRet.f32 %27, 1
  %30 = extractvalue %dx.types.ResRet.f32 %27, 2
  %31 = extractvalue %dx.types.ResRet.f32 %27, 3
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 2
  %34 = fmul fast float %33, %28
  %35 = fmul fast float %33, %29
  %36 = fmul fast float %33, %30
  %37 = fmul fast float %33, %31
  %38 = extractvalue %dx.types.CBufRet.f32 %32, 3
  %39 = fadd fast float %34, %38
  %40 = fadd fast float %35, %38
  %41 = fadd fast float %36, %38
  %42 = fadd fast float %37, %38
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 2
  %45 = extractvalue %dx.types.CBufRet.i32 %43, 3
  %46 = add i32 %44, %8
  %47 = add i32 %45, %9
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %46, i32 %47, i32 undef, float %39, float %40, float %41, float %42, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %48 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 0
  %49 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %39, float* %50, align 4, !tbaa !20
  br label %51

; <label>:51                                      ; preds = %51, %21
  %52 = phi i32 [ %46, %21 ], [ %77, %51 ]
  %53 = phi i32 [ %47, %21 ], [ %78, %51 ]
  %54 = phi float [ %39, %21 ], [ %76, %51 ]
  %55 = phi i32 [ 1, %21 ], [ %82, %51 ]
  %56 = shl i32 %55, 1
  %57 = mul i32 %10, 8
  %58 = add i32 %11, %57
  %59 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %58
  store float %54, float addrspace(3)* %59, align 4, !tbaa !20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %60 = xor i32 %56, %11
  %61 = xor i32 %56, %10
  %62 = mul i32 %61, 8
  %63 = add i32 %60, %62
  %64 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %63
  %65 = load float, float addrspace(3)* %64, align 4, !tbaa !20
  %66 = mul i32 %10, 8
  %67 = add i32 %60, %66
  %68 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %67
  %69 = load float, float addrspace(3)* %68, align 4, !tbaa !20
  %70 = mul i32 %61, 8
  %71 = add i32 %11, %70
  %72 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %71
  %73 = load float, float addrspace(3)* %72, align 4, !tbaa !20
  %74 = call float @dx.op.binary.f32(i32 36, float %73, float %69)  ; FMin(a,b)
  %75 = call float @dx.op.binary.f32(i32 36, float %54, float %74)  ; FMin(a,b)
  %76 = call float @dx.op.binary.f32(i32 36, float %75, float %65)  ; FMin(a,b)
  %77 = lshr i32 %52, 1
  %78 = lshr i32 %53, 1
  %79 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 %55
  %80 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %55
  store i32 %77, i32* %79, align 4
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %55
  store float %76, float* %81, align 4, !tbaa !20
  %82 = add nuw nsw i32 %55, 1
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %51

; <label>:84                                      ; preds = %51
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %110, !dx.controlflow.hints !24

; <label>:88                                      ; preds = %84
  %89 = load float, float* %50, align 4, !tbaa !20
  %90 = load i32, i32* %48, align 4
  %91 = load i32, i32* %49, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %90, i32 %91, i32 undef, float %89, float %89, float %89, float %89, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %92 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  %93 = load float, float* %92, align 4, !tbaa !20
  %94 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 1
  %95 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %96 = load i32, i32* %94, align 4
  %97 = load i32, i32* %95, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %96, i32 %97, i32 undef, float %93, float %93, float %93, float %93, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %98 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  %99 = load float, float* %98, align 4, !tbaa !20
  %100 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 2
  %101 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %102 = load i32, i32* %100, align 4
  %103 = load i32, i32* %101, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %102, i32 %103, i32 undef, float %99, float %99, float %99, float %99, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %104 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  %105 = load float, float* %104, align 4, !tbaa !20
  %106 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %107 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %108 = load i32, i32* %106, align 4
  %109 = load i32, i32* %107, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %108, i32 %109, i32 undef, float %105, float %105, float %105, float %105, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %155

; <label>:110                                     ; preds = %84
  %111 = icmp eq i32 %86, 1
  br i1 %111, label %112, label %131, !dx.controlflow.hints !25

; <label>:112                                     ; preds = %110
  %113 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  %114 = load float, float* %113, align 4, !tbaa !20
  %115 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 1
  %116 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %117 = load i32, i32* %115, align 4
  %118 = load i32, i32* %116, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %117, i32 %118, i32 undef, float %114, float %114, float %114, float %114, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %119 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  %120 = load float, float* %119, align 4, !tbaa !20
  %121 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 2
  %122 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %123 = load i32, i32* %121, align 4
  %124 = load i32, i32* %122, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %123, i32 %124, i32 undef, float %120, float %120, float %120, float %120, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %125 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  %126 = load float, float* %125, align 4, !tbaa !20
  %127 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %128 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %129 = load i32, i32* %127, align 4
  %130 = load i32, i32* %128, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %129, i32 %130, i32 undef, float %126, float %126, float %126, float %126, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %155

; <label>:131                                     ; preds = %110
  %132 = icmp eq i32 %86, 2
  br i1 %132, label %133, label %146, !dx.controlflow.hints !26

; <label>:133                                     ; preds = %131
  %134 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  %135 = load float, float* %134, align 4, !tbaa !20
  %136 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 2
  %137 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %138 = load i32, i32* %136, align 4
  %139 = load i32, i32* %137, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %138, i32 %139, i32 undef, float %135, float %135, float %135, float %135, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %140 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  %141 = load float, float* %140, align 4, !tbaa !20
  %142 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %143 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %144 = load i32, i32* %142, align 4
  %145 = load i32, i32* %143, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %144, i32 %145, i32 undef, float %141, float %141, float %141, float %141, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %155

; <label>:146                                     ; preds = %131
  %147 = icmp eq i32 %86, 3
  br i1 %147, label %148, label %155, !dx.controlflow.hints !27

; <label>:148                                     ; preds = %146
  %149 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  %150 = load float, float* %149, align 4, !tbaa !20
  %151 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %152 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %153 = load i32, i32* %151, align 4
  %154 = load i32, i32* %152, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %153, i32 %154, i32 undef, float %150, float %150, float %150, float %150, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %155

; <label>:155                                     ; preds = %148, %146, %133, %112, %88, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!4 = !{!5, !8, !14, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12, !13}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15}
!15 = !{i32 0, %constants* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!16 = !{void ()* @copyrect2d_scale_bias_mipmaps, !"copyrect2d_scale_bias_mipmaps", null, !4, !17}
!17 = !{i32 0, i64 256, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

