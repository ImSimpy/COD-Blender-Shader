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
; shader hash: 9b02c040c28e77e92f5c8dd8eccfd5c8
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
;   [80 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb4     1
;                                   texture  struct         r/o      T0             t2     1
;                                   texture  struct         r/o      T1             t0     1
;                                   texture  struct         r/o      T2             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;                                       UAV  struct         r/w      U2             u3     1
;                                       UAV  struct         r/w      U3             u4     1
;                                       UAV  struct         r/w      U4             u5     1
;                                       UAV  struct         r/w      U5             u6     1
;                                       UAV    byte         r/w      U6             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<GfxMultiLightGridLightingCount>" = type { %struct.GfxMultiLightGridLightingCount }
%struct.GfxMultiLightGridLightingCount = type { [20 x i32] }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxLightmapTypeConsts_decl = type { %struct.FxLightmapTypeConsts }
%struct.FxLightmapTypeConsts = type { i32, i32, i32, i32 }
%FxMultiLightgridProcessingConsts_decl = type { %struct.FxMultiLightgridProcessingConsts }
%struct.FxMultiLightgridProcessingConsts = type { i32, i32, i32, i32 }

define void @cs_fx_prerender_lightmap_allocate() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %17 = mul i32 %16, 6
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %17, i32 0)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = icmp ult i32 %14, %19
  br i1 %20, label %27, label %21, !dx.controlflow.hints !26

; <label>:21                                      ; preds = %0
  %22 = sub i32 %14, %19
  %23 = or i32 %17, 1
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %23, i32 0)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %117, !dx.controlflow.hints !26

; <label>:27                                      ; preds = %135, %129, %123, %117, %21, %0
  %28 = phi i32 [ 0, %0 ], [ 1, %21 ], [ 2, %117 ], [ 3, %123 ], [ 4, %129 ], [ %141, %135 ]
  %29 = phi i32 [ %14, %0 ], [ %22, %21 ], [ %118, %117 ], [ %124, %123 ], [ %130, %129 ], [ %143, %135 ]
  %30 = icmp ugt i32 %28, 5
  br i1 %30, label %116, label %31, !dx.controlflow.hints !27

; <label>:31                                      ; preds = %27
  %32 = shl i32 1, %28
  %33 = shl i32 %32, %28
  %34 = add i32 %28, %17
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %34, i32 0)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = mul i32 %33, %29
  %38 = lshr i32 %37, 10
  %39 = add i32 %36, %38
  %40 = lshr i32 %39, 4
  %41 = shl i32 %39, 5
  %42 = and i32 %41, 480
  %43 = shl i32 %40, 5
  %44 = sub nsw i32 5, %28
  %45 = and i32 %44, 31
  %46 = shl i32 1, %45
  %47 = shl nsw i32 %44, 1
  %48 = and i32 %47, 30
  %49 = shl i32 %38, %48
  %50 = sub i32 %29, %49
  %51 = add i32 %46, -1
  %52 = and i32 %50, %51
  %53 = lshr i32 %50, %45
  %54 = shl i32 %52, %28
  %55 = shl i32 %53, %28
  %56 = add i32 %42, %54
  %57 = add i32 %43, %55
  %58 = add i32 %17, 17
  %59 = add i32 %58, %28
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 %59)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 2
  %62 = extractvalue %dx.types.CBufRet.i32 %60, 3
  %63 = add i32 %61, %29
  %64 = shl i32 %63, 5
  %65 = or i32 %64, 12
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = and i32 %67, 268435455
  %69 = and i32 %57, 16383
  %70 = shl i32 %56, 14
  %71 = and i32 %70, 268419072
  %72 = shl nuw nsw i32 %28, 28
  %73 = or i32 %69, %72
  %74 = or i32 %73, %71
  %75 = mul i32 %68, 56
  %76 = add i32 %75, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %7, i32 %76, i32 undef, i32 %74, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %77 = and i32 %67, -268435456
  %78 = or i32 %77, %69
  %79 = or i32 %78, %71
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %65, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %80 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %63, i32 0)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %81, i32 0)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %6, i32 %63, i32 0, i32 %83, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %84 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.i32 %84, 0
  %86 = mul i32 %85, 6
  %87 = add i32 %86, %28
  %88 = lshr i32 %29, 6
  %89 = add i32 %62, %88
  %90 = mul i32 %89, 20
  %91 = icmp eq i32 %83, 0
  br i1 %91, label %105, label %92

; <label>:92                                      ; preds = %31
  br label %93

; <label>:93                                      ; preds = %93, %92
  %94 = phi i32 [ %102, %93 ], [ %83, %92 ]
  %95 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %94)  ; FirstbitLo(value)
  %96 = shl i32 %95, 2
  %97 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %87, i32 %96, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %98 = add i32 %95, %90
  %99 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %98, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %100 = and i32 %95, 31
  %101 = shl i32 1, %100
  %102 = xor i32 %101, %94
  %103 = icmp eq i32 %94, %101
  br i1 %103, label %104, label %93

; <label>:104                                     ; preds = %93
  br label %105

; <label>:105                                     ; preds = %104, %31
  %106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.i32 %106, 1
  %108 = shl nuw nsw i32 %28, 1
  %109 = shl i32 %107, %108
  %110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.i32 %110, 0
  %112 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %111, i32 0, i32 undef, i32 %109)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %113 = add i32 %112, %109
  %114 = icmp ugt i32 %113, 262144
  %115 = select i1 %114, i32 262144, i32 %112
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %63, i32 0, i32 %115, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %116

; <label>:116                                     ; preds = %105, %27
  ret void

; <label>:117                                     ; preds = %21
  %118 = sub i32 %22, %25
  %119 = add i32 %17, 2
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %119, i32 0)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %27, label %123, !dx.controlflow.hints !26

; <label>:123                                     ; preds = %117
  %124 = sub i32 %118, %121
  %125 = add i32 %17, 3
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %125, i32 0)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %27, label %129, !dx.controlflow.hints !26

; <label>:129                                     ; preds = %123
  %130 = sub i32 %124, %127
  %131 = add i32 %17, 4
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %131, i32 0)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %27, label %135, !dx.controlflow.hints !26

; <label>:135                                     ; preds = %129
  %136 = sub i32 %130, %133
  %137 = add i32 %17, 5
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %137, i32 0)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = icmp ult i32 %136, %139
  %141 = select i1 %140, i32 5, i32 6
  %142 = select i1 %140, i32 0, i32 %139
  %143 = sub i32 %136, %142
  br label %27
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !19, null}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!9 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !7}
!10 = !{!11, !12, !13, !14, !16, !17, !18}
!11 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!13 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!14 = !{i32 3, %"class.RWStructuredBuffer<GfxMultiLightGridLightingCount>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !15}
!15 = !{i32 1, i32 80}
!16 = !{i32 4, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!17 = !{i32 5, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!18 = !{i32 6, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!19 = !{!20, !21, !22}
!20 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!21 = !{i32 1, %FxLightmapTypeConsts_decl* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!22 = !{i32 2, %FxMultiLightgridProcessingConsts_decl* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!23 = !{void ()* @cs_fx_prerender_lightmap_allocate, !"cs_fx_prerender_lightmap_allocate", null, !4, !24}
!24 = !{i32 0, i64 272, i32 4, !25}
!25 = !{i32 64, i32 1, i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

