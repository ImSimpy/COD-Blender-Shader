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
; shader hash: d1bf00a4f64150c3a542431fe1637e15
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
;   [64 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV  struct         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%CSMConstants = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @copy_depth() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 0
  %10 = icmp eq i32 %9, 1
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %14, label %41, !dx.controlflow.hints !19

; <label>:14                                      ; preds = %0
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %17 = uitofp i32 %6 to float
  %18 = fadd fast float %17, 5.000000e-01
  %19 = uitofp i32 %16 to float
  %20 = fdiv fast float %18, %19
  %21 = uitofp i32 %7 to float
  %22 = fadd fast float %21, 5.000000e-01
  %23 = fdiv fast float %22, %19
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = fmul fast float %25, %20
  %28 = fmul fast float %26, %23
  %29 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %31 = fadd fast float %27, %29
  %32 = fadd fast float %28, %30
  %33 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = select i1 %13, float %34, float %36
  %38 = mul i32 %16, %7
  %39 = add i32 %38, %6
  %40 = bitcast float %37 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %39, i32 0, i32 %40, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %134

; <label>:41                                      ; preds = %0
  %42 = extractvalue %dx.types.CBufRet.i32 %8, 1
  %43 = bitcast i32 %42 to float
  %44 = udiv i32 %7, %9
  %45 = urem i32 %6, %9
  %46 = sub i32 %6, %45
  %47 = uitofp i32 %46 to float
  %48 = fadd fast float %47, 5.000000e-01
  %49 = fmul fast float %48, %43
  %50 = icmp eq i32 %9, 0
  br i1 %50, label %84, label %51

; <label>:51                                      ; preds = %41
  %52 = mul i32 %44, %9
  %53 = uitofp i32 %52 to float
  %54 = fadd fast float %53, 5.000000e-01
  %55 = fmul fast float %54, %43
  br label %56

; <label>:56                                      ; preds = %79, %51
  %57 = phi float [ %80, %79 ], [ %55, %51 ]
  %58 = phi float [ %75, %79 ], [ 0.000000e+00, %51 ]
  %59 = phi i32 [ %81, %79 ], [ 0, %51 ]
  br label %60

; <label>:60                                      ; preds = %60, %56
  %61 = phi float [ %76, %60 ], [ %49, %56 ]
  %62 = phi float [ %75, %60 ], [ %58, %56 ]
  %63 = phi i32 [ %77, %60 ], [ 0, %56 ]
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = fmul fast float %65, %61
  %68 = fmul fast float %66, %57
  %69 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %70 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %71 = fadd fast float %67, %69
  %72 = fadd fast float %68, %70
  %73 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = call float @dx.op.binary.f32(i32 35, float %74, float %62)  ; FMax(a,b)
  %76 = fadd fast float %61, %43
  %77 = add nuw i32 %63, 1
  %78 = icmp eq i32 %77, %9
  br i1 %78, label %79, label %60

; <label>:79                                      ; preds = %60
  %80 = fadd fast float %57, %43
  %81 = add nuw i32 %59, 1
  %82 = icmp eq i32 %81, %9
  br i1 %82, label %83, label %56

; <label>:83                                      ; preds = %79
  br label %84

; <label>:84                                      ; preds = %83, %41
  %85 = phi float [ 0.000000e+00, %41 ], [ %75, %83 ]
  br i1 %50, label %123, label %86

; <label>:86                                      ; preds = %84
  %87 = mul i32 %44, %9
  %88 = uitofp i32 %87 to float
  %89 = fadd fast float %88, 5.000000e-01
  %90 = fmul fast float %89, %43
  br label %91

; <label>:91                                      ; preds = %118, %86
  %92 = phi float [ %114, %118 ], [ 2.000000e+00, %86 ]
  %93 = phi float [ %119, %118 ], [ %90, %86 ]
  %94 = phi i32 [ %120, %118 ], [ 0, %86 ]
  br label %95

; <label>:95                                      ; preds = %113, %91
  %96 = phi float [ %114, %113 ], [ %92, %91 ]
  %97 = phi float [ %115, %113 ], [ %49, %91 ]
  %98 = phi i32 [ %116, %113 ], [ 0, %91 ]
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = fmul fast float %100, %97
  %103 = fmul fast float %101, %93
  %104 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %106 = fadd fast float %102, %104
  %107 = fadd fast float %103, %105
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %106, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fcmp fast ogt float %109, 0.000000e+00
  br i1 %110, label %111, label %113, !dx.controlflow.hints !20

; <label>:111                                     ; preds = %95
  %112 = call float @dx.op.binary.f32(i32 36, float %109, float %96)  ; FMin(a,b)
  br label %113

; <label>:113                                     ; preds = %111, %95
  %114 = phi float [ %112, %111 ], [ %96, %95 ]
  %115 = fadd fast float %97, %43
  %116 = add nuw i32 %98, 1
  %117 = icmp eq i32 %116, %9
  br i1 %117, label %118, label %95

; <label>:118                                     ; preds = %113
  %119 = fadd fast float %93, %43
  %120 = add nuw i32 %94, 1
  %121 = icmp eq i32 %120, %9
  br i1 %121, label %122, label %91

; <label>:122                                     ; preds = %118
  br label %123

; <label>:123                                     ; preds = %122, %84
  %124 = phi float [ 2.000000e+00, %84 ], [ %114, %122 ]
  %125 = fcmp fast ole float %124, 1.000000e+00
  %126 = select i1 %125, float %124, float 0.000000e+00
  %127 = select i1 %13, float %85, float %126
  %128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.i32 %128, 0
  %130 = mul i32 %9, %7
  %131 = mul i32 %130, %129
  %132 = add i32 %131, %6
  %133 = bitcast float %127 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %132, i32 0, i32 %133, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %134

; <label>:134                                     ; preds = %123, %14
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !12, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!11 = !{i32 1, i32 4}
!12 = !{!13}
!13 = !{i32 0, %CSMConstants* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!16 = !{void ()* @copy_depth, !"copy_depth", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}

