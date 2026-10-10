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
; shader hash: 9786ba9877c7cb0d745f594613a67446
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
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture    byte         r/o      T0            t15     1
;                                   texture    byte         r/o      T1            t19     1
;                                   texture    byte         r/o      T2            t23     1
;                                       UAV    byte         r/w      U0             u4     1
;                                       UAV    byte         r/w      U1             u0     1
;                                       UAV    byte         r/w      U2             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GPDynSurfDataGenConsts = type { i32, i32, i32, i32 }

define void @dyn_surf_data_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = shl i32 %8, 6
  %11 = add i32 %10, %9
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = icmp ult i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = extractvalue %dx.types.CBufRet.i32 %12, 1
  %17 = icmp ne i32 %16, 0
  br i1 %14, label %18, label %52, !dx.controlflow.hints !18

; <label>:18                                      ; preds = %0
  %19 = mul i32 %11, 52
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %19, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = extractvalue %dx.types.ResRet.i32 %20, 1
  %23 = extractvalue %dx.types.ResRet.i32 %20, 2
  %24 = extractvalue %dx.types.ResRet.i32 %20, 3
  %25 = add i32 %19, 16
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = extractvalue %dx.types.ResRet.i32 %26, 1
  %29 = extractvalue %dx.types.ResRet.i32 %26, 2
  %30 = extractvalue %dx.types.ResRet.i32 %26, 3
  %31 = add i32 %19, 32
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %31, i32 undef)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = extractvalue %dx.types.ResRet.i32 %32, 1
  %35 = extractvalue %dx.types.ResRet.i32 %32, 2
  %36 = extractvalue %dx.types.ResRet.i32 %32, 3
  %37 = add i32 %19, 48
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = and i32 %22, 255
  %41 = lshr i32 %22, 8
  %42 = and i32 %41, 255
  %43 = lshr i32 %22, 16
  %44 = and i32 %43, 255
  %45 = lshr i32 %22, 24
  %46 = and i32 %23, 65535
  %47 = and i32 %24, 65535
  %48 = and i32 %39, 65535
  %49 = lshr i32 %39, 16
  %50 = icmp ne i32 %27, -1
  %51 = zext i1 %50 to i32
  br label %52

