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
; shader hash: 32e72ede82db23f0d1b65275ce305f4b
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
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [512 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%MayhemConsts = type { i32, i32, i32, i32 }
%rigidBoneIndices = type { [32 x <4 x i32>] }

define void @cs_mayhem_channels_rigid() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = alloca [4 x i32], align 4
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.i32 %7, 0
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %36, !dx.controlflow.hints !15

; <label>:10                                      ; preds = %0
  %11 = lshr i32 %6, 2
  %12 = and i32 %6, 4
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 %11)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %16 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %17 = extractvalue %dx.types.CBufRet.i32 %13, 3
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 2
  store i32 %16, i32* %20, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 3
  store i32 %17, i32* %21, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 %12
  %23 = load i32, i32* %22, align 4, !tbaa !16
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = shl i32 %23, 4
  %27 = add i32 %25, %26
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = extractvalue %dx.types.ResRet.i32 %28, 1
  %31 = extractvalue %dx.types.ResRet.i32 %28, 2
  %32 = extractvalue %dx.types.ResRet.i32 %28, 3
  %33 = extractvalue %dx.types.CBufRet.i32 %24, 2
  %34 = shl i32 %6, 4
  %35 = add i32 %33, %34
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %35, i32 undef, i32 %29, i32 %30, i32 %31, i32 %32, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %36

; <label>:36                                      ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !9, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10, !11}
!10 = !{i32 0, %MayhemConsts* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!11 = !{i32 1, %rigidBoneIndices* undef, !"", i32 0, i32 1, i32 1, i32 512, null}
!12 = !{void ()* @cs_mayhem_channels_rigid, !"cs_mayhem_channels_rigid", null, !4, !13}
!13 = !{i32 0, i64 272, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}

