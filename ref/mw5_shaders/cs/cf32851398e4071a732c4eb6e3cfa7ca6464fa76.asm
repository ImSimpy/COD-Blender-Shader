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
; shader hash: 26ea5eaf7fc1e7f76f3674bf1a84137d
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
;   [80 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
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
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [20 x i8] (type annotation not present)
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
;                                   texture  struct         r/o      T0             t2     1
;                                   texture  struct         r/o      T1             t3     1
;                                   texture  struct         r/o      T2             t4     1
;                                   texture  struct         r/o      T3             t1     1
;                                       UAV  struct         r/w      U0             u6     1
;                                       UAV  struct         r/w      U1             u5     1
;                                       UAV  struct         r/w      U2             u4     1
;                                       UAV    byte         r/w      U3             u1     1
;                                       UAV  struct         r/w      U4             u3     1
;                                       UAV  struct         r/w      U5             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.StructuredBuffer<FxEmitterInstancePerFrameData>" = type { %struct.FxEmitterInstancePerFrameData }
%struct.FxEmitterInstancePerFrameData = type { <4 x float>, <3 x float>, i32, <3 x float>, i32, i32, float, float, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<FxEmitterDefPerFrameData>" = type { %struct.FxEmitterDefPerFrameData }
%struct.FxEmitterDefPerFrameData = type { i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<FxParticleCounter>" = type { %struct.FxParticleCounter }
%struct.FxParticleCounter = type { i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<GfxIndexedIndirectArgs>" = type { %struct.GfxIndexedIndirectArgs }
%struct.GfxIndexedIndirectArgs = type { i32, i32, i32, i32, i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }

define void @cs_fx_preupdate_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %12, i32 0)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.i32 %13, 0
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %14, i32 68)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %14, i32 72)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %14, i32 76)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = lshr i32 %16, 16
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %14, i32 8)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %21, i32 0)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = sub nsw i32 %25, %23
  %27 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %26)  ; IMax(a,b)
  %28 = call i32 @dx.op.binary.i32(i32 38, i32 %27, i32 %18)  ; IMin(a,b)
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 3
  %31 = xor i32 %30, 1
  %32 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 %31, i32 0, i32 undef, i32 %28)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 2
  %35 = mul i32 %34, %31
  %36 = add i32 %35, %32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %14, i32 0, i32 %36, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %37 = add i32 %32, %28
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 2
  %40 = icmp ugt i32 %37, %39
  br i1 %40, label %41, label %44, !dx.controlflow.hints !27

; <label>:41                                      ; preds = %0
  %42 = sub nsw i32 %39, %32
  %43 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %42)  ; IMax(a,b)
  br label %44

; <label>:44                                      ; preds = %41, %0
  %45 = phi i32 [ %43, %41 ], [ %28, %0 ]
  %46 = add i32 %45, %23
  %47 = icmp eq i32 %20, -1
  br i1 %47, label %48, label %61, !dx.controlflow.hints !28

; <label>:48                                      ; preds = %44
  %49 = extractvalue %dx.types.CBufRet.i32 %38, 3
  %50 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 %49, i32 0, i32 undef, i32 %46)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %51 = add i32 %50, %46
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 2
  %54 = icmp ugt i32 %51, %53
  br i1 %54, label %55, label %61, !dx.controlflow.hints !29

; <label>:55                                      ; preds = %48
  %56 = sub nsw i32 %53, %50
  %57 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %56)  ; IMax(a,b)
  %58 = sub nsw i32 %57, %23
  %59 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %58)  ; IMax(a,b)
  %60 = call i32 @dx.op.binary.i32(i32 38, i32 %45, i32 %59)  ; IMin(a,b)
  br label %61

; <label>:61                                      ; preds = %55, %48, %44
  %62 = phi i32 [ %50, %55 ], [ %50, %48 ], [ %20, %44 ]
  %63 = phi i32 [ %60, %55 ], [ %45, %48 ], [ %45, %44 ]
  %64 = phi i32 [ %57, %55 ], [ %46, %48 ], [ %46, %44 ]
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 3
  %67 = extractvalue %dx.types.CBufRet.i32 %65, 2
  %68 = mul i32 %67, %66
  %69 = add i32 %68, %62
  %70 = shl i32 %66, 8
  %71 = or i32 %70, 2
  %72 = add i32 %71, %14
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %72, i32 0, i32 %69, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %21, i32 4)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = and i32 %16, 65535
  %76 = add i32 %74, %75
  %77 = add i32 %63, 63
  %78 = lshr i32 %77, 6
  %79 = call i32 @dx.op.tertiary.i32(i32 49, i32 %21, i32 64, i32 0)  ; UMad(a,b,c)
  %80 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %79, i32 undef, i32 undef, i32 %78)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %76, i32 0, i32 %78, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %81 = add i32 %64, 63
  %82 = lshr i32 %81, 6
  %83 = call i32 @dx.op.tertiary.i32(i32 49, i32 %21, i32 64, i32 32)  ; UMad(a,b,c)
  %84 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %83, i32 undef, i32 undef, i32 %82)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %85 = add i32 %76, 256
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %85, i32 0, i32 %82, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %86 = add i32 %76, 512
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %86, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %87 = mul i32 %62, 6
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %14, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %14, i32 4, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %14, i32 8, i32 %87, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %14, i32 12, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %14, i32 16, i32 %14, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %14, i32 0, i32 %64, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %14, i32 4, i32 %63, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %14, i32 8, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %14, i32 12, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

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
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !22, null}
!5 = !{!6, !8, !10, !12}
!6 = !{i32 0, %"class.StructuredBuffer<FxEmitterInstancePerFrameData>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 80}
!8 = !{i32 1, %"class.StructuredBuffer<FxEmitterDefPerFrameData>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 4}
!12 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !11}
!13 = !{!14, !15, !16, !18, !19, !21}
!14 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!15 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!16 = !{i32 2, %"class.RWStructuredBuffer<FxParticleCounter>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !17}
!17 = !{i32 1, i32 16}
!18 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!19 = !{i32 4, %"class.RWStructuredBuffer<GfxIndexedIndirectArgs>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !20}
!20 = !{i32 1, i32 20}
!21 = !{i32 5, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!22 = !{!23}
!23 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!24 = !{void ()* @cs_fx_preupdate_particles, !"cs_fx_preupdate_particles", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 1, i32 1, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}

