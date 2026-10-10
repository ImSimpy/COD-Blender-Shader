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
; shader hash: 0001431dfe511ef2774d071781599719
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
;   [48 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [112 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                       UAV     u32         buf      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<GfxGpuLightGridParams>" = type { %struct.GfxGpuLightGridParams }
%struct.GfxGpuLightGridParams = type { [7 x <4 x float>] }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWBuffer<unsigned int>" = type { i32 }
%GfxSampleLightGridVolumesLightingConsts = type { i32, i32, float, float, i32, i32, i32, i32, <3 x float>, i32 }

define void @cs_find_lightgrids_to_sample() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.i32 %7, 0
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %11, label %10, !dx.controlflow.hints !18

; <label>:10                                      ; preds = %0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %164

; <label>:11                                      ; preds = %0
  %12 = shl i32 %6, 5
  %13 = or i32 %12, 28
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %13, i32 undef)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = and i32 %15, -1610612736
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !dx.controlflow.hints !19

; <label>:18                                      ; preds = %11
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %164

; <label>:19                                      ; preds = %11
  %20 = shl i32 %6, 6
  %21 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = or i32 %20, 16
  %24 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 1
  %26 = or i32 %20, 32
  %27 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 2
  %29 = fmul fast float %28, %25
  %30 = extractvalue %dx.types.ResRet.f32 %24, 2
  %31 = extractvalue %dx.types.ResRet.f32 %27, 1
  %32 = fmul fast float %31, %30
  %33 = fsub fast float %29, %32
  %34 = fmul fast float %33, %22
  %35 = extractvalue %dx.types.ResRet.f32 %21, 1
  %36 = extractvalue %dx.types.ResRet.f32 %24, 0
  %37 = fmul fast float %28, %36
  %38 = extractvalue %dx.types.ResRet.f32 %27, 0
  %39 = fmul fast float %38, %30
  %40 = fsub fast float %37, %39
  %41 = fmul fast float %40, %35
  %42 = fsub fast float %34, %41
  %43 = extractvalue %dx.types.ResRet.f32 %21, 2
  %44 = fmul fast float %31, %36
  %45 = fmul fast float %38, %25
  %46 = fsub fast float %44, %45
  %47 = fmul fast float %46, %43
  %48 = fadd fast float %42, %47
  %49 = extractvalue %dx.types.ResRet.f32 %21, 3
  %50 = fmul fast float %33, %49
  %51 = extractvalue %dx.types.ResRet.f32 %24, 3
  %52 = fmul fast float %28, %35
  %53 = fmul fast float %31, %43
  %54 = fsub fast float %52, %53
  %55 = fmul fast float %54, %51
  %56 = fsub fast float %55, %50
  %57 = extractvalue %dx.types.ResRet.f32 %27, 3
  %58 = fmul fast float %30, %35
  %59 = fmul fast float %25, %43
  %60 = fsub fast float %58, %59
  %61 = fmul fast float %60, %57
  %62 = fsub fast float %56, %61
  %63 = fmul fast float %40, %49
  %64 = fmul fast float %28, %22
  %65 = fmul fast float %38, %43
  %66 = fsub fast float %64, %65
  %67 = fmul fast float %66, %51
  %68 = fsub fast float %63, %67
  %69 = fmul fast float %30, %22
  %70 = fmul fast float %36, %43
  %71 = fsub fast float %69, %70
  %72 = fmul fast float %71, %57
  %73 = fadd fast float %68, %72
  %74 = fmul fast float %46, %49
  %75 = fmul fast float %31, %22
  %76 = fmul fast float %38, %35
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %77, %51
  %79 = fsub fast float %78, %74
  %80 = fmul fast float %25, %22
  %81 = fmul fast float %36, %35
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %82, %57
  %84 = fsub fast float %79, %83
  %85 = fsub fast float %53, %52
  %86 = fsub fast float %39, %37
  %87 = fsub fast float %70, %69
  %88 = fsub fast float %76, %75
  %89 = fdiv fast float 1.000000e+00, %48
  %90 = fmul fast float %89, %33
  %91 = fmul fast float %89, %85
  %92 = fmul fast float %89, %60
  %93 = fmul fast float %89, %62
  %94 = fmul fast float %89, %86
  %95 = fmul fast float %89, %66
  %96 = fmul fast float %89, %87
  %97 = fmul fast float %89, %73
  %98 = fmul fast float %89, %46
  %99 = fmul fast float %89, %88
  %100 = fmul fast float %82, %89
  %101 = fmul fast float %89, %84
  %102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.i32 %102, 1
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.i32 %104, 3
  %106 = sub i32 %103, %105
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %162

; <label>:108                                     ; preds = %19
  br label %109

; <label>:109                                     ; preds = %157, %108
  %110 = phi i32 [ %158, %157 ], [ 0, %108 ]
  %111 = phi i32 [ %159, %157 ], [ 0, %108 ]
  br label %112

; <label>:112                                     ; preds = %112, %109
  %113 = phi i32 [ 1, %109 ], [ %149, %112 ]
  %114 = phi i32 [ 0, %109 ], [ %150, %112 ]
  %115 = shl i32 %114, 4
  %116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %111, i32 %115)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = extractvalue %dx.types.ResRet.f32 %116, 1
  %119 = call float @dx.op.dot2.f32(i32 54, float %117, float %118, float %117, float %118)  ; Dot2(ax,ay,bx,by)
  %120 = fsub fast float 1.000000e+00, %119
  %121 = call float @dx.op.unary.f32(i32 7, float %120)  ; Saturate(value)
  %122 = call float @dx.op.unary.f32(i32 24, float %121)  ; Sqrt(value)
  %123 = call float @dx.op.dot3.f32(i32 55, float %90, float %94, float %98, float %117, float %118, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %124 = call float @dx.op.dot3.f32(i32 55, float %91, float %95, float %99, float %117, float %118, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %125 = call float @dx.op.dot3.f32(i32 55, float %92, float %96, float %100, float %117, float %118, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %126 = call float @dx.op.dot3.f32(i32 55, float %93, float %97, float %101, float %117, float %118, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = extractvalue %dx.types.ResRet.f32 %116, 2
  %128 = fsub fast float %126, %127
  %129 = extractvalue %dx.types.ResRet.f32 %116, 3
  %130 = fsub fast float %126, %129
  %131 = fcmp fast oge float %123, 0.000000e+00
  %132 = select i1 %131, float 0.000000e+00, float 1.000000e+00
  %133 = fcmp fast oge float %124, 0.000000e+00
  %134 = select i1 %133, float 0.000000e+00, float 1.000000e+00
  %135 = fcmp fast oge float %125, 0.000000e+00
  %136 = select i1 %135, float 0.000000e+00, float 1.000000e+00
  %137 = fsub fast float 1.000000e+00, %132
  %138 = fsub fast float 1.000000e+00, %134
  %139 = fsub fast float 1.000000e+00, %136
  %140 = call float @dx.op.dot3.f32(i32 55, float %132, float %134, float %136, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %142 = fsub fast float -0.000000e+00, %130
  %143 = fcmp fast olt float %140, %142
  %144 = fsub fast float -0.000000e+00, %128
  %145 = fcmp fast ogt float %141, %144
  %146 = icmp ne i32 %113, 0
  %147 = and i1 %146, %143
  %148 = and i1 %145, %147
  %149 = zext i1 %148 to i32
  %150 = add nuw nsw i32 %114, 1
  %151 = icmp eq i32 %150, 7
  br i1 %151, label %152, label %112, !llvm.loop !20

; <label>:152                                     ; preds = %112
  br i1 %148, label %153, label %157, !dx.controlflow.hints !22

; <label>:153                                     ; preds = %152
  %154 = and i32 %111, 31
  %155 = shl i32 1, %154
  %156 = or i32 %155, %110
  br label %157

; <label>:157                                     ; preds = %153, %152
  %158 = phi i32 [ %156, %153 ], [ %110, %152 ]
  %159 = add nuw nsw i32 %111, 1
  %160 = icmp eq i32 %159, %106
  br i1 %160, label %161, label %109, !llvm.loop !23

; <label>:161                                     ; preds = %157
  br label %162

; <label>:162                                     ; preds = %161, %19
  %163 = phi i32 [ 0, %19 ], [ %158, %161 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 undef, i32 %163, i32 %163, i32 %163, i32 %163, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %164

; <label>:164                                     ; preds = %162, %18, %10
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

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
!4 = !{!5, !10, !13, null}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.StructuredBuffer<GfxGpuLightGridParams>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 112}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!10 = !{!11}
!11 = !{i32 0, %"class.RWBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 10, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 5}
!13 = !{!14}
!14 = !{i32 0, %GfxSampleLightGridVolumesLightingConsts* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!15 = !{void ()* @cs_find_lightgrids_to_sample, !"cs_find_lightgrids_to_sample", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 64, i32 1, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !21}

