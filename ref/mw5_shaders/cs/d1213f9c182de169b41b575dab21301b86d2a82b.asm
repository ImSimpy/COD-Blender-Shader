;
; Note: shader requires additional functionality:
;       64 UAV slots
;
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
; shader hash: 233b8dcb21b0ece1a26cf0a6cd0bd273
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0            t16     1
;                                   texture    byte         r/o      T1            t17     1
;                                   texture    byte         r/o      T2            t18     1
;                                       UAV     u32          2d      U0             u0     9
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%GfxIndirectionTexture_Update = type { i32, i32, i32, i32 }

define void @cs_indirection_texture_update_mips_small() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %57, !dx.controlflow.hints !17

; <label>:9                                       ; preds = %0
  %10 = lshr i32 %5, 1
  %11 = shl i32 %10, 2
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = and i32 %5, 1
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, 65535
  %17 = lshr i32 %13, 16
  %18 = select i1 %15, i32 %16, i32 %17
  %19 = shl nuw nsw i32 %18, 3
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = or i32 %19, 4
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = and i32 %21, 65535
  %26 = lshr i32 %21, 16
  %27 = lshr i32 %24, 16
  %28 = sub i32 %5, %27
  %29 = lshr i32 %24, 4
  %30 = and i32 %29, 4095
  %31 = urem i32 %28, %30
  %32 = udiv i32 %28, %30
  %33 = and i32 %24, 15
  %34 = shl nuw nsw i32 %18, 2
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = add nuw nsw i32 %31, %25
  %38 = add i32 %32, %26
  switch i32 %33, label %55 [
    i32 0, label %39
    i32 1, label %41
    i32 2, label %43
    i32 3, label %45
    i32 4, label %47
    i32 5, label %49
    i32 6, label %51
    i32 7, label %53
  ], !dx.controlflow.hints !18

; <label>:39                                      ; preds = %9
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %40, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:41                                      ; preds = %9
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %42, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:43                                      ; preds = %9
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %44, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:45                                      ; preds = %9
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %46, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:47                                      ; preds = %9
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %48, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:49                                      ; preds = %9
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %50, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:51                                      ; preds = %9
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %52, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:53                                      ; preds = %9
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %54, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:55                                      ; preds = %9
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %56, i32 %37, i32 %38, i32 undef, i32 %36, i32 %36, i32 %36, i32 %36, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:57                                      ; preds = %55, %53, %51, %49, %47, %45, %43, %41, %39, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!4 = !{!5, !9, !12, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, [9 x %"class.RWTexture2D<unsigned int>"]* undef, !"", i32 0, i32 0, i32 9, i32 2, i1 false, i1 false, i1 false, !11}
!11 = !{i32 0, i32 5}
!12 = !{!13}
!13 = !{i32 0, %GfxIndirectionTexture_Update* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!14 = !{void ()* @cs_indirection_texture_update_mips_small, !"cs_indirection_texture_update_mips_small", null, !4, !15}
!15 = !{i32 0, i64 33040, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

