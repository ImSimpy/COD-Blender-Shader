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
; shader hash: 69c1938d4193926dcf6a1e6d411ff0c9
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
;   [24 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture  struct         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                   texture     f32          3d      T2             t2     1
;                                   texture     f32         buf      T3             t3     1
;                                       UAV     f32          3d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<GfxDLSDescriptorRange>" = type { %struct.GfxDLSDescriptorRange }
%struct.GfxDLSDescriptorRange = type { i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<GfxDLSDescriptor>" = type { %struct.GfxDLSDescriptor }
%struct.GfxDLSDescriptor = type { i32, i32, i32, i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }

@"\01?range@@3UGfxDLSDescriptorRange@@A.0" = addrspace(3) global i32 undef, align 4
@"\01?range@@3UGfxDLSDescriptorRange@@A.1" = addrspace(3) global i32 undef, align 4
@"\01?range@@3UGfxDLSDescriptorRange@@A.4" = addrspace(3) global i32 undef, align 4
@"\01?range@@3UGfxDLSDescriptorRange@@A.5" = addrspace(3) global i32 undef, align 4

define void @cs_blend() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = or i32 %7, %6
  %11 = or i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22, !dx.controlflow.hints !18

; <label>:13                                      ; preds = %0
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %9, i32 0)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  store i32 %15, i32 addrspace(3)* @"\01?range@@3UGfxDLSDescriptorRange@@A.0", align 4
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %9, i32 4)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  store i32 %17, i32 addrspace(3)* @"\01?range@@3UGfxDLSDescriptorRange@@A.1", align 4
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %9, i32 16)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  store i32 %19, i32 addrspace(3)* @"\01?range@@3UGfxDLSDescriptorRange@@A.4", align 4
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %9, i32 20)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  store i32 %21, i32 addrspace(3)* @"\01?range@@3UGfxDLSDescriptorRange@@A.5", align 4
  br label %22

; <label>:22                                      ; preds = %13, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %23 = load i32, i32 addrspace(3)* @"\01?range@@3UGfxDLSDescriptorRange@@A.5", align 4, !tbaa !19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %64, label %25

; <label>:25                                      ; preds = %22
  %26 = load i32, i32 addrspace(3)* @"\01?range@@3UGfxDLSDescriptorRange@@A.4", align 4, !tbaa !19
  br label %27

; <label>:27                                      ; preds = %27, %25
  %28 = phi float [ %58, %27 ], [ 0.000000e+00, %25 ]
  %29 = phi float [ %59, %27 ], [ 0.000000e+00, %25 ]
  %30 = phi float [ %60, %27 ], [ 0.000000e+00, %25 ]
  %31 = phi i32 [ %61, %27 ], [ 0, %25 ]
  %32 = add i32 %26, %31
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %32, i32 4)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %32, i32 8)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %32, i32 12)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = extractvalue %dx.types.ResRet.f32 %41, 1
  %44 = extractvalue %dx.types.ResRet.f32 %41, 2
  %45 = mul i32 %34, 9
  %46 = add i32 %45, %6
  %47 = mul i32 %36, 9
  %48 = add i32 %47, %7
  %49 = shl i32 %38, 3
  %50 = add i32 %49, %8
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %46, i32 %48, i32 %50, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = extractvalue %dx.types.ResRet.f32 %51, 2
  %55 = fmul fast float %52, %42
  %56 = fmul fast float %53, %43
  %57 = fmul fast float %54, %44
  %58 = fadd fast float %55, %28
  %59 = fadd fast float %56, %29
  %60 = fadd fast float %57, %30
  %61 = add i32 %31, 1
  %62 = icmp ult i32 %61, %23
  br i1 %62, label %27, label %63

; <label>:63                                      ; preds = %27
  br label %64

; <label>:64                                      ; preds = %63, %22
  %65 = phi float [ 0.000000e+00, %22 ], [ %58, %63 ]
  %66 = phi float [ 0.000000e+00, %22 ], [ %59, %63 ]
  %67 = phi float [ 0.000000e+00, %22 ], [ %60, %63 ]
  %68 = load i32, i32 addrspace(3)* @"\01?range@@3UGfxDLSDescriptorRange@@A.0", align 4, !tbaa !19
  %69 = mul i32 %68, 9
  %70 = add i32 %69, %6
  %71 = load i32, i32 addrspace(3)* @"\01?range@@3UGfxDLSDescriptorRange@@A.1", align 4, !tbaa !19
  %72 = mul i32 %71, 9
  %73 = add i32 %72, %7
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %70, i32 %73, i32 %8, float %65, float %66, float %67, float %65, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, null, null}
!5 = !{!6, !8, !10, !12}
!6 = !{i32 0, %"class.StructuredBuffer<GfxDLSDescriptorRange>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 24}
!8 = !{i32 1, %"class.StructuredBuffer<GfxDLSDescriptor>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 16}
!10 = !{i32 2, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 4, i32 0, !11}
!11 = !{i32 0, i32 9}
!12 = !{i32 3, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !11}
!13 = !{!14}
!14 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !11}
!15 = !{void ()* @cs_blend, !"cs_blend", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 9, i32 9, i32 8}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}

