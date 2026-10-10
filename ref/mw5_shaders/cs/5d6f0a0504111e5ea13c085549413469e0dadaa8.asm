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
; shader hash: 3dc360e44333edaa56723fe220575c07
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
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture     u32     2darray      T0             t4     1
;                                   texture     u32          2d      T1             t5     1
;                                   texture     u32     2darray      T2            t10     1
;                                   texture  struct         r/o      T3            t12     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }

define void @cs_spotvis_clearvt_clear_physical() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6, i32 0)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %11, 3
  %15 = lshr i32 %11, 2
  %16 = and i32 %15, 1
  %17 = lshr i32 %11, 3
  %18 = and i32 %17, 1
  %19 = lshr i32 %11, 5
  %20 = and i32 %19, 1022
  %21 = lshr i32 %11, 14
  %22 = and i32 %21, 510
  %23 = or i32 %20, %16
  %24 = or i32 %22, %18
  %25 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %23, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = and i32 %26, 3
  %28 = lshr i32 %26, 2
  %29 = and i32 %28, 63
  %30 = icmp eq i32 %14, %27
  %31 = icmp ugt i32 %9, %29
  %32 = and i1 %30, %31
  br i1 %32, label %82, label %33, !dx.controlflow.hints !18

; <label>:33                                      ; preds = %0
  %34 = icmp eq i32 %14, 0
  br i1 %34, label %46, label %35, !dx.controlflow.hints !19

; <label>:35                                      ; preds = %33
  %36 = shl nuw nsw i32 %23, 3
  %37 = shl nuw nsw i32 %24, 3
  %38 = or i32 %36, %7
  %39 = or i32 %37, %8
  %40 = add nsw i32 %14, -1
  %41 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %38, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = lshr i32 %42, 4
  %44 = and i32 %43, 15
  %45 = and i32 %42, 15
  br label %51

; <label>:46                                      ; preds = %33
  %47 = shl i32 %7, 1
  %48 = shl i32 %8, 1
  %49 = and i32 %11, 1
  %50 = or i32 %49, %47
  br label %51

; <label>:51                                      ; preds = %46, %35
  %52 = phi i32 [ %44, %35 ], [ %50, %46 ]
  %53 = phi i32 [ %45, %35 ], [ %48, %46 ]
  %54 = shl nuw nsw i32 %23, 4
  %55 = shl nuw nsw i32 %24, 4
  %56 = or i32 %52, %54
  %57 = or i32 %53, %55
  %58 = lshr i32 %56, 5
  %59 = lshr i32 %57, 5
  %60 = lshr i32 %11, 23
  %61 = and i32 %60, 255
  %62 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %58, i32 %59, i32 %61, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = lshr i32 %56, 1
  %65 = lshr i32 %57, 1
  %66 = and i32 %64, 15
  %67 = and i32 %65, 15
  %68 = and i32 %52, 1
  %69 = shl i32 %53, 1
  %70 = and i32 %69, 2
  %71 = or i32 %70, %68
  %72 = lshr i32 %63, 2
  %73 = and i32 %72, 8176
  %74 = lshr i32 %63, 11
  %75 = and i32 %74, 4080
  %76 = or i32 %73, %66
  %77 = or i32 %75, %67
  %78 = lshr i32 %63, 21
  %79 = and i32 %78, 1020
  %80 = or i32 %71, %79
  %81 = select i1 %13, float 1.000000e+00, float 0.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %76, i32 %77, i32 %80, float %81, float %81, float %81, float %81, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %82

; <label>:82                                      ; preds = %51, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !12, null, null}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!10 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 12, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 4}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !14}
!14 = !{i32 0, i32 9}
!15 = !{void ()* @cs_spotvis_clearvt_clear_physical, !"cs_spotvis_clearvt_clear_physical", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

