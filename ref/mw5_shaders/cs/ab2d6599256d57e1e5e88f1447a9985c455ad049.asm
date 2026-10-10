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
; shader hash: ba82712f774a6f43a0f58fac1f7eed75
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
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%UGBStagingDataConsts = type { i32, i32, i32, i32 }

define void @copy_world_surf_data() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %6 = shl i32 %4, 6
  %7 = add i32 %6, %5
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 1
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %132, !dx.controlflow.hints !14

; <label>:11                                      ; preds = %0
  %12 = shl i32 %7, 7
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = add i32 %14, %12
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %15, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = extractvalue %dx.types.ResRet.i32 %16, 1
  %19 = extractvalue %dx.types.ResRet.i32 %16, 2
  %20 = bitcast i32 %17 to float
  %21 = bitcast i32 %18 to float
  %22 = bitcast i32 %19 to float
  %23 = or i32 %12, 12
  %24 = add i32 %14, %23
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %24, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = bitcast i32 %26 to float
  %28 = add nsw i32 %23, 4
  %29 = add i32 %28, %14
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = add nsw i32 %23, 8
  %33 = add i32 %32, %14
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = add i32 %23, 12
  %37 = add i32 %36, %14
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %37, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = or i32 %12, 28
  %41 = add i32 %14, %40
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %41, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = add nsw i32 %40, 4
  %45 = add i32 %44, %14
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = add nsw i32 %40, 8
  %49 = add i32 %48, %14
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = add i32 %40, 12
  %53 = add i32 %52, %14
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = add nsw i32 %40, 16
  %57 = add i32 %56, %14
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %57, i32 undef)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = add i32 %40, 20
  %61 = add i32 %60, %14
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = add i32 %40, 24
  %65 = add i32 %64, %14
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = add i32 %40, 28
  %69 = add i32 %68, %14
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = or i32 %12, 60
  %73 = add i32 %14, %72
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = add nsw i32 %72, 4
  %77 = add i32 %76, %14
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = add nsw i32 %72, 8
  %81 = add i32 %80, %14
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = add i32 %72, 12
  %85 = add i32 %84, %14
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = add nsw i32 %72, 16
  %89 = add i32 %88, %14
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = add i32 %72, 20
  %93 = add i32 %92, %14
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = add i32 %72, 24
  %97 = add i32 %96, %14
  %98 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %97, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.i32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %101 = add i32 %100, %7
  %102 = shl i32 %101, 7
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %102, i32 undef, float %20, float %21, float %22, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %103 = or i32 %102, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %103, i32 undef, float %27, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %104 = or i32 %102, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %104, i32 undef, i32 %31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %105 = or i32 %102, 20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %105, i32 undef, i32 %35, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %106 = or i32 %102, 24
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %106, i32 undef, i32 %39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %107 = or i32 %102, 28
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %107, i32 undef, i32 %43, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %108 = or i32 %102, 32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %108, i32 undef, i32 %47, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %109 = or i32 %102, 36
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %109, i32 undef, i32 %51, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %110 = or i32 %102, 40
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %110, i32 undef, i32 %55, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %111 = or i32 %102, 44
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %111, i32 undef, i32 %59, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %112 = or i32 %102, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %112, i32 undef, i32 %63, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %113 = or i32 %102, 52
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %113, i32 undef, i32 %67, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %114 = or i32 %102, 56
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %114, i32 undef, i32 %71, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %115 = or i32 %102, 60
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %115, i32 undef, i32 %75, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %116 = or i32 %102, 64
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %116, i32 undef, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %117 = or i32 %102, 68
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %117, i32 undef, i32 %83, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %118 = or i32 %102, 72
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %118, i32 undef, i32 %87, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %119 = or i32 %102, 76
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %119, i32 undef, i32 %91, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %120 = or i32 %102, 80
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %120, i32 undef, i32 %95, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %121 = or i32 %102, 84
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %121, i32 undef, i32 %99, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %122 = or i32 %102, 88
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %122, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %123 = or i32 %102, 92
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %123, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %124 = or i32 %102, 96
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %124, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %125 = or i32 %102, 100
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %125, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %126 = or i32 %102, 104
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %126, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %127 = or i32 %102, 108
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %127, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %128 = or i32 %102, 112
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %128, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %129 = or i32 %102, 116
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %129, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %130 = or i32 %102, 120
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %130, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %131 = or i32 %102, 124
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %131, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %132

; <label>:132                                     ; preds = %11, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !9, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10}
!10 = !{i32 0, %UGBStagingDataConsts* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!11 = !{void ()* @copy_world_surf_data, !"copy_world_surf_data", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}

