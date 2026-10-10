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
; shader hash: 03ae09fd27dce37410eb29504446644a
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
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%TransShadowConstants = type { <2 x float>, float, i32 }
%struct.SamplerState = type { i32 }

define void @cs_sunvis_trans_shadow_mask_dilation_and_taa() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = uitofp i32 %6 to float
  %9 = uitofp i32 %7 to float
  %10 = fadd fast float %8, 5.000000e-01
  %11 = fadd fast float %9, 5.000000e-01
  %12 = fmul fast float %10, 3.125000e-02
  %13 = fmul fast float %11, 3.125000e-02
  %14 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %15 = extractvalue %dx.types.ResRet.f32 %14, 0
  %16 = extractvalue %dx.types.ResRet.f32 %14, 1
  %17 = extractvalue %dx.types.ResRet.f32 %14, 2
  %18 = extractvalue %dx.types.ResRet.f32 %14, 3
  %19 = fadd fast float %12, -3.125000e-02
  %20 = fadd fast float %13, -3.125000e-02
  %21 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %19, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = extractvalue %dx.types.ResRet.f32 %21, 1
  %24 = extractvalue %dx.types.ResRet.f32 %21, 2
  %25 = extractvalue %dx.types.ResRet.f32 %21, 3
  %26 = fcmp fast ogt float %15, 0.000000e+00
  %27 = fcmp fast ogt float %22, 0.000000e+00
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %31, !dx.controlflow.hints !18

; <label>:29                                      ; preds = %0
  %30 = call float @dx.op.binary.f32(i32 36, float %15, float %22)  ; FMin(a,b)
  br label %33

; <label>:31                                      ; preds = %0
  %32 = call float @dx.op.binary.f32(i32 35, float %15, float %22)  ; FMax(a,b)
  br label %33

; <label>:33                                      ; preds = %31, %29
  %34 = phi float [ %30, %29 ], [ %32, %31 ]
  %35 = call float @dx.op.binary.f32(i32 35, float %16, float %23)  ; FMax(a,b)
  %36 = call float @dx.op.binary.f32(i32 35, float %17, float %24)  ; FMax(a,b)
  %37 = call float @dx.op.binary.f32(i32 35, float %18, float %25)  ; FMax(a,b)
  %38 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %19, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = extractvalue %dx.types.ResRet.f32 %38, 1
  %41 = extractvalue %dx.types.ResRet.f32 %38, 2
  %42 = extractvalue %dx.types.ResRet.f32 %38, 3
  %43 = fcmp fast ogt float %34, 0.000000e+00
  %44 = fcmp fast ogt float %39, 0.000000e+00
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %48, !dx.controlflow.hints !18

; <label>:46                                      ; preds = %33
  %47 = call float @dx.op.binary.f32(i32 36, float %34, float %39)  ; FMin(a,b)
  br label %50

; <label>:48                                      ; preds = %33
  %49 = call float @dx.op.binary.f32(i32 35, float %34, float %39)  ; FMax(a,b)
  br label %50

; <label>:50                                      ; preds = %48, %46
  %51 = phi float [ %47, %46 ], [ %49, %48 ]
  %52 = call float @dx.op.binary.f32(i32 35, float %35, float %40)  ; FMax(a,b)
  %53 = call float @dx.op.binary.f32(i32 35, float %36, float %41)  ; FMax(a,b)
  %54 = call float @dx.op.binary.f32(i32 35, float %37, float %42)  ; FMax(a,b)
  %55 = fadd fast float %13, 3.125000e-02
  %56 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %19, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = extractvalue %dx.types.ResRet.f32 %56, 3
  %61 = fcmp fast ogt float %51, 0.000000e+00
  %62 = fcmp fast ogt float %57, 0.000000e+00
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %66, !dx.controlflow.hints !18

; <label>:64                                      ; preds = %50
  %65 = call float @dx.op.binary.f32(i32 36, float %51, float %57)  ; FMin(a,b)
  br label %68

; <label>:66                                      ; preds = %50
  %67 = call float @dx.op.binary.f32(i32 35, float %51, float %57)  ; FMax(a,b)
  br label %68

; <label>:68                                      ; preds = %66, %64
  %69 = phi float [ %65, %64 ], [ %67, %66 ]
  %70 = call float @dx.op.binary.f32(i32 35, float %52, float %58)  ; FMax(a,b)
  %71 = call float @dx.op.binary.f32(i32 35, float %53, float %59)  ; FMax(a,b)
  %72 = call float @dx.op.binary.f32(i32 35, float %54, float %60)  ; FMax(a,b)
  %73 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %12, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = extractvalue %dx.types.ResRet.f32 %73, 3
  %78 = fcmp fast ogt float %69, 0.000000e+00
  %79 = fcmp fast ogt float %74, 0.000000e+00
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %83, !dx.controlflow.hints !18

; <label>:81                                      ; preds = %68
  %82 = call float @dx.op.binary.f32(i32 36, float %69, float %74)  ; FMin(a,b)
  br label %85

; <label>:83                                      ; preds = %68
  %84 = call float @dx.op.binary.f32(i32 35, float %69, float %74)  ; FMax(a,b)
  br label %85

