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
; shader hash: eee1aa0dee535dd6a9ed2523cb649878
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
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxLightmapTypeConsts_decl = type { %struct.FxLightmapTypeConsts }
%struct.FxLightmapTypeConsts = type { i32, i32, i32, i32 }

define void @cs_fx_prerender_lightmap_allocate() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 0
  %10 = mul i32 %9, 6
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %10, i32 0)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %20, label %14, !dx.controlflow.hints !18

; <label>:14                                      ; preds = %0
  %15 = sub i32 %7, %12
  %16 = or i32 %10, 1
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %16, i32 0)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %73, !dx.controlflow.hints !18

; <label>:20                                      ; preds = %91, %85, %79, %73, %14, %0
  %21 = phi i32 [ 0, %0 ], [ 1, %14 ], [ 2, %73 ], [ 3, %79 ], [ 4, %85 ], [ %97, %91 ]
  %22 = phi i32 [ %7, %0 ], [ %15, %14 ], [ %74, %73 ], [ %80, %79 ], [ %86, %85 ], [ %99, %91 ]
  %23 = icmp ugt i32 %21, 5
  br i1 %23, label %72, label %24, !dx.controlflow.hints !19

; <label>:24                                      ; preds = %20
  %25 = shl i32 1, %21
  %26 = shl i32 %25, %21
  %27 = add i32 %21, %10
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %27, i32 0)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = mul i32 %26, %22
  %31 = lshr i32 %30, 10
  %32 = add i32 %29, %31
  %33 = lshr i32 %32, 4
  %34 = shl i32 %32, 5
  %35 = and i32 %34, 480
  %36 = shl i32 %33, 5
  %37 = sub nsw i32 5, %21
  %38 = and i32 %37, 31
  %39 = shl i32 1, %38
  %40 = shl nsw i32 %37, 1
  %41 = and i32 %40, 30
  %42 = shl i32 %31, %41
  %43 = sub i32 %22, %42
  %44 = add i32 %39, -1
  %45 = and i32 %43, %44
  %46 = lshr i32 %43, %38
  %47 = shl i32 %45, %21
  %48 = shl i32 %46, %21
  %49 = add i32 %35, %47
  %50 = add i32 %36, %48
  %51 = add i32 %10, 17
  %52 = add i32 %51, %21
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 %52)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 2
  %55 = add i32 %54, %22
  %56 = shl i32 %55, 5
  %57 = or i32 %56, 12
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = and i32 %59, 268435455
  %61 = and i32 %50, 16383
  %62 = shl i32 %49, 14
  %63 = and i32 %62, 268419072
  %64 = shl nuw nsw i32 %21, 28
  %65 = or i32 %61, %64
  %66 = or i32 %65, %63
  %67 = mul i32 %60, 56
  %68 = add i32 %67, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %68, i32 undef, i32 %66, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %69 = and i32 %59, -268435456
  %70 = or i32 %69, %61
  %71 = or i32 %70, %63
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %57, i32 undef, i32 %71, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %72

; <label>:72                                      ; preds = %24, %20
  ret void

; <label>:73                                      ; preds = %14
  %74 = sub i32 %15, %18
  %75 = add i32 %10, 2
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %75, i32 0)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %20, label %79, !dx.controlflow.hints !18

; <label>:79                                      ; preds = %73
  %80 = sub i32 %74, %77
  %81 = add i32 %10, 3
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %81, i32 0)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %20, label %85, !dx.controlflow.hints !18

; <label>:85                                      ; preds = %79
  %86 = sub i32 %80, %83
  %87 = add i32 %10, 4
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %87, i32 0)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %20, label %91, !dx.controlflow.hints !18

; <label>:91                                      ; preds = %85
  %92 = sub i32 %86, %89
  %93 = add i32 %10, 5
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %93, i32 0)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = icmp ult i32 %92, %95
  %97 = select i1 %96, i32 5, i32 6
  %98 = select i1 %96, i32 0, i32 %95
  %99 = sub i32 %92, %98
  br label %20
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !12, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !7}
!9 = !{!10, !11}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!14 = !{i32 1, %FxLightmapTypeConsts_decl* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!15 = !{void ()* @cs_fx_prerender_lightmap_allocate, !"cs_fx_prerender_lightmap_allocate", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 64, i32 1, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

