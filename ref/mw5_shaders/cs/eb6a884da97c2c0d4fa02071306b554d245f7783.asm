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
; shader hash: caedc4a2f2e14db68325748dd3f8c30c
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
;                                   texture     f32          2d      T1             t1     1
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

define void @cs_upsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = uitofp i32 %6 to float
  %9 = uitofp i32 %7 to float
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 0
  %12 = extractvalue %dx.types.CBufRet.f32 %10, 1
  %13 = fcmp fast olt float %8, %11
  %14 = fcmp fast olt float %9, %12
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %127, !dx.controlflow.hints !18

; <label>:16                                      ; preds = %0
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %19 = extractvalue %dx.types.CBufRet.f32 %17, 3
  %20 = fmul fast float %18, 2.000000e+00
  %21 = fmul fast float %19, 2.000000e+00
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %25 = fmul fast float %20, %23
  %26 = fmul fast float %21, %24
  %27 = fadd fast float %8, 5.000000e-01
  %28 = fadd fast float %9, 5.000000e-01
  %29 = fmul fast float %23, %27
  %30 = fmul fast float %24, %28
  %31 = call float @dx.op.dot2.f32(i32 54, float %27, float %28, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %32 = call float @dx.op.unary.f32(i32 22, float %31)  ; Frc(value)
  %33 = fmul fast float %32, 0x404A7DD040000000
  %34 = call float @dx.op.unary.f32(i32 22, float %33)  ; Frc(value)
  %35 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = extractvalue %dx.types.ResRet.f32 %35, 2
  %39 = fmul fast float %36, 0x3FDEB71760000000
  %40 = fmul fast float %37, 0x3FDEB71760000000
  %41 = fmul fast float %38, 0x3FDEB71760000000
  %42 = fmul fast float %34, 0x3FE921FB60000000
  %43 = fadd fast float %42, 0x3FE921FB60000000
  %44 = call float @dx.op.unary.f32(i32 13, float %43)  ; Sin(value)
  %45 = call float @dx.op.unary.f32(i32 12, float %43)  ; Cos(value)
  %46 = fmul fast float %25, 0x3FFE2F0140000000
  %47 = fmul fast float %46, %44
  %48 = fmul fast float %26, 0x3FFE2F0140000000
  %49 = fmul fast float %48, %45
  %50 = fadd fast float %47, %29
  %51 = fadd fast float %49, %30
  %52 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %50, float %51, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = extractvalue %dx.types.ResRet.f32 %52, 1
  %55 = extractvalue %dx.types.ResRet.f32 %52, 2
  %56 = fadd fast float %42, 0x4002D97C80000000
  %57 = call float @dx.op.unary.f32(i32 13, float %56)  ; Sin(value)
  %58 = call float @dx.op.unary.f32(i32 12, float %56)  ; Cos(value)
  %59 = fmul fast float %25, 0x3FEE145200000000
  %60 = fmul fast float %59, %57
  %61 = fmul fast float %26, 0x3FEE145200000000
  %62 = fmul fast float %61, %58
  %63 = fadd fast float %60, %29
  %64 = fadd fast float %62, %30
  %65 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = extractvalue %dx.types.ResRet.f32 %65, 1
  %68 = extractvalue %dx.types.ResRet.f32 %65, 2
  %69 = fadd fast float %42, 0x400F6A7A40000000
  %70 = call float @dx.op.unary.f32(i32 13, float %69)  ; Sin(value)
  %71 = call float @dx.op.unary.f32(i32 12, float %69)  ; Cos(value)
  %72 = fmul fast float %46, %70
  %73 = fmul fast float %48, %71
  %74 = fadd fast float %72, %29
  %75 = fadd fast float %73, %30
  %76 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %74, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = extractvalue %dx.types.ResRet.f32 %76, 1
  %79 = extractvalue %dx.types.ResRet.f32 %76, 2
  %80 = fadd fast float %42, 0x4015FDBC00000000
  %81 = call float @dx.op.unary.f32(i32 13, float %80)  ; Sin(value)
  %82 = call float @dx.op.unary.f32(i32 12, float %80)  ; Cos(value)
  %83 = fmul fast float %59, %81
  %84 = fmul fast float %61, %82
  %85 = fadd fast float %83, %29
  %86 = fadd fast float %84, %30
  %87 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = fadd fast float %88, %66
  %92 = fmul fast float %91, 0x3FD363C320000000
  %93 = fadd fast float %77, %53
  %94 = fmul fast float %93, 0x3FB3714BA0000000
  %95 = fadd fast float %92, %39
  %96 = fadd fast float %95, %94
  %97 = fadd fast float %89, %67
  %98 = fmul fast float %97, 0x3FD363C320000000
  %99 = fadd fast float %78, %54
  %100 = fmul fast float %99, 0x3FB3714BA0000000
  %101 = fadd fast float %98, %40
  %102 = fadd fast float %101, %100
  %103 = fadd fast float %90, %68
  %104 = fmul fast float %103, 0x3FD363C320000000
  %105 = fadd fast float %79, %55
  %106 = fmul fast float %105, 0x3FB3714BA0000000
  %107 = fadd fast float %104, %41
  %108 = fadd fast float %107, %106
  %109 = fmul fast float %96, 0x3FE9DA78C0000000
  %110 = fmul fast float %102, 0x3FE9DA78C0000000
  %111 = fmul fast float %108, 0x3FE9DA78C0000000
  %112 = extractvalue %dx.types.CBufRet.f32 %17, 0
  %113 = fmul fast float %109, %112
  %114 = fmul fast float %110, %112
  %115 = fmul fast float %111, %112
  %116 = extractvalue %dx.types.CBufRet.f32 %17, 1
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = extractvalue %dx.types.ResRet.f32 %117, 1
  %120 = extractvalue %dx.types.ResRet.f32 %117, 2
  %121 = fmul fast float %118, %116
  %122 = fmul fast float %119, %116
  %123 = fmul fast float %120, %116
  %124 = fadd fast float %121, %113
  %125 = fadd fast float %122, %114
  %126 = fadd fast float %123, %115
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 undef, float %124, float %125, float %126, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %127

; <label>:127                                     ; preds = %16, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!12 = !{i32 0, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!15 = !{void ()* @cs_upsample_veil, !"cs_upsample_veil", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 1}

