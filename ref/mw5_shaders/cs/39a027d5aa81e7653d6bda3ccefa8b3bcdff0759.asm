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
; shader hash: 8c5de84d15de636ecb6579e40266ca46
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture    byte         r/o      T0            t16     1
;                                   texture    byte         r/o      T1            t17     1
;                                   texture    byte         r/o      T2            t19     1
;                                       UAV     u32          2d      U0             u0     9
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }

define void @cs_indirection_texture_update_mips_large() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = lshr i32 %4, 7
  %6 = shl nuw nsw i32 %5, 2
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6, i32 undef)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = and i32 %4, 64
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %8, 65535
  %12 = lshr i32 %8, 16
  %13 = select i1 %10, i32 %11, i32 %12
  %14 = shl nuw nsw i32 %13, 3
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = or i32 %14, 4
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %17, i32 undef)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = and i32 %16, 65535
  %21 = lshr i32 %16, 16
  %22 = lshr i32 %19, 16
  %23 = shl nuw nsw i32 %22, 6
  %24 = sub i32 %4, %23
  %25 = lshr i32 %19, 4
  %26 = and i32 %25, 4095
  %27 = urem i32 %24, %26
  %28 = udiv i32 %24, %26
  %29 = and i32 %19, 15
  %30 = shl nuw nsw i32 %13, 2
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = add nuw nsw i32 %27, %20
  %34 = add i32 %28, %21
  switch i32 %29, label %51 [
    i32 0, label %35
    i32 1, label %37
    i32 2, label %39
    i32 3, label %41
    i32 4, label %43
    i32 5, label %45
    i32 6, label %47
    i32 7, label %49
  ], !dx.controlflow.hints !15

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %36, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:37                                      ; preds = %0
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %38, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:39                                      ; preds = %0
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %40, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:41                                      ; preds = %0
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %42, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:43                                      ; preds = %0
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %44, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:45                                      ; preds = %0
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %46, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:47                                      ; preds = %0
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %48, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:49                                      ; preds = %0
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %50, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:51                                      ; preds = %0
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %52, i32 %33, i32 %34, i32 undef, i32 %32, i32 %32, i32 %32, i32 %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %53

; <label>:53                                      ; preds = %51, %49, %47, %45, %43, %41, %39, %37, %35
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, null, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, [9 x %"class.RWTexture2D<unsigned int>"]* undef, !"", i32 0, i32 0, i32 9, i32 2, i1 false, i1 false, i1 false, !11}
!11 = !{i32 0, i32 5}
!12 = !{void ()* @cs_indirection_texture_update_mips_large, !"cs_indirection_texture_update_mips_large", null, !4, !13}
!13 = !{i32 0, i64 33040, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}

