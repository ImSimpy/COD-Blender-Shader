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
; shader hash: cce03b832f542ab9edc43f3647e50dd8
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.i32 %7, 0
  %9 = extractvalue %dx.types.CBufRet.i32 %7, 1
  %10 = icmp ult i32 %5, %8
  %11 = icmp ult i32 %6, %9
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %86, !dx.controlflow.hints !16

; <label>:13                                      ; preds = %0
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %86, label %17

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %82, %17
  %19 = phi i32 [ %83, %82 ], [ 0, %17 ]
  br label %20

; <label>:20                                      ; preds = %18
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = add i32 %22, -1
  %24 = shl i32 %5, 1
  %25 = call i32 @dx.op.binary.i32(i32 40, i32 %24, i32 %23)  ; UMin(a,b)
  %26 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %27 = add i32 %26, -1
  %28 = shl i32 %6, 1
  %29 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 %27)  ; UMin(a,b)
  %30 = call i32 @dx.op.tertiary.i32(i32 49, i32 %29, i32 %22, i32 %25)  ; UMad(a,b,c)
  %31 = mul i32 %30, %15
  %32 = add i32 %31, %19
  %33 = shl i32 %32, 2
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = or i32 %28, 1
  %37 = call i32 @dx.op.binary.i32(i32 40, i32 %36, i32 %27)  ; UMin(a,b)
  %38 = call i32 @dx.op.tertiary.i32(i32 49, i32 %37, i32 %22, i32 %25)  ; UMad(a,b,c)
  %39 = mul i32 %38, %15
  %40 = add i32 %39, %19
  %41 = shl i32 %40, 2
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = or i32 %35, %43
  %45 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.i32 %45, 0
  %47 = add i32 %46, -1
  %48 = shl i32 %5, 1
  %49 = or i32 %48, 1
  %50 = call i32 @dx.op.binary.i32(i32 40, i32 %49, i32 %47)  ; UMin(a,b)
  %51 = extractvalue %dx.types.CBufRet.i32 %45, 1
  %52 = add i32 %51, -1
  %53 = shl i32 %6, 1
  %54 = call i32 @dx.op.binary.i32(i32 40, i32 %53, i32 %52)  ; UMin(a,b)
  %55 = call i32 @dx.op.tertiary.i32(i32 49, i32 %54, i32 %46, i32 %50)  ; UMad(a,b,c)
  %56 = mul i32 %55, %15
  %57 = add i32 %56, %19
  %58 = shl i32 %57, 2
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = or i32 %60, %44
  %62 = or i32 %53, 1
  %63 = call i32 @dx.op.binary.i32(i32 40, i32 %62, i32 %52)  ; UMin(a,b)
  %64 = call i32 @dx.op.tertiary.i32(i32 49, i32 %63, i32 %46, i32 %50)  ; UMad(a,b,c)
  %65 = mul i32 %64, %15
  %66 = add i32 %65, %19
  %67 = shl i32 %66, 2
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = or i32 %61, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %72

; <label>:72                                      ; preds = %20
  br label %73

; <label>:73                                      ; preds = %73, %72
  %74 = phi i32 [ %79, %73 ], [ %70, %72 ]
  %75 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %74)  ; FirstbitLo(value)
  %76 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %19, i32 %75)  ; UMad(a,b,c)
  %77 = and i32 %75, 31
  %78 = shl i32 1, %77
  %79 = xor i32 %78, %74
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 %76, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %5, i32 %6, i32 %76, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %80 = icmp eq i32 %74, %78
  br i1 %80, label %81, label %73, !llvm.loop !17

; <label>:81                                      ; preds = %73
  br label %82

; <label>:82                                      ; preds = %81, %20
  %83 = add nuw i32 %19, 1
  %84 = icmp eq i32 %83, %15
  br i1 %84, label %85, label %18, !llvm.loop !19

; <label>:85                                      ; preds = %82
  br label %86

; <label>:86                                      ; preds = %85, %13, %0
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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !11, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!7 = !{!8, !10}
!8 = !{i32 0, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 1, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !9}
!11 = !{!12}
!12 = !{i32 0, %ConstantBufferAllocateVTFromTileMask* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{void ()* @cs_spotvis_clearvt_tile_mask, !"cs_spotvis_clearvt_tile_mask", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}

