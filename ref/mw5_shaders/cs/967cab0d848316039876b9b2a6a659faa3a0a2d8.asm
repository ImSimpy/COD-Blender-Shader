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
; shader hash: 46d6ba46f2702e4b78f167e806ef634d
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
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   texture  struct         r/o      T0             t4     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%DecalVolumeCsBucketConstants = type { i32, i32, i32, i32 }

define void @cs_decal_volume_indirect_args_buckets_merged() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %5 = extractvalue %dx.types.CBufRet.i32 %4, 0
  %6 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %7 = extractvalue %dx.types.ResRet.i32 %6, 0
  %8 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %9 = extractvalue %dx.types.ResRet.i32 %8, 0
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 2, i32 0)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 3, i32 0)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 0)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 5, i32 0)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 6, i32 0)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = shl i32 %5, 3
  %21 = call i32 @dx.op.binary.i32(i32 40, i32 %7, i32 %20)  ; UMin(a,b)
  %22 = call i32 @dx.op.binary.i32(i32 40, i32 %9, i32 %20)  ; UMin(a,b)
  %23 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 %20)  ; UMin(a,b)
  %24 = call i32 @dx.op.binary.i32(i32 40, i32 %13, i32 %20)  ; UMin(a,b)
  %25 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 %20)  ; UMin(a,b)
  %26 = call i32 @dx.op.binary.i32(i32 40, i32 %17, i32 %20)  ; UMin(a,b)
  %27 = call i32 @dx.op.binary.i32(i32 40, i32 %19, i32 %20)  ; UMin(a,b)
  %28 = icmp ne i32 %21, 0
  %29 = add i32 %21, 63
  %30 = lshr i32 %29, 6
  %31 = select i1 %28, i32 %30, i32 0
  %32 = icmp ne i32 %22, 0
  %33 = add i32 %22, 31
  %34 = lshr i32 %33, 5
  %35 = select i1 %32, i32 %34, i32 0
  %36 = icmp ne i32 %23, 0
  %37 = add i32 %23, 15
  %38 = lshr i32 %37, 4
  %39 = select i1 %36, i32 %38, i32 0
  %40 = icmp ne i32 %24, 0
  %41 = add i32 %24, 7
  %42 = lshr i32 %41, 3
  %43 = select i1 %40, i32 %42, i32 0
  %44 = icmp ne i32 %25, 0
  %45 = add i32 %25, 3
  %46 = lshr i32 %45, 2
  %47 = select i1 %44, i32 %46, i32 0
  %48 = icmp ne i32 %26, 0
  %49 = add i32 %26, 1
  %50 = lshr i32 %49, 1
  %51 = select i1 %48, i32 %50, i32 0
  %52 = add nuw nsw i32 %35, %31
  %53 = add nuw nsw i32 %52, %39
  %54 = add nuw nsw i32 %53, %43
  %55 = add i32 %54, %27
  %56 = add i32 %55, %47
  %57 = add i32 %56, %51
  %58 = extractvalue %dx.types.CBufRet.i32 %4, 1
  %59 = icmp ugt i32 %57, %58
  %60 = select i1 %59, i32 0, i32 %57
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 undef, i32 %60, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 12, i32 undef, i32 0, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 24, i32 undef, i32 0, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 36, i32 undef, i32 0, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 48, i32 undef, i32 0, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 60, i32 undef, i32 0, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 72, i32 undef, i32 0, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{!9}
!9 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{!11}
!11 = !{i32 0, %DecalVolumeCsBucketConstants* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!12 = !{void ()* @cs_decal_volume_indirect_args_buckets_merged, !"cs_decal_volume_indirect_args_buckets_merged", null, !4, !13}
!13 = !{i32 0, i64 272, i32 4, !14}
!14 = !{i32 1, i32 1, i32 1}

