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
; shader hash: fb4d8a698aa3dee4810ed9adf5d63545
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
;   [464 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [80 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   texture  struct         r/o      T0             t0     1
;                                       UAV    byte         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<GfxMultiLightGridLightingCount>" = type { %struct.GfxMultiLightGridLightingCount }
%struct.GfxMultiLightGridLightingCount = type { [20 x i32] }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxMultiLightgridProcessingConsts_decl = type { %struct.FxMultiLightgridProcessingConsts }
%struct.FxMultiLightgridProcessingConsts = type { i32, i32, i32, i32 }

define void @cs_fx_prerender_write_multilightgrid_indirect_dispatch_args() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = lshr i32 %7, 1
  %9 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.i32 %9, 1
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %49, !dx.controlflow.hints !16

; <label>:12                                      ; preds = %0
  %13 = and i32 %7, 1
  %14 = mul i32 %5, 120
  %15 = mul i32 %6, 20
  %16 = add i32 %15, %14
  %17 = add i32 %16, %8
  %18 = mul i32 %5, 6
  %19 = add i32 %18, %6
  %20 = add i32 %19, 17
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 %20)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = shl i32 %8, 2
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %19, i32 %23)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = call i32 @dx.op.binary.i32(i32 40, i32 %22, i32 %25)  ; UMin(a,b)
  %27 = icmp eq i32 %13, 0
  %28 = call i32 @dx.op.binary.i32(i32 40, i32 %6, i32 3)  ; UMin(a,b)
  br i1 %27, label %32, label %29, !dx.controlflow.hints !17

; <label>:29                                      ; preds = %12
  %30 = add nsw i32 %28, -1
  %31 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %30)  ; IMax(a,b)
  br label %32

; <label>:32                                      ; preds = %29, %12
  %33 = phi i32 [ %31, %29 ], [ %28, %12 ]
  %34 = shl i32 %33, 1
  %35 = call i32 @dx.op.binary.i32(i32 40, i32 6, i32 %34)  ; UMin(a,b)
  %36 = sub i32 6, %35
  %37 = and i32 %36, 31
  %38 = shl i32 1, %37
  %39 = add i32 %26, -1
  %40 = add i32 %39, %38
  %41 = lshr i32 %40, %37
  %42 = and i32 %6, 31
  %43 = shl i32 1, %42
  %44 = and i32 %28, 31
  %45 = lshr i32 %43, %44
  %46 = shl i32 %17, 1
  %47 = or i32 %46, %13
  %48 = shl i32 %47, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %48, i32 undef, i32 %41, i32 %45, i32 %45, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %49

; <label>:49                                      ; preds = %32, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

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
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.StructuredBuffer<GfxMultiLightGridLightingCount>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 80}
!8 = !{!9}
!9 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!12 = !{i32 1, %FxMultiLightgridProcessingConsts_decl* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!13 = !{void ()* @cs_fx_prerender_write_multilightgrid_indirect_dispatch_args, !"cs_fx_prerender_write_multilightgrid_indirect_dispatch_args", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 40, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

