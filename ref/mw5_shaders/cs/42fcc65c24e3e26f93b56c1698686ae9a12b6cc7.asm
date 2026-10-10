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
; shader hash: fe837ceb1a95ce7ec9024e6eed99ceb7
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }

define void @cs_blendshapes_unified_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = extractvalue %dx.types.ResRet.i32 %7, 3
  %10 = shl i32 %5, 2
  %11 = add i32 %9, %10
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %11, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = and i32 %13, 65535
  %15 = lshr i32 %13, 16
  %16 = add i32 %15, %6
  %17 = mul nuw nsw i32 %14, 48
  %18 = add i32 %17, %8
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = extractvalue %dx.types.ResRet.i32 %19, 1
  %22 = extractvalue %dx.types.ResRet.i32 %19, 2
  %23 = extractvalue %dx.types.ResRet.i32 %19, 3
  %24 = add i32 %8, 16
  %25 = add i32 %24, %17
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = add i32 %8, 32
  %29 = add i32 %28, %17
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 2
  %32 = bitcast i32 %20 to float
  %33 = bitcast i32 %21 to float
  %34 = bitcast i32 %22 to float
  %35 = bitcast i32 %23 to float
  %36 = icmp ult i32 %16, %31
  br i1 %36, label %37, label %161, !dx.controlflow.hints !14

; <label>:37                                      ; preds = %0
  %38 = extractvalue %dx.types.ResRet.i32 %26, 1
  %39 = extractvalue %dx.types.ResRet.i32 %30, 0
  %40 = extractvalue %dx.types.ResRet.i32 %7, 1
  %41 = shl i32 %16, 3
  %42 = lshr i32 %16, 7
  %43 = and i32 %42, 4194303
  %44 = add i32 %27, %43
  %45 = shl i32 %44, 2
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = shl i32 %47, 10
  %49 = and i32 %41, 1016
  %50 = or i32 %48, %49
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = extractvalue %dx.types.ResRet.i32 %51, 1
  %54 = lshr i32 %52, 16
  %55 = add i32 %54, %53
  %56 = shl i32 %52, 3
  %57 = and i32 %56, 524280
  %58 = add i32 %57, %38
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = extractvalue %dx.types.ResRet.i32 %59, 1
  %62 = and i32 %60, 2097151
  %63 = uitofp i32 %62 to float
  %64 = lshr i32 %60, 21
  %65 = shl i32 %61, 11
  %66 = and i32 %65, 2095104
  %67 = or i32 %66, %64
  %68 = uitofp i32 %67 to float
  %69 = lshr i32 %61, 10
  %70 = and i32 %69, 2097151
  %71 = uitofp i32 %70 to float
  %72 = fdiv float %63, 2.097151e+06
  %73 = fdiv float %68, 2.097151e+06
  %74 = fdiv float %71, 2.097151e+06
  %75 = fmul float %72, 2.000000e+00
  %76 = fmul float %73, 2.000000e+00
  %77 = fmul float %74, 2.000000e+00
  %78 = fadd float %75, -1.000000e+00
  %79 = fadd float %76, -1.000000e+00
  %80 = fadd float %77, -1.000000e+00
  %81 = fmul float %35, %78
  %82 = fmul float %35, %79
  %83 = fmul float %35, %80
  %84 = fadd float %32, %81
  %85 = fadd float %33, %82
  %86 = fadd float %34, %83
  %87 = shl i32 %39, 2
  %88 = and i32 %87, 262140
  %89 = add i32 %88, %40
  %90 = icmp ult i32 %53, %55
  br i1 %90, label %91, label %130

; <label>:91                                      ; preds = %37
  br label %92

; <label>:92                                      ; preds = %92, %91
  %93 = phi float [ %124, %92 ], [ %84, %91 ]
  %94 = phi float [ %125, %92 ], [ %85, %91 ]
  %95 = phi float [ %126, %92 ], [ %86, %91 ]
  %96 = phi i32 [ %127, %92 ], [ %53, %91 ]
  %97 = shl i32 %96, 3
  %98 = lshr i32 %96, 7
  %99 = and i32 %98, 4194303
  %100 = add i32 %99, %27
  %101 = shl i32 %100, 2
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = shl i32 %103, 10
  %105 = and i32 %97, 1016
  %106 = or i32 %104, %105
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = extractvalue %dx.types.ResRet.i32 %107, 1
  %110 = shl i32 %108, 2
  %111 = and i32 %110, 262140
  %112 = add i32 %89, %111
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %112, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = bitcast i32 %114 to float
  %116 = lshr i32 %109, 16
  %117 = lshr i32 %108, 16
  %118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %116), !dx.precise !15  ; LegacyF16ToF32(value)
  %119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109), !dx.precise !15  ; LegacyF16ToF32(value)
  %120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %117), !dx.precise !15  ; LegacyF16ToF32(value)
  %121 = fmul float %118, %115
  %122 = fmul float %119, %115
  %123 = fmul float %115, %120
  %124 = fadd float %93, %121
  %125 = fadd float %94, %122
  %126 = fadd float %95, %123
  %127 = add nuw i32 %96, 1
  %128 = icmp eq i32 %127, %55
  br i1 %128, label %129, label %92, !llvm.loop !16

; <label>:129                                     ; preds = %92
  br label %130

; <label>:130                                     ; preds = %129, %37
  %131 = phi float [ %84, %37 ], [ %124, %129 ]
  %132 = phi float [ %85, %37 ], [ %125, %129 ]
  %133 = phi float [ %86, %37 ], [ %126, %129 ]
  %134 = fsub float %131, %32
  %135 = fsub float %132, %33
  %136 = fsub float %133, %34
  %137 = fdiv float 1.000000e+00, %35
  %138 = fmul float %134, %137
  %139 = fmul float %135, %137
  %140 = fmul float %136, %137
  %141 = fmul float %138, 5.000000e-01
  %142 = fmul float %139, 5.000000e-01
  %143 = fmul float %140, 5.000000e-01
  %144 = fadd float %141, 5.000000e-01
  %145 = fadd float %142, 5.000000e-01
  %146 = fadd float %143, 5.000000e-01
  %147 = call float @dx.op.unary.f32(i32 7, float %144), !dx.precise !15  ; Saturate(value)
  %148 = call float @dx.op.unary.f32(i32 7, float %145), !dx.precise !15  ; Saturate(value)
  %149 = call float @dx.op.unary.f32(i32 7, float %146), !dx.precise !15  ; Saturate(value)
  %150 = fmul float %147, 2.097151e+06
  %151 = fmul float %148, 2.097151e+06
  %152 = fmul float %149, 2.097151e+06
  %153 = fptoui float %150 to i32
  %154 = fptoui float %151 to i32
  %155 = fptoui float %152 to i32
  %156 = shl i32 %154, 21
  %157 = or i32 %156, %153
  %158 = lshr i32 %154, 11
  %159 = shl i32 %155, 10
  %160 = or i32 %159, %158
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %58, i32 undef, i32 %157, i32 %160, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %161

; <label>:161                                     ; preds = %130, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, null, null}
!5 = !{!6, !7, !8}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{void ()* @cs_blendshapes_unified_main, !"cs_blendshapes_unified_main", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 64, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = !{i32 1}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}

