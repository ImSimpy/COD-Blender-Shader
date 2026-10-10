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
; shader hash: f2bd026c27770ff92c6afc2f4162579b
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
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t1     1
;                                   texture     f32          3d      T1             t0     1
;                                       UAV     f32         buf      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<GfxPersistentDamageLayerDamagedVoxel>" = type { %struct.GfxPersistentDamageLayerDamagedVoxel }
%struct.GfxPersistentDamageLayerDamagedVoxel = type { <3 x float>, i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.RWBuffer<float>" = type { float }
%GfxPersistentDamageLayerMappingConstants = type { i32, i32, i32, i32, float, i32, i32, i32 }

define void @cs_pdl_copy_temp_damage_mask() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = shl i32 %5, 2
  %7 = lshr i32 %5, 4
  %8 = and i32 %7, 67108863
  %9 = and i32 %6, 60
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 3
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %45, !dx.controlflow.hints !17

; <label>:13                                      ; preds = %0
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 2
  %16 = add i32 %15, %8
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %16, i32 12)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  br label %19

; <label>:19                                      ; preds = %19, %13
  %20 = phi i32 [ 0, %13 ], [ %42, %19 ]
  %21 = add nuw nsw i32 %20, %9
  %22 = and i32 %21, 3
  %23 = lshr i32 %21, 2
  %24 = and i32 %23, 3
  %25 = lshr i32 %21, 4
  %26 = shl i32 %18, 2
  %27 = and i32 %26, 4092
  %28 = lshr i32 %18, 8
  %29 = and i32 %28, 4092
  %30 = lshr i32 %18, 18
  %31 = and i32 %30, 4092
  %32 = or i32 %22, %27
  %33 = or i32 %24, %29
  %34 = add nuw nsw i32 %25, %31
  %35 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %32, i32 %33, i32 %34, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 2
  %39 = shl i32 %38, 6
  %40 = add nsw i32 %20, %6
  %41 = add i32 %40, %39
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %41, i32 undef, float %36, float %36, float %36, float %36, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %42 = add nuw nsw i32 %20, 1
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %19

; <label>:44                                      ; preds = %19
  br label %45

; <label>:45                                      ; preds = %44, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<GfxPersistentDamageLayerDamagedVoxel>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 16}
!8 = !{i32 1, %"class.Texture3D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 4, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{!11}
!11 = !{i32 0, %"class.RWBuffer<float>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !9}
!12 = !{!13}
!13 = !{i32 0, %GfxPersistentDamageLayerMappingConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{void ()* @cs_pdl_copy_temp_damage_mask, !"cs_pdl_copy_temp_damage_mask", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

