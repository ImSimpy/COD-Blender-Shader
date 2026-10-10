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
; shader hash: daa8e0e081a7ef7802f29c5c4b6e0fe1
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t6     1
;                                       UAV     u32     2darray      U0             u1     1
;                                       UAV     u32     2darray      U1             u2     1
;                                       UAV     u32     2darray      U2             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<unsigned int>" = type { i32 }
%ConstantBufferAllocateVTFromTileMask = type { <2 x i32>, <2 x i32>, <2 x i32>, i32, i32 }

define void @cs_spotvis_clearvt_tile_mask() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 0
  %10 = extractvalue %dx.types.CBufRet.i32 %8, 1
  %11 = icmp ult i32 %6, %9
  %12 = icmp ult i32 %7, %10
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %87, !dx.controlflow.hints !17

; <label>:14                                      ; preds = %0
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %87, label %18

; <label>:18                                      ; preds = %14
  br label %19

; <label>:19                                      ; preds = %83, %18
  %20 = phi i32 [ %84, %83 ], [ 0, %18 ]
  br label %21

; <label>:21                                      ; preds = %19
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = add i32 %23, -1
  %25 = shl i32 %6, 1
  %26 = call i32 @dx.op.binary.i32(i32 40, i32 %25, i32 %24)  ; UMin(a,b)
  %27 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %28 = add i32 %27, -1
  %29 = shl i32 %7, 1
  %30 = call i32 @dx.op.binary.i32(i32 40, i32 %29, i32 %28)  ; UMin(a,b)
  %31 = call i32 @dx.op.tertiary.i32(i32 49, i32 %30, i32 %23, i32 %26)  ; UMad(a,b,c)
  %32 = mul i32 %31, %16
  %33 = add i32 %32, %20
  %34 = shl i32 %33, 2
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = or i32 %29, 1
  %38 = call i32 @dx.op.binary.i32(i32 40, i32 %37, i32 %28)  ; UMin(a,b)
  %39 = call i32 @dx.op.tertiary.i32(i32 49, i32 %38, i32 %23, i32 %26)  ; UMad(a,b,c)
  %40 = mul i32 %39, %16
  %41 = add i32 %40, %20
  %42 = shl i32 %41, 2
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = or i32 %36, %44
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 0
  %48 = add i32 %47, -1
  %49 = shl i32 %6, 1
  %50 = or i32 %49, 1
  %51 = call i32 @dx.op.binary.i32(i32 40, i32 %50, i32 %48)  ; UMin(a,b)
  %52 = extractvalue %dx.types.CBufRet.i32 %46, 1
  %53 = add i32 %52, -1
  %54 = shl i32 %7, 1
  %55 = call i32 @dx.op.binary.i32(i32 40, i32 %54, i32 %53)  ; UMin(a,b)
  %56 = call i32 @dx.op.tertiary.i32(i32 49, i32 %55, i32 %47, i32 %51)  ; UMad(a,b,c)
  %57 = mul i32 %56, %16
  %58 = add i32 %57, %20
  %59 = shl i32 %58, 2
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = or i32 %61, %45
  %63 = or i32 %54, 1
  %64 = call i32 @dx.op.binary.i32(i32 40, i32 %63, i32 %53)  ; UMin(a,b)
  %65 = call i32 @dx.op.tertiary.i32(i32 49, i32 %64, i32 %47, i32 %51)  ; UMad(a,b,c)
  %66 = mul i32 %65, %16
  %67 = add i32 %66, %20
  %68 = shl i32 %67, 2
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %68, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = or i32 %62, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

; <label>:73                                      ; preds = %21
  br label %74

; <label>:74                                      ; preds = %74, %73
  %75 = phi i32 [ %80, %74 ], [ %71, %73 ]
  %76 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %75)  ; FirstbitLo(value)
  %77 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %20, i32 %76)  ; UMad(a,b,c)
  %78 = and i32 %76, 31
  %79 = shl i32 1, %78
  %80 = xor i32 %79, %75
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %6, i32 %7, i32 %77, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 %77, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %3, i32 %6, i32 %7, i32 %77, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %81 = icmp eq i32 %75, %79
  br i1 %81, label %82, label %74, !llvm.loop !18

; <label>:82                                      ; preds = %74
  br label %83

; <label>:83                                      ; preds = %82, %21
  %84 = add nuw i32 %20, 1
  %85 = icmp eq i32 %84, %16
  br i1 %85, label %86, label %19, !llvm.loop !20

; <label>:86                                      ; preds = %83
  br label %87

; <label>:87                                      ; preds = %86, %14, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!4 = !{!5, !7, !12, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!7 = !{!8, !10, !11}
!8 = !{i32 0, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !9}
!11 = !{i32 2, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 7, i1 false, i1 false, i1 false, !9}
!12 = !{!13}
!13 = !{i32 0, %ConstantBufferAllocateVTFromTileMask* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{void ()* @cs_spotvis_clearvt_tile_mask, !"cs_spotvis_clearvt_tile_mask", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}

