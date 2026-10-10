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
; shader hash: e385086d6818518e2c2ebf9953ab2b0d
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
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                       UAV    byte         r/w      U0             u1     1
;                                       UAV  struct         r/w      U1             u4     1
;                                       UAV  struct         r/w      U2             u3     1
;                                       UAV    byte         r/w      U3             u0     1
;                                       UAV    byte         r/w      U4             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }

define void @cs_fx_prerender_lightmap_write_indirect_dispatch_args() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = alloca [4 x i32], align 4
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = and i32 %8, 1
  %11 = icmp ne i32 %10, 0
  %12 = lshr i32 %8, 1
  %13 = mul i32 %9, 6
  %14 = add i32 %13, %12
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = add i32 %14, 17
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %17)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %20 = call i32 @dx.op.binary.i32(i32 40, i32 %16, i32 %19)  ; UMin(a,b)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %14, i32 0, i32 %20, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %21 = call i32 @dx.op.binary.i32(i32 40, i32 %12, i32 3)  ; UMin(a,b)
  br i1 %11, label %22, label %25, !dx.controlflow.hints !17

; <label>:22                                      ; preds = %0
  %23 = add nsw i32 %21, -1
  %24 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %23)  ; IMax(a,b)
  br label %25

; <label>:25                                      ; preds = %22, %0
  %26 = phi i32 [ %24, %22 ], [ %21, %0 ]
  %27 = shl i32 %26, 1
  %28 = call i32 @dx.op.binary.i32(i32 40, i32 6, i32 %27)  ; UMin(a,b)
  %29 = sub i32 6, %28
  %30 = and i32 %29, 31
  %31 = shl i32 1, %30
  %32 = add i32 %20, -1
  %33 = add i32 %32, %31
  %34 = lshr i32 %33, %30
  %35 = and i32 %12, 31
  %36 = shl i32 1, %35
  %37 = and i32 %21, 31
  %38 = lshr i32 %36, %37
  %39 = select i1 %11, i32 6, i32 0
  %40 = mul i32 %9, 12
  %41 = add i32 %40, %12
  %42 = add i32 %41, %39
  %43 = shl i32 %42, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %43, i32 undef, i32 %34, i32 %38, i32 %38, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 0
  %46 = extractvalue %dx.types.CBufRet.i32 %44, 1
  %47 = extractvalue %dx.types.CBufRet.i32 %44, 2
  %48 = extractvalue %dx.types.CBufRet.i32 %44, 3
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 3
  store i32 %48, i32* %52, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 %9
  %54 = load i32, i32* %53, align 4, !tbaa !18
  br label %55

; <label>:55                                      ; preds = %55, %25
  %56 = phi i32 [ 0, %25 ], [ %62, %55 ]
  %57 = phi i32 [ %54, %25 ], [ %70, %55 ]
  %58 = phi i32 [ 0, %25 ], [ %71, %55 ]
  %59 = add i32 %58, %13
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %59, i32 0)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = add i32 %61, %56
  %63 = add i32 %61, 63
  %64 = lshr i32 %63, 6
  %65 = shl i32 %59, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %65, i32 undef, i32 %64, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %66 = shl i32 %58, 1
  %67 = shl i32 %61, %66
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %59, i32 0, i32 %57, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %68 = add i32 %67, 1023
  %69 = lshr i32 %68, 10
  %70 = add i32 %69, %57
  %71 = add nuw nsw i32 %58, 1
  %72 = icmp eq i32 %71, 6
  br i1 %72, label %73, label %55

; <label>:73                                      ; preds = %55
  %74 = add i32 %62, 63
  %75 = lshr i32 %74, 6
  %76 = shl i32 %9, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %76, i32 undef, i32 %75, i32 1, i32 1, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !12, null}
!5 = !{!6, !7, !9, !10, !11}
!6 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!7 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!8 = !{i32 1, i32 4}
!9 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!10 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{i32 4, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{!13}
!13 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!14 = !{void ()* @cs_fx_prerender_lightmap_write_indirect_dispatch_args, !"cs_fx_prerender_lightmap_write_indirect_dispatch_args", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 12, i32 2, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}

