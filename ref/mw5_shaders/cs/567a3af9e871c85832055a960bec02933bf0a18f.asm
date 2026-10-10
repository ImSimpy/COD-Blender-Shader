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
; shader hash: 544c88919279a59ff6457ebf1036452b
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
; Resource bind info for 
; {
;
;   [12 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture    byte         r/o      T0            t35     1
;                                   texture    byte         r/o      T1            t36     1
;                                   texture    byte         r/o      T2            t28     1
;                                   texture    byte         r/o      T3            t29     1
;                                   texture    byte         r/o      T4            t30     1
;                                   texture    byte         r/o      T5            t31     1
;                                   texture    byte         r/o      T6            t32     1
;                                   texture  struct         r/o      T7            t33     1
;                                   texture    byte         r/o      T8            t34     1
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
%"class.StructuredBuffer<GfxWorldDrawOffsets>" = type { %struct.GfxWorldDrawOffsets }
%struct.GfxWorldDrawOffsets = type { i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GPBspSurfDataGenConsts = type { i32, i32, i32, i32, i32, i32, i32, i32 }

define void @bsp_surf_data_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %15 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %16 = shl i32 %14, 6
  %17 = add i32 %16, %15
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %21 = add i32 %20, %19
  %22 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %23 = icmp ne i32 %22, 0
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 0
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = add i32 %25, %17
  %29 = add i32 %28, %27
  %30 = icmp ult i32 %17, %21
  %31 = icmp ult i32 %17, %19
  br i1 %30, label %32, label %122, !dx.controlflow.hints !25

; <label>:32                                      ; preds = %0
  br i1 %31, label %33, label %38, !dx.controlflow.hints !26

; <label>:33                                      ; preds = %32
  %34 = shl i32 %17, 3
  %35 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.i32 %35, 0
  %37 = extractvalue %dx.types.ResRet.i32 %35, 1
  br label %43

; <label>:38                                      ; preds = %32
  %39 = sub i32 %17, %19
  %40 = shl i32 %39, 2
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  br label %43

; <label>:43                                      ; preds = %38, %33
  %44 = phi i32 [ %36, %33 ], [ %42, %38 ]
  %45 = phi i32 [ %37, %33 ], [ 16384, %38 ]
  %46 = and i32 %44, 4194303
  %47 = lshr i32 %44, 22
  %48 = lshr i32 %44, 28
  %49 = shl nuw nsw i32 %46, 5
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 3
  %52 = or i32 %49, 16
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = extractvalue %dx.types.ResRet.i32 %53, 1
  %56 = extractvalue %dx.types.ResRet.i32 %53, 3
  %57 = lshr i32 %55, 16
  %58 = and i32 %56, 255
  %59 = lshr i32 %46, 5
  %60 = and i32 %44, 31
  %61 = lshr i32 %51, 5
  %62 = and i32 %51, 31
  %63 = shl nuw nsw i32 %59, 2
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = shl nuw nsw i32 %61, 2
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = shl i32 1, %60
  %70 = and i32 %65, %69
  %71 = icmp ne i32 %70, 0
  %72 = shl i32 1, %62
  %73 = and i32 %68, %72
  %74 = icmp ne i32 %73, 0
  %75 = and i1 %71, %74
  %76 = select i1 %75, i32 %57, i32 0
  br i1 %31, label %90, label %77, !dx.controlflow.hints !27

; <label>:77                                      ; preds = %43
  %78 = and i32 %47, 63
  %79 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %80 = mul i32 %79, %78
  %81 = add i32 %80, %54
  %82 = shl i32 %81, 1
  %83 = and i32 %82, -4
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %83, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = shl i32 %54, 4
  %87 = and i32 %86, 16
  %88 = lshr i32 %85, %87
  %89 = and i32 %88, 65535
  br label %90

; <label>:90                                      ; preds = %77, %43
  %91 = phi i32 [ %89, %77 ], [ %45, %43 ]
  %92 = shl i32 %54, 2
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %46, i32 0)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %46, i32 4)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %46, i32 8)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 0
  %101 = select i1 %23, i32 %58, i32 0
  %102 = and i32 %48, 1
  %103 = icmp ne i32 %102, 0
  %104 = and i32 %101, 239
  %105 = select i1 %103, i32 %104, i32 %101
  %106 = shl nuw nsw i32 %47, 8
  %107 = and i32 %106, 16128
  %108 = or i32 %105, %107
  %109 = shl nuw nsw i32 %108, 16
  %110 = or i32 %76, %109
  %111 = and i32 %51, 16777215
  %112 = shl nuw nsw i32 %48, 24
  %113 = or i32 %111, %112
  %114 = shl i32 %17, 3
  %115 = add i32 %114, 5242880
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %115, i32 undef, i32 %110, i32 %113, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %116 = shl i32 %17, 4
  %117 = add i32 %116, 5767168
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %117, i32 undef, i32 %91, i32 %98, i32 %100, i32 %46, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %118 = add i32 %114, 6815744
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %118, i32 undef, i32 %96, i32 %96, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %119 = add i32 %114, 7340032
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %119, i32 undef, i32 %94, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %120 = add nuw nsw i32 %76, 63
  %121 = lshr i32 %120, 6
  br label %122

; <label>:122                                     ; preds = %90, %0
  %123 = phi i32 [ %121, %90 ], [ 0, %0 ]
  %124 = phi i32 [ %91, %90 ], [ 65535, %0 ]
  %125 = xor i1 %30, true
  %126 = icmp eq i32 %124, 16384
  %127 = or i1 %126, %125
  br i1 %127, label %131, label %128, !dx.controlflow.hints !28

; <label>:128                                     ; preds = %122
  %129 = shl i32 %124, 2
  %130 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %129, i32 undef, i32 undef, i32 %123)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %131

; <label>:131                                     ; preds = %128, %122
  %132 = phi i32 [ %130, %128 ], [ 0, %122 ]
  br i1 %30, label %133, label %135, !dx.controlflow.hints !29

; <label>:133                                     ; preds = %131
  %134 = shl i32 %29, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %134, i32 undef, i32 %132, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %135

; <label>:135                                     ; preds = %133, %131
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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !20, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !15}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 35, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 36, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 29, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 30, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 31, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 32, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %"class.StructuredBuffer<GfxWorldDrawOffsets>"* undef, !"", i32 0, i32 33, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 12}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 34, i32 1, i32 11, i32 0, null}
!16 = !{!17, !18, !19}
!17 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!18 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!19 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!20 = !{!21}
!21 = !{i32 0, %GPBspSurfDataGenConsts* undef, !"", i32 0, i32 3, i32 1, i32 32, null}
!22 = !{void ()* @bsp_surf_data_gen_pass, !"bsp_surf_data_gen_pass", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 64, i32 1, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}

