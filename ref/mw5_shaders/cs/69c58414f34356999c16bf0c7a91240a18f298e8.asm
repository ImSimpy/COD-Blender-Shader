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
; shader hash: ad4d895b180566439aa119306594b8b8
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
  br i1 %14, label %15, label %171, !dx.controlflow.hints !17

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
  %36 = fmul fast float %33, 0x3FDEB71760000000
  %37 = fmul fast float %34, 0x3FDEB71760000000
  %38 = fmul fast float %35, 0x3FDEB71760000000
  %39 = fmul fast float %31, 0x3FD921FB60000000
  %40 = fadd fast float %39, 0x3FD921FB60000000
  %41 = call float @dx.op.unary.f32(i32 13, float %40)  ; Sin(value)
  %42 = call float @dx.op.unary.f32(i32 12, float %40)  ; Cos(value)
  %43 = fmul fast float %22, 0x3FFE2F0140000000
  %44 = fmul fast float %43, %41
  %45 = fmul fast float %23, 0x3FFE2F0140000000
  %46 = fmul fast float %45, %42
  %47 = fadd fast float %44, %26
  %48 = fadd fast float %46, %27
  %49 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %47, float %48, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = fadd fast float %39, 0x3FF2D97C80000000
  %54 = call float @dx.op.unary.f32(i32 13, float %53)  ; Sin(value)
  %55 = call float @dx.op.unary.f32(i32 12, float %53)  ; Cos(value)
  %56 = fmul fast float %22, 0x3FEE145200000000
  %57 = fmul fast float %56, %54
  %58 = fmul fast float %23, 0x3FEE145200000000
  %59 = fmul fast float %58, %55
  %60 = fadd fast float %57, %26
  %61 = fadd fast float %59, %27
  %62 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %60, float %61, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  %64 = extractvalue %dx.types.ResRet.f32 %62, 1
  %65 = extractvalue %dx.types.ResRet.f32 %62, 2
  %66 = fadd fast float %39, 0x3FFF6A7A40000000
  %67 = call float @dx.op.unary.f32(i32 13, float %66)  ; Sin(value)
  %68 = call float @dx.op.unary.f32(i32 12, float %66)  ; Cos(value)
  %69 = fmul fast float %43, %67
  %70 = fmul fast float %45, %68
  %71 = fadd fast float %69, %26
  %72 = fadd fast float %70, %27
  %73 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = fadd fast float %39, 0x4005FDBC00000000
  %78 = call float @dx.op.unary.f32(i32 13, float %77)  ; Sin(value)
  %79 = call float @dx.op.unary.f32(i32 12, float %77)  ; Cos(value)
  %80 = fmul fast float %56, %78
  %81 = fmul fast float %58, %79
  %82 = fadd fast float %80, %26
  %83 = fadd fast float %81, %27
  %84 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = extractvalue %dx.types.ResRet.f32 %84, 2
  %88 = fadd fast float %39, 0x400C463AC0000000
  %89 = call float @dx.op.unary.f32(i32 13, float %88)  ; Sin(value)
  %90 = call float @dx.op.unary.f32(i32 12, float %88)  ; Cos(value)
  %91 = fmul fast float %43, %89
  %92 = fmul fast float %45, %90
  %93 = fadd fast float %91, %26
  %94 = fadd fast float %92, %27
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  %99 = fadd fast float %39, 0x4011475CE0000000
  %100 = call float @dx.op.unary.f32(i32 13, float %99)  ; Sin(value)
  %101 = call float @dx.op.unary.f32(i32 12, float %99)  ; Cos(value)
  %102 = fmul fast float %56, %100
  %103 = fmul fast float %58, %101
  %104 = fadd fast float %102, %26
  %105 = fadd fast float %103, %27
  %106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = fadd fast float %39, 0x40146B9C40000000
  %111 = call float @dx.op.unary.f32(i32 13, float %110)  ; Sin(value)
  %112 = call float @dx.op.unary.f32(i32 12, float %110)  ; Cos(value)
  %113 = fmul fast float %43, %111
  %114 = fmul fast float %45, %112
  %115 = fadd fast float %113, %26
  %116 = fadd fast float %114, %27
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = extractvalue %dx.types.ResRet.f32 %117, 1
  %120 = extractvalue %dx.types.ResRet.f32 %117, 2
  %121 = fadd fast float %39, 0x40178FDBA0000000
  %122 = call float @dx.op.unary.f32(i32 13, float %121)  ; Sin(value)
  %123 = call float @dx.op.unary.f32(i32 12, float %121)  ; Cos(value)
  %124 = fmul fast float %56, %122
  %125 = fmul fast float %58, %123
  %126 = fadd fast float %124, %26
  %127 = fadd fast float %125, %27
  %128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %126, float %127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = extractvalue %dx.types.ResRet.f32 %128, 1
  %131 = extractvalue %dx.types.ResRet.f32 %128, 2
  %132 = fadd fast float %85, %63
  %133 = fadd fast float %132, %107
  %134 = fadd fast float %133, %129
  %135 = fmul fast float %134, 0x3FD363C320000000
  %136 = fadd fast float %74, %50
  %137 = fadd fast float %136, %96
  %138 = fadd fast float %137, %118
  %139 = fmul fast float %138, 0x3FB3714BA0000000
  %140 = fadd fast float %135, %36
  %141 = fadd fast float %140, %139
  %142 = fadd fast float %86, %64
  %143 = fadd fast float %142, %108
  %144 = fadd fast float %143, %130
  %145 = fmul fast float %144, 0x3FD363C320000000
  %146 = fadd fast float %75, %51
  %147 = fadd fast float %146, %97
  %148 = fadd fast float %147, %119
  %149 = fmul fast float %148, 0x3FB3714BA0000000
  %150 = fadd fast float %145, %37
  %151 = fadd fast float %150, %149
  %152 = fadd fast float %87, %65
  %153 = fadd fast float %152, %109
  %154 = fadd fast float %153, %131
  %155 = fmul fast float %154, 0x3FD363C320000000
  %156 = fadd fast float %76, %52
  %157 = fadd fast float %156, %98
  %158 = fadd fast float %157, %120
  %159 = fmul fast float %158, 0x3FB3714BA0000000
  %160 = fadd fast float %155, %38
  %161 = fadd fast float %160, %159
  %162 = fmul fast float %141, 0x3FE0091740000000
  %163 = fmul fast float %151, 0x3FE0091740000000
  %164 = fmul fast float %161, 0x3FE0091740000000
  %165 = call float @dx.op.binary.f32(i32 35, float %162, float -3.225500e+04)  ; FMax(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %163, float -3.225500e+04)  ; FMax(a,b)
  %167 = call float @dx.op.binary.f32(i32 35, float %164, float -3.225500e+04)  ; FMax(a,b)
  %168 = call float @dx.op.binary.f32(i32 36, float %165, float 3.225500e+04)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 36, float %166, float 3.225500e+04)  ; FMin(a,b)
  %170 = call float @dx.op.binary.f32(i32 36, float %167, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %168, float %169, float %170, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %171

; <label>:171                                     ; preds = %15, %0
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