; <label>:52                                      ; preds = %18, %0
  %53 = phi i32 [ %21, %18 ], [ undef, %0 ]
  %54 = phi i32 [ %40, %18 ], [ undef, %0 ]
  %55 = phi i32 [ %42, %18 ], [ undef, %0 ]
  %56 = phi i32 [ %44, %18 ], [ undef, %0 ]
  %57 = phi i32 [ %45, %18 ], [ undef, %0 ]
  %58 = phi i32 [ %46, %18 ], [ undef, %0 ]
  %59 = phi i32 [ %27, %18 ], [ undef, %0 ]
  %60 = phi i32 [ %47, %18 ], [ undef, %0 ]
  %61 = phi i32 [ %28, %18 ], [ undef, %0 ]
  %62 = phi i32 [ %29, %18 ], [ undef, %0 ]
  %63 = phi i32 [ %30, %18 ], [ undef, %0 ]
  %64 = phi i32 [ %33, %18 ], [ undef, %0 ]
  %65 = phi i32 [ %34, %18 ], [ undef, %0 ]
  %66 = phi i32 [ %35, %18 ], [ undef, %0 ]
  %67 = phi i32 [ %36, %18 ], [ undef, %0 ]
  %68 = phi i32 [ %48, %18 ], [ undef, %0 ]
  %69 = phi i32 [ %49, %18 ], [ undef, %0 ]
  %70 = phi i32 [ %51, %18 ], [ %15, %0 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %131, label %72, !dx.controlflow.hints !19

; <label>:72                                      ; preds = %52
  %73 = lshr i32 %59, 5
  %74 = and i32 %59, 31
  %75 = shl nuw nsw i32 %73, 2
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = shl i32 1, %74
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = mul i32 %59, 44
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = extractvalue %dx.types.ResRet.i32 %82, 1
  %85 = extractvalue %dx.types.ResRet.i32 %82, 2
  %86 = extractvalue %dx.types.ResRet.i32 %82, 3
  %87 = add i32 %81, 16
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = extractvalue %dx.types.ResRet.i32 %88, 1
  %91 = extractvalue %dx.types.ResRet.i32 %88, 2
  %92 = extractvalue %dx.types.ResRet.i32 %88, 3
  %93 = add i32 %81, 32
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = extractvalue %dx.types.ResRet.i32 %94, 1
  %97 = select i1 %80, i32 %69, i32 0
  %98 = select i1 %80, i32 %60, i32 16384
  %99 = and i32 %53, 268435455
  %100 = shl i32 %97, 16
  %101 = and i32 %56, 15
  %102 = shl i32 %55, 4
  %103 = and i32 %102, 112
  %104 = shl i32 %57, 8
  %105 = and i32 %104, 65280
  %106 = select i1 %17, i32 %105, i32 0
  %107 = shl i32 %54, 24
  %108 = or i32 %107, %103
  %109 = or i32 %108, %101
  %110 = or i32 %109, %106
  %111 = or i32 %110, 16646144
  %112 = mul i32 %11, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %112, i32 undef, i32 %99, i32 %100, i32 %111, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %113 = add i32 %89, %61
  %114 = add i32 %96, %68
  %115 = and i32 %58, 65535
  %116 = shl i32 %98, 16
  %117 = or i32 %116, %115
  %118 = add i32 %112, 1572864
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %118, i32 undef, i32 %113, i32 %117, i32 %114, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %119 = add i32 %112, 786432
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %119, i32 undef, i32 %83, i32 %63, i32 %62, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %120 = shl i32 %11, 4
  %121 = add i32 %120, 2359296
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %121, i32 undef, i32 %84, i32 %85, i32 %86, i32 %64, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %122 = shl i32 %11, 3
  %123 = add i32 %122, 3407872
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %123, i32 undef, i32 %66, i32 %67, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %124 = add i32 %122, 3932160
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %124, i32 undef, i32 %90, i32 %91, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %125 = shl i32 %11, 2
  %126 = add i32 %125, 4456448
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %126, i32 undef, i32 %65, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %127 = add i32 %125, 4718592
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %127, i32 undef, i32 %92, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %128 = add i32 %125, 4980736
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %128, i32 undef, i32 %95, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %129 = add i32 %97, 63
  %130 = lshr i32 %129, 6
  br label %131

; <label>:131                                     ; preds = %72, %52
  %132 = phi i32 [ %130, %72 ], [ 0, %52 ]
  %133 = phi i32 [ %98, %72 ], [ 65535, %52 ]
  %134 = icmp ne i32 %70, 0
  %135 = xor i1 %134, true
  %136 = icmp eq i32 %133, 16384
  %137 = or i1 %136, %135
  br i1 %137, label %141, label %138, !dx.controlflow.hints !20

; <label>:138                                     ; preds = %131
  %139 = shl i32 %133, 2
  %140 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %139, i32 undef, i32 undef, i32 %132)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %141

; <label>:141                                     ; preds = %138, %131
  %142 = phi i32 [ %140, %138 ], [ 0, %131 ]
  br i1 %134, label %143, label %145, !dx.controlflow.hints !21

; <label>:143                                     ; preds = %141
  %144 = shl i32 %11, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %144, i32 undef, i32 %142, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %145

; <label>:145                                     ; preds = %143, %141
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !13, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 23, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11, !12}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!13 = !{!14}
!14 = !{i32 0, %GPDynSurfDataGenConsts* undef, !"", i32 0, i32 3, i32 1, i32 16, null}
!15 = !{void ()* @dyn_surf_data_gen_pass, !"dyn_surf_data_gen_pass", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 64, i32 1, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

