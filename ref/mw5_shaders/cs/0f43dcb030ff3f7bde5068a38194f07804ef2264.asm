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
; shader hash: ca82d25569df233449fb78937af1f109
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
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<float>" = type { float }
%constants = type { <2 x i32>, <2 x i32>, <2 x i32>, float, float, i32, <4 x float> }

@"\01?sharedData@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4

define void @copyrect2d_mipmaps() {
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
  br i1 %20, label %21, label %144, !dx.controlflow.hints !19

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
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %34 = extractvalue %dx.types.CBufRet.i32 %32, 3
  %35 = add i32 %33, %8
  %36 = add i32 %34, %9
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %35, i32 %36, i32 undef, float %28, float %29, float %30, float %31, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %37 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 0
  %38 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %28, float* %39, align 4, !tbaa !20
  br label %40

; <label>:40                                      ; preds = %40, %21
  %41 = phi i32 [ %35, %21 ], [ %66, %40 ]
  %42 = phi i32 [ %36, %21 ], [ %67, %40 ]
  %43 = phi float [ %28, %21 ], [ %65, %40 ]
  %44 = phi i32 [ 1, %21 ], [ %71, %40 ]
  %45 = shl i32 %44, 1
  %46 = mul i32 %10, 8
  %47 = add i32 %11, %46
  %48 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %47
  store float %43, float addrspace(3)* %48, align 4, !tbaa !20
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %49 = xor i32 %45, %11
  %50 = xor i32 %45, %10
  %51 = mul i32 %50, 8
  %52 = add i32 %49, %51
  %53 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %52
  %54 = load float, float addrspace(3)* %53, align 4, !tbaa !20
  %55 = mul i32 %10, 8
  %56 = add i32 %49, %55
  %57 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %56
  %58 = load float, float addrspace(3)* %57, align 4, !tbaa !20
  %59 = mul i32 %50, 8
  %60 = add i32 %11, %59
  %61 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?sharedData@@3PAY07$$CAMA.1dim", i32 0, i32 %60
  %62 = load float, float addrspace(3)* %61, align 4, !tbaa !20
  %63 = call float @dx.op.binary.f32(i32 36, float %62, float %58)  ; FMin(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %43, float %63)  ; FMin(a,b)
  %65 = call float @dx.op.binary.f32(i32 36, float %64, float %54)  ; FMin(a,b)
  %66 = lshr i32 %41, 1
  %67 = lshr i32 %42, 1
  %68 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 %44
  %69 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %44
  store i32 %66, i32* %68, align 4
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %44
  store float %65, float* %70, align 4, !tbaa !20
  %71 = add nuw nsw i32 %44, 1
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %40

; <label>:73                                      ; preds = %40
  %74 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.i32 %74, 0
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %99, !dx.controlflow.hints !24

; <label>:77                                      ; preds = %73
  %78 = load float, float* %39, align 4, !tbaa !20
  %79 = load i32, i32* %37, align 4
  %80 = load i32, i32* %38, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %79, i32 %80, i32 undef, float %78, float %78, float %78, float %78, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %81 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  %82 = load float, float* %81, align 4, !tbaa !20
  %83 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 1
  %84 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %85 = load i32, i32* %83, align 4
  %86 = load i32, i32* %84, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %85, i32 %86, i32 undef, float %82, float %82, float %82, float %82, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %87 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  %88 = load float, float* %87, align 4, !tbaa !20
  %89 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 2
  %90 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %91 = load i32, i32* %89, align 4
  %92 = load i32, i32* %90, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %91, i32 %92, i32 undef, float %88, float %88, float %88, float %88, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %93 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  %94 = load float, float* %93, align 4, !tbaa !20
  %95 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %96 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %97 = load i32, i32* %95, align 4
  %98 = load i32, i32* %96, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %97, i32 %98, i32 undef, float %94, float %94, float %94, float %94, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %144

; <label>:99                                      ; preds = %73
  %100 = icmp eq i32 %75, 1
  br i1 %100, label %101, label %120, !dx.controlflow.hints !25

; <label>:101                                     ; preds = %99
  %102 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  %103 = load float, float* %102, align 4, !tbaa !20
  %104 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 1
  %105 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %106 = load i32, i32* %104, align 4
  %107 = load i32, i32* %105, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %106, i32 %107, i32 undef, float %103, float %103, float %103, float %103, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %108 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  %109 = load float, float* %108, align 4, !tbaa !20
  %110 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 2
  %111 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %112 = load i32, i32* %110, align 4
  %113 = load i32, i32* %111, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %112, i32 %113, i32 undef, float %109, float %109, float %109, float %109, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %114 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  %115 = load float, float* %114, align 4, !tbaa !20
  %116 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %117 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %118 = load i32, i32* %116, align 4
  %119 = load i32, i32* %117, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %118, i32 %119, i32 undef, float %115, float %115, float %115, float %115, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %144

; <label>:120                                     ; preds = %99
  %121 = icmp eq i32 %75, 2
  br i1 %121, label %122, label %135, !dx.controlflow.hints !26

; <label>:122                                     ; preds = %120
  %123 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  %124 = load float, float* %123, align 4, !tbaa !20
  %125 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 2
  %126 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %127 = load i32, i32* %125, align 4
  %128 = load i32, i32* %126, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %127, i32 %128, i32 undef, float %124, float %124, float %124, float %124, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %129 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  %130 = load float, float* %129, align 4, !tbaa !20
  %131 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %132 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %133 = load i32, i32* %131, align 4
  %134 = load i32, i32* %132, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %133, i32 %134, i32 undef, float %130, float %130, float %130, float %130, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %144

; <label>:135                                     ; preds = %120
  %136 = icmp eq i32 %75, 3
  br i1 %136, label %137, label %144, !dx.controlflow.hints !27

; <label>:137                                     ; preds = %135
  %138 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  %139 = load float, float* %138, align 4, !tbaa !20
  %140 = getelementptr [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %141 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %142 = load i32, i32* %140, align 4
  %143 = load i32, i32* %141, align 4
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %142, i32 %143, i32 undef, float %139, float %139, float %139, float %139, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %144

; <label>:144                                     ; preds = %137, %135, %122, %101, %77, %0
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
!16 = !{void ()* @copyrect2d_mipmaps, !"copyrect2d_mipmaps", null, !4, !17}
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

