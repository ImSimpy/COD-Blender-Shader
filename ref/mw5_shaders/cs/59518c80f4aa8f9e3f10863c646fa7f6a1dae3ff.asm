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
; shader hash: b038a26bdc6c0a22c959f1e695016d1b
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
;                                   texture     u32     2darray      T0            t10     1
;                                   texture  struct         r/o      T1            t12     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }

define void @cs_spotvis_clearvt_clear_physical() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4, i32 0)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = and i32 %8, 32
  %10 = icmp ne i32 %9, 0
  %11 = lshr i32 %8, 3
  %12 = and i32 %11, 1
  %13 = lshr i32 %8, 5
  %14 = and i32 %13, 1022
  %15 = or i32 %14, %12
  %16 = shl i32 %8, 3
  %17 = and i32 %16, 8
  %18 = shl i32 %8, 1
  %19 = and i32 %18, 12
  %20 = shl nuw nsw i32 %15, 4
  %21 = lshr i32 %8, 10
  %22 = and i32 %21, 8160
  %23 = and i32 %8, 16
  %24 = or i32 %17, %5
  %25 = or i32 %24, %20
  %26 = or i32 %6, %22
  %27 = lshr i32 %25, 5
  %28 = lshr i32 %26, 5
  %29 = lshr i32 %8, 23
  %30 = and i32 %29, 255
  %31 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %27, i32 %28, i32 %30, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = lshr i32 %32, 23
  %34 = and i32 %33, 255
  %35 = and i32 %25, 31
  %36 = and i32 %6, 31
  %37 = or i32 %23, %36
  %38 = or i32 %37, %19
  %39 = lshr i32 %32, 1
  %40 = and i32 %39, 16352
  %41 = lshr i32 %32, 10
  %42 = and i32 %41, 8160
  %43 = or i32 %35, %40
  %44 = or i32 %38, %42
  %45 = select i1 %10, float 1.000000e+00, float 0.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %43, i32 %44, i32 %34, float %45, float %45, float %45, float %45, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, null, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 12, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 4}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 9}
!13 = !{void ()* @cs_spotvis_clearvt_clear_physical, !"cs_spotvis_clearvt_clear_physical", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 8, i32 4, i32 1}

