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
; shader hash: 6b41ee310bda529e2b0214c59678ca13
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
;                                   texture     u32          3d      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture3D<unsigned int>" = type { i32, %"class.Texture3D<unsigned int>::mips_type" }
%"class.Texture3D<unsigned int>::mips_type" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%ConstantBufferWriteBitmask = type { <2 x i32>, <2 x i32> }

define void @cs_frustum_lights_write_bitmask() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %8 = extractvalue %dx.types.CBufRet.i32 %6, 1
  %9 = icmp ult i32 %4, %7
  %10 = icmp ult i32 %5, %8
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %52, !dx.controlflow.hints !15

; <label>:12                                      ; preds = %0
  %13 = extractvalue %dx.types.CBufRet.i32 %6, 2
  %14 = mul i32 %7, %5
  %15 = add i32 %14, %4
  %16 = mul i32 %15, %13
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %52, label %18

; <label>:18                                      ; preds = %12
  %19 = extractvalue %dx.types.CBufRet.i32 %6, 3
  br label %20

; <label>:20                                      ; preds = %43, %18
  %21 = phi i32 [ %44, %43 ], [ 0, %18 ]
  %22 = phi i32 [ %48, %43 ], [ %19, %18 ]
  %23 = phi i32 [ %49, %43 ], [ 0, %18 ]
  %24 = call i32 @dx.op.binary.i32(i32 40, i32 %22, i32 32)  ; UMin(a,b)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

; <label>:26                                      ; preds = %20
  br label %27

; <label>:27                                      ; preds = %27, %26
  %28 = phi i32 [ %38, %27 ], [ %21, %26 ]
  %29 = phi i32 [ %36, %27 ], [ 0, %26 ]
  %30 = phi i32 [ %37, %27 ], [ 1, %26 ]
  %31 = phi i32 [ %39, %27 ], [ 0, %26 ]
  %32 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %4, i32 %5, i32 %28, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, i32 %30, i32 0
  %36 = or i32 %35, %29
  %37 = shl i32 %30, 1
  %38 = add i32 %28, 1
  %39 = add nuw i32 %31, 1
  %40 = icmp eq i32 %39, %24
  br i1 %40, label %41, label %27

; <label>:41                                      ; preds = %27
  %42 = add i32 %24, %21
  br label %43

; <label>:43                                      ; preds = %41, %20
  %44 = phi i32 [ %21, %20 ], [ %42, %41 ]
  %45 = phi i32 [ 0, %20 ], [ %36, %41 ]
  %46 = add i32 %23, %16
  %47 = shl i32 %46, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %47, i32 undef, i32 %45, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %48 = add i32 %22, -32
  %49 = add nuw i32 %23, 1
  %50 = icmp eq i32 %49, %13
  br i1 %50, label %51, label %20

; <label>:51                                      ; preds = %43
  br label %52

; <label>:52                                      ; preds = %51, %12, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture3D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{!9}
!9 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{!11}
!11 = !{i32 0, %ConstantBufferWriteBitmask* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!12 = !{void ()* @cs_frustum_lights_write_bitmask, !"cs_frustum_lights_write_bitmask", null, !4, !13}
!13 = !{i32 0, i64 272, i32 4, !14}
!14 = !{i32 8, i32 8, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}