; <label>:85                                      ; preds = %83, %81
  %86 = phi float [ %82, %81 ], [ %84, %83 ]
  %87 = call float @dx.op.binary.f32(i32 35, float %70, float %75)  ; FMax(a,b)
  %88 = call float @dx.op.binary.f32(i32 35, float %71, float %76)  ; FMax(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %72, float %77)  ; FMax(a,b)
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %12, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = extractvalue %dx.types.ResRet.f32 %90, 1
  %93 = extractvalue %dx.types.ResRet.f32 %90, 2
  %94 = extractvalue %dx.types.ResRet.f32 %90, 3
  %95 = fcmp fast ogt float %86, 0.000000e+00
  %96 = fcmp fast ogt float %91, 0.000000e+00
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %100, !dx.controlflow.hints !18

; <label>:98                                      ; preds = %85
  %99 = call float @dx.op.binary.f32(i32 36, float %86, float %91)  ; FMin(a,b)
  br label %102

; <label>:100                                     ; preds = %85
  %101 = call float @dx.op.binary.f32(i32 35, float %86, float %91)  ; FMax(a,b)
  br label %102

; <label>:102                                     ; preds = %100, %98
  %103 = phi float [ %99, %98 ], [ %101, %100 ]
  %104 = call float @dx.op.binary.f32(i32 35, float %87, float %92)  ; FMax(a,b)
  %105 = call float @dx.op.binary.f32(i32 35, float %88, float %93)  ; FMax(a,b)
  %106 = call float @dx.op.binary.f32(i32 35, float %89, float %94)  ; FMax(a,b)
  %107 = fadd fast float %12, 3.125000e-02
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %107, float %20, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = extractvalue %dx.types.ResRet.f32 %108, 2
  %112 = extractvalue %dx.types.ResRet.f32 %108, 3
  %113 = fcmp fast ogt float %103, 0.000000e+00
  %114 = fcmp fast ogt float %109, 0.000000e+00
  %115 = and i1 %113, %114
  br i1 %115, label %116, label %118, !dx.controlflow.hints !18

; <label>:116                                     ; preds = %102
  %117 = call float @dx.op.binary.f32(i32 36, float %103, float %109)  ; FMin(a,b)
  br label %120

; <label>:118                                     ; preds = %102
  %119 = call float @dx.op.binary.f32(i32 35, float %103, float %109)  ; FMax(a,b)
  br label %120

; <label>:120                                     ; preds = %118, %116
  %121 = phi float [ %117, %116 ], [ %119, %118 ]
  %122 = call float @dx.op.binary.f32(i32 35, float %104, float %110)  ; FMax(a,b)
  %123 = call float @dx.op.binary.f32(i32 35, float %105, float %111)  ; FMax(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float %106, float %112)  ; FMax(a,b)
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %107, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = extractvalue %dx.types.ResRet.f32 %125, 2
  %129 = extractvalue %dx.types.ResRet.f32 %125, 3
  %130 = fcmp fast ogt float %121, 0.000000e+00
  %131 = fcmp fast ogt float %126, 0.000000e+00
  %132 = and i1 %130, %131
  br i1 %132, label %133, label %135, !dx.controlflow.hints !18

; <label>:133                                     ; preds = %120
  %134 = call float @dx.op.binary.f32(i32 36, float %121, float %126)  ; FMin(a,b)
  br label %137

; <label>:135                                     ; preds = %120
  %136 = call float @dx.op.binary.f32(i32 35, float %121, float %126)  ; FMax(a,b)
  br label %137

; <label>:137                                     ; preds = %135, %133
  %138 = phi float [ %134, %133 ], [ %136, %135 ]
  %139 = call float @dx.op.binary.f32(i32 35, float %122, float %127)  ; FMax(a,b)
  %140 = call float @dx.op.binary.f32(i32 35, float %123, float %128)  ; FMax(a,b)
  %141 = call float @dx.op.binary.f32(i32 35, float %124, float %129)  ; FMax(a,b)
  %142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %107, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = extractvalue %dx.types.ResRet.f32 %142, 1
  %145 = extractvalue %dx.types.ResRet.f32 %142, 2
  %146 = extractvalue %dx.types.ResRet.f32 %142, 3
  %147 = fcmp fast ogt float %138, 0.000000e+00
  %148 = fcmp fast ogt float %143, 0.000000e+00
  %149 = and i1 %147, %148
  br i1 %149, label %150, label %152, !dx.controlflow.hints !18

; <label>:150                                     ; preds = %137
  %151 = call float @dx.op.binary.f32(i32 36, float %138, float %143)  ; FMin(a,b)
  br label %154

; <label>:152                                     ; preds = %137
  %153 = call float @dx.op.binary.f32(i32 35, float %138, float %143)  ; FMax(a,b)
  br label %154

; <label>:154                                     ; preds = %152, %150
  %155 = phi float [ %151, %150 ], [ %153, %152 ]
  %156 = call float @dx.op.binary.f32(i32 35, float %139, float %144)  ; FMax(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float %140, float %145)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %141, float %146)  ; FMax(a,b)
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = fadd fast float %160, %12
  %163 = fadd fast float %161, %13
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %167 = fsub fast float %165, %157
  %168 = fmul fast float %166, %167
  %169 = fadd fast float %168, %157
  %170 = fcmp fast ogt float %169, 0.000000e+00
  %171 = select i1 %170, float %169, float 1.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 undef, float %155, float %156, float %171, float %158, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!4 = !{!5, !9, !11, !13}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %TransShadowConstants* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!15 = !{void ()* @cs_sunvis_trans_shadow_mask_dilation_and_taa, !"cs_sunvis_trans_shadow_mask_dilation_and_taa", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

