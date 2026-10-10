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
; shader hash: 496e65ea1bdd8008195159bc8c2d053e
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
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%VeilSampleConsts = type { <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @cs_downsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = uitofp i32 %5 to float
  %8 = uitofp i32 %6 to float
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 2
  %11 = extractvalue %dx.types.CBufRet.f32 %9, 3
  %12 = fcmp fast olt float %7, %10
  %13 = fcmp fast olt float %8, %11
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %162, !dx.controlflow.hints !17

; <label>:15                                      ; preds = %0
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %18 = extractvalue %dx.types.CBufRet.f32 %16, 3
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 2
  %21 = extractvalue %dx.types.CBufRet.f32 %19, 3
  %22 = fmul fast float %20, %17
  %23 = fmul fast float %21, %18
  %24 = fadd fast float %7, 5.000000e-01
  %25 = fadd fast float %8, 5.000000e-01
  %26 = fmul fast float %20, %24
  %27 = fmul fast float %21, %25
  %28 = call float @dx.op.dot2.f32(i32 54, float %24, float %25, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %29 = call float @dx.op.unary.f32(i32 22, float %28)  ; Frc(value)
  %30 = fmul fast float %29, 0x404A7DD040000000
  %31 = call float @dx.op.unary.f32(i32 22, float %30)  ; Frc(value)
  %32 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = extractvalue %dx.types.ResRet.f32 %32, 2
  %36 = call float @dx.op.binary.f32(i32 35, float %34, float %35)  ; FMax(a,b)
  %37 = call float @dx.op.binary.f32(i32 35, float %33, float %36)  ; FMax(a,b)
  %38 = fadd fast float %37, 1.000000e+00
  %39 = bitcast float %38 to i32
  %40 = sub nsw i32 2129859010, %39
  %41 = bitcast i32 %40 to float
  %42 = fmul fast float %41, 0x3FDEB71760000000
  %43 = fmul fast float %42, %33
  %44 = fmul fast float %42, %34
  %45 = fmul fast float %42, %35
  %46 = fmul fast float %31, 0x3FE921FB60000000
  %47 = fadd fast float %46, 0x3FE921FB60000000
  %48 = call float @dx.op.unary.f32(i32 13, float %47)  ; Sin(value)
  %49 = call float @dx.op.unary.f32(i32 12, float %47)  ; Cos(value)
  %50 = fmul fast float %22, 0x3FFE2F0140000000
  %51 = fmul fast float %50, %48
  %52 = fmul fast float %23, 0x3FFE2F0140000000
  %53 = fmul fast float %52, %49
  %54 = fadd fast float %51, %26
  %55 = fadd fast float %53, %27
  %56 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = call float @dx.op.binary.f32(i32 35, float %58, float %59)  ; FMax(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float %57, float %60)  ; FMax(a,b)
  %62 = fadd fast float %61, 1.000000e+00
  %63 = bitcast float %62 to i32
  %64 = sub nsw i32 2129859010, %63
  %65 = bitcast i32 %64 to float
  %66 = fmul fast float %65, 0x3FB3714BA0000000
  %67 = fmul fast float %66, %57
  %68 = fmul fast float %66, %58
  %69 = fmul fast float %66, %59
  %70 = fadd fast float %67, %43
  %71 = fadd fast float %68, %44
  %72 = fadd fast float %69, %45
  %73 = fadd fast float %66, %42
  %74 = fadd fast float %46, 0x4002D97C80000000
  %75 = call float @dx.op.unary.f32(i32 13, float %74)  ; Sin(value)
  %76 = call float @dx.op.unary.f32(i32 12, float %74)  ; Cos(value)
  %77 = fmul fast float %22, 0x3FEE145200000000
  %78 = fmul fast float %77, %75
  %79 = fmul fast float %23, 0x3FEE145200000000
  %80 = fmul fast float %79, %76
  %81 = fadd fast float %78, %26
  %82 = fadd fast float %80, %27
  %83 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  %87 = call float @dx.op.binary.f32(i32 35, float %85, float %86)  ; FMax(a,b)
  %88 = call float @dx.op.binary.f32(i32 35, float %84, float %87)  ; FMax(a,b)
  %89 = fadd fast float %88, 1.000000e+00
  %90 = bitcast float %89 to i32
  %91 = sub nsw i32 2129859010, %90
  %92 = bitcast i32 %91 to float
  %93 = fmul fast float %92, 0x3FD363C320000000
  %94 = fmul fast float %93, %84
  %95 = fmul fast float %93, %85
  %96 = fmul fast float %93, %86
  %97 = fadd fast float %70, %94
  %98 = fadd fast float %71, %95
  %99 = fadd fast float %72, %96
  %100 = fadd fast float %73, %93
  %101 = fadd fast float %46, 0x400F6A7A40000000
  %102 = call float @dx.op.unary.f32(i32 13, float %101)  ; Sin(value)
  %103 = call float @dx.op.unary.f32(i32 12, float %101)  ; Cos(value)
  %104 = fmul fast float %50, %102
  %105 = fmul fast float %52, %103
  %106 = fadd fast float %104, %26
  %107 = fadd fast float %105, %27
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %106, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = extractvalue %dx.types.ResRet.f32 %108, 2
  %112 = call float @dx.op.binary.f32(i32 35, float %110, float %111)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 35, float %109, float %112)  ; FMax(a,b)
  %114 = fadd fast float %113, 1.000000e+00
  %115 = bitcast float %114 to i32
  %116 = sub nsw i32 2129859010, %115
  %117 = bitcast i32 %116 to float
  %118 = fmul fast float %117, 0x3FB3714BA0000000
  %119 = fmul fast float %118, %109
  %120 = fmul fast float %118, %110
  %121 = fmul fast float %118, %111
  %122 = fadd fast float %97, %119
  %123 = fadd fast float %98, %120
  %124 = fadd fast float %99, %121
  %125 = fadd fast float %100, %118
  %126 = fadd fast float %46, 0x4015FDBC00000000
  %127 = call float @dx.op.unary.f32(i32 13, float %126)  ; Sin(value)
  %128 = call float @dx.op.unary.f32(i32 12, float %126)  ; Cos(value)
  %129 = fmul fast float %77, %127
  %130 = fmul fast float %79, %128
  %131 = fadd fast float %129, %26
  %132 = fadd fast float %130, %27
  %133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %131, float %132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = extractvalue %dx.types.ResRet.f32 %133, 1
  %136 = extractvalue %dx.types.ResRet.f32 %133, 2
  %137 = call float @dx.op.binary.f32(i32 35, float %135, float %136)  ; FMax(a,b)
  %138 = call float @dx.op.binary.f32(i32 35, float %134, float %137)  ; FMax(a,b)
  %139 = fadd fast float %138, 1.000000e+00
  %140 = bitcast float %139 to i32
  %141 = sub nsw i32 2129859010, %140
  %142 = bitcast i32 %141 to float
  %143 = fmul fast float %142, 0x3FD363C320000000
  %144 = fmul fast float %143, %134
  %145 = fmul fast float %143, %135
  %146 = fmul fast float %143, %136
  %147 = fadd fast float %122, %144
  %148 = fadd fast float %123, %145
  %149 = fadd fast float %124, %146
  %150 = fadd fast float %125, %143
  %151 = call float @dx.op.binary.f32(i32 35, float %150, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %152 = fdiv fast float 1.000000e+00, %151
  %153 = fmul fast float %147, %152
  %154 = fmul fast float %148, %152
  %155 = fmul fast float %149, %152
  %156 = call float @dx.op.binary.f32(i32 35, float %153, float -3.225500e+04)  ; FMax(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float %154, float -3.225500e+04)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %155, float -3.225500e+04)  ; FMax(a,b)
  %159 = call float @dx.op.binary.f32(i32 36, float %156, float 3.225500e+04)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 36, float %157, float 3.225500e+04)  ; FMin(a,b)
  %161 = call float @dx.op.binary.f32(i32 36, float %158, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %159, float %160, float %161, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %162

; <label>:162                                     ; preds = %15, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, !12}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 1}

